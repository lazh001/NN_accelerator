package dma
import chisel3._
import chisel3.util._
import interface.axi._

case class CoreParams
(
    inputBits : Int = 8,
    inputNum : Int = 16,
    weightBits : Int = 8,
    weightNum : Int = 16,
    resultBits : Int = 16,
    resultNum : Int = 1,

    dataBits : Int = 32
) {
    val inputPorts : Int = (inputBits * inputNum - 1) / dataBits + 1
    val weightPorts : Int = (weightBits * weightNum - 1) / dataBits + 1
    val resultPorts : Int = (resultBits * resultNum - 1) / dataBits + 1        //向上取整
}

//abstract class DMABase(core : CoreParams) extends GenericParameterizedBundle(core)

class DMAMaster(core : CoreParams) extends Bundle{
    val start = Output(Bool())
    val input = Output(Vec(core.inputPorts, UInt(32.W)))
    val weight = Output(Vec(core.weightPorts, UInt(32.W)))
    val done = Input(Bool())
    val result = Input(UInt(32.W))
}

class DMASlave(core : CoreParams) extends Bundle{
    val start = Input(Bool())
    val input = Input(Vec(core.inputPorts, UInt(32.W)))
    val weight = Input(Vec(core.weightPorts, UInt(32.W)))
    val done = Output(Bool())
    val result = Output(UInt(32.W))
}

class DMASimple(memP : AXIParams, hostP : AXIParams, coreP : CoreParams) extends Module {
    val io = IO(new Bundle {
        val mem = new AXIMaster(memP)   
        val core = new DMAMaster(coreP)
        val host = new AXILiteClient(hostP)
    })

    val dmaregs = RegInit(VecInit(Seq.fill(32)(0.U(32.W))))
    val addrBits = memP.addrBits
    val lenBits = memP.lenBits

    io.mem.setup()

    //DMA模块 读部分
    //该部分负责通过axi master接口将DDR3中的数据读到dmaregs中
    val sReadIdle :: sReadAddr :: sReadData :: Nil = Enum(3)
    val rstate = RegInit(sReadIdle)

    val rd_valid = Wire(Bool())
    rd_valid := dmaregs(3)(0) & dmaregs(0)(1)   //首先要求start为1，然后要求op为10或11

    val rd_len = RegInit(0.U(lenBits.W))
    val rd_addr = RegInit(0.U(addrBits.W))

    when(rd_valid) {
        rd_len := dmaregs(2)(lenBits-1, 0)
        rd_addr := dmaregs(1)(addrBits-1, 0)
    }

    switch(rstate) {
        is(sReadIdle) {
            when(rd_valid) {
                rstate := sReadAddr
            }
        }
        is(sReadAddr) {
            when(io.mem.ar.ready) {
                rstate := sReadData
            }
        }
        is(sReadData) {
            when(io.mem.r.fire && io.mem.r.bits.last) {
                rstate := sReadIdle
            }
        }
    }


    io.mem.ar.valid := rstate === sReadAddr
    io.mem.ar.bits.addr := rd_addr
    io.mem.ar.bits.len := rd_len
    io.mem.ar.bits.id  := 0.U               //???这个是啥意思？

    io.mem.r.ready := rstate === sReadData
    
    val rd_cnt = RegInit(0.U(lenBits.W))

    when(rstate === sReadIdle) {
        rd_cnt := 0.U;
    }.elsewhen(io.mem.r.fire){      //不需要rstate === sReadData 是因为io.mem.r.ready := rstate === sReadData
        rd_cnt := rd_cnt + 1.U;
    }

    when(io.mem.r.fire){
        when(dmaregs(0)(0)) {
            //读weight
            dmaregs(16.U + rd_cnt(4,0)) := io.mem.r.bits.data
        }
        .otherwise{
            //读input
            dmaregs(8.U + rd_cnt(4,0)) := io.mem.r.bits.data
        }
    }

    //DMA模块 写部分
    //该部分负责通过axi master接口将dmaregs中的数据写到DDR3中
    val sWriteIdle :: sWriteAddr :: sWriteData :: sWriteResp :: Nil = Enum(4)
    val wstate = RegInit(sWriteIdle)

    val wr_valid = Wire(Bool())
    wr_valid := dmaregs(3)(0) & (!dmaregs(0)(1)) & dmaregs(0)(0)   //首先要求start为1，然后要求op为01
    
