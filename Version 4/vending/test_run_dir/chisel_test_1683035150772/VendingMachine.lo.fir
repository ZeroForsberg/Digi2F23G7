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

    reg sumDisplay : UInt<5>, clock with :
      reset => (UInt<1>("h0"), sumDisplay) @[VendingMachine.scala 17:23]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[VendingMachine.scala 20:28]
    node _T = eq(REG, UInt<1>("h0")) @[VendingMachine.scala 20:20]
    node _T_1 = and(io_coin2, _T) @[VendingMachine.scala 20:17]
    node _sumReg_T = add(sumDisplay, UInt<2>("h2")) @[VendingMachine.scala 21:22]
    node _sumReg_T_1 = tail(_sumReg_T, 1) @[VendingMachine.scala 21:22]
    node _GEN_0 = mux(_T_1, _sumReg_T_1, sumDisplay) @[VendingMachine.scala 20:40 21:12 17:23]
    reg REG_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG_1) @[VendingMachine.scala 24:28]
    node _T_2 = eq(REG_1, UInt<1>("h0")) @[VendingMachine.scala 24:20]
    node _T_3 = and(io_coin5, _T_2) @[VendingMachine.scala 24:17]
    node _sumReg_T_2 = add(sumDisplay, UInt<3>("h5")) @[VendingMachine.scala 25:22]
    node _sumReg_T_3 = tail(_sumReg_T_2, 1) @[VendingMachine.scala 25:22]
    node _GEN_1 = mux(_T_3, _sumReg_T_3, _GEN_0) @[VendingMachine.scala 24:40 25:12]
    node _GEN_2 = mux(io_buy, UInt<1>("h0"), _GEN_1) @[VendingMachine.scala 30:16 33:16]
    node _T_4 = geq(sumDisplay, io_price) @[VendingMachine.scala 43:25]
    node _T_5 = and(io_buy, _T_4) @[VendingMachine.scala 43:15]
    node _sumReg_T_4 = sub(sumDisplay, io_price) @[VendingMachine.scala 46:22]
    node _sumReg_T_5 = tail(_sumReg_T_4, 1) @[VendingMachine.scala 46:22]
    node _io_alarm_T = lt(sumDisplay, io_price) @[VendingMachine.scala 49:34]
    node _io_alarm_T_1 = and(io_buy, _io_alarm_T) @[VendingMachine.scala 49:24]
    node _GEN_3 = mux(_T_5, UInt<1>("h1"), UInt<1>("h0")) @[VendingMachine.scala 43:38 44:19 48:19]
    node _GEN_4 = mux(_T_5, UInt<1>("h0"), _io_alarm_T_1) @[VendingMachine.scala 43:38 45:14 49:14]
    node _GEN_5 = mux(_T_5, _sumReg_T_5, _GEN_2) @[VendingMachine.scala 43:38 46:12]
    node sevSeg = sumDisplay @[VendingMachine.scala 35:24 37:10]
    io_releaseCan <= _GEN_3
    io_alarm <= _GEN_4
    io_seg <= pad(sevSeg, 7) @[VendingMachine.scala 39:10]
    io_an <= UInt<4>("hc") @[VendingMachine.scala 40:9]
    sumDisplay <= mux(reset, UInt<5>("h0"), _GEN_5) @[VendingMachine.scala 17:{23,23}]
    REG <= io_coin2 @[VendingMachine.scala 20:28]
    REG_1 <= io_coin5 @[VendingMachine.scala 24:28]
