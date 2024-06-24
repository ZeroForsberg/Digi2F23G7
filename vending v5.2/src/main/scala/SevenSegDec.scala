import chisel3._
import chisel3.util._

class SevenSegDec extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt(5.W))
    val out = Output(UInt(7.W))
    val out2 = Output(UInt(7.W))
  })

  val sevSeg = WireDefault(0.U)
  val sevSeg2 = WireDefault(0.U)


  // *** add your table from Lab 6 here or use the version from Lab 8.
  val seg0 = "b0111111".U
  val seg1 = "b0000110".U
  val seg2 = "b1011011".U
  val seg3 = "b1001111".U
  val seg4 = "b1100110".U
  val seg5 = "b1101101".U
  val seg6 = "b1111101".U
  val seg7 = "b0000111".U
  val seg8 = "b1111111".U
  val seg9 = "b1101111".U

  switch(io.in) {
    is("b00000".U) { sevSeg := seg0 }
    is("b00001".U) { sevSeg := seg1 }
    is("b00010".U) { sevSeg := seg2 }
    is("b00011".U) { sevSeg := seg3 }
    is("b00100".U) { sevSeg := seg4 }
    is("b00101".U) { sevSeg := seg5 }
    is("b00110".U) { sevSeg := seg6 }
    is("b00111".U) { sevSeg := seg7 }
    is("b01000".U) { sevSeg := seg8 }
    is("b01001".U) { sevSeg := seg9 }
    is("b01010".U) { sevSeg := seg0 }
    is("b01011".U) { sevSeg := seg1 }
    is("b01100".U) { sevSeg := seg2 }
    is("b01101".U) { sevSeg := seg3 }
    is("b01110".U) { sevSeg := seg4 }
    is("b01111".U) { sevSeg := seg5 }
    is("b10000".U) { sevSeg := seg6 }
    is("b10001".U) { sevSeg := seg7 }
    is("b10010".U) { sevSeg := seg8 }
    is("b10011".U) { sevSeg := seg9 }
    is("b10100".U) { sevSeg := seg0 }
    is("b10101".U) { sevSeg := seg1 }
    is("b10110".U) { sevSeg := seg2 }
    is("b10111".U) { sevSeg := seg3 }
    is("b11000".U) { sevSeg := seg4 }
    is("b11001".U) { sevSeg := seg5 }
    is("b11010".U) { sevSeg := seg6 }
    is("b11011".U) { sevSeg := seg7 }
    is("b11100".U) { sevSeg := seg8 }
    is("b11101".U) { sevSeg := seg9 }
    is("b11110".U) { sevSeg := seg0 }
    is("b11111".U) { sevSeg := seg1 }

  }
  switch(io.in) {
    is("b00000".U) { sevSeg2 := seg0 }
    is("b00001".U) { sevSeg2 := seg0 }
    is("b00010".U) { sevSeg2 := seg0 }
    is("b00011".U) { sevSeg2 := seg0 }
    is("b00100".U) { sevSeg2 := seg0 }
    is("b00101".U) { sevSeg2 := seg0 }
    is("b00110".U) { sevSeg2 := seg0 }
    is("b00111".U) { sevSeg2 := seg0 }
    is("b01000".U) { sevSeg2 := seg0 }
    is("b01001".U) { sevSeg2 := seg0 }
    is("b01010".U) { sevSeg2 := seg1 }
    is("b01011".U) { sevSeg2 := seg1 }
    is("b01100".U) { sevSeg2 := seg1 }
    is("b01101".U) { sevSeg2 := seg1 }
    is("b01110".U) { sevSeg2 := seg1 }
    is("b01111".U) { sevSeg2 := seg1 }
    is("b10000".U) { sevSeg2 := seg1 }
    is("b10001".U) { sevSeg2 := seg1 }
    is("b10010".U) { sevSeg2 := seg1 }
    is("b10011".U) { sevSeg2 := seg1 }
    is("b10100".U) { sevSeg2 := seg2 }
    is("b10101".U) { sevSeg2 := seg2 }
    is("b10110".U) { sevSeg2 := seg2 }
    is("b10111".U) { sevSeg2 := seg2 }
    is("b11000".U) { sevSeg2 := seg2 }
    is("b11001".U) { sevSeg2 := seg2 }
    is("b11010".U) { sevSeg2 := seg2 }
    is("b11011".U) { sevSeg2 := seg2 }
    is("b11100".U) { sevSeg2 := seg2 }
    is("b11101".U) { sevSeg2 := seg2 }
    is("b11110".U) { sevSeg2 := seg3 }
    is("b11111".U) { sevSeg2 := seg3 }
  }
  // *** end adding the table
  io.out := sevSeg
  io.out2 := sevSeg2
}