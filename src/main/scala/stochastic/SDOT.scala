package stochastic

import chisel3._
import chisel3.util._
import scala.math._

class SMUL(stoP : StochasticParams, initNum : Int) extends Module{
    val io = IO(new Bundle{
        val enable = Input(Bool())

        val dataBits = stoP.dataBits
        val input = Input(SInt(dataBits.W))
        val weight = Input(SInt(dataBits.W))

        val product = Output(Bool())
    })

    val sng2 = Module(new SNG2(stoP, initNum)).io;

    sng2.enable := io.enable
    sng2.binNum1 := io.input
    sng2.binNum2 := io.weight

    val stoInput = sng2.stoNum1
    val stoWeight = RegNext(sng2.stoNum2)

    io.product := ~(stoInput ^ stoWeight)
}

class SADD() extends Module{
    val io = IO(new Bundle{
        val input = Input(Bool())
        val weight = Input(Bool())
        val selnum = Input(Bool())
        val sum = Output(Bool())
    })

    val rs = RegNext(Mux(io.selnum, io.input, io.weight))

    io.sum := rs
}

class SDOT(stoP : StochasticParams, blockIn: Int = 16) extends Module{
    val errorMsg =
        s"\n\n[DotProduct] size must be greater than 4 and a power of 2\n\n"
    require(blockIn >= 2 && isPow2(blockIn), errorMsg)

    val io = IO(new Bundle {
        val enable = Input(Bool())

        val dataBits = stoP.dataBits
        val inputs = Input(Vec(blockIn, SInt(dataBits.W)))
        val weights = Input(Vec(blockIn, SInt(dataBits.W)))

        val psum = Output(Bool())
    })

    val layers = Seq.tabulate(log2Ceil(blockIn + 1))(i =>
        pow(2, log2Ceil(blockIn) - i).toInt)
    val addLayerNum = log2Ceil(blockIn)
    val muls = Seq.tabulate(layers(0))(i => Module(new SMUL(stoP, (0x07E1726C * (i+1)))))
    val adds = Seq.tabulate(addLayerNum)(
        i => Seq.fill(layers(i+1))(Module(new SADD()))
    )
    val lfsrs = Seq.tabulate(addLayerNum)(i => Module(new LFSR(stoP, 0x1EC4950B * (i+1))))

    // Vector MACs
    for (i <- 0 until layers(0)) {
        muls(i).io.enable := io.enable
        muls(i).io.input := io.inputs(i)
        muls(i).io.weight := io.weights(i)
    }

  // PipeAdder Reduction
  for (i <- 0 until addLayerNum) {
    lfsrs(i).io.enable := io.enable
    for (j <- 0 until layers(i + 1)) {
      if (i == 0) {
        // First layer of PipeAdders
        adds(i)(j).io.selnum := lfsrs(i).io.out(j)
        adds(i)(j).io.input := muls(2 * j).io.product
        adds(i)(j).io.weight := muls(2 * j + 1).io.product
      } else {
        adds(i)(j).io.selnum := lfsrs(i).io.out(j)
        adds(i)(j).io.input := adds(i - 1)(2 * j).io.sum
        adds(i)(j).io.weight := adds(i - 1)(2 * j + 1).io.sum
      }
    }
  }

  // last adder
  io.psum := adds(addLayerNum - 1)(0).io.sum
}

