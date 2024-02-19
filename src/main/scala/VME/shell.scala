package core

import chisel3._
import chisel3.util._
import interface.axi._
import dma._
import vta.core._
import stochastic._

class ShellSimple(memP : AXIParams, hostP : AXIParams, coreP : CoreParams) extends Module {
    val io = IO(new Bundle {
        val mem = new XilinxAXIMaster(memP)   
        val host = new XilinxAXILiteClient(hostP)
        val interrupt = Output(Bool())
    })

    val dma = Module(new DMASimpleXil(memP, hostP, coreP))

    val computer = Module(new ComputeSimple(coreP))

    io.mem <> dma.io.mem
    io.host <> dma.io.host

    dma.io.core <> computer.io.core

    io.interrupt := computer.io.interrupt
}

class StoShellSimple(memP : AXIParams, hostP : AXIParams, coreP : CoreParams) extends Module {
    val io = IO(new Bundle {
        val mem = new XilinxAXIMaster(memP)   
        val host = new XilinxAXILiteClient(hostP)
        val interrupt = Output(Bool())
    })

    val dma = Module(new DMASimpleXil(memP, hostP, coreP))

    val computer = Module(new StoComputeSimple(coreP))

    io.mem <> dma.io.mem
    io.host <> dma.io.host

    dma.io.core <> computer.io.core

    io.interrupt := computer.io.interrupt
}