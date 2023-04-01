package stochastic

import chisel3._
import chisel3.util._

class SCStanh(
  val halfK: Int = 15
) extends Module {
  val io = IO(new Bundle {
    val input = Input(Bool())
    val output = Output(Bool())
  })

  val stateVec = Reg(Vec(2 * halfK, Bool()))
  for (i <- 0 until stateVec.length) {
    if (i == halfK) {
      stateVec(i) := true.B
    } else {
      stateVec(i) := false.B
    }
  }

  def getOutput(): Bool = {
    stateVec.drop(halfK).reduce(_ || _)
  }

  when(io.input) {
    stateVec := stateVec.dropRight(1) ++ stateVec.takeRight(1)
  } .otherwise {
    stateVec := stateVec.drop(1) ++ stateVec.take(1)
  }

  io.output := getOutput()
}
