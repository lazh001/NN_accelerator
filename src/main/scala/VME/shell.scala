package mynnacc.core

import chisel3._
import chisel3.util._
import mynnacc.interface.axi._
import mynnacc.dma._
import vta.core._

class shellSimple(memP : AXIParams, hostP : AXIParams, coreP : CoreParams) extends Module {
    val io = IO(new Bundle {
        val mem = new XilinxAXIMaster(memP)   
        val host = new XilinxAXILiteClient(hostP)
        val interrupt = Output(Bool())
    })

    val dma = Module(new DMASimpleXil(memP, hostP, coreP))

    val computer = Module(new ComputSimple(coreP))

    io.mem <> dma.io.mem
    io.host <> dma.io.host

    dma.io.core <> computer.io.core

    io.interrupt := computer.io.interrupt
}