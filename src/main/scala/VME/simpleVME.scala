/*
package mynnacc.vme
import chisel3._
import chisel3.util._
import mynnacc.interface.axi._

case class MemParams
 (val addrBits : Int = 4,
    val dataBits : Int = 8,
    val lenBits : Int = 4 ) {

    val strbBits = dataBits / 8

    require(addrBits > 0,
        s"\n\n[MemParams] addrBits must be larger than 0\n\n")
    require(dataBits > 0,
        s"\n\n[MemParams] dataBits must be larger than 0\n\n")
    require(lenBits > 0,
        s"\n\n[MemParams] lenBits must be larger than 0\n\n")

}

abstract class VMEBase(mem : MemParams) extends GenericParameterizedBundle(mem)

class VMECmd(mem : MemParams) extends VMEBase {
    val addrBits = mem.addrBits
    val lenBits = mem.lenBits

    val addr = UInt(addrBits.W)
    val len = UInt(lenBits.W)
}

class VMEData(mem : MemParams) extends VMEBase {
    val dataBits = mem.dataBits

    val data = UInt(dataBits.W)
    val last = Bool()
}

class VMEReadMaster(mem : MemParams) extends Bundle {
    val dataBits = mem.dataBits

    val cmd = Decoupled(new VMECmd)
    val data = Flipped(Decoupled(new VMEData))
}

class VMEReadClient(mem : MemParams) extends Bundle {
    val dataBits = mem.dataBits

    val cmd = Flipped(Decoupled(new VMECmd))
    val data = Decoupled(new VMEData)
}   

class VMEWriteMaster(mem : MemParams) extends Bundle {
    val dataBits = mem.dataBits

    val cmd = Decoupled(new VMECmd)
    val data = Decoupled(new VMEData)
    val ack = Input(Bool())
}

class VMEWriteClient(mem : MemParams) extends Bundle {
    val dataBits = mem.dataBits

    val cmd = Flipped(Decoupled(new VMECmd))
    val data = Flipped(Decoupled(new VMEData))
    val ack = Output(Bool())
}

class VMEMaster(mem : MemParams) extends Bundle {
    val rd = new VMEReadMaster
    val wr = new VMEWriteMaster
}

class VMEClient(mem : MemParams) extends Bundle {
    val rd = new VMEReadClient
    val wr = new VMEWriteClient
}

/** VTA Memory Engine (VME).
 *
 * This unit multiplexes the memory controller interface for the Core. Currently,
 * it supports single-writer and multiple-reader mode and it is also based on AXI.
 */

 class VMESimple(axiP : AXIParams, memP : MemParams) extends Module {
    val io = IO(new Bundle {
        val mem = new AXIMaster(axiP)   //mem is the AXI port to memory
        val core = new VMEClient(memP)  //core is the port to core   
    })

    val addrBits = memP.addrBits
    val lenBits = memP.lenBits

    val sReadIdle :: sReadAddr :: sReadData :: Nil = Enum(3)
    val rstate = RegInit(sReadIdle)

    switch(rstate) {
        is(sReadIdle) {
            when(io.core.rd.cmd.valid) {
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

    val rd_len = RegInit(0.U(lenBits.W))
    val rd_addr = RegInit(0.U(addrBits.W))

    when(io.core.rd.cmd.fire) {
        rd_len := io.core.rd.cmd.bits.len
        rd_addr := io.core.rd.cmd.bits.addr
    }

    io.core.rd.cmd.ready := rstate === sReadIdle

    io.core.rd.data.valid :=io.mem.r.valid
    io.core.rd.data.bits.data := io.mem.r.bits.data
    io.core.rd.data.bits.last := io.mem.r.bits.last

    io.mem.ar.valid := rstate === sReadAddr
    io.mem.ar.bits.addr := rd_addr
    io.mem.ar.bits.len := rd_len
    io.mem.ar.bits.id  := 0.U

    io.mem.r.ready := rstate === sReadData & io.core.rd.data.ready


//------------------------------------------------------------------------------
//write
    val sWriteIdle :: sWriteAddr :: sWriteData :: sWriteResp :: Nil = Enum(4)
    val wstate = RegInit(sWriteIdle)
    val wr_cnt = RegInit(0.U(lenBits.W))

    when(wstate === sWriteIdle) {
        wr_cnt := 0.U
    }.elsewhen(io.mem.w.fire) {
        wr_cnt := wr_cnt + 1.U
    }

    switch(wstate) {
        is(sWriteIdle) {
            when(io.core.wr.cmd.valid) {
              wstate := sWriteAddr
            }
        }
        is(sWriteAddr) {
            when(io.mem.aw.ready) {
                wstate := sWriteData
            }
        }
        is(sWriteData) {
            when(
                io.core.wr.data.valid && io.mem.w.ready && wr_cnt === io.core.wr.cmd.bits.len) {
                wstate := sWriteResp
            }
        }
        is(sWriteResp) {
            when(io.mem.b.valid) {
                wstate := sWriteIdle
            }
        }
    }

    wr_len = RegInit(0.U(lenBits.W))
    wr_addr = RegInit(0.U(addrBits.W))

    when(io.core.wr.cmd.fire) {
        wr_len := io.core.wr.cmd.bits.len
        wr_addr := io.core.wr.cmd.bits.addr
    }

    io.core.wr.cmd.ready := wstate === sWriteIdle
    io.core.wr.ack := io.mem.b.fire
    io.core.wr.data.ready := wstate === sWriteData & io.mem.w.ready

    io.mem.aw.valid := wstate === sWriteAddr
    io.mem.aw.bits.addr := wr_addr
    io.mem.aw.bits.len := wr_len

    io.mem.w.valid := wstate === sWriteData & io.core.wr.data.valid
    io.mem.w.bits.data := io.core.wr.data.bits.data
    io.mem.w.bits.last := wr_cnt === io.core.wr.cmd.bits.len
    io.mem.w.bits.strb := Fill(memP.strbBits, true.B)

    io.mem.b.ready := wstate === sWriteResp

}


*/