    val wr_cnt = RegInit(0.U(lenBits.W))
    when(wstate === sWriteIdle) {
        wr_cnt := 0.U
    }.elsewhen(io.mem.w.fire) {
        wr_cnt := wr_cnt + 1.U
    }

    val wr_len = RegInit(0.U(lenBits.W))
    val wr_addr = RegInit(0.U(addrBits.W))

    when(wr_valid) {
        wr_len := dmaregs(2)(lenBits-1, 0)
        wr_addr := dmaregs(1)(addrBits-1, 0)
    }

    switch(wstate) {
        is(sWriteIdle) {
            when(wr_valid) {
              wstate := sWriteAddr
            }
        }
        is(sWriteAddr) {
            when(io.mem.aw.ready) {
                wstate := sWriteData
            }
        }
        is(sWriteData) {
            when(io.mem.w.ready && wr_cnt === wr_len) {
                wstate := sWriteResp
            }
        }
        is(sWriteResp) {
            when(io.mem.b.valid) {
                wstate := sWriteIdle
            }
        }
    }

    io.mem.aw.valid := wstate === sWriteAddr
    io.mem.aw.bits.addr := wr_addr
    io.mem.aw.bits.len := wr_len

    io.mem.w.valid := wstate === sWriteData
    io.mem.w.bits.strb := Fill(memP.strbBits, true.B)
    io.mem.w.bits.last := wr_cnt === wr_len

    when(io.mem.w.fire){
        io.mem.w.bits.data := dmaregs(24.U + wr_cnt(4,0))
    }

    io.mem.b.ready := wstate === sWriteResp


    //DMA模块 指令获取与结果写回
    //host读部分
    val h_sReadAddress :: h_sReadData :: Nil = Enum(2)
    val h_rstate = RegInit(h_sReadAddress)

    switch(h_rstate) {
        is(h_sReadAddress) {
            when(io.host.ar.valid) {
                h_rstate := h_sReadData
            }
        }
        is(h_sReadData) {
            when(io.host.r.ready) {
                h_rstate := h_sReadAddress
            }
        }
    }

    val h_rd_addr = RegInit(0.U(addrBits.W))
    when(io.host.ar.fire) {
        h_rd_addr := io.host.ar.bits.addr
    }

    io.host.r.bits.data := dmaregs(h_rd_addr(6,2))

    io.host.ar.ready := h_rstate === h_sReadAddress
    io.host.r.valid := h_rstate === h_sReadData
    io.host.r.bits.resp := 0.U

    //host写部分
    val h_sWriteAddress :: h_sWriteData :: h_sWriteResponse :: Nil = Enum(3)
    val h_wstate = RegInit(h_sWriteAddress)

    switch(h_wstate) {
        is(h_sWriteAddress) {
            when(io.host.aw.valid) {
                h_wstate := h_sWriteData
            }
        }
        is(h_sWriteData) {
            when(io.host.w.valid) {
                h_wstate := h_sWriteResponse
            }
        }
        is(h_sWriteResponse) {
            when(io.host.b.ready) {
                h_wstate := h_sWriteAddress
            }
        }
    }

    val h_wr_addr = RegInit(0.U(addrBits.W))
    when(io.host.aw.fire) {
        h_wr_addr := io.host.aw.bits.addr
    }

    when(io.host.w.fire){
        dmaregs(h_wr_addr(6,2)) := io.host.w.bits.data
    }

    io.host.aw.ready := h_wstate === h_sWriteAddress
    io.host.w.ready := h_wstate === h_sWriteData
    io.host.b.valid := h_wstate === h_sWriteResponse
    io.host.b.bits.resp := 0.U

    //与core的交互
    val coreIdle :: coreCompute :: Nil = Enum(2)
    val corestate = RegInit(coreIdle)

    val compute_start = Wire(Bool()) 
    compute_start := dmaregs(3)(0) & (!dmaregs(0)(0)) & (!dmaregs(0)(1))

    switch(corestate) {
        is(coreIdle) {
            when(compute_start) {
                corestate := coreCompute
            }
        }
        is(coreCompute) {
            when(io.core.done) {
                corestate := coreIdle
            }
        }
    }

    io.core.start := compute_start

    for (i <- 0 until 4) {
        io.core.input(i) := dmaregs(8+i)
        io.core.weight(i) := dmaregs(16+i)
    }

    when(io.core.done) {
        dmaregs(24) := io.core.result
    }

}