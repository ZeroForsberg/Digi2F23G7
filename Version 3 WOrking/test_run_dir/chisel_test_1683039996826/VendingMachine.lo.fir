FIRRTL version 1.1.0
circuit VendingMachine :
  module VendingMachine :
    input clock : Clock
    input reset : UInt<1>
    input io_price : UInt<5>
    input io_coin2 : UInt<1>
    input io_coin5 : UInt<1>
    input io_buy : UInt<1>
    output io_releaseCan : UInt<1>
    output io_alarm : UInt<1>
    output io_seg : UInt<7>
    output io_an : UInt<4>

    reg sumReg : UInt<5>, clock with :
      reset => (UInt<1>("h0"), sumReg) @[VendingMachine.scala 29:23]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[VendingMachine.scala 30:28]
    node _T = eq(REG, UInt<1>("h0")) @[VendingMachine.scala 30:20]
    node _T_1 = and(io_coin2, _T) @[VendingMachine.scala 30:17]
    node _sumReg_T = add(sumReg, UInt<2>("h2")) @[VendingMachine.scala 31:22]
    node _sumReg_T_1 = tail(_sumReg_T, 1) @[VendingMachine.scala 31:22]
    node _GEN_0 = mux(_T_1, _sumReg_T_1, sumReg) @[VendingMachine.scala 30:40 31:12 29:23]
    reg REG_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG_1) @[VendingMachine.scala 33:28]
    node _T_2 = eq(REG_1, UInt<1>("h0")) @[VendingMachine.scala 33:20]
    node _T_3 = and(io_coin5, _T_2) @[VendingMachine.scala 33:17]
    node _sumReg_T_2 = add(sumReg, UInt<3>("h5")) @[VendingMachine.scala 34:22]
    node _sumReg_T_3 = tail(_sumReg_T_2, 1) @[VendingMachine.scala 34:22]
    node _GEN_1 = mux(_T_3, _sumReg_T_3, _GEN_0) @[VendingMachine.scala 33:40 34:12]
    node sevSeg = UInt<7>("h7f") @[VendingMachine.scala 17:27 20:10]
    node _io_seg_T = not(sevSeg) @[VendingMachine.scala 46:13]
    io_releaseCan <= io_coin5 @[VendingMachine.scala 43:17]
    io_alarm <= io_coin2 @[VendingMachine.scala 42:12]
    io_seg <= _io_seg_T @[VendingMachine.scala 46:10]
    io_an <= UInt<4>("he") @[VendingMachine.scala 47:9]
    sumReg <= mux(reset, UInt<5>("h1"), _GEN_1) @[VendingMachine.scala 29:{23,23}]
    REG <= io_coin2 @[VendingMachine.scala 30:28]
    REG_1 <= io_coin5 @[VendingMachine.scala 33:28]
