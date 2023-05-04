module SevenSegDec(
  input  [4:0] io_in,
  output [6:0] io_out,
  output [6:0] io_out2
);
  wire  _T = 5'h0 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_1 = 5'h1 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_2 = 5'h2 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_3 = 5'h3 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_4 = 5'h4 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_5 = 5'h5 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_6 = 5'h6 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_7 = 5'h7 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_8 = 5'h8 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_9 = 5'h9 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_10 = 5'ha == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_11 = 5'hb == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_12 = 5'hc == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_13 = 5'hd == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_14 = 5'he == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_15 = 5'hf == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_16 = 5'h10 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_17 = 5'h11 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_18 = 5'h12 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_19 = 5'h13 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_20 = 5'h14 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_21 = 5'h15 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_22 = 5'h16 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_23 = 5'h17 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_24 = 5'h18 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_25 = 5'h19 == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_26 = 5'h1a == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_27 = 5'h1b == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_28 = 5'h1c == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_29 = 5'h1d == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_30 = 5'h1e == io_in; // @[SevenSegDec.scala 27:17]
  wire  _T_31 = 5'h1f == io_in; // @[SevenSegDec.scala 27:17]
  wire [2:0] _GEN_0 = 5'h1f == io_in ? 3'h6 : 3'h0; // @[SevenSegDec.scala 27:17 11:27 59:29]
  wire [5:0] _GEN_1 = 5'h1e == io_in ? 6'h3f : {{3'd0}, _GEN_0}; // @[SevenSegDec.scala 27:17 58:29]
  wire [6:0] _GEN_2 = 5'h1d == io_in ? 7'h6f : {{1'd0}, _GEN_1}; // @[SevenSegDec.scala 27:17 57:29]
  wire [6:0] _GEN_3 = 5'h1c == io_in ? 7'h7f : _GEN_2; // @[SevenSegDec.scala 27:17 56:29]
  wire [6:0] _GEN_4 = 5'h1b == io_in ? 7'h7 : _GEN_3; // @[SevenSegDec.scala 27:17 55:29]
  wire [6:0] _GEN_5 = 5'h1a == io_in ? 7'h7d : _GEN_4; // @[SevenSegDec.scala 27:17 54:29]
  wire [6:0] _GEN_6 = 5'h19 == io_in ? 7'h6d : _GEN_5; // @[SevenSegDec.scala 27:17 53:29]
  wire [6:0] _GEN_7 = 5'h18 == io_in ? 7'h66 : _GEN_6; // @[SevenSegDec.scala 27:17 52:29]
  wire [6:0] _GEN_8 = 5'h17 == io_in ? 7'h4f : _GEN_7; // @[SevenSegDec.scala 27:17 51:29]
  wire [6:0] _GEN_9 = 5'h16 == io_in ? 7'h5b : _GEN_8; // @[SevenSegDec.scala 27:17 50:29]
  wire [6:0] _GEN_10 = 5'h15 == io_in ? 7'h6 : _GEN_9; // @[SevenSegDec.scala 27:17 49:29]
  wire [6:0] _GEN_11 = 5'h14 == io_in ? 7'h3f : _GEN_10; // @[SevenSegDec.scala 27:17 48:29]
  wire [6:0] _GEN_12 = 5'h13 == io_in ? 7'h6f : _GEN_11; // @[SevenSegDec.scala 27:17 47:29]
  wire [6:0] _GEN_13 = 5'h12 == io_in ? 7'h7f : _GEN_12; // @[SevenSegDec.scala 27:17 46:29]
  wire [6:0] _GEN_14 = 5'h11 == io_in ? 7'h7 : _GEN_13; // @[SevenSegDec.scala 27:17 45:29]
  wire [6:0] _GEN_15 = 5'h10 == io_in ? 7'h7d : _GEN_14; // @[SevenSegDec.scala 27:17 44:29]
  wire [6:0] _GEN_16 = 5'hf == io_in ? 7'h6d : _GEN_15; // @[SevenSegDec.scala 27:17 43:29]
  wire [6:0] _GEN_17 = 5'he == io_in ? 7'h66 : _GEN_16; // @[SevenSegDec.scala 27:17 42:29]
  wire [6:0] _GEN_18 = 5'hd == io_in ? 7'h4f : _GEN_17; // @[SevenSegDec.scala 27:17 41:29]
  wire [6:0] _GEN_19 = 5'hc == io_in ? 7'h5b : _GEN_18; // @[SevenSegDec.scala 27:17 40:29]
  wire [6:0] _GEN_20 = 5'hb == io_in ? 7'h6 : _GEN_19; // @[SevenSegDec.scala 27:17 39:29]
  wire [6:0] _GEN_21 = 5'ha == io_in ? 7'h3f : _GEN_20; // @[SevenSegDec.scala 27:17 38:29]
  wire [6:0] _GEN_22 = 5'h9 == io_in ? 7'h6f : _GEN_21; // @[SevenSegDec.scala 27:17 37:29]
  wire [6:0] _GEN_23 = 5'h8 == io_in ? 7'h7f : _GEN_22; // @[SevenSegDec.scala 27:17 36:29]
  wire [6:0] _GEN_24 = 5'h7 == io_in ? 7'h7 : _GEN_23; // @[SevenSegDec.scala 27:17 35:29]
  wire [6:0] _GEN_25 = 5'h6 == io_in ? 7'h7d : _GEN_24; // @[SevenSegDec.scala 27:17 34:29]
  wire [6:0] _GEN_26 = 5'h5 == io_in ? 7'h6d : _GEN_25; // @[SevenSegDec.scala 27:17 33:29]
  wire [6:0] _GEN_27 = 5'h4 == io_in ? 7'h66 : _GEN_26; // @[SevenSegDec.scala 27:17 32:29]
  wire [6:0] _GEN_28 = 5'h3 == io_in ? 7'h4f : _GEN_27; // @[SevenSegDec.scala 27:17 31:29]
  wire [6:0] _GEN_29 = 5'h2 == io_in ? 7'h5b : _GEN_28; // @[SevenSegDec.scala 27:17 30:29]
  wire [6:0] _GEN_30 = 5'h1 == io_in ? 7'h6 : _GEN_29; // @[SevenSegDec.scala 27:17 29:29]
  wire [6:0] _GEN_32 = _T_31 ? 7'h4f : 7'h0; // @[SevenSegDec.scala 62:17 12:28 94:30]
  wire [6:0] _GEN_33 = _T_30 ? 7'h4f : _GEN_32; // @[SevenSegDec.scala 62:17 93:30]
  wire [6:0] _GEN_34 = _T_29 ? 7'h5b : _GEN_33; // @[SevenSegDec.scala 62:17 92:30]
  wire [6:0] _GEN_35 = _T_28 ? 7'h5b : _GEN_34; // @[SevenSegDec.scala 62:17 91:30]
  wire [6:0] _GEN_36 = _T_27 ? 7'h5b : _GEN_35; // @[SevenSegDec.scala 62:17 90:30]
  wire [6:0] _GEN_37 = _T_26 ? 7'h5b : _GEN_36; // @[SevenSegDec.scala 62:17 89:30]
  wire [6:0] _GEN_38 = _T_25 ? 7'h5b : _GEN_37; // @[SevenSegDec.scala 62:17 88:30]
  wire [6:0] _GEN_39 = _T_24 ? 7'h5b : _GEN_38; // @[SevenSegDec.scala 62:17 87:30]
  wire [6:0] _GEN_40 = _T_23 ? 7'h5b : _GEN_39; // @[SevenSegDec.scala 62:17 86:30]
  wire [6:0] _GEN_41 = _T_22 ? 7'h5b : _GEN_40; // @[SevenSegDec.scala 62:17 85:30]
  wire [6:0] _GEN_42 = _T_21 ? 7'h5b : _GEN_41; // @[SevenSegDec.scala 62:17 84:30]
  wire [6:0] _GEN_43 = _T_20 ? 7'h5b : _GEN_42; // @[SevenSegDec.scala 62:17 83:30]
  wire [6:0] _GEN_44 = _T_19 ? 7'h6 : _GEN_43; // @[SevenSegDec.scala 62:17 82:30]
  wire [6:0] _GEN_45 = _T_18 ? 7'h6 : _GEN_44; // @[SevenSegDec.scala 62:17 81:30]
  wire [6:0] _GEN_46 = _T_17 ? 7'h6 : _GEN_45; // @[SevenSegDec.scala 62:17 80:30]
  wire [6:0] _GEN_47 = _T_16 ? 7'h6 : _GEN_46; // @[SevenSegDec.scala 62:17 79:30]
  wire [6:0] _GEN_48 = _T_15 ? 7'h6 : _GEN_47; // @[SevenSegDec.scala 62:17 78:30]
  wire [6:0] _GEN_49 = _T_14 ? 7'h6 : _GEN_48; // @[SevenSegDec.scala 62:17 77:30]
  wire [6:0] _GEN_50 = _T_13 ? 7'h6 : _GEN_49; // @[SevenSegDec.scala 62:17 76:30]
  wire [6:0] _GEN_51 = _T_12 ? 7'h6 : _GEN_50; // @[SevenSegDec.scala 62:17 75:30]
  wire [6:0] _GEN_52 = _T_11 ? 7'h6 : _GEN_51; // @[SevenSegDec.scala 62:17 74:30]
  wire [6:0] _GEN_53 = _T_10 ? 7'h6 : _GEN_52; // @[SevenSegDec.scala 62:17 73:30]
  wire [6:0] _GEN_54 = _T_9 ? 7'h3f : _GEN_53; // @[SevenSegDec.scala 62:17 72:30]
  wire [6:0] _GEN_55 = _T_8 ? 7'h3f : _GEN_54; // @[SevenSegDec.scala 62:17 71:30]
  wire [6:0] _GEN_56 = _T_7 ? 7'h3f : _GEN_55; // @[SevenSegDec.scala 62:17 70:30]
  wire [6:0] _GEN_57 = _T_6 ? 7'h3f : _GEN_56; // @[SevenSegDec.scala 62:17 69:30]
  wire [6:0] _GEN_58 = _T_5 ? 7'h3f : _GEN_57; // @[SevenSegDec.scala 62:17 68:30]
  wire [6:0] _GEN_59 = _T_4 ? 7'h3f : _GEN_58; // @[SevenSegDec.scala 62:17 67:30]
  wire [6:0] _GEN_60 = _T_3 ? 7'h3f : _GEN_59; // @[SevenSegDec.scala 62:17 66:30]
  wire [6:0] _GEN_61 = _T_2 ? 7'h3f : _GEN_60; // @[SevenSegDec.scala 62:17 65:30]
  wire [6:0] _GEN_62 = _T_1 ? 7'h3f : _GEN_61; // @[SevenSegDec.scala 62:17 64:30]
  assign io_out = 5'h0 == io_in ? 7'h3f : _GEN_30; // @[SevenSegDec.scala 27:17 28:29]
  assign io_out2 = _T ? 7'h3f : _GEN_62; // @[SevenSegDec.scala 62:17 63:30]
endmodule
module DisplayMultiplexer(
  input        clock,
  input        reset,
  input  [4:0] io_sum,
  input  [4:0] io_price,
  output [6:0] io_seg,
  output [3:0] io_an
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [4:0] sevenSegdec_io_in; // @[DisplayMultiplexer.scala 12:27]
  wire [6:0] sevenSegdec_io_out; // @[DisplayMultiplexer.scala 12:27]
  wire [6:0] sevenSegdec_io_out2; // @[DisplayMultiplexer.scala 12:27]
  reg [16:0] tickCounterReg; // @[DisplayMultiplexer.scala 25:31]
  reg [1:0] next; // @[DisplayMultiplexer.scala 27:21]
  wire [16:0] _tickCounterReg_T_1 = tickCounterReg + 17'h1; // @[DisplayMultiplexer.scala 30:36]
  wire [1:0] _next_T_1 = next + 2'h1; // @[DisplayMultiplexer.scala 32:18]
  wire [3:0] _GEN_2 = 2'h3 == next ? 4'he : 4'h1; // @[DisplayMultiplexer.scala 38:16 55:14 17:27]
  wire [4:0] _GEN_3 = 2'h3 == next ? io_price : 5'h0; // @[DisplayMultiplexer.scala 38:16 20:21 56:25]
  wire [6:0] sevSeg1 = sevenSegdec_io_out; // @[DisplayMultiplexer.scala 15:28 21:11]
  wire [6:0] _GEN_4 = 2'h3 == next ? sevSeg1 : 7'h7f; // @[DisplayMultiplexer.scala 38:16 57:14 14:27]
  wire [3:0] _GEN_5 = 2'h2 == next ? 4'hd : _GEN_2; // @[DisplayMultiplexer.scala 38:16 50:14]
  wire [4:0] _GEN_6 = 2'h2 == next ? io_price : _GEN_3; // @[DisplayMultiplexer.scala 38:16 51:25]
  wire [6:0] sevSeg2 = sevenSegdec_io_out2; // @[DisplayMultiplexer.scala 16:28 22:11]
  wire [6:0] _GEN_7 = 2'h2 == next ? sevSeg2 : _GEN_4; // @[DisplayMultiplexer.scala 38:16 52:14]
  wire [3:0] _GEN_8 = 2'h1 == next ? 4'hb : _GEN_5; // @[DisplayMultiplexer.scala 38:16 45:14]
  wire [4:0] _GEN_9 = 2'h1 == next ? io_sum : _GEN_6; // @[DisplayMultiplexer.scala 38:16 46:25]
  wire [6:0] _GEN_10 = 2'h1 == next ? sevSeg1 : _GEN_7; // @[DisplayMultiplexer.scala 38:16 47:14]
  wire [6:0] sevSeg = 2'h0 == next ? sevSeg2 : _GEN_10; // @[DisplayMultiplexer.scala 38:16 42:14]
  SevenSegDec sevenSegdec ( // @[DisplayMultiplexer.scala 12:27]
    .io_in(sevenSegdec_io_in),
    .io_out(sevenSegdec_io_out),
    .io_out2(sevenSegdec_io_out2)
  );
  assign io_seg = ~sevSeg; // @[DisplayMultiplexer.scala 63:13]
  assign io_an = 2'h0 == next ? 4'h7 : _GEN_8; // @[DisplayMultiplexer.scala 38:16 40:14]
  assign sevenSegdec_io_in = 2'h0 == next ? io_sum : _GEN_9; // @[DisplayMultiplexer.scala 38:16 41:25]
  always @(posedge clock) begin
    if (reset) begin // @[DisplayMultiplexer.scala 25:31]
      tickCounterReg <= 17'h0; // @[DisplayMultiplexer.scala 25:31]
    end else if (tickCounterReg == 17'h1869f) begin // @[DisplayMultiplexer.scala 31:34]
      tickCounterReg <= 17'h0; // @[DisplayMultiplexer.scala 33:20]
    end else begin
      tickCounterReg <= _tickCounterReg_T_1; // @[DisplayMultiplexer.scala 30:18]
    end
    if (reset) begin // @[DisplayMultiplexer.scala 27:21]
      next <= 2'h0; // @[DisplayMultiplexer.scala 27:21]
    end else if (tickCounterReg == 17'h1869f) begin // @[DisplayMultiplexer.scala 31:34]
      next <= _next_T_1; // @[DisplayMultiplexer.scala 32:10]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  tickCounterReg = _RAND_0[16:0];
  _RAND_1 = {1{`RANDOM}};
  next = _RAND_1[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module VendingMachine(
  input        clock,
  input        reset,
  input  [4:0] io_price,
  input        io_coin2,
  input        io_coin5,
  input        io_buy,
  output       io_releaseCan,
  output       io_alarm,
  output [6:0] io_seg,
  output [3:0] io_an
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire  dispMux_clock; // @[VendingMachine.scala 17:23]
  wire  dispMux_reset; // @[VendingMachine.scala 17:23]
  wire [4:0] dispMux_io_sum; // @[VendingMachine.scala 17:23]
  wire [4:0] dispMux_io_price; // @[VendingMachine.scala 17:23]
  wire [6:0] dispMux_io_seg; // @[VendingMachine.scala 17:23]
  wire [3:0] dispMux_io_an; // @[VendingMachine.scala 17:23]
  reg [4:0] sumReg; // @[VendingMachine.scala 19:23]
  reg  REG; // @[VendingMachine.scala 23:28]
  wire [4:0] _sumReg_T_1 = sumReg + 5'h2; // @[VendingMachine.scala 24:22]
  wire [4:0] _GEN_0 = io_coin2 & ~REG ? _sumReg_T_1 : sumReg; // @[VendingMachine.scala 23:40 24:12 19:23]
  reg  REG_1; // @[VendingMachine.scala 26:28]
  wire [4:0] _sumReg_T_3 = sumReg + 5'h5; // @[VendingMachine.scala 27:22]
  wire [4:0] _GEN_1 = io_coin5 & ~REG_1 ? _sumReg_T_3 : _GEN_0; // @[VendingMachine.scala 26:40 27:12]
  reg [16:0] tickCounterReg; // @[VendingMachine.scala 31:31]
  reg  next; // @[VendingMachine.scala 33:21]
  reg [1:0] state; // @[VendingMachine.scala 53:22]
  wire [1:0] _GEN_2 = ~io_buy ? 2'h0 : state; // @[VendingMachine.scala 55:16 56:11 53:22]
  reg  REG_2; // @[VendingMachine.scala 61:30]
  wire [4:0] _sumReg_T_5 = sumReg - io_price; // @[VendingMachine.scala 63:28]
  wire [1:0] _GEN_3 = sumReg < io_price ? 2'h2 : _GEN_2; // @[VendingMachine.scala 65:38 66:17]
  wire  LED = ~next; // @[VendingMachine.scala 103:16]
  wire  _GEN_8 = 2'h2 == state & LED; // @[VendingMachine.scala 41:12 59:16 78:16]
  wire  _GEN_10 = 2'h1 == state ? 1'h0 : _GEN_8; // @[VendingMachine.scala 41:12 59:16]
  wire [16:0] _tickCounterReg_T_1 = tickCounterReg + 17'h1; // @[VendingMachine.scala 97:36]
  DisplayMultiplexer dispMux ( // @[VendingMachine.scala 17:23]
    .clock(dispMux_clock),
    .reset(dispMux_reset),
    .io_sum(dispMux_io_sum),
    .io_price(dispMux_io_price),
    .io_seg(dispMux_io_seg),
    .io_an(dispMux_io_an)
  );
  assign io_releaseCan = 2'h0 == state ? 1'h0 : 2'h1 == state; // @[VendingMachine.scala 59:16 69:21]
  assign io_alarm = 2'h0 == state ? 1'h0 : _GEN_10; // @[VendingMachine.scala 59:16 70:16]
  assign io_seg = dispMux_io_seg; // @[VendingMachine.scala 120:11]
  assign io_an = dispMux_io_an; // @[VendingMachine.scala 121:10]
  assign dispMux_clock = clock;
  assign dispMux_reset = reset;
  assign dispMux_io_sum = sumReg; // @[VendingMachine.scala 118:18]
  assign dispMux_io_price = io_price; // @[VendingMachine.scala 117:31]
  always @(posedge clock) begin
    if (reset) begin // @[VendingMachine.scala 19:23]
      sumReg <= 5'h0; // @[VendingMachine.scala 19:23]
    end else if (2'h0 == state) begin // @[VendingMachine.scala 59:16]
      if (io_buy & ~REG_2) begin // @[VendingMachine.scala 61:39]
        if (sumReg >= io_price) begin // @[VendingMachine.scala 62:33]
          sumReg <= _sumReg_T_5; // @[VendingMachine.scala 63:18]
        end else begin
          sumReg <= _GEN_1;
        end
      end else begin
        sumReg <= _GEN_1;
      end
    end else begin
      sumReg <= _GEN_1;
    end
    REG <= io_coin2; // @[VendingMachine.scala 23:28]
    REG_1 <= io_coin5; // @[VendingMachine.scala 26:28]
    if (reset) begin // @[VendingMachine.scala 31:31]
      tickCounterReg <= 17'h0; // @[VendingMachine.scala 31:31]
    end else if (tickCounterReg == 17'h1869f) begin // @[VendingMachine.scala 98:33]
      tickCounterReg <= 17'h0; // @[VendingMachine.scala 100:20]
    end else begin
      tickCounterReg <= _tickCounterReg_T_1; // @[VendingMachine.scala 97:18]
    end
    if (reset) begin // @[VendingMachine.scala 33:21]
      next <= 1'h0; // @[VendingMachine.scala 33:21]
    end else if (tickCounterReg == 17'h1869f) begin // @[VendingMachine.scala 98:33]
      next <= next + 1'h1; // @[VendingMachine.scala 99:10]
    end
    if (reset) begin // @[VendingMachine.scala 53:22]
      state <= 2'h0; // @[VendingMachine.scala 53:22]
    end else if (2'h0 == state) begin // @[VendingMachine.scala 59:16]
      if (io_buy & ~REG_2) begin // @[VendingMachine.scala 61:39]
        if (sumReg >= io_price) begin // @[VendingMachine.scala 62:33]
          state <= 2'h1; // @[VendingMachine.scala 64:17]
        end else begin
          state <= _GEN_3;
        end
      end else begin
        state <= _GEN_2;
      end
    end else begin
      state <= _GEN_2;
    end
    REG_2 <= io_buy; // @[VendingMachine.scala 61:30]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  sumReg = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  REG = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  REG_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  tickCounterReg = _RAND_3[16:0];
  _RAND_4 = {1{`RANDOM}};
  next = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  state = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  REG_2 = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
