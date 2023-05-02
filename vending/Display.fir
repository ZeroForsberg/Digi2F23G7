circuit Display :
  module SevenSegDec :
    input clock : Clock
    input reset : Reset
    output io : { flip in : UInt<4>, out : UInt<7>}

    wire sevSeg : UInt @[SevenSegDec.scala 10:27]
    sevSeg <= UInt<1>("h0") @[SevenSegDec.scala 10:27]
    node _T = eq(UInt<1>("h0"), io.in) @[SevenSegDec.scala 13:20]
    when _T : @[SevenSegDec.scala 13:20]
      sevSeg <= UInt<6>("h3f") @[SevenSegDec.scala 14:33]
    else :
      node _T_1 = eq(UInt<1>("h1"), io.in) @[SevenSegDec.scala 13:20]
      when _T_1 : @[SevenSegDec.scala 13:20]
        sevSeg <= UInt<3>("h6") @[SevenSegDec.scala 15:33]
      else :
        node _T_2 = eq(UInt<2>("h2"), io.in) @[SevenSegDec.scala 13:20]
        when _T_2 : @[SevenSegDec.scala 13:20]
          sevSeg <= UInt<7>("h5b") @[SevenSegDec.scala 16:33]
        else :
          node _T_3 = eq(UInt<2>("h3"), io.in) @[SevenSegDec.scala 13:20]
          when _T_3 : @[SevenSegDec.scala 13:20]
            sevSeg <= UInt<7>("h4f") @[SevenSegDec.scala 17:33]
          else :
            node _T_4 = eq(UInt<3>("h4"), io.in) @[SevenSegDec.scala 13:20]
            when _T_4 : @[SevenSegDec.scala 13:20]
              sevSeg <= UInt<7>("h66") @[SevenSegDec.scala 18:33]
            else :
              node _T_5 = eq(UInt<3>("h5"), io.in) @[SevenSegDec.scala 13:20]
              when _T_5 : @[SevenSegDec.scala 13:20]
                sevSeg <= UInt<7>("h6d") @[SevenSegDec.scala 19:33]
              else :
                node _T_6 = eq(UInt<3>("h6"), io.in) @[SevenSegDec.scala 13:20]
                when _T_6 : @[SevenSegDec.scala 13:20]
                  sevSeg <= UInt<7>("h7d") @[SevenSegDec.scala 20:33]
                else :
                  node _T_7 = eq(UInt<3>("h7"), io.in) @[SevenSegDec.scala 13:20]
                  when _T_7 : @[SevenSegDec.scala 13:20]
                    sevSeg <= UInt<3>("h7") @[SevenSegDec.scala 21:33]
                  else :
                    node _T_8 = eq(UInt<4>("h8"), io.in) @[SevenSegDec.scala 13:20]
                    when _T_8 : @[SevenSegDec.scala 13:20]
                      sevSeg <= UInt<7>("h7f") @[SevenSegDec.scala 22:33]
                    else :
                      node _T_9 = eq(UInt<4>("h9"), io.in) @[SevenSegDec.scala 13:20]
                      when _T_9 : @[SevenSegDec.scala 13:20]
                        sevSeg <= UInt<7>("h6f") @[SevenSegDec.scala 23:33]
                      else :
                        node _T_10 = eq(UInt<4>("ha"), io.in) @[SevenSegDec.scala 13:20]
                        when _T_10 : @[SevenSegDec.scala 13:20]
                          sevSeg <= UInt<7>("h77") @[SevenSegDec.scala 24:33]
                        else :
                          node _T_11 = eq(UInt<4>("hb"), io.in) @[SevenSegDec.scala 13:20]
                          when _T_11 : @[SevenSegDec.scala 13:20]
                            sevSeg <= UInt<7>("h7c") @[SevenSegDec.scala 25:33]
                          else :
                            node _T_12 = eq(UInt<4>("hc"), io.in) @[SevenSegDec.scala 13:20]
                            when _T_12 : @[SevenSegDec.scala 13:20]
                              sevSeg <= UInt<6>("h39") @[SevenSegDec.scala 26:33]
                            else :
                              node _T_13 = eq(UInt<4>("hd"), io.in) @[SevenSegDec.scala 13:20]
                              when _T_13 : @[SevenSegDec.scala 13:20]
                                sevSeg <= UInt<7>("h5e") @[SevenSegDec.scala 27:33]
                              else :
                                node _T_14 = eq(UInt<4>("he"), io.in) @[SevenSegDec.scala 13:20]
                                when _T_14 : @[SevenSegDec.scala 13:20]
                                  sevSeg <= UInt<7>("h79") @[SevenSegDec.scala 28:33]
                                else :
                                  node _T_15 = eq(UInt<4>("hf"), io.in) @[SevenSegDec.scala 13:20]
                                  when _T_15 : @[SevenSegDec.scala 13:20]
                                    sevSeg <= UInt<7>("h71") @[SevenSegDec.scala 29:33]
    io.out <= sevSeg @[SevenSegDec.scala 33:8]

  module DisplayMultiplexer :
    input clock : Clock
    input reset : Reset
    output io : { flip sum : UInt<8>, flip price : UInt<8>, seg : UInt<7>, an : UInt<4>}

    inst sevenSegDec of SevenSegDec @[DisplayMultiplexer.scala 12:27]
    sevenSegDec.clock <= clock
    sevenSegDec.reset <= reset
    sevenSegDec.io.in <= UInt<1>("h0") @[DisplayMultiplexer.scala 13:21]
    wire sevSeg : UInt<7> @[DisplayMultiplexer.scala 14:27]
    sevSeg <= UInt<7>("h7f") @[DisplayMultiplexer.scala 14:27]
    reg tickCounterReg : UInt<17>, clock with :
      reset => (reset, UInt<17>("h0")) @[DisplayMultiplexer.scala 15:31]
    reg next : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[DisplayMultiplexer.scala 17:21]
    wire select : UInt<4> @[DisplayMultiplexer.scala 18:27]
    select <= UInt<4>("h1") @[DisplayMultiplexer.scala 18:27]
    node _tickCounterReg_T = add(tickCounterReg, UInt<1>("h1")) @[DisplayMultiplexer.scala 21:36]
    node _tickCounterReg_T_1 = tail(_tickCounterReg_T, 1) @[DisplayMultiplexer.scala 21:36]
    tickCounterReg <= _tickCounterReg_T_1 @[DisplayMultiplexer.scala 21:18]
    node _T = eq(tickCounterReg, UInt<17>("h1869f")) @[DisplayMultiplexer.scala 22:24]
    when _T : @[DisplayMultiplexer.scala 22:34]
      node _next_T = add(next, UInt<1>("h1")) @[DisplayMultiplexer.scala 23:18]
      node _next_T_1 = tail(_next_T, 1) @[DisplayMultiplexer.scala 23:18]
      next <= _next_T_1 @[DisplayMultiplexer.scala 23:10]
      tickCounterReg <= UInt<1>("h0") @[DisplayMultiplexer.scala 24:20]
    node _T_1 = eq(UInt<1>("h0"), next) @[DisplayMultiplexer.scala 27:16]
    when _T_1 : @[DisplayMultiplexer.scala 27:16]
      select <= UInt<4>("h8") @[DisplayMultiplexer.scala 29:14]
      node _sevenSegDec_io_in_T = bits(io.sum, 7, 4) @[DisplayMultiplexer.scala 30:34]
      sevenSegDec.io.in <= _sevenSegDec_io_in_T @[DisplayMultiplexer.scala 30:25]
    else :
      node _T_2 = eq(UInt<1>("h1"), next) @[DisplayMultiplexer.scala 27:16]
      when _T_2 : @[DisplayMultiplexer.scala 27:16]
        select <= UInt<3>("h4") @[DisplayMultiplexer.scala 34:14]
        node _sevenSegDec_io_in_T_1 = bits(io.sum, 3, 0) @[DisplayMultiplexer.scala 35:34]
        sevenSegDec.io.in <= _sevenSegDec_io_in_T_1 @[DisplayMultiplexer.scala 35:25]
      else :
        node _T_3 = eq(UInt<2>("h2"), next) @[DisplayMultiplexer.scala 27:16]
        when _T_3 : @[DisplayMultiplexer.scala 27:16]
          select <= UInt<2>("h2") @[DisplayMultiplexer.scala 39:14]
          node _sevenSegDec_io_in_T_2 = bits(io.price, 7, 4) @[DisplayMultiplexer.scala 40:36]
          sevenSegDec.io.in <= _sevenSegDec_io_in_T_2 @[DisplayMultiplexer.scala 40:25]
        else :
          node _T_4 = eq(UInt<2>("h3"), next) @[DisplayMultiplexer.scala 27:16]
          when _T_4 : @[DisplayMultiplexer.scala 27:16]
            select <= UInt<1>("h1") @[DisplayMultiplexer.scala 44:14]
            node _sevenSegDec_io_in_T_3 = bits(io.price, 3, 0) @[DisplayMultiplexer.scala 45:36]
            sevenSegDec.io.in <= _sevenSegDec_io_in_T_3 @[DisplayMultiplexer.scala 45:25]
    sevSeg <= sevenSegDec.io.out @[DisplayMultiplexer.scala 49:10]
    node _io_seg_T = not(sevSeg) @[DisplayMultiplexer.scala 50:13]
    io.seg <= _io_seg_T @[DisplayMultiplexer.scala 50:10]
    node _io_an_T = not(select) @[DisplayMultiplexer.scala 51:12]
    io.an <= _io_an_T @[DisplayMultiplexer.scala 51:9]

  module Display :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip sw : UInt<16>, seg : UInt<7>, an : UInt<4>}

    inst dispMux of DisplayMultiplexer @[Display.scala 14:23]
    dispMux.clock <= clock
    dispMux.reset <= reset
    node _dispMux_io_price_T = bits(io.sw, 7, 0) @[Display.scala 17:28]
    dispMux.io.price <= _dispMux_io_price_T @[Display.scala 17:20]
    node _dispMux_io_sum_T = bits(io.sw, 15, 8) @[Display.scala 18:26]
    dispMux.io.sum <= _dispMux_io_sum_T @[Display.scala 18:18]
    io.seg <= dispMux.io.seg @[Display.scala 21:10]
    io.an <= dispMux.io.an @[Display.scala 22:9]

