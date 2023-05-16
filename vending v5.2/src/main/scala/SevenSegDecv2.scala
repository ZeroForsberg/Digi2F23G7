import chisel3._
import chisel3.util._

class SevenSegDecv2 extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt(6.W))
    val out, out2 = Output(UInt(7.W))
  })

  val sevSeg, sevSeg2 = WireDefault(0.U)


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

  switch(io.in % 10.U) {
    is(0.U) { sevSeg := seg0 }
    is(1.U) { sevSeg := seg1 }
    is(2.U) { sevSeg := seg2 }
    is(3.U) { sevSeg := seg3 }
    is(4.U) { sevSeg := seg4 }
    is(5.U) { sevSeg := seg5 }
    is(6.U) { sevSeg := seg6 }
    is(7.U) { sevSeg := seg7 }
    is(8.U) { sevSeg := seg8 }
    is(9.U) { sevSeg := seg9 }
  }

  switch(io.in/10.U) {
    is(0.U) { sevSeg2 := seg0 }
    is(1.U) { sevSeg2 := seg1 }
    is(2.U) { sevSeg2 := seg2 }
    is(3.U) { sevSeg2 := seg3 }
    is(4.U) { sevSeg2 := seg4 }
    is(5.U) { sevSeg2 := seg5 }
    is(6.U) { sevSeg2 := seg6 }
    is(7.U) { sevSeg2 := seg7 }
    is(8.U) { sevSeg2 := seg8 }
    is(9.U) { sevSeg2 := seg9 }
  }

  // *** end adding the table
  io.out := sevSeg
  io.out2 := sevSeg2

}