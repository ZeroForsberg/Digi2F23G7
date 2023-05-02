import chisel3._
import chisel3.util._

class VendingData extends Module {
  val io = IO(new Bundle {
    val coin1 = Input(Bool())
    val coin2 = Input(Bool())
    val coin5 = Input(Bool())
    val coin10 = Input(Bool())
    val coin20 = Input(Bool())
    val buying = Input(Bool())
    val price = Input(UInt(5.W))
    val sum = Output(UInt(8.W))
    val canBuy = Output(Bool())
  })

  val sumReg = RegInit(0.U(8.W))
  val addVal = WireDefault(0.U)

  val coinCounter = RegInit(0.U(8.W))
  val addval = WireDefault(0.U)

  when(io.coin1 && !RegNext(io.coin1)) {
    addval := 1.U
  }
  when(io.coin2 && !RegNext(io.coin2)) {
    addval := 2.U
  }
  when(io.coin5 && !RegNext(io.coin5)) {
    addval := 5.U
  }
  when(io.coin10 && !RegNext(io.coin10)) {
    addval := 10.U
  }
  when(io.coin20 && !RegNext(io.coin20)) {
    addval := 20.U
  }
  coinCounter := coinCounter + addval
  io.sum := coinCounter
}


  /* sumReg := Mux(sumReg + addVal<"b11111111".U,sumReg+addVal,sumReg)
  io.sum := sumReg
  io.canBuy := sumReg >= io.price
} */