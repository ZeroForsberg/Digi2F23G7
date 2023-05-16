circuit VendingMachine :
  module VendingMachine :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip price : UInt<5>, flip coin2 : UInt<1>, flip coin5 : UInt<1>, flip buy : UInt<1>, releaseCan : UInt<1>, alarm : UInt<1>, seg : UInt<7>, an : UInt<2>}

    reg sumReg : UInt<5>, clock with :
      reset => (reset, UInt<5>("h1")) @[VendingMachine.scala 17:23]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[VendingMachine.scala 20:28]
    REG <= io.coin2 @[VendingMachine.scala 20:28]
    node _T = eq(REG, UInt<1>("h0")) @[VendingMachine.scala 20:20]
    node _T_1 = and(io.coin2, _T) @[VendingMachine.scala 20:17]
    when _T_1 : @[VendingMachine.scala 20:40]
      node _sumReg_T = add(sumReg, UInt<2>("h2")) @[VendingMachine.scala 21:22]
      node _sumReg_T_1 = tail(_sumReg_T, 1) @[VendingMachine.scala 21:22]
      sumReg <= _sumReg_T_1 @[VendingMachine.scala 21:12]
    reg REG_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG_1) @[VendingMachine.scala 24:28]
    REG_1 <= io.coin5 @[VendingMachine.scala 24:28]
    node _T_2 = eq(REG_1, UInt<1>("h0")) @[VendingMachine.scala 24:20]
    node _T_3 = and(io.coin5, _T_2) @[VendingMachine.scala 24:17]
    when _T_3 : @[VendingMachine.scala 24:40]
      node _sumReg_T_2 = add(sumReg, UInt<3>("h5")) @[VendingMachine.scala 25:22]
      node _sumReg_T_3 = tail(_sumReg_T_2, 1) @[VendingMachine.scala 25:22]
      sumReg <= _sumReg_T_3 @[VendingMachine.scala 25:12]
    wire sumDisplay : UInt @[VendingMachine.scala 29:28]
    sumDisplay <= sumReg @[VendingMachine.scala 29:28]
    when io.buy : @[VendingMachine.scala 30:16]
      sumReg <= UInt<1>("h0") @[VendingMachine.scala 32:12]
      sumDisplay <= UInt<1>("h0") @[VendingMachine.scala 33:16]
    wire sevSeg : UInt @[VendingMachine.scala 35:24]
    sevSeg <= UInt<1>("h0") @[VendingMachine.scala 35:24]
    sevSeg <= sumDisplay @[VendingMachine.scala 37:10]
    node _io_seg_T = not(sevSeg) @[VendingMachine.scala 39:13]
    io.seg <= _io_seg_T @[VendingMachine.scala 39:10]
    io.an <= UInt<2>("h3") @[VendingMachine.scala 40:9]
    node _T_4 = geq(sumReg, io.price) @[VendingMachine.scala 43:25]
    node _T_5 = and(io.buy, _T_4) @[VendingMachine.scala 43:15]
    when _T_5 : @[VendingMachine.scala 43:38]
      io.releaseCan <= UInt<1>("h1") @[VendingMachine.scala 44:19]
      io.alarm <= UInt<1>("h0") @[VendingMachine.scala 45:14]
      node _sumReg_T_4 = sub(sumReg, io.price) @[VendingMachine.scala 46:22]
      node _sumReg_T_5 = tail(_sumReg_T_4, 1) @[VendingMachine.scala 46:22]
      sumReg <= _sumReg_T_5 @[VendingMachine.scala 46:12]
    else :
      io.releaseCan <= UInt<1>("h0") @[VendingMachine.scala 48:19]
      node _io_alarm_T = lt(sumReg, io.price) @[VendingMachine.scala 49:34]
      node _io_alarm_T_1 = and(io.buy, _io_alarm_T) @[VendingMachine.scala 49:24]
      io.alarm <= _io_alarm_T_1 @[VendingMachine.scala 49:14]


