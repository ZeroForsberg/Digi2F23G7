circuit VendingMachine :
  module SevenSegDec :
    input clock : Clock
    input reset : Reset
    output io : { flip in : UInt<5>, out : UInt<7>, out2 : UInt<7>}

    wire sevSeg : UInt @[SevenSegDec.scala 11:27]
    sevSeg <= UInt<1>("h0") @[SevenSegDec.scala 11:27]
    wire sevSeg2 : UInt @[SevenSegDec.scala 12:28]
    sevSeg2 <= UInt<1>("h0") @[SevenSegDec.scala 12:28]
    node _T = eq(UInt<1>("h0"), io.in) @[SevenSegDec.scala 27:17]
    when _T : @[SevenSegDec.scala 27:17]
      sevSeg <= UInt<6>("h3f") @[SevenSegDec.scala 28:29]
    else :
      node _T_1 = eq(UInt<1>("h1"), io.in) @[SevenSegDec.scala 27:17]
      when _T_1 : @[SevenSegDec.scala 27:17]
        sevSeg <= UInt<3>("h6") @[SevenSegDec.scala 29:29]
      else :
        node _T_2 = eq(UInt<2>("h2"), io.in) @[SevenSegDec.scala 27:17]
        when _T_2 : @[SevenSegDec.scala 27:17]
          sevSeg <= UInt<7>("h5b") @[SevenSegDec.scala 30:29]
        else :
          node _T_3 = eq(UInt<2>("h3"), io.in) @[SevenSegDec.scala 27:17]
          when _T_3 : @[SevenSegDec.scala 27:17]
            sevSeg <= UInt<7>("h4f") @[SevenSegDec.scala 31:29]
          else :
            node _T_4 = eq(UInt<3>("h4"), io.in) @[SevenSegDec.scala 27:17]
            when _T_4 : @[SevenSegDec.scala 27:17]
              sevSeg <= UInt<7>("h66") @[SevenSegDec.scala 32:29]
            else :
              node _T_5 = eq(UInt<3>("h5"), io.in) @[SevenSegDec.scala 27:17]
              when _T_5 : @[SevenSegDec.scala 27:17]
                sevSeg <= UInt<7>("h6d") @[SevenSegDec.scala 33:29]
              else :
                node _T_6 = eq(UInt<3>("h6"), io.in) @[SevenSegDec.scala 27:17]
                when _T_6 : @[SevenSegDec.scala 27:17]
                  sevSeg <= UInt<7>("h7d") @[SevenSegDec.scala 34:29]
                else :
                  node _T_7 = eq(UInt<3>("h7"), io.in) @[SevenSegDec.scala 27:17]
                  when _T_7 : @[SevenSegDec.scala 27:17]
                    sevSeg <= UInt<3>("h7") @[SevenSegDec.scala 35:29]
                  else :
                    node _T_8 = eq(UInt<4>("h8"), io.in) @[SevenSegDec.scala 27:17]
                    when _T_8 : @[SevenSegDec.scala 27:17]
                      sevSeg <= UInt<7>("h7f") @[SevenSegDec.scala 36:29]
                    else :
                      node _T_9 = eq(UInt<4>("h9"), io.in) @[SevenSegDec.scala 27:17]
                      when _T_9 : @[SevenSegDec.scala 27:17]
                        sevSeg <= UInt<7>("h6f") @[SevenSegDec.scala 37:29]
                      else :
                        node _T_10 = eq(UInt<4>("ha"), io.in) @[SevenSegDec.scala 27:17]
                        when _T_10 : @[SevenSegDec.scala 27:17]
                          sevSeg <= UInt<6>("h3f") @[SevenSegDec.scala 38:29]
                        else :
                          node _T_11 = eq(UInt<4>("hb"), io.in) @[SevenSegDec.scala 27:17]
                          when _T_11 : @[SevenSegDec.scala 27:17]
                            sevSeg <= UInt<3>("h6") @[SevenSegDec.scala 39:29]
                          else :
                            node _T_12 = eq(UInt<4>("hc"), io.in) @[SevenSegDec.scala 27:17]
                            when _T_12 : @[SevenSegDec.scala 27:17]
                              sevSeg <= UInt<7>("h5b") @[SevenSegDec.scala 40:29]
                            else :
                              node _T_13 = eq(UInt<4>("hd"), io.in) @[SevenSegDec.scala 27:17]
                              when _T_13 : @[SevenSegDec.scala 27:17]
                                sevSeg <= UInt<7>("h4f") @[SevenSegDec.scala 41:29]
                              else :
                                node _T_14 = eq(UInt<4>("he"), io.in) @[SevenSegDec.scala 27:17]
                                when _T_14 : @[SevenSegDec.scala 27:17]
                                  sevSeg <= UInt<7>("h66") @[SevenSegDec.scala 42:29]
                                else :
                                  node _T_15 = eq(UInt<4>("hf"), io.in) @[SevenSegDec.scala 27:17]
                                  when _T_15 : @[SevenSegDec.scala 27:17]
                                    sevSeg <= UInt<7>("h6d") @[SevenSegDec.scala 43:29]
                                  else :
                                    node _T_16 = eq(UInt<5>("h10"), io.in) @[SevenSegDec.scala 27:17]
                                    when _T_16 : @[SevenSegDec.scala 27:17]
                                      sevSeg <= UInt<7>("h7d") @[SevenSegDec.scala 44:29]
                                    else :
                                      node _T_17 = eq(UInt<5>("h11"), io.in) @[SevenSegDec.scala 27:17]
                                      when _T_17 : @[SevenSegDec.scala 27:17]
                                        sevSeg <= UInt<3>("h7") @[SevenSegDec.scala 45:29]
                                      else :
                                        node _T_18 = eq(UInt<5>("h12"), io.in) @[SevenSegDec.scala 27:17]
                                        when _T_18 : @[SevenSegDec.scala 27:17]
                                          sevSeg <= UInt<7>("h7f") @[SevenSegDec.scala 46:29]
                                        else :
                                          node _T_19 = eq(UInt<5>("h13"), io.in) @[SevenSegDec.scala 27:17]
                                          when _T_19 : @[SevenSegDec.scala 27:17]
                                            sevSeg <= UInt<7>("h6f") @[SevenSegDec.scala 47:29]
                                          else :
                                            node _T_20 = eq(UInt<5>("h14"), io.in) @[SevenSegDec.scala 27:17]
                                            when _T_20 : @[SevenSegDec.scala 27:17]
                                              sevSeg <= UInt<6>("h3f") @[SevenSegDec.scala 48:29]
                                            else :
                                              node _T_21 = eq(UInt<5>("h15"), io.in) @[SevenSegDec.scala 27:17]
                                              when _T_21 : @[SevenSegDec.scala 27:17]
                                                sevSeg <= UInt<3>("h6") @[SevenSegDec.scala 49:29]
                                              else :
                                                node _T_22 = eq(UInt<5>("h16"), io.in) @[SevenSegDec.scala 27:17]
                                                when _T_22 : @[SevenSegDec.scala 27:17]
                                                  sevSeg <= UInt<7>("h5b") @[SevenSegDec.scala 50:29]
                                                else :
                                                  node _T_23 = eq(UInt<5>("h17"), io.in) @[SevenSegDec.scala 27:17]
                                                  when _T_23 : @[SevenSegDec.scala 27:17]
                                                    sevSeg <= UInt<7>("h4f") @[SevenSegDec.scala 51:29]
                                                  else :
                                                    node _T_24 = eq(UInt<5>("h18"), io.in) @[SevenSegDec.scala 27:17]
                                                    when _T_24 : @[SevenSegDec.scala 27:17]
                                                      sevSeg <= UInt<7>("h66") @[SevenSegDec.scala 52:29]
                                                    else :
                                                      node _T_25 = eq(UInt<5>("h19"), io.in) @[SevenSegDec.scala 27:17]
                                                      when _T_25 : @[SevenSegDec.scala 27:17]
                                                        sevSeg <= UInt<7>("h6d") @[SevenSegDec.scala 53:29]
                                                      else :
                                                        node _T_26 = eq(UInt<5>("h1a"), io.in) @[SevenSegDec.scala 27:17]
                                                        when _T_26 : @[SevenSegDec.scala 27:17]
                                                          sevSeg <= UInt<7>("h7d") @[SevenSegDec.scala 54:29]
                                                        else :
                                                          node _T_27 = eq(UInt<5>("h1b"), io.in) @[SevenSegDec.scala 27:17]
                                                          when _T_27 : @[SevenSegDec.scala 27:17]
                                                            sevSeg <= UInt<3>("h7") @[SevenSegDec.scala 55:29]
                                                          else :
                                                            node _T_28 = eq(UInt<5>("h1c"), io.in) @[SevenSegDec.scala 27:17]
                                                            when _T_28 : @[SevenSegDec.scala 27:17]
                                                              sevSeg <= UInt<7>("h7f") @[SevenSegDec.scala 56:29]
                                                            else :
                                                              node _T_29 = eq(UInt<5>("h1d"), io.in) @[SevenSegDec.scala 27:17]
                                                              when _T_29 : @[SevenSegDec.scala 27:17]
                                                                sevSeg <= UInt<7>("h6f") @[SevenSegDec.scala 57:29]
                                                              else :
                                                                node _T_30 = eq(UInt<5>("h1e"), io.in) @[SevenSegDec.scala 27:17]
                                                                when _T_30 : @[SevenSegDec.scala 27:17]
                                                                  sevSeg <= UInt<6>("h3f") @[SevenSegDec.scala 58:29]
                                                                else :
                                                                  node _T_31 = eq(UInt<5>("h1f"), io.in) @[SevenSegDec.scala 27:17]
                                                                  when _T_31 : @[SevenSegDec.scala 27:17]
                                                                    sevSeg <= UInt<3>("h6") @[SevenSegDec.scala 59:29]
    node _T_32 = eq(UInt<1>("h0"), io.in) @[SevenSegDec.scala 62:17]
    when _T_32 : @[SevenSegDec.scala 62:17]
      sevSeg2 <= UInt<6>("h3f") @[SevenSegDec.scala 63:30]
    else :
      node _T_33 = eq(UInt<1>("h1"), io.in) @[SevenSegDec.scala 62:17]
      when _T_33 : @[SevenSegDec.scala 62:17]
        sevSeg2 <= UInt<6>("h3f") @[SevenSegDec.scala 64:30]
      else :
        node _T_34 = eq(UInt<2>("h2"), io.in) @[SevenSegDec.scala 62:17]
        when _T_34 : @[SevenSegDec.scala 62:17]
          sevSeg2 <= UInt<6>("h3f") @[SevenSegDec.scala 65:30]
        else :
          node _T_35 = eq(UInt<2>("h3"), io.in) @[SevenSegDec.scala 62:17]
          when _T_35 : @[SevenSegDec.scala 62:17]
            sevSeg2 <= UInt<6>("h3f") @[SevenSegDec.scala 66:30]
          else :
            node _T_36 = eq(UInt<3>("h4"), io.in) @[SevenSegDec.scala 62:17]
            when _T_36 : @[SevenSegDec.scala 62:17]
              sevSeg2 <= UInt<6>("h3f") @[SevenSegDec.scala 67:30]
            else :
              node _T_37 = eq(UInt<3>("h5"), io.in) @[SevenSegDec.scala 62:17]
              when _T_37 : @[SevenSegDec.scala 62:17]
                sevSeg2 <= UInt<6>("h3f") @[SevenSegDec.scala 68:30]
              else :
                node _T_38 = eq(UInt<3>("h6"), io.in) @[SevenSegDec.scala 62:17]
                when _T_38 : @[SevenSegDec.scala 62:17]
                  sevSeg2 <= UInt<6>("h3f") @[SevenSegDec.scala 69:30]
                else :
                  node _T_39 = eq(UInt<3>("h7"), io.in) @[SevenSegDec.scala 62:17]
                  when _T_39 : @[SevenSegDec.scala 62:17]
                    sevSeg2 <= UInt<6>("h3f") @[SevenSegDec.scala 70:30]
                  else :
                    node _T_40 = eq(UInt<4>("h8"), io.in) @[SevenSegDec.scala 62:17]
                    when _T_40 : @[SevenSegDec.scala 62:17]
                      sevSeg2 <= UInt<6>("h3f") @[SevenSegDec.scala 71:30]
                    else :
                      node _T_41 = eq(UInt<4>("h9"), io.in) @[SevenSegDec.scala 62:17]
                      when _T_41 : @[SevenSegDec.scala 62:17]
                        sevSeg2 <= UInt<6>("h3f") @[SevenSegDec.scala 72:30]
                      else :
                        node _T_42 = eq(UInt<4>("ha"), io.in) @[SevenSegDec.scala 62:17]
                        when _T_42 : @[SevenSegDec.scala 62:17]
                          sevSeg2 <= UInt<3>("h6") @[SevenSegDec.scala 73:30]
                        else :
                          node _T_43 = eq(UInt<4>("hb"), io.in) @[SevenSegDec.scala 62:17]
                          when _T_43 : @[SevenSegDec.scala 62:17]
                            sevSeg2 <= UInt<3>("h6") @[SevenSegDec.scala 74:30]
                          else :
                            node _T_44 = eq(UInt<4>("hc"), io.in) @[SevenSegDec.scala 62:17]
                            when _T_44 : @[SevenSegDec.scala 62:17]
                              sevSeg2 <= UInt<3>("h6") @[SevenSegDec.scala 75:30]
                            else :
                              node _T_45 = eq(UInt<4>("hd"), io.in) @[SevenSegDec.scala 62:17]
                              when _T_45 : @[SevenSegDec.scala 62:17]
                                sevSeg2 <= UInt<3>("h6") @[SevenSegDec.scala 76:30]
                              else :
                                node _T_46 = eq(UInt<4>("he"), io.in) @[SevenSegDec.scala 62:17]
                                when _T_46 : @[SevenSegDec.scala 62:17]
                                  sevSeg2 <= UInt<3>("h6") @[SevenSegDec.scala 77:30]
                                else :
                                  node _T_47 = eq(UInt<4>("hf"), io.in) @[SevenSegDec.scala 62:17]
                                  when _T_47 : @[SevenSegDec.scala 62:17]
                                    sevSeg2 <= UInt<3>("h6") @[SevenSegDec.scala 78:30]
                                  else :
                                    node _T_48 = eq(UInt<5>("h10"), io.in) @[SevenSegDec.scala 62:17]
                                    when _T_48 : @[SevenSegDec.scala 62:17]
                                      sevSeg2 <= UInt<3>("h6") @[SevenSegDec.scala 79:30]
                                    else :
                                      node _T_49 = eq(UInt<5>("h11"), io.in) @[SevenSegDec.scala 62:17]
                                      when _T_49 : @[SevenSegDec.scala 62:17]
                                        sevSeg2 <= UInt<3>("h6") @[SevenSegDec.scala 80:30]
                                      else :
                                        node _T_50 = eq(UInt<5>("h12"), io.in) @[SevenSegDec.scala 62:17]
                                        when _T_50 : @[SevenSegDec.scala 62:17]
                                          sevSeg2 <= UInt<3>("h6") @[SevenSegDec.scala 81:30]
                                        else :
                                          node _T_51 = eq(UInt<5>("h13"), io.in) @[SevenSegDec.scala 62:17]
                                          when _T_51 : @[SevenSegDec.scala 62:17]
                                            sevSeg2 <= UInt<3>("h6") @[SevenSegDec.scala 82:30]
                                          else :
                                            node _T_52 = eq(UInt<5>("h14"), io.in) @[SevenSegDec.scala 62:17]
                                            when _T_52 : @[SevenSegDec.scala 62:17]
                                              sevSeg2 <= UInt<7>("h5b") @[SevenSegDec.scala 83:30]
                                            else :
                                              node _T_53 = eq(UInt<5>("h15"), io.in) @[SevenSegDec.scala 62:17]
                                              when _T_53 : @[SevenSegDec.scala 62:17]
                                                sevSeg2 <= UInt<7>("h5b") @[SevenSegDec.scala 84:30]
                                              else :
                                                node _T_54 = eq(UInt<5>("h16"), io.in) @[SevenSegDec.scala 62:17]
                                                when _T_54 : @[SevenSegDec.scala 62:17]
                                                  sevSeg2 <= UInt<7>("h5b") @[SevenSegDec.scala 85:30]
                                                else :
                                                  node _T_55 = eq(UInt<5>("h17"), io.in) @[SevenSegDec.scala 62:17]
                                                  when _T_55 : @[SevenSegDec.scala 62:17]
                                                    sevSeg2 <= UInt<7>("h5b") @[SevenSegDec.scala 86:30]
                                                  else :
                                                    node _T_56 = eq(UInt<5>("h18"), io.in) @[SevenSegDec.scala 62:17]
                                                    when _T_56 : @[SevenSegDec.scala 62:17]
                                                      sevSeg2 <= UInt<7>("h5b") @[SevenSegDec.scala 87:30]
                                                    else :
                                                      node _T_57 = eq(UInt<5>("h19"), io.in) @[SevenSegDec.scala 62:17]
                                                      when _T_57 : @[SevenSegDec.scala 62:17]
                                                        sevSeg2 <= UInt<7>("h5b") @[SevenSegDec.scala 88:30]
                                                      else :
                                                        node _T_58 = eq(UInt<5>("h1a"), io.in) @[SevenSegDec.scala 62:17]
                                                        when _T_58 : @[SevenSegDec.scala 62:17]
                                                          sevSeg2 <= UInt<7>("h5b") @[SevenSegDec.scala 89:30]
                                                        else :
                                                          node _T_59 = eq(UInt<5>("h1b"), io.in) @[SevenSegDec.scala 62:17]
                                                          when _T_59 : @[SevenSegDec.scala 62:17]
                                                            sevSeg2 <= UInt<7>("h5b") @[SevenSegDec.scala 90:30]
                                                          else :
                                                            node _T_60 = eq(UInt<5>("h1c"), io.in) @[SevenSegDec.scala 62:17]
                                                            when _T_60 : @[SevenSegDec.scala 62:17]
                                                              sevSeg2 <= UInt<7>("h5b") @[SevenSegDec.scala 91:30]
                                                            else :
                                                              node _T_61 = eq(UInt<5>("h1d"), io.in) @[SevenSegDec.scala 62:17]
                                                              when _T_61 : @[SevenSegDec.scala 62:17]
                                                                sevSeg2 <= UInt<7>("h5b") @[SevenSegDec.scala 92:30]
                                                              else :
                                                                node _T_62 = eq(UInt<5>("h1e"), io.in) @[SevenSegDec.scala 62:17]
                                                                when _T_62 : @[SevenSegDec.scala 62:17]
                                                                  sevSeg2 <= UInt<7>("h4f") @[SevenSegDec.scala 93:30]
                                                                else :
                                                                  node _T_63 = eq(UInt<5>("h1f"), io.in) @[SevenSegDec.scala 62:17]
                                                                  when _T_63 : @[SevenSegDec.scala 62:17]
                                                                    sevSeg2 <= UInt<7>("h4f") @[SevenSegDec.scala 94:30]
    io.out <= sevSeg @[SevenSegDec.scala 97:10]
    io.out2 <= sevSeg2 @[SevenSegDec.scala 98:11]

  module DisplayMultiplexer :
    input clock : Clock
    input reset : Reset
    output io : { flip sum : UInt<5>, flip price : UInt<5>, seg : UInt<7>, an : UInt<4>}

    inst sevenSegdec of SevenSegDec @[DisplayMultiplexer.scala 12:27]
    sevenSegdec.clock <= clock
    sevenSegdec.reset <= reset
    wire sevSeg : UInt<7> @[DisplayMultiplexer.scala 14:27]
    sevSeg <= UInt<7>("h7f") @[DisplayMultiplexer.scala 14:27]
    wire sevSeg1 : UInt<7> @[DisplayMultiplexer.scala 15:28]
    sevSeg1 <= UInt<7>("h7f") @[DisplayMultiplexer.scala 15:28]
    wire sevSeg2 : UInt<7> @[DisplayMultiplexer.scala 16:28]
    sevSeg2 <= UInt<7>("h7f") @[DisplayMultiplexer.scala 16:28]
    wire select : UInt<4> @[DisplayMultiplexer.scala 17:27]
    select <= UInt<4>("h1") @[DisplayMultiplexer.scala 17:27]
    sevenSegdec.io.in <= UInt<1>("h0") @[DisplayMultiplexer.scala 20:21]
    sevSeg1 <= sevenSegdec.io.out @[DisplayMultiplexer.scala 21:11]
    sevSeg2 <= sevenSegdec.io.out2 @[DisplayMultiplexer.scala 22:11]
    reg tickCounterReg : UInt<17>, clock with :
      reset => (reset, UInt<17>("h0")) @[DisplayMultiplexer.scala 25:31]
    reg next : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[DisplayMultiplexer.scala 27:21]
    node _tickCounterReg_T = add(tickCounterReg, UInt<1>("h1")) @[DisplayMultiplexer.scala 30:36]
    node _tickCounterReg_T_1 = tail(_tickCounterReg_T, 1) @[DisplayMultiplexer.scala 30:36]
    tickCounterReg <= _tickCounterReg_T_1 @[DisplayMultiplexer.scala 30:18]
    node _T = eq(tickCounterReg, UInt<17>("h1869f")) @[DisplayMultiplexer.scala 31:24]
    when _T : @[DisplayMultiplexer.scala 31:34]
      node _next_T = add(next, UInt<1>("h1")) @[DisplayMultiplexer.scala 32:18]
      node _next_T_1 = tail(_next_T, 1) @[DisplayMultiplexer.scala 32:18]
      next <= _next_T_1 @[DisplayMultiplexer.scala 32:10]
      tickCounterReg <= UInt<1>("h0") @[DisplayMultiplexer.scala 33:20]
    node _T_1 = eq(UInt<1>("h0"), next) @[DisplayMultiplexer.scala 38:16]
    when _T_1 : @[DisplayMultiplexer.scala 38:16]
      select <= UInt<3>("h7") @[DisplayMultiplexer.scala 40:14]
      sevenSegdec.io.in <= io.sum @[DisplayMultiplexer.scala 41:25]
      sevSeg <= sevSeg2 @[DisplayMultiplexer.scala 42:14]
    else :
      node _T_2 = eq(UInt<1>("h1"), next) @[DisplayMultiplexer.scala 38:16]
      when _T_2 : @[DisplayMultiplexer.scala 38:16]
        select <= UInt<4>("hb") @[DisplayMultiplexer.scala 45:14]
        sevenSegdec.io.in <= io.sum @[DisplayMultiplexer.scala 46:25]
        sevSeg <= sevSeg1 @[DisplayMultiplexer.scala 47:14]
      else :
        node _T_3 = eq(UInt<2>("h2"), next) @[DisplayMultiplexer.scala 38:16]
        when _T_3 : @[DisplayMultiplexer.scala 38:16]
          select <= UInt<4>("hd") @[DisplayMultiplexer.scala 50:14]
          sevenSegdec.io.in <= io.price @[DisplayMultiplexer.scala 51:25]
          sevSeg <= sevSeg2 @[DisplayMultiplexer.scala 52:14]
        else :
          node _T_4 = eq(UInt<2>("h3"), next) @[DisplayMultiplexer.scala 38:16]
          when _T_4 : @[DisplayMultiplexer.scala 38:16]
            select <= UInt<4>("he") @[DisplayMultiplexer.scala 55:14]
            sevenSegdec.io.in <= io.price @[DisplayMultiplexer.scala 56:25]
            sevSeg <= sevSeg1 @[DisplayMultiplexer.scala 57:14]
    node _io_seg_T = not(sevSeg) @[DisplayMultiplexer.scala 63:13]
    io.seg <= _io_seg_T @[DisplayMultiplexer.scala 63:10]
    io.an <= select @[DisplayMultiplexer.scala 64:9]

  module VendingMachine :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip price : UInt<5>, flip coin2 : UInt<1>, flip coin5 : UInt<1>, flip buy : UInt<1>, releaseCan : UInt<1>, alarm : UInt<1>, seg : UInt<7>, an : UInt<4>}

    inst dispMux of DisplayMultiplexer @[VendingMachine.scala 17:23]
    dispMux.clock <= clock
    dispMux.reset <= reset
    reg sumReg : UInt<5>, clock with :
      reset => (reset, UInt<5>("h0")) @[VendingMachine.scala 19:23]
    wire sevSeg : UInt<7> @[VendingMachine.scala 20:27]
    sevSeg <= UInt<7>("h7f") @[VendingMachine.scala 20:27]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[VendingMachine.scala 23:28]
    REG <= io.coin2 @[VendingMachine.scala 23:28]
    node _T = eq(REG, UInt<1>("h0")) @[VendingMachine.scala 23:20]
    node _T_1 = and(io.coin2, _T) @[VendingMachine.scala 23:17]
    when _T_1 : @[VendingMachine.scala 23:40]
      node _sumReg_T = add(sumReg, UInt<2>("h2")) @[VendingMachine.scala 24:22]
      node _sumReg_T_1 = tail(_sumReg_T, 1) @[VendingMachine.scala 24:22]
      sumReg <= _sumReg_T_1 @[VendingMachine.scala 24:12]
    reg REG_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG_1) @[VendingMachine.scala 26:28]
    REG_1 <= io.coin5 @[VendingMachine.scala 26:28]
    node _T_2 = eq(REG_1, UInt<1>("h0")) @[VendingMachine.scala 26:20]
    node _T_3 = and(io.coin5, _T_2) @[VendingMachine.scala 26:17]
    when _T_3 : @[VendingMachine.scala 26:40]
      node _sumReg_T_2 = add(sumReg, UInt<3>("h5")) @[VendingMachine.scala 27:22]
      node _sumReg_T_3 = tail(_sumReg_T_2, 1) @[VendingMachine.scala 27:22]
      sumReg <= _sumReg_T_3 @[VendingMachine.scala 27:12]
    reg tickCounterReg : UInt<17>, clock with :
      reset => (reset, UInt<17>("h0")) @[VendingMachine.scala 31:31]
    reg next : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[VendingMachine.scala 33:21]
    reg count : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[VendingMachine.scala 35:22]
    wire LED : UInt<1> @[VendingMachine.scala 36:24]
    LED <= UInt<1>("h0") @[VendingMachine.scala 36:24]
    reg Succ : UInt<1>, clock with :
      reset => (reset, UInt<1>("h1")) @[VendingMachine.scala 38:21]
    io.releaseCan <= UInt<1>("h0") @[VendingMachine.scala 40:17]
    io.alarm <= UInt<1>("h0") @[VendingMachine.scala 41:12]
    reg state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[VendingMachine.scala 53:22]
    node _T_4 = eq(io.buy, UInt<1>("h0")) @[VendingMachine.scala 55:8]
    when _T_4 : @[VendingMachine.scala 55:16]
      state <= UInt<1>("h0") @[VendingMachine.scala 56:11]
    node _T_5 = eq(UInt<1>("h0"), state) @[VendingMachine.scala 59:16]
    when _T_5 : @[VendingMachine.scala 59:16]
      reg REG_2 : UInt<1>, clock with :
        reset => (UInt<1>("h0"), REG_2) @[VendingMachine.scala 61:30]
      REG_2 <= io.buy @[VendingMachine.scala 61:30]
      node _T_6 = eq(REG_2, UInt<1>("h0")) @[VendingMachine.scala 61:22]
      node _T_7 = and(io.buy, _T_6) @[VendingMachine.scala 61:19]
      when _T_7 : @[VendingMachine.scala 61:39]
        node _T_8 = geq(sumReg, io.price) @[VendingMachine.scala 62:21]
        when _T_8 : @[VendingMachine.scala 62:33]
          node _sumReg_T_4 = sub(sumReg, io.price) @[VendingMachine.scala 63:28]
          node _sumReg_T_5 = tail(_sumReg_T_4, 1) @[VendingMachine.scala 63:28]
          sumReg <= _sumReg_T_5 @[VendingMachine.scala 63:18]
          state <= UInt<1>("h1") @[VendingMachine.scala 64:17]
        else :
          node _T_9 = lt(sumReg, io.price) @[VendingMachine.scala 65:27]
          when _T_9 : @[VendingMachine.scala 65:38]
            state <= UInt<2>("h2") @[VendingMachine.scala 66:17]
      io.releaseCan <= UInt<1>("h0") @[VendingMachine.scala 69:21]
      io.alarm <= UInt<1>("h0") @[VendingMachine.scala 70:16]
    else :
      node _T_10 = eq(UInt<1>("h1"), state) @[VendingMachine.scala 59:16]
      when _T_10 : @[VendingMachine.scala 59:16]
        io.releaseCan <= UInt<1>("h1") @[VendingMachine.scala 74:21]
      else :
        node _T_11 = eq(UInt<2>("h2"), state) @[VendingMachine.scala 59:16]
        when _T_11 : @[VendingMachine.scala 59:16]
          io.alarm <= LED @[VendingMachine.scala 78:16]
    node _tickCounterReg_T = add(tickCounterReg, UInt<1>("h1")) @[VendingMachine.scala 97:36]
    node _tickCounterReg_T_1 = tail(_tickCounterReg_T, 1) @[VendingMachine.scala 97:36]
    tickCounterReg <= _tickCounterReg_T_1 @[VendingMachine.scala 97:18]
    node _T_12 = eq(tickCounterReg, UInt<17>("h1869f")) @[VendingMachine.scala 98:23]
    when _T_12 : @[VendingMachine.scala 98:33]
      node _next_T = add(next, UInt<1>("h1")) @[VendingMachine.scala 99:18]
      node _next_T_1 = tail(_next_T, 1) @[VendingMachine.scala 99:18]
      next <= _next_T_1 @[VendingMachine.scala 99:10]
      tickCounterReg <= UInt<1>("h0") @[VendingMachine.scala 100:20]
    node _T_13 = eq(UInt<1>("h0"), next) @[VendingMachine.scala 103:16]
    when _T_13 : @[VendingMachine.scala 103:16]
      LED <= UInt<1>("h1") @[VendingMachine.scala 105:11]
    else :
      node _T_14 = eq(UInt<1>("h1"), next) @[VendingMachine.scala 103:16]
      when _T_14 : @[VendingMachine.scala 103:16]
        LED <= UInt<1>("h0") @[VendingMachine.scala 108:11]
    node _dispMux_io_price_T = bits(io.price, 4, 0) @[VendingMachine.scala 117:31]
    dispMux.io.price <= _dispMux_io_price_T @[VendingMachine.scala 117:20]
    dispMux.io.sum <= sumReg @[VendingMachine.scala 118:18]
    io.seg <= dispMux.io.seg @[VendingMachine.scala 120:11]
    io.an <= dispMux.io.an @[VendingMachine.scala 121:10]

