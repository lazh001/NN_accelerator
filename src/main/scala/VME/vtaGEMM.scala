package vta.core

import chisel3._
import chisel3.util._
import scala.math.pow

/** Pipelined multiply and accumulate */
class MAC(aBits: Int = 8, bBits: Int = 8, cBits: Int = 16, flopIn: Boolean = false) extends Module {
  val outBits = Math.max(aBits + bBits, cBits) + 1
  val io = IO(new Bundle {
    val a = Input(UInt(aBits.W))
    val b = Input(UInt(bBits.W))
    val c = Input(UInt(cBits.W))
    val y = Output(UInt(outBits.W))
  })

  val mult = Wire(UInt((aBits + bBits).W))
  val rA = if (flopIn) RegNext(io.a) else io.a
  val rB = if (flopIn) RegNext(io.b) else io.b
  val rC = if (flopIn) RegNext(io.c) else io.c

  mult := rA * rB
  val addV = if (flopIn) {rC +& mult} else {RegNext(rC +& mult)}
  io.y := addV
}

class AdderIO(val aBits: Int, val bBits: Int) extends Bundle {
  val outBits = Math.max(aBits, bBits) + 1
  val a = Input(UInt(aBits.W))
  val b = Input(UInt(bBits.W))
  val y = Output(UInt(outBits.W))
}

trait IsAdder { val io: AdderIO }

/** PipeAdder
 *
 * This unit loads input bits into register and performs addition in the next cycle
 */
class PipeAdder(aBits: Int = 8, bBits: Int = 8) extends Module with IsAdder {
  val io = IO(new AdderIO(aBits, bBits))
  val add = Wire(chiselTypeOf(io.y))
  val rA = RegNext(io.a)
  val rB = RegNext(io.b)
  add := rA +& rB                   //加法操作符 "+", "+%" 舍弃结果的进位，"+&" 保留进位，结果扩展一位。减法同理。
  io.y := add
}

/** Adder
 *
 * This unit wires input bits to an adder directly.
 * The output comes out of combinational logic without waiting for another cycle.
 */
class Adder(aBits: Int = 8, bBits: Int = 8) extends Module with IsAdder {
  val io = IO(new AdderIO(aBits, bBits))
  val add = Wire(chiselTypeOf(io.y))
  val rA = Wire(UInt(aBits.W))
  val rB = Wire(UInt(bBits.W))
  rA := io.a
  rB := io.b
  add := rA +& rB
  io.y := add
}

/** Pipelined DotProduct based on MAC and PipeAdder */
class DotProduct(aBits: Int = 8, bBits: Int = 8, blockIn: Int = 16) extends Module {
  val errorMsg =
    s"\n\n[VTA] [DotProduct] size must be greater than 4 and a power of 2\n\n"
  require(blockIn >= 2 && isPow2(blockIn), errorMsg)
  val b = aBits + bBits
  val outBits = b + log2Ceil(blockIn) + 1     //该参数下是21位
  val io = IO(new Bundle {
    val a = Input(Vec(blockIn, UInt(aBits.W)))
    val b = Input(Vec(blockIn, UInt(bBits.W)))
    val y = Output(UInt(outBits.W))
  })
  val s = Seq.tabulate(log2Ceil(blockIn + 1))(i =>
    pow(2, log2Ceil(blockIn) - i).toInt) // # of total layers
  val p = log2Ceil(blockIn / 2) + 1 // # of adder layers
  val m = Seq.fill(s(0))(Module(new MAC(aBits, bBits, cBits = 1, flopIn = p < 6))) // # of total vector pairs
  val a = Seq.tabulate(p)(
    i =>
      Seq.fill(s(i + 1))(
        if ((i == 0 && p < 4) || (i == p - 2 && p >= 4)) {
          Module(new PipeAdder(aBits = (b + i + 1), bBits = (b + i + 1)))
        }
        else {
          Module(new Adder(aBits = (b + i + 1), bBits = (b + i + 1)))
        }
      )) // # adders within each layer

  // Vector MACs
  for (i <- 0 until s(0)) {
    m(i).io.a := io.a(i)
    m(i).io.b := io.b(i)
    m(i).io.c := 0.U
  }

  // PipeAdder Reduction
  for (i <- 0 until p) {
    for (j <- 0 until s(i + 1)) {
      if (i == 0) {
        // First layer of PipeAdders
        a(i)(j).io.a := m(2 * j).io.y
        a(i)(j).io.b := m(2 * j + 1).io.y
      } else {
        a(i)(j).io.a := a(i - 1)(2 * j).io.y
        a(i)(j).io.b := a(i - 1)(2 * j + 1).io.y
      }
    }
  }

  // last adder
  io.y := a(p - 1)(0).io.y
}