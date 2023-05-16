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
      reset => (UInt<1>("h0"), sumReg) @[VendingMachine.scala 21:23]
    reg priceReg : UInt<5>, clock with :
      reset => (UInt<1>("h0"), priceReg) @[VendingMachine.scala 22:25]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[VendingMachine.scala 31:28]
    node _T = eq(REG, UInt<1>("h0")) @[VendingMachine.scala 31:20]
    node _T_1 = and(io_coin2, _T) @[VendingMachine.scala 31:17]
    node _sumReg_T = add(sumReg, UInt<2>("h2")) @[VendingMachine.scala 32:22]
    node _sumReg_T_1 = tail(_sumReg_T, 1) @[VendingMachine.scala 32:22]
    node _GEN_0 = mux(_T_1, _sumReg_T_1, sumReg) @[VendingMachine.scala 31:40 32:12 21:23]
    reg REG_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG_1) @[VendingMachine.scala 34:28]
    node _T_2 = eq(REG_1, UInt<1>("h0")) @[VendingMachine.scala 34:20]
    node _T_3 = and(io_coin5, _T_2) @[VendingMachine.scala 34:17]
    node _sumReg_T_2 = add(sumReg, UInt<3>("h5")) @[VendingMachine.scala 35:22]
    node _sumReg_T_3 = tail(_sumReg_T_2, 1) @[VendingMachine.scala 35:22]
    node _GEN_1 = mux(_T_3, _sumReg_T_3, _GEN_0) @[VendingMachine.scala 34:40 35:12]
    node _T_4 = geq(sumReg, io_price) @[VendingMachine.scala 39:25]
    node _T_5 = and(io_buy, _T_4) @[VendingMachine.scala 39:15]
    node _sumReg_T_4 = sub(sumReg, io_price) @[VendingMachine.scala 42:22]
    node _sumReg_T_5 = tail(_sumReg_T_4, 1) @[VendingMachine.scala 42:22]
    node _io_alarm_T = lt(sumReg, io_price) @[VendingMachine.scala 45:34]
    node _io_alarm_T_1 = and(io_buy, _io_alarm_T) @[VendingMachine.scala 45:24]
    node _GEN_2 = mux(_T_5, UInt<1>("h1"), UInt<1>("h0")) @[VendingMachine.scala 39:38 40:19 44:19]
    node _GEN_3 = mux(_T_5, UInt<1>("h0"), _io_alarm_T_1) @[VendingMachine.scala 39:38 41:14 45:14]
    node _GEN_4 = mux(_T_5, _sumReg_T_5, _GEN_1) @[VendingMachine.scala 39:38 42:12]
    node sevSeg = UInt<7>("h7f") @[VendingMachine.scala 17:27 20:10]
    node _io_seg_T = not(sevSeg) @[VendingMachine.scala 55:13]
    io_releaseCan <= io_coin5 @[VendingMachine.scala 52:17]
    io_alarm <= io_coin2 @[VendingMachine.scala 51:12]
    io_seg <= _io_seg_T @[VendingMachine.scala 55:10]
    io_an <= UInt<4>("he") @[VendingMachine.scala 56:9]
    sumReg <= mux(reset, UInt<5>("h1"), _GEN_4) @[VendingMachine.scala 21:{23,23}]
    priceReg <= mux(reset, UInt<5>("h1"), priceReg) @[VendingMachine.scala 22:{25,25,25}]
    REG <= io_coin2 @[VendingMachine.scala 31:28]
    REG_1 <= io_coin5 @[VendingMachine.scala 34:28]
