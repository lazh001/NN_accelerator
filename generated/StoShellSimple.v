module DMASimpleXil(
  input         clock,
  input         reset,
  output        io_mem_AWVALID,
  input         io_mem_AWREADY,
  output [31:0] io_mem_AWADDR,
  output [7:0]  io_mem_AWLEN,
  output        io_mem_WVALID,
  input         io_mem_WREADY,
  output [31:0] io_mem_WDATA,
  output        io_mem_WLAST,
  input         io_mem_BVALID,
  output        io_mem_BREADY,
  output        io_mem_ARVALID,
  input         io_mem_ARREADY,
  output [31:0] io_mem_ARADDR,
  output [7:0]  io_mem_ARLEN,
  input         io_mem_RVALID,
  output        io_mem_RREADY,
  input  [31:0] io_mem_RDATA,
  input         io_mem_RLAST,
  output        io_core_start,
  output [31:0] io_core_input_0,
  output [31:0] io_core_input_1,
  output [31:0] io_core_input_2,
  output [31:0] io_core_input_3,
  output [31:0] io_core_weight_0,
  output [31:0] io_core_weight_1,
  output [31:0] io_core_weight_2,
  output [31:0] io_core_weight_3,
  input         io_core_done,
  input  [31:0] io_core_result,
  input         io_host_AWVALID,
  output        io_host_AWREADY,
  input  [31:0] io_host_AWADDR,
  input         io_host_WVALID,
  output        io_host_WREADY,
  input  [31:0] io_host_WDATA,
  output        io_host_BVALID,
  input         io_host_BREADY,
  input         io_host_ARVALID,
  output        io_host_ARREADY,
  input  [31:0] io_host_ARADDR,
  output        io_host_RVALID,
  input         io_host_RREADY,
  output [31:0] io_host_RDATA
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] dmaregs_0; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_1; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_2; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_3; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_4; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_5; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_6; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_7; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_8; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_9; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_10; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_11; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_12; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_13; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_14; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_15; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_16; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_17; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_18; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_19; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_20; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_21; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_22; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_23; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_24; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_25; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_26; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_27; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_28; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_29; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_30; // @[dmaXilinx.scala 15:26]
  reg [31:0] dmaregs_31; // @[dmaXilinx.scala 15:26]
  reg [1:0] rstate; // @[dmaXilinx.scala 24:25]
  wire  rd_valid = dmaregs_3[0] & dmaregs_0[1]; // @[dmaXilinx.scala 27:31]
  reg [7:0] rd_len; // @[dmaXilinx.scala 29:25]
  reg [31:0] rd_addr; // @[dmaXilinx.scala 30:26]
  wire  _T_3 = io_mem_RVALID & io_mem_RREADY; // @[dmaXilinx.scala 49:32]
  wire [1:0] _GEN_4 = io_mem_RVALID & io_mem_RREADY & io_mem_RLAST ? 2'h0 : rstate; // @[dmaXilinx.scala 49:66 50:24 24:25]
  reg [7:0] rd_cnt; // @[dmaXilinx.scala 63:25]
  wire [7:0] _rd_cnt_T_1 = rd_cnt + 8'h1; // @[dmaXilinx.scala 68:26]
  wire [4:0] _T_11 = 5'h10 + rd_cnt[4:0]; // @[dmaXilinx.scala 74:26]
  wire [31:0] _GEN_10 = 5'h0 == _T_11 ? io_mem_RDATA : dmaregs_0; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_11 = 5'h1 == _T_11 ? io_mem_RDATA : dmaregs_1; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_12 = 5'h2 == _T_11 ? io_mem_RDATA : dmaregs_2; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_13 = 5'h3 == _T_11 ? io_mem_RDATA : dmaregs_3; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_14 = 5'h4 == _T_11 ? io_mem_RDATA : dmaregs_4; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_15 = 5'h5 == _T_11 ? io_mem_RDATA : dmaregs_5; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_16 = 5'h6 == _T_11 ? io_mem_RDATA : dmaregs_6; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_17 = 5'h7 == _T_11 ? io_mem_RDATA : dmaregs_7; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_18 = 5'h8 == _T_11 ? io_mem_RDATA : dmaregs_8; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_19 = 5'h9 == _T_11 ? io_mem_RDATA : dmaregs_9; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_20 = 5'ha == _T_11 ? io_mem_RDATA : dmaregs_10; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_21 = 5'hb == _T_11 ? io_mem_RDATA : dmaregs_11; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_22 = 5'hc == _T_11 ? io_mem_RDATA : dmaregs_12; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_23 = 5'hd == _T_11 ? io_mem_RDATA : dmaregs_13; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_24 = 5'he == _T_11 ? io_mem_RDATA : dmaregs_14; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_25 = 5'hf == _T_11 ? io_mem_RDATA : dmaregs_15; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_26 = 5'h10 == _T_11 ? io_mem_RDATA : dmaregs_16; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_27 = 5'h11 == _T_11 ? io_mem_RDATA : dmaregs_17; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_28 = 5'h12 == _T_11 ? io_mem_RDATA : dmaregs_18; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_29 = 5'h13 == _T_11 ? io_mem_RDATA : dmaregs_19; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_30 = 5'h14 == _T_11 ? io_mem_RDATA : dmaregs_20; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_31 = 5'h15 == _T_11 ? io_mem_RDATA : dmaregs_21; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_32 = 5'h16 == _T_11 ? io_mem_RDATA : dmaregs_22; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_33 = 5'h17 == _T_11 ? io_mem_RDATA : dmaregs_23; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_34 = 5'h18 == _T_11 ? io_mem_RDATA : dmaregs_24; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_35 = 5'h19 == _T_11 ? io_mem_RDATA : dmaregs_25; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_36 = 5'h1a == _T_11 ? io_mem_RDATA : dmaregs_26; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_37 = 5'h1b == _T_11 ? io_mem_RDATA : dmaregs_27; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_38 = 5'h1c == _T_11 ? io_mem_RDATA : dmaregs_28; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_39 = 5'h1d == _T_11 ? io_mem_RDATA : dmaregs_29; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_40 = 5'h1e == _T_11 ? io_mem_RDATA : dmaregs_30; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [31:0] _GEN_41 = 5'h1f == _T_11 ? io_mem_RDATA : dmaregs_31; // @[dmaXilinx.scala 15:26 74:{41,41}]
  wire [4:0] _T_14 = 5'h8 + rd_cnt[4:0]; // @[dmaXilinx.scala 78:25]
  wire [31:0] _GEN_42 = 5'h0 == _T_14 ? io_mem_RDATA : dmaregs_0; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_43 = 5'h1 == _T_14 ? io_mem_RDATA : dmaregs_1; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_44 = 5'h2 == _T_14 ? io_mem_RDATA : dmaregs_2; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_45 = 5'h3 == _T_14 ? io_mem_RDATA : dmaregs_3; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_46 = 5'h4 == _T_14 ? io_mem_RDATA : dmaregs_4; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_47 = 5'h5 == _T_14 ? io_mem_RDATA : dmaregs_5; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_48 = 5'h6 == _T_14 ? io_mem_RDATA : dmaregs_6; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_49 = 5'h7 == _T_14 ? io_mem_RDATA : dmaregs_7; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_50 = 5'h8 == _T_14 ? io_mem_RDATA : dmaregs_8; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_51 = 5'h9 == _T_14 ? io_mem_RDATA : dmaregs_9; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_52 = 5'ha == _T_14 ? io_mem_RDATA : dmaregs_10; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_53 = 5'hb == _T_14 ? io_mem_RDATA : dmaregs_11; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_54 = 5'hc == _T_14 ? io_mem_RDATA : dmaregs_12; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_55 = 5'hd == _T_14 ? io_mem_RDATA : dmaregs_13; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_56 = 5'he == _T_14 ? io_mem_RDATA : dmaregs_14; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_57 = 5'hf == _T_14 ? io_mem_RDATA : dmaregs_15; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_58 = 5'h10 == _T_14 ? io_mem_RDATA : dmaregs_16; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_59 = 5'h11 == _T_14 ? io_mem_RDATA : dmaregs_17; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_60 = 5'h12 == _T_14 ? io_mem_RDATA : dmaregs_18; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_61 = 5'h13 == _T_14 ? io_mem_RDATA : dmaregs_19; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_62 = 5'h14 == _T_14 ? io_mem_RDATA : dmaregs_20; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_63 = 5'h15 == _T_14 ? io_mem_RDATA : dmaregs_21; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_64 = 5'h16 == _T_14 ? io_mem_RDATA : dmaregs_22; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_65 = 5'h17 == _T_14 ? io_mem_RDATA : dmaregs_23; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_66 = 5'h18 == _T_14 ? io_mem_RDATA : dmaregs_24; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_67 = 5'h19 == _T_14 ? io_mem_RDATA : dmaregs_25; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_68 = 5'h1a == _T_14 ? io_mem_RDATA : dmaregs_26; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_69 = 5'h1b == _T_14 ? io_mem_RDATA : dmaregs_27; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_70 = 5'h1c == _T_14 ? io_mem_RDATA : dmaregs_28; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_71 = 5'h1d == _T_14 ? io_mem_RDATA : dmaregs_29; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_72 = 5'h1e == _T_14 ? io_mem_RDATA : dmaregs_30; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_73 = 5'h1f == _T_14 ? io_mem_RDATA : dmaregs_31; // @[dmaXilinx.scala 15:26 78:{40,40}]
  wire [31:0] _GEN_74 = dmaregs_0[0] ? _GEN_10 : _GEN_42; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_75 = dmaregs_0[0] ? _GEN_11 : _GEN_43; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_76 = dmaregs_0[0] ? _GEN_12 : _GEN_44; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_77 = dmaregs_0[0] ? _GEN_13 : _GEN_45; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_78 = dmaregs_0[0] ? _GEN_14 : _GEN_46; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_79 = dmaregs_0[0] ? _GEN_15 : _GEN_47; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_80 = dmaregs_0[0] ? _GEN_16 : _GEN_48; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_81 = dmaregs_0[0] ? _GEN_17 : _GEN_49; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_82 = dmaregs_0[0] ? _GEN_18 : _GEN_50; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_83 = dmaregs_0[0] ? _GEN_19 : _GEN_51; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_84 = dmaregs_0[0] ? _GEN_20 : _GEN_52; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_85 = dmaregs_0[0] ? _GEN_21 : _GEN_53; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_86 = dmaregs_0[0] ? _GEN_22 : _GEN_54; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_87 = dmaregs_0[0] ? _GEN_23 : _GEN_55; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_88 = dmaregs_0[0] ? _GEN_24 : _GEN_56; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_89 = dmaregs_0[0] ? _GEN_25 : _GEN_57; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_90 = dmaregs_0[0] ? _GEN_26 : _GEN_58; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_91 = dmaregs_0[0] ? _GEN_27 : _GEN_59; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_92 = dmaregs_0[0] ? _GEN_28 : _GEN_60; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_93 = dmaregs_0[0] ? _GEN_29 : _GEN_61; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_94 = dmaregs_0[0] ? _GEN_30 : _GEN_62; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_95 = dmaregs_0[0] ? _GEN_31 : _GEN_63; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_96 = dmaregs_0[0] ? _GEN_32 : _GEN_64; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_97 = dmaregs_0[0] ? _GEN_33 : _GEN_65; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_98 = dmaregs_0[0] ? _GEN_34 : _GEN_66; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_99 = dmaregs_0[0] ? _GEN_35 : _GEN_67; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_100 = dmaregs_0[0] ? _GEN_36 : _GEN_68; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_101 = dmaregs_0[0] ? _GEN_37 : _GEN_69; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_102 = dmaregs_0[0] ? _GEN_38 : _GEN_70; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_103 = dmaregs_0[0] ? _GEN_39 : _GEN_71; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_104 = dmaregs_0[0] ? _GEN_40 : _GEN_72; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_105 = dmaregs_0[0] ? _GEN_41 : _GEN_73; // @[dmaXilinx.scala 72:29]
  wire [31:0] _GEN_106 = _T_3 ? _GEN_74 : dmaregs_0; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_107 = _T_3 ? _GEN_75 : dmaregs_1; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_108 = _T_3 ? _GEN_76 : dmaregs_2; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_109 = _T_3 ? _GEN_77 : dmaregs_3; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_110 = _T_3 ? _GEN_78 : dmaregs_4; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_111 = _T_3 ? _GEN_79 : dmaregs_5; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_112 = _T_3 ? _GEN_80 : dmaregs_6; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_113 = _T_3 ? _GEN_81 : dmaregs_7; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_114 = _T_3 ? _GEN_82 : dmaregs_8; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_115 = _T_3 ? _GEN_83 : dmaregs_9; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_116 = _T_3 ? _GEN_84 : dmaregs_10; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_117 = _T_3 ? _GEN_85 : dmaregs_11; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_118 = _T_3 ? _GEN_86 : dmaregs_12; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_119 = _T_3 ? _GEN_87 : dmaregs_13; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_120 = _T_3 ? _GEN_88 : dmaregs_14; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_121 = _T_3 ? _GEN_89 : dmaregs_15; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_122 = _T_3 ? _GEN_90 : dmaregs_16; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_123 = _T_3 ? _GEN_91 : dmaregs_17; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_124 = _T_3 ? _GEN_92 : dmaregs_18; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_125 = _T_3 ? _GEN_93 : dmaregs_19; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_126 = _T_3 ? _GEN_94 : dmaregs_20; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_127 = _T_3 ? _GEN_95 : dmaregs_21; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_128 = _T_3 ? _GEN_96 : dmaregs_22; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_129 = _T_3 ? _GEN_97 : dmaregs_23; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_130 = _T_3 ? _GEN_98 : dmaregs_24; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_131 = _T_3 ? _GEN_99 : dmaregs_25; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_132 = _T_3 ? _GEN_100 : dmaregs_26; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_133 = _T_3 ? _GEN_101 : dmaregs_27; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_134 = _T_3 ? _GEN_102 : dmaregs_28; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_135 = _T_3 ? _GEN_103 : dmaregs_29; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_136 = _T_3 ? _GEN_104 : dmaregs_30; // @[dmaXilinx.scala 15:26 71:41]
  wire [31:0] _GEN_137 = _T_3 ? _GEN_105 : dmaregs_31; // @[dmaXilinx.scala 15:26 71:41]
  reg [1:0] wstate; // @[dmaXilinx.scala 85:25]
  wire  _wr_valid_T_2 = ~dmaregs_0[1]; // @[dmaXilinx.scala 88:34]
  wire  wr_valid = dmaregs_3[0] & ~dmaregs_0[1] & dmaregs_0[0]; // @[dmaXilinx.scala 88:50]
  reg [7:0] wr_cnt; // @[dmaXilinx.scala 90:25]
  wire  _T_16 = io_mem_WREADY & io_mem_WVALID; // @[dmaXilinx.scala 93:30]
  wire [7:0] _wr_cnt_T_1 = wr_cnt + 8'h1; // @[dmaXilinx.scala 94:26]
  reg [7:0] wr_len; // @[dmaXilinx.scala 97:25]
  reg [31:0] wr_addr; // @[dmaXilinx.scala 98:26]
  wire [1:0] _GEN_144 = io_mem_WREADY & wr_cnt == wr_len ? 2'h3 : wstate; // @[dmaXilinx.scala 117:54 118:24 85:25]
  wire [1:0] _GEN_145 = io_mem_BVALID ? 2'h0 : wstate; // @[dmaXilinx.scala 122:33 123:24 85:25]
  wire [1:0] _GEN_146 = 2'h3 == wstate ? _GEN_145 : wstate; // @[dmaXilinx.scala 105:20 85:25]
  wire [4:0] _io_mem_WDATA_T_2 = 5'h18 + wr_cnt[4:0]; // @[dmaXilinx.scala 137:38]
  wire [31:0] _GEN_151 = 5'h1 == _io_mem_WDATA_T_2 ? dmaregs_1 : dmaregs_0; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_152 = 5'h2 == _io_mem_WDATA_T_2 ? dmaregs_2 : _GEN_151; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_153 = 5'h3 == _io_mem_WDATA_T_2 ? dmaregs_3 : _GEN_152; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_154 = 5'h4 == _io_mem_WDATA_T_2 ? dmaregs_4 : _GEN_153; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_155 = 5'h5 == _io_mem_WDATA_T_2 ? dmaregs_5 : _GEN_154; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_156 = 5'h6 == _io_mem_WDATA_T_2 ? dmaregs_6 : _GEN_155; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_157 = 5'h7 == _io_mem_WDATA_T_2 ? dmaregs_7 : _GEN_156; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_158 = 5'h8 == _io_mem_WDATA_T_2 ? dmaregs_8 : _GEN_157; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_159 = 5'h9 == _io_mem_WDATA_T_2 ? dmaregs_9 : _GEN_158; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_160 = 5'ha == _io_mem_WDATA_T_2 ? dmaregs_10 : _GEN_159; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_161 = 5'hb == _io_mem_WDATA_T_2 ? dmaregs_11 : _GEN_160; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_162 = 5'hc == _io_mem_WDATA_T_2 ? dmaregs_12 : _GEN_161; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_163 = 5'hd == _io_mem_WDATA_T_2 ? dmaregs_13 : _GEN_162; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_164 = 5'he == _io_mem_WDATA_T_2 ? dmaregs_14 : _GEN_163; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_165 = 5'hf == _io_mem_WDATA_T_2 ? dmaregs_15 : _GEN_164; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_166 = 5'h10 == _io_mem_WDATA_T_2 ? dmaregs_16 : _GEN_165; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_167 = 5'h11 == _io_mem_WDATA_T_2 ? dmaregs_17 : _GEN_166; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_168 = 5'h12 == _io_mem_WDATA_T_2 ? dmaregs_18 : _GEN_167; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_169 = 5'h13 == _io_mem_WDATA_T_2 ? dmaregs_19 : _GEN_168; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_170 = 5'h14 == _io_mem_WDATA_T_2 ? dmaregs_20 : _GEN_169; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_171 = 5'h15 == _io_mem_WDATA_T_2 ? dmaregs_21 : _GEN_170; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_172 = 5'h16 == _io_mem_WDATA_T_2 ? dmaregs_22 : _GEN_171; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_173 = 5'h17 == _io_mem_WDATA_T_2 ? dmaregs_23 : _GEN_172; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_174 = 5'h18 == _io_mem_WDATA_T_2 ? dmaregs_24 : _GEN_173; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_175 = 5'h19 == _io_mem_WDATA_T_2 ? dmaregs_25 : _GEN_174; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_176 = 5'h1a == _io_mem_WDATA_T_2 ? dmaregs_26 : _GEN_175; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_177 = 5'h1b == _io_mem_WDATA_T_2 ? dmaregs_27 : _GEN_176; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_178 = 5'h1c == _io_mem_WDATA_T_2 ? dmaregs_28 : _GEN_177; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_179 = 5'h1d == _io_mem_WDATA_T_2 ? dmaregs_29 : _GEN_178; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_180 = 5'h1e == _io_mem_WDATA_T_2 ? dmaregs_30 : _GEN_179; // @[dmaXilinx.scala 137:{22,22}]
  wire [31:0] _GEN_181 = 5'h1f == _io_mem_WDATA_T_2 ? dmaregs_31 : _GEN_180; // @[dmaXilinx.scala 137:{22,22}]
  reg  h_rstate; // @[dmaXilinx.scala 146:27]
  wire  _GEN_183 = io_host_ARVALID | h_rstate; // @[dmaXilinx.scala 150:35 151:26 146:27]
  reg [31:0] h_rd_addr; // @[dmaXilinx.scala 161:28]
  wire [31:0] _GEN_189 = 5'h1 == h_rd_addr[6:2] ? dmaregs_1 : dmaregs_0; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_190 = 5'h2 == h_rd_addr[6:2] ? dmaregs_2 : _GEN_189; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_191 = 5'h3 == h_rd_addr[6:2] ? dmaregs_3 : _GEN_190; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_192 = 5'h4 == h_rd_addr[6:2] ? dmaregs_4 : _GEN_191; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_193 = 5'h5 == h_rd_addr[6:2] ? dmaregs_5 : _GEN_192; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_194 = 5'h6 == h_rd_addr[6:2] ? dmaregs_6 : _GEN_193; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_195 = 5'h7 == h_rd_addr[6:2] ? dmaregs_7 : _GEN_194; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_196 = 5'h8 == h_rd_addr[6:2] ? dmaregs_8 : _GEN_195; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_197 = 5'h9 == h_rd_addr[6:2] ? dmaregs_9 : _GEN_196; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_198 = 5'ha == h_rd_addr[6:2] ? dmaregs_10 : _GEN_197; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_199 = 5'hb == h_rd_addr[6:2] ? dmaregs_11 : _GEN_198; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_200 = 5'hc == h_rd_addr[6:2] ? dmaregs_12 : _GEN_199; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_201 = 5'hd == h_rd_addr[6:2] ? dmaregs_13 : _GEN_200; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_202 = 5'he == h_rd_addr[6:2] ? dmaregs_14 : _GEN_201; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_203 = 5'hf == h_rd_addr[6:2] ? dmaregs_15 : _GEN_202; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_204 = 5'h10 == h_rd_addr[6:2] ? dmaregs_16 : _GEN_203; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_205 = 5'h11 == h_rd_addr[6:2] ? dmaregs_17 : _GEN_204; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_206 = 5'h12 == h_rd_addr[6:2] ? dmaregs_18 : _GEN_205; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_207 = 5'h13 == h_rd_addr[6:2] ? dmaregs_19 : _GEN_206; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_208 = 5'h14 == h_rd_addr[6:2] ? dmaregs_20 : _GEN_207; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_209 = 5'h15 == h_rd_addr[6:2] ? dmaregs_21 : _GEN_208; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_210 = 5'h16 == h_rd_addr[6:2] ? dmaregs_22 : _GEN_209; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_211 = 5'h17 == h_rd_addr[6:2] ? dmaregs_23 : _GEN_210; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_212 = 5'h18 == h_rd_addr[6:2] ? dmaregs_24 : _GEN_211; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_213 = 5'h19 == h_rd_addr[6:2] ? dmaregs_25 : _GEN_212; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_214 = 5'h1a == h_rd_addr[6:2] ? dmaregs_26 : _GEN_213; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_215 = 5'h1b == h_rd_addr[6:2] ? dmaregs_27 : _GEN_214; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_216 = 5'h1c == h_rd_addr[6:2] ? dmaregs_28 : _GEN_215; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_217 = 5'h1d == h_rd_addr[6:2] ? dmaregs_29 : _GEN_216; // @[dmaXilinx.scala 166:{19,19}]
  wire [31:0] _GEN_218 = 5'h1e == h_rd_addr[6:2] ? dmaregs_30 : _GEN_217; // @[dmaXilinx.scala 166:{19,19}]
  reg [1:0] h_wstate; // @[dmaXilinx.scala 174:27]
  wire [1:0] _GEN_222 = io_host_BREADY ? 2'h0 : h_wstate; // @[dmaXilinx.scala 188:34 189:26 174:27]
  reg [31:0] h_wr_addr; // @[dmaXilinx.scala 194:28]
  assign io_mem_AWVALID = wstate == 2'h1; // @[dmaXilinx.scala 128:30]
  assign io_mem_AWADDR = wr_addr; // @[dmaXilinx.scala 129:19]
  assign io_mem_AWLEN = wr_len; // @[dmaXilinx.scala 130:18]
  assign io_mem_WVALID = wstate == 2'h2; // @[dmaXilinx.scala 132:29]
  assign io_mem_WDATA = _T_16 ? _GEN_181 : 32'h0; // @[dmaXilinx.scala 136:41 137:22 AXI.scala 360:11]
  assign io_mem_WLAST = wr_cnt == wr_len; // @[dmaXilinx.scala 134:28]
  assign io_mem_BREADY = wstate == 2'h3; // @[dmaXilinx.scala 140:29]
  assign io_mem_ARVALID = rstate == 2'h1; // @[dmaXilinx.scala 56:30]
  assign io_mem_ARADDR = rd_addr; // @[dmaXilinx.scala 57:19]
  assign io_mem_ARLEN = rd_len; // @[dmaXilinx.scala 58:18]
  assign io_mem_RREADY = rstate == 2'h2; // @[dmaXilinx.scala 61:29]
  assign io_core_start = dmaregs_3[0] & ~dmaregs_0[0] & _wr_valid_T_2; // @[dmaXilinx.scala 213:55]
  assign io_core_input_0 = dmaregs_8; // @[dmaXilinx.scala 231:26]
  assign io_core_input_1 = dmaregs_9; // @[dmaXilinx.scala 231:26]
  assign io_core_input_2 = dmaregs_10; // @[dmaXilinx.scala 231:26]
  assign io_core_input_3 = dmaregs_11; // @[dmaXilinx.scala 231:26]
  assign io_core_weight_0 = dmaregs_16; // @[dmaXilinx.scala 232:27]
  assign io_core_weight_1 = dmaregs_17; // @[dmaXilinx.scala 232:27]
  assign io_core_weight_2 = dmaregs_18; // @[dmaXilinx.scala 232:27]
  assign io_core_weight_3 = dmaregs_19; // @[dmaXilinx.scala 232:27]
  assign io_host_AWREADY = h_wstate == 2'h0; // @[dmaXilinx.scala 203:33]
  assign io_host_WREADY = h_wstate == 2'h1; // @[dmaXilinx.scala 204:32]
  assign io_host_BVALID = h_wstate == 2'h2; // @[dmaXilinx.scala 205:32]
  assign io_host_ARREADY = ~h_rstate; // @[dmaXilinx.scala 168:33]
  assign io_host_RVALID = h_rstate; // @[dmaXilinx.scala 169:32]
  assign io_host_RDATA = 5'h1f == h_rd_addr[6:2] ? dmaregs_31 : _GEN_218; // @[dmaXilinx.scala 166:{19,19}]
  always @(posedge clock) begin
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_0 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h0 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_0 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_0 <= _GEN_106;
      end
    end else begin
      dmaregs_0 <= _GEN_106;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_1 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h1 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_1 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_1 <= _GEN_107;
      end
    end else begin
      dmaregs_1 <= _GEN_107;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_2 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h2 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_2 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_2 <= _GEN_108;
      end
    end else begin
      dmaregs_2 <= _GEN_108;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_3 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h3 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_3 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_3 <= _GEN_109;
      end
    end else begin
      dmaregs_3 <= _GEN_109;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_4 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h4 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_4 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_4 <= _GEN_110;
      end
    end else begin
      dmaregs_4 <= _GEN_110;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_5 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h5 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_5 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_5 <= _GEN_111;
      end
    end else begin
      dmaregs_5 <= _GEN_111;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_6 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h6 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_6 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_6 <= _GEN_112;
      end
    end else begin
      dmaregs_6 <= _GEN_112;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_7 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h7 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_7 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_7 <= _GEN_113;
      end
    end else begin
      dmaregs_7 <= _GEN_113;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_8 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h8 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_8 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_8 <= _GEN_114;
      end
    end else begin
      dmaregs_8 <= _GEN_114;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_9 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h9 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_9 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_9 <= _GEN_115;
      end
    end else begin
      dmaregs_9 <= _GEN_115;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_10 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'ha == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_10 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_10 <= _GEN_116;
      end
    end else begin
      dmaregs_10 <= _GEN_116;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_11 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'hb == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_11 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_11 <= _GEN_117;
      end
    end else begin
      dmaregs_11 <= _GEN_117;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_12 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'hc == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_12 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_12 <= _GEN_118;
      end
    end else begin
      dmaregs_12 <= _GEN_118;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_13 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'hd == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_13 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_13 <= _GEN_119;
      end
    end else begin
      dmaregs_13 <= _GEN_119;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_14 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'he == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_14 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_14 <= _GEN_120;
      end
    end else begin
      dmaregs_14 <= _GEN_120;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_15 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'hf == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_15 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_15 <= _GEN_121;
      end
    end else begin
      dmaregs_15 <= _GEN_121;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_16 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h10 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_16 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_16 <= _GEN_122;
      end
    end else begin
      dmaregs_16 <= _GEN_122;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_17 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h11 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_17 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_17 <= _GEN_123;
      end
    end else begin
      dmaregs_17 <= _GEN_123;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_18 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h12 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_18 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_18 <= _GEN_124;
      end
    end else begin
      dmaregs_18 <= _GEN_124;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_19 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h13 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_19 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_19 <= _GEN_125;
      end
    end else begin
      dmaregs_19 <= _GEN_125;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_20 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h14 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_20 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_20 <= _GEN_126;
      end
    end else begin
      dmaregs_20 <= _GEN_126;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_21 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h15 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_21 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_21 <= _GEN_127;
      end
    end else begin
      dmaregs_21 <= _GEN_127;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_22 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h16 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_22 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_22 <= _GEN_128;
      end
    end else begin
      dmaregs_22 <= _GEN_128;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_23 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h17 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_23 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_23 <= _GEN_129;
      end
    end else begin
      dmaregs_23 <= _GEN_129;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_24 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_core_done) begin // @[dmaXilinx.scala 235:24]
      dmaregs_24 <= io_core_result; // @[dmaXilinx.scala 236:21]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h18 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_24 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_24 <= _GEN_130;
      end
    end else begin
      dmaregs_24 <= _GEN_130;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_25 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h19 == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_25 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_25 <= _GEN_131;
      end
    end else begin
      dmaregs_25 <= _GEN_131;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_26 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h1a == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_26 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_26 <= _GEN_132;
      end
    end else begin
      dmaregs_26 <= _GEN_132;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_27 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h1b == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_27 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_27 <= _GEN_133;
      end
    end else begin
      dmaregs_27 <= _GEN_133;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_28 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h1c == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_28 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_28 <= _GEN_134;
      end
    end else begin
      dmaregs_28 <= _GEN_134;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_29 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h1d == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_29 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_29 <= _GEN_135;
      end
    end else begin
      dmaregs_29 <= _GEN_135;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_30 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h1e == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_30 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_30 <= _GEN_136;
      end
    end else begin
      dmaregs_30 <= _GEN_136;
    end
    if (reset) begin // @[dmaXilinx.scala 15:26]
      dmaregs_31 <= 32'h0; // @[dmaXilinx.scala 15:26]
    end else if (io_host_WVALID & io_host_WREADY) begin // @[dmaXilinx.scala 199:43]
      if (5'h1f == h_wr_addr[6:2]) begin // @[dmaXilinx.scala 200:33]
        dmaregs_31 <= io_host_WDATA; // @[dmaXilinx.scala 200:33]
      end else begin
        dmaregs_31 <= _GEN_137;
      end
    end else begin
      dmaregs_31 <= _GEN_137;
    end
    if (reset) begin // @[dmaXilinx.scala 24:25]
      rstate <= 2'h0; // @[dmaXilinx.scala 24:25]
    end else if (2'h0 == rstate) begin // @[dmaXilinx.scala 37:20]
      if (rd_valid) begin // @[dmaXilinx.scala 39:28]
        rstate <= 2'h1; // @[dmaXilinx.scala 40:24]
      end
    end else if (2'h1 == rstate) begin // @[dmaXilinx.scala 37:20]
      if (io_mem_ARREADY) begin // @[dmaXilinx.scala 44:34]
        rstate <= 2'h2; // @[dmaXilinx.scala 45:24]
      end
    end else if (2'h2 == rstate) begin // @[dmaXilinx.scala 37:20]
      rstate <= _GEN_4;
    end
    if (reset) begin // @[dmaXilinx.scala 29:25]
      rd_len <= 8'h0; // @[dmaXilinx.scala 29:25]
    end else if (rd_valid) begin // @[dmaXilinx.scala 32:20]
      rd_len <= dmaregs_2[7:0]; // @[dmaXilinx.scala 33:16]
    end
    if (reset) begin // @[dmaXilinx.scala 30:26]
      rd_addr <= 32'h0; // @[dmaXilinx.scala 30:26]
    end else if (rd_valid) begin // @[dmaXilinx.scala 32:20]
      rd_addr <= dmaregs_1; // @[dmaXilinx.scala 34:17]
    end
    if (reset) begin // @[dmaXilinx.scala 63:25]
      rd_cnt <= 8'h0; // @[dmaXilinx.scala 63:25]
    end else if (rstate == 2'h0) begin // @[dmaXilinx.scala 65:32]
      rd_cnt <= 8'h0; // @[dmaXilinx.scala 66:16]
    end else if (_T_3) begin // @[dmaXilinx.scala 67:47]
      rd_cnt <= _rd_cnt_T_1; // @[dmaXilinx.scala 68:16]
    end
    if (reset) begin // @[dmaXilinx.scala 85:25]
      wstate <= 2'h0; // @[dmaXilinx.scala 85:25]
    end else if (2'h0 == wstate) begin // @[dmaXilinx.scala 105:20]
      if (wr_valid) begin // @[dmaXilinx.scala 107:28]
        wstate <= 2'h1; // @[dmaXilinx.scala 108:22]
      end
    end else if (2'h1 == wstate) begin // @[dmaXilinx.scala 105:20]
      if (io_mem_AWREADY) begin // @[dmaXilinx.scala 112:34]
        wstate <= 2'h2; // @[dmaXilinx.scala 113:24]
      end
    end else if (2'h2 == wstate) begin // @[dmaXilinx.scala 105:20]
      wstate <= _GEN_144;
    end else begin
      wstate <= _GEN_146;
    end
    if (reset) begin // @[dmaXilinx.scala 90:25]
      wr_cnt <= 8'h0; // @[dmaXilinx.scala 90:25]
    end else if (wstate == 2'h0) begin // @[dmaXilinx.scala 91:33]
      wr_cnt <= 8'h0; // @[dmaXilinx.scala 92:16]
    end else if (io_mem_WREADY & io_mem_WVALID) begin // @[dmaXilinx.scala 93:48]
      wr_cnt <= _wr_cnt_T_1; // @[dmaXilinx.scala 94:16]
    end
    if (reset) begin // @[dmaXilinx.scala 97:25]
      wr_len <= 8'h0; // @[dmaXilinx.scala 97:25]
    end else if (wr_valid) begin // @[dmaXilinx.scala 100:20]
      wr_len <= dmaregs_2[7:0]; // @[dmaXilinx.scala 101:16]
    end
    if (reset) begin // @[dmaXilinx.scala 98:26]
      wr_addr <= 32'h0; // @[dmaXilinx.scala 98:26]
    end else if (wr_valid) begin // @[dmaXilinx.scala 100:20]
      wr_addr <= dmaregs_1; // @[dmaXilinx.scala 102:17]
    end
    if (reset) begin // @[dmaXilinx.scala 146:27]
      h_rstate <= 1'h0; // @[dmaXilinx.scala 146:27]
    end else if (~h_rstate) begin // @[dmaXilinx.scala 148:22]
      h_rstate <= _GEN_183;
    end else if (h_rstate) begin // @[dmaXilinx.scala 148:22]
      if (io_host_RREADY) begin // @[dmaXilinx.scala 155:34]
        h_rstate <= 1'h0; // @[dmaXilinx.scala 156:26]
      end
    end
    if (reset) begin // @[dmaXilinx.scala 161:28]
      h_rd_addr <= 32'h0; // @[dmaXilinx.scala 161:28]
    end else if (io_host_ARREADY & io_host_ARVALID) begin // @[dmaXilinx.scala 162:46]
      h_rd_addr <= io_host_ARADDR; // @[dmaXilinx.scala 163:19]
    end
    if (reset) begin // @[dmaXilinx.scala 174:27]
      h_wstate <= 2'h0; // @[dmaXilinx.scala 174:27]
    end else if (2'h0 == h_wstate) begin // @[dmaXilinx.scala 176:22]
      if (io_host_AWVALID) begin // @[dmaXilinx.scala 178:35]
        h_wstate <= 2'h1; // @[dmaXilinx.scala 179:26]
      end
    end else if (2'h1 == h_wstate) begin // @[dmaXilinx.scala 176:22]
      if (io_host_WVALID) begin // @[dmaXilinx.scala 183:34]
        h_wstate <= 2'h2; // @[dmaXilinx.scala 184:26]
      end
    end else if (2'h2 == h_wstate) begin // @[dmaXilinx.scala 176:22]
      h_wstate <= _GEN_222;
    end
    if (reset) begin // @[dmaXilinx.scala 194:28]
      h_wr_addr <= 32'h0; // @[dmaXilinx.scala 194:28]
    end else if (io_host_AWVALID & io_host_AWREADY) begin // @[dmaXilinx.scala 195:46]
      h_wr_addr <= io_host_AWADDR; // @[dmaXilinx.scala 196:19]
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
  dmaregs_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  dmaregs_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  dmaregs_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  dmaregs_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  dmaregs_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  dmaregs_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  dmaregs_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  dmaregs_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  dmaregs_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  dmaregs_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  dmaregs_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  dmaregs_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  dmaregs_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  dmaregs_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  dmaregs_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  dmaregs_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  dmaregs_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  dmaregs_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  dmaregs_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  dmaregs_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  dmaregs_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  dmaregs_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  dmaregs_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  dmaregs_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  dmaregs_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  dmaregs_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  dmaregs_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  dmaregs_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  dmaregs_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  dmaregs_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  dmaregs_30 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  dmaregs_31 = _RAND_31[31:0];
  _RAND_32 = {1{`RANDOM}};
  rstate = _RAND_32[1:0];
  _RAND_33 = {1{`RANDOM}};
  rd_len = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  rd_addr = _RAND_34[31:0];
  _RAND_35 = {1{`RANDOM}};
  rd_cnt = _RAND_35[7:0];
  _RAND_36 = {1{`RANDOM}};
  wstate = _RAND_36[1:0];
  _RAND_37 = {1{`RANDOM}};
  wr_cnt = _RAND_37[7:0];
  _RAND_38 = {1{`RANDOM}};
  wr_len = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  wr_addr = _RAND_39[31:0];
  _RAND_40 = {1{`RANDOM}};
  h_rstate = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  h_rd_addr = _RAND_41[31:0];
  _RAND_42 = {1{`RANDOM}};
  h_wstate = _RAND_42[1:0];
  _RAND_43 = {1{`RANDOM}};
  h_wr_addr = _RAND_43[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LFSR(
  input        clock,
  input        reset,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h7e1726c : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  wire  lfsr_clock; // @[SNG.scala 94:22]
  wire  lfsr_reset; // @[SNG.scala 94:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 94:22]
  LFSR lfsr ( // @[SNG.scala 94:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 99:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 100:30]
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
  assign io_product = ~(SNG2_io_stoNum1 ^ stoWeight); // @[SDOT.scala 27:19]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'hfc2e4d8 : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  wire  lfsr_clock; // @[SNG.scala 94:22]
  wire  lfsr_reset; // @[SNG.scala 94:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 94:22]
  LFSR_1 lfsr ( // @[SNG.scala 94:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 99:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 100:30]
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
  assign io_product = ~(SNG2_io_stoNum1 ^ stoWeight); // @[SDOT.scala 27:19]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h17a45744 : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  wire  lfsr_clock; // @[SNG.scala 94:22]
  wire  lfsr_reset; // @[SNG.scala 94:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 94:22]
  LFSR_2 lfsr ( // @[SNG.scala 94:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 99:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 100:30]
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
  assign io_product = ~(SNG2_io_stoNum1 ^ stoWeight); // @[SDOT.scala 27:19]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h1f85c9b0 : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  wire  lfsr_clock; // @[SNG.scala 94:22]
  wire  lfsr_reset; // @[SNG.scala 94:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 94:22]
  LFSR_3 lfsr ( // @[SNG.scala 94:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 99:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 100:30]
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
  assign io_product = ~(SNG2_io_stoNum1 ^ stoWeight); // @[SDOT.scala 27:19]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h27673c1c : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  wire  lfsr_clock; // @[SNG.scala 94:22]
  wire  lfsr_reset; // @[SNG.scala 94:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 94:22]
  LFSR_4 lfsr ( // @[SNG.scala 94:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 99:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 100:30]
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
  assign io_product = ~(SNG2_io_stoNum1 ^ stoWeight); // @[SDOT.scala 27:19]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h2f48ae88 : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  wire  lfsr_clock; // @[SNG.scala 94:22]
  wire  lfsr_reset; // @[SNG.scala 94:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 94:22]
  LFSR_5 lfsr ( // @[SNG.scala 94:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 99:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 100:30]
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
  assign io_product = ~(SNG2_io_stoNum1 ^ stoWeight); // @[SDOT.scala 27:19]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h372a20f4 : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  wire  lfsr_clock; // @[SNG.scala 94:22]
  wire  lfsr_reset; // @[SNG.scala 94:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 94:22]
  LFSR_6 lfsr ( // @[SNG.scala 94:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 99:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 100:30]
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
  assign io_product = ~(SNG2_io_stoNum1 ^ stoWeight); // @[SDOT.scala 27:19]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h3f0b9360 : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  wire  lfsr_clock; // @[SNG.scala 94:22]
  wire  lfsr_reset; // @[SNG.scala 94:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 94:22]
  LFSR_7 lfsr ( // @[SNG.scala 94:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 99:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 100:30]
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
  assign io_product = ~(SNG2_io_stoNum1 ^ stoWeight); // @[SDOT.scala 27:19]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h46ed05cc : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  wire  lfsr_clock; // @[SNG.scala 94:22]
  wire  lfsr_reset; // @[SNG.scala 94:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 94:22]
  LFSR_8 lfsr ( // @[SNG.scala 94:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 99:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 100:30]
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
  assign io_product = ~(SNG2_io_stoNum1 ^ stoWeight); // @[SDOT.scala 27:19]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h4ece7838 : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  wire  lfsr_clock; // @[SNG.scala 94:22]
  wire  lfsr_reset; // @[SNG.scala 94:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 94:22]
  LFSR_9 lfsr ( // @[SNG.scala 94:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 99:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 100:30]
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
  assign io_product = ~(SNG2_io_stoNum1 ^ stoWeight); // @[SDOT.scala 27:19]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h56afeaa4 : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  wire  lfsr_clock; // @[SNG.scala 94:22]
  wire  lfsr_reset; // @[SNG.scala 94:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 94:22]
  LFSR_10 lfsr ( // @[SNG.scala 94:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 99:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 100:30]
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
  assign io_product = ~(SNG2_io_stoNum1 ^ stoWeight); // @[SDOT.scala 27:19]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h5e915d10 : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  wire  lfsr_clock; // @[SNG.scala 94:22]
  wire  lfsr_reset; // @[SNG.scala 94:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 94:22]
  LFSR_11 lfsr ( // @[SNG.scala 94:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 99:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 100:30]
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
  assign io_product = ~(SNG2_io_stoNum1 ^ stoWeight); // @[SDOT.scala 27:19]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h6672cf7c : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  wire  lfsr_clock; // @[SNG.scala 94:22]
  wire  lfsr_reset; // @[SNG.scala 94:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 94:22]
  LFSR_12 lfsr ( // @[SNG.scala 94:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 99:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 100:30]
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
  assign io_product = ~(SNG2_io_stoNum1 ^ stoWeight); // @[SDOT.scala 27:19]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h6e5441e8 : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  wire  lfsr_clock; // @[SNG.scala 94:22]
  wire  lfsr_reset; // @[SNG.scala 94:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 94:22]
  LFSR_13 lfsr ( // @[SNG.scala 94:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 99:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 100:30]
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
  assign io_product = ~(SNG2_io_stoNum1 ^ stoWeight); // @[SDOT.scala 27:19]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h7635b454 : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  wire  lfsr_clock; // @[SNG.scala 94:22]
  wire  lfsr_reset; // @[SNG.scala 94:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 94:22]
  LFSR_14 lfsr ( // @[SNG.scala 94:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 99:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 100:30]
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
  assign io_product = ~(SNG2_io_stoNum1 ^ stoWeight); // @[SDOT.scala 27:19]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h7e1726c0 : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  wire  lfsr_clock; // @[SNG.scala 94:22]
  wire  lfsr_reset; // @[SNG.scala 94:22]
  wire [7:0] lfsr_io_out; // @[SNG.scala 94:22]
  LFSR_15 lfsr ( // @[SNG.scala 94:22]
    .clock(lfsr_clock),
    .reset(lfsr_reset),
    .io_out(lfsr_io_out)
  );
  assign io_stoNum1 = $signed(io_binNum1) > $signed(lfsr_io_out); // @[SNG.scala 99:30]
  assign io_stoNum2 = $signed(io_binNum2) > $signed(lfsr_io_out); // @[SNG.scala 100:30]
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
  assign io_product = ~(SNG2_io_stoNum1 ^ stoWeight); // @[SDOT.scala 27:19]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h1ec4950b : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h3d892a16 : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h5c4dbf21 : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
  reg [31:0] state; // @[SNG.scala 52:24]
  wire  bit_ = state[31] ^ state[21] ^ state[1] ^ state[0]; // @[SNG.scala 54:48]
  wire [32:0] _nextState_T = {state, 1'h0}; // @[SNG.scala 56:27]
  wire [32:0] _GEN_0 = {{32'd0}, bit_}; // @[SNG.scala 56:32]
  wire [32:0] nextState = _nextState_T | _GEN_0; // @[SNG.scala 56:32]
  wire [32:0] _GEN_1 = reset ? 33'h7b12542c : nextState; // @[SNG.scala 52:{24,24} 58:11]
  assign io_out = state[19:12]; // @[SNG.scala 60:34]
  always @(posedge clock) begin
    state <= _GEN_1[31:0]; // @[SNG.scala 52:{24,24} 58:11]
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
module Pipe(
  input   clock,
  input   reset,
  input   io_enq_valid,
  output  io_deq_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg  io_deq_v; // @[Valid.scala 127:22]
  reg  io_deq_outPipe_valid; // @[Valid.scala 127:22]
  reg  io_deq_outPipe_valid_1; // @[Valid.scala 127:22]
  reg  io_deq_outPipe_valid_2; // @[Valid.scala 127:22]
  reg  io_deq_outPipe_valid_3; // @[Valid.scala 127:22]
  reg  io_deq_outPipe_valid_4; // @[Valid.scala 127:22]
  assign io_deq_valid = io_deq_outPipe_valid_4; // @[Valid.scala 122:21 123:17]
  always @(posedge clock) begin
    if (reset) begin // @[Valid.scala 127:22]
      io_deq_v <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      io_deq_v <= io_enq_valid; // @[Valid.scala 127:22]
    end
    if (reset) begin // @[Valid.scala 127:22]
      io_deq_outPipe_valid <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      io_deq_outPipe_valid <= io_deq_v; // @[Valid.scala 127:22]
    end
    if (reset) begin // @[Valid.scala 127:22]
      io_deq_outPipe_valid_1 <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      io_deq_outPipe_valid_1 <= io_deq_outPipe_valid; // @[Valid.scala 127:22]
    end
    if (reset) begin // @[Valid.scala 127:22]
      io_deq_outPipe_valid_2 <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      io_deq_outPipe_valid_2 <= io_deq_outPipe_valid_1; // @[Valid.scala 127:22]
    end
    if (reset) begin // @[Valid.scala 127:22]
      io_deq_outPipe_valid_3 <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      io_deq_outPipe_valid_3 <= io_deq_outPipe_valid_2; // @[Valid.scala 127:22]
    end
    if (reset) begin // @[Valid.scala 127:22]
      io_deq_outPipe_valid_4 <= 1'h0; // @[Valid.scala 127:22]
    end else begin
      io_deq_outPipe_valid_4 <= io_deq_outPipe_valid_3; // @[Valid.scala 127:22]
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
  io_deq_v = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_deq_outPipe_valid = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  io_deq_outPipe_valid_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_deq_outPipe_valid_2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_deq_outPipe_valid_3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_deq_outPipe_valid_4 = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module StoComputeSimple(
  input         clock,
  input         reset,
  input         io_core_start,
  input  [31:0] io_core_input_0,
  input  [31:0] io_core_input_1,
  input  [31:0] io_core_input_2,
  input  [31:0] io_core_input_3,
  input  [31:0] io_core_weight_0,
  input  [31:0] io_core_weight_1,
  input  [31:0] io_core_weight_2,
  input  [31:0] io_core_weight_3,
  output        io_core_done,
  output [31:0] io_core_result,
  output        io_interrupt
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
`endif // RANDOMIZE_REG_INIT
  wire  dot_clock; // @[compute.scala 82:21]
  wire  dot_reset; // @[compute.scala 82:21]
  wire [7:0] dot_io_inputs_0; // @[compute.scala 82:21]
  wire [7:0] dot_io_inputs_1; // @[compute.scala 82:21]
  wire [7:0] dot_io_inputs_2; // @[compute.scala 82:21]
  wire [7:0] dot_io_inputs_3; // @[compute.scala 82:21]
  wire [7:0] dot_io_inputs_4; // @[compute.scala 82:21]
  wire [7:0] dot_io_inputs_5; // @[compute.scala 82:21]
  wire [7:0] dot_io_inputs_6; // @[compute.scala 82:21]
  wire [7:0] dot_io_inputs_7; // @[compute.scala 82:21]
  wire [7:0] dot_io_inputs_8; // @[compute.scala 82:21]
  wire [7:0] dot_io_inputs_9; // @[compute.scala 82:21]
  wire [7:0] dot_io_inputs_10; // @[compute.scala 82:21]
  wire [7:0] dot_io_inputs_11; // @[compute.scala 82:21]
  wire [7:0] dot_io_inputs_12; // @[compute.scala 82:21]
  wire [7:0] dot_io_inputs_13; // @[compute.scala 82:21]
  wire [7:0] dot_io_inputs_14; // @[compute.scala 82:21]
  wire [7:0] dot_io_inputs_15; // @[compute.scala 82:21]
  wire [7:0] dot_io_weights_0; // @[compute.scala 82:21]
  wire [7:0] dot_io_weights_1; // @[compute.scala 82:21]
  wire [7:0] dot_io_weights_2; // @[compute.scala 82:21]
  wire [7:0] dot_io_weights_3; // @[compute.scala 82:21]
  wire [7:0] dot_io_weights_4; // @[compute.scala 82:21]
  wire [7:0] dot_io_weights_5; // @[compute.scala 82:21]
  wire [7:0] dot_io_weights_6; // @[compute.scala 82:21]
  wire [7:0] dot_io_weights_7; // @[compute.scala 82:21]
  wire [7:0] dot_io_weights_8; // @[compute.scala 82:21]
  wire [7:0] dot_io_weights_9; // @[compute.scala 82:21]
  wire [7:0] dot_io_weights_10; // @[compute.scala 82:21]
  wire [7:0] dot_io_weights_11; // @[compute.scala 82:21]
  wire [7:0] dot_io_weights_12; // @[compute.scala 82:21]
  wire [7:0] dot_io_weights_13; // @[compute.scala 82:21]
  wire [7:0] dot_io_weights_14; // @[compute.scala 82:21]
  wire [7:0] dot_io_weights_15; // @[compute.scala 82:21]
  wire  dot_io_psum; // @[compute.scala 82:21]
  wire  pipe_clock; // @[compute.scala 87:22]
  wire  pipe_reset; // @[compute.scala 87:22]
  wire  pipe_io_enq_valid; // @[compute.scala 87:22]
  wire  pipe_io_deq_valid; // @[compute.scala 87:22]
  reg  acc_vld; // @[compute.scala 94:26]
  reg  acc_done; // @[compute.scala 95:27]
  reg [9:0] acc_cnt; // @[compute.scala 96:26]
  reg [31:0] acc; // @[compute.scala 97:22]
  wire  vld = pipe_io_deq_valid; // @[compute.scala 88:19 92:9]
  wire  _GEN_0 = vld | acc_vld; // @[compute.scala 100:20 101:17 103:17]
  wire [9:0] _acc_cnt_T_1 = acc_cnt + 10'h1; // @[compute.scala 110:28]
  wire [31:0] _GEN_45 = {{31'd0}, dot_io_psum}; // @[compute.scala 111:20]
  wire [31:0] _acc_T_1 = acc + _GEN_45; // @[compute.scala 111:20]
  wire [31:0] _io_core_result_T_2 = acc - 32'h200; // @[compute.scala 147:68]
  wire [28:0] _GEN_46 = _io_core_result_T_2[31:3]; // @[compute.scala 147:71]
  wire [31:0] _io_core_result_T_4 = {{3{_GEN_46[28]}},_GEN_46}; // @[compute.scala 147:113]
  reg [7:0] input_0; // @[compute.scala 171:24]
  reg [7:0] input_1; // @[compute.scala 171:24]
  reg [7:0] input_2; // @[compute.scala 171:24]
  reg [7:0] input_3; // @[compute.scala 171:24]
  reg [7:0] input_4; // @[compute.scala 171:24]
  reg [7:0] input_5; // @[compute.scala 171:24]
  reg [7:0] input_6; // @[compute.scala 171:24]
  reg [7:0] input_7; // @[compute.scala 171:24]
  reg [7:0] input_8; // @[compute.scala 171:24]
  reg [7:0] input_9; // @[compute.scala 171:24]
  reg [7:0] input_10; // @[compute.scala 171:24]
  reg [7:0] input_11; // @[compute.scala 171:24]
  reg [7:0] input_12; // @[compute.scala 171:24]
  reg [7:0] input_13; // @[compute.scala 171:24]
  reg [7:0] input_14; // @[compute.scala 171:24]
  reg [7:0] input_15; // @[compute.scala 171:24]
  reg [7:0] weight_0; // @[compute.scala 172:25]
  reg [7:0] weight_1; // @[compute.scala 172:25]
  reg [7:0] weight_2; // @[compute.scala 172:25]
  reg [7:0] weight_3; // @[compute.scala 172:25]
  reg [7:0] weight_4; // @[compute.scala 172:25]
  reg [7:0] weight_5; // @[compute.scala 172:25]
  reg [7:0] weight_6; // @[compute.scala 172:25]
  reg [7:0] weight_7; // @[compute.scala 172:25]
  reg [7:0] weight_8; // @[compute.scala 172:25]
  reg [7:0] weight_9; // @[compute.scala 172:25]
  reg [7:0] weight_10; // @[compute.scala 172:25]
  reg [7:0] weight_11; // @[compute.scala 172:25]
  reg [7:0] weight_12; // @[compute.scala 172:25]
  reg [7:0] weight_13; // @[compute.scala 172:25]
  reg [7:0] weight_14; // @[compute.scala 172:25]
  reg [7:0] weight_15; // @[compute.scala 172:25]
  wire [7:0] _input_0_T_1 = io_core_input_0[7:0]; // @[compute.scala 177:72]
  wire [7:0] _weight_0_T_1 = io_core_weight_0[7:0]; // @[compute.scala 178:74]
  wire [7:0] _input_1_T_1 = io_core_input_0[15:8]; // @[compute.scala 177:72]
  wire [7:0] _weight_1_T_1 = io_core_weight_0[15:8]; // @[compute.scala 178:74]
  wire [7:0] _input_2_T_1 = io_core_input_0[23:16]; // @[compute.scala 177:72]
  wire [7:0] _weight_2_T_1 = io_core_weight_0[23:16]; // @[compute.scala 178:74]
  wire [7:0] _input_3_T_1 = io_core_input_0[31:24]; // @[compute.scala 177:72]
  wire [7:0] _weight_3_T_1 = io_core_weight_0[31:24]; // @[compute.scala 178:74]
  wire [7:0] _input_4_T_1 = io_core_input_1[7:0]; // @[compute.scala 177:72]
  wire [7:0] _weight_4_T_1 = io_core_weight_1[7:0]; // @[compute.scala 178:74]
  wire [7:0] _input_5_T_1 = io_core_input_1[15:8]; // @[compute.scala 177:72]
  wire [7:0] _weight_5_T_1 = io_core_weight_1[15:8]; // @[compute.scala 178:74]
  wire [7:0] _input_6_T_1 = io_core_input_1[23:16]; // @[compute.scala 177:72]
  wire [7:0] _weight_6_T_1 = io_core_weight_1[23:16]; // @[compute.scala 178:74]
  wire [7:0] _input_7_T_1 = io_core_input_1[31:24]; // @[compute.scala 177:72]
  wire [7:0] _weight_7_T_1 = io_core_weight_1[31:24]; // @[compute.scala 178:74]
  wire [7:0] _input_8_T_1 = io_core_input_2[7:0]; // @[compute.scala 177:72]
  wire [7:0] _weight_8_T_1 = io_core_weight_2[7:0]; // @[compute.scala 178:74]
  wire [7:0] _input_9_T_1 = io_core_input_2[15:8]; // @[compute.scala 177:72]
  wire [7:0] _weight_9_T_1 = io_core_weight_2[15:8]; // @[compute.scala 178:74]
  wire [7:0] _input_10_T_1 = io_core_input_2[23:16]; // @[compute.scala 177:72]
  wire [7:0] _weight_10_T_1 = io_core_weight_2[23:16]; // @[compute.scala 178:74]
  wire [7:0] _input_11_T_1 = io_core_input_2[31:24]; // @[compute.scala 177:72]
  wire [7:0] _weight_11_T_1 = io_core_weight_2[31:24]; // @[compute.scala 178:74]
  wire [7:0] _input_12_T_1 = io_core_input_3[7:0]; // @[compute.scala 177:72]
  wire [7:0] _weight_12_T_1 = io_core_weight_3[7:0]; // @[compute.scala 178:74]
  wire [7:0] _input_13_T_1 = io_core_input_3[15:8]; // @[compute.scala 177:72]
  wire [7:0] _weight_13_T_1 = io_core_weight_3[15:8]; // @[compute.scala 178:74]
  wire [7:0] _input_14_T_1 = io_core_input_3[23:16]; // @[compute.scala 177:72]
  wire [7:0] _weight_14_T_1 = io_core_weight_3[23:16]; // @[compute.scala 178:74]
  wire [7:0] _input_15_T_1 = io_core_input_3[31:24]; // @[compute.scala 177:72]
  wire [7:0] _weight_15_T_1 = io_core_weight_3[31:24]; // @[compute.scala 178:74]
  SDOT dot ( // @[compute.scala 82:21]
    .clock(dot_clock),
    .reset(dot_reset),
    .io_inputs_0(dot_io_inputs_0),
    .io_inputs_1(dot_io_inputs_1),
    .io_inputs_2(dot_io_inputs_2),
    .io_inputs_3(dot_io_inputs_3),
    .io_inputs_4(dot_io_inputs_4),
    .io_inputs_5(dot_io_inputs_5),
    .io_inputs_6(dot_io_inputs_6),
    .io_inputs_7(dot_io_inputs_7),
    .io_inputs_8(dot_io_inputs_8),
    .io_inputs_9(dot_io_inputs_9),
    .io_inputs_10(dot_io_inputs_10),
    .io_inputs_11(dot_io_inputs_11),
    .io_inputs_12(dot_io_inputs_12),
    .io_inputs_13(dot_io_inputs_13),
    .io_inputs_14(dot_io_inputs_14),
    .io_inputs_15(dot_io_inputs_15),
    .io_weights_0(dot_io_weights_0),
    .io_weights_1(dot_io_weights_1),
    .io_weights_2(dot_io_weights_2),
    .io_weights_3(dot_io_weights_3),
    .io_weights_4(dot_io_weights_4),
    .io_weights_5(dot_io_weights_5),
    .io_weights_6(dot_io_weights_6),
    .io_weights_7(dot_io_weights_7),
    .io_weights_8(dot_io_weights_8),
    .io_weights_9(dot_io_weights_9),
    .io_weights_10(dot_io_weights_10),
    .io_weights_11(dot_io_weights_11),
    .io_weights_12(dot_io_weights_12),
    .io_weights_13(dot_io_weights_13),
    .io_weights_14(dot_io_weights_14),
    .io_weights_15(dot_io_weights_15),
    .io_psum(dot_io_psum)
  );
  Pipe pipe ( // @[compute.scala 87:22]
    .clock(pipe_clock),
    .reset(pipe_reset),
    .io_enq_valid(pipe_io_enq_valid),
    .io_deq_valid(pipe_io_deq_valid)
  );
  assign io_core_done = acc_done; // @[compute.scala 128:18]
  assign io_core_result = acc_done ? _io_core_result_T_4 : 32'h0; // @[compute.scala 146:23 147:28 150:28]
  assign io_interrupt = acc_done; // @[compute.scala 187:18]
  assign dot_clock = clock;
  assign dot_reset = reset;
  assign dot_io_inputs_0 = input_0; // @[compute.scala 183:19]
  assign dot_io_inputs_1 = input_1; // @[compute.scala 183:19]
  assign dot_io_inputs_2 = input_2; // @[compute.scala 183:19]
  assign dot_io_inputs_3 = input_3; // @[compute.scala 183:19]
  assign dot_io_inputs_4 = input_4; // @[compute.scala 183:19]
  assign dot_io_inputs_5 = input_5; // @[compute.scala 183:19]
  assign dot_io_inputs_6 = input_6; // @[compute.scala 183:19]
  assign dot_io_inputs_7 = input_7; // @[compute.scala 183:19]
  assign dot_io_inputs_8 = input_8; // @[compute.scala 183:19]
  assign dot_io_inputs_9 = input_9; // @[compute.scala 183:19]
  assign dot_io_inputs_10 = input_10; // @[compute.scala 183:19]
  assign dot_io_inputs_11 = input_11; // @[compute.scala 183:19]
  assign dot_io_inputs_12 = input_12; // @[compute.scala 183:19]
  assign dot_io_inputs_13 = input_13; // @[compute.scala 183:19]
  assign dot_io_inputs_14 = input_14; // @[compute.scala 183:19]
  assign dot_io_inputs_15 = input_15; // @[compute.scala 183:19]
  assign dot_io_weights_0 = weight_0; // @[compute.scala 184:20]
  assign dot_io_weights_1 = weight_1; // @[compute.scala 184:20]
  assign dot_io_weights_2 = weight_2; // @[compute.scala 184:20]
  assign dot_io_weights_3 = weight_3; // @[compute.scala 184:20]
  assign dot_io_weights_4 = weight_4; // @[compute.scala 184:20]
  assign dot_io_weights_5 = weight_5; // @[compute.scala 184:20]
  assign dot_io_weights_6 = weight_6; // @[compute.scala 184:20]
  assign dot_io_weights_7 = weight_7; // @[compute.scala 184:20]
  assign dot_io_weights_8 = weight_8; // @[compute.scala 184:20]
  assign dot_io_weights_9 = weight_9; // @[compute.scala 184:20]
  assign dot_io_weights_10 = weight_10; // @[compute.scala 184:20]
  assign dot_io_weights_11 = weight_11; // @[compute.scala 184:20]
  assign dot_io_weights_12 = weight_12; // @[compute.scala 184:20]
  assign dot_io_weights_13 = weight_13; // @[compute.scala 184:20]
  assign dot_io_weights_14 = weight_14; // @[compute.scala 184:20]
  assign dot_io_weights_15 = weight_15; // @[compute.scala 184:20]
  assign pipe_clock = clock;
  assign pipe_reset = reset;
  assign pipe_io_enq_valid = io_core_start; // @[compute.scala 90:23]
  always @(posedge clock) begin
    if (reset) begin // @[compute.scala 94:26]
      acc_vld <= 1'h0; // @[compute.scala 94:26]
    end else if (io_core_start | acc_done) begin // @[compute.scala 98:36]
      acc_vld <= 1'h0; // @[compute.scala 99:17]
    end else begin
      acc_vld <= _GEN_0;
    end
    if (reset) begin // @[compute.scala 95:27]
      acc_done <= 1'h0; // @[compute.scala 95:27]
    end else begin
      acc_done <= acc_cnt == 10'h3ff; // @[compute.scala 117:14]
    end
    if (reset) begin // @[compute.scala 96:26]
      acc_cnt <= 10'h0; // @[compute.scala 96:26]
    end else if (io_core_start) begin // @[compute.scala 106:24]
      acc_cnt <= 10'h0; // @[compute.scala 107:17]
    end else if (acc_vld) begin // @[compute.scala 109:24]
      acc_cnt <= _acc_cnt_T_1; // @[compute.scala 110:17]
    end
    if (reset) begin // @[compute.scala 97:22]
      acc <= 32'h0; // @[compute.scala 97:22]
    end else if (io_core_start) begin // @[compute.scala 106:24]
      acc <= 32'h0; // @[compute.scala 108:13]
    end else if (acc_vld) begin // @[compute.scala 109:24]
      acc <= _acc_T_1; // @[compute.scala 111:13]
    end
    if (reset) begin // @[compute.scala 171:24]
      input_0 <= 8'sh0; // @[compute.scala 171:24]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      input_0 <= _input_0_T_1; // @[compute.scala 177:32]
    end
    if (reset) begin // @[compute.scala 171:24]
      input_1 <= 8'sh0; // @[compute.scala 171:24]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      input_1 <= _input_1_T_1; // @[compute.scala 177:32]
    end
    if (reset) begin // @[compute.scala 171:24]
      input_2 <= 8'sh0; // @[compute.scala 171:24]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      input_2 <= _input_2_T_1; // @[compute.scala 177:32]
    end
    if (reset) begin // @[compute.scala 171:24]
      input_3 <= 8'sh0; // @[compute.scala 171:24]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      input_3 <= _input_3_T_1; // @[compute.scala 177:32]
    end
    if (reset) begin // @[compute.scala 171:24]
      input_4 <= 8'sh0; // @[compute.scala 171:24]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      input_4 <= _input_4_T_1; // @[compute.scala 177:32]
    end
    if (reset) begin // @[compute.scala 171:24]
      input_5 <= 8'sh0; // @[compute.scala 171:24]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      input_5 <= _input_5_T_1; // @[compute.scala 177:32]
    end
    if (reset) begin // @[compute.scala 171:24]
      input_6 <= 8'sh0; // @[compute.scala 171:24]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      input_6 <= _input_6_T_1; // @[compute.scala 177:32]
    end
    if (reset) begin // @[compute.scala 171:24]
      input_7 <= 8'sh0; // @[compute.scala 171:24]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      input_7 <= _input_7_T_1; // @[compute.scala 177:32]
    end
    if (reset) begin // @[compute.scala 171:24]
      input_8 <= 8'sh0; // @[compute.scala 171:24]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      input_8 <= _input_8_T_1; // @[compute.scala 177:32]
    end
    if (reset) begin // @[compute.scala 171:24]
      input_9 <= 8'sh0; // @[compute.scala 171:24]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      input_9 <= _input_9_T_1; // @[compute.scala 177:32]
    end
    if (reset) begin // @[compute.scala 171:24]
      input_10 <= 8'sh0; // @[compute.scala 171:24]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      input_10 <= _input_10_T_1; // @[compute.scala 177:32]
    end
    if (reset) begin // @[compute.scala 171:24]
      input_11 <= 8'sh0; // @[compute.scala 171:24]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      input_11 <= _input_11_T_1; // @[compute.scala 177:32]
    end
    if (reset) begin // @[compute.scala 171:24]
      input_12 <= 8'sh0; // @[compute.scala 171:24]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      input_12 <= _input_12_T_1; // @[compute.scala 177:32]
    end
    if (reset) begin // @[compute.scala 171:24]
      input_13 <= 8'sh0; // @[compute.scala 171:24]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      input_13 <= _input_13_T_1; // @[compute.scala 177:32]
    end
    if (reset) begin // @[compute.scala 171:24]
      input_14 <= 8'sh0; // @[compute.scala 171:24]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      input_14 <= _input_14_T_1; // @[compute.scala 177:32]
    end
    if (reset) begin // @[compute.scala 171:24]
      input_15 <= 8'sh0; // @[compute.scala 171:24]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      input_15 <= _input_15_T_1; // @[compute.scala 177:32]
    end
    if (reset) begin // @[compute.scala 172:25]
      weight_0 <= 8'sh0; // @[compute.scala 172:25]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      weight_0 <= _weight_0_T_1; // @[compute.scala 178:33]
    end
    if (reset) begin // @[compute.scala 172:25]
      weight_1 <= 8'sh0; // @[compute.scala 172:25]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      weight_1 <= _weight_1_T_1; // @[compute.scala 178:33]
    end
    if (reset) begin // @[compute.scala 172:25]
      weight_2 <= 8'sh0; // @[compute.scala 172:25]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      weight_2 <= _weight_2_T_1; // @[compute.scala 178:33]
    end
    if (reset) begin // @[compute.scala 172:25]
      weight_3 <= 8'sh0; // @[compute.scala 172:25]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      weight_3 <= _weight_3_T_1; // @[compute.scala 178:33]
    end
    if (reset) begin // @[compute.scala 172:25]
      weight_4 <= 8'sh0; // @[compute.scala 172:25]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      weight_4 <= _weight_4_T_1; // @[compute.scala 178:33]
    end
    if (reset) begin // @[compute.scala 172:25]
      weight_5 <= 8'sh0; // @[compute.scala 172:25]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      weight_5 <= _weight_5_T_1; // @[compute.scala 178:33]
    end
    if (reset) begin // @[compute.scala 172:25]
      weight_6 <= 8'sh0; // @[compute.scala 172:25]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      weight_6 <= _weight_6_T_1; // @[compute.scala 178:33]
    end
    if (reset) begin // @[compute.scala 172:25]
      weight_7 <= 8'sh0; // @[compute.scala 172:25]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      weight_7 <= _weight_7_T_1; // @[compute.scala 178:33]
    end
    if (reset) begin // @[compute.scala 172:25]
      weight_8 <= 8'sh0; // @[compute.scala 172:25]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      weight_8 <= _weight_8_T_1; // @[compute.scala 178:33]
    end
    if (reset) begin // @[compute.scala 172:25]
      weight_9 <= 8'sh0; // @[compute.scala 172:25]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      weight_9 <= _weight_9_T_1; // @[compute.scala 178:33]
    end
    if (reset) begin // @[compute.scala 172:25]
      weight_10 <= 8'sh0; // @[compute.scala 172:25]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      weight_10 <= _weight_10_T_1; // @[compute.scala 178:33]
    end
    if (reset) begin // @[compute.scala 172:25]
      weight_11 <= 8'sh0; // @[compute.scala 172:25]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      weight_11 <= _weight_11_T_1; // @[compute.scala 178:33]
    end
    if (reset) begin // @[compute.scala 172:25]
      weight_12 <= 8'sh0; // @[compute.scala 172:25]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      weight_12 <= _weight_12_T_1; // @[compute.scala 178:33]
    end
    if (reset) begin // @[compute.scala 172:25]
      weight_13 <= 8'sh0; // @[compute.scala 172:25]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      weight_13 <= _weight_13_T_1; // @[compute.scala 178:33]
    end
    if (reset) begin // @[compute.scala 172:25]
      weight_14 <= 8'sh0; // @[compute.scala 172:25]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      weight_14 <= _weight_14_T_1; // @[compute.scala 178:33]
    end
    if (reset) begin // @[compute.scala 172:25]
      weight_15 <= 8'sh0; // @[compute.scala 172:25]
    end else if (io_core_start) begin // @[compute.scala 174:24]
      weight_15 <= _weight_15_T_1; // @[compute.scala 178:33]
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
  acc_vld = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  acc_done = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  acc_cnt = _RAND_2[9:0];
  _RAND_3 = {1{`RANDOM}};
  acc = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  input_0 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  input_1 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  input_2 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  input_3 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  input_4 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  input_5 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  input_6 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  input_7 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  input_8 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  input_9 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  input_10 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  input_11 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  input_12 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  input_13 = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  input_14 = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  input_15 = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  weight_0 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  weight_1 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  weight_2 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  weight_3 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  weight_4 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  weight_5 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  weight_6 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  weight_7 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  weight_8 = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  weight_9 = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  weight_10 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  weight_11 = _RAND_31[7:0];
  _RAND_32 = {1{`RANDOM}};
  weight_12 = _RAND_32[7:0];
  _RAND_33 = {1{`RANDOM}};
  weight_13 = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  weight_14 = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  weight_15 = _RAND_35[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module StoShellSimple(
  input         clock,
  input         reset,
  output        io_mem_AWVALID,
  input         io_mem_AWREADY,
  output [31:0] io_mem_AWADDR,
  output        io_mem_AWID,
  output [7:0]  io_mem_AWLEN,
  output [2:0]  io_mem_AWSIZE,
  output [1:0]  io_mem_AWBURST,
  output [1:0]  io_mem_AWLOCK,
  output [3:0]  io_mem_AWCACHE,
  output [2:0]  io_mem_AWPROT,
  output [3:0]  io_mem_AWQOS,
  output [3:0]  io_mem_AWREGION,
  output        io_mem_WVALID,
  input         io_mem_WREADY,
  output [31:0] io_mem_WDATA,
  output [3:0]  io_mem_WSTRB,
  output        io_mem_WLAST,
  output        io_mem_WID,
  input         io_mem_BVALID,
  output        io_mem_BREADY,
  input  [1:0]  io_mem_BRESP,
  input         io_mem_BID,
  output        io_mem_ARVALID,
  input         io_mem_ARREADY,
  output [31:0] io_mem_ARADDR,
  output        io_mem_ARID,
  output [7:0]  io_mem_ARLEN,
  output [2:0]  io_mem_ARSIZE,
  output [1:0]  io_mem_ARBURST,
  output [1:0]  io_mem_ARLOCK,
  output [3:0]  io_mem_ARCACHE,
  output [2:0]  io_mem_ARPROT,
  output [3:0]  io_mem_ARQOS,
  output [3:0]  io_mem_ARREGION,
  input         io_mem_RVALID,
  output        io_mem_RREADY,
  input  [31:0] io_mem_RDATA,
  input  [1:0]  io_mem_RRESP,
  input         io_mem_RLAST,
  input         io_mem_RID,
  input         io_host_AWVALID,
  output        io_host_AWREADY,
  input  [31:0] io_host_AWADDR,
  input         io_host_WVALID,
  output        io_host_WREADY,
  input  [31:0] io_host_WDATA,
  input  [3:0]  io_host_WSTRB,
  output        io_host_BVALID,
  input         io_host_BREADY,
  output [1:0]  io_host_BRESP,
  input         io_host_ARVALID,
  output        io_host_ARREADY,
  input  [31:0] io_host_ARADDR,
  output        io_host_RVALID,
  input         io_host_RREADY,
  output [31:0] io_host_RDATA,
  output [1:0]  io_host_RRESP,
  output        io_interrupt
);
  wire  dma_clock; // @[shell.scala 36:21]
  wire  dma_reset; // @[shell.scala 36:21]
  wire  dma_io_mem_AWVALID; // @[shell.scala 36:21]
  wire  dma_io_mem_AWREADY; // @[shell.scala 36:21]
  wire [31:0] dma_io_mem_AWADDR; // @[shell.scala 36:21]
  wire [7:0] dma_io_mem_AWLEN; // @[shell.scala 36:21]
  wire  dma_io_mem_WVALID; // @[shell.scala 36:21]
  wire  dma_io_mem_WREADY; // @[shell.scala 36:21]
  wire [31:0] dma_io_mem_WDATA; // @[shell.scala 36:21]
  wire  dma_io_mem_WLAST; // @[shell.scala 36:21]
  wire  dma_io_mem_BVALID; // @[shell.scala 36:21]
  wire  dma_io_mem_BREADY; // @[shell.scala 36:21]
  wire  dma_io_mem_ARVALID; // @[shell.scala 36:21]
  wire  dma_io_mem_ARREADY; // @[shell.scala 36:21]
  wire [31:0] dma_io_mem_ARADDR; // @[shell.scala 36:21]
  wire [7:0] dma_io_mem_ARLEN; // @[shell.scala 36:21]
  wire  dma_io_mem_RVALID; // @[shell.scala 36:21]
  wire  dma_io_mem_RREADY; // @[shell.scala 36:21]
  wire [31:0] dma_io_mem_RDATA; // @[shell.scala 36:21]
  wire  dma_io_mem_RLAST; // @[shell.scala 36:21]
  wire  dma_io_core_start; // @[shell.scala 36:21]
  wire [31:0] dma_io_core_input_0; // @[shell.scala 36:21]
  wire [31:0] dma_io_core_input_1; // @[shell.scala 36:21]
  wire [31:0] dma_io_core_input_2; // @[shell.scala 36:21]
  wire [31:0] dma_io_core_input_3; // @[shell.scala 36:21]
  wire [31:0] dma_io_core_weight_0; // @[shell.scala 36:21]
  wire [31:0] dma_io_core_weight_1; // @[shell.scala 36:21]
  wire [31:0] dma_io_core_weight_2; // @[shell.scala 36:21]
  wire [31:0] dma_io_core_weight_3; // @[shell.scala 36:21]
  wire  dma_io_core_done; // @[shell.scala 36:21]
  wire [31:0] dma_io_core_result; // @[shell.scala 36:21]
  wire  dma_io_host_AWVALID; // @[shell.scala 36:21]
  wire  dma_io_host_AWREADY; // @[shell.scala 36:21]
  wire [31:0] dma_io_host_AWADDR; // @[shell.scala 36:21]
  wire  dma_io_host_WVALID; // @[shell.scala 36:21]
  wire  dma_io_host_WREADY; // @[shell.scala 36:21]
  wire [31:0] dma_io_host_WDATA; // @[shell.scala 36:21]
  wire  dma_io_host_BVALID; // @[shell.scala 36:21]
  wire  dma_io_host_BREADY; // @[shell.scala 36:21]
  wire  dma_io_host_ARVALID; // @[shell.scala 36:21]
  wire  dma_io_host_ARREADY; // @[shell.scala 36:21]
  wire [31:0] dma_io_host_ARADDR; // @[shell.scala 36:21]
  wire  dma_io_host_RVALID; // @[shell.scala 36:21]
  wire  dma_io_host_RREADY; // @[shell.scala 36:21]
  wire [31:0] dma_io_host_RDATA; // @[shell.scala 36:21]
  wire  computer_clock; // @[shell.scala 38:26]
  wire  computer_reset; // @[shell.scala 38:26]
  wire  computer_io_core_start; // @[shell.scala 38:26]
  wire [31:0] computer_io_core_input_0; // @[shell.scala 38:26]
  wire [31:0] computer_io_core_input_1; // @[shell.scala 38:26]
  wire [31:0] computer_io_core_input_2; // @[shell.scala 38:26]
  wire [31:0] computer_io_core_input_3; // @[shell.scala 38:26]
  wire [31:0] computer_io_core_weight_0; // @[shell.scala 38:26]
  wire [31:0] computer_io_core_weight_1; // @[shell.scala 38:26]
  wire [31:0] computer_io_core_weight_2; // @[shell.scala 38:26]
  wire [31:0] computer_io_core_weight_3; // @[shell.scala 38:26]
  wire  computer_io_core_done; // @[shell.scala 38:26]
  wire [31:0] computer_io_core_result; // @[shell.scala 38:26]
  wire  computer_io_interrupt; // @[shell.scala 38:26]
  DMASimpleXil dma ( // @[shell.scala 36:21]
    .clock(dma_clock),
    .reset(dma_reset),
    .io_mem_AWVALID(dma_io_mem_AWVALID),
    .io_mem_AWREADY(dma_io_mem_AWREADY),
    .io_mem_AWADDR(dma_io_mem_AWADDR),
    .io_mem_AWLEN(dma_io_mem_AWLEN),
    .io_mem_WVALID(dma_io_mem_WVALID),
    .io_mem_WREADY(dma_io_mem_WREADY),
    .io_mem_WDATA(dma_io_mem_WDATA),
    .io_mem_WLAST(dma_io_mem_WLAST),
    .io_mem_BVALID(dma_io_mem_BVALID),
    .io_mem_BREADY(dma_io_mem_BREADY),
    .io_mem_ARVALID(dma_io_mem_ARVALID),
    .io_mem_ARREADY(dma_io_mem_ARREADY),
    .io_mem_ARADDR(dma_io_mem_ARADDR),
    .io_mem_ARLEN(dma_io_mem_ARLEN),
    .io_mem_RVALID(dma_io_mem_RVALID),
    .io_mem_RREADY(dma_io_mem_RREADY),
    .io_mem_RDATA(dma_io_mem_RDATA),
    .io_mem_RLAST(dma_io_mem_RLAST),
    .io_core_start(dma_io_core_start),
    .io_core_input_0(dma_io_core_input_0),
    .io_core_input_1(dma_io_core_input_1),
    .io_core_input_2(dma_io_core_input_2),
    .io_core_input_3(dma_io_core_input_3),
    .io_core_weight_0(dma_io_core_weight_0),
    .io_core_weight_1(dma_io_core_weight_1),
    .io_core_weight_2(dma_io_core_weight_2),
    .io_core_weight_3(dma_io_core_weight_3),
    .io_core_done(dma_io_core_done),
    .io_core_result(dma_io_core_result),
    .io_host_AWVALID(dma_io_host_AWVALID),
    .io_host_AWREADY(dma_io_host_AWREADY),
    .io_host_AWADDR(dma_io_host_AWADDR),
    .io_host_WVALID(dma_io_host_WVALID),
    .io_host_WREADY(dma_io_host_WREADY),
    .io_host_WDATA(dma_io_host_WDATA),
    .io_host_BVALID(dma_io_host_BVALID),
    .io_host_BREADY(dma_io_host_BREADY),
    .io_host_ARVALID(dma_io_host_ARVALID),
    .io_host_ARREADY(dma_io_host_ARREADY),
    .io_host_ARADDR(dma_io_host_ARADDR),
    .io_host_RVALID(dma_io_host_RVALID),
    .io_host_RREADY(dma_io_host_RREADY),
    .io_host_RDATA(dma_io_host_RDATA)
  );
  StoComputeSimple computer ( // @[shell.scala 38:26]
    .clock(computer_clock),
    .reset(computer_reset),
    .io_core_start(computer_io_core_start),
    .io_core_input_0(computer_io_core_input_0),
    .io_core_input_1(computer_io_core_input_1),
    .io_core_input_2(computer_io_core_input_2),
    .io_core_input_3(computer_io_core_input_3),
    .io_core_weight_0(computer_io_core_weight_0),
    .io_core_weight_1(computer_io_core_weight_1),
    .io_core_weight_2(computer_io_core_weight_2),
    .io_core_weight_3(computer_io_core_weight_3),
    .io_core_done(computer_io_core_done),
    .io_core_result(computer_io_core_result),
    .io_interrupt(computer_io_interrupt)
  );
  assign io_mem_AWVALID = dma_io_mem_AWVALID; // @[shell.scala 40:12]
  assign io_mem_AWADDR = dma_io_mem_AWADDR; // @[shell.scala 40:12]
  assign io_mem_AWID = 1'h0; // @[shell.scala 40:12]
  assign io_mem_AWLEN = dma_io_mem_AWLEN; // @[shell.scala 40:12]
  assign io_mem_AWSIZE = 3'h2; // @[shell.scala 40:12]
  assign io_mem_AWBURST = 2'h1; // @[shell.scala 40:12]
  assign io_mem_AWLOCK = 2'h0; // @[shell.scala 40:12]
  assign io_mem_AWCACHE = 4'h2; // @[shell.scala 40:12]
  assign io_mem_AWPROT = 3'h0; // @[shell.scala 40:12]
  assign io_mem_AWQOS = 4'h0; // @[shell.scala 40:12]
  assign io_mem_AWREGION = 4'h0; // @[shell.scala 40:12]
  assign io_mem_WVALID = dma_io_mem_WVALID; // @[shell.scala 40:12]
  assign io_mem_WDATA = dma_io_mem_WDATA; // @[shell.scala 40:12]
  assign io_mem_WSTRB = 4'hf; // @[shell.scala 40:12]
  assign io_mem_WLAST = dma_io_mem_WLAST; // @[shell.scala 40:12]
  assign io_mem_WID = 1'h0; // @[shell.scala 40:12]
  assign io_mem_BREADY = dma_io_mem_BREADY; // @[shell.scala 40:12]
  assign io_mem_ARVALID = dma_io_mem_ARVALID; // @[shell.scala 40:12]
  assign io_mem_ARADDR = dma_io_mem_ARADDR; // @[shell.scala 40:12]
  assign io_mem_ARID = 1'h0; // @[shell.scala 40:12]
  assign io_mem_ARLEN = dma_io_mem_ARLEN; // @[shell.scala 40:12]
  assign io_mem_ARSIZE = 3'h2; // @[shell.scala 40:12]
  assign io_mem_ARBURST = 2'h1; // @[shell.scala 40:12]
  assign io_mem_ARLOCK = 2'h0; // @[shell.scala 40:12]
  assign io_mem_ARCACHE = 4'h2; // @[shell.scala 40:12]
  assign io_mem_ARPROT = 3'h0; // @[shell.scala 40:12]
  assign io_mem_ARQOS = 4'h0; // @[shell.scala 40:12]
  assign io_mem_ARREGION = 4'h0; // @[shell.scala 40:12]
  assign io_mem_RREADY = dma_io_mem_RREADY; // @[shell.scala 40:12]
  assign io_host_AWREADY = dma_io_host_AWREADY; // @[shell.scala 41:13]
  assign io_host_WREADY = dma_io_host_WREADY; // @[shell.scala 41:13]
  assign io_host_BVALID = dma_io_host_BVALID; // @[shell.scala 41:13]
  assign io_host_BRESP = 2'h0; // @[shell.scala 41:13]
  assign io_host_ARREADY = dma_io_host_ARREADY; // @[shell.scala 41:13]
  assign io_host_RVALID = dma_io_host_RVALID; // @[shell.scala 41:13]
  assign io_host_RDATA = dma_io_host_RDATA; // @[shell.scala 41:13]
  assign io_host_RRESP = 2'h0; // @[shell.scala 41:13]
  assign io_interrupt = computer_io_interrupt; // @[shell.scala 45:18]
  assign dma_clock = clock;
  assign dma_reset = reset;
  assign dma_io_mem_AWREADY = io_mem_AWREADY; // @[shell.scala 40:12]
  assign dma_io_mem_WREADY = io_mem_WREADY; // @[shell.scala 40:12]
  assign dma_io_mem_BVALID = io_mem_BVALID; // @[shell.scala 40:12]
  assign dma_io_mem_ARREADY = io_mem_ARREADY; // @[shell.scala 40:12]
  assign dma_io_mem_RVALID = io_mem_RVALID; // @[shell.scala 40:12]
  assign dma_io_mem_RDATA = io_mem_RDATA; // @[shell.scala 40:12]
  assign dma_io_mem_RLAST = io_mem_RLAST; // @[shell.scala 40:12]
  assign dma_io_core_done = computer_io_core_done; // @[shell.scala 43:17]
  assign dma_io_core_result = computer_io_core_result; // @[shell.scala 43:17]
  assign dma_io_host_AWVALID = io_host_AWVALID; // @[shell.scala 41:13]
  assign dma_io_host_AWADDR = io_host_AWADDR; // @[shell.scala 41:13]
  assign dma_io_host_WVALID = io_host_WVALID; // @[shell.scala 41:13]
  assign dma_io_host_WDATA = io_host_WDATA; // @[shell.scala 41:13]
  assign dma_io_host_BREADY = io_host_BREADY; // @[shell.scala 41:13]
  assign dma_io_host_ARVALID = io_host_ARVALID; // @[shell.scala 41:13]
  assign dma_io_host_ARADDR = io_host_ARADDR; // @[shell.scala 41:13]
  assign dma_io_host_RREADY = io_host_RREADY; // @[shell.scala 41:13]
  assign computer_clock = clock;
  assign computer_reset = reset;
  assign computer_io_core_start = dma_io_core_start; // @[shell.scala 43:17]
  assign computer_io_core_input_0 = dma_io_core_input_0; // @[shell.scala 43:17]
  assign computer_io_core_input_1 = dma_io_core_input_1; // @[shell.scala 43:17]
  assign computer_io_core_input_2 = dma_io_core_input_2; // @[shell.scala 43:17]
  assign computer_io_core_input_3 = dma_io_core_input_3; // @[shell.scala 43:17]
  assign computer_io_core_weight_0 = dma_io_core_weight_0; // @[shell.scala 43:17]
  assign computer_io_core_weight_1 = dma_io_core_weight_1; // @[shell.scala 43:17]
  assign computer_io_core_weight_2 = dma_io_core_weight_2; // @[shell.scala 43:17]
  assign computer_io_core_weight_3 = dma_io_core_weight_3; // @[shell.scala 43:17]
endmodule
