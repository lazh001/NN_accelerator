import chisel3._
import chisel3.util._

class FullAdder extends Module {
  val io = IO(new Bundle {
    val a = Input(UInt(1.W))
    val b = Input(UInt(1.W))
    val c_in = Input(UInt(1.W))
    val s = Output(UInt(1.W))
    val c_out = Output(UInt(1.W))
  })

  val sum = io.a ^ io.b ^ io.c_in
  val carry = (io.a & io.b) | (io.a & io.c_in) | (io.b & io.c_in)

  io.s := sum
  io.c_out := carry
}

// Generate the Verilog code
object FullAdder extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new FullAdder)
}
