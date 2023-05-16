FIRRTL version 1.1.0
circuit VendingMachine :
  module SevenSegDec :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<4>
    output io_seg : UInt<7>

    node _T = eq(UInt<1>("h0"), io_in) @[SevenSegDec.scala 12:20]
    node _T_1 = eq(UInt<1>("h1"), io_in) @[SevenSegDec.scala 12:20]
    node _T_2 = eq(UInt<2>("h2"), io_in) @[SevenSegDec.scala 12:20]
    node _T_3 = eq(UInt<2>("h3"), io_in) @[SevenSegDec.scala 12:20]
    node _T_4 = eq(UInt<3>("h4"), io_in) @[SevenSegDec.scala 12:20]
    node _T_5 = eq(UInt<3>("h5"), io_in) @[SevenSegDec.scala 12:20]
    node _T_6 = eq(UInt<3>("h6"), io_in) @[SevenSegDec.scala 12:20]
    node _T_7 = eq(UInt<3>("h7"), io_in) @[SevenSegDec.scala 12:20]
    node _T_8 = eq(UInt<4>("h8"), io_in) @[SevenSegDec.scala 12:20]
    node _T_9 = eq(UInt<4>("h9"), io_in) @[SevenSegDec.scala 12:20]
    node _T_10 = eq(UInt<4>("ha"), io_in) @[SevenSegDec.scala 12:20]
    node _T_11 = eq(UInt<4>("hb"), io_in) @[SevenSegDec.scala 12:20]
    node _T_12 = eq(UInt<4>("hc"), io_in) @[SevenSegDec.scala 12:20]
    node _T_13 = eq(UInt<4>("hd"), io_in) @[SevenSegDec.scala 12:20]
    node _T_14 = eq(UInt<4>("he"), io_in) @[SevenSegDec.scala 12:20]
    node _T_15 = eq(UInt<4>("hf"), io_in) @[SevenSegDec.scala 12:20]
    node _GEN_0 = mux(_T_15, UInt<7>("h71"), UInt<1>("h0")) @[SevenSegDec.scala 12:20 10:27 28:33]
    node _GEN_1 = mux(_T_14, UInt<7>("h79"), _GEN_0) @[SevenSegDec.scala 12:20 27:33]
    node _GEN_2 = mux(_T_13, UInt<7>("h5e"), _GEN_1) @[SevenSegDec.scala 12:20 26:33]
    node _GEN_3 = mux(_T_12, UInt<6>("h39"), _GEN_2) @[SevenSegDec.scala 12:20 25:33]
    node _GEN_4 = mux(_T_11, UInt<7>("h7c"), _GEN_3) @[SevenSegDec.scala 12:20 24:33]
    node _GEN_5 = mux(_T_10, UInt<7>("h77"), _GEN_4) @[SevenSegDec.scala 12:20 23:33]
    node _GEN_6 = mux(_T_9, UInt<7>("h6f"), _GEN_5) @[SevenSegDec.scala 12:20 22:33]
    node _GEN_7 = mux(_T_8, UInt<7>("h7f"), _GEN_6) @[SevenSegDec.scala 12:20 21:33]
    node _GEN_8 = mux(_T_7, UInt<3>("h7"), _GEN_7) @[SevenSegDec.scala 12:20 20:33]
    node _GEN_9 = mux(_T_6, UInt<7>("h7d"), _GEN_8) @[SevenSegDec.scala 12:20 19:33]
    node _GEN_10 = mux(_T_5, UInt<7>("h6d"), _GEN_9) @[SevenSegDec.scala 12:20 18:33]
    node _GEN_11 = mux(_T_4, UInt<7>("h66"), _GEN_10) @[SevenSegDec.scala 12:20 17:33]
    node _GEN_12 = mux(_T_3, UInt<7>("h4f"), _GEN_11) @[SevenSegDec.scala 12:20 16:33]
    node _GEN_13 = mux(_T_2, UInt<7>("h5b"), _GEN_12) @[SevenSegDec.scala 12:20 15:33]
    node _GEN_14 = mux(_T_1, UInt<3>("h6"), _GEN_13) @[SevenSegDec.scala 12:20 14:33]
    node _GEN_15 = mux(_T, UInt<6>("h3f"), _GEN_14) @[SevenSegDec.scala 12:20 13:33]
    node sevSeg = _GEN_15 @[SevenSegDec.scala 10:27]
    io_seg <= sevSeg @[SevenSegDec.scala 31:10]

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

    inst segDec of SevenSegDec @[VendingMachine.scala 20:22]
    reg sumReg : UInt<5>, clock with :
      reset => (UInt<1>("h0"), sumReg) @[VendingMachine.scala 18:23]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[VendingMachine.scala 30:28]
    node _T = eq(REG, UInt<1>("h0")) @[VendingMachine.scala 30:20]
    node _T_1 = and(io_coin2, _T) @[VendingMachine.scala 30:17]
    node _sumReg_T = add(sumReg, UInt<2>("h2")) @[VendingMachine.scala 31:22]
    node _sumReg_T_1 = tail(_sumReg_T, 1) @[VendingMachine.scala 31:22]
    node _GEN_0 = mux(_T_1, _sumReg_T_1, sumReg) @[VendingMachine.scala 30:40 31:12 18:23]
    reg REG_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG_1) @[VendingMachine.scala 33:28]
    node _T_2 = eq(REG_1, UInt<1>("h0")) @[VendingMachine.scala 33:20]
    node _T_3 = and(io_coin5, _T_2) @[VendingMachine.scala 33:17]
    node _sumReg_T_2 = add(sumReg, UInt<3>("h5")) @[VendingMachine.scala 34:22]
    node _sumReg_T_3 = tail(_sumReg_T_2, 1) @[VendingMachine.scala 34:22]
    node _GEN_1 = mux(_T_3, _sumReg_T_3, _GEN_0) @[VendingMachine.scala 33:40 34:12]
    node _T_4 = geq(sumReg, io_price) @[VendingMachine.scala 38:25]
    node _T_5 = and(io_buy, _T_4) @[VendingMachine.scala 38:15]
    node _sumReg_T_4 = sub(sumReg, io_price) @[VendingMachine.scala 41:22]
    node _sumReg_T_5 = tail(_sumReg_T_4, 1) @[VendingMachine.scala 41:22]
    node _io_alarm_T = lt(sumReg, io_price) @[VendingMachine.scala 44:34]
    node _io_alarm_T_1 = and(io_buy, _io_alarm_T) @[VendingMachine.scala 44:24]
    node _GEN_2 = mux(_T_5, UInt<1>("h1"), UInt<1>("h0")) @[VendingMachine.scala 38:38 39:19 43:19]
    node _GEN_3 = mux(_T_5, UInt<1>("h0"), _io_alarm_T_1) @[VendingMachine.scala 38:38 40:14 44:14]
    node _GEN_4 = mux(_T_5, _sumReg_T_5, _GEN_1) @[VendingMachine.scala 38:38 41:12]
    node _sevSeg_T = not(segDec.io_seg) @[VendingMachine.scala 51:13]
    node sevSeg = _sevSeg_T @[VendingMachine.scala 19:20 51:10]
    io_releaseCan <= _GEN_2
    io_alarm <= _GEN_3
    io_seg <= sevSeg @[VendingMachine.scala 53:11]
    io_an <= UInt<4>("he") @[VendingMachine.scala 54:10]
    sumReg <= mux(reset, UInt<5>("h0"), _GEN_4) @[VendingMachine.scala 18:{23,23}]
    segDec.clock <= clock
    segDec.reset <= reset
    segDec.io_in <= bits(io_price, 3, 0) @[VendingMachine.scala 50:16]
    REG <= io_coin2 @[VendingMachine.scala 30:28]
    REG_1 <= io_coin5 @[VendingMachine.scala 33:28]
