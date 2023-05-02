module SevenSegDec(
  input  [3:0] io_in,
  output [6:0] io_out
);
  wire [6:0] _GEN_0 = 4'hf == io_in ? 7'h71 : 7'h0; // @[SevenSegDec.scala 13:20 10:27 29:33]
  wire [6:0] _GEN_1 = 4'he == io_in ? 7'h79 : _GEN_0; // @[SevenSegDec.scala 13:20 28:33]
  wire [6:0] _GEN_2 = 4'hd == io_in ? 7'h5e : _GEN_1; // @[SevenSegDec.scala 13:20 27:33]
  wire [6:0] _GEN_3 = 4'hc == io_in ? 7'h39 : _GEN_2; // @[SevenSegDec.scala 13:20 26:33]
  wire [6:0] _GEN_4 = 4'hb == io_in ? 7'h7c : _GEN_3; // @[SevenSegDec.scala 13:20 25:33]
  wire [6:0] _GEN_5 = 4'ha == io_in ? 7'h77 : _GEN_4; // @[SevenSegDec.scala 13:20 24:33]
  wire [6:0] _GEN_6 = 4'h9 == io_in ? 7'h6f : _GEN_5; // @[SevenSegDec.scala 13:20 23:33]
  wire [6:0] _GEN_7 = 4'h8 == io_in ? 7'h7f : _GEN_6; // @[SevenSegDec.scala 13:20 22:33]
  wire [6:0] _GEN_8 = 4'h7 == io_in ? 7'h7 : _GEN_7; // @[SevenSegDec.scala 13:20 21:33]
  wire [6:0] _GEN_9 = 4'h6 == io_in ? 7'h7d : _GEN_8; // @[SevenSegDec.scala 13:20 20:33]
  wire [6:0] _GEN_10 = 4'h5 == io_in ? 7'h6d : _GEN_9; // @[SevenSegDec.scala 13:20 19:33]
  wire [6:0] _GEN_11 = 4'h4 == io_in ? 7'h66 : _GEN_10; // @[SevenSegDec.scala 13:20 18:33]
  wire [6:0] _GEN_12 = 4'h3 == io_in ? 7'h4f : _GEN_11; // @[SevenSegDec.scala 13:20 17:33]
  wire [6:0] _GEN_13 = 4'h2 == io_in ? 7'h5b : _GEN_12; // @[SevenSegDec.scala 13:20 16:33]
  wire [6:0] _GEN_14 = 4'h1 == io_in ? 7'h6 : _GEN_13; // @[SevenSegDec.scala 13:20 15:33]
  assign io_out = 4'h0 == io_in ? 7'h3f : _GEN_14; // @[SevenSegDec.scala 13:20 14:33]
endmodule
module DisplayMultiplexer(
  input        clock,
  input        reset,
  input  [7:0] io_sum,
  input  [7:0] io_price,
  output [6:0] io_seg,
  output [3:0] io_an
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [3:0] sevenSegDec_io_in; // @[DisplayMultiplexer.scala 12:27]
  wire [6:0] sevenSegDec_io_out; // @[DisplayMultiplexer.scala 12:27]
  reg [16:0] tickCounterReg; // @[DisplayMultiplexer.scala 15:31]
  reg [1:0] next; // @[DisplayMultiplexer.scala 17:21]
  wire [16:0] _tickCounterReg_T_1 = tickCounterReg + 17'h1; // @[DisplayMultiplexer.scala 21:36]
  wire [1:0] _next_T_1 = next + 2'h1; // @[DisplayMultiplexer.scala 23:18]
  wire [3:0] _GEN_3 = 2'h3 == next ? io_price[3:0] : 4'h0; // @[DisplayMultiplexer.scala 27:16 13:21 45:25]
  wire [3:0] _GEN_4 = 2'h2 == next ? 4'h2 : 4'h1; // @[DisplayMultiplexer.scala 27:16 39:14]
  wire [3:0] _GEN_5 = 2'h2 == next ? io_price[7:4] : _GEN_3; // @[DisplayMultiplexer.scala 27:16 40:25]
  wire [3:0] _GEN_6 = 2'h1 == next ? 4'h4 : _GEN_4; // @[DisplayMultiplexer.scala 27:16 34:14]
  wire [3:0] _GEN_7 = 2'h1 == next ? io_sum[3:0] : _GEN_5; // @[DisplayMultiplexer.scala 27:16 35:25]
  wire [3:0] select = 2'h0 == next ? 4'h8 : _GEN_6; // @[DisplayMultiplexer.scala 27:16 29:14]
  wire [6:0] sevSeg = sevenSegDec_io_out; // @[DisplayMultiplexer.scala 14:27 49:10]
  SevenSegDec sevenSegDec ( // @[DisplayMultiplexer.scala 12:27]
    .io_in(sevenSegDec_io_in),
    .io_out(sevenSegDec_io_out)
  );
  assign io_seg = ~sevSeg; // @[DisplayMultiplexer.scala 50:13]
  assign io_an = ~select; // @[DisplayMultiplexer.scala 51:12]
  assign sevenSegDec_io_in = 2'h0 == next ? io_sum[7:4] : _GEN_7; // @[DisplayMultiplexer.scala 27:16 30:25]
  always @(posedge clock) begin
    if (reset) begin // @[DisplayMultiplexer.scala 15:31]
      tickCounterReg <= 17'h0; // @[DisplayMultiplexer.scala 15:31]
    end else if (tickCounterReg == 17'h1869f) begin // @[DisplayMultiplexer.scala 22:34]
      tickCounterReg <= 17'h0; // @[DisplayMultiplexer.scala 24:20]
    end else begin
      tickCounterReg <= _tickCounterReg_T_1; // @[DisplayMultiplexer.scala 21:18]
    end
    if (reset) begin // @[DisplayMultiplexer.scala 17:21]
      next <= 2'h0; // @[DisplayMultiplexer.scala 17:21]
    end else if (tickCounterReg == 17'h1869f) begin // @[DisplayMultiplexer.scala 22:34]
      next <= _next_T_1; // @[DisplayMultiplexer.scala 23:10]
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
module Display(
  input         clock,
  input         reset,
  input  [15:0] io_sw,
  output [6:0]  io_seg,
  output [3:0]  io_an
);
  wire  dispMux_clock; // @[Display.scala 14:23]
  wire  dispMux_reset; // @[Display.scala 14:23]
  wire [7:0] dispMux_io_sum; // @[Display.scala 14:23]
  wire [7:0] dispMux_io_price; // @[Display.scala 14:23]
  wire [6:0] dispMux_io_seg; // @[Display.scala 14:23]
  wire [3:0] dispMux_io_an; // @[Display.scala 14:23]
  DisplayMultiplexer dispMux ( // @[Display.scala 14:23]
    .clock(dispMux_clock),
    .reset(dispMux_reset),
    .io_sum(dispMux_io_sum),
    .io_price(dispMux_io_price),
    .io_seg(dispMux_io_seg),
    .io_an(dispMux_io_an)
  );
  assign io_seg = dispMux_io_seg; // @[Display.scala 21:10]
  assign io_an = dispMux_io_an; // @[Display.scala 22:9]
  assign dispMux_clock = clock;
  assign dispMux_reset = reset;
  assign dispMux_io_sum = io_sw[15:8]; // @[Display.scala 18:26]
  assign dispMux_io_price = io_sw[7:0]; // @[Display.scala 17:28]
endmodule
