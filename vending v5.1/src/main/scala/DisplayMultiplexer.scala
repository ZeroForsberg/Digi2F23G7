import chisel3._
import chisel3.util._

class DisplayMultiplexer extends Module {
  val io = IO(new Bundle {
    val sum = Input(UInt(5.W))
    val price = Input(UInt(5.W))
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
    val sumAlarm = Input(Bool())
    val priceAlarm = Input(Bool())
    val EPty = Input(Bool())
  })

  val sevenSegdec = Module(new SevenSegDec())

  val sevSeg = WireDefault("b1111111".U(7.W))
  val sevSeg1 = WireDefault("b1111111".U(7.W))
  val sevSeg2 = WireDefault("b1111111".U(7.W))
  val select = WireDefault("b0001".U(4.W))
  //

  sevenSegdec.io.in := 0.U
  sevSeg1 := sevenSegdec.io.out
  sevSeg2 := sevenSegdec.io.out2


  val tickCounterReg = RegInit(0.U(17.W))
  //FPGA:(100000000 / 1000 - 1).U
  //SIM: (10 / 2 - 1).U
  val tick = (10 / 2 - 1).U
  val next = RegInit(0.U(2.W))


  tickCounterReg := tickCounterReg + 1.U
  when (tickCounterReg === tick) {
    next := next + 1.U
    tickCounterReg := 0.U
  }

  //Blink sum if alarm
  when(io.sumAlarm && (next === 0.U | next === 1.U)){
    sevSeg2 := "b0000000".U
    sevSeg1 := sevSeg2
  }

  //Blink price if alarm
  when(io.priceAlarm && (next === 2.U | next === 3.U)) {
    sevSeg2 := "b0000000".U
    sevSeg1 := sevSeg2
  }

  when(io.EPty){
    when(next === 0.U | next === 1.U){
      //"GFEDCBA"
      sevSeg2 := "b1111001".U //E
      sevSeg1 := "b1110011".U //P
    }
    when(next === 2.U | next === 3.U) {
      sevSeg2 := "b1111000".U //t
      sevSeg1 := "b1101110".U //y
    }
  }

  switch(next) {
    is(0.U) {
      select := "b0111".U
      sevenSegdec.io.in := io.sum
      sevSeg := sevSeg2
    }
    is(1.U) {
      select := "b1011".U
      sevenSegdec.io.in := io.sum
      sevSeg := sevSeg1
    }
    is(2.U) {
      select := "b1101".U
      sevenSegdec.io.in := io.price
      sevSeg := sevSeg2
    }
    is(3.U) {
      select := "b1110".U
      sevenSegdec.io.in := io.price
      sevSeg := sevSeg1
    }
  }

  //sevSeg := sevenSegdec.io.out

  io.seg := ~sevSeg
  io.an := select
}

// Connecting seven segment decoder:
// SSD.io.in := "b0000".U