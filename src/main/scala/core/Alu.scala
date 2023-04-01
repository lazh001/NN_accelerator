package core

import chisel3._
import chisel3.util._
import vta.core.{MAC, PipeAdder, Adder}

class Dot(
    val aBits: Int = 8,
    val bBits: Int = 8,
    val blockIn: Int = 16
) extends Module {
  val outBits = aBits + bBits + log2Ceil(blockIn) + 1

  val io = IO(new Bundle {
    val a = Input(Vec(blockIn, UInt(aBits.W)))
    val b = Input(Vec(blockIn, UInt(bBits.W)))
    val y = Output(UInt(outBits.W))
  })

  val macs = for (i <- 0 until blockIn) yield {
    val mac = Module(new MAC(aBits, bBits, outBits))
    mac.io.a := io.a(i)
    mac.io.b := io.b(i)
    mac.io.c := 0.U
    mac.io.y
  }

  def sumUp(nums: Seq[UInt]): UInt = {
    def recurAdder(nums: Seq[UInt]): Seq[UInt] = {
      if (nums.length == 1) {
        return nums
      }

      val newSeq = nums
        .grouped(2)
        .map {
          case Seq(a, b) => {
            val pipeAdder =
              Module(new PipeAdder(aBits = a.getWidth, bBits = b.getWidth))
            pipeAdder.io.a := a
            pipeAdder.io.b := b
            pipeAdder.io.y
          }
          case Seq(a) => RegNext(a, 0.U(a.getWidth.W))
        }
        .toSeq
      recurAdder(newSeq)
    }
    recurAdder(nums).head
  }

  io.y := sumUp(macs)
}

class ScalarMult(
    val aBits: Int = 8,
    val bBits: Int = 8,
    val blockIn: Int = 16
) extends Module {
  require(bBits > 0)
  val outBits = aBits + bBits - 1

  val io = IO(new Bundle {
    val a = Input(Vec(blockIn, UInt(aBits.W)))
    val b = Input(UInt(bBits.W))
    val y = Output(Vec(blockIn, UInt(outBits.W)))
  })

  (io.a zip io.y).foreach {
    case (a, y) => {
      y := a * io.b
    }
  }
}

class TensorAdd(
    val aBits: Int = 8,
    val bBits: Int = 8,
    val blockIn: Int = 16,
    val pipelined: Boolean = false,
    val enableOverflow: Boolean = false
) extends Module {

  val outputWidth = Math.max(aBits, bBits)

  val io = new Bundle {
    val a = Input(Vec(blockIn, UInt(aBits.W)))
    val b = Input(Vec(blockIn, UInt(bBits.W)))
    val y = Output(Vec(blockIn, UInt(outputWidth.W)))
    val overflow =
      if (enableOverflow) Some(Output(Vec(blockIn, Bool()))) else None
  }

  val hasAdditionalBit = enableOverflow && aBits == bBits

  val resultWidth = if (hasAdditionalBit) outputWidth + 1 else outputWidth
  val results =
    if (pipelined) Reg(Vec(blockIn, UInt(resultWidth.W)))
    else Wire(Vec(blockIn, UInt(resultWidth.W)))

  results.zip(io.a).zip(io.b).foreach {
    case ((result, a), b) => {
      result := a +& b
    }
  }

  if (enableOverflow) {
    io.overflow.get.zip(results).foreach {
      case (overflow, result) => {
        overflow := result(resultWidth - 1)
      }
    }
  }

  io.y.zip(results).foreach {
    case (y, result) => {
      y := {
        if (enableOverflow) result(resultWidth - 2, 0)
        else result(resultWidth - 1, 0)
      }
    }
  }
}
