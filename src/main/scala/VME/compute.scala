
package mynnacc.core

import chisel3._
import chisel3.util._
import mynnacc.interface.axi._
import mynnacc.dma._
import vta.core._
import core.Dot

class ComputSimple(coreP : CoreParams) extends Module {
    val io = IO(new Bundle {
        val core = new DMASlave(coreP)
        val interrupt = Output(Bool())
    })

    // val dot = Module(new DotProduct())
    val dot = Module(new Dot)

    val coreIdle :: coreCompute :: Nil = Enum(2)
    val corestate = RegInit(coreIdle)

    val pipe = Module(new Pipe(UInt(1.W), latency = 2))
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

    when(vld){
        io.core.result := Cat(0.U((coreP.dataBits - dot.outBits).W), dot.io.y)
    }
    .otherwise{
        io.core.result := 0.U(coreP.dataBits.W)
    }

    val input = RegInit(VecInit(Seq.fill(coreP.inputNum)(0.U((coreP.inputBits).W))))
    val weight = RegInit(VecInit(Seq.fill(coreP.weightNum)(0.U((coreP.weightBits).W))))

    when(io.core.start){
        for(i <- 0 until coreP.inputPorts){
            for(j <- 0 until 4) {
                input(4*i + j) := io.core.input(i)(8*j + 7, 8*j)
                weight(4*i + j) := io.core.weight(i)(8*j + 7, 8*j)
            }
        }
    }

    dot.io.a := input
    dot.io.b := weight


    io.interrupt := vld
}
