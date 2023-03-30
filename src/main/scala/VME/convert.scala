package mynnacc.core

import chisel3._
import chisel3.util._

case class LFSRParams
(
    regNum : Int = 32,
    outLen : Int = 8
){
    require(regNum > 0)
    require((outLen <= regNum) && (outLen > 0))
}

class LFSR(lfsrP : LFSRParams) extends Module{
    
}