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
  output [1:0] io_an
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [4:0] sumReg; // @[VendingMachine.scala 17:23]
  reg  REG; // @[VendingMachine.scala 20:28]
  wire [4:0] _sumReg_T_1 = sumReg + 5'h2; // @[VendingMachine.scala 21:22]
  wire [4:0] _GEN_0 = io_coin2 & ~REG ? _sumReg_T_1 : sumReg; // @[VendingMachine.scala 20:40 21:12 17:23]
  reg  REG_1; // @[VendingMachine.scala 24:28]
  wire [4:0] _sumReg_T_3 = sumReg + 5'h5; // @[VendingMachine.scala 25:22]
  wire [4:0] sumDisplay = io_buy ? 5'h0 : sumReg; // @[VendingMachine.scala 30:16 33:16 29:28]
  wire [4:0] _io_seg_T = ~sumDisplay; // @[VendingMachine.scala 39:13]
  wire [4:0] _sumReg_T_5 = sumReg - io_price; // @[VendingMachine.scala 46:22]
  assign io_releaseCan = io_buy & sumReg >= io_price; // @[VendingMachine.scala 43:15]
  assign io_alarm = io_buy & sumReg >= io_price ? 1'h0 : io_buy & sumReg < io_price; // @[VendingMachine.scala 43:38 45:14 49:14]
  assign io_seg = {{2'd0}, _io_seg_T}; // @[VendingMachine.scala 39:10]
  assign io_an = 2'h3; // @[VendingMachine.scala 40:9]
  always @(posedge clock) begin
    if (reset) begin // @[VendingMachine.scala 17:23]
      sumReg <= 5'h1; // @[VendingMachine.scala 17:23]
    end else if (io_buy & sumReg >= io_price) begin // @[VendingMachine.scala 43:38]
      sumReg <= _sumReg_T_5; // @[VendingMachine.scala 46:12]
    end else if (io_buy) begin // @[VendingMachine.scala 30:16]
      sumReg <= 5'h0; // @[VendingMachine.scala 32:12]
    end else if (io_coin5 & ~REG_1) begin // @[VendingMachine.scala 24:40]
      sumReg <= _sumReg_T_3; // @[VendingMachine.scala 25:12]
    end else begin
      sumReg <= _GEN_0;
    end
    REG <= io_coin2; // @[VendingMachine.scala 20:28]
    REG_1 <= io_coin5; // @[VendingMachine.scala 24:28]
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
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
