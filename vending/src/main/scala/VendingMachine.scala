import chisel3._
import chisel3.util._

class VendingMachine extends Module {
  val io = IO(new Bundle {
    val price = Input(UInt(7.W))
    val coin1 = Input(Bool())
    val coin2 = Input(Bool())
    val coin5 = Input(Bool())
    val coin10 = Input(Bool())
    val coin20 = Input(Bool())
    val buy = Input(Bool())
    val releaseCan = Output(Bool())
    val alarm = Output(Bool())
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
    val sum = Output(UInt(7.W))
  })

  val sevSeg = WireDefault(0.U)
  val Data = Module(new VendingData())
  val FSM = Module(new FSM())
  val dispMux = Module(new DisplayMultiplexer())

  //inputs to FSM
  FSM.io.coin2 := io.coin2
  FSM.io.coin5 := io.coin5
  FSM.io.buy := io.buy
  FSM.io.buy_OK := Data.io.canBuy

  //inputs to DP
  Data.io.price := io.price
  Data.io.coin1 := FSM.io.coin1
  Data.io.coin2 := FSM.io.coin2
  Data.io.coin5 := FSM.io.coin5
  Data.io.coin10 := FSM.io.coin10
  Data.io.coin20 := FSM.io.coin20
  Data.io.buying := FSM.io.buy_OK

  //inputs to dispMux
  dispMux.io.sum := Data.io.sum
  dispMux.io.price := io.price

  //outputs:
  io.releaseCan := FSM.io.releaseCan
  io.alarm := FSM.io.alarm
  io.seg := dispMux.io.seg
  io.an := dispMux.io.an
}
/*
generate Verilog
object VendingMachine extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new VendingMachine(100000))
}

  sevSeg := "b1111111".U

  when(io.sum < io.price) {
    io.alarm := true.B;
  } otherwise {
    io.alarm := false.B;
  }
  when(io.sum >= io.price) {
    io.releaseCan := true.B;
  } otherwise {
    io.releaseCan := false.B;
  }
  io.seg := ~sevSeg

 */