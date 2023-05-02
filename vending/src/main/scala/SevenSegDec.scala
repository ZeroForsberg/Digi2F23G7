import chisel3._
import chisel3.util._

class SevenSegDec extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt(4.W))
    val out = Output(UInt(7.W))
  })

  val sevSeg = WireDefault(0.U)

     switch(io.in) {
       is ("b0000".U)  { sevSeg :="b0111111".U} //0
       is ("b0001".U)  { sevSeg :="b0000110".U} //1
       is ("b0010".U)  { sevSeg :="b1011011".U} //2
       is ("b0011".U)  { sevSeg :="b1001111".U} //3
       is ("b0100".U)  { sevSeg :="b1100110".U} //4
       is ("b0101".U)  { sevSeg :="b1101101".U} //5
       is ("b0110".U)  { sevSeg :="b1111101".U} //6
       is ("b0111".U)  { sevSeg :="b0000111".U} //7
       is ("b1000".U)  { sevSeg :="b1111111".U} //8
       is ("b1001".U)  { sevSeg :="b1101111".U} //9
       is ("b1010".U)  { sevSeg :="b1110111".U} //A
       is ("b1011".U)  { sevSeg :="b1111100".U} //b
       is ("b1100".U)  { sevSeg :="b0111001".U} //C
       is ("b1101".U)  { sevSeg :="b1011110".U} //d
       is ("b1110".U)  { sevSeg :="b1111001".U} //E
       is ("b1111".U)  { sevSeg :="b1110001".U} //F
}
io.out := sevSeg
}



