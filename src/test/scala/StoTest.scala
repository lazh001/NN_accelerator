import chisel3._
import chisel3.util._

import stochastic._

object LFSRGenerate extends App {
    val stoP = StochasticParams()

    emitVerilog(new LFSR(stoP, 0xACE1), Array("--target-dir", "temp"))
}

object SDOTGenerate extends App {
    val stoP = StochasticParams()

    emitVerilog(new SDOT(stoP), Array("--target-dir", "generated"))
}