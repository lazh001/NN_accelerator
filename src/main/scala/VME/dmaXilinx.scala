package mynnacc.dma
import chisel3._
import chisel3.util._
import mynnacc.interface.axi._

//abstract class DMABase(core : CoreParams) extends GenericParameterizedBundle(core)

class DMASimpleXil(memP : AXIParams, hostP : AXIParams, coreP : CoreParams) extends Module {
    val io = IO(new Bundle {
        val mem = new XilinxAXIMaster(memP)   
        val core = new DMAMaster(coreP)
        val host = new XilinxAXILiteClient(hostP)
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
            when(io.mem.ARREADY) {
                rstate := sReadData
            }
        }
        is(sReadData) {
            when(io.mem.RVALID && io.mem.RREADY && io.mem.RLAST) {
                rstate := sReadIdle
            }
        }
    }


    io.mem.ARVALID := rstate === sReadAddr
    io.mem.ARADDR := rd_addr
    io.mem.ARLEN := rd_len
    io.mem.ARID  := 0.U               //???这个是啥意思？

    io.mem.RREADY := rstate === sReadData
    
    val rd_cnt = RegInit(0.U(lenBits.W))

    when(rstate === sReadIdle) {
        rd_cnt := 0.U;
    }.elsewhen(io.mem.RVALID && io.mem.RREADY){      //不需要rstate === sReadData 是因为io.mem.r.ready := rstate === sReadData
        rd_cnt := rd_cnt + 1.U;
    }

    when(io.mem.RVALID && io.mem.RREADY){
        when(dmaregs(0)(0)) {
            //读weight
            dmaregs(16.U + rd_cnt(4,0)) := io.mem.RDATA
        }
        .otherwise{
            //读input
            dmaregs(8.U + rd_cnt(4,0)) := io.mem.RDATA
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
    }.elsewhen(io.mem.WREADY && io.mem.WVALID) {
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
            when(io.mem.AWREADY) {
                wstate := sWriteData
            }
        }
        is(sWriteData) {
            when(io.mem.WREADY && wr_cnt === wr_len) {
                wstate := sWriteResp
            }
        }
        is(sWriteResp) {
            when(io.mem.BVALID) {
                wstate := sWriteIdle
            }
        }
    }

    io.mem.AWVALID := wstate === sWriteAddr
    io.mem.AWADDR := wr_addr
    io.mem.AWLEN := wr_len

    io.mem.WVALID := wstate === sWriteData
    io.mem.WSTRB := Fill(memP.strbBits, true.B)
    io.mem.WLAST := wr_cnt === wr_len

    when(io.mem.WREADY && io.mem.WVALID){
        io.mem.WDATA := dmaregs(24.U + wr_cnt(4,0))
    }

    io.mem.BREADY := wstate === sWriteResp


    //DMA模块 指令获取与结果写回
    //host读部分
    val h_sReadAddress :: h_sReadData :: Nil = Enum(2)
    val h_rstate = RegInit(h_sReadAddress)

    switch(h_rstate) {
        is(h_sReadAddress) {
            when(io.host.ARVALID) {
                h_rstate := h_sReadData
            }
        }
        is(h_sReadData) {
            when(io.host.RREADY) {
                h_rstate := h_sReadAddress
            }
        }
    }

    val h_rd_addr = RegInit(0.U(addrBits.W))
    when(io.host.ARREADY && io.host.ARVALID) {
        h_rd_addr := io.host.ARADDR
    }

    io.host.RDATA := dmaregs(h_rd_addr(6,2))

    io.host.ARREADY := h_rstate === h_sReadAddress
    io.host.RVALID := h_rstate === h_sReadData
    io.host.RRESP := 0.U

    //host写部分
    val h_sWriteAddress :: h_sWriteData :: h_sWriteResponse :: Nil = Enum(3)
    val h_wstate = RegInit(h_sWriteAddress)

    switch(h_wstate) {
        is(h_sWriteAddress) {
            when(io.host.AWVALID) {
                h_wstate := h_sWriteData
            }
        }
        is(h_sWriteData) {
            when(io.host.WVALID) {
                h_wstate := h_sWriteResponse
            }
        }
        is(h_sWriteResponse) {
            when(io.host.BREADY) {
                h_wstate := h_sWriteAddress
            }
        }
    }

    val h_wr_addr = RegInit(0.U(addrBits.W))
    when(io.host.AWVALID && io.host.AWREADY) {
        h_wr_addr := io.host.AWADDR
    }

    when(io.host.WVALID && io.host.WREADY){
        dmaregs(h_wr_addr(6,2)) := io.host.WDATA
    }

    io.host.AWREADY := h_wstate === h_sWriteAddress
    io.host.WREADY := h_wstate === h_sWriteData
    io.host.BVALID := h_wstate === h_sWriteResponse
    io.host.BRESP := 0.U

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