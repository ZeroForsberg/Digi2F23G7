FIRRTL version 1.1.0
circuit VendingMachine :
  module SevenSegDec :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<4>
    output io_out : UInt<7>
    output io_out2 : UInt<7>

    node _T = eq(UInt<1>("h0"), io_in) @[SevenSegDec.scala 27:17]
    node _T_1 = eq(UInt<1>("h1"), io_in) @[SevenSegDec.scala 27:17]
    node _T_2 = eq(UInt<2>("h2"), io_in) @[SevenSegDec.scala 27:17]
    node _T_3 = eq(UInt<2>("h3"), io_in) @[SevenSegDec.scala 27:17]
    node _T_4 = eq(UInt<3>("h4"), io_in) @[SevenSegDec.scala 27:17]
    node _T_5 = eq(UInt<3>("h5"), io_in) @[SevenSegDec.scala 27:17]
    node _T_6 = eq(UInt<3>("h6"), io_in) @[SevenSegDec.scala 27:17]
    node _T_7 = eq(UInt<3>("h7"), io_in) @[SevenSegDec.scala 27:17]
    node _T_8 = eq(UInt<4>("h8"), io_in) @[SevenSegDec.scala 27:17]
    node _T_9 = eq(UInt<4>("h9"), io_in) @[SevenSegDec.scala 27:17]
    node _T_10 = eq(UInt<4>("ha"), io_in) @[SevenSegDec.scala 27:17]
    node _T_11 = eq(UInt<4>("hb"), io_in) @[SevenSegDec.scala 27:17]
    node _T_12 = eq(UInt<4>("hc"), io_in) @[SevenSegDec.scala 27:17]
    node _T_13 = eq(UInt<4>("hd"), io_in) @[SevenSegDec.scala 27:17]
    node _T_14 = eq(UInt<4>("he"), io_in) @[SevenSegDec.scala 27:17]
    node _T_15 = eq(UInt<4>("hf"), io_in) @[SevenSegDec.scala 27:17]
    node _T_16 = eq(UInt<5>("h10"), io_in) @[SevenSegDec.scala 27:17]
    node _T_17 = eq(UInt<5>("h11"), io_in) @[SevenSegDec.scala 27:17]
    node _T_18 = eq(UInt<5>("h12"), io_in) @[SevenSegDec.scala 27:17]
    node _T_19 = eq(UInt<5>("h13"), io_in) @[SevenSegDec.scala 27:17]
    node _T_20 = eq(UInt<5>("h14"), io_in) @[SevenSegDec.scala 27:17]
    node _T_21 = eq(UInt<5>("h15"), io_in) @[SevenSegDec.scala 27:17]
    node _T_22 = eq(UInt<5>("h16"), io_in) @[SevenSegDec.scala 27:17]
    node _T_23 = eq(UInt<5>("h17"), io_in) @[SevenSegDec.scala 27:17]
    node _T_24 = eq(UInt<5>("h18"), io_in) @[SevenSegDec.scala 27:17]
    node _T_25 = eq(UInt<5>("h19"), io_in) @[SevenSegDec.scala 27:17]
    node _T_26 = eq(UInt<5>("h1a"), io_in) @[SevenSegDec.scala 27:17]
    node _T_27 = eq(UInt<5>("h1b"), io_in) @[SevenSegDec.scala 27:17]
    node _T_28 = eq(UInt<5>("h1c"), io_in) @[SevenSegDec.scala 27:17]
    node _T_29 = eq(UInt<5>("h1d"), io_in) @[SevenSegDec.scala 27:17]
    node _T_30 = eq(UInt<5>("h1e"), io_in) @[SevenSegDec.scala 27:17]
    node _T_31 = eq(UInt<5>("h1f"), io_in) @[SevenSegDec.scala 27:17]
    node _GEN_0 = mux(_T_31, UInt<3>("h6"), UInt<1>("h0")) @[SevenSegDec.scala 27:17 11:27 59:29]
    node _GEN_1 = mux(_T_30, UInt<6>("h3f"), _GEN_0) @[SevenSegDec.scala 27:17 58:29]
    node _GEN_2 = mux(_T_29, UInt<7>("h6f"), _GEN_1) @[SevenSegDec.scala 27:17 57:29]
    node _GEN_3 = mux(_T_28, UInt<7>("h7f"), _GEN_2) @[SevenSegDec.scala 27:17 56:29]
    node _GEN_4 = mux(_T_27, UInt<3>("h7"), _GEN_3) @[SevenSegDec.scala 27:17 55:29]
    node _GEN_5 = mux(_T_26, UInt<7>("h7d"), _GEN_4) @[SevenSegDec.scala 27:17 54:29]
    node _GEN_6 = mux(_T_25, UInt<7>("h6d"), _GEN_5) @[SevenSegDec.scala 27:17 53:29]
    node _GEN_7 = mux(_T_24, UInt<7>("h66"), _GEN_6) @[SevenSegDec.scala 27:17 52:29]
    node _GEN_8 = mux(_T_23, UInt<7>("h4f"), _GEN_7) @[SevenSegDec.scala 27:17 51:29]
    node _GEN_9 = mux(_T_22, UInt<7>("h5b"), _GEN_8) @[SevenSegDec.scala 27:17 50:29]
    node _GEN_10 = mux(_T_21, UInt<3>("h6"), _GEN_9) @[SevenSegDec.scala 27:17 49:29]
    node _GEN_11 = mux(_T_20, UInt<6>("h3f"), _GEN_10) @[SevenSegDec.scala 27:17 48:29]
    node _GEN_12 = mux(_T_19, UInt<7>("h6f"), _GEN_11) @[SevenSegDec.scala 27:17 47:29]
    node _GEN_13 = mux(_T_18, UInt<7>("h7f"), _GEN_12) @[SevenSegDec.scala 27:17 46:29]
    node _GEN_14 = mux(_T_17, UInt<3>("h7"), _GEN_13) @[SevenSegDec.scala 27:17 45:29]
    node _GEN_15 = mux(_T_16, UInt<7>("h7d"), _GEN_14) @[SevenSegDec.scala 27:17 44:29]
    node _GEN_16 = mux(_T_15, UInt<7>("h6d"), _GEN_15) @[SevenSegDec.scala 27:17 43:29]
    node _GEN_17 = mux(_T_14, UInt<7>("h66"), _GEN_16) @[SevenSegDec.scala 27:17 42:29]
    node _GEN_18 = mux(_T_13, UInt<7>("h4f"), _GEN_17) @[SevenSegDec.scala 27:17 41:29]
    node _GEN_19 = mux(_T_12, UInt<7>("h5b"), _GEN_18) @[SevenSegDec.scala 27:17 40:29]
    node _GEN_20 = mux(_T_11, UInt<3>("h6"), _GEN_19) @[SevenSegDec.scala 27:17 39:29]
    node _GEN_21 = mux(_T_10, UInt<6>("h3f"), _GEN_20) @[SevenSegDec.scala 27:17 38:29]
    node _GEN_22 = mux(_T_9, UInt<7>("h6f"), _GEN_21) @[SevenSegDec.scala 27:17 37:29]
    node _GEN_23 = mux(_T_8, UInt<7>("h7f"), _GEN_22) @[SevenSegDec.scala 27:17 36:29]
    node _GEN_24 = mux(_T_7, UInt<3>("h7"), _GEN_23) @[SevenSegDec.scala 27:17 35:29]
    node _GEN_25 = mux(_T_6, UInt<7>("h7d"), _GEN_24) @[SevenSegDec.scala 27:17 34:29]
    node _GEN_26 = mux(_T_5, UInt<7>("h6d"), _GEN_25) @[SevenSegDec.scala 27:17 33:29]
    node _GEN_27 = mux(_T_4, UInt<7>("h66"), _GEN_26) @[SevenSegDec.scala 27:17 32:29]
    node _GEN_28 = mux(_T_3, UInt<7>("h4f"), _GEN_27) @[SevenSegDec.scala 27:17 31:29]
    node _GEN_29 = mux(_T_2, UInt<7>("h5b"), _GEN_28) @[SevenSegDec.scala 27:17 30:29]
    node _GEN_30 = mux(_T_1, UInt<3>("h6"), _GEN_29) @[SevenSegDec.scala 27:17 29:29]
    node _GEN_31 = mux(_T, UInt<6>("h3f"), _GEN_30) @[SevenSegDec.scala 27:17 28:29]
    node _T_32 = eq(UInt<1>("h0"), io_in) @[SevenSegDec.scala 62:17]
    node _T_33 = eq(UInt<1>("h1"), io_in) @[SevenSegDec.scala 62:17]
    node _T_34 = eq(UInt<2>("h2"), io_in) @[SevenSegDec.scala 62:17]
    node _T_35 = eq(UInt<2>("h3"), io_in) @[SevenSegDec.scala 62:17]
    node _T_36 = eq(UInt<3>("h4"), io_in) @[SevenSegDec.scala 62:17]
    node _T_37 = eq(UInt<3>("h5"), io_in) @[SevenSegDec.scala 62:17]
    node _T_38 = eq(UInt<3>("h6"), io_in) @[SevenSegDec.scala 62:17]
    node _T_39 = eq(UInt<3>("h7"), io_in) @[SevenSegDec.scala 62:17]
    node _T_40 = eq(UInt<4>("h8"), io_in) @[SevenSegDec.scala 62:17]
    node _T_41 = eq(UInt<4>("h9"), io_in) @[SevenSegDec.scala 62:17]
    node _T_42 = eq(UInt<4>("ha"), io_in) @[SevenSegDec.scala 62:17]
    node _T_43 = eq(UInt<4>("hb"), io_in) @[SevenSegDec.scala 62:17]
    node _T_44 = eq(UInt<4>("hc"), io_in) @[SevenSegDec.scala 62:17]
    node _T_45 = eq(UInt<4>("hd"), io_in) @[SevenSegDec.scala 62:17]
    node _T_46 = eq(UInt<4>("he"), io_in) @[SevenSegDec.scala 62:17]
    node _T_47 = eq(UInt<4>("hf"), io_in) @[SevenSegDec.scala 62:17]
    node _T_48 = eq(UInt<5>("h10"), io_in) @[SevenSegDec.scala 62:17]
    node _T_49 = eq(UInt<5>("h11"), io_in) @[SevenSegDec.scala 62:17]
    node _T_50 = eq(UInt<5>("h12"), io_in) @[SevenSegDec.scala 62:17]
    node _T_51 = eq(UInt<5>("h13"), io_in) @[SevenSegDec.scala 62:17]
    node _T_52 = eq(UInt<5>("h14"), io_in) @[SevenSegDec.scala 62:17]
    node _T_53 = eq(UInt<5>("h15"), io_in) @[SevenSegDec.scala 62:17]
    node _T_54 = eq(UInt<5>("h16"), io_in) @[SevenSegDec.scala 62:17]
    node _T_55 = eq(UInt<5>("h17"), io_in) @[SevenSegDec.scala 62:17]
    node _T_56 = eq(UInt<5>("h18"), io_in) @[SevenSegDec.scala 62:17]
    node _T_57 = eq(UInt<5>("h19"), io_in) @[SevenSegDec.scala 62:17]
    node _T_58 = eq(UInt<5>("h1a"), io_in) @[SevenSegDec.scala 62:17]
    node _T_59 = eq(UInt<5>("h1b"), io_in) @[SevenSegDec.scala 62:17]
    node _T_60 = eq(UInt<5>("h1c"), io_in) @[SevenSegDec.scala 62:17]
    node _T_61 = eq(UInt<5>("h1d"), io_in) @[SevenSegDec.scala 62:17]
    node _T_62 = eq(UInt<5>("h1e"), io_in) @[SevenSegDec.scala 62:17]
    node _T_63 = eq(UInt<5>("h1f"), io_in) @[SevenSegDec.scala 62:17]
    node _GEN_32 = mux(_T_63, UInt<7>("h4f"), UInt<1>("h0")) @[SevenSegDec.scala 62:17 12:28 94:30]
    node _GEN_33 = mux(_T_62, UInt<7>("h4f"), _GEN_32) @[SevenSegDec.scala 62:17 93:30]
    node _GEN_34 = mux(_T_61, UInt<7>("h5b"), _GEN_33) @[SevenSegDec.scala 62:17 92:30]
    node _GEN_35 = mux(_T_60, UInt<7>("h5b"), _GEN_34) @[SevenSegDec.scala 62:17 91:30]
    node _GEN_36 = mux(_T_59, UInt<7>("h5b"), _GEN_35) @[SevenSegDec.scala 62:17 90:30]
    node _GEN_37 = mux(_T_58, UInt<7>("h5b"), _GEN_36) @[SevenSegDec.scala 62:17 89:30]
    node _GEN_38 = mux(_T_57, UInt<7>("h5b"), _GEN_37) @[SevenSegDec.scala 62:17 88:30]
    node _GEN_39 = mux(_T_56, UInt<7>("h5b"), _GEN_38) @[SevenSegDec.scala 62:17 87:30]
    node _GEN_40 = mux(_T_55, UInt<7>("h5b"), _GEN_39) @[SevenSegDec.scala 62:17 86:30]
    node _GEN_41 = mux(_T_54, UInt<7>("h5b"), _GEN_40) @[SevenSegDec.scala 62:17 85:30]
    node _GEN_42 = mux(_T_53, UInt<7>("h5b"), _GEN_41) @[SevenSegDec.scala 62:17 84:30]
    node _GEN_43 = mux(_T_52, UInt<7>("h5b"), _GEN_42) @[SevenSegDec.scala 62:17 83:30]
    node _GEN_44 = mux(_T_51, UInt<3>("h6"), _GEN_43) @[SevenSegDec.scala 62:17 82:30]
    node _GEN_45 = mux(_T_50, UInt<3>("h6"), _GEN_44) @[SevenSegDec.scala 62:17 81:30]
    node _GEN_46 = mux(_T_49, UInt<3>("h6"), _GEN_45) @[SevenSegDec.scala 62:17 80:30]
    node _GEN_47 = mux(_T_48, UInt<3>("h6"), _GEN_46) @[SevenSegDec.scala 62:17 79:30]
    node _GEN_48 = mux(_T_47, UInt<3>("h6"), _GEN_47) @[SevenSegDec.scala 62:17 78:30]
    node _GEN_49 = mux(_T_46, UInt<3>("h6"), _GEN_48) @[SevenSegDec.scala 62:17 77:30]
    node _GEN_50 = mux(_T_45, UInt<3>("h6"), _GEN_49) @[SevenSegDec.scala 62:17 76:30]
    node _GEN_51 = mux(_T_44, UInt<3>("h6"), _GEN_50) @[SevenSegDec.scala 62:17 75:30]
    node _GEN_52 = mux(_T_43, UInt<3>("h6"), _GEN_51) @[SevenSegDec.scala 62:17 74:30]
    node _GEN_53 = mux(_T_42, UInt<3>("h6"), _GEN_52) @[SevenSegDec.scala 62:17 73:30]
    node _GEN_54 = mux(_T_41, UInt<6>("h3f"), _GEN_53) @[SevenSegDec.scala 62:17 72:30]
    node _GEN_55 = mux(_T_40, UInt<6>("h3f"), _GEN_54) @[SevenSegDec.scala 62:17 71:30]
    node _GEN_56 = mux(_T_39, UInt<6>("h3f"), _GEN_55) @[SevenSegDec.scala 62:17 70:30]
    node _GEN_57 = mux(_T_38, UInt<6>("h3f"), _GEN_56) @[SevenSegDec.scala 62:17 69:30]
    node _GEN_58 = mux(_T_37, UInt<6>("h3f"), _GEN_57) @[SevenSegDec.scala 62:17 68:30]
    node _GEN_59 = mux(_T_36, UInt<6>("h3f"), _GEN_58) @[SevenSegDec.scala 62:17 67:30]
    node _GEN_60 = mux(_T_35, UInt<6>("h3f"), _GEN_59) @[SevenSegDec.scala 62:17 66:30]
    node _GEN_61 = mux(_T_34, UInt<6>("h3f"), _GEN_60) @[SevenSegDec.scala 62:17 65:30]
    node _GEN_62 = mux(_T_33, UInt<6>("h3f"), _GEN_61) @[SevenSegDec.scala 62:17 64:30]
    node _GEN_63 = mux(_T_32, UInt<6>("h3f"), _GEN_62) @[SevenSegDec.scala 62:17 63:30]
    node sevSeg = _GEN_31 @[SevenSegDec.scala 11:27]
    node sevSeg2 = _GEN_63 @[SevenSegDec.scala 12:28]
    io_out <= sevSeg @[SevenSegDec.scala 97:10]
    io_out2 <= sevSeg2 @[SevenSegDec.scala 98:11]

  module DisplayMultiplexer :
    input clock : Clock
    input reset : UInt<1>
    input io_sum : UInt<5>
    input io_price : UInt<5>
    output io_seg : UInt<7>
    output io_an : UInt<4>

    inst sevenSegdec of SevenSegDec @[DisplayMultiplexer.scala 12:28]
    reg tickCounterReg : UInt<17>, clock with :
      reset => (UInt<1>("h0"), tickCounterReg) @[DisplayMultiplexer.scala 25:31]
    reg next : UInt<2>, clock with :
      reset => (UInt<1>("h0"), next) @[DisplayMultiplexer.scala 27:21]
    node _tickCounterReg_T = add(tickCounterReg, UInt<1>("h1")) @[DisplayMultiplexer.scala 30:36]
    node _tickCounterReg_T_1 = tail(_tickCounterReg_T, 1) @[DisplayMultiplexer.scala 30:36]
    node _T = eq(tickCounterReg, UInt<1>("h0")) @[DisplayMultiplexer.scala 31:24]
    node _next_T = add(next, UInt<1>("h1")) @[DisplayMultiplexer.scala 32:18]
    node _next_T_1 = tail(_next_T, 1) @[DisplayMultiplexer.scala 32:18]
    node _GEN_0 = mux(_T, _next_T_1, next) @[DisplayMultiplexer.scala 31:34 32:10 27:21]
    node _GEN_1 = mux(_T, UInt<1>("h0"), _tickCounterReg_T_1) @[DisplayMultiplexer.scala 30:18 31:34 33:20]
    node _T_1 = eq(UInt<1>("h0"), next) @[DisplayMultiplexer.scala 36:16]
    node _T_2 = eq(UInt<1>("h1"), next) @[DisplayMultiplexer.scala 36:16]
    node _T_3 = eq(UInt<2>("h2"), next) @[DisplayMultiplexer.scala 36:16]
    node _sevenSegdec_io_in_T = rem(io_price, UInt<4>("ha")) @[DisplayMultiplexer.scala 49:37]
    node _T_4 = eq(UInt<2>("h3"), next) @[DisplayMultiplexer.scala 36:16]
    node _GEN_2 = mux(_T_4, UInt<4>("he"), UInt<4>("h1")) @[DisplayMultiplexer.scala 36:16 52:14 17:27]
    node _GEN_3 = mux(_T_4, io_sum, UInt<1>("h0")) @[DisplayMultiplexer.scala 36:16 20:22 53:25]
    node _GEN_4 = mux(_T_3, UInt<4>("hd"), _GEN_2) @[DisplayMultiplexer.scala 36:16 48:14]
    node _GEN_5 = mux(_T_3, _sevenSegdec_io_in_T, _GEN_3) @[DisplayMultiplexer.scala 36:16 49:25]
    node _GEN_6 = mux(_T_2, UInt<4>("hb"), _GEN_4) @[DisplayMultiplexer.scala 36:16 43:14]
    node _GEN_7 = mux(_T_2, io_price, _GEN_5) @[DisplayMultiplexer.scala 36:16 44:25]
    node sevSeg1 = sevenSegdec.io_out @[DisplayMultiplexer.scala 15:28 21:11]
    node _GEN_8 = mux(_T_2, sevSeg1, UInt<7>("h7f")) @[DisplayMultiplexer.scala 36:16 45:14 14:27]
    node _GEN_9 = mux(_T_1, UInt<3>("h7"), _GEN_6) @[DisplayMultiplexer.scala 36:16 38:14]
    node _GEN_10 = mux(_T_1, io_price, _GEN_7) @[DisplayMultiplexer.scala 36:16 39:25]
    node sevSeg2 = sevenSegdec.io_out2 @[DisplayMultiplexer.scala 16:28 22:11]
    node _GEN_11 = mux(_T_1, sevSeg2, _GEN_8) @[DisplayMultiplexer.scala 36:16 40:14]
    node sevSeg = sevenSegdec.io_out @[DisplayMultiplexer.scala 14:27 57:10]
    node _io_seg_T = not(sevSeg) @[DisplayMultiplexer.scala 58:13]
    node select = _GEN_9 @[DisplayMultiplexer.scala 17:27]
    io_seg <= _io_seg_T @[DisplayMultiplexer.scala 58:10]
    io_an <= select @[DisplayMultiplexer.scala 59:9]
    sevenSegdec.clock <= clock
    sevenSegdec.reset <= reset
    sevenSegdec.io_in <= bits(_GEN_10, 3, 0)
    tickCounterReg <= mux(reset, UInt<17>("h0"), _GEN_1) @[DisplayMultiplexer.scala 25:{31,31}]
    next <= mux(reset, UInt<2>("h0"), _GEN_0) @[DisplayMultiplexer.scala 27:{21,21}]

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

    inst dispMux of DisplayMultiplexer @[VendingMachine.scala 17:23]
    reg sumReg : UInt<5>, clock with :
      reset => (UInt<1>("h0"), sumReg) @[VendingMachine.scala 19:23]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[VendingMachine.scala 22:28]
    node _T = eq(REG, UInt<1>("h0")) @[VendingMachine.scala 22:20]
    node _T_1 = and(io_coin2, _T) @[VendingMachine.scala 22:17]
    node _sumReg_T = add(sumReg, UInt<2>("h2")) @[VendingMachine.scala 23:22]
    node _sumReg_T_1 = tail(_sumReg_T, 1) @[VendingMachine.scala 23:22]
    node _GEN_0 = mux(_T_1, _sumReg_T_1, sumReg) @[VendingMachine.scala 22:40 23:12 19:23]
    reg REG_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG_1) @[VendingMachine.scala 25:28]
    node _T_2 = eq(REG_1, UInt<1>("h0")) @[VendingMachine.scala 25:20]
    node _T_3 = and(io_coin5, _T_2) @[VendingMachine.scala 25:17]
    node _sumReg_T_2 = add(sumReg, UInt<3>("h5")) @[VendingMachine.scala 26:22]
    node _sumReg_T_3 = tail(_sumReg_T_2, 1) @[VendingMachine.scala 26:22]
    node _GEN_1 = mux(_T_3, _sumReg_T_3, _GEN_0) @[VendingMachine.scala 25:40 26:12]
    node _T_4 = geq(sumReg, io_price) @[VendingMachine.scala 30:25]
    node _T_5 = and(io_buy, _T_4) @[VendingMachine.scala 30:15]
    reg REG_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG_2) @[VendingMachine.scala 33:19]
    node _T_6 = eq(REG_2, UInt<1>("h0")) @[VendingMachine.scala 33:11]
    node _sumReg_T_4 = sub(sumReg, io_price) @[VendingMachine.scala 34:26]
    node _sumReg_T_5 = tail(_sumReg_T_4, 1) @[VendingMachine.scala 34:26]
    node _GEN_2 = mux(_T_6, _sumReg_T_5, _GEN_1) @[VendingMachine.scala 33:29 34:16]
    node _io_alarm_T = lt(sumReg, io_price) @[VendingMachine.scala 39:34]
    node _io_alarm_T_1 = and(io_buy, _io_alarm_T) @[VendingMachine.scala 39:24]
    node _GEN_3 = mux(_T_5, UInt<1>("h1"), UInt<1>("h0")) @[VendingMachine.scala 30:38 31:19 38:19]
    node _GEN_4 = mux(_T_5, UInt<1>("h0"), _io_alarm_T_1) @[VendingMachine.scala 30:38 32:14 39:14]
    node _GEN_5 = mux(_T_5, _GEN_2, _GEN_1) @[VendingMachine.scala 30:38]
    node _dispMux_io_price_T = bits(io_price, 4, 0) @[VendingMachine.scala 42:31]
    node sevSeg = UInt<7>("h7f") @[VendingMachine.scala 20:{27,27}]
    io_releaseCan <= _GEN_3
    io_alarm <= _GEN_4
    io_seg <= dispMux.io_seg @[VendingMachine.scala 52:11]
    io_an <= dispMux.io_an @[VendingMachine.scala 53:10]
    dispMux.clock <= clock
    dispMux.reset <= reset
    dispMux.io_sum <= sumReg @[VendingMachine.scala 43:18]
    dispMux.io_price <= _dispMux_io_price_T @[VendingMachine.scala 42:20]
    sumReg <= mux(reset, UInt<5>("h0"), _GEN_5) @[VendingMachine.scala 19:{23,23}]
    REG <= io_coin2 @[VendingMachine.scala 22:28]
    REG_1 <= io_coin5 @[VendingMachine.scala 25:28]
    REG_2 <= io_buy @[VendingMachine.scala 33:19]
