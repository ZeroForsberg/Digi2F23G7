
import chisel3.{when, _}
import chisel3.util._

class VendingMachine(maxCount: Int) extends Module {
  val io = IO(new Bundle {
    val price = Input(UInt(5.W))
    val coin2 = Input(Bool())
    val coin5 = Input(Bool())
    val buy = Input(Bool())
    val releaseCan = Output(Bool())
    val alarm = Output(Bool())
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
  })

  val dispMux = Module(new DisplayMultiplexer())

  val sumReg = RegInit(0.U(5.W))
  val sevSeg = WireDefault("b1111111".U(7.W))


  when(io.coin2 && !RegNext(io.coin2)) {
    sumReg := sumReg + 2.U
  }
  when(io.coin5 && !RegNext(io.coin5)) {
    sumReg := sumReg + 5.U
  }


  val tickCounterReg = RegInit(0.U(17.W))
  val tick = (100000000 / 10000 - 1).U
  val next = RegInit(0.U(1.W))

  val count = RegInit(0.U(3.W))
  val LED = WireDefault(false.B)

  val Succ = RegInit(true.B)

  io.releaseCan := false.B
  io.alarm := false.B

  /*when(io.buy && !RegNext(io.buy) && sumReg >= io.price) {
    io.releaseCan := true.B
    io.alarm := false.B
    sumReg := sumReg - io.price
  }.otherwise {
  io.alarm := true.B
  io.releaseCan := false.B
}
*/

  val state = RegInit(0.U(2.W))

  when(!io.buy){
    state := 0.U
  }

  switch(state){
    is(0.U){
      when(io.buy && !RegNext(io.buy)){
        when(sumReg >= io.price){
          sumReg := sumReg - io.price
          state := 1.U
        }.elsewhen(sumReg < io.price){
          state := 2.U
        }
      }
      io.releaseCan := false.B
      io.alarm := false.B
    }

    is(1.U){
      io.releaseCan := true.B
    }

    is(2.U){
      io.alarm := LED
    }

  }

  /*when(io.buy && !RegNext(io.buy) && sumReg >= io.price) {
    sumReg := sumReg - io.price
    Succ := true.B
    count := 4.U
  }*/


  //io.releaseCan := LED && Succ
  //io.alarm := LED && !io.buy

  //io.alarm := Succ



  tickCounterReg := tickCounterReg + 1.U
  when(tickCounterReg === tick) {
    next := next + 1.U
    tickCounterReg := 0.U
  }

  switch(next) {
    is(0.U) {
      LED := true.B
    }
    is(1.U) {
      LED := false.B
    }
  }


  //io.releaseCan := LED
 // io.alarm := !LED


  dispMux.io.price := io.price(4,0)
  dispMux.io.sum := sumReg

   io.seg := dispMux.io.seg
   io.an := dispMux.io.an
}

// generate Verilog
object VendingMachine extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new VendingMachine(100000))
}