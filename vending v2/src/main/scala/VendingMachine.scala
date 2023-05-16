
import chisel3._
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

  val sevSeg = WireDefault(0.U)

  // ***** some dummy connections *****
  sevSeg := "b1111111".U
  val sumReg = RegInit(1.U(5.W))
  val priceReg = RegInit(1.U(5.W))

  when(io.buy) {
    // Clear sum when buy button is pressed
    //sumReg := sumReg - priceReg
    //sumDisplay := 0.U
  }


  when(io.coin2 && !RegNext(io.coin2)) {
    sumReg := sumReg + 2.U
  }
  when(io.coin5 && !RegNext(io.coin5)) {
    sumReg := sumReg + 5.U
  }

  // Logic for releasing can or sounding alarm
  when(io.buy && sumReg >= io.price) {
    io.releaseCan := true.B
    io.alarm := false.B
    sumReg := sumReg - io.price
  }.otherwise {
    io.releaseCan := false.B
    io.alarm := io.buy && sumReg < io.price
  }



  // ***** Dont touch
  io.alarm := io.coin2
  io.releaseCan := io.coin5


  io.seg := ~sevSeg
  io.an := "b1110".U
}

// generate Verilog
object VendingMachine extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new VendingMachine(100000))
}