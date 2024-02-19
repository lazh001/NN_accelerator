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
module MAC(
  input         clock,
  input  [7:0]  io_a,
  input  [7:0]  io_b,
  output [16:0] io_y
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] rA; // @[vtaGEMM.scala 18:31]
  reg [7:0] rB; // @[vtaGEMM.scala 19:31]
  wire [15:0] mult = $signed(rA) * $signed(rB); // @[vtaGEMM.scala 22:14]
  assign io_y = {{1{mult[15]}},mult}; // @[vtaGEMM.scala 23:30]
  always @(posedge clock) begin
    rA <= io_a; // @[vtaGEMM.scala 18:31]
    rB <= io_b; // @[vtaGEMM.scala 19:31]
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
  rA = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  rB = _RAND_1[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Adder(
  input  [16:0] io_a,
  input  [16:0] io_b,
  output [17:0] io_y
);
  assign io_y = $signed(io_a) + $signed(io_b); // @[vtaGEMM.scala 61:13]
endmodule
module Adder_8(
  input  [17:0] io_a,
  input  [17:0] io_b,
  output [18:0] io_y
);
  assign io_y = $signed(io_a) + $signed(io_b); // @[vtaGEMM.scala 61:13]
endmodule
module PipeAdder(
  input         clock,
  input  [18:0] io_a,
  input  [18:0] io_b,
  output [19:0] io_y
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [18:0] rA; // @[vtaGEMM.scala 43:19]
  reg [18:0] rB; // @[vtaGEMM.scala 44:19]
  assign io_y = $signed(rA) + $signed(rB); // @[vtaGEMM.scala 45:13]
  always @(posedge clock) begin
    rA <= io_a; // @[vtaGEMM.scala 43:19]
    rB <= io_b; // @[vtaGEMM.scala 44:19]
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
  rA = _RAND_0[18:0];
  _RAND_1 = {1{`RANDOM}};
  rB = _RAND_1[18:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Adder_12(
  input  [19:0] io_a,
  input  [19:0] io_b,
  output [20:0] io_y
);
  assign io_y = $signed(io_a) + $signed(io_b); // @[vtaGEMM.scala 61:13]
endmodule
module DotProduct(
  input         clock,
  input  [7:0]  io_a_0,
  input  [7:0]  io_a_1,
  input  [7:0]  io_a_2,
  input  [7:0]  io_a_3,
  input  [7:0]  io_a_4,
  input  [7:0]  io_a_5,
  input  [7:0]  io_a_6,
  input  [7:0]  io_a_7,
  input  [7:0]  io_a_8,
  input  [7:0]  io_a_9,
  input  [7:0]  io_a_10,
  input  [7:0]  io_a_11,
  input  [7:0]  io_a_12,
  input  [7:0]  io_a_13,
  input  [7:0]  io_a_14,
  input  [7:0]  io_a_15,
  input  [7:0]  io_b_0,
  input  [7:0]  io_b_1,
  input  [7:0]  io_b_2,
  input  [7:0]  io_b_3,
  input  [7:0]  io_b_4,
  input  [7:0]  io_b_5,
  input  [7:0]  io_b_6,
  input  [7:0]  io_b_7,
  input  [7:0]  io_b_8,
  input  [7:0]  io_b_9,
  input  [7:0]  io_b_10,
  input  [7:0]  io_b_11,
  input  [7:0]  io_b_12,
  input  [7:0]  io_b_13,
  input  [7:0]  io_b_14,
  input  [7:0]  io_b_15,
  output [20:0] io_y
);
  wire  m_0_clock; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_0_io_a; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_0_io_b; // @[vtaGEMM.scala 80:32]
  wire [16:0] m_0_io_y; // @[vtaGEMM.scala 80:32]
  wire  m_1_clock; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_1_io_a; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_1_io_b; // @[vtaGEMM.scala 80:32]
  wire [16:0] m_1_io_y; // @[vtaGEMM.scala 80:32]
  wire  m_2_clock; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_2_io_a; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_2_io_b; // @[vtaGEMM.scala 80:32]
  wire [16:0] m_2_io_y; // @[vtaGEMM.scala 80:32]
  wire  m_3_clock; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_3_io_a; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_3_io_b; // @[vtaGEMM.scala 80:32]
  wire [16:0] m_3_io_y; // @[vtaGEMM.scala 80:32]
  wire  m_4_clock; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_4_io_a; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_4_io_b; // @[vtaGEMM.scala 80:32]
  wire [16:0] m_4_io_y; // @[vtaGEMM.scala 80:32]
  wire  m_5_clock; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_5_io_a; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_5_io_b; // @[vtaGEMM.scala 80:32]
  wire [16:0] m_5_io_y; // @[vtaGEMM.scala 80:32]
  wire  m_6_clock; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_6_io_a; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_6_io_b; // @[vtaGEMM.scala 80:32]
  wire [16:0] m_6_io_y; // @[vtaGEMM.scala 80:32]
  wire  m_7_clock; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_7_io_a; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_7_io_b; // @[vtaGEMM.scala 80:32]
  wire [16:0] m_7_io_y; // @[vtaGEMM.scala 80:32]
  wire  m_8_clock; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_8_io_a; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_8_io_b; // @[vtaGEMM.scala 80:32]
  wire [16:0] m_8_io_y; // @[vtaGEMM.scala 80:32]
  wire  m_9_clock; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_9_io_a; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_9_io_b; // @[vtaGEMM.scala 80:32]
  wire [16:0] m_9_io_y; // @[vtaGEMM.scala 80:32]
  wire  m_10_clock; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_10_io_a; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_10_io_b; // @[vtaGEMM.scala 80:32]
  wire [16:0] m_10_io_y; // @[vtaGEMM.scala 80:32]
  wire  m_11_clock; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_11_io_a; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_11_io_b; // @[vtaGEMM.scala 80:32]
  wire [16:0] m_11_io_y; // @[vtaGEMM.scala 80:32]
  wire  m_12_clock; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_12_io_a; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_12_io_b; // @[vtaGEMM.scala 80:32]
  wire [16:0] m_12_io_y; // @[vtaGEMM.scala 80:32]
  wire  m_13_clock; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_13_io_a; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_13_io_b; // @[vtaGEMM.scala 80:32]
  wire [16:0] m_13_io_y; // @[vtaGEMM.scala 80:32]
  wire  m_14_clock; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_14_io_a; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_14_io_b; // @[vtaGEMM.scala 80:32]
  wire [16:0] m_14_io_y; // @[vtaGEMM.scala 80:32]
  wire  m_15_clock; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_15_io_a; // @[vtaGEMM.scala 80:32]
  wire [7:0] m_15_io_b; // @[vtaGEMM.scala 80:32]
  wire [16:0] m_15_io_y; // @[vtaGEMM.scala 80:32]
  wire [16:0] a_0_0_io_a; // @[vtaGEMM.scala 88:17]
  wire [16:0] a_0_0_io_b; // @[vtaGEMM.scala 88:17]
  wire [17:0] a_0_0_io_y; // @[vtaGEMM.scala 88:17]
  wire [16:0] a_0_1_io_a; // @[vtaGEMM.scala 88:17]
  wire [16:0] a_0_1_io_b; // @[vtaGEMM.scala 88:17]
  wire [17:0] a_0_1_io_y; // @[vtaGEMM.scala 88:17]
  wire [16:0] a_0_2_io_a; // @[vtaGEMM.scala 88:17]
  wire [16:0] a_0_2_io_b; // @[vtaGEMM.scala 88:17]
  wire [17:0] a_0_2_io_y; // @[vtaGEMM.scala 88:17]
  wire [16:0] a_0_3_io_a; // @[vtaGEMM.scala 88:17]
  wire [16:0] a_0_3_io_b; // @[vtaGEMM.scala 88:17]
  wire [17:0] a_0_3_io_y; // @[vtaGEMM.scala 88:17]
  wire [16:0] a_0_4_io_a; // @[vtaGEMM.scala 88:17]
  wire [16:0] a_0_4_io_b; // @[vtaGEMM.scala 88:17]
  wire [17:0] a_0_4_io_y; // @[vtaGEMM.scala 88:17]
  wire [16:0] a_0_5_io_a; // @[vtaGEMM.scala 88:17]
  wire [16:0] a_0_5_io_b; // @[vtaGEMM.scala 88:17]
  wire [17:0] a_0_5_io_y; // @[vtaGEMM.scala 88:17]
  wire [16:0] a_0_6_io_a; // @[vtaGEMM.scala 88:17]
  wire [16:0] a_0_6_io_b; // @[vtaGEMM.scala 88:17]
  wire [17:0] a_0_6_io_y; // @[vtaGEMM.scala 88:17]
  wire [16:0] a_0_7_io_a; // @[vtaGEMM.scala 88:17]
  wire [16:0] a_0_7_io_b; // @[vtaGEMM.scala 88:17]
  wire [17:0] a_0_7_io_y; // @[vtaGEMM.scala 88:17]
  wire [17:0] a_1_0_io_a; // @[vtaGEMM.scala 88:17]
  wire [17:0] a_1_0_io_b; // @[vtaGEMM.scala 88:17]
  wire [18:0] a_1_0_io_y; // @[vtaGEMM.scala 88:17]
  wire [17:0] a_1_1_io_a; // @[vtaGEMM.scala 88:17]
  wire [17:0] a_1_1_io_b; // @[vtaGEMM.scala 88:17]
  wire [18:0] a_1_1_io_y; // @[vtaGEMM.scala 88:17]
  wire [17:0] a_1_2_io_a; // @[vtaGEMM.scala 88:17]
  wire [17:0] a_1_2_io_b; // @[vtaGEMM.scala 88:17]
  wire [18:0] a_1_2_io_y; // @[vtaGEMM.scala 88:17]
  wire [17:0] a_1_3_io_a; // @[vtaGEMM.scala 88:17]
  wire [17:0] a_1_3_io_b; // @[vtaGEMM.scala 88:17]
  wire [18:0] a_1_3_io_y; // @[vtaGEMM.scala 88:17]
  wire  a_2_0_clock; // @[vtaGEMM.scala 85:17]
  wire [18:0] a_2_0_io_a; // @[vtaGEMM.scala 85:17]
  wire [18:0] a_2_0_io_b; // @[vtaGEMM.scala 85:17]
  wire [19:0] a_2_0_io_y; // @[vtaGEMM.scala 85:17]
  wire  a_2_1_clock; // @[vtaGEMM.scala 85:17]
  wire [18:0] a_2_1_io_a; // @[vtaGEMM.scala 85:17]
  wire [18:0] a_2_1_io_b; // @[vtaGEMM.scala 85:17]
  wire [19:0] a_2_1_io_y; // @[vtaGEMM.scala 85:17]
  wire [19:0] a_3_0_io_a; // @[vtaGEMM.scala 88:17]
  wire [19:0] a_3_0_io_b; // @[vtaGEMM.scala 88:17]
  wire [20:0] a_3_0_io_y; // @[vtaGEMM.scala 88:17]
  MAC m_0 ( // @[vtaGEMM.scala 80:32]
    .clock(m_0_clock),
    .io_a(m_0_io_a),
    .io_b(m_0_io_b),
    .io_y(m_0_io_y)
  );
  MAC m_1 ( // @[vtaGEMM.scala 80:32]
    .clock(m_1_clock),
    .io_a(m_1_io_a),
    .io_b(m_1_io_b),
    .io_y(m_1_io_y)
  );
  MAC m_2 ( // @[vtaGEMM.scala 80:32]
    .clock(m_2_clock),
    .io_a(m_2_io_a),
    .io_b(m_2_io_b),
    .io_y(m_2_io_y)
  );
  MAC m_3 ( // @[vtaGEMM.scala 80:32]
    .clock(m_3_clock),
    .io_a(m_3_io_a),
    .io_b(m_3_io_b),
    .io_y(m_3_io_y)
  );
  MAC m_4 ( // @[vtaGEMM.scala 80:32]
    .clock(m_4_clock),
    .io_a(m_4_io_a),
    .io_b(m_4_io_b),
    .io_y(m_4_io_y)
  );
  MAC m_5 ( // @[vtaGEMM.scala 80:32]
    .clock(m_5_clock),
    .io_a(m_5_io_a),
    .io_b(m_5_io_b),
    .io_y(m_5_io_y)
  );
  MAC m_6 ( // @[vtaGEMM.scala 80:32]
    .clock(m_6_clock),
    .io_a(m_6_io_a),
    .io_b(m_6_io_b),
    .io_y(m_6_io_y)
  );
  MAC m_7 ( // @[vtaGEMM.scala 80:32]
    .clock(m_7_clock),
    .io_a(m_7_io_a),
    .io_b(m_7_io_b),
    .io_y(m_7_io_y)
  );
  MAC m_8 ( // @[vtaGEMM.scala 80:32]
    .clock(m_8_clock),
    .io_a(m_8_io_a),
    .io_b(m_8_io_b),
    .io_y(m_8_io_y)
  );
  MAC m_9 ( // @[vtaGEMM.scala 80:32]
    .clock(m_9_clock),
    .io_a(m_9_io_a),
    .io_b(m_9_io_b),
    .io_y(m_9_io_y)
  );
  MAC m_10 ( // @[vtaGEMM.scala 80:32]
    .clock(m_10_clock),
    .io_a(m_10_io_a),
    .io_b(m_10_io_b),
    .io_y(m_10_io_y)
  );
  MAC m_11 ( // @[vtaGEMM.scala 80:32]
    .clock(m_11_clock),
    .io_a(m_11_io_a),
    .io_b(m_11_io_b),
    .io_y(m_11_io_y)
  );
  MAC m_12 ( // @[vtaGEMM.scala 80:32]
    .clock(m_12_clock),
    .io_a(m_12_io_a),
    .io_b(m_12_io_b),
    .io_y(m_12_io_y)
  );
  MAC m_13 ( // @[vtaGEMM.scala 80:32]
    .clock(m_13_clock),
    .io_a(m_13_io_a),
    .io_b(m_13_io_b),
    .io_y(m_13_io_y)
  );
  MAC m_14 ( // @[vtaGEMM.scala 80:32]
    .clock(m_14_clock),
    .io_a(m_14_io_a),
    .io_b(m_14_io_b),
    .io_y(m_14_io_y)
  );
  MAC m_15 ( // @[vtaGEMM.scala 80:32]
    .clock(m_15_clock),
    .io_a(m_15_io_a),
    .io_b(m_15_io_b),
    .io_y(m_15_io_y)
  );
  Adder a_0_0 ( // @[vtaGEMM.scala 88:17]
    .io_a(a_0_0_io_a),
    .io_b(a_0_0_io_b),
    .io_y(a_0_0_io_y)
  );
  Adder a_0_1 ( // @[vtaGEMM.scala 88:17]
    .io_a(a_0_1_io_a),
    .io_b(a_0_1_io_b),
    .io_y(a_0_1_io_y)
  );
  Adder a_0_2 ( // @[vtaGEMM.scala 88:17]
    .io_a(a_0_2_io_a),
    .io_b(a_0_2_io_b),
    .io_y(a_0_2_io_y)
  );
  Adder a_0_3 ( // @[vtaGEMM.scala 88:17]
    .io_a(a_0_3_io_a),
    .io_b(a_0_3_io_b),
    .io_y(a_0_3_io_y)
  );
  Adder a_0_4 ( // @[vtaGEMM.scala 88:17]
    .io_a(a_0_4_io_a),
    .io_b(a_0_4_io_b),
    .io_y(a_0_4_io_y)
  );
  Adder a_0_5 ( // @[vtaGEMM.scala 88:17]
    .io_a(a_0_5_io_a),
    .io_b(a_0_5_io_b),
    .io_y(a_0_5_io_y)
  );
  Adder a_0_6 ( // @[vtaGEMM.scala 88:17]
    .io_a(a_0_6_io_a),
    .io_b(a_0_6_io_b),
    .io_y(a_0_6_io_y)
  );
  Adder a_0_7 ( // @[vtaGEMM.scala 88:17]
    .io_a(a_0_7_io_a),
    .io_b(a_0_7_io_b),
    .io_y(a_0_7_io_y)
  );
  Adder_8 a_1_0 ( // @[vtaGEMM.scala 88:17]
    .io_a(a_1_0_io_a),
    .io_b(a_1_0_io_b),
    .io_y(a_1_0_io_y)
  );
  Adder_8 a_1_1 ( // @[vtaGEMM.scala 88:17]
    .io_a(a_1_1_io_a),
    .io_b(a_1_1_io_b),
    .io_y(a_1_1_io_y)
  );
  Adder_8 a_1_2 ( // @[vtaGEMM.scala 88:17]
    .io_a(a_1_2_io_a),
    .io_b(a_1_2_io_b),
    .io_y(a_1_2_io_y)
  );
  Adder_8 a_1_3 ( // @[vtaGEMM.scala 88:17]
    .io_a(a_1_3_io_a),
    .io_b(a_1_3_io_b),
    .io_y(a_1_3_io_y)
  );
  PipeAdder a_2_0 ( // @[vtaGEMM.scala 85:17]
    .clock(a_2_0_clock),
    .io_a(a_2_0_io_a),
    .io_b(a_2_0_io_b),
    .io_y(a_2_0_io_y)
  );
  PipeAdder a_2_1 ( // @[vtaGEMM.scala 85:17]
    .clock(a_2_1_clock),
    .io_a(a_2_1_io_a),
    .io_b(a_2_1_io_b),
    .io_y(a_2_1_io_y)
  );
  Adder_12 a_3_0 ( // @[vtaGEMM.scala 88:17]
    .io_a(a_3_0_io_a),
    .io_b(a_3_0_io_b),
    .io_y(a_3_0_io_y)
  );
  assign io_y = a_3_0_io_y; // @[vtaGEMM.scala 114:8]
  assign m_0_clock = clock;
  assign m_0_io_a = io_a_0; // @[vtaGEMM.scala 94:15]
  assign m_0_io_b = io_b_0; // @[vtaGEMM.scala 95:15]
  assign m_1_clock = clock;
  assign m_1_io_a = io_a_1; // @[vtaGEMM.scala 94:15]
  assign m_1_io_b = io_b_1; // @[vtaGEMM.scala 95:15]
  assign m_2_clock = clock;
  assign m_2_io_a = io_a_2; // @[vtaGEMM.scala 94:15]
  assign m_2_io_b = io_b_2; // @[vtaGEMM.scala 95:15]
  assign m_3_clock = clock;
  assign m_3_io_a = io_a_3; // @[vtaGEMM.scala 94:15]
  assign m_3_io_b = io_b_3; // @[vtaGEMM.scala 95:15]
  assign m_4_clock = clock;
  assign m_4_io_a = io_a_4; // @[vtaGEMM.scala 94:15]
  assign m_4_io_b = io_b_4; // @[vtaGEMM.scala 95:15]
  assign m_5_clock = clock;
  assign m_5_io_a = io_a_5; // @[vtaGEMM.scala 94:15]
  assign m_5_io_b = io_b_5; // @[vtaGEMM.scala 95:15]
  assign m_6_clock = clock;
  assign m_6_io_a = io_a_6; // @[vtaGEMM.scala 94:15]
  assign m_6_io_b = io_b_6; // @[vtaGEMM.scala 95:15]
  assign m_7_clock = clock;
  assign m_7_io_a = io_a_7; // @[vtaGEMM.scala 94:15]
  assign m_7_io_b = io_b_7; // @[vtaGEMM.scala 95:15]
  assign m_8_clock = clock;
  assign m_8_io_a = io_a_8; // @[vtaGEMM.scala 94:15]
  assign m_8_io_b = io_b_8; // @[vtaGEMM.scala 95:15]
  assign m_9_clock = clock;
  assign m_9_io_a = io_a_9; // @[vtaGEMM.scala 94:15]
  assign m_9_io_b = io_b_9; // @[vtaGEMM.scala 95:15]
  assign m_10_clock = clock;
  assign m_10_io_a = io_a_10; // @[vtaGEMM.scala 94:15]
  assign m_10_io_b = io_b_10; // @[vtaGEMM.scala 95:15]
  assign m_11_clock = clock;
  assign m_11_io_a = io_a_11; // @[vtaGEMM.scala 94:15]
  assign m_11_io_b = io_b_11; // @[vtaGEMM.scala 95:15]
  assign m_12_clock = clock;
  assign m_12_io_a = io_a_12; // @[vtaGEMM.scala 94:15]
  assign m_12_io_b = io_b_12; // @[vtaGEMM.scala 95:15]
  assign m_13_clock = clock;
  assign m_13_io_a = io_a_13; // @[vtaGEMM.scala 94:15]
  assign m_13_io_b = io_b_13; // @[vtaGEMM.scala 95:15]
  assign m_14_clock = clock;
  assign m_14_io_a = io_a_14; // @[vtaGEMM.scala 94:15]
  assign m_14_io_b = io_b_14; // @[vtaGEMM.scala 95:15]
  assign m_15_clock = clock;
  assign m_15_io_a = io_a_15; // @[vtaGEMM.scala 94:15]
  assign m_15_io_b = io_b_15; // @[vtaGEMM.scala 95:15]
  assign a_0_0_io_a = m_0_io_y; // @[vtaGEMM.scala 104:22]
  assign a_0_0_io_b = m_1_io_y; // @[vtaGEMM.scala 105:22]
  assign a_0_1_io_a = m_2_io_y; // @[vtaGEMM.scala 104:22]
  assign a_0_1_io_b = m_3_io_y; // @[vtaGEMM.scala 105:22]
  assign a_0_2_io_a = m_4_io_y; // @[vtaGEMM.scala 104:22]
  assign a_0_2_io_b = m_5_io_y; // @[vtaGEMM.scala 105:22]
  assign a_0_3_io_a = m_6_io_y; // @[vtaGEMM.scala 104:22]
  assign a_0_3_io_b = m_7_io_y; // @[vtaGEMM.scala 105:22]
  assign a_0_4_io_a = m_8_io_y; // @[vtaGEMM.scala 104:22]
  assign a_0_4_io_b = m_9_io_y; // @[vtaGEMM.scala 105:22]
  assign a_0_5_io_a = m_10_io_y; // @[vtaGEMM.scala 104:22]
  assign a_0_5_io_b = m_11_io_y; // @[vtaGEMM.scala 105:22]
  assign a_0_6_io_a = m_12_io_y; // @[vtaGEMM.scala 104:22]
  assign a_0_6_io_b = m_13_io_y; // @[vtaGEMM.scala 105:22]
  assign a_0_7_io_a = m_14_io_y; // @[vtaGEMM.scala 104:22]
  assign a_0_7_io_b = m_15_io_y; // @[vtaGEMM.scala 105:22]
  assign a_1_0_io_a = a_0_0_io_y; // @[vtaGEMM.scala 107:22]
  assign a_1_0_io_b = a_0_1_io_y; // @[vtaGEMM.scala 108:22]
  assign a_1_1_io_a = a_0_2_io_y; // @[vtaGEMM.scala 107:22]
  assign a_1_1_io_b = a_0_3_io_y; // @[vtaGEMM.scala 108:22]
  assign a_1_2_io_a = a_0_4_io_y; // @[vtaGEMM.scala 107:22]
  assign a_1_2_io_b = a_0_5_io_y; // @[vtaGEMM.scala 108:22]
  assign a_1_3_io_a = a_0_6_io_y; // @[vtaGEMM.scala 107:22]
  assign a_1_3_io_b = a_0_7_io_y; // @[vtaGEMM.scala 108:22]
  assign a_2_0_clock = clock;
  assign a_2_0_io_a = a_1_0_io_y; // @[vtaGEMM.scala 107:22]
  assign a_2_0_io_b = a_1_1_io_y; // @[vtaGEMM.scala 108:22]
  assign a_2_1_clock = clock;
  assign a_2_1_io_a = a_1_2_io_y; // @[vtaGEMM.scala 107:22]
  assign a_2_1_io_b = a_1_3_io_y; // @[vtaGEMM.scala 108:22]
  assign a_3_0_io_a = a_2_0_io_y; // @[vtaGEMM.scala 107:22]
  assign a_3_0_io_b = a_2_1_io_y; // @[vtaGEMM.scala 108:22]
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
`endif // RANDOMIZE_REG_INIT
  reg  io_deq_v; // @[Valid.scala 127:22]
  reg  io_deq_outPipe_valid; // @[Valid.scala 127:22]
  reg  io_deq_outPipe_valid_1; // @[Valid.scala 127:22]
  assign io_deq_valid = io_deq_outPipe_valid_1; // @[Valid.scala 122:21 123:17]
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
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ComputeSimple(
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
`endif // RANDOMIZE_REG_INIT
  wire  dot_clock; // @[compute.scala 18:21]
  wire [7:0] dot_io_a_0; // @[compute.scala 18:21]
  wire [7:0] dot_io_a_1; // @[compute.scala 18:21]
  wire [7:0] dot_io_a_2; // @[compute.scala 18:21]
  wire [7:0] dot_io_a_3; // @[compute.scala 18:21]
  wire [7:0] dot_io_a_4; // @[compute.scala 18:21]
  wire [7:0] dot_io_a_5; // @[compute.scala 18:21]
  wire [7:0] dot_io_a_6; // @[compute.scala 18:21]
  wire [7:0] dot_io_a_7; // @[compute.scala 18:21]
  wire [7:0] dot_io_a_8; // @[compute.scala 18:21]
  wire [7:0] dot_io_a_9; // @[compute.scala 18:21]
  wire [7:0] dot_io_a_10; // @[compute.scala 18:21]
  wire [7:0] dot_io_a_11; // @[compute.scala 18:21]
  wire [7:0] dot_io_a_12; // @[compute.scala 18:21]
  wire [7:0] dot_io_a_13; // @[compute.scala 18:21]
  wire [7:0] dot_io_a_14; // @[compute.scala 18:21]
  wire [7:0] dot_io_a_15; // @[compute.scala 18:21]
  wire [7:0] dot_io_b_0; // @[compute.scala 18:21]
  wire [7:0] dot_io_b_1; // @[compute.scala 18:21]
  wire [7:0] dot_io_b_2; // @[compute.scala 18:21]
  wire [7:0] dot_io_b_3; // @[compute.scala 18:21]
  wire [7:0] dot_io_b_4; // @[compute.scala 18:21]
  wire [7:0] dot_io_b_5; // @[compute.scala 18:21]
  wire [7:0] dot_io_b_6; // @[compute.scala 18:21]
  wire [7:0] dot_io_b_7; // @[compute.scala 18:21]
  wire [7:0] dot_io_b_8; // @[compute.scala 18:21]
  wire [7:0] dot_io_b_9; // @[compute.scala 18:21]
  wire [7:0] dot_io_b_10; // @[compute.scala 18:21]
  wire [7:0] dot_io_b_11; // @[compute.scala 18:21]
  wire [7:0] dot_io_b_12; // @[compute.scala 18:21]
  wire [7:0] dot_io_b_13; // @[compute.scala 18:21]
  wire [7:0] dot_io_b_14; // @[compute.scala 18:21]
  wire [7:0] dot_io_b_15; // @[compute.scala 18:21]
  wire [20:0] dot_io_y; // @[compute.scala 18:21]
  wire  pipe_clock; // @[compute.scala 23:22]
  wire  pipe_reset; // @[compute.scala 23:22]
  wire  pipe_io_enq_valid; // @[compute.scala 23:22]
  wire  pipe_io_deq_valid; // @[compute.scala 23:22]
  wire  vld = pipe_io_deq_valid; // @[compute.scala 24:19 28:9]
  wire [31:0] _io_core_result_T = {{11{dot_io_y[20]}},dot_io_y}; // @[compute.scala 48:40]
  reg [7:0] input_0; // @[compute.scala 54:24]
  reg [7:0] input_1; // @[compute.scala 54:24]
  reg [7:0] input_2; // @[compute.scala 54:24]
  reg [7:0] input_3; // @[compute.scala 54:24]
  reg [7:0] input_4; // @[compute.scala 54:24]
  reg [7:0] input_5; // @[compute.scala 54:24]
  reg [7:0] input_6; // @[compute.scala 54:24]
  reg [7:0] input_7; // @[compute.scala 54:24]
  reg [7:0] input_8; // @[compute.scala 54:24]
  reg [7:0] input_9; // @[compute.scala 54:24]
  reg [7:0] input_10; // @[compute.scala 54:24]
  reg [7:0] input_11; // @[compute.scala 54:24]
  reg [7:0] input_12; // @[compute.scala 54:24]
  reg [7:0] input_13; // @[compute.scala 54:24]
  reg [7:0] input_14; // @[compute.scala 54:24]
  reg [7:0] input_15; // @[compute.scala 54:24]
  reg [7:0] weight_0; // @[compute.scala 55:25]
  reg [7:0] weight_1; // @[compute.scala 55:25]
  reg [7:0] weight_2; // @[compute.scala 55:25]
  reg [7:0] weight_3; // @[compute.scala 55:25]
  reg [7:0] weight_4; // @[compute.scala 55:25]
  reg [7:0] weight_5; // @[compute.scala 55:25]
  reg [7:0] weight_6; // @[compute.scala 55:25]
  reg [7:0] weight_7; // @[compute.scala 55:25]
  reg [7:0] weight_8; // @[compute.scala 55:25]
  reg [7:0] weight_9; // @[compute.scala 55:25]
  reg [7:0] weight_10; // @[compute.scala 55:25]
  reg [7:0] weight_11; // @[compute.scala 55:25]
  reg [7:0] weight_12; // @[compute.scala 55:25]
  reg [7:0] weight_13; // @[compute.scala 55:25]
  reg [7:0] weight_14; // @[compute.scala 55:25]
  reg [7:0] weight_15; // @[compute.scala 55:25]
  wire [7:0] _input_0_T_1 = io_core_input_0[7:0]; // @[compute.scala 60:72]
  wire [7:0] _weight_0_T_1 = io_core_weight_0[7:0]; // @[compute.scala 61:74]
  wire [7:0] _input_1_T_1 = io_core_input_0[15:8]; // @[compute.scala 60:72]
  wire [7:0] _weight_1_T_1 = io_core_weight_0[15:8]; // @[compute.scala 61:74]
  wire [7:0] _input_2_T_1 = io_core_input_0[23:16]; // @[compute.scala 60:72]
  wire [7:0] _weight_2_T_1 = io_core_weight_0[23:16]; // @[compute.scala 61:74]
  wire [7:0] _input_3_T_1 = io_core_input_0[31:24]; // @[compute.scala 60:72]
  wire [7:0] _weight_3_T_1 = io_core_weight_0[31:24]; // @[compute.scala 61:74]
  wire [7:0] _input_4_T_1 = io_core_input_1[7:0]; // @[compute.scala 60:72]
  wire [7:0] _weight_4_T_1 = io_core_weight_1[7:0]; // @[compute.scala 61:74]
  wire [7:0] _input_5_T_1 = io_core_input_1[15:8]; // @[compute.scala 60:72]
  wire [7:0] _weight_5_T_1 = io_core_weight_1[15:8]; // @[compute.scala 61:74]
  wire [7:0] _input_6_T_1 = io_core_input_1[23:16]; // @[compute.scala 60:72]
  wire [7:0] _weight_6_T_1 = io_core_weight_1[23:16]; // @[compute.scala 61:74]
  wire [7:0] _input_7_T_1 = io_core_input_1[31:24]; // @[compute.scala 60:72]
  wire [7:0] _weight_7_T_1 = io_core_weight_1[31:24]; // @[compute.scala 61:74]
  wire [7:0] _input_8_T_1 = io_core_input_2[7:0]; // @[compute.scala 60:72]
  wire [7:0] _weight_8_T_1 = io_core_weight_2[7:0]; // @[compute.scala 61:74]
  wire [7:0] _input_9_T_1 = io_core_input_2[15:8]; // @[compute.scala 60:72]
  wire [7:0] _weight_9_T_1 = io_core_weight_2[15:8]; // @[compute.scala 61:74]
  wire [7:0] _input_10_T_1 = io_core_input_2[23:16]; // @[compute.scala 60:72]
  wire [7:0] _weight_10_T_1 = io_core_weight_2[23:16]; // @[compute.scala 61:74]
  wire [7:0] _input_11_T_1 = io_core_input_2[31:24]; // @[compute.scala 60:72]
  wire [7:0] _weight_11_T_1 = io_core_weight_2[31:24]; // @[compute.scala 61:74]
  wire [7:0] _input_12_T_1 = io_core_input_3[7:0]; // @[compute.scala 60:72]
  wire [7:0] _weight_12_T_1 = io_core_weight_3[7:0]; // @[compute.scala 61:74]
  wire [7:0] _input_13_T_1 = io_core_input_3[15:8]; // @[compute.scala 60:72]
  wire [7:0] _weight_13_T_1 = io_core_weight_3[15:8]; // @[compute.scala 61:74]
  wire [7:0] _input_14_T_1 = io_core_input_3[23:16]; // @[compute.scala 60:72]
  wire [7:0] _weight_14_T_1 = io_core_weight_3[23:16]; // @[compute.scala 61:74]
  wire [7:0] _input_15_T_1 = io_core_input_3[31:24]; // @[compute.scala 60:72]
  wire [7:0] _weight_15_T_1 = io_core_weight_3[31:24]; // @[compute.scala 61:74]
  DotProduct dot ( // @[compute.scala 18:21]
    .clock(dot_clock),
    .io_a_0(dot_io_a_0),
    .io_a_1(dot_io_a_1),
    .io_a_2(dot_io_a_2),
    .io_a_3(dot_io_a_3),
    .io_a_4(dot_io_a_4),
    .io_a_5(dot_io_a_5),
    .io_a_6(dot_io_a_6),
    .io_a_7(dot_io_a_7),
    .io_a_8(dot_io_a_8),
    .io_a_9(dot_io_a_9),
    .io_a_10(dot_io_a_10),
    .io_a_11(dot_io_a_11),
    .io_a_12(dot_io_a_12),
    .io_a_13(dot_io_a_13),
    .io_a_14(dot_io_a_14),
    .io_a_15(dot_io_a_15),
    .io_b_0(dot_io_b_0),
    .io_b_1(dot_io_b_1),
    .io_b_2(dot_io_b_2),
    .io_b_3(dot_io_b_3),
    .io_b_4(dot_io_b_4),
    .io_b_5(dot_io_b_5),
    .io_b_6(dot_io_b_6),
    .io_b_7(dot_io_b_7),
    .io_b_8(dot_io_b_8),
    .io_b_9(dot_io_b_9),
    .io_b_10(dot_io_b_10),
    .io_b_11(dot_io_b_11),
    .io_b_12(dot_io_b_12),
    .io_b_13(dot_io_b_13),
    .io_b_14(dot_io_b_14),
    .io_b_15(dot_io_b_15),
    .io_y(dot_io_y)
  );
  Pipe pipe ( // @[compute.scala 23:22]
    .clock(pipe_clock),
    .reset(pipe_reset),
    .io_enq_valid(pipe_io_enq_valid),
    .io_deq_valid(pipe_io_deq_valid)
  );
  assign io_core_done = pipe_io_deq_valid; // @[compute.scala 24:19 28:9]
  assign io_core_result = vld ? _io_core_result_T : 32'h0; // @[compute.scala 47:14 48:24 51:24]
  assign io_interrupt = pipe_io_deq_valid; // @[compute.scala 24:19 28:9]
  assign dot_clock = clock;
  assign dot_io_a_0 = input_0; // @[compute.scala 66:14]
  assign dot_io_a_1 = input_1; // @[compute.scala 66:14]
  assign dot_io_a_2 = input_2; // @[compute.scala 66:14]
  assign dot_io_a_3 = input_3; // @[compute.scala 66:14]
  assign dot_io_a_4 = input_4; // @[compute.scala 66:14]
  assign dot_io_a_5 = input_5; // @[compute.scala 66:14]
  assign dot_io_a_6 = input_6; // @[compute.scala 66:14]
  assign dot_io_a_7 = input_7; // @[compute.scala 66:14]
  assign dot_io_a_8 = input_8; // @[compute.scala 66:14]
  assign dot_io_a_9 = input_9; // @[compute.scala 66:14]
  assign dot_io_a_10 = input_10; // @[compute.scala 66:14]
  assign dot_io_a_11 = input_11; // @[compute.scala 66:14]
  assign dot_io_a_12 = input_12; // @[compute.scala 66:14]
  assign dot_io_a_13 = input_13; // @[compute.scala 66:14]
  assign dot_io_a_14 = input_14; // @[compute.scala 66:14]
  assign dot_io_a_15 = input_15; // @[compute.scala 66:14]
  assign dot_io_b_0 = weight_0; // @[compute.scala 67:14]
  assign dot_io_b_1 = weight_1; // @[compute.scala 67:14]
  assign dot_io_b_2 = weight_2; // @[compute.scala 67:14]
  assign dot_io_b_3 = weight_3; // @[compute.scala 67:14]
  assign dot_io_b_4 = weight_4; // @[compute.scala 67:14]
  assign dot_io_b_5 = weight_5; // @[compute.scala 67:14]
  assign dot_io_b_6 = weight_6; // @[compute.scala 67:14]
  assign dot_io_b_7 = weight_7; // @[compute.scala 67:14]
  assign dot_io_b_8 = weight_8; // @[compute.scala 67:14]
  assign dot_io_b_9 = weight_9; // @[compute.scala 67:14]
  assign dot_io_b_10 = weight_10; // @[compute.scala 67:14]
  assign dot_io_b_11 = weight_11; // @[compute.scala 67:14]
  assign dot_io_b_12 = weight_12; // @[compute.scala 67:14]
  assign dot_io_b_13 = weight_13; // @[compute.scala 67:14]
  assign dot_io_b_14 = weight_14; // @[compute.scala 67:14]
  assign dot_io_b_15 = weight_15; // @[compute.scala 67:14]
  assign pipe_clock = clock;
  assign pipe_reset = reset;
  assign pipe_io_enq_valid = io_core_start; // @[compute.scala 26:23]
  always @(posedge clock) begin
    if (reset) begin // @[compute.scala 54:24]
      input_0 <= 8'sh0; // @[compute.scala 54:24]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      input_0 <= _input_0_T_1; // @[compute.scala 60:32]
    end
    if (reset) begin // @[compute.scala 54:24]
      input_1 <= 8'sh0; // @[compute.scala 54:24]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      input_1 <= _input_1_T_1; // @[compute.scala 60:32]
    end
    if (reset) begin // @[compute.scala 54:24]
      input_2 <= 8'sh0; // @[compute.scala 54:24]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      input_2 <= _input_2_T_1; // @[compute.scala 60:32]
    end
    if (reset) begin // @[compute.scala 54:24]
      input_3 <= 8'sh0; // @[compute.scala 54:24]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      input_3 <= _input_3_T_1; // @[compute.scala 60:32]
    end
    if (reset) begin // @[compute.scala 54:24]
      input_4 <= 8'sh0; // @[compute.scala 54:24]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      input_4 <= _input_4_T_1; // @[compute.scala 60:32]
    end
    if (reset) begin // @[compute.scala 54:24]
      input_5 <= 8'sh0; // @[compute.scala 54:24]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      input_5 <= _input_5_T_1; // @[compute.scala 60:32]
    end
    if (reset) begin // @[compute.scala 54:24]
      input_6 <= 8'sh0; // @[compute.scala 54:24]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      input_6 <= _input_6_T_1; // @[compute.scala 60:32]
    end
    if (reset) begin // @[compute.scala 54:24]
      input_7 <= 8'sh0; // @[compute.scala 54:24]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      input_7 <= _input_7_T_1; // @[compute.scala 60:32]
    end
    if (reset) begin // @[compute.scala 54:24]
      input_8 <= 8'sh0; // @[compute.scala 54:24]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      input_8 <= _input_8_T_1; // @[compute.scala 60:32]
    end
    if (reset) begin // @[compute.scala 54:24]
      input_9 <= 8'sh0; // @[compute.scala 54:24]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      input_9 <= _input_9_T_1; // @[compute.scala 60:32]
    end
    if (reset) begin // @[compute.scala 54:24]
      input_10 <= 8'sh0; // @[compute.scala 54:24]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      input_10 <= _input_10_T_1; // @[compute.scala 60:32]
    end
    if (reset) begin // @[compute.scala 54:24]
      input_11 <= 8'sh0; // @[compute.scala 54:24]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      input_11 <= _input_11_T_1; // @[compute.scala 60:32]
    end
    if (reset) begin // @[compute.scala 54:24]
      input_12 <= 8'sh0; // @[compute.scala 54:24]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      input_12 <= _input_12_T_1; // @[compute.scala 60:32]
    end
    if (reset) begin // @[compute.scala 54:24]
      input_13 <= 8'sh0; // @[compute.scala 54:24]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      input_13 <= _input_13_T_1; // @[compute.scala 60:32]
    end
    if (reset) begin // @[compute.scala 54:24]
      input_14 <= 8'sh0; // @[compute.scala 54:24]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      input_14 <= _input_14_T_1; // @[compute.scala 60:32]
    end
    if (reset) begin // @[compute.scala 54:24]
      input_15 <= 8'sh0; // @[compute.scala 54:24]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      input_15 <= _input_15_T_1; // @[compute.scala 60:32]
    end
    if (reset) begin // @[compute.scala 55:25]
      weight_0 <= 8'sh0; // @[compute.scala 55:25]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      weight_0 <= _weight_0_T_1; // @[compute.scala 61:33]
    end
    if (reset) begin // @[compute.scala 55:25]
      weight_1 <= 8'sh0; // @[compute.scala 55:25]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      weight_1 <= _weight_1_T_1; // @[compute.scala 61:33]
    end
    if (reset) begin // @[compute.scala 55:25]
      weight_2 <= 8'sh0; // @[compute.scala 55:25]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      weight_2 <= _weight_2_T_1; // @[compute.scala 61:33]
    end
    if (reset) begin // @[compute.scala 55:25]
      weight_3 <= 8'sh0; // @[compute.scala 55:25]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      weight_3 <= _weight_3_T_1; // @[compute.scala 61:33]
    end
    if (reset) begin // @[compute.scala 55:25]
      weight_4 <= 8'sh0; // @[compute.scala 55:25]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      weight_4 <= _weight_4_T_1; // @[compute.scala 61:33]
    end
    if (reset) begin // @[compute.scala 55:25]
      weight_5 <= 8'sh0; // @[compute.scala 55:25]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      weight_5 <= _weight_5_T_1; // @[compute.scala 61:33]
    end
    if (reset) begin // @[compute.scala 55:25]
      weight_6 <= 8'sh0; // @[compute.scala 55:25]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      weight_6 <= _weight_6_T_1; // @[compute.scala 61:33]
    end
    if (reset) begin // @[compute.scala 55:25]
      weight_7 <= 8'sh0; // @[compute.scala 55:25]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      weight_7 <= _weight_7_T_1; // @[compute.scala 61:33]
    end
    if (reset) begin // @[compute.scala 55:25]
      weight_8 <= 8'sh0; // @[compute.scala 55:25]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      weight_8 <= _weight_8_T_1; // @[compute.scala 61:33]
    end
    if (reset) begin // @[compute.scala 55:25]
      weight_9 <= 8'sh0; // @[compute.scala 55:25]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      weight_9 <= _weight_9_T_1; // @[compute.scala 61:33]
    end
    if (reset) begin // @[compute.scala 55:25]
      weight_10 <= 8'sh0; // @[compute.scala 55:25]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      weight_10 <= _weight_10_T_1; // @[compute.scala 61:33]
    end
    if (reset) begin // @[compute.scala 55:25]
      weight_11 <= 8'sh0; // @[compute.scala 55:25]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      weight_11 <= _weight_11_T_1; // @[compute.scala 61:33]
    end
    if (reset) begin // @[compute.scala 55:25]
      weight_12 <= 8'sh0; // @[compute.scala 55:25]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      weight_12 <= _weight_12_T_1; // @[compute.scala 61:33]
    end
    if (reset) begin // @[compute.scala 55:25]
      weight_13 <= 8'sh0; // @[compute.scala 55:25]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      weight_13 <= _weight_13_T_1; // @[compute.scala 61:33]
    end
    if (reset) begin // @[compute.scala 55:25]
      weight_14 <= 8'sh0; // @[compute.scala 55:25]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      weight_14 <= _weight_14_T_1; // @[compute.scala 61:33]
    end
    if (reset) begin // @[compute.scala 55:25]
      weight_15 <= 8'sh0; // @[compute.scala 55:25]
    end else if (io_core_start) begin // @[compute.scala 57:24]
      weight_15 <= _weight_15_T_1; // @[compute.scala 61:33]
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
  input_0 = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  input_1 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  input_2 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  input_3 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  input_4 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  input_5 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  input_6 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  input_7 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  input_8 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  input_9 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  input_10 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  input_11 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  input_12 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  input_13 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  input_14 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  input_15 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  weight_0 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  weight_1 = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  weight_2 = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  weight_3 = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  weight_4 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  weight_5 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  weight_6 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  weight_7 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  weight_8 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  weight_9 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  weight_10 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  weight_11 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  weight_12 = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  weight_13 = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  weight_14 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  weight_15 = _RAND_31[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ShellSimple(
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
  wire  dma_clock; // @[shell.scala 17:21]
  wire  dma_reset; // @[shell.scala 17:21]
  wire  dma_io_mem_AWVALID; // @[shell.scala 17:21]
  wire  dma_io_mem_AWREADY; // @[shell.scala 17:21]
  wire [31:0] dma_io_mem_AWADDR; // @[shell.scala 17:21]
  wire [7:0] dma_io_mem_AWLEN; // @[shell.scala 17:21]
  wire  dma_io_mem_WVALID; // @[shell.scala 17:21]
  wire  dma_io_mem_WREADY; // @[shell.scala 17:21]
  wire [31:0] dma_io_mem_WDATA; // @[shell.scala 17:21]
  wire  dma_io_mem_WLAST; // @[shell.scala 17:21]
  wire  dma_io_mem_BVALID; // @[shell.scala 17:21]
  wire  dma_io_mem_BREADY; // @[shell.scala 17:21]
  wire  dma_io_mem_ARVALID; // @[shell.scala 17:21]
  wire  dma_io_mem_ARREADY; // @[shell.scala 17:21]
  wire [31:0] dma_io_mem_ARADDR; // @[shell.scala 17:21]
  wire [7:0] dma_io_mem_ARLEN; // @[shell.scala 17:21]
  wire  dma_io_mem_RVALID; // @[shell.scala 17:21]
  wire  dma_io_mem_RREADY; // @[shell.scala 17:21]
  wire [31:0] dma_io_mem_RDATA; // @[shell.scala 17:21]
  wire  dma_io_mem_RLAST; // @[shell.scala 17:21]
  wire  dma_io_core_start; // @[shell.scala 17:21]
  wire [31:0] dma_io_core_input_0; // @[shell.scala 17:21]
  wire [31:0] dma_io_core_input_1; // @[shell.scala 17:21]
  wire [31:0] dma_io_core_input_2; // @[shell.scala 17:21]
  wire [31:0] dma_io_core_input_3; // @[shell.scala 17:21]
  wire [31:0] dma_io_core_weight_0; // @[shell.scala 17:21]
  wire [31:0] dma_io_core_weight_1; // @[shell.scala 17:21]
  wire [31:0] dma_io_core_weight_2; // @[shell.scala 17:21]
  wire [31:0] dma_io_core_weight_3; // @[shell.scala 17:21]
  wire  dma_io_core_done; // @[shell.scala 17:21]
  wire [31:0] dma_io_core_result; // @[shell.scala 17:21]
  wire  dma_io_host_AWVALID; // @[shell.scala 17:21]
  wire  dma_io_host_AWREADY; // @[shell.scala 17:21]
  wire [31:0] dma_io_host_AWADDR; // @[shell.scala 17:21]
  wire  dma_io_host_WVALID; // @[shell.scala 17:21]
  wire  dma_io_host_WREADY; // @[shell.scala 17:21]
  wire [31:0] dma_io_host_WDATA; // @[shell.scala 17:21]
  wire  dma_io_host_BVALID; // @[shell.scala 17:21]
  wire  dma_io_host_BREADY; // @[shell.scala 17:21]
  wire  dma_io_host_ARVALID; // @[shell.scala 17:21]
  wire  dma_io_host_ARREADY; // @[shell.scala 17:21]
  wire [31:0] dma_io_host_ARADDR; // @[shell.scala 17:21]
  wire  dma_io_host_RVALID; // @[shell.scala 17:21]
  wire  dma_io_host_RREADY; // @[shell.scala 17:21]
  wire [31:0] dma_io_host_RDATA; // @[shell.scala 17:21]
  wire  computer_clock; // @[shell.scala 19:26]
  wire  computer_reset; // @[shell.scala 19:26]
  wire  computer_io_core_start; // @[shell.scala 19:26]
  wire [31:0] computer_io_core_input_0; // @[shell.scala 19:26]
  wire [31:0] computer_io_core_input_1; // @[shell.scala 19:26]
  wire [31:0] computer_io_core_input_2; // @[shell.scala 19:26]
  wire [31:0] computer_io_core_input_3; // @[shell.scala 19:26]
  wire [31:0] computer_io_core_weight_0; // @[shell.scala 19:26]
  wire [31:0] computer_io_core_weight_1; // @[shell.scala 19:26]
  wire [31:0] computer_io_core_weight_2; // @[shell.scala 19:26]
  wire [31:0] computer_io_core_weight_3; // @[shell.scala 19:26]
  wire  computer_io_core_done; // @[shell.scala 19:26]
  wire [31:0] computer_io_core_result; // @[shell.scala 19:26]
  wire  computer_io_interrupt; // @[shell.scala 19:26]
  DMASimpleXil dma ( // @[shell.scala 17:21]
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
  ComputeSimple computer ( // @[shell.scala 19:26]
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
  assign io_mem_AWVALID = dma_io_mem_AWVALID; // @[shell.scala 21:12]
  assign io_mem_AWADDR = dma_io_mem_AWADDR; // @[shell.scala 21:12]
  assign io_mem_AWID = 1'h0; // @[shell.scala 21:12]
  assign io_mem_AWLEN = dma_io_mem_AWLEN; // @[shell.scala 21:12]
  assign io_mem_AWSIZE = 3'h2; // @[shell.scala 21:12]
  assign io_mem_AWBURST = 2'h1; // @[shell.scala 21:12]
  assign io_mem_AWLOCK = 2'h0; // @[shell.scala 21:12]
  assign io_mem_AWCACHE = 4'h2; // @[shell.scala 21:12]
  assign io_mem_AWPROT = 3'h0; // @[shell.scala 21:12]
  assign io_mem_AWQOS = 4'h0; // @[shell.scala 21:12]
  assign io_mem_AWREGION = 4'h0; // @[shell.scala 21:12]
  assign io_mem_WVALID = dma_io_mem_WVALID; // @[shell.scala 21:12]
  assign io_mem_WDATA = dma_io_mem_WDATA; // @[shell.scala 21:12]
  assign io_mem_WSTRB = 4'hf; // @[shell.scala 21:12]
  assign io_mem_WLAST = dma_io_mem_WLAST; // @[shell.scala 21:12]
  assign io_mem_WID = 1'h0; // @[shell.scala 21:12]
  assign io_mem_BREADY = dma_io_mem_BREADY; // @[shell.scala 21:12]
  assign io_mem_ARVALID = dma_io_mem_ARVALID; // @[shell.scala 21:12]
  assign io_mem_ARADDR = dma_io_mem_ARADDR; // @[shell.scala 21:12]
  assign io_mem_ARID = 1'h0; // @[shell.scala 21:12]
  assign io_mem_ARLEN = dma_io_mem_ARLEN; // @[shell.scala 21:12]
  assign io_mem_ARSIZE = 3'h2; // @[shell.scala 21:12]
  assign io_mem_ARBURST = 2'h1; // @[shell.scala 21:12]
  assign io_mem_ARLOCK = 2'h0; // @[shell.scala 21:12]
  assign io_mem_ARCACHE = 4'h2; // @[shell.scala 21:12]
  assign io_mem_ARPROT = 3'h0; // @[shell.scala 21:12]
  assign io_mem_ARQOS = 4'h0; // @[shell.scala 21:12]
  assign io_mem_ARREGION = 4'h0; // @[shell.scala 21:12]
  assign io_mem_RREADY = dma_io_mem_RREADY; // @[shell.scala 21:12]
  assign io_host_AWREADY = dma_io_host_AWREADY; // @[shell.scala 22:13]
  assign io_host_WREADY = dma_io_host_WREADY; // @[shell.scala 22:13]
  assign io_host_BVALID = dma_io_host_BVALID; // @[shell.scala 22:13]
  assign io_host_BRESP = 2'h0; // @[shell.scala 22:13]
  assign io_host_ARREADY = dma_io_host_ARREADY; // @[shell.scala 22:13]
  assign io_host_RVALID = dma_io_host_RVALID; // @[shell.scala 22:13]
  assign io_host_RDATA = dma_io_host_RDATA; // @[shell.scala 22:13]
  assign io_host_RRESP = 2'h0; // @[shell.scala 22:13]
  assign io_interrupt = computer_io_interrupt; // @[shell.scala 26:18]
  assign dma_clock = clock;
  assign dma_reset = reset;
  assign dma_io_mem_AWREADY = io_mem_AWREADY; // @[shell.scala 21:12]
  assign dma_io_mem_WREADY = io_mem_WREADY; // @[shell.scala 21:12]
  assign dma_io_mem_BVALID = io_mem_BVALID; // @[shell.scala 21:12]
  assign dma_io_mem_ARREADY = io_mem_ARREADY; // @[shell.scala 21:12]
  assign dma_io_mem_RVALID = io_mem_RVALID; // @[shell.scala 21:12]
  assign dma_io_mem_RDATA = io_mem_RDATA; // @[shell.scala 21:12]
  assign dma_io_mem_RLAST = io_mem_RLAST; // @[shell.scala 21:12]
  assign dma_io_core_done = computer_io_core_done; // @[shell.scala 24:17]
  assign dma_io_core_result = computer_io_core_result; // @[shell.scala 24:17]
  assign dma_io_host_AWVALID = io_host_AWVALID; // @[shell.scala 22:13]
  assign dma_io_host_AWADDR = io_host_AWADDR; // @[shell.scala 22:13]
  assign dma_io_host_WVALID = io_host_WVALID; // @[shell.scala 22:13]
  assign dma_io_host_WDATA = io_host_WDATA; // @[shell.scala 22:13]
  assign dma_io_host_BREADY = io_host_BREADY; // @[shell.scala 22:13]
  assign dma_io_host_ARVALID = io_host_ARVALID; // @[shell.scala 22:13]
  assign dma_io_host_ARADDR = io_host_ARADDR; // @[shell.scala 22:13]
  assign dma_io_host_RREADY = io_host_RREADY; // @[shell.scala 22:13]
  assign computer_clock = clock;
  assign computer_reset = reset;
  assign computer_io_core_start = dma_io_core_start; // @[shell.scala 24:17]
  assign computer_io_core_input_0 = dma_io_core_input_0; // @[shell.scala 24:17]
  assign computer_io_core_input_1 = dma_io_core_input_1; // @[shell.scala 24:17]
  assign computer_io_core_input_2 = dma_io_core_input_2; // @[shell.scala 24:17]
  assign computer_io_core_input_3 = dma_io_core_input_3; // @[shell.scala 24:17]
  assign computer_io_core_weight_0 = dma_io_core_weight_0; // @[shell.scala 24:17]
  assign computer_io_core_weight_1 = dma_io_core_weight_1; // @[shell.scala 24:17]
  assign computer_io_core_weight_2 = dma_io_core_weight_2; // @[shell.scala 24:17]
  assign computer_io_core_weight_3 = dma_io_core_weight_3; // @[shell.scala 24:17]
endmodule
