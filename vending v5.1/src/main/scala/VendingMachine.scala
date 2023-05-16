import chisel3.{when, _}
import chisel3.util._

import scala.annotation.unused

class VendingMachine(@unused maxCount: Int) extends Module {
  val io = IO(new Bundle {
    val price = Input(UInt(5.W))
    val coin2 = Input(Bool())
    val coin5 = Input(Bool())
    val buy = Input(Bool())
    val releaseCan = Output(Bool())
    val alarm = Output(Bool())
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
    val led1 = Output(Bool())
    val led2 = Output(Bool())
    val led3 = Output(Bool())
    val led4 = Output(Bool())
  })

  val dispMux = Module(new DisplayMultiplexer())
  val sevSeg = WireDefault("b1111111".U(7.W))

  val sumCnt, sumReg = RegInit(0.U(5.W))
  val countCoin = RegInit(0.U(3.W))
  val countCan = RegInit(4.U(3.W))

  val cntflg1, cntflg2, cntflg3 = WireDefault(false.B)
  val LED, count, noCash, coinFull = WireDefault(false.B)

  val blink5 = RegInit(0.U(3.W))

  io.releaseCan := false.B
  io.led1 := false.B
  io.led2 := false.B
  io.led3 := false.B
  io.led4 := false.B
  io.alarm := false.B
  dispMux.io.priceAlarm := false.B
  dispMux.io.EPty := false.B


  val state = RegInit(0.U(2.W))
  switch(state){
    is(0.U){
      blink5 := 4.U
      when(io.buy && !RegNext(io.buy)){
        when(sumReg >= io.price){
          sumReg := sumReg - io.price
          state := 1.U
          countCoin := 0.U
          countCan := countCan - 1.U
        }.elsewhen(sumReg < io.price){
          state := 2.U
        }
      }

      when(countCan === 0.U) {
        state := 3.U
      }

      when(io.coin2 && !RegNext(io.coin2) && !cntflg3) {
        sumReg := sumReg + 2.U
        countCoin := countCoin + 1.U
      }
      when(io.coin5 && !RegNext(io.coin5) && !cntflg3) {
        sumReg := sumReg + 5.U
        countCoin := countCoin + 1.U
      }
    }

    is(1.U){
      io.releaseCan := LED
      when(LED && !RegNext(LED)){
        when(blink5 === 0.U){
          state := 0.U
        }.otherwise(
          blink5 := blink5 - 1.U
        )
      }
    }

    // Not enough coin
    is(2.U){
      dispMux.io.priceAlarm := LED
      noCash := true.B
      when(LED && !RegNext(LED)) {
        when(blink5 === 0.U) {
          state := 0.U
        }.otherwise(
          blink5 := blink5 - 1.U
        )
      }
    }

    //Empty
    is(3.U){
      dispMux.io.EPty := true.B
      when(LED && !RegNext(LED)) {
        when(blink5 === 0.U) {
          state := 0.U
        }.otherwise(
          blink5 := blink5 - 1.U
        )
      }
    }

  }


  switch(countCoin) {
    is(0.U) {
      //0000
      cntflg1 := false.B
      cntflg2 := false.B
      cntflg3 := false.B
    }
    is(1.U) {
      //1000
      cntflg1 := true.B
      cntflg2 := false.B
      cntflg3 := false.B
    }
    is(2.U) {
      //1100
      cntflg1 := false.B
      cntflg2 := true.B
      cntflg3 := false.B
    }
    is(3.U) {
      //1110
      cntflg1 := true.B
      cntflg2 := true.B
      cntflg3 := false.B
    }
    is(4.U) {
      //1111
      cntflg1 := false.B
      cntflg2 := false.B
      cntflg3 := true.B
    }
  }

  io.led1 := (cntflg1 | cntflg2 | cntflg3)
  io.led2 := (cntflg2 | cntflg3)
  io.led3 := (cntflg1 && cntflg2 | cntflg3)
  io.led4 := (cntflg3 && !cntflg1 && !cntflg2)



  val tickCounterReg = RegInit(0.U(27.W))
  //** FPGA: (100000000 / 2 - 1).U
  //** SIM: (100 / 2 - 1).U
  val tick = (100 / 2 - 1).U
  val next = RegInit(0.U(2.W))

  tickCounterReg := tickCounterReg + 1.U
  when(tickCounterReg === tick) {
    next := next + 1.U
    tickCounterReg := 0.U
  }

  switch(next) {
    is(0.U) {
      LED := true.B
      count := true.B
    }
    is(1.U) {
      LED := true.B
      count := false.B
    }
    is(2.U) {
      LED := false.B
      count := true.B
    }
    is(3.U) {
      LED := false.B
      count := false.B
    }
  }

  when(count && !RegNext(count) | !count && RegNext(count)){
    when(sumCnt < sumReg){
      sumCnt := sumCnt + 1.U
    }
    when(sumCnt > sumReg) {
      sumCnt := sumCnt - 1.U
    }
  }


  // No more coin slots(4/4)
  coinFull := ((io.coin5 | io.coin2) && cntflg3) | state === 2.U

  io.alarm := (noCash | coinFull | dispMux.io.EPty) && LED
  dispMux.io.sumAlarm := (io.coin5 | io.coin2) && cntflg3 && LED

  dispMux.io.price := io.price(4,0)
  dispMux.io.sum := sumCnt

  io.seg := dispMux.io.seg
  io.an := dispMux.io.an
}

// generate Verilog
object VendingMachine extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new VendingMachine(100000))
}