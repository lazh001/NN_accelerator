package stochastic

import chisel3._
import chisel3.util._

/*
case class StochasticParams (
    shiftBits   : Int = 16,
    dataBits    : Int = 8,
    seqLenth    : Int = 256
){
    val seqBits : Int = log2Ceil(seqLenth)
}

class LFSR(stoP : StochasticParams, initNum : Int) extends Module{
    val io = IO(new Bundle{
        val enable = Input(Bool())
        val out = Output(SInt(stoP.dataBits.W))
    })

    //feedback polynomial: x^16 + x^14 + x^13 + x^11 + 1

    val state = RegInit(UInt(stoP.shiftBits.W), initNum.U)

    val bit = state(15) ^ state(13) ^ state(12) ^ state(10)

    val nextState = state << 1 | bit

    state := nextState

    io.out := state(11,4).asSInt()
}
*/


case class StochasticParams (
    shiftBits   : Int = 32,
    dataBits    : Int = 8,
    seqLenth    : Int = 1024
){
    val seqBits : Int = log2Ceil(seqLenth)
}

class LFSR(stoP : StochasticParams, initNum : Int) extends Module{
    val io = IO(new Bundle{
        val enable = Input(Bool())
        val out = Output(SInt(stoP.dataBits.W))
    })

    //feedback polynomial: x^32 + x^22 + x^2 + x^1 + 1

    val state = RegInit(UInt(stoP.shiftBits.W), initNum.U)

    val bit = state(31) ^ state(21) ^ state(1) ^ state(0)

    val nextState = state << 1 | bit

    state := nextState

    io.out := state(19,12).asSInt()
}


class SNG(stoP : StochasticParams, initNum : Int) extends Module{
    val io = IO(new Bundle{
        val enable = Input(Bool())

        val dataBits = stoP.dataBits
        val binNum = Input(SInt(dataBits.W))

        val stoNum = Output(Bool())
    })

    val lfsr = Module(new LFSR(stoP, initNum))
    lfsr.io.enable := io.enable

    val randNum = lfsr.io.out

    io.stoNum := io.binNum > randNum
}

class SNG2(stoP : StochasticParams, initNum : Int) extends Module{
    val io = IO(new Bundle{
        val enable = Input(Bool())

        val dataBits = stoP.dataBits
        val binNum1 = Input(SInt(dataBits.W))
        val binNum2 = Input(SInt(dataBits.W))

        val stoNum1 = Output(Bool())
        val stoNum2 = Output(Bool())
    })

    val lfsr = Module(new LFSR(stoP, initNum))
    lfsr.io.enable := io.enable

    val randNum = lfsr.io.out

    io.stoNum1 := io.binNum1 > randNum
    io.stoNum2 := io.binNum2 > randNum
}