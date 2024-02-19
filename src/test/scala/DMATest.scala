import chisel3._
import chisel3.util._
import interface.axi._
import dma._
import core._



object DMAGenerate extends App {
val coreP = CoreParams()
val hostP = AXIParams(coherent = false,
        addrBits = 32,
        dataBits = 32,
        lenBits = 8,
        userBits = 1)
val memP = AXIParams(coherent = true,
        addrBits = 32,
        dataBits = 32,
        lenBits = 8,
        userBits = 1)

        
    emitVerilog(new DMASimple(memP, hostP, coreP), Array("--target-dir", "generated"))
}

object ShellGenerate extends App {
val coreP = CoreParams()
val hostP = AXIParams(coherent = false,
        addrBits = 32,
        dataBits = 32,
        lenBits = 8,
        userBits = 0)
val memP = AXIParams(coherent = false,
        addrBits = 32,
        dataBits = 32,
        lenBits = 8,
        userBits = 0)

        
    emitVerilog(new ShellSimple(memP, hostP, coreP), Array("--target-dir", "generated"))
}

object StoShellGenerate extends App {
val coreP = CoreParams()
val hostP = AXIParams(coherent = false,
        addrBits = 32,
        dataBits = 32,
        lenBits = 8,
        userBits = 0)
val memP = AXIParams(coherent = false,
        addrBits = 32,
        dataBits = 32,
        lenBits = 8,
        userBits = 0)

        
    emitVerilog(new StoShellSimple(memP, hostP, coreP), Array("--target-dir", "generated"))
}