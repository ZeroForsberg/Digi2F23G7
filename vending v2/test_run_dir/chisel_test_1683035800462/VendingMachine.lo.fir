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
    output io_an : UInt<2>

    reg sumReg : UInt<5>, clock with :
      reset => (UInt<1>("h0"), sumReg) @[VendingMachine.scala 17:23]
    node _sumReg_T = add(sumReg, UInt<2>("h2")) @[VendingMachine.scala 21:22]
    node _sumReg_T_1 = tail(_sumReg_T, 1) @[VendingMachine.scala 21:22]
    node _GEN_0 = mux(io_coin2, _sumReg_T_1, sumReg) @[VendingMachine.scala 20:18 21:12 17:23]
    node _sumReg_T_2 = add(sumReg, UInt<3>("h5")) @[VendingMachine.scala 25:22]
    node _sumReg_T_3 = tail(_sumReg_T_2, 1) @[VendingMachine.scala 25:22]
    node _GEN_1 = mux(io_coin5, _sumReg_T_3, _GEN_0) @[VendingMachine.scala 24:18 25:12]
    node _GEN_2 = mux(io_buy, UInt<1>("h0"), _GEN_1) @[VendingMachine.scala 30:16 32:12]
    node _GEN_3 = mux(io_buy, UInt<1>("h0"), sumReg) @[VendingMachine.scala 30:16 33:16 29:28]
    node sumDisplay = _GEN_3 @[VendingMachine.scala 29:28]
    node sevSeg = sumDisplay @[VendingMachine.scala 35:24 37:10]
    node _io_seg_T = not(sevSeg) @[VendingMachine.scala 39:13]
    node _T = geq(sumReg, io_price) @[VendingMachine.scala 43:25]
    node _T_1 = and(io_buy, _T) @[VendingMachine.scala 43:15]
    node _sumReg_T_4 = sub(sumReg, io_price) @[VendingMachine.scala 46:22]
    node _sumReg_T_5 = tail(_sumReg_T_4, 1) @[VendingMachine.scala 46:22]
    node _io_alarm_T = lt(sumReg, io_price) @[VendingMachine.scala 49:34]
    node _io_alarm_T_1 = and(io_buy, _io_alarm_T) @[VendingMachine.scala 49:24]
    node _GEN_4 = mux(_T_1, UInt<1>("h1"), UInt<1>("h0")) @[VendingMachine.scala 43:38 44:19 48:19]
    node _GEN_5 = mux(_T_1, UInt<1>("h0"), _io_alarm_T_1) @[VendingMachine.scala 43:38 45:14 49:14]
    node _GEN_6 = mux(_T_1, _sumReg_T_5, _GEN_2) @[VendingMachine.scala 43:38 46:12]
    io_releaseCan <= _GEN_4
    io_alarm <= _GEN_5
    io_seg <= pad(_io_seg_T, 7) @[VendingMachine.scala 39:10]
    io_an <= UInt<2>("h0") @[VendingMachine.scala 40:9]
    sumReg <= mux(reset, UInt<5>("h1"), _GEN_6) @[VendingMachine.scala 17:{23,23}]
