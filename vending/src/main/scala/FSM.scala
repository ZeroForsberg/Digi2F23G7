import chisel3 ._
import chisel3 .util._

class FSM extends Module {
  val io = IO(new Bundle {
    val coin1 = Input(Bool())
    val one = Output(Bool())
    val coin2 = Input(Bool())
    val two = Output(Bool())
    val coin5 = Input(Bool())
    val five = Output(Bool())
    val coin10 = Input(Bool())
    val ten = Output(Bool())
    val coin20 = Input(Bool())
    val twenty = Output(Bool())
    val buy = Input(Bool())
    val eval = Input(Bool())
    val buy_OK = Output(Bool())
    val alarm = Output(Bool())
    val releaseCan = Output(Bool())
  })

    object State extends ChiselEnum {
      val Idle, C1, C2, C5, C10, C20, Buy, Al = Value
    }

    import State._
    val stateReg = RegInit(Idle)

    switch(stateReg) {
      is(Idle) {
        when(io.coin1) {
          stateReg := C1
        }.elsewhen(io.coin2) {
          stateReg := C2
        }.elsewhen(io.coin5) {
          stateReg := C5
        }.elsewhen(io.coin10) {
          stateReg := C10
        }.elsewhen(io.coin20) {
          stateReg := C20
        }.elsewhen(io.buy && io.eval) {
          stateReg := Buy
        }.elsewhen(io.buy && !io.eval) {
          stateReg := Al
        }
      }
        is(C1) {
          when(!io.coin1) {
            stateReg := Idle
          }
        }
        is(C2) {
          when(!io.coin2) {
            stateReg := Idle
          }
        }
        is(C5) {
          when(!io.coin5) {
            stateReg := Idle
          }
        }
        is(C10) {
          when(!io.coin10) {
            stateReg := Idle
          }
        }
        is(C20) {
          when(!io.coin20) {
            stateReg := Idle
          }
        }
        is(Buy) {
          when(!io.buy) {
            stateReg := Idle
          }
        }
        is(Al) {
          when(!io.buy) {
            stateReg := Idle
          }
        }
    }
        io.buy_OK := stateReg === Buy
        io.releaseCan := stateReg === Buy
        io.alarm := stateReg === Al

        io.one := stateReg === C1
        io.two := stateReg === C2
        io.five := stateReg === C5
        io.ten := stateReg === C10
        io.twenty := stateReg === C20
}