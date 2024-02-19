module LFSR(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h7e1726c : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SNG2(
  input        clock,
  input        reset,
  input  [7:0] io_binNum1,
  input  [7:0] io_binNum2,
  output       io_stoNum1,
  output       io_stoNum2
);
  wire  lfsr_clock; // @[SNG.scala 64:22]
  wire  lfsr_reset; // @[SNG.scala 64:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 64:22]
  LFSR lfsr ( // @[SNG.scala 64:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 69:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 70:30]
  assign lfsr_clock = clock;
  assign lfsr_reset = reset;
endmodule
module SMUL(
  input        clock,
  input        reset,
  input  [7:0] io_input,
  input  [7:0] io_weight,
  output       io_product
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  SNG2_clock; // @[SDOT.scala 18:22]
  wire  SNG2_reset; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum1; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum2; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum1; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum2; // @[SDOT.scala 18:22]
  reg  stoWeight; // @[SDOT.scala 25:28]
  SNG2 SNG2 ( // @[SDOT.scala 18:22]
    .clock(SNG2_clock),
    .reset(SNG2_reset),
    .io_binNum1(SNG2_io_binNum1),
    .io_binNum2(SNG2_io_binNum2),
    .io_stoNum1(SNG2_io_stoNum1),
    .io_stoNum2(SNG2_io_stoNum2)
  );
  assign io_product = SNG2_io_stoNum1 ^ stoWeight; // @[SDOT.scala 27:28]
  assign SNG2_clock = clock;
  assign SNG2_reset = reset;
  assign SNG2_io_binNum1 = io_input; // @[SDOT.scala 21:18]
  assign SNG2_io_binNum2 = io_weight; // @[SDOT.scala 22:18]
  always @(posedge clock) begin
    stoWeight <= SNG2_io_stoNum2; // @[SDOT.scala 25:28]
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
  stoWeight = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_1(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'hfc2e4d8 : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SNG2_1(
  input        clock,
  input        reset,
  input  [7:0] io_binNum1,
  input  [7:0] io_binNum2,
  output       io_stoNum1,
  output       io_stoNum2
);
  wire  lfsr_clock; // @[SNG.scala 64:22]
  wire  lfsr_reset; // @[SNG.scala 64:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 64:22]
  LFSR_1 lfsr ( // @[SNG.scala 64:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 69:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 70:30]
  assign lfsr_clock = clock;
  assign lfsr_reset = reset;
endmodule
module SMUL_1(
  input        clock,
  input        reset,
  input  [7:0] io_input,
  input  [7:0] io_weight,
  output       io_product
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  SNG2_clock; // @[SDOT.scala 18:22]
  wire  SNG2_reset; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum1; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum2; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum1; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum2; // @[SDOT.scala 18:22]
  reg  stoWeight; // @[SDOT.scala 25:28]
  SNG2_1 SNG2 ( // @[SDOT.scala 18:22]
    .clock(SNG2_clock),
    .reset(SNG2_reset),
    .io_binNum1(SNG2_io_binNum1),
    .io_binNum2(SNG2_io_binNum2),
    .io_stoNum1(SNG2_io_stoNum1),
    .io_stoNum2(SNG2_io_stoNum2)
  );
  assign io_product = SNG2_io_stoNum1 ^ stoWeight; // @[SDOT.scala 27:28]
  assign SNG2_clock = clock;
  assign SNG2_reset = reset;
  assign SNG2_io_binNum1 = io_input; // @[SDOT.scala 21:18]
  assign SNG2_io_binNum2 = io_weight; // @[SDOT.scala 22:18]
  always @(posedge clock) begin
    stoWeight <= SNG2_io_stoNum2; // @[SDOT.scala 25:28]
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
  stoWeight = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_2(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h17a45744 : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SNG2_2(
  input        clock,
  input        reset,
  input  [7:0] io_binNum1,
  input  [7:0] io_binNum2,
  output       io_stoNum1,
  output       io_stoNum2
);
  wire  lfsr_clock; // @[SNG.scala 64:22]
  wire  lfsr_reset; // @[SNG.scala 64:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 64:22]
  LFSR_2 lfsr ( // @[SNG.scala 64:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 69:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 70:30]
  assign lfsr_clock = clock;
  assign lfsr_reset = reset;
endmodule
module SMUL_2(
  input        clock,
  input        reset,
  input  [7:0] io_input,
  input  [7:0] io_weight,
  output       io_product
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  SNG2_clock; // @[SDOT.scala 18:22]
  wire  SNG2_reset; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum1; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum2; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum1; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum2; // @[SDOT.scala 18:22]
  reg  stoWeight; // @[SDOT.scala 25:28]
  SNG2_2 SNG2 ( // @[SDOT.scala 18:22]
    .clock(SNG2_clock),
    .reset(SNG2_reset),
    .io_binNum1(SNG2_io_binNum1),
    .io_binNum2(SNG2_io_binNum2),
    .io_stoNum1(SNG2_io_stoNum1),
    .io_stoNum2(SNG2_io_stoNum2)
  );
  assign io_product = SNG2_io_stoNum1 ^ stoWeight; // @[SDOT.scala 27:28]
  assign SNG2_clock = clock;
  assign SNG2_reset = reset;
  assign SNG2_io_binNum1 = io_input; // @[SDOT.scala 21:18]
  assign SNG2_io_binNum2 = io_weight; // @[SDOT.scala 22:18]
  always @(posedge clock) begin
    stoWeight <= SNG2_io_stoNum2; // @[SDOT.scala 25:28]
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
  stoWeight = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_3(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h1f85c9b0 : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SNG2_3(
  input        clock,
  input        reset,
  input  [7:0] io_binNum1,
  input  [7:0] io_binNum2,
  output       io_stoNum1,
  output       io_stoNum2
);
  wire  lfsr_clock; // @[SNG.scala 64:22]
  wire  lfsr_reset; // @[SNG.scala 64:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 64:22]
  LFSR_3 lfsr ( // @[SNG.scala 64:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 69:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 70:30]
  assign lfsr_clock = clock;
  assign lfsr_reset = reset;
endmodule
module SMUL_3(
  input        clock,
  input        reset,
  input  [7:0] io_input,
  input  [7:0] io_weight,
  output       io_product
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  SNG2_clock; // @[SDOT.scala 18:22]
  wire  SNG2_reset; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum1; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum2; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum1; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum2; // @[SDOT.scala 18:22]
  reg  stoWeight; // @[SDOT.scala 25:28]
  SNG2_3 SNG2 ( // @[SDOT.scala 18:22]
    .clock(SNG2_clock),
    .reset(SNG2_reset),
    .io_binNum1(SNG2_io_binNum1),
    .io_binNum2(SNG2_io_binNum2),
    .io_stoNum1(SNG2_io_stoNum1),
    .io_stoNum2(SNG2_io_stoNum2)
  );
  assign io_product = SNG2_io_stoNum1 ^ stoWeight; // @[SDOT.scala 27:28]
  assign SNG2_clock = clock;
  assign SNG2_reset = reset;
  assign SNG2_io_binNum1 = io_input; // @[SDOT.scala 21:18]
  assign SNG2_io_binNum2 = io_weight; // @[SDOT.scala 22:18]
  always @(posedge clock) begin
    stoWeight <= SNG2_io_stoNum2; // @[SDOT.scala 25:28]
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
  stoWeight = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_4(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h27673c1c : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SNG2_4(
  input        clock,
  input        reset,
  input  [7:0] io_binNum1,
  input  [7:0] io_binNum2,
  output       io_stoNum1,
  output       io_stoNum2
);
  wire  lfsr_clock; // @[SNG.scala 64:22]
  wire  lfsr_reset; // @[SNG.scala 64:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 64:22]
  LFSR_4 lfsr ( // @[SNG.scala 64:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 69:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 70:30]
  assign lfsr_clock = clock;
  assign lfsr_reset = reset;
endmodule
module SMUL_4(
  input        clock,
  input        reset,
  input  [7:0] io_input,
  input  [7:0] io_weight,
  output       io_product
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  SNG2_clock; // @[SDOT.scala 18:22]
  wire  SNG2_reset; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum1; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum2; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum1; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum2; // @[SDOT.scala 18:22]
  reg  stoWeight; // @[SDOT.scala 25:28]
  SNG2_4 SNG2 ( // @[SDOT.scala 18:22]
    .clock(SNG2_clock),
    .reset(SNG2_reset),
    .io_binNum1(SNG2_io_binNum1),
    .io_binNum2(SNG2_io_binNum2),
    .io_stoNum1(SNG2_io_stoNum1),
    .io_stoNum2(SNG2_io_stoNum2)
  );
  assign io_product = SNG2_io_stoNum1 ^ stoWeight; // @[SDOT.scala 27:28]
  assign SNG2_clock = clock;
  assign SNG2_reset = reset;
  assign SNG2_io_binNum1 = io_input; // @[SDOT.scala 21:18]
  assign SNG2_io_binNum2 = io_weight; // @[SDOT.scala 22:18]
  always @(posedge clock) begin
    stoWeight <= SNG2_io_stoNum2; // @[SDOT.scala 25:28]
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
  stoWeight = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_5(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h2f48ae88 : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SNG2_5(
  input        clock,
  input        reset,
  input  [7:0] io_binNum1,
  input  [7:0] io_binNum2,
  output       io_stoNum1,
  output       io_stoNum2
);
  wire  lfsr_clock; // @[SNG.scala 64:22]
  wire  lfsr_reset; // @[SNG.scala 64:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 64:22]
  LFSR_5 lfsr ( // @[SNG.scala 64:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 69:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 70:30]
  assign lfsr_clock = clock;
  assign lfsr_reset = reset;
endmodule
module SMUL_5(
  input        clock,
  input        reset,
  input  [7:0] io_input,
  input  [7:0] io_weight,
  output       io_product
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  SNG2_clock; // @[SDOT.scala 18:22]
  wire  SNG2_reset; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum1; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum2; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum1; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum2; // @[SDOT.scala 18:22]
  reg  stoWeight; // @[SDOT.scala 25:28]
  SNG2_5 SNG2 ( // @[SDOT.scala 18:22]
    .clock(SNG2_clock),
    .reset(SNG2_reset),
    .io_binNum1(SNG2_io_binNum1),
    .io_binNum2(SNG2_io_binNum2),
    .io_stoNum1(SNG2_io_stoNum1),
    .io_stoNum2(SNG2_io_stoNum2)
  );
  assign io_product = SNG2_io_stoNum1 ^ stoWeight; // @[SDOT.scala 27:28]
  assign SNG2_clock = clock;
  assign SNG2_reset = reset;
  assign SNG2_io_binNum1 = io_input; // @[SDOT.scala 21:18]
  assign SNG2_io_binNum2 = io_weight; // @[SDOT.scala 22:18]
  always @(posedge clock) begin
    stoWeight <= SNG2_io_stoNum2; // @[SDOT.scala 25:28]
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
  stoWeight = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_6(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h372a20f4 : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SNG2_6(
  input        clock,
  input        reset,
  input  [7:0] io_binNum1,
  input  [7:0] io_binNum2,
  output       io_stoNum1,
  output       io_stoNum2
);
  wire  lfsr_clock; // @[SNG.scala 64:22]
  wire  lfsr_reset; // @[SNG.scala 64:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 64:22]
  LFSR_6 lfsr ( // @[SNG.scala 64:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 69:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 70:30]
  assign lfsr_clock = clock;
  assign lfsr_reset = reset;
endmodule
module SMUL_6(
  input        clock,
  input        reset,
  input  [7:0] io_input,
  input  [7:0] io_weight,
  output       io_product
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  SNG2_clock; // @[SDOT.scala 18:22]
  wire  SNG2_reset; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum1; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum2; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum1; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum2; // @[SDOT.scala 18:22]
  reg  stoWeight; // @[SDOT.scala 25:28]
  SNG2_6 SNG2 ( // @[SDOT.scala 18:22]
    .clock(SNG2_clock),
    .reset(SNG2_reset),
    .io_binNum1(SNG2_io_binNum1),
    .io_binNum2(SNG2_io_binNum2),
    .io_stoNum1(SNG2_io_stoNum1),
    .io_stoNum2(SNG2_io_stoNum2)
  );
  assign io_product = SNG2_io_stoNum1 ^ stoWeight; // @[SDOT.scala 27:28]
  assign SNG2_clock = clock;
  assign SNG2_reset = reset;
  assign SNG2_io_binNum1 = io_input; // @[SDOT.scala 21:18]
  assign SNG2_io_binNum2 = io_weight; // @[SDOT.scala 22:18]
  always @(posedge clock) begin
    stoWeight <= SNG2_io_stoNum2; // @[SDOT.scala 25:28]
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
  stoWeight = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_7(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h3f0b9360 : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SNG2_7(
  input        clock,
  input        reset,
  input  [7:0] io_binNum1,
  input  [7:0] io_binNum2,
  output       io_stoNum1,
  output       io_stoNum2
);
  wire  lfsr_clock; // @[SNG.scala 64:22]
  wire  lfsr_reset; // @[SNG.scala 64:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 64:22]
  LFSR_7 lfsr ( // @[SNG.scala 64:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 69:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 70:30]
  assign lfsr_clock = clock;
  assign lfsr_reset = reset;
endmodule
module SMUL_7(
  input        clock,
  input        reset,
  input  [7:0] io_input,
  input  [7:0] io_weight,
  output       io_product
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  SNG2_clock; // @[SDOT.scala 18:22]
  wire  SNG2_reset; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum1; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum2; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum1; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum2; // @[SDOT.scala 18:22]
  reg  stoWeight; // @[SDOT.scala 25:28]
  SNG2_7 SNG2 ( // @[SDOT.scala 18:22]
    .clock(SNG2_clock),
    .reset(SNG2_reset),
    .io_binNum1(SNG2_io_binNum1),
    .io_binNum2(SNG2_io_binNum2),
    .io_stoNum1(SNG2_io_stoNum1),
    .io_stoNum2(SNG2_io_stoNum2)
  );
  assign io_product = SNG2_io_stoNum1 ^ stoWeight; // @[SDOT.scala 27:28]
  assign SNG2_clock = clock;
  assign SNG2_reset = reset;
  assign SNG2_io_binNum1 = io_input; // @[SDOT.scala 21:18]
  assign SNG2_io_binNum2 = io_weight; // @[SDOT.scala 22:18]
  always @(posedge clock) begin
    stoWeight <= SNG2_io_stoNum2; // @[SDOT.scala 25:28]
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
  stoWeight = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_8(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h46ed05cc : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SNG2_8(
  input        clock,
  input        reset,
  input  [7:0] io_binNum1,
  input  [7:0] io_binNum2,
  output       io_stoNum1,
  output       io_stoNum2
);
  wire  lfsr_clock; // @[SNG.scala 64:22]
  wire  lfsr_reset; // @[SNG.scala 64:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 64:22]
  LFSR_8 lfsr ( // @[SNG.scala 64:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 69:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 70:30]
  assign lfsr_clock = clock;
  assign lfsr_reset = reset;
endmodule
module SMUL_8(
  input        clock,
  input        reset,
  input  [7:0] io_input,
  input  [7:0] io_weight,
  output       io_product
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  SNG2_clock; // @[SDOT.scala 18:22]
  wire  SNG2_reset; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum1; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum2; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum1; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum2; // @[SDOT.scala 18:22]
  reg  stoWeight; // @[SDOT.scala 25:28]
  SNG2_8 SNG2 ( // @[SDOT.scala 18:22]
    .clock(SNG2_clock),
    .reset(SNG2_reset),
    .io_binNum1(SNG2_io_binNum1),
    .io_binNum2(SNG2_io_binNum2),
    .io_stoNum1(SNG2_io_stoNum1),
    .io_stoNum2(SNG2_io_stoNum2)
  );
  assign io_product = SNG2_io_stoNum1 ^ stoWeight; // @[SDOT.scala 27:28]
  assign SNG2_clock = clock;
  assign SNG2_reset = reset;
  assign SNG2_io_binNum1 = io_input; // @[SDOT.scala 21:18]
  assign SNG2_io_binNum2 = io_weight; // @[SDOT.scala 22:18]
  always @(posedge clock) begin
    stoWeight <= SNG2_io_stoNum2; // @[SDOT.scala 25:28]
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
  stoWeight = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_9(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h4ece7838 : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SNG2_9(
  input        clock,
  input        reset,
  input  [7:0] io_binNum1,
  input  [7:0] io_binNum2,
  output       io_stoNum1,
  output       io_stoNum2
);
  wire  lfsr_clock; // @[SNG.scala 64:22]
  wire  lfsr_reset; // @[SNG.scala 64:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 64:22]
  LFSR_9 lfsr ( // @[SNG.scala 64:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 69:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 70:30]
  assign lfsr_clock = clock;
  assign lfsr_reset = reset;
endmodule
module SMUL_9(
  input        clock,
  input        reset,
  input  [7:0] io_input,
  input  [7:0] io_weight,
  output       io_product
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  SNG2_clock; // @[SDOT.scala 18:22]
  wire  SNG2_reset; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum1; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum2; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum1; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum2; // @[SDOT.scala 18:22]
  reg  stoWeight; // @[SDOT.scala 25:28]
  SNG2_9 SNG2 ( // @[SDOT.scala 18:22]
    .clock(SNG2_clock),
    .reset(SNG2_reset),
    .io_binNum1(SNG2_io_binNum1),
    .io_binNum2(SNG2_io_binNum2),
    .io_stoNum1(SNG2_io_stoNum1),
    .io_stoNum2(SNG2_io_stoNum2)
  );
  assign io_product = SNG2_io_stoNum1 ^ stoWeight; // @[SDOT.scala 27:28]
  assign SNG2_clock = clock;
  assign SNG2_reset = reset;
  assign SNG2_io_binNum1 = io_input; // @[SDOT.scala 21:18]
  assign SNG2_io_binNum2 = io_weight; // @[SDOT.scala 22:18]
  always @(posedge clock) begin
    stoWeight <= SNG2_io_stoNum2; // @[SDOT.scala 25:28]
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
  stoWeight = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_10(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h56afeaa4 : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SNG2_10(
  input        clock,
  input        reset,
  input  [7:0] io_binNum1,
  input  [7:0] io_binNum2,
  output       io_stoNum1,
  output       io_stoNum2
);
  wire  lfsr_clock; // @[SNG.scala 64:22]
  wire  lfsr_reset; // @[SNG.scala 64:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 64:22]
  LFSR_10 lfsr ( // @[SNG.scala 64:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 69:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 70:30]
  assign lfsr_clock = clock;
  assign lfsr_reset = reset;
endmodule
module SMUL_10(
  input        clock,
  input        reset,
  input  [7:0] io_input,
  input  [7:0] io_weight,
  output       io_product
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  SNG2_clock; // @[SDOT.scala 18:22]
  wire  SNG2_reset; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum1; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum2; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum1; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum2; // @[SDOT.scala 18:22]
  reg  stoWeight; // @[SDOT.scala 25:28]
  SNG2_10 SNG2 ( // @[SDOT.scala 18:22]
    .clock(SNG2_clock),
    .reset(SNG2_reset),
    .io_binNum1(SNG2_io_binNum1),
    .io_binNum2(SNG2_io_binNum2),
    .io_stoNum1(SNG2_io_stoNum1),
    .io_stoNum2(SNG2_io_stoNum2)
  );
  assign io_product = SNG2_io_stoNum1 ^ stoWeight; // @[SDOT.scala 27:28]
  assign SNG2_clock = clock;
  assign SNG2_reset = reset;
  assign SNG2_io_binNum1 = io_input; // @[SDOT.scala 21:18]
  assign SNG2_io_binNum2 = io_weight; // @[SDOT.scala 22:18]
  always @(posedge clock) begin
    stoWeight <= SNG2_io_stoNum2; // @[SDOT.scala 25:28]
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
  stoWeight = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_11(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h5e915d10 : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SNG2_11(
  input        clock,
  input        reset,
  input  [7:0] io_binNum1,
  input  [7:0] io_binNum2,
  output       io_stoNum1,
  output       io_stoNum2
);
  wire  lfsr_clock; // @[SNG.scala 64:22]
  wire  lfsr_reset; // @[SNG.scala 64:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 64:22]
  LFSR_11 lfsr ( // @[SNG.scala 64:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 69:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 70:30]
  assign lfsr_clock = clock;
  assign lfsr_reset = reset;
endmodule
module SMUL_11(
  input        clock,
  input        reset,
  input  [7:0] io_input,
  input  [7:0] io_weight,
  output       io_product
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  SNG2_clock; // @[SDOT.scala 18:22]
  wire  SNG2_reset; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum1; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum2; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum1; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum2; // @[SDOT.scala 18:22]
  reg  stoWeight; // @[SDOT.scala 25:28]
  SNG2_11 SNG2 ( // @[SDOT.scala 18:22]
    .clock(SNG2_clock),
    .reset(SNG2_reset),
    .io_binNum1(SNG2_io_binNum1),
    .io_binNum2(SNG2_io_binNum2),
    .io_stoNum1(SNG2_io_stoNum1),
    .io_stoNum2(SNG2_io_stoNum2)
  );
  assign io_product = SNG2_io_stoNum1 ^ stoWeight; // @[SDOT.scala 27:28]
  assign SNG2_clock = clock;
  assign SNG2_reset = reset;
  assign SNG2_io_binNum1 = io_input; // @[SDOT.scala 21:18]
  assign SNG2_io_binNum2 = io_weight; // @[SDOT.scala 22:18]
  always @(posedge clock) begin
    stoWeight <= SNG2_io_stoNum2; // @[SDOT.scala 25:28]
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
  stoWeight = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_12(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h6672cf7c : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SNG2_12(
  input        clock,
  input        reset,
  input  [7:0] io_binNum1,
  input  [7:0] io_binNum2,
  output       io_stoNum1,
  output       io_stoNum2
);
  wire  lfsr_clock; // @[SNG.scala 64:22]
  wire  lfsr_reset; // @[SNG.scala 64:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 64:22]
  LFSR_12 lfsr ( // @[SNG.scala 64:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 69:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 70:30]
  assign lfsr_clock = clock;
  assign lfsr_reset = reset;
endmodule
module SMUL_12(
  input        clock,
  input        reset,
  input  [7:0] io_input,
  input  [7:0] io_weight,
  output       io_product
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  SNG2_clock; // @[SDOT.scala 18:22]
  wire  SNG2_reset; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum1; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum2; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum1; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum2; // @[SDOT.scala 18:22]
  reg  stoWeight; // @[SDOT.scala 25:28]
  SNG2_12 SNG2 ( // @[SDOT.scala 18:22]
    .clock(SNG2_clock),
    .reset(SNG2_reset),
    .io_binNum1(SNG2_io_binNum1),
    .io_binNum2(SNG2_io_binNum2),
    .io_stoNum1(SNG2_io_stoNum1),
    .io_stoNum2(SNG2_io_stoNum2)
  );
  assign io_product = SNG2_io_stoNum1 ^ stoWeight; // @[SDOT.scala 27:28]
  assign SNG2_clock = clock;
  assign SNG2_reset = reset;
  assign SNG2_io_binNum1 = io_input; // @[SDOT.scala 21:18]
  assign SNG2_io_binNum2 = io_weight; // @[SDOT.scala 22:18]
  always @(posedge clock) begin
    stoWeight <= SNG2_io_stoNum2; // @[SDOT.scala 25:28]
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
  stoWeight = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_13(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h6e5441e8 : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SNG2_13(
  input        clock,
  input        reset,
  input  [7:0] io_binNum1,
  input  [7:0] io_binNum2,
  output       io_stoNum1,
  output       io_stoNum2
);
  wire  lfsr_clock; // @[SNG.scala 64:22]
  wire  lfsr_reset; // @[SNG.scala 64:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 64:22]
  LFSR_13 lfsr ( // @[SNG.scala 64:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 69:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 70:30]
  assign lfsr_clock = clock;
  assign lfsr_reset = reset;
endmodule
module SMUL_13(
  input        clock,
  input        reset,
  input  [7:0] io_input,
  input  [7:0] io_weight,
  output       io_product
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  SNG2_clock; // @[SDOT.scala 18:22]
  wire  SNG2_reset; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum1; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum2; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum1; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum2; // @[SDOT.scala 18:22]
  reg  stoWeight; // @[SDOT.scala 25:28]
  SNG2_13 SNG2 ( // @[SDOT.scala 18:22]
    .clock(SNG2_clock),
    .reset(SNG2_reset),
    .io_binNum1(SNG2_io_binNum1),
    .io_binNum2(SNG2_io_binNum2),
    .io_stoNum1(SNG2_io_stoNum1),
    .io_stoNum2(SNG2_io_stoNum2)
  );
  assign io_product = SNG2_io_stoNum1 ^ stoWeight; // @[SDOT.scala 27:28]
  assign SNG2_clock = clock;
  assign SNG2_reset = reset;
  assign SNG2_io_binNum1 = io_input; // @[SDOT.scala 21:18]
  assign SNG2_io_binNum2 = io_weight; // @[SDOT.scala 22:18]
  always @(posedge clock) begin
    stoWeight <= SNG2_io_stoNum2; // @[SDOT.scala 25:28]
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
  stoWeight = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_14(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h7635b454 : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SNG2_14(
  input        clock,
  input        reset,
  input  [7:0] io_binNum1,
  input  [7:0] io_binNum2,
  output       io_stoNum1,
  output       io_stoNum2
);
  wire  lfsr_clock; // @[SNG.scala 64:22]
  wire  lfsr_reset; // @[SNG.scala 64:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 64:22]
  LFSR_14 lfsr ( // @[SNG.scala 64:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 69:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 70:30]
  assign lfsr_clock = clock;
  assign lfsr_reset = reset;
endmodule
module SMUL_14(
  input        clock,
  input        reset,
  input  [7:0] io_input,
  input  [7:0] io_weight,
  output       io_product
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  SNG2_clock; // @[SDOT.scala 18:22]
  wire  SNG2_reset; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum1; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum2; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum1; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum2; // @[SDOT.scala 18:22]
  reg  stoWeight; // @[SDOT.scala 25:28]
  SNG2_14 SNG2 ( // @[SDOT.scala 18:22]
    .clock(SNG2_clock),
    .reset(SNG2_reset),
    .io_binNum1(SNG2_io_binNum1),
    .io_binNum2(SNG2_io_binNum2),
    .io_stoNum1(SNG2_io_stoNum1),
    .io_stoNum2(SNG2_io_stoNum2)
  );
  assign io_product = SNG2_io_stoNum1 ^ stoWeight; // @[SDOT.scala 27:28]
  assign SNG2_clock = clock;
  assign SNG2_reset = reset;
  assign SNG2_io_binNum1 = io_input; // @[SDOT.scala 21:18]
  assign SNG2_io_binNum2 = io_weight; // @[SDOT.scala 22:18]
  always @(posedge clock) begin
    stoWeight <= SNG2_io_stoNum2; // @[SDOT.scala 25:28]
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
  stoWeight = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_15(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h7e1726c0 : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SNG2_15(
  input        clock,
  input        reset,
  input  [7:0] io_binNum1,
  input  [7:0] io_binNum2,
  output       io_stoNum1,
  output       io_stoNum2
);
  wire  lfsr_clock; // @[SNG.scala 64:22]
  wire  lfsr_reset; // @[SNG.scala 64:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 64:22]
  LFSR_15 lfsr ( // @[SNG.scala 64:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 69:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 70:30]
  assign lfsr_clock = clock;
  assign lfsr_reset = reset;
endmodule
module SMUL_15(
  input        clock,
  input        reset,
  input  [7:0] io_input,
  input  [7:0] io_weight,
  output       io_product
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  SNG2_clock; // @[SDOT.scala 18:22]
  wire  SNG2_reset; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum1; // @[SDOT.scala 18:22]
  wire [7:0] SNG2_io_binNum2; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum1; // @[SDOT.scala 18:22]
  wire  SNG2_io_stoNum2; // @[SDOT.scala 18:22]
  reg  stoWeight; // @[SDOT.scala 25:28]
  SNG2_15 SNG2 ( // @[SDOT.scala 18:22]
    .clock(SNG2_clock),
    .reset(SNG2_reset),
    .io_binNum1(SNG2_io_binNum1),
    .io_binNum2(SNG2_io_binNum2),
    .io_stoNum1(SNG2_io_stoNum1),
    .io_stoNum2(SNG2_io_stoNum2)
  );
  assign io_product = SNG2_io_stoNum1 ^ stoWeight; // @[SDOT.scala 27:28]
  assign SNG2_clock = clock;
  assign SNG2_reset = reset;
  assign SNG2_io_binNum1 = io_input; // @[SDOT.scala 21:18]
  assign SNG2_io_binNum2 = io_weight; // @[SDOT.scala 22:18]
  always @(posedge clock) begin
    stoWeight <= SNG2_io_stoNum2; // @[SDOT.scala 25:28]
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
  stoWeight = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SADD(
  input   clock,
  input   io_input,
  input   io_weight,
  input   io_selnum,
  output  io_sum
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg  rs; // @[SDOT.scala 38:21]
  assign io_sum = rs; // @[SDOT.scala 40:12]
  always @(posedge clock) begin
    if (io_selnum) begin // @[SDOT.scala 38:25]
      rs <= io_input;
    end else begin
      rs <= io_weight;
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
  rs = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_16(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h1ec4950b : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_17(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h3d892a16 : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_18(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h5c4dbf21 : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR_19(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 22:24]
  wire  bit_ = state[31] ^ state[29] ^ state[28] ^ state[26]; // @[SNG.scala 24:49]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 26:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 26:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 26:32]
  wire [32:0] _GEN_1 = reset ? 33'h7b12542c : nextState; // @[SNG.scala 22:{24,24} 28:11]
  assign io_out = state[19:12]; // @[SNG.scala 30:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 22:{24,24} 28:11]
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
  state = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SDOT(
  input        clock,
  input        reset,
  input        io_enable,
  input  [7:0] io_inputs_0,
  input  [7:0] io_inputs_1,
  input  [7:0] io_inputs_2,
  input  [7:0] io_inputs_3,
  input  [7:0] io_inputs_4,
  input  [7:0] io_inputs_5,
  input  [7:0] io_inputs_6,
  input  [7:0] io_inputs_7,
  input  [7:0] io_inputs_8,
  input  [7:0] io_inputs_9,
  input  [7:0] io_inputs_10,
  input  [7:0] io_inputs_11,
  input  [7:0] io_inputs_12,
  input  [7:0] io_inputs_13,
  input  [7:0] io_inputs_14,
  input  [7:0] io_inputs_15,
  input  [7:0] io_weights_0,
  input  [7:0] io_weights_1,
  input  [7:0] io_weights_2,
  input  [7:0] io_weights_3,
  input  [7:0] io_weights_4,
  input  [7:0] io_weights_5,
  input  [7:0] io_weights_6,
  input  [7:0] io_weights_7,
  input  [7:0] io_weights_8,
  input  [7:0] io_weights_9,
  input  [7:0] io_weights_10,
  input  [7:0] io_weights_11,
  input  [7:0] io_weights_12,
  input  [7:0] io_weights_13,
  input  [7:0] io_weights_14,
  input  [7:0] io_weights_15,
  output       io_psum
);
  wire  muls_0_clock; // @[SDOT.scala 61:51]
  wire  muls_0_reset; // @[SDOT.scala 61:51]
  wire [7:0] muls_0_io_input; // @[SDOT.scala 61:51]
  wire [7:0] muls_0_io_weight; // @[SDOT.scala 61:51]
  wire  muls_0_io_product; // @[SDOT.scala 61:51]
  wire  muls_1_clock; // @[SDOT.scala 61:51]
  wire  muls_1_reset; // @[SDOT.scala 61:51]
  wire [7:0] muls_1_io_input; // @[SDOT.scala 61:51]
  wire [7:0] muls_1_io_weight; // @[SDOT.scala 61:51]
  wire  muls_1_io_product; // @[SDOT.scala 61:51]
  wire  muls_2_clock; // @[SDOT.scala 61:51]
  wire  muls_2_reset; // @[SDOT.scala 61:51]
  wire [7:0] muls_2_io_input; // @[SDOT.scala 61:51]
  wire [7:0] muls_2_io_weight; // @[SDOT.scala 61:51]
  wire  muls_2_io_product; // @[SDOT.scala 61:51]
  wire  muls_3_clock; // @[SDOT.scala 61:51]
  wire  muls_3_reset; // @[SDOT.scala 61:51]
  wire [7:0] muls_3_io_input; // @[SDOT.scala 61:51]
  wire [7:0] muls_3_io_weight; // @[SDOT.scala 61:51]
  wire  muls_3_io_product; // @[SDOT.scala 61:51]
  wire  muls_4_clock; // @[SDOT.scala 61:51]
  wire  muls_4_reset; // @[SDOT.scala 61:51]
  wire [7:0] muls_4_io_input; // @[SDOT.scala 61:51]
  wire [7:0] muls_4_io_weight; // @[SDOT.scala 61:51]
  wire  muls_4_io_product; // @[SDOT.scala 61:51]
  wire  muls_5_clock; // @[SDOT.scala 61:51]
  wire  muls_5_reset; // @[SDOT.scala 61:51]
  wire [7:0] muls_5_io_input; // @[SDOT.scala 61:51]
  wire [7:0] muls_5_io_weight; // @[SDOT.scala 61:51]
  wire  muls_5_io_product; // @[SDOT.scala 61:51]
  wire  muls_6_clock; // @[SDOT.scala 61:51]
  wire  muls_6_reset; // @[SDOT.scala 61:51]
  wire [7:0] muls_6_io_input; // @[SDOT.scala 61:51]
  wire [7:0] muls_6_io_weight; // @[SDOT.scala 61:51]
  wire  muls_6_io_product; // @[SDOT.scala 61:51]
  wire  muls_7_clock; // @[SDOT.scala 61:51]
  wire  muls_7_reset; // @[SDOT.scala 61:51]
  wire [7:0] muls_7_io_input; // @[SDOT.scala 61:51]
  wire [7:0] muls_7_io_weight; // @[SDOT.scala 61:51]
  wire  muls_7_io_product; // @[SDOT.scala 61:51]
  wire  muls_8_clock; // @[SDOT.scala 61:51]
  wire  muls_8_reset; // @[SDOT.scala 61:51]
  wire [7:0] muls_8_io_input; // @[SDOT.scala 61:51]
  wire [7:0] muls_8_io_weight; // @[SDOT.scala 61:51]
  wire  muls_8_io_product; // @[SDOT.scala 61:51]
  wire  muls_9_clock; // @[SDOT.scala 61:51]
  wire  muls_9_reset; // @[SDOT.scala 61:51]
  wire [7:0] muls_9_io_input; // @[SDOT.scala 61:51]
  wire [7:0] muls_9_io_weight; // @[SDOT.scala 61:51]
  wire  muls_9_io_product; // @[SDOT.scala 61:51]
  wire  muls_10_clock; // @[SDOT.scala 61:51]
  wire  muls_10_reset; // @[SDOT.scala 61:51]
  wire [7:0] muls_10_io_input; // @[SDOT.scala 61:51]
  wire [7:0] muls_10_io_weight; // @[SDOT.scala 61:51]
  wire  muls_10_io_product; // @[SDOT.scala 61:51]
  wire  muls_11_clock; // @[SDOT.scala 61:51]
  wire  muls_11_reset; // @[SDOT.scala 61:51]
  wire [7:0] muls_11_io_input; // @[SDOT.scala 61:51]
  wire [7:0] muls_11_io_weight; // @[SDOT.scala 61:51]
  wire  muls_11_io_product; // @[SDOT.scala 61:51]
  wire  muls_12_clock; // @[SDOT.scala 61:51]
  wire  muls_12_reset; // @[SDOT.scala 61:51]
  wire [7:0] muls_12_io_input; // @[SDOT.scala 61:51]
  wire [7:0] muls_12_io_weight; // @[SDOT.scala 61:51]
  wire  muls_12_io_product; // @[SDOT.scala 61:51]
  wire  muls_13_clock; // @[SDOT.scala 61:51]
  wire  muls_13_reset; // @[SDOT.scala 61:51]
  wire [7:0] muls_13_io_input; // @[SDOT.scala 61:51]
  wire [7:0] muls_13_io_weight; // @[SDOT.scala 61:51]
  wire  muls_13_io_product; // @[SDOT.scala 61:51]
  wire  muls_14_clock; // @[SDOT.scala 61:51]
  wire  muls_14_reset; // @[SDOT.scala 61:51]
  wire [7:0] muls_14_io_input; // @[SDOT.scala 61:51]
  wire [7:0] muls_14_io_weight; // @[SDOT.scala 61:51]
  wire  muls_14_io_product; // @[SDOT.scala 61:51]
  wire  muls_15_clock; // @[SDOT.scala 61:51]
  wire  muls_15_reset; // @[SDOT.scala 61:51]
  wire [7:0] muls_15_io_input; // @[SDOT.scala 61:51]
  wire [7:0] muls_15_io_weight; // @[SDOT.scala 61:51]
  wire  muls_15_io_product; // @[SDOT.scala 61:51]
  wire  adds_0_0_clock; // @[SDOT.scala 63:42]
  wire  adds_0_0_io_input; // @[SDOT.scala 63:42]
  wire  adds_0_0_io_weight; // @[SDOT.scala 63:42]
  wire  adds_0_0_io_selnum; // @[SDOT.scala 63:42]
  wire  adds_0_0_io_sum; // @[SDOT.scala 63:42]
  wire  adds_0_1_clock; // @[SDOT.scala 63:42]
  wire  adds_0_1_io_input; // @[SDOT.scala 63:42]
  wire  adds_0_1_io_weight; // @[SDOT.scala 63:42]
  wire  adds_0_1_io_selnum; // @[SDOT.scala 63:42]
  wire  adds_0_1_io_sum; // @[SDOT.scala 63:42]
  wire  adds_0_2_clock; // @[SDOT.scala 63:42]
  wire  adds_0_2_io_input; // @[SDOT.scala 63:42]
  wire  adds_0_2_io_weight; // @[SDOT.scala 63:42]
  wire  adds_0_2_io_selnum; // @[SDOT.scala 63:42]
  wire  adds_0_2_io_sum; // @[SDOT.scala 63:42]
  wire  adds_0_3_clock; // @[SDOT.scala 63:42]
  wire  adds_0_3_io_input; // @[SDOT.scala 63:42]
  wire  adds_0_3_io_weight; // @[SDOT.scala 63:42]
  wire  adds_0_3_io_selnum; // @[SDOT.scala 63:42]
  wire  adds_0_3_io_sum; // @[SDOT.scala 63:42]
  wire  adds_0_4_clock; // @[SDOT.scala 63:42]
  wire  adds_0_4_io_input; // @[SDOT.scala 63:42]
  wire  adds_0_4_io_weight; // @[SDOT.scala 63:42]
  wire  adds_0_4_io_selnum; // @[SDOT.scala 63:42]
  wire  adds_0_4_io_sum; // @[SDOT.scala 63:42]
  wire  adds_0_5_clock; // @[SDOT.scala 63:42]
  wire  adds_0_5_io_input; // @[SDOT.scala 63:42]
  wire  adds_0_5_io_weight; // @[SDOT.scala 63:42]
  wire  adds_0_5_io_selnum; // @[SDOT.scala 63:42]
  wire  adds_0_5_io_sum; // @[SDOT.scala 63:42]
  wire  adds_0_6_clock; // @[SDOT.scala 63:42]
  wire  adds_0_6_io_input; // @[SDOT.scala 63:42]
  wire  adds_0_6_io_weight; // @[SDOT.scala 63:42]
  wire  adds_0_6_io_selnum; // @[SDOT.scala 63:42]
  wire  adds_0_6_io_sum; // @[SDOT.scala 63:42]
  wire  adds_0_7_clock; // @[SDOT.scala 63:42]
  wire  adds_0_7_io_input; // @[SDOT.scala 63:42]
  wire  adds_0_7_io_weight; // @[SDOT.scala 63:42]
  wire  adds_0_7_io_selnum; // @[SDOT.scala 63:42]
  wire  adds_0_7_io_sum; // @[SDOT.scala 63:42]
  wire  adds_1_0_clock; // @[SDOT.scala 63:42]
  wire  adds_1_0_io_input; // @[SDOT.scala 63:42]
  wire  adds_1_0_io_weight; // @[SDOT.scala 63:42]
  wire  adds_1_0_io_selnum; // @[SDOT.scala 63:42]
  wire  adds_1_0_io_sum; // @[SDOT.scala 63:42]
  wire  adds_1_1_clock; // @[SDOT.scala 63:42]
  wire  adds_1_1_io_input; // @[SDOT.scala 63:42]
  wire  adds_1_1_io_weight; // @[SDOT.scala 63:42]
  wire  adds_1_1_io_selnum; // @[SDOT.scala 63:42]
  wire  adds_1_1_io_sum; // @[SDOT.scala 63:42]
  wire  adds_1_2_clock; // @[SDOT.scala 63:42]
  wire  adds_1_2_io_input; // @[SDOT.scala 63:42]
  wire  adds_1_2_io_weight; // @[SDOT.scala 63:42]
  wire  adds_1_2_io_selnum; // @[SDOT.scala 63:42]
  wire  adds_1_2_io_sum; // @[SDOT.scala 63:42]
  wire  adds_1_3_clock; // @[SDOT.scala 63:42]
  wire  adds_1_3_io_input; // @[SDOT.scala 63:42]
  wire  adds_1_3_io_weight; // @[SDOT.scala 63:42]
  wire  adds_1_3_io_selnum; // @[SDOT.scala 63:42]
  wire  adds_1_3_io_sum; // @[SDOT.scala 63:42]
  wire  adds_2_0_clock; // @[SDOT.scala 63:42]
  wire  adds_2_0_io_input; // @[SDOT.scala 63:42]
  wire  adds_2_0_io_weight; // @[SDOT.scala 63:42]
  wire  adds_2_0_io_selnum; // @[SDOT.scala 63:42]
  wire  adds_2_0_io_sum; // @[SDOT.scala 63:42]
  wire  adds_2_1_clock; // @[SDOT.scala 63:42]
  wire  adds_2_1_io_input; // @[SDOT.scala 63:42]
  wire  adds_2_1_io_weight; // @[SDOT.scala 63:42]
  wire  adds_2_1_io_selnum; // @[SDOT.scala 63:42]
  wire  adds_2_1_io_sum; // @[SDOT.scala 63:42]
  wire  adds_3_0_clock; // @[SDOT.scala 63:42]
  wire  adds_3_0_io_input; // @[SDOT.scala 63:42]
  wire  adds_3_0_io_weight; // @[SDOT.scala 63:42]
  wire  adds_3_0_io_selnum; // @[SDOT.scala 63:42]
  wire  adds_3_0_io_sum; // @[SDOT.scala 63:42]
  wire  lfsrs_0_clock; // @[SDOT.scala 65:54]
  wire  lfsrs_0_reset; // @[SDOT.scala 65:54]
  wire [7:0] lfsrs_0_io_out; // @[SDOT.scala 65:54]
  wire  lfsrs_1_clock; // @[SDOT.scala 65:54]
  wire  lfsrs_1_reset; // @[SDOT.scala 65:54]
  wire [7:0] lfsrs_1_io_out; // @[SDOT.scala 65:54]
  wire  lfsrs_2_clock; // @[SDOT.scala 65:54]
  wire  lfsrs_2_reset; // @[SDOT.scala 65:54]
  wire [7:0] lfsrs_2_io_out; // @[SDOT.scala 65:54]
  wire  lfsrs_3_clock; // @[SDOT.scala 65:54]
  wire  lfsrs_3_reset; // @[SDOT.scala 65:54]
  wire [7:0] lfsrs_3_io_out; // @[SDOT.scala 65:54]
  SMUL muls_0 ( // @[SDOT.scala 61:51]
    .clock(muls_0_clock),
    .reset(muls_0_reset),
    .io_input(muls_0_io_input),
    .io_weight(muls_0_io_weight),
    .io_product(muls_0_io_product)
  );
  SMUL_1 muls_1 ( // @[SDOT.scala 61:51]
    .clock(muls_1_clock),
    .reset(muls_1_reset),
    .io_input(muls_1_io_input),
    .io_weight(muls_1_io_weight),
    .io_product(muls_1_io_product)
  );
  SMUL_2 muls_2 ( // @[SDOT.scala 61:51]
    .clock(muls_2_clock),
    .reset(muls_2_reset),
    .io_input(muls_2_io_input),
    .io_weight(muls_2_io_weight),
    .io_product(muls_2_io_product)
  );
  SMUL_3 muls_3 ( // @[SDOT.scala 61:51]
    .clock(muls_3_clock),
    .reset(muls_3_reset),
    .io_input(muls_3_io_input),
    .io_weight(muls_3_io_weight),
    .io_product(muls_3_io_product)
  );
  SMUL_4 muls_4 ( // @[SDOT.scala 61:51]
    .clock(muls_4_clock),
    .reset(muls_4_reset),
    .io_input(muls_4_io_input),
    .io_weight(muls_4_io_weight),
    .io_product(muls_4_io_product)
  );
  SMUL_5 muls_5 ( // @[SDOT.scala 61:51]
    .clock(muls_5_clock),
    .reset(muls_5_reset),
    .io_input(muls_5_io_input),
    .io_weight(muls_5_io_weight),
    .io_product(muls_5_io_product)
  );
  SMUL_6 muls_6 ( // @[SDOT.scala 61:51]
    .clock(muls_6_clock),
    .reset(muls_6_reset),
    .io_input(muls_6_io_input),
    .io_weight(muls_6_io_weight),
    .io_product(muls_6_io_product)
  );
  SMUL_7 muls_7 ( // @[SDOT.scala 61:51]
    .clock(muls_7_clock),
    .reset(muls_7_reset),
    .io_input(muls_7_io_input),
    .io_weight(muls_7_io_weight),
    .io_product(muls_7_io_product)
  );
  SMUL_8 muls_8 ( // @[SDOT.scala 61:51]
    .clock(muls_8_clock),
    .reset(muls_8_reset),
    .io_input(muls_8_io_input),
    .io_weight(muls_8_io_weight),
    .io_product(muls_8_io_product)
  );
  SMUL_9 muls_9 ( // @[SDOT.scala 61:51]
    .clock(muls_9_clock),
    .reset(muls_9_reset),
    .io_input(muls_9_io_input),
    .io_weight(muls_9_io_weight),
    .io_product(muls_9_io_product)
  );
  SMUL_10 muls_10 ( // @[SDOT.scala 61:51]
    .clock(muls_10_clock),
    .reset(muls_10_reset),
    .io_input(muls_10_io_input),
    .io_weight(muls_10_io_weight),
    .io_product(muls_10_io_product)
  );
  SMUL_11 muls_11 ( // @[SDOT.scala 61:51]
    .clock(muls_11_clock),
    .reset(muls_11_reset),
    .io_input(muls_11_io_input),
    .io_weight(muls_11_io_weight),
    .io_product(muls_11_io_product)
  );
  SMUL_12 muls_12 ( // @[SDOT.scala 61:51]
    .clock(muls_12_clock),
    .reset(muls_12_reset),
    .io_input(muls_12_io_input),
    .io_weight(muls_12_io_weight),
    .io_product(muls_12_io_product)
  );
  SMUL_13 muls_13 ( // @[SDOT.scala 61:51]
    .clock(muls_13_clock),
    .reset(muls_13_reset),
    .io_input(muls_13_io_input),
    .io_weight(muls_13_io_weight),
    .io_product(muls_13_io_product)
  );
  SMUL_14 muls_14 ( // @[SDOT.scala 61:51]
    .clock(muls_14_clock),
    .reset(muls_14_reset),
    .io_input(muls_14_io_input),
    .io_weight(muls_14_io_weight),
    .io_product(muls_14_io_product)
  );
  SMUL_15 muls_15 ( // @[SDOT.scala 61:51]
    .clock(muls_15_clock),
    .reset(muls_15_reset),
    .io_input(muls_15_io_input),
    .io_weight(muls_15_io_weight),
    .io_product(muls_15_io_product)
  );
  SADD adds_0_0 ( // @[SDOT.scala 63:42]
    .clock(adds_0_0_clock),
    .io_input(adds_0_0_io_input),
    .io_weight(adds_0_0_io_weight),
    .io_selnum(adds_0_0_io_selnum),
    .io_sum(adds_0_0_io_sum)
  );
  SADD adds_0_1 ( // @[SDOT.scala 63:42]
    .clock(adds_0_1_clock),
    .io_input(adds_0_1_io_input),
    .io_weight(adds_0_1_io_weight),
    .io_selnum(adds_0_1_io_selnum),
    .io_sum(adds_0_1_io_sum)
  );
  SADD adds_0_2 ( // @[SDOT.scala 63:42]
    .clock(adds_0_2_clock),
    .io_input(adds_0_2_io_input),
    .io_weight(adds_0_2_io_weight),
    .io_selnum(adds_0_2_io_selnum),
    .io_sum(adds_0_2_io_sum)
  );
  SADD adds_0_3 ( // @[SDOT.scala 63:42]
    .clock(adds_0_3_clock),
    .io_input(adds_0_3_io_input),
    .io_weight(adds_0_3_io_weight),
    .io_selnum(adds_0_3_io_selnum),
    .io_sum(adds_0_3_io_sum)
  );
  SADD adds_0_4 ( // @[SDOT.scala 63:42]
    .clock(adds_0_4_clock),
    .io_input(adds_0_4_io_input),
    .io_weight(adds_0_4_io_weight),
    .io_selnum(adds_0_4_io_selnum),
    .io_sum(adds_0_4_io_sum)
  );
  SADD adds_0_5 ( // @[SDOT.scala 63:42]
    .clock(adds_0_5_clock),
    .io_input(adds_0_5_io_input),
    .io_weight(adds_0_5_io_weight),
    .io_selnum(adds_0_5_io_selnum),
    .io_sum(adds_0_5_io_sum)
  );
  SADD adds_0_6 ( // @[SDOT.scala 63:42]
    .clock(adds_0_6_clock),
    .io_input(adds_0_6_io_input),
    .io_weight(adds_0_6_io_weight),
    .io_selnum(adds_0_6_io_selnum),
    .io_sum(adds_0_6_io_sum)
  );
  SADD adds_0_7 ( // @[SDOT.scala 63:42]
    .clock(adds_0_7_clock),
    .io_input(adds_0_7_io_input),
    .io_weight(adds_0_7_io_weight),
    .io_selnum(adds_0_7_io_selnum),
    .io_sum(adds_0_7_io_sum)
  );
  SADD adds_1_0 ( // @[SDOT.scala 63:42]
    .clock(adds_1_0_clock),
    .io_input(adds_1_0_io_input),
    .io_weight(adds_1_0_io_weight),
    .io_selnum(adds_1_0_io_selnum),
    .io_sum(adds_1_0_io_sum)
  );
  SADD adds_1_1 ( // @[SDOT.scala 63:42]
    .clock(adds_1_1_clock),
    .io_input(adds_1_1_io_input),
    .io_weight(adds_1_1_io_weight),
    .io_selnum(adds_1_1_io_selnum),
    .io_sum(adds_1_1_io_sum)
  );
  SADD adds_1_2 ( // @[SDOT.scala 63:42]
    .clock(adds_1_2_clock),
    .io_input(adds_1_2_io_input),
    .io_weight(adds_1_2_io_weight),
    .io_selnum(adds_1_2_io_selnum),
    .io_sum(adds_1_2_io_sum)
  );
  SADD adds_1_3 ( // @[SDOT.scala 63:42]
    .clock(adds_1_3_clock),
    .io_input(adds_1_3_io_input),
    .io_weight(adds_1_3_io_weight),
    .io_selnum(adds_1_3_io_selnum),
    .io_sum(adds_1_3_io_sum)
  );
  SADD adds_2_0 ( // @[SDOT.scala 63:42]
    .clock(adds_2_0_clock),
    .io_input(adds_2_0_io_input),
    .io_weight(adds_2_0_io_weight),
    .io_selnum(adds_2_0_io_selnum),
    .io_sum(adds_2_0_io_sum)
  );
  SADD adds_2_1 ( // @[SDOT.scala 63:42]
    .clock(adds_2_1_clock),
    .io_input(adds_2_1_io_input),
    .io_weight(adds_2_1_io_weight),
    .io_selnum(adds_2_1_io_selnum),
    .io_sum(adds_2_1_io_sum)
  );
  SADD adds_3_0 ( // @[SDOT.scala 63:42]
    .clock(adds_3_0_clock),
    .io_input(adds_3_0_io_input),
    .io_weight(adds_3_0_io_weight),
    .io_selnum(adds_3_0_io_selnum),
    .io_sum(adds_3_0_io_sum)
  );
  LFSR_16 lfsrs_0 ( // @[SDOT.scala 65:54]
    .clock(lfsrs_0_clock),
    .reset(lfsrs_0_reset),
    .io_out(lfsrs_0_io_out)
  );
  LFSR_17 lfsrs_1 ( // @[SDOT.scala 65:54]
    .clock(lfsrs_1_clock),
    .reset(lfsrs_1_reset),
    .io_out(lfsrs_1_io_out)
  );
  LFSR_18 lfsrs_2 ( // @[SDOT.scala 65:54]
    .clock(lfsrs_2_clock),
    .reset(lfsrs_2_reset),
    .io_out(lfsrs_2_io_out)
  );
  LFSR_19 lfsrs_3 ( // @[SDOT.scala 65:54]
    .clock(lfsrs_3_clock),
    .reset(lfsrs_3_reset),
    .io_out(lfsrs_3_io_out)
  );
  assign io_psum = adds_3_0_io_sum; // @[SDOT.scala 92:11]
  assign muls_0_clock = clock;
  assign muls_0_reset = reset;
  assign muls_0_io_input = io_inputs_0; // @[SDOT.scala 70:26]
  assign muls_0_io_weight = io_weights_0; // @[SDOT.scala 71:27]
  assign muls_1_clock = clock;
  assign muls_1_reset = reset;
  assign muls_1_io_input = io_inputs_1; // @[SDOT.scala 70:26]
  assign muls_1_io_weight = io_weights_1; // @[SDOT.scala 71:27]
  assign muls_2_clock = clock;
  assign muls_2_reset = reset;
  assign muls_2_io_input = io_inputs_2; // @[SDOT.scala 70:26]
  assign muls_2_io_weight = io_weights_2; // @[SDOT.scala 71:27]
  assign muls_3_clock = clock;
  assign muls_3_reset = reset;
  assign muls_3_io_input = io_inputs_3; // @[SDOT.scala 70:26]
  assign muls_3_io_weight = io_weights_3; // @[SDOT.scala 71:27]
  assign muls_4_clock = clock;
  assign muls_4_reset = reset;
  assign muls_4_io_input = io_inputs_4; // @[SDOT.scala 70:26]
  assign muls_4_io_weight = io_weights_4; // @[SDOT.scala 71:27]
  assign muls_5_clock = clock;
  assign muls_5_reset = reset;
  assign muls_5_io_input = io_inputs_5; // @[SDOT.scala 70:26]
  assign muls_5_io_weight = io_weights_5; // @[SDOT.scala 71:27]
  assign muls_6_clock = clock;
  assign muls_6_reset = reset;
  assign muls_6_io_input = io_inputs_6; // @[SDOT.scala 70:26]
  assign muls_6_io_weight = io_weights_6; // @[SDOT.scala 71:27]
  assign muls_7_clock = clock;
  assign muls_7_reset = reset;
  assign muls_7_io_input = io_inputs_7; // @[SDOT.scala 70:26]
  assign muls_7_io_weight = io_weights_7; // @[SDOT.scala 71:27]
  assign muls_8_clock = clock;
  assign muls_8_reset = reset;
  assign muls_8_io_input = io_inputs_8; // @[SDOT.scala 70:26]
  assign muls_8_io_weight = io_weights_8; // @[SDOT.scala 71:27]
  assign muls_9_clock = clock;
  assign muls_9_reset = reset;
  assign muls_9_io_input = io_inputs_9; // @[SDOT.scala 70:26]
  assign muls_9_io_weight = io_weights_9; // @[SDOT.scala 71:27]
  assign muls_10_clock = clock;
  assign muls_10_reset = reset;
  assign muls_10_io_input = io_inputs_10; // @[SDOT.scala 70:26]
  assign muls_10_io_weight = io_weights_10; // @[SDOT.scala 71:27]
  assign muls_11_clock = clock;
  assign muls_11_reset = reset;
  assign muls_11_io_input = io_inputs_11; // @[SDOT.scala 70:26]
  assign muls_11_io_weight = io_weights_11; // @[SDOT.scala 71:27]
  assign muls_12_clock = clock;
  assign muls_12_reset = reset;
  assign muls_12_io_input = io_inputs_12; // @[SDOT.scala 70:26]
  assign muls_12_io_weight = io_weights_12; // @[SDOT.scala 71:27]
  assign muls_13_clock = clock;
  assign muls_13_reset = reset;
  assign muls_13_io_input = io_inputs_13; // @[SDOT.scala 70:26]
  assign muls_13_io_weight = io_weights_13; // @[SDOT.scala 71:27]
  assign muls_14_clock = clock;
  assign muls_14_reset = reset;
  assign muls_14_io_input = io_inputs_14; // @[SDOT.scala 70:26]
  assign muls_14_io_weight = io_weights_14; // @[SDOT.scala 71:27]
  assign muls_15_clock = clock;
  assign muls_15_reset = reset;
  assign muls_15_io_input = io_inputs_15; // @[SDOT.scala 70:26]
  assign muls_15_io_weight = io_weights_15; // @[SDOT.scala 71:27]
  assign adds_0_0_clock = clock;
  assign adds_0_0_io_input = muls_0_io_product; // @[SDOT.scala 81:29]
  assign adds_0_0_io_weight = muls_1_io_product; // @[SDOT.scala 82:30]
  assign adds_0_0_io_selnum = lfsrs_0_io_out[0]; // @[SDOT.scala 80:48]
  assign adds_0_1_clock = clock;
  assign adds_0_1_io_input = muls_2_io_product; // @[SDOT.scala 81:29]
  assign adds_0_1_io_weight = muls_3_io_product; // @[SDOT.scala 82:30]
  assign adds_0_1_io_selnum = lfsrs_0_io_out[1]; // @[SDOT.scala 80:48]
  assign adds_0_2_clock = clock;
  assign adds_0_2_io_input = muls_4_io_product; // @[SDOT.scala 81:29]
  assign adds_0_2_io_weight = muls_5_io_product; // @[SDOT.scala 82:30]
  assign adds_0_2_io_selnum = lfsrs_0_io_out[2]; // @[SDOT.scala 80:48]
  assign adds_0_3_clock = clock;
  assign adds_0_3_io_input = muls_6_io_product; // @[SDOT.scala 81:29]
  assign adds_0_3_io_weight = muls_7_io_product; // @[SDOT.scala 82:30]
  assign adds_0_3_io_selnum = lfsrs_0_io_out[3]; // @[SDOT.scala 80:48]
  assign adds_0_4_clock = clock;
  assign adds_0_4_io_input = muls_8_io_product; // @[SDOT.scala 81:29]
  assign adds_0_4_io_weight = muls_9_io_product; // @[SDOT.scala 82:30]
  assign adds_0_4_io_selnum = lfsrs_0_io_out[4]; // @[SDOT.scala 80:48]
  assign adds_0_5_clock = clock;
  assign adds_0_5_io_input = muls_10_io_product; // @[SDOT.scala 81:29]
  assign adds_0_5_io_weight = muls_11_io_product; // @[SDOT.scala 82:30]
  assign adds_0_5_io_selnum = lfsrs_0_io_out[5]; // @[SDOT.scala 80:48]
  assign adds_0_6_clock = clock;
  assign adds_0_6_io_input = muls_12_io_product; // @[SDOT.scala 81:29]
  assign adds_0_6_io_weight = muls_13_io_product; // @[SDOT.scala 82:30]
  assign adds_0_6_io_selnum = lfsrs_0_io_out[6]; // @[SDOT.scala 80:48]
  assign adds_0_7_clock = clock;
  assign adds_0_7_io_input = muls_14_io_product; // @[SDOT.scala 81:29]
  assign adds_0_7_io_weight = muls_15_io_product; // @[SDOT.scala 82:30]
  assign adds_0_7_io_selnum = lfsrs_0_io_out[7]; // @[SDOT.scala 80:48]
  assign adds_1_0_clock = clock;
  assign adds_1_0_io_input = adds_0_0_io_sum; // @[SDOT.scala 85:29]
  assign adds_1_0_io_weight = adds_0_1_io_sum; // @[SDOT.scala 86:30]
  assign adds_1_0_io_selnum = lfsrs_1_io_out[0]; // @[SDOT.scala 84:48]
  assign adds_1_1_clock = clock;
  assign adds_1_1_io_input = adds_0_2_io_sum; // @[SDOT.scala 85:29]
  assign adds_1_1_io_weight = adds_0_3_io_sum; // @[SDOT.scala 86:30]
  assign adds_1_1_io_selnum = lfsrs_1_io_out[1]; // @[SDOT.scala 84:48]
  assign adds_1_2_clock = clock;
  assign adds_1_2_io_input = adds_0_4_io_sum; // @[SDOT.scala 85:29]
  assign adds_1_2_io_weight = adds_0_5_io_sum; // @[SDOT.scala 86:30]
  assign adds_1_2_io_selnum = lfsrs_1_io_out[2]; // @[SDOT.scala 84:48]
  assign adds_1_3_clock = clock;
  assign adds_1_3_io_input = adds_0_6_io_sum; // @[SDOT.scala 85:29]
  assign adds_1_3_io_weight = adds_0_7_io_sum; // @[SDOT.scala 86:30]
  assign adds_1_3_io_selnum = lfsrs_1_io_out[3]; // @[SDOT.scala 84:48]
  assign adds_2_0_clock = clock;
  assign adds_2_0_io_input = adds_1_0_io_sum; // @[SDOT.scala 85:29]
  assign adds_2_0_io_weight = adds_1_1_io_sum; // @[SDOT.scala 86:30]
  assign adds_2_0_io_selnum = lfsrs_2_io_out[0]; // @[SDOT.scala 84:48]
  assign adds_2_1_clock = clock;
  assign adds_2_1_io_input = adds_1_2_io_sum; // @[SDOT.scala 85:29]
  assign adds_2_1_io_weight = adds_1_3_io_sum; // @[SDOT.scala 86:30]
  assign adds_2_1_io_selnum = lfsrs_2_io_out[1]; // @[SDOT.scala 84:48]
  assign adds_3_0_clock = clock;
  assign adds_3_0_io_input = adds_2_0_io_sum; // @[SDOT.scala 85:29]
  assign adds_3_0_io_weight = adds_2_1_io_sum; // @[SDOT.scala 86:30]
  assign adds_3_0_io_selnum = lfsrs_3_io_out[0]; // @[SDOT.scala 84:48]
  assign lfsrs_0_clock = clock;
  assign lfsrs_0_reset = reset;
  assign lfsrs_1_clock = clock;
  assign lfsrs_1_reset = reset;
  assign lfsrs_2_clock = clock;
  assign lfsrs_2_reset = reset;
  assign lfsrs_3_clock = clock;
  assign lfsrs_3_reset = reset;
endmodule
