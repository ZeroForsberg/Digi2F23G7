import chisel3._
import chisel3.util._

class DisplayMultiplexer extends Module {
  val io = IO(new Bundle {
    val sum = Input(UInt(8.W))
    val price = Input(UInt(8.W))
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
  })

  val sevSegDec = Module(new SevenSegDec())
  sevSegDec.io.in := 0.U
  val sevSeg = WireDefault("b1111111".U(7.W))
  val tickCounterReg = RegInit(0.U(17.W))
  val tick = (100000000 / 1000 - 1).U
  val next = RegInit(0.U(2.W))
  val select = WireDefault("b0001".U(4.W))

  tickCounterReg := tickCounterReg + 1.U
  when (tickCounterReg === tick) {
    next := next + 1.U
    tickCounterReg := 0.U
  }
  switch(next) {
    is(0.U) {
      select := "b1000".U
      sevSegDec.io.in := io.sum(7, 4)
    }
    is(1.U) {
      select := "b0100".U
      sevSegDec.io.in := io.sum(3, 0)
    }
    is(2.U) {
      select := "b0010".U
      sevSegDec.io.in := io.price(7, 4)
    }
    is(3.U) {
      select := "b0001".U
      sevSegDec.io.in := io.price(3, 0)
    }
  }
  sevSeg := sevSegDec.io.out
  io.seg := ~sevSeg
  io.an := ~select
}

// Connecting seven segment decoder:
// SSD.io.in := "b0000".U
