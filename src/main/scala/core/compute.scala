
package core

import chisel3._
import chisel3.util._
import interface.axi._
import dma._
import vta.core._
import stochastic._

class ComputeSimple(coreP : CoreParams) extends Module {
    val io = IO(new Bundle {
        val core = new DMASlave(coreP)
        val interrupt = Output(Bool())
    })

    // val dot = Module(new DotProduct())
    val dot = Module(new DotProduct())

    val coreIdle :: coreCompute :: Nil = Enum(2)
    val corestate = RegInit(coreIdle)

    val pipe = Module(new Pipe(UInt(1.W), latency = 3))
    val vld = Wire(Bool())

    pipe.io.enq.valid := io.core.start
    pipe.io.enq.bits := 1.U
    vld := pipe.io.deq.valid

    io.core.done := vld

    switch(corestate) {
        is(coreIdle) {
            when(io.core.start) {
                corestate := coreCompute
            }
        }
        is(coreCompute) {
            when(vld) {
                corestate := coreIdle
            }
        }
    }

    val result = Wire(SInt(32.W))
    result := dot.io.y
    when(vld){
        io.core.result := result.asUInt()
    }
    .otherwise{
        io.core.result := 0.U(coreP.dataBits.W)
    }

    val input = RegInit(VecInit(Seq.fill(coreP.inputNum)(0.S((coreP.inputBits).W))))
    val weight = RegInit(VecInit(Seq.fill(coreP.weightNum)(0.S((coreP.weightBits).W))))

    when(io.core.start){
        for(i <- 0 until coreP.inputPorts){
            for(j <- 0 until 4) {
                input(4*i + j) := io.core.input(i)(8*j + 7, 8*j).asSInt()
                weight(4*i + j) := io.core.weight(i)(8*j + 7, 8*j).asSInt()
            }
        }
    }

    dot.io.a := input
    dot.io.b := weight


    io.interrupt := vld
}

class StoComputeSimple(coreP : CoreParams) extends Module {
    val io = IO(new Bundle {
        val core = new DMASlave(coreP)
        val interrupt = Output(Bool())
    })
    
    val stoP = StochasticParams()
    
    // val dot = Module(new DotProduct())
    val dot = Module(new SDOT(stoP))

    val coreIdle :: coreCompute :: Nil = Enum(2)
    val corestate = RegInit(coreIdle)

    val pipe = Module(new Pipe(UInt(1.W), latency = 6))
    val vld = Wire(Bool())

    pipe.io.enq.valid := io.core.start
    pipe.io.enq.bits := 1.U
    vld := pipe.io.deq.valid

    val acc_vld = RegInit(0.B)
    val acc_done = RegInit(0.B)
    val acc_cnt = RegInit(0.U(stoP.seqBits.W))
    val acc = RegInit(0.U(32.W))
    when(io.core.start || acc_done){
        acc_vld := 0.B
    }.elsewhen(vld){
        acc_vld := 1.B
    }.otherwise{
        acc_vld := acc_vld
    }

    when(io.core.start){
        acc_cnt := 0.U
        acc := 0.U
    }.elsewhen(acc_vld){
        acc_cnt := acc_cnt + 1.U
        acc := acc + dot.io.psum
    }.otherwise{
        acc_cnt := acc_cnt
        acc := acc
    }

    acc_done := acc_cnt === (stoP.seqLenth - 1).U

    val SNG_en = RegInit(0.B)
    when(io.core.start){
        SNG_en := 1.B;
    }.elsewhen(acc_done){
        SNG_en := 0.B
    }.otherwise{
        SNG_en := SNG_en
    }

    io.core.done := acc_done

    dot.io.enable := SNG_en

    switch(corestate) {
        is(coreIdle) {
            when(io.core.start) {
                corestate := coreCompute
            }
        }
        is(coreCompute) {
            when(vld) {
                corestate := coreIdle
            }
        }
    }

    if(stoP.seqBits > 8){
        when(acc_done){
            io.core.result := ((acc - (stoP.seqLenth / 2).U).asSInt() >> ((stoP.seqBits+1) - 8).asUInt()).asUInt()
        }
        .otherwise{
            io.core.result := 0.U(coreP.dataBits.W)
        }        
    }
    else if(stoP.seqBits < 8){
        when(acc_done){
            io.core.result := ((acc - (stoP.seqLenth / 2).U).asSInt() << (8 - (stoP.seqBits+1)).asUInt()).asUInt()
        }
        .otherwise{
            io.core.result := 0.U(coreP.dataBits.W)
        }   
    }
    else {
        when(acc_done){
            io.core.result := ((acc - (stoP.seqLenth / 2).U).asSInt() >> 1.U).asUInt()
        }
        .otherwise{
            io.core.result := 0.U(coreP.dataBits.W)
        }   
    }


    val input = RegInit(VecInit(Seq.fill(coreP.inputNum)(0.S((coreP.inputBits).W))))
    val weight = RegInit(VecInit(Seq.fill(coreP.weightNum)(0.S((coreP.weightBits).W))))

    when(io.core.start){
        for(i <- 0 until coreP.inputPorts){
            for(j <- 0 until 4) {
                input(4*i + j) := io.core.input(i)(8*j + 7, 8*j).asSInt()
                weight(4*i + j) := io.core.weight(i)(8*j + 7, 8*j).asSInt()
            }
        }
    }

    dot.io.inputs := input
    dot.io.weights := weight


    io.interrupt := acc_done
}