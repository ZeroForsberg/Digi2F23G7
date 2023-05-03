
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

  val dispMux = Module(new DisplayMultiplexer())

  val sumReg = RegInit(0.U(5.W))
  val sevSeg = WireDefault("b1111111".U(7.W))

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
    when (io.buy && !RegNext(io.buy)) {
        sumReg := sumReg - io.price
      io.releaseCan := true.B
    }
  }.otherwise {
    io.releaseCan := false.B
    io.alarm := io.buy && sumReg < io.price
  }

  dispMux.io.price := io.price(4,0)
  dispMux.io.sum := sumReg


  //segDec.io.in := dispMux.io.price
  //segDec.io.in := dispMux.io.sum
  //sevSeg := segDec.io.seg


   io.seg := dispMux.io.seg
   io.an := dispMux.io.an
}

// generate Verilog
object VendingMachine extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new VendingMachine(100000))
}