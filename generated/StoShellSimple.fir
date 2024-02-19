circuit StoShellSimple :
  module DMASimpleXil :
    input clock : Clock
    input reset : Reset
    output io : { mem : { AWVALID : UInt<1>, flip AWREADY : UInt<1>, AWADDR : UInt<32>, AWID : UInt<1>, AWUSER : UInt<0>, AWLEN : UInt<8>, AWSIZE : UInt<3>, AWBURST : UInt<2>, AWLOCK : UInt<2>, AWCACHE : UInt<4>, AWPROT : UInt<3>, AWQOS : UInt<4>, AWREGION : UInt<4>, WVALID : UInt<1>, flip WREADY : UInt<1>, WDATA : UInt<32>, WSTRB : UInt<4>, WLAST : UInt<1>, WID : UInt<1>, WUSER : UInt<0>, flip BVALID : UInt<1>, BREADY : UInt<1>, flip BRESP : UInt<2>, flip BID : UInt<1>, flip BUSER : UInt<0>, ARVALID : UInt<1>, flip ARREADY : UInt<1>, ARADDR : UInt<32>, ARID : UInt<1>, ARUSER : UInt<0>, ARLEN : UInt<8>, ARSIZE : UInt<3>, ARBURST : UInt<2>, ARLOCK : UInt<2>, ARCACHE : UInt<4>, ARPROT : UInt<3>, ARQOS : UInt<4>, ARREGION : UInt<4>, flip RVALID : UInt<1>, RREADY : UInt<1>, flip RDATA : UInt<32>, flip RRESP : UInt<2>, flip RLAST : UInt<1>, flip RID : UInt<1>, flip RUSER : UInt<0>}, core : { start : UInt<1>, input : UInt<32>[4], weight : UInt<32>[4], flip done : UInt<1>, flip result : UInt<32>}, host : { flip AWVALID : UInt<1>, AWREADY : UInt<1>, flip AWADDR : UInt<32>, flip WVALID : UInt<1>, WREADY : UInt<1>, flip WDATA : UInt<32>, flip WSTRB : UInt<4>, BVALID : UInt<1>, flip BREADY : UInt<1>, BRESP : UInt<2>, flip ARVALID : UInt<1>, ARREADY : UInt<1>, flip ARADDR : UInt<32>, RVALID : UInt<1>, flip RREADY : UInt<1>, RDATA : UInt<32>, RRESP : UInt<2>}}

    wire _dmaregs_WIRE : UInt<32>[32] @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[0] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[1] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[2] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[3] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[4] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[5] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[6] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[7] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[8] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[9] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[10] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[11] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[12] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[13] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[14] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[15] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[16] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[17] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[18] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[19] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[20] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[21] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[22] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[23] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[24] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[25] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[26] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[27] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[28] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[29] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[30] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    _dmaregs_WIRE[31] <= UInt<32>("h0") @[dmaXilinx.scala 15:34]
    reg dmaregs : UInt<32>[32], clock with :
      reset => (reset, _dmaregs_WIRE) @[dmaXilinx.scala 15:26]
    io.mem.AWID <= UInt<1>("h0") @[AXI.scala 346:10]
    io.mem.AWADDR <= UInt<1>("h0") @[AXI.scala 347:12]
    io.mem.AWLEN <= UInt<3>("h7") @[AXI.scala 348:11]
    io.mem.AWSIZE <= UInt<2>("h2") @[AXI.scala 349:12]
    io.mem.AWBURST <= UInt<1>("h1") @[AXI.scala 350:13]
    io.mem.AWLOCK <= UInt<1>("h0") @[AXI.scala 351:12]
    io.mem.AWCACHE <= UInt<2>("h2") @[AXI.scala 352:13]
    io.mem.AWPROT <= UInt<1>("h0") @[AXI.scala 353:12]
    io.mem.AWQOS <= UInt<1>("h0") @[AXI.scala 354:11]
    io.mem.AWUSER <= UInt<1>("h1") @[AXI.scala 355:12]
    io.mem.AWVALID <= UInt<1>("h0") @[AXI.scala 356:13]
    io.mem.AWREGION <= UInt<1>("h0") @[AXI.scala 358:14]
    io.mem.WDATA <= UInt<1>("h0") @[AXI.scala 360:11]
    node _io_mem_WSTRB_T = mux(UInt<1>("h1"), UInt<4>("hf"), UInt<4>("h0")) @[Bitwise.scala 74:12]
    io.mem.WSTRB <= _io_mem_WSTRB_T @[AXI.scala 361:11]
    io.mem.WLAST <= UInt<1>("h0") @[AXI.scala 362:11]
    io.mem.WUSER <= UInt<1>("h0") @[AXI.scala 363:11]
    io.mem.WVALID <= UInt<1>("h0") @[AXI.scala 364:12]
    io.mem.WID <= UInt<1>("h0") @[AXI.scala 366:9]
    io.mem.BREADY <= UInt<1>("h0") @[AXI.scala 368:12]
    io.mem.ARID <= UInt<1>("h0") @[AXI.scala 370:10]
    io.mem.ARADDR <= UInt<1>("h0") @[AXI.scala 371:12]
    io.mem.ARLEN <= UInt<3>("h7") @[AXI.scala 372:11]
    io.mem.ARSIZE <= UInt<2>("h2") @[AXI.scala 373:12]
    io.mem.ARBURST <= UInt<1>("h1") @[AXI.scala 374:13]
    io.mem.ARLOCK <= UInt<1>("h0") @[AXI.scala 375:12]
    io.mem.ARCACHE <= UInt<2>("h2") @[AXI.scala 376:13]
    io.mem.ARPROT <= UInt<1>("h0") @[AXI.scala 377:12]
    io.mem.ARQOS <= UInt<1>("h0") @[AXI.scala 378:11]
    io.mem.ARUSER <= UInt<1>("h1") @[AXI.scala 379:12]
    io.mem.ARVALID <= UInt<1>("h0") @[AXI.scala 380:13]
    io.mem.ARREGION <= UInt<1>("h0") @[AXI.scala 382:14]
    io.mem.RREADY <= UInt<1>("h0") @[AXI.scala 384:12]
    reg rstate : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[dmaXilinx.scala 24:25]
    wire rd_valid : UInt<1> @[dmaXilinx.scala 26:24]
    node _rd_valid_T = bits(dmaregs[3], 0, 0) @[dmaXilinx.scala 27:27]
    node _rd_valid_T_1 = bits(dmaregs[0], 1, 1) @[dmaXilinx.scala 27:43]
    node _rd_valid_T_2 = and(_rd_valid_T, _rd_valid_T_1) @[dmaXilinx.scala 27:31]
    rd_valid <= _rd_valid_T_2 @[dmaXilinx.scala 27:14]
    reg rd_len : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[dmaXilinx.scala 29:25]
    reg rd_addr : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[dmaXilinx.scala 30:26]
    when rd_valid : @[dmaXilinx.scala 32:20]
      node _rd_len_T = bits(dmaregs[2], 7, 0) @[dmaXilinx.scala 33:29]
      rd_len <= _rd_len_T @[dmaXilinx.scala 33:16]
      node _rd_addr_T = bits(dmaregs[1], 31, 0) @[dmaXilinx.scala 34:30]
      rd_addr <= _rd_addr_T @[dmaXilinx.scala 34:17]
    node _T = eq(UInt<2>("h0"), rstate) @[dmaXilinx.scala 37:20]
    when _T : @[dmaXilinx.scala 37:20]
      when rd_valid : @[dmaXilinx.scala 39:28]
        rstate <= UInt<2>("h1") @[dmaXilinx.scala 40:24]
    else :
      node _T_1 = eq(UInt<2>("h1"), rstate) @[dmaXilinx.scala 37:20]
      when _T_1 : @[dmaXilinx.scala 37:20]
        when io.mem.ARREADY : @[dmaXilinx.scala 44:34]
          rstate <= UInt<2>("h2") @[dmaXilinx.scala 45:24]
      else :
        node _T_2 = eq(UInt<2>("h2"), rstate) @[dmaXilinx.scala 37:20]
        when _T_2 : @[dmaXilinx.scala 37:20]
          node _T_3 = and(io.mem.RVALID, io.mem.RREADY) @[dmaXilinx.scala 49:32]
          node _T_4 = and(_T_3, io.mem.RLAST) @[dmaXilinx.scala 49:49]
          when _T_4 : @[dmaXilinx.scala 49:66]
            rstate <= UInt<2>("h0") @[dmaXilinx.scala 50:24]
    node _io_mem_ARVALID_T = eq(rstate, UInt<2>("h1")) @[dmaXilinx.scala 56:30]
    io.mem.ARVALID <= _io_mem_ARVALID_T @[dmaXilinx.scala 56:20]
    io.mem.ARADDR <= rd_addr @[dmaXilinx.scala 57:19]
    io.mem.ARLEN <= rd_len @[dmaXilinx.scala 58:18]
    io.mem.ARID <= UInt<1>("h0") @[dmaXilinx.scala 59:18]
    node _io_mem_RREADY_T = eq(rstate, UInt<2>("h2")) @[dmaXilinx.scala 61:29]
    io.mem.RREADY <= _io_mem_RREADY_T @[dmaXilinx.scala 61:19]
    reg rd_cnt : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[dmaXilinx.scala 63:25]
    node _T_5 = eq(rstate, UInt<2>("h0")) @[dmaXilinx.scala 65:17]
    when _T_5 : @[dmaXilinx.scala 65:32]
      rd_cnt <= UInt<1>("h0") @[dmaXilinx.scala 66:16]
    else :
      node _T_6 = and(io.mem.RVALID, io.mem.RREADY) @[dmaXilinx.scala 67:30]
      when _T_6 : @[dmaXilinx.scala 67:47]
        node _rd_cnt_T = add(rd_cnt, UInt<1>("h1")) @[dmaXilinx.scala 68:26]
        node _rd_cnt_T_1 = tail(_rd_cnt_T, 1) @[dmaXilinx.scala 68:26]
        rd_cnt <= _rd_cnt_T_1 @[dmaXilinx.scala 68:16]
    node _T_7 = and(io.mem.RVALID, io.mem.RREADY) @[dmaXilinx.scala 71:24]
    when _T_7 : @[dmaXilinx.scala 71:41]
      node _T_8 = bits(dmaregs[0], 0, 0) @[dmaXilinx.scala 72:24]
      when _T_8 : @[dmaXilinx.scala 72:29]
        node _T_9 = bits(rd_cnt, 4, 0) @[dmaXilinx.scala 74:34]
        node _T_10 = add(UInt<5>("h10"), _T_9) @[dmaXilinx.scala 74:26]
        node _T_11 = tail(_T_10, 1) @[dmaXilinx.scala 74:26]
        dmaregs[_T_11] <= io.mem.RDATA @[dmaXilinx.scala 74:41]
      else :
        node _T_12 = bits(rd_cnt, 4, 0) @[dmaXilinx.scala 78:33]
        node _T_13 = add(UInt<4>("h8"), _T_12) @[dmaXilinx.scala 78:25]
        node _T_14 = tail(_T_13, 1) @[dmaXilinx.scala 78:25]
        dmaregs[_T_14] <= io.mem.RDATA @[dmaXilinx.scala 78:40]
    reg wstate : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[dmaXilinx.scala 85:25]
    wire wr_valid : UInt<1> @[dmaXilinx.scala 87:24]
    node _wr_valid_T = bits(dmaregs[3], 0, 0) @[dmaXilinx.scala 88:27]
    node _wr_valid_T_1 = bits(dmaregs[0], 1, 1) @[dmaXilinx.scala 88:45]
    node _wr_valid_T_2 = eq(_wr_valid_T_1, UInt<1>("h0")) @[dmaXilinx.scala 88:34]
    node _wr_valid_T_3 = and(_wr_valid_T, _wr_valid_T_2) @[dmaXilinx.scala 88:31]
    node _wr_valid_T_4 = bits(dmaregs[0], 0, 0) @[dmaXilinx.scala 88:62]
    node _wr_valid_T_5 = and(_wr_valid_T_3, _wr_valid_T_4) @[dmaXilinx.scala 88:50]
    wr_valid <= _wr_valid_T_5 @[dmaXilinx.scala 88:14]
    reg wr_cnt : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[dmaXilinx.scala 90:25]
    node _T_15 = eq(wstate, UInt<2>("h0")) @[dmaXilinx.scala 91:17]
    when _T_15 : @[dmaXilinx.scala 91:33]
      wr_cnt <= UInt<1>("h0") @[dmaXilinx.scala 92:16]
    else :
      node _T_16 = and(io.mem.WREADY, io.mem.WVALID) @[dmaXilinx.scala 93:30]
      when _T_16 : @[dmaXilinx.scala 93:48]
        node _wr_cnt_T = add(wr_cnt, UInt<1>("h1")) @[dmaXilinx.scala 94:26]
        node _wr_cnt_T_1 = tail(_wr_cnt_T, 1) @[dmaXilinx.scala 94:26]
        wr_cnt <= _wr_cnt_T_1 @[dmaXilinx.scala 94:16]
    reg wr_len : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[dmaXilinx.scala 97:25]
    reg wr_addr : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[dmaXilinx.scala 98:26]
    when wr_valid : @[dmaXilinx.scala 100:20]
      node _wr_len_T = bits(dmaregs[2], 7, 0) @[dmaXilinx.scala 101:29]
      wr_len <= _wr_len_T @[dmaXilinx.scala 101:16]
      node _wr_addr_T = bits(dmaregs[1], 31, 0) @[dmaXilinx.scala 102:30]
      wr_addr <= _wr_addr_T @[dmaXilinx.scala 102:17]
    node _T_17 = eq(UInt<2>("h0"), wstate) @[dmaXilinx.scala 105:20]
    when _T_17 : @[dmaXilinx.scala 105:20]
      when wr_valid : @[dmaXilinx.scala 107:28]
        wstate <= UInt<2>("h1") @[dmaXilinx.scala 108:22]
    else :
      node _T_18 = eq(UInt<2>("h1"), wstate) @[dmaXilinx.scala 105:20]
      when _T_18 : @[dmaXilinx.scala 105:20]
        when io.mem.AWREADY : @[dmaXilinx.scala 112:34]
          wstate <= UInt<2>("h2") @[dmaXilinx.scala 113:24]
      else :
        node _T_19 = eq(UInt<2>("h2"), wstate) @[dmaXilinx.scala 105:20]
        when _T_19 : @[dmaXilinx.scala 105:20]
          node _T_20 = eq(wr_cnt, wr_len) @[dmaXilinx.scala 117:42]
          node _T_21 = and(io.mem.WREADY, _T_20) @[dmaXilinx.scala 117:32]
          when _T_21 : @[dmaXilinx.scala 117:54]
            wstate <= UInt<2>("h3") @[dmaXilinx.scala 118:24]
        else :
          node _T_22 = eq(UInt<2>("h3"), wstate) @[dmaXilinx.scala 105:20]
          when _T_22 : @[dmaXilinx.scala 105:20]
            when io.mem.BVALID : @[dmaXilinx.scala 122:33]
              wstate <= UInt<2>("h0") @[dmaXilinx.scala 123:24]
    node _io_mem_AWVALID_T = eq(wstate, UInt<2>("h1")) @[dmaXilinx.scala 128:30]
    io.mem.AWVALID <= _io_mem_AWVALID_T @[dmaXilinx.scala 128:20]
    io.mem.AWADDR <= wr_addr @[dmaXilinx.scala 129:19]
    io.mem.AWLEN <= wr_len @[dmaXilinx.scala 130:18]
    node _io_mem_WVALID_T = eq(wstate, UInt<2>("h2")) @[dmaXilinx.scala 132:29]
    io.mem.WVALID <= _io_mem_WVALID_T @[dmaXilinx.scala 132:19]
    node _io_mem_WSTRB_T_1 = mux(UInt<1>("h1"), UInt<4>("hf"), UInt<4>("h0")) @[Bitwise.scala 74:12]
    io.mem.WSTRB <= _io_mem_WSTRB_T_1 @[dmaXilinx.scala 133:18]
    node _io_mem_WLAST_T = eq(wr_cnt, wr_len) @[dmaXilinx.scala 134:28]
    io.mem.WLAST <= _io_mem_WLAST_T @[dmaXilinx.scala 134:18]
    node _T_23 = and(io.mem.WREADY, io.mem.WVALID) @[dmaXilinx.scala 136:24]
    when _T_23 : @[dmaXilinx.scala 136:41]
      node _io_mem_WDATA_T = bits(wr_cnt, 4, 0) @[dmaXilinx.scala 137:46]
      node _io_mem_WDATA_T_1 = add(UInt<5>("h18"), _io_mem_WDATA_T) @[dmaXilinx.scala 137:38]
      node _io_mem_WDATA_T_2 = tail(_io_mem_WDATA_T_1, 1) @[dmaXilinx.scala 137:38]
      io.mem.WDATA <= dmaregs[_io_mem_WDATA_T_2] @[dmaXilinx.scala 137:22]
    node _io_mem_BREADY_T = eq(wstate, UInt<2>("h3")) @[dmaXilinx.scala 140:29]
    io.mem.BREADY <= _io_mem_BREADY_T @[dmaXilinx.scala 140:19]
    reg h_rstate : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[dmaXilinx.scala 146:27]
    node _T_24 = eq(UInt<1>("h0"), h_rstate) @[dmaXilinx.scala 148:22]
    when _T_24 : @[dmaXilinx.scala 148:22]
      when io.host.ARVALID : @[dmaXilinx.scala 150:35]
        h_rstate <= UInt<1>("h1") @[dmaXilinx.scala 151:26]
    else :
      node _T_25 = eq(UInt<1>("h1"), h_rstate) @[dmaXilinx.scala 148:22]
      when _T_25 : @[dmaXilinx.scala 148:22]
        when io.host.RREADY : @[dmaXilinx.scala 155:34]
          h_rstate <= UInt<1>("h0") @[dmaXilinx.scala 156:26]
    reg h_rd_addr : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[dmaXilinx.scala 161:28]
    node _T_26 = and(io.host.ARREADY, io.host.ARVALID) @[dmaXilinx.scala 162:26]
    when _T_26 : @[dmaXilinx.scala 162:46]
      h_rd_addr <= io.host.ARADDR @[dmaXilinx.scala 163:19]
    node _io_host_RDATA_T = bits(h_rd_addr, 6, 2) @[dmaXilinx.scala 166:39]
    io.host.RDATA <= dmaregs[_io_host_RDATA_T] @[dmaXilinx.scala 166:19]
    node _io_host_ARREADY_T = eq(h_rstate, UInt<1>("h0")) @[dmaXilinx.scala 168:33]
    io.host.ARREADY <= _io_host_ARREADY_T @[dmaXilinx.scala 168:21]
    node _io_host_RVALID_T = eq(h_rstate, UInt<1>("h1")) @[dmaXilinx.scala 169:32]
    io.host.RVALID <= _io_host_RVALID_T @[dmaXilinx.scala 169:20]
    io.host.RRESP <= UInt<1>("h0") @[dmaXilinx.scala 170:19]
    reg h_wstate : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[dmaXilinx.scala 174:27]
    node _T_27 = eq(UInt<2>("h0"), h_wstate) @[dmaXilinx.scala 176:22]
    when _T_27 : @[dmaXilinx.scala 176:22]
      when io.host.AWVALID : @[dmaXilinx.scala 178:35]
        h_wstate <= UInt<2>("h1") @[dmaXilinx.scala 179:26]
    else :
      node _T_28 = eq(UInt<2>("h1"), h_wstate) @[dmaXilinx.scala 176:22]
      when _T_28 : @[dmaXilinx.scala 176:22]
        when io.host.WVALID : @[dmaXilinx.scala 183:34]
          h_wstate <= UInt<2>("h2") @[dmaXilinx.scala 184:26]
      else :
        node _T_29 = eq(UInt<2>("h2"), h_wstate) @[dmaXilinx.scala 176:22]
        when _T_29 : @[dmaXilinx.scala 176:22]
          when io.host.BREADY : @[dmaXilinx.scala 188:34]
            h_wstate <= UInt<2>("h0") @[dmaXilinx.scala 189:26]
    reg h_wr_addr : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[dmaXilinx.scala 194:28]
    node _T_30 = and(io.host.AWVALID, io.host.AWREADY) @[dmaXilinx.scala 195:26]
    when _T_30 : @[dmaXilinx.scala 195:46]
      h_wr_addr <= io.host.AWADDR @[dmaXilinx.scala 196:19]
    node _T_31 = and(io.host.WVALID, io.host.WREADY) @[dmaXilinx.scala 199:25]
    when _T_31 : @[dmaXilinx.scala 199:43]
      node _T_32 = bits(h_wr_addr, 6, 2) @[dmaXilinx.scala 200:26]
      dmaregs[_T_32] <= io.host.WDATA @[dmaXilinx.scala 200:33]
    node _io_host_AWREADY_T = eq(h_wstate, UInt<2>("h0")) @[dmaXilinx.scala 203:33]
    io.host.AWREADY <= _io_host_AWREADY_T @[dmaXilinx.scala 203:21]
    node _io_host_WREADY_T = eq(h_wstate, UInt<2>("h1")) @[dmaXilinx.scala 204:32]
    io.host.WREADY <= _io_host_WREADY_T @[dmaXilinx.scala 204:20]
    node _io_host_BVALID_T = eq(h_wstate, UInt<2>("h2")) @[dmaXilinx.scala 205:32]
    io.host.BVALID <= _io_host_BVALID_T @[dmaXilinx.scala 205:20]
    io.host.BRESP <= UInt<1>("h0") @[dmaXilinx.scala 206:19]
    reg corestate : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[dmaXilinx.scala 210:28]
    wire compute_start : UInt<1> @[dmaXilinx.scala 212:29]
    node _compute_start_T = bits(dmaregs[3], 0, 0) @[dmaXilinx.scala 213:32]
    node _compute_start_T_1 = bits(dmaregs[0], 0, 0) @[dmaXilinx.scala 213:50]
    node _compute_start_T_2 = eq(_compute_start_T_1, UInt<1>("h0")) @[dmaXilinx.scala 213:39]
    node _compute_start_T_3 = and(_compute_start_T, _compute_start_T_2) @[dmaXilinx.scala 213:36]
    node _compute_start_T_4 = bits(dmaregs[0], 1, 1) @[dmaXilinx.scala 213:69]
    node _compute_start_T_5 = eq(_compute_start_T_4, UInt<1>("h0")) @[dmaXilinx.scala 213:58]
    node _compute_start_T_6 = and(_compute_start_T_3, _compute_start_T_5) @[dmaXilinx.scala 213:55]
    compute_start <= _compute_start_T_6 @[dmaXilinx.scala 213:19]
    node _T_33 = eq(UInt<1>("h0"), corestate) @[dmaXilinx.scala 215:23]
    when _T_33 : @[dmaXilinx.scala 215:23]
      when compute_start : @[dmaXilinx.scala 217:33]
        corestate <= UInt<1>("h1") @[dmaXilinx.scala 218:27]
    else :
      node _T_34 = eq(UInt<1>("h1"), corestate) @[dmaXilinx.scala 215:23]
      when _T_34 : @[dmaXilinx.scala 215:23]
        when io.core.done : @[dmaXilinx.scala 222:32]
          corestate <= UInt<1>("h0") @[dmaXilinx.scala 223:27]
    io.core.start <= compute_start @[dmaXilinx.scala 228:19]
    io.core.input[0] <= dmaregs[8] @[dmaXilinx.scala 231:26]
    io.core.weight[0] <= dmaregs[16] @[dmaXilinx.scala 232:27]
    io.core.input[1] <= dmaregs[9] @[dmaXilinx.scala 231:26]
    io.core.weight[1] <= dmaregs[17] @[dmaXilinx.scala 232:27]
    io.core.input[2] <= dmaregs[10] @[dmaXilinx.scala 231:26]
    io.core.weight[2] <= dmaregs[18] @[dmaXilinx.scala 232:27]
    io.core.input[3] <= dmaregs[11] @[dmaXilinx.scala 231:26]
    io.core.weight[3] <= dmaregs[19] @[dmaXilinx.scala 232:27]
    when io.core.done : @[dmaXilinx.scala 235:24]
      dmaregs[24] <= io.core.result @[dmaXilinx.scala 236:21]

  module LFSR :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<27>("h7e1726c")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module SNG2 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR @[SNG.scala 94:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 95:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 99:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 99:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 100:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 100:16]

  module SMUL :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip input : SInt<8>, flip weight : SInt<8>, product : UInt<1>}

    inst SNG2 of SNG2 @[SDOT.scala 18:22]
    SNG2.clock <= clock
    SNG2.reset <= reset
    SNG2.io.enable <= io.enable @[SDOT.scala 20:17]
    SNG2.io.binNum1 <= io.input @[SDOT.scala 21:18]
    SNG2.io.binNum2 <= io.weight @[SDOT.scala 22:18]
    reg stoWeight : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stoWeight) @[SDOT.scala 25:28]
    stoWeight <= SNG2.io.stoNum2 @[SDOT.scala 25:28]
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:30]
    node _io_product_T_1 = not(_io_product_T) @[SDOT.scala 27:19]
    io.product <= _io_product_T_1 @[SDOT.scala 27:16]

  module LFSR_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<28>("hfc2e4d8")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module SNG2_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_1 @[SNG.scala 94:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 95:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 99:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 99:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 100:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 100:16]

  module SMUL_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip input : SInt<8>, flip weight : SInt<8>, product : UInt<1>}

    inst SNG2 of SNG2_1 @[SDOT.scala 18:22]
    SNG2.clock <= clock
    SNG2.reset <= reset
    SNG2.io.enable <= io.enable @[SDOT.scala 20:17]
    SNG2.io.binNum1 <= io.input @[SDOT.scala 21:18]
    SNG2.io.binNum2 <= io.weight @[SDOT.scala 22:18]
    reg stoWeight : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stoWeight) @[SDOT.scala 25:28]
    stoWeight <= SNG2.io.stoNum2 @[SDOT.scala 25:28]
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:30]
    node _io_product_T_1 = not(_io_product_T) @[SDOT.scala 27:19]
    io.product <= _io_product_T_1 @[SDOT.scala 27:16]

  module LFSR_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<29>("h17a45744")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module SNG2_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_2 @[SNG.scala 94:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 95:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 99:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 99:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 100:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 100:16]

  module SMUL_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip input : SInt<8>, flip weight : SInt<8>, product : UInt<1>}

    inst SNG2 of SNG2_2 @[SDOT.scala 18:22]
    SNG2.clock <= clock
    SNG2.reset <= reset
    SNG2.io.enable <= io.enable @[SDOT.scala 20:17]
    SNG2.io.binNum1 <= io.input @[SDOT.scala 21:18]
    SNG2.io.binNum2 <= io.weight @[SDOT.scala 22:18]
    reg stoWeight : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stoWeight) @[SDOT.scala 25:28]
    stoWeight <= SNG2.io.stoNum2 @[SDOT.scala 25:28]
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:30]
    node _io_product_T_1 = not(_io_product_T) @[SDOT.scala 27:19]
    io.product <= _io_product_T_1 @[SDOT.scala 27:16]

  module LFSR_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<29>("h1f85c9b0")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module SNG2_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_3 @[SNG.scala 94:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 95:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 99:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 99:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 100:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 100:16]

  module SMUL_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip input : SInt<8>, flip weight : SInt<8>, product : UInt<1>}

    inst SNG2 of SNG2_3 @[SDOT.scala 18:22]
    SNG2.clock <= clock
    SNG2.reset <= reset
    SNG2.io.enable <= io.enable @[SDOT.scala 20:17]
    SNG2.io.binNum1 <= io.input @[SDOT.scala 21:18]
    SNG2.io.binNum2 <= io.weight @[SDOT.scala 22:18]
    reg stoWeight : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stoWeight) @[SDOT.scala 25:28]
    stoWeight <= SNG2.io.stoNum2 @[SDOT.scala 25:28]
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:30]
    node _io_product_T_1 = not(_io_product_T) @[SDOT.scala 27:19]
    io.product <= _io_product_T_1 @[SDOT.scala 27:16]

  module LFSR_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<30>("h27673c1c")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module SNG2_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_4 @[SNG.scala 94:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 95:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 99:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 99:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 100:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 100:16]

  module SMUL_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip input : SInt<8>, flip weight : SInt<8>, product : UInt<1>}

    inst SNG2 of SNG2_4 @[SDOT.scala 18:22]
    SNG2.clock <= clock
    SNG2.reset <= reset
    SNG2.io.enable <= io.enable @[SDOT.scala 20:17]
    SNG2.io.binNum1 <= io.input @[SDOT.scala 21:18]
    SNG2.io.binNum2 <= io.weight @[SDOT.scala 22:18]
    reg stoWeight : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stoWeight) @[SDOT.scala 25:28]
    stoWeight <= SNG2.io.stoNum2 @[SDOT.scala 25:28]
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:30]
    node _io_product_T_1 = not(_io_product_T) @[SDOT.scala 27:19]
    io.product <= _io_product_T_1 @[SDOT.scala 27:16]

  module LFSR_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<30>("h2f48ae88")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module SNG2_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_5 @[SNG.scala 94:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 95:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 99:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 99:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 100:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 100:16]

  module SMUL_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip input : SInt<8>, flip weight : SInt<8>, product : UInt<1>}

    inst SNG2 of SNG2_5 @[SDOT.scala 18:22]
    SNG2.clock <= clock
    SNG2.reset <= reset
    SNG2.io.enable <= io.enable @[SDOT.scala 20:17]
    SNG2.io.binNum1 <= io.input @[SDOT.scala 21:18]
    SNG2.io.binNum2 <= io.weight @[SDOT.scala 22:18]
    reg stoWeight : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stoWeight) @[SDOT.scala 25:28]
    stoWeight <= SNG2.io.stoNum2 @[SDOT.scala 25:28]
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:30]
    node _io_product_T_1 = not(_io_product_T) @[SDOT.scala 27:19]
    io.product <= _io_product_T_1 @[SDOT.scala 27:16]

  module LFSR_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<30>("h372a20f4")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module SNG2_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_6 @[SNG.scala 94:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 95:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 99:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 99:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 100:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 100:16]

  module SMUL_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip input : SInt<8>, flip weight : SInt<8>, product : UInt<1>}

    inst SNG2 of SNG2_6 @[SDOT.scala 18:22]
    SNG2.clock <= clock
    SNG2.reset <= reset
    SNG2.io.enable <= io.enable @[SDOT.scala 20:17]
    SNG2.io.binNum1 <= io.input @[SDOT.scala 21:18]
    SNG2.io.binNum2 <= io.weight @[SDOT.scala 22:18]
    reg stoWeight : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stoWeight) @[SDOT.scala 25:28]
    stoWeight <= SNG2.io.stoNum2 @[SDOT.scala 25:28]
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:30]
    node _io_product_T_1 = not(_io_product_T) @[SDOT.scala 27:19]
    io.product <= _io_product_T_1 @[SDOT.scala 27:16]

  module LFSR_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<30>("h3f0b9360")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module SNG2_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_7 @[SNG.scala 94:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 95:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 99:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 99:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 100:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 100:16]

  module SMUL_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip input : SInt<8>, flip weight : SInt<8>, product : UInt<1>}

    inst SNG2 of SNG2_7 @[SDOT.scala 18:22]
    SNG2.clock <= clock
    SNG2.reset <= reset
    SNG2.io.enable <= io.enable @[SDOT.scala 20:17]
    SNG2.io.binNum1 <= io.input @[SDOT.scala 21:18]
    SNG2.io.binNum2 <= io.weight @[SDOT.scala 22:18]
    reg stoWeight : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stoWeight) @[SDOT.scala 25:28]
    stoWeight <= SNG2.io.stoNum2 @[SDOT.scala 25:28]
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:30]
    node _io_product_T_1 = not(_io_product_T) @[SDOT.scala 27:19]
    io.product <= _io_product_T_1 @[SDOT.scala 27:16]

  module LFSR_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h46ed05cc")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module SNG2_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_8 @[SNG.scala 94:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 95:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 99:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 99:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 100:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 100:16]

  module SMUL_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip input : SInt<8>, flip weight : SInt<8>, product : UInt<1>}

    inst SNG2 of SNG2_8 @[SDOT.scala 18:22]
    SNG2.clock <= clock
    SNG2.reset <= reset
    SNG2.io.enable <= io.enable @[SDOT.scala 20:17]
    SNG2.io.binNum1 <= io.input @[SDOT.scala 21:18]
    SNG2.io.binNum2 <= io.weight @[SDOT.scala 22:18]
    reg stoWeight : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stoWeight) @[SDOT.scala 25:28]
    stoWeight <= SNG2.io.stoNum2 @[SDOT.scala 25:28]
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:30]
    node _io_product_T_1 = not(_io_product_T) @[SDOT.scala 27:19]
    io.product <= _io_product_T_1 @[SDOT.scala 27:16]

  module LFSR_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h4ece7838")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module SNG2_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_9 @[SNG.scala 94:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 95:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 99:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 99:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 100:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 100:16]

  module SMUL_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip input : SInt<8>, flip weight : SInt<8>, product : UInt<1>}

    inst SNG2 of SNG2_9 @[SDOT.scala 18:22]
    SNG2.clock <= clock
    SNG2.reset <= reset
    SNG2.io.enable <= io.enable @[SDOT.scala 20:17]
    SNG2.io.binNum1 <= io.input @[SDOT.scala 21:18]
    SNG2.io.binNum2 <= io.weight @[SDOT.scala 22:18]
    reg stoWeight : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stoWeight) @[SDOT.scala 25:28]
    stoWeight <= SNG2.io.stoNum2 @[SDOT.scala 25:28]
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:30]
    node _io_product_T_1 = not(_io_product_T) @[SDOT.scala 27:19]
    io.product <= _io_product_T_1 @[SDOT.scala 27:16]

  module LFSR_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h56afeaa4")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module SNG2_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_10 @[SNG.scala 94:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 95:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 99:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 99:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 100:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 100:16]

  module SMUL_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip input : SInt<8>, flip weight : SInt<8>, product : UInt<1>}

    inst SNG2 of SNG2_10 @[SDOT.scala 18:22]
    SNG2.clock <= clock
    SNG2.reset <= reset
    SNG2.io.enable <= io.enable @[SDOT.scala 20:17]
    SNG2.io.binNum1 <= io.input @[SDOT.scala 21:18]
    SNG2.io.binNum2 <= io.weight @[SDOT.scala 22:18]
    reg stoWeight : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stoWeight) @[SDOT.scala 25:28]
    stoWeight <= SNG2.io.stoNum2 @[SDOT.scala 25:28]
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:30]
    node _io_product_T_1 = not(_io_product_T) @[SDOT.scala 27:19]
    io.product <= _io_product_T_1 @[SDOT.scala 27:16]

  module LFSR_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h5e915d10")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module SNG2_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_11 @[SNG.scala 94:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 95:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 99:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 99:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 100:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 100:16]

  module SMUL_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip input : SInt<8>, flip weight : SInt<8>, product : UInt<1>}

    inst SNG2 of SNG2_11 @[SDOT.scala 18:22]
    SNG2.clock <= clock
    SNG2.reset <= reset
    SNG2.io.enable <= io.enable @[SDOT.scala 20:17]
    SNG2.io.binNum1 <= io.input @[SDOT.scala 21:18]
    SNG2.io.binNum2 <= io.weight @[SDOT.scala 22:18]
    reg stoWeight : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stoWeight) @[SDOT.scala 25:28]
    stoWeight <= SNG2.io.stoNum2 @[SDOT.scala 25:28]
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:30]
    node _io_product_T_1 = not(_io_product_T) @[SDOT.scala 27:19]
    io.product <= _io_product_T_1 @[SDOT.scala 27:16]

  module LFSR_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h6672cf7c")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module SNG2_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_12 @[SNG.scala 94:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 95:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 99:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 99:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 100:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 100:16]

  module SMUL_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip input : SInt<8>, flip weight : SInt<8>, product : UInt<1>}

    inst SNG2 of SNG2_12 @[SDOT.scala 18:22]
    SNG2.clock <= clock
    SNG2.reset <= reset
    SNG2.io.enable <= io.enable @[SDOT.scala 20:17]
    SNG2.io.binNum1 <= io.input @[SDOT.scala 21:18]
    SNG2.io.binNum2 <= io.weight @[SDOT.scala 22:18]
    reg stoWeight : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stoWeight) @[SDOT.scala 25:28]
    stoWeight <= SNG2.io.stoNum2 @[SDOT.scala 25:28]
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:30]
    node _io_product_T_1 = not(_io_product_T) @[SDOT.scala 27:19]
    io.product <= _io_product_T_1 @[SDOT.scala 27:16]

  module LFSR_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h6e5441e8")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module SNG2_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_13 @[SNG.scala 94:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 95:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 99:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 99:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 100:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 100:16]

  module SMUL_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip input : SInt<8>, flip weight : SInt<8>, product : UInt<1>}

    inst SNG2 of SNG2_13 @[SDOT.scala 18:22]
    SNG2.clock <= clock
    SNG2.reset <= reset
    SNG2.io.enable <= io.enable @[SDOT.scala 20:17]
    SNG2.io.binNum1 <= io.input @[SDOT.scala 21:18]
    SNG2.io.binNum2 <= io.weight @[SDOT.scala 22:18]
    reg stoWeight : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stoWeight) @[SDOT.scala 25:28]
    stoWeight <= SNG2.io.stoNum2 @[SDOT.scala 25:28]
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:30]
    node _io_product_T_1 = not(_io_product_T) @[SDOT.scala 27:19]
    io.product <= _io_product_T_1 @[SDOT.scala 27:16]

  module LFSR_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h7635b454")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module SNG2_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_14 @[SNG.scala 94:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 95:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 99:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 99:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 100:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 100:16]

  module SMUL_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip input : SInt<8>, flip weight : SInt<8>, product : UInt<1>}

    inst SNG2 of SNG2_14 @[SDOT.scala 18:22]
    SNG2.clock <= clock
    SNG2.reset <= reset
    SNG2.io.enable <= io.enable @[SDOT.scala 20:17]
    SNG2.io.binNum1 <= io.input @[SDOT.scala 21:18]
    SNG2.io.binNum2 <= io.weight @[SDOT.scala 22:18]
    reg stoWeight : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stoWeight) @[SDOT.scala 25:28]
    stoWeight <= SNG2.io.stoNum2 @[SDOT.scala 25:28]
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:30]
    node _io_product_T_1 = not(_io_product_T) @[SDOT.scala 27:19]
    io.product <= _io_product_T_1 @[SDOT.scala 27:16]

  module LFSR_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h7e1726c0")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module SNG2_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_15 @[SNG.scala 94:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 95:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 99:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 99:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 100:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 100:16]

  module SMUL_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip input : SInt<8>, flip weight : SInt<8>, product : UInt<1>}

    inst SNG2 of SNG2_15 @[SDOT.scala 18:22]
    SNG2.clock <= clock
    SNG2.reset <= reset
    SNG2.io.enable <= io.enable @[SDOT.scala 20:17]
    SNG2.io.binNum1 <= io.input @[SDOT.scala 21:18]
    SNG2.io.binNum2 <= io.weight @[SDOT.scala 22:18]
    reg stoWeight : UInt<1>, clock with :
      reset => (UInt<1>("h0"), stoWeight) @[SDOT.scala 25:28]
    stoWeight <= SNG2.io.stoNum2 @[SDOT.scala 25:28]
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:30]
    node _io_product_T_1 = not(_io_product_T) @[SDOT.scala 27:19]
    io.product <= _io_product_T_1 @[SDOT.scala 27:16]

  module SADD :
    input clock : Clock
    input reset : Reset
    output io : { flip input : UInt<1>, flip weight : UInt<1>, flip selnum : UInt<1>, sum : UInt<1>}

    node _rs_T = mux(io.selnum, io.input, io.weight) @[SDOT.scala 38:25]
    reg rs : UInt<1>, clock with :
      reset => (UInt<1>("h0"), rs) @[SDOT.scala 38:21]
    rs <= _rs_T @[SDOT.scala 38:21]
    io.sum <= rs @[SDOT.scala 40:12]

  module SADD_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip input : UInt<1>, flip weight : UInt<1>, flip selnum : UInt<1>, sum : UInt<1>}

    node _rs_T = mux(io.selnum, io.input, io.weight) @[SDOT.scala 38:25]
    reg rs : UInt<1>, clock with :
      reset => (UInt<1>("h0"), rs) @[SDOT.scala 38:21]
    rs <= _rs_T @[SDOT.scala 38:21]
    io.sum <= rs @[SDOT.scala 40:12]

  module SADD_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip input : UInt<1>, flip weight : UInt<1>, flip selnum : UInt<1>, sum : UInt<1>}

    node _rs_T = mux(io.selnum, io.input, io.weight) @[SDOT.scala 38:25]
    reg rs : UInt<1>, clock with :
      reset => (UInt<1>("h0"), rs) @[SDOT.scala 38:21]
    rs <= _rs_T @[SDOT.scala 38:21]
    io.sum <= rs @[SDOT.scala 40:12]

  module SADD_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip input : UInt<1>, flip weight : UInt<1>, flip selnum : UInt<1>, sum : UInt<1>}

    node _rs_T = mux(io.selnum, io.input, io.weight) @[SDOT.scala 38:25]
    reg rs : UInt<1>, clock with :
      reset => (UInt<1>("h0"), rs) @[SDOT.scala 38:21]
    rs <= _rs_T @[SDOT.scala 38:21]
    io.sum <= rs @[SDOT.scala 40:12]

  module SADD_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip input : UInt<1>, flip weight : UInt<1>, flip selnum : UInt<1>, sum : UInt<1>}

    node _rs_T = mux(io.selnum, io.input, io.weight) @[SDOT.scala 38:25]
    reg rs : UInt<1>, clock with :
      reset => (UInt<1>("h0"), rs) @[SDOT.scala 38:21]
    rs <= _rs_T @[SDOT.scala 38:21]
    io.sum <= rs @[SDOT.scala 40:12]

  module SADD_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip input : UInt<1>, flip weight : UInt<1>, flip selnum : UInt<1>, sum : UInt<1>}

    node _rs_T = mux(io.selnum, io.input, io.weight) @[SDOT.scala 38:25]
    reg rs : UInt<1>, clock with :
      reset => (UInt<1>("h0"), rs) @[SDOT.scala 38:21]
    rs <= _rs_T @[SDOT.scala 38:21]
    io.sum <= rs @[SDOT.scala 40:12]

  module SADD_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip input : UInt<1>, flip weight : UInt<1>, flip selnum : UInt<1>, sum : UInt<1>}

    node _rs_T = mux(io.selnum, io.input, io.weight) @[SDOT.scala 38:25]
    reg rs : UInt<1>, clock with :
      reset => (UInt<1>("h0"), rs) @[SDOT.scala 38:21]
    rs <= _rs_T @[SDOT.scala 38:21]
    io.sum <= rs @[SDOT.scala 40:12]

  module SADD_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip input : UInt<1>, flip weight : UInt<1>, flip selnum : UInt<1>, sum : UInt<1>}

    node _rs_T = mux(io.selnum, io.input, io.weight) @[SDOT.scala 38:25]
    reg rs : UInt<1>, clock with :
      reset => (UInt<1>("h0"), rs) @[SDOT.scala 38:21]
    rs <= _rs_T @[SDOT.scala 38:21]
    io.sum <= rs @[SDOT.scala 40:12]

  module SADD_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip input : UInt<1>, flip weight : UInt<1>, flip selnum : UInt<1>, sum : UInt<1>}

    node _rs_T = mux(io.selnum, io.input, io.weight) @[SDOT.scala 38:25]
    reg rs : UInt<1>, clock with :
      reset => (UInt<1>("h0"), rs) @[SDOT.scala 38:21]
    rs <= _rs_T @[SDOT.scala 38:21]
    io.sum <= rs @[SDOT.scala 40:12]

  module SADD_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip input : UInt<1>, flip weight : UInt<1>, flip selnum : UInt<1>, sum : UInt<1>}

    node _rs_T = mux(io.selnum, io.input, io.weight) @[SDOT.scala 38:25]
    reg rs : UInt<1>, clock with :
      reset => (UInt<1>("h0"), rs) @[SDOT.scala 38:21]
    rs <= _rs_T @[SDOT.scala 38:21]
    io.sum <= rs @[SDOT.scala 40:12]

  module SADD_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip input : UInt<1>, flip weight : UInt<1>, flip selnum : UInt<1>, sum : UInt<1>}

    node _rs_T = mux(io.selnum, io.input, io.weight) @[SDOT.scala 38:25]
    reg rs : UInt<1>, clock with :
      reset => (UInt<1>("h0"), rs) @[SDOT.scala 38:21]
    rs <= _rs_T @[SDOT.scala 38:21]
    io.sum <= rs @[SDOT.scala 40:12]

  module SADD_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip input : UInt<1>, flip weight : UInt<1>, flip selnum : UInt<1>, sum : UInt<1>}

    node _rs_T = mux(io.selnum, io.input, io.weight) @[SDOT.scala 38:25]
    reg rs : UInt<1>, clock with :
      reset => (UInt<1>("h0"), rs) @[SDOT.scala 38:21]
    rs <= _rs_T @[SDOT.scala 38:21]
    io.sum <= rs @[SDOT.scala 40:12]

  module SADD_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip input : UInt<1>, flip weight : UInt<1>, flip selnum : UInt<1>, sum : UInt<1>}

    node _rs_T = mux(io.selnum, io.input, io.weight) @[SDOT.scala 38:25]
    reg rs : UInt<1>, clock with :
      reset => (UInt<1>("h0"), rs) @[SDOT.scala 38:21]
    rs <= _rs_T @[SDOT.scala 38:21]
    io.sum <= rs @[SDOT.scala 40:12]

  module SADD_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip input : UInt<1>, flip weight : UInt<1>, flip selnum : UInt<1>, sum : UInt<1>}

    node _rs_T = mux(io.selnum, io.input, io.weight) @[SDOT.scala 38:25]
    reg rs : UInt<1>, clock with :
      reset => (UInt<1>("h0"), rs) @[SDOT.scala 38:21]
    rs <= _rs_T @[SDOT.scala 38:21]
    io.sum <= rs @[SDOT.scala 40:12]

  module SADD_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip input : UInt<1>, flip weight : UInt<1>, flip selnum : UInt<1>, sum : UInt<1>}

    node _rs_T = mux(io.selnum, io.input, io.weight) @[SDOT.scala 38:25]
    reg rs : UInt<1>, clock with :
      reset => (UInt<1>("h0"), rs) @[SDOT.scala 38:21]
    rs <= _rs_T @[SDOT.scala 38:21]
    io.sum <= rs @[SDOT.scala 40:12]

  module LFSR_16 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<29>("h1ec4950b")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module LFSR_17 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<30>("h3d892a16")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module LFSR_18 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h5c4dbf21")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module LFSR_19 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h7b12542c")) @[SNG.scala 52:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 54:20]
    node _bit_T_1 = bits(state, 21, 21) @[SNG.scala 54:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 54:25]
    node _bit_T_3 = bits(state, 1, 1) @[SNG.scala 54:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 54:37]
    node _bit_T_5 = bits(state, 0, 0) @[SNG.scala 54:55]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 54:48]
    node _nextState_T = shl(state, 1) @[SNG.scala 56:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 56:32]
    state <= nextState @[SNG.scala 58:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 60:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 60:34]
    io.out <= _io_out_T_1 @[SNG.scala 60:12]

  module SDOT :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip inputs : SInt<8>[16], flip weights : SInt<8>[16], psum : UInt<1>}

    inst muls_0 of SMUL @[SDOT.scala 61:51]
    muls_0.clock <= clock
    muls_0.reset <= reset
    inst muls_1 of SMUL_1 @[SDOT.scala 61:51]
    muls_1.clock <= clock
    muls_1.reset <= reset
    inst muls_2 of SMUL_2 @[SDOT.scala 61:51]
    muls_2.clock <= clock
    muls_2.reset <= reset
    inst muls_3 of SMUL_3 @[SDOT.scala 61:51]
    muls_3.clock <= clock
    muls_3.reset <= reset
    inst muls_4 of SMUL_4 @[SDOT.scala 61:51]
    muls_4.clock <= clock
    muls_4.reset <= reset
    inst muls_5 of SMUL_5 @[SDOT.scala 61:51]
    muls_5.clock <= clock
    muls_5.reset <= reset
    inst muls_6 of SMUL_6 @[SDOT.scala 61:51]
    muls_6.clock <= clock
    muls_6.reset <= reset
    inst muls_7 of SMUL_7 @[SDOT.scala 61:51]
    muls_7.clock <= clock
    muls_7.reset <= reset
    inst muls_8 of SMUL_8 @[SDOT.scala 61:51]
    muls_8.clock <= clock
    muls_8.reset <= reset
    inst muls_9 of SMUL_9 @[SDOT.scala 61:51]
    muls_9.clock <= clock
    muls_9.reset <= reset
    inst muls_10 of SMUL_10 @[SDOT.scala 61:51]
    muls_10.clock <= clock
    muls_10.reset <= reset
    inst muls_11 of SMUL_11 @[SDOT.scala 61:51]
    muls_11.clock <= clock
    muls_11.reset <= reset
    inst muls_12 of SMUL_12 @[SDOT.scala 61:51]
    muls_12.clock <= clock
    muls_12.reset <= reset
    inst muls_13 of SMUL_13 @[SDOT.scala 61:51]
    muls_13.clock <= clock
    muls_13.reset <= reset
    inst muls_14 of SMUL_14 @[SDOT.scala 61:51]
    muls_14.clock <= clock
    muls_14.reset <= reset
    inst muls_15 of SMUL_15 @[SDOT.scala 61:51]
    muls_15.clock <= clock
    muls_15.reset <= reset
    inst adds_0_0 of SADD @[SDOT.scala 63:42]
    adds_0_0.clock <= clock
    adds_0_0.reset <= reset
    inst adds_0_1 of SADD_1 @[SDOT.scala 63:42]
    adds_0_1.clock <= clock
    adds_0_1.reset <= reset
    inst adds_0_2 of SADD_2 @[SDOT.scala 63:42]
    adds_0_2.clock <= clock
    adds_0_2.reset <= reset
    inst adds_0_3 of SADD_3 @[SDOT.scala 63:42]
    adds_0_3.clock <= clock
    adds_0_3.reset <= reset
    inst adds_0_4 of SADD_4 @[SDOT.scala 63:42]
    adds_0_4.clock <= clock
    adds_0_4.reset <= reset
    inst adds_0_5 of SADD_5 @[SDOT.scala 63:42]
    adds_0_5.clock <= clock
    adds_0_5.reset <= reset
    inst adds_0_6 of SADD_6 @[SDOT.scala 63:42]
    adds_0_6.clock <= clock
    adds_0_6.reset <= reset
    inst adds_0_7 of SADD_7 @[SDOT.scala 63:42]
    adds_0_7.clock <= clock
    adds_0_7.reset <= reset
    inst adds_1_0 of SADD_8 @[SDOT.scala 63:42]
    adds_1_0.clock <= clock
    adds_1_0.reset <= reset
    inst adds_1_1 of SADD_9 @[SDOT.scala 63:42]
    adds_1_1.clock <= clock
    adds_1_1.reset <= reset
    inst adds_1_2 of SADD_10 @[SDOT.scala 63:42]
    adds_1_2.clock <= clock
    adds_1_2.reset <= reset
    inst adds_1_3 of SADD_11 @[SDOT.scala 63:42]
    adds_1_3.clock <= clock
    adds_1_3.reset <= reset
    inst adds_2_0 of SADD_12 @[SDOT.scala 63:42]
    adds_2_0.clock <= clock
    adds_2_0.reset <= reset
    inst adds_2_1 of SADD_13 @[SDOT.scala 63:42]
    adds_2_1.clock <= clock
    adds_2_1.reset <= reset
    inst adds_3_0 of SADD_14 @[SDOT.scala 63:42]
    adds_3_0.clock <= clock
    adds_3_0.reset <= reset
    inst lfsrs_0 of LFSR_16 @[SDOT.scala 65:54]
    lfsrs_0.clock <= clock
    lfsrs_0.reset <= reset
    inst lfsrs_1 of LFSR_17 @[SDOT.scala 65:54]
    lfsrs_1.clock <= clock
    lfsrs_1.reset <= reset
    inst lfsrs_2 of LFSR_18 @[SDOT.scala 65:54]
    lfsrs_2.clock <= clock
    lfsrs_2.reset <= reset
    inst lfsrs_3 of LFSR_19 @[SDOT.scala 65:54]
    lfsrs_3.clock <= clock
    lfsrs_3.reset <= reset
    muls_0.io.enable <= io.enable @[SDOT.scala 69:27]
    muls_0.io.input <= io.inputs[0] @[SDOT.scala 70:26]
    muls_0.io.weight <= io.weights[0] @[SDOT.scala 71:27]
    muls_1.io.enable <= io.enable @[SDOT.scala 69:27]
    muls_1.io.input <= io.inputs[1] @[SDOT.scala 70:26]
    muls_1.io.weight <= io.weights[1] @[SDOT.scala 71:27]
    muls_2.io.enable <= io.enable @[SDOT.scala 69:27]
    muls_2.io.input <= io.inputs[2] @[SDOT.scala 70:26]
    muls_2.io.weight <= io.weights[2] @[SDOT.scala 71:27]
    muls_3.io.enable <= io.enable @[SDOT.scala 69:27]
    muls_3.io.input <= io.inputs[3] @[SDOT.scala 70:26]
    muls_3.io.weight <= io.weights[3] @[SDOT.scala 71:27]
    muls_4.io.enable <= io.enable @[SDOT.scala 69:27]
    muls_4.io.input <= io.inputs[4] @[SDOT.scala 70:26]
    muls_4.io.weight <= io.weights[4] @[SDOT.scala 71:27]
    muls_5.io.enable <= io.enable @[SDOT.scala 69:27]
    muls_5.io.input <= io.inputs[5] @[SDOT.scala 70:26]
    muls_5.io.weight <= io.weights[5] @[SDOT.scala 71:27]
    muls_6.io.enable <= io.enable @[SDOT.scala 69:27]
    muls_6.io.input <= io.inputs[6] @[SDOT.scala 70:26]
    muls_6.io.weight <= io.weights[6] @[SDOT.scala 71:27]
    muls_7.io.enable <= io.enable @[SDOT.scala 69:27]
    muls_7.io.input <= io.inputs[7] @[SDOT.scala 70:26]
    muls_7.io.weight <= io.weights[7] @[SDOT.scala 71:27]
    muls_8.io.enable <= io.enable @[SDOT.scala 69:27]
    muls_8.io.input <= io.inputs[8] @[SDOT.scala 70:26]
    muls_8.io.weight <= io.weights[8] @[SDOT.scala 71:27]
    muls_9.io.enable <= io.enable @[SDOT.scala 69:27]
    muls_9.io.input <= io.inputs[9] @[SDOT.scala 70:26]
    muls_9.io.weight <= io.weights[9] @[SDOT.scala 71:27]
    muls_10.io.enable <= io.enable @[SDOT.scala 69:27]
    muls_10.io.input <= io.inputs[10] @[SDOT.scala 70:26]
    muls_10.io.weight <= io.weights[10] @[SDOT.scala 71:27]
    muls_11.io.enable <= io.enable @[SDOT.scala 69:27]
    muls_11.io.input <= io.inputs[11] @[SDOT.scala 70:26]
    muls_11.io.weight <= io.weights[11] @[SDOT.scala 71:27]
    muls_12.io.enable <= io.enable @[SDOT.scala 69:27]
    muls_12.io.input <= io.inputs[12] @[SDOT.scala 70:26]
    muls_12.io.weight <= io.weights[12] @[SDOT.scala 71:27]
    muls_13.io.enable <= io.enable @[SDOT.scala 69:27]
    muls_13.io.input <= io.inputs[13] @[SDOT.scala 70:26]
    muls_13.io.weight <= io.weights[13] @[SDOT.scala 71:27]
    muls_14.io.enable <= io.enable @[SDOT.scala 69:27]
    muls_14.io.input <= io.inputs[14] @[SDOT.scala 70:26]
    muls_14.io.weight <= io.weights[14] @[SDOT.scala 71:27]
    muls_15.io.enable <= io.enable @[SDOT.scala 69:27]
    muls_15.io.input <= io.inputs[15] @[SDOT.scala 70:26]
    muls_15.io.weight <= io.weights[15] @[SDOT.scala 71:27]
    lfsrs_0.io.enable <= io.enable @[SDOT.scala 76:24]
    node _adds_0_0_io_selnum_T = bits(lfsrs_0.io.out, 0, 0) @[SDOT.scala 80:48]
    adds_0_0.io.selnum <= _adds_0_0_io_selnum_T @[SDOT.scala 80:30]
    adds_0_0.io.input <= muls_0.io.product @[SDOT.scala 81:29]
    adds_0_0.io.weight <= muls_1.io.product @[SDOT.scala 82:30]
    node _adds_0_1_io_selnum_T = bits(lfsrs_0.io.out, 1, 1) @[SDOT.scala 80:48]
    adds_0_1.io.selnum <= _adds_0_1_io_selnum_T @[SDOT.scala 80:30]
    adds_0_1.io.input <= muls_2.io.product @[SDOT.scala 81:29]
    adds_0_1.io.weight <= muls_3.io.product @[SDOT.scala 82:30]
    node _adds_0_2_io_selnum_T = bits(lfsrs_0.io.out, 2, 2) @[SDOT.scala 80:48]
    adds_0_2.io.selnum <= _adds_0_2_io_selnum_T @[SDOT.scala 80:30]
    adds_0_2.io.input <= muls_4.io.product @[SDOT.scala 81:29]
    adds_0_2.io.weight <= muls_5.io.product @[SDOT.scala 82:30]
    node _adds_0_3_io_selnum_T = bits(lfsrs_0.io.out, 3, 3) @[SDOT.scala 80:48]
    adds_0_3.io.selnum <= _adds_0_3_io_selnum_T @[SDOT.scala 80:30]
    adds_0_3.io.input <= muls_6.io.product @[SDOT.scala 81:29]
    adds_0_3.io.weight <= muls_7.io.product @[SDOT.scala 82:30]
    node _adds_0_4_io_selnum_T = bits(lfsrs_0.io.out, 4, 4) @[SDOT.scala 80:48]
    adds_0_4.io.selnum <= _adds_0_4_io_selnum_T @[SDOT.scala 80:30]
    adds_0_4.io.input <= muls_8.io.product @[SDOT.scala 81:29]
    adds_0_4.io.weight <= muls_9.io.product @[SDOT.scala 82:30]
    node _adds_0_5_io_selnum_T = bits(lfsrs_0.io.out, 5, 5) @[SDOT.scala 80:48]
    adds_0_5.io.selnum <= _adds_0_5_io_selnum_T @[SDOT.scala 80:30]
    adds_0_5.io.input <= muls_10.io.product @[SDOT.scala 81:29]
    adds_0_5.io.weight <= muls_11.io.product @[SDOT.scala 82:30]
    node _adds_0_6_io_selnum_T = bits(lfsrs_0.io.out, 6, 6) @[SDOT.scala 80:48]
    adds_0_6.io.selnum <= _adds_0_6_io_selnum_T @[SDOT.scala 80:30]
    adds_0_6.io.input <= muls_12.io.product @[SDOT.scala 81:29]
    adds_0_6.io.weight <= muls_13.io.product @[SDOT.scala 82:30]
    node _adds_0_7_io_selnum_T = bits(lfsrs_0.io.out, 7, 7) @[SDOT.scala 80:48]
    adds_0_7.io.selnum <= _adds_0_7_io_selnum_T @[SDOT.scala 80:30]
    adds_0_7.io.input <= muls_14.io.product @[SDOT.scala 81:29]
    adds_0_7.io.weight <= muls_15.io.product @[SDOT.scala 82:30]
    lfsrs_1.io.enable <= io.enable @[SDOT.scala 76:24]
    node _adds_1_0_io_selnum_T = bits(lfsrs_1.io.out, 0, 0) @[SDOT.scala 84:48]
    adds_1_0.io.selnum <= _adds_1_0_io_selnum_T @[SDOT.scala 84:30]
    adds_1_0.io.input <= adds_0_0.io.sum @[SDOT.scala 85:29]
    adds_1_0.io.weight <= adds_0_1.io.sum @[SDOT.scala 86:30]
    node _adds_1_1_io_selnum_T = bits(lfsrs_1.io.out, 1, 1) @[SDOT.scala 84:48]
    adds_1_1.io.selnum <= _adds_1_1_io_selnum_T @[SDOT.scala 84:30]
    adds_1_1.io.input <= adds_0_2.io.sum @[SDOT.scala 85:29]
    adds_1_1.io.weight <= adds_0_3.io.sum @[SDOT.scala 86:30]
    node _adds_1_2_io_selnum_T = bits(lfsrs_1.io.out, 2, 2) @[SDOT.scala 84:48]
    adds_1_2.io.selnum <= _adds_1_2_io_selnum_T @[SDOT.scala 84:30]
    adds_1_2.io.input <= adds_0_4.io.sum @[SDOT.scala 85:29]
    adds_1_2.io.weight <= adds_0_5.io.sum @[SDOT.scala 86:30]
    node _adds_1_3_io_selnum_T = bits(lfsrs_1.io.out, 3, 3) @[SDOT.scala 84:48]
    adds_1_3.io.selnum <= _adds_1_3_io_selnum_T @[SDOT.scala 84:30]
    adds_1_3.io.input <= adds_0_6.io.sum @[SDOT.scala 85:29]
    adds_1_3.io.weight <= adds_0_7.io.sum @[SDOT.scala 86:30]
    lfsrs_2.io.enable <= io.enable @[SDOT.scala 76:24]
    node _adds_2_0_io_selnum_T = bits(lfsrs_2.io.out, 0, 0) @[SDOT.scala 84:48]
    adds_2_0.io.selnum <= _adds_2_0_io_selnum_T @[SDOT.scala 84:30]
    adds_2_0.io.input <= adds_1_0.io.sum @[SDOT.scala 85:29]
    adds_2_0.io.weight <= adds_1_1.io.sum @[SDOT.scala 86:30]
    node _adds_2_1_io_selnum_T = bits(lfsrs_2.io.out, 1, 1) @[SDOT.scala 84:48]
    adds_2_1.io.selnum <= _adds_2_1_io_selnum_T @[SDOT.scala 84:30]
    adds_2_1.io.input <= adds_1_2.io.sum @[SDOT.scala 85:29]
    adds_2_1.io.weight <= adds_1_3.io.sum @[SDOT.scala 86:30]
    lfsrs_3.io.enable <= io.enable @[SDOT.scala 76:24]
    node _adds_3_0_io_selnum_T = bits(lfsrs_3.io.out, 0, 0) @[SDOT.scala 84:48]
    adds_3_0.io.selnum <= _adds_3_0_io_selnum_T @[SDOT.scala 84:30]
    adds_3_0.io.input <= adds_2_0.io.sum @[SDOT.scala 85:29]
    adds_3_0.io.weight <= adds_2_1.io.sum @[SDOT.scala 86:30]
    io.psum <= adds_3_0.io.sum @[SDOT.scala 92:11]

  module Pipe :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { valid : UInt<1>, bits : UInt<1>}, deq : { valid : UInt<1>, bits : UInt<1>}}

    reg io_deq_v : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Valid.scala 127:22]
    io_deq_v <= io.enq.valid @[Valid.scala 127:22]
    reg io_deq_b : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_deq_b) @[Reg.scala 16:16]
    when io.enq.valid : @[Reg.scala 17:18]
      io_deq_b <= io.enq.bits @[Reg.scala 17:22]
    reg io_deq_outPipe_valid : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Valid.scala 127:22]
    io_deq_outPipe_valid <= io_deq_v @[Valid.scala 127:22]
    reg io_deq_outPipe_bits : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_deq_outPipe_bits) @[Reg.scala 16:16]
    when io_deq_v : @[Reg.scala 17:18]
      io_deq_outPipe_bits <= io_deq_b @[Reg.scala 17:22]
    reg io_deq_outPipe_valid_1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Valid.scala 127:22]
    io_deq_outPipe_valid_1 <= io_deq_outPipe_valid @[Valid.scala 127:22]
    reg io_deq_outPipe_bits_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_deq_outPipe_bits_1) @[Reg.scala 16:16]
    when io_deq_outPipe_valid : @[Reg.scala 17:18]
      io_deq_outPipe_bits_1 <= io_deq_outPipe_bits @[Reg.scala 17:22]
    reg io_deq_outPipe_valid_2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Valid.scala 127:22]
    io_deq_outPipe_valid_2 <= io_deq_outPipe_valid_1 @[Valid.scala 127:22]
    reg io_deq_outPipe_bits_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_deq_outPipe_bits_2) @[Reg.scala 16:16]
    when io_deq_outPipe_valid_1 : @[Reg.scala 17:18]
      io_deq_outPipe_bits_2 <= io_deq_outPipe_bits_1 @[Reg.scala 17:22]
    reg io_deq_outPipe_valid_3 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Valid.scala 127:22]
    io_deq_outPipe_valid_3 <= io_deq_outPipe_valid_2 @[Valid.scala 127:22]
    reg io_deq_outPipe_bits_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_deq_outPipe_bits_3) @[Reg.scala 16:16]
    when io_deq_outPipe_valid_2 : @[Reg.scala 17:18]
      io_deq_outPipe_bits_3 <= io_deq_outPipe_bits_2 @[Reg.scala 17:22]
    reg io_deq_outPipe_valid_4 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Valid.scala 127:22]
    io_deq_outPipe_valid_4 <= io_deq_outPipe_valid_3 @[Valid.scala 127:22]
    reg io_deq_outPipe_bits_4 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_deq_outPipe_bits_4) @[Reg.scala 16:16]
    when io_deq_outPipe_valid_3 : @[Reg.scala 17:18]
      io_deq_outPipe_bits_4 <= io_deq_outPipe_bits_3 @[Reg.scala 17:22]
    wire io_deq_out : { valid : UInt<1>, bits : UInt<1>} @[Valid.scala 122:21]
    io_deq_out.valid <= io_deq_outPipe_valid_4 @[Valid.scala 123:17]
    io_deq_out.bits <= io_deq_outPipe_bits_4 @[Valid.scala 124:16]
    io.deq.bits <= io_deq_out.bits @[Valid.scala 202:10]
    io.deq.valid <= io_deq_out.valid @[Valid.scala 202:10]

  module StoComputeSimple :
    input clock : Clock
    input reset : Reset
    output io : { core : { flip start : UInt<1>, flip input : UInt<32>[4], flip weight : UInt<32>[4], done : UInt<1>, result : UInt<32>}, interrupt : UInt<1>}

    inst dot of SDOT @[compute.scala 82:21]
    dot.clock <= clock
    dot.reset <= reset
    reg corestate : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[compute.scala 85:28]
    inst pipe of Pipe @[compute.scala 87:22]
    pipe.clock <= clock
    pipe.reset <= reset
    wire vld : UInt<1> @[compute.scala 88:19]
    pipe.io.enq.valid <= io.core.start @[compute.scala 90:23]
    pipe.io.enq.bits <= UInt<1>("h1") @[compute.scala 91:22]
    vld <= pipe.io.deq.valid @[compute.scala 92:9]
    reg acc_vld : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[compute.scala 94:26]
    reg acc_done : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[compute.scala 95:27]
    reg acc_cnt : UInt<10>, clock with :
      reset => (reset, UInt<10>("h0")) @[compute.scala 96:26]
    reg acc : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[compute.scala 97:22]
    node _T = or(io.core.start, acc_done) @[compute.scala 98:24]
    when _T : @[compute.scala 98:36]
      acc_vld <= UInt<1>("h0") @[compute.scala 99:17]
    else :
      when vld : @[compute.scala 100:20]
        acc_vld <= UInt<1>("h1") @[compute.scala 101:17]
      else :
        acc_vld <= acc_vld @[compute.scala 103:17]
    when io.core.start : @[compute.scala 106:24]
      acc_cnt <= UInt<1>("h0") @[compute.scala 107:17]
      acc <= UInt<1>("h0") @[compute.scala 108:13]
    else :
      when acc_vld : @[compute.scala 109:24]
        node _acc_cnt_T = add(acc_cnt, UInt<1>("h1")) @[compute.scala 110:28]
        node _acc_cnt_T_1 = tail(_acc_cnt_T, 1) @[compute.scala 110:28]
        acc_cnt <= _acc_cnt_T_1 @[compute.scala 110:17]
        node _acc_T = add(acc, dot.io.psum) @[compute.scala 111:20]
        node _acc_T_1 = tail(_acc_T, 1) @[compute.scala 111:20]
        acc <= _acc_T_1 @[compute.scala 111:13]
      else :
        acc_cnt <= acc_cnt @[compute.scala 113:17]
        acc <= acc @[compute.scala 114:13]
    node _acc_done_T = eq(acc_cnt, UInt<10>("h3ff")) @[compute.scala 117:25]
    acc_done <= _acc_done_T @[compute.scala 117:14]
    reg SNG_en : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[compute.scala 119:25]
    when io.core.start : @[compute.scala 120:24]
      SNG_en <= UInt<1>("h1") @[compute.scala 121:16]
    else :
      when acc_done : @[compute.scala 122:25]
        SNG_en <= UInt<1>("h0") @[compute.scala 123:16]
      else :
        SNG_en <= SNG_en @[compute.scala 125:16]
    io.core.done <= acc_done @[compute.scala 128:18]
    dot.io.enable <= SNG_en @[compute.scala 130:19]
    node _T_1 = eq(UInt<1>("h0"), corestate) @[compute.scala 132:23]
    when _T_1 : @[compute.scala 132:23]
      when io.core.start : @[compute.scala 134:33]
        corestate <= UInt<1>("h1") @[compute.scala 135:27]
    else :
      node _T_2 = eq(UInt<1>("h1"), corestate) @[compute.scala 132:23]
      when _T_2 : @[compute.scala 132:23]
        when vld : @[compute.scala 139:23]
          corestate <= UInt<1>("h0") @[compute.scala 140:27]
    when acc_done : @[compute.scala 146:23]
      node _io_core_result_T = sub(acc, UInt<10>("h200")) @[compute.scala 147:37]
      node _io_core_result_T_1 = tail(_io_core_result_T, 1) @[compute.scala 147:37]
      node _io_core_result_T_2 = asSInt(_io_core_result_T_1) @[compute.scala 147:68]
      node _io_core_result_T_3 = dshr(_io_core_result_T_2, UInt<2>("h3")) @[compute.scala 147:71]
      node _io_core_result_T_4 = asUInt(_io_core_result_T_3) @[compute.scala 147:113]
      io.core.result <= _io_core_result_T_4 @[compute.scala 147:28]
    else :
      io.core.result <= UInt<32>("h0") @[compute.scala 150:28]
    wire _input_WIRE : SInt<8>[16] @[compute.scala 171:32]
    _input_WIRE[0] <= asSInt(UInt<8>("h0")) @[compute.scala 171:32]
    _input_WIRE[1] <= asSInt(UInt<8>("h0")) @[compute.scala 171:32]
    _input_WIRE[2] <= asSInt(UInt<8>("h0")) @[compute.scala 171:32]
    _input_WIRE[3] <= asSInt(UInt<8>("h0")) @[compute.scala 171:32]
    _input_WIRE[4] <= asSInt(UInt<8>("h0")) @[compute.scala 171:32]
    _input_WIRE[5] <= asSInt(UInt<8>("h0")) @[compute.scala 171:32]
    _input_WIRE[6] <= asSInt(UInt<8>("h0")) @[compute.scala 171:32]
    _input_WIRE[7] <= asSInt(UInt<8>("h0")) @[compute.scala 171:32]
    _input_WIRE[8] <= asSInt(UInt<8>("h0")) @[compute.scala 171:32]
    _input_WIRE[9] <= asSInt(UInt<8>("h0")) @[compute.scala 171:32]
    _input_WIRE[10] <= asSInt(UInt<8>("h0")) @[compute.scala 171:32]
    _input_WIRE[11] <= asSInt(UInt<8>("h0")) @[compute.scala 171:32]
    _input_WIRE[12] <= asSInt(UInt<8>("h0")) @[compute.scala 171:32]
    _input_WIRE[13] <= asSInt(UInt<8>("h0")) @[compute.scala 171:32]
    _input_WIRE[14] <= asSInt(UInt<8>("h0")) @[compute.scala 171:32]
    _input_WIRE[15] <= asSInt(UInt<8>("h0")) @[compute.scala 171:32]
    reg input : SInt<8>[16], clock with :
      reset => (reset, _input_WIRE) @[compute.scala 171:24]
    wire _weight_WIRE : SInt<8>[16] @[compute.scala 172:33]
    _weight_WIRE[0] <= asSInt(UInt<8>("h0")) @[compute.scala 172:33]
    _weight_WIRE[1] <= asSInt(UInt<8>("h0")) @[compute.scala 172:33]
    _weight_WIRE[2] <= asSInt(UInt<8>("h0")) @[compute.scala 172:33]
    _weight_WIRE[3] <= asSInt(UInt<8>("h0")) @[compute.scala 172:33]
    _weight_WIRE[4] <= asSInt(UInt<8>("h0")) @[compute.scala 172:33]
    _weight_WIRE[5] <= asSInt(UInt<8>("h0")) @[compute.scala 172:33]
    _weight_WIRE[6] <= asSInt(UInt<8>("h0")) @[compute.scala 172:33]
    _weight_WIRE[7] <= asSInt(UInt<8>("h0")) @[compute.scala 172:33]
    _weight_WIRE[8] <= asSInt(UInt<8>("h0")) @[compute.scala 172:33]
    _weight_WIRE[9] <= asSInt(UInt<8>("h0")) @[compute.scala 172:33]
    _weight_WIRE[10] <= asSInt(UInt<8>("h0")) @[compute.scala 172:33]
    _weight_WIRE[11] <= asSInt(UInt<8>("h0")) @[compute.scala 172:33]
    _weight_WIRE[12] <= asSInt(UInt<8>("h0")) @[compute.scala 172:33]
    _weight_WIRE[13] <= asSInt(UInt<8>("h0")) @[compute.scala 172:33]
    _weight_WIRE[14] <= asSInt(UInt<8>("h0")) @[compute.scala 172:33]
    _weight_WIRE[15] <= asSInt(UInt<8>("h0")) @[compute.scala 172:33]
    reg weight : SInt<8>[16], clock with :
      reset => (reset, _weight_WIRE) @[compute.scala 172:25]
    when io.core.start : @[compute.scala 174:24]
      node _input_0_T = bits(io.core.input[0], 7, 0) @[compute.scala 177:51]
      node _input_0_T_1 = asSInt(_input_0_T) @[compute.scala 177:72]
      input[0] <= _input_0_T_1 @[compute.scala 177:32]
      node _weight_0_T = bits(io.core.weight[0], 7, 0) @[compute.scala 178:53]
      node _weight_0_T_1 = asSInt(_weight_0_T) @[compute.scala 178:74]
      weight[0] <= _weight_0_T_1 @[compute.scala 178:33]
      node _input_1_T = bits(io.core.input[0], 15, 8) @[compute.scala 177:51]
      node _input_1_T_1 = asSInt(_input_1_T) @[compute.scala 177:72]
      input[1] <= _input_1_T_1 @[compute.scala 177:32]
      node _weight_1_T = bits(io.core.weight[0], 15, 8) @[compute.scala 178:53]
      node _weight_1_T_1 = asSInt(_weight_1_T) @[compute.scala 178:74]
      weight[1] <= _weight_1_T_1 @[compute.scala 178:33]
      node _input_2_T = bits(io.core.input[0], 23, 16) @[compute.scala 177:51]
      node _input_2_T_1 = asSInt(_input_2_T) @[compute.scala 177:72]
      input[2] <= _input_2_T_1 @[compute.scala 177:32]
      node _weight_2_T = bits(io.core.weight[0], 23, 16) @[compute.scala 178:53]
      node _weight_2_T_1 = asSInt(_weight_2_T) @[compute.scala 178:74]
      weight[2] <= _weight_2_T_1 @[compute.scala 178:33]
      node _input_3_T = bits(io.core.input[0], 31, 24) @[compute.scala 177:51]
      node _input_3_T_1 = asSInt(_input_3_T) @[compute.scala 177:72]
      input[3] <= _input_3_T_1 @[compute.scala 177:32]
      node _weight_3_T = bits(io.core.weight[0], 31, 24) @[compute.scala 178:53]
      node _weight_3_T_1 = asSInt(_weight_3_T) @[compute.scala 178:74]
      weight[3] <= _weight_3_T_1 @[compute.scala 178:33]
      node _input_4_T = bits(io.core.input[1], 7, 0) @[compute.scala 177:51]
      node _input_4_T_1 = asSInt(_input_4_T) @[compute.scala 177:72]
      input[4] <= _input_4_T_1 @[compute.scala 177:32]
      node _weight_4_T = bits(io.core.weight[1], 7, 0) @[compute.scala 178:53]
      node _weight_4_T_1 = asSInt(_weight_4_T) @[compute.scala 178:74]
      weight[4] <= _weight_4_T_1 @[compute.scala 178:33]
      node _input_5_T = bits(io.core.input[1], 15, 8) @[compute.scala 177:51]
      node _input_5_T_1 = asSInt(_input_5_T) @[compute.scala 177:72]
      input[5] <= _input_5_T_1 @[compute.scala 177:32]
      node _weight_5_T = bits(io.core.weight[1], 15, 8) @[compute.scala 178:53]
      node _weight_5_T_1 = asSInt(_weight_5_T) @[compute.scala 178:74]
      weight[5] <= _weight_5_T_1 @[compute.scala 178:33]
      node _input_6_T = bits(io.core.input[1], 23, 16) @[compute.scala 177:51]
      node _input_6_T_1 = asSInt(_input_6_T) @[compute.scala 177:72]
      input[6] <= _input_6_T_1 @[compute.scala 177:32]
      node _weight_6_T = bits(io.core.weight[1], 23, 16) @[compute.scala 178:53]
      node _weight_6_T_1 = asSInt(_weight_6_T) @[compute.scala 178:74]
      weight[6] <= _weight_6_T_1 @[compute.scala 178:33]
      node _input_7_T = bits(io.core.input[1], 31, 24) @[compute.scala 177:51]
      node _input_7_T_1 = asSInt(_input_7_T) @[compute.scala 177:72]
      input[7] <= _input_7_T_1 @[compute.scala 177:32]
      node _weight_7_T = bits(io.core.weight[1], 31, 24) @[compute.scala 178:53]
      node _weight_7_T_1 = asSInt(_weight_7_T) @[compute.scala 178:74]
      weight[7] <= _weight_7_T_1 @[compute.scala 178:33]
      node _input_8_T = bits(io.core.input[2], 7, 0) @[compute.scala 177:51]
      node _input_8_T_1 = asSInt(_input_8_T) @[compute.scala 177:72]
      input[8] <= _input_8_T_1 @[compute.scala 177:32]
      node _weight_8_T = bits(io.core.weight[2], 7, 0) @[compute.scala 178:53]
      node _weight_8_T_1 = asSInt(_weight_8_T) @[compute.scala 178:74]
      weight[8] <= _weight_8_T_1 @[compute.scala 178:33]
      node _input_9_T = bits(io.core.input[2], 15, 8) @[compute.scala 177:51]
      node _input_9_T_1 = asSInt(_input_9_T) @[compute.scala 177:72]
      input[9] <= _input_9_T_1 @[compute.scala 177:32]
      node _weight_9_T = bits(io.core.weight[2], 15, 8) @[compute.scala 178:53]
      node _weight_9_T_1 = asSInt(_weight_9_T) @[compute.scala 178:74]
      weight[9] <= _weight_9_T_1 @[compute.scala 178:33]
      node _input_10_T = bits(io.core.input[2], 23, 16) @[compute.scala 177:51]
      node _input_10_T_1 = asSInt(_input_10_T) @[compute.scala 177:72]
      input[10] <= _input_10_T_1 @[compute.scala 177:32]
      node _weight_10_T = bits(io.core.weight[2], 23, 16) @[compute.scala 178:53]
      node _weight_10_T_1 = asSInt(_weight_10_T) @[compute.scala 178:74]
      weight[10] <= _weight_10_T_1 @[compute.scala 178:33]
      node _input_11_T = bits(io.core.input[2], 31, 24) @[compute.scala 177:51]
      node _input_11_T_1 = asSInt(_input_11_T) @[compute.scala 177:72]
      input[11] <= _input_11_T_1 @[compute.scala 177:32]
      node _weight_11_T = bits(io.core.weight[2], 31, 24) @[compute.scala 178:53]
      node _weight_11_T_1 = asSInt(_weight_11_T) @[compute.scala 178:74]
      weight[11] <= _weight_11_T_1 @[compute.scala 178:33]
      node _input_12_T = bits(io.core.input[3], 7, 0) @[compute.scala 177:51]
      node _input_12_T_1 = asSInt(_input_12_T) @[compute.scala 177:72]
      input[12] <= _input_12_T_1 @[compute.scala 177:32]
      node _weight_12_T = bits(io.core.weight[3], 7, 0) @[compute.scala 178:53]
      node _weight_12_T_1 = asSInt(_weight_12_T) @[compute.scala 178:74]
      weight[12] <= _weight_12_T_1 @[compute.scala 178:33]
      node _input_13_T = bits(io.core.input[3], 15, 8) @[compute.scala 177:51]
      node _input_13_T_1 = asSInt(_input_13_T) @[compute.scala 177:72]
      input[13] <= _input_13_T_1 @[compute.scala 177:32]
      node _weight_13_T = bits(io.core.weight[3], 15, 8) @[compute.scala 178:53]
      node _weight_13_T_1 = asSInt(_weight_13_T) @[compute.scala 178:74]
      weight[13] <= _weight_13_T_1 @[compute.scala 178:33]
      node _input_14_T = bits(io.core.input[3], 23, 16) @[compute.scala 177:51]
      node _input_14_T_1 = asSInt(_input_14_T) @[compute.scala 177:72]
      input[14] <= _input_14_T_1 @[compute.scala 177:32]
      node _weight_14_T = bits(io.core.weight[3], 23, 16) @[compute.scala 178:53]
      node _weight_14_T_1 = asSInt(_weight_14_T) @[compute.scala 178:74]
      weight[14] <= _weight_14_T_1 @[compute.scala 178:33]
      node _input_15_T = bits(io.core.input[3], 31, 24) @[compute.scala 177:51]
      node _input_15_T_1 = asSInt(_input_15_T) @[compute.scala 177:72]
      input[15] <= _input_15_T_1 @[compute.scala 177:32]
      node _weight_15_T = bits(io.core.weight[3], 31, 24) @[compute.scala 178:53]
      node _weight_15_T_1 = asSInt(_weight_15_T) @[compute.scala 178:74]
      weight[15] <= _weight_15_T_1 @[compute.scala 178:33]
    dot.io.inputs[0] <= input[0] @[compute.scala 183:19]
    dot.io.inputs[1] <= input[1] @[compute.scala 183:19]
    dot.io.inputs[2] <= input[2] @[compute.scala 183:19]
    dot.io.inputs[3] <= input[3] @[compute.scala 183:19]
    dot.io.inputs[4] <= input[4] @[compute.scala 183:19]
    dot.io.inputs[5] <= input[5] @[compute.scala 183:19]
    dot.io.inputs[6] <= input[6] @[compute.scala 183:19]
    dot.io.inputs[7] <= input[7] @[compute.scala 183:19]
    dot.io.inputs[8] <= input[8] @[compute.scala 183:19]
    dot.io.inputs[9] <= input[9] @[compute.scala 183:19]
    dot.io.inputs[10] <= input[10] @[compute.scala 183:19]
    dot.io.inputs[11] <= input[11] @[compute.scala 183:19]
    dot.io.inputs[12] <= input[12] @[compute.scala 183:19]
    dot.io.inputs[13] <= input[13] @[compute.scala 183:19]
    dot.io.inputs[14] <= input[14] @[compute.scala 183:19]
    dot.io.inputs[15] <= input[15] @[compute.scala 183:19]
    dot.io.weights[0] <= weight[0] @[compute.scala 184:20]
    dot.io.weights[1] <= weight[1] @[compute.scala 184:20]
    dot.io.weights[2] <= weight[2] @[compute.scala 184:20]
    dot.io.weights[3] <= weight[3] @[compute.scala 184:20]
    dot.io.weights[4] <= weight[4] @[compute.scala 184:20]
    dot.io.weights[5] <= weight[5] @[compute.scala 184:20]
    dot.io.weights[6] <= weight[6] @[compute.scala 184:20]
    dot.io.weights[7] <= weight[7] @[compute.scala 184:20]
    dot.io.weights[8] <= weight[8] @[compute.scala 184:20]
    dot.io.weights[9] <= weight[9] @[compute.scala 184:20]
    dot.io.weights[10] <= weight[10] @[compute.scala 184:20]
    dot.io.weights[11] <= weight[11] @[compute.scala 184:20]
    dot.io.weights[12] <= weight[12] @[compute.scala 184:20]
    dot.io.weights[13] <= weight[13] @[compute.scala 184:20]
    dot.io.weights[14] <= weight[14] @[compute.scala 184:20]
    dot.io.weights[15] <= weight[15] @[compute.scala 184:20]
    io.interrupt <= acc_done @[compute.scala 187:18]

  module StoShellSimple :
    input clock : Clock
    input reset : UInt<1>
    output io : { mem : { AWVALID : UInt<1>, flip AWREADY : UInt<1>, AWADDR : UInt<32>, AWID : UInt<1>, AWUSER : UInt<0>, AWLEN : UInt<8>, AWSIZE : UInt<3>, AWBURST : UInt<2>, AWLOCK : UInt<2>, AWCACHE : UInt<4>, AWPROT : UInt<3>, AWQOS : UInt<4>, AWREGION : UInt<4>, WVALID : UInt<1>, flip WREADY : UInt<1>, WDATA : UInt<32>, WSTRB : UInt<4>, WLAST : UInt<1>, WID : UInt<1>, WUSER : UInt<0>, flip BVALID : UInt<1>, BREADY : UInt<1>, flip BRESP : UInt<2>, flip BID : UInt<1>, flip BUSER : UInt<0>, ARVALID : UInt<1>, flip ARREADY : UInt<1>, ARADDR : UInt<32>, ARID : UInt<1>, ARUSER : UInt<0>, ARLEN : UInt<8>, ARSIZE : UInt<3>, ARBURST : UInt<2>, ARLOCK : UInt<2>, ARCACHE : UInt<4>, ARPROT : UInt<3>, ARQOS : UInt<4>, ARREGION : UInt<4>, flip RVALID : UInt<1>, RREADY : UInt<1>, flip RDATA : UInt<32>, flip RRESP : UInt<2>, flip RLAST : UInt<1>, flip RID : UInt<1>, flip RUSER : UInt<0>}, host : { flip AWVALID : UInt<1>, AWREADY : UInt<1>, flip AWADDR : UInt<32>, flip WVALID : UInt<1>, WREADY : UInt<1>, flip WDATA : UInt<32>, flip WSTRB : UInt<4>, BVALID : UInt<1>, flip BREADY : UInt<1>, BRESP : UInt<2>, flip ARVALID : UInt<1>, ARREADY : UInt<1>, flip ARADDR : UInt<32>, RVALID : UInt<1>, flip RREADY : UInt<1>, RDATA : UInt<32>, RRESP : UInt<2>}, interrupt : UInt<1>}

    inst dma of DMASimpleXil @[shell.scala 36:21]
    dma.clock <= clock
    dma.reset <= reset
    inst computer of StoComputeSimple @[shell.scala 38:26]
    computer.clock <= clock
    computer.reset <= reset
    dma.io.mem.RUSER <= io.mem.RUSER @[shell.scala 40:12]
    dma.io.mem.RID <= io.mem.RID @[shell.scala 40:12]
    dma.io.mem.RLAST <= io.mem.RLAST @[shell.scala 40:12]
    dma.io.mem.RRESP <= io.mem.RRESP @[shell.scala 40:12]
    dma.io.mem.RDATA <= io.mem.RDATA @[shell.scala 40:12]
    io.mem.RREADY <= dma.io.mem.RREADY @[shell.scala 40:12]
    dma.io.mem.RVALID <= io.mem.RVALID @[shell.scala 40:12]
    io.mem.ARREGION <= dma.io.mem.ARREGION @[shell.scala 40:12]
    io.mem.ARQOS <= dma.io.mem.ARQOS @[shell.scala 40:12]
    io.mem.ARPROT <= dma.io.mem.ARPROT @[shell.scala 40:12]
    io.mem.ARCACHE <= dma.io.mem.ARCACHE @[shell.scala 40:12]
    io.mem.ARLOCK <= dma.io.mem.ARLOCK @[shell.scala 40:12]
    io.mem.ARBURST <= dma.io.mem.ARBURST @[shell.scala 40:12]
    io.mem.ARSIZE <= dma.io.mem.ARSIZE @[shell.scala 40:12]
    io.mem.ARLEN <= dma.io.mem.ARLEN @[shell.scala 40:12]
    io.mem.ARUSER <= dma.io.mem.ARUSER @[shell.scala 40:12]
    io.mem.ARID <= dma.io.mem.ARID @[shell.scala 40:12]
    io.mem.ARADDR <= dma.io.mem.ARADDR @[shell.scala 40:12]
    dma.io.mem.ARREADY <= io.mem.ARREADY @[shell.scala 40:12]
    io.mem.ARVALID <= dma.io.mem.ARVALID @[shell.scala 40:12]
    dma.io.mem.BUSER <= io.mem.BUSER @[shell.scala 40:12]
    dma.io.mem.BID <= io.mem.BID @[shell.scala 40:12]
    dma.io.mem.BRESP <= io.mem.BRESP @[shell.scala 40:12]
    io.mem.BREADY <= dma.io.mem.BREADY @[shell.scala 40:12]
    dma.io.mem.BVALID <= io.mem.BVALID @[shell.scala 40:12]
    io.mem.WUSER <= dma.io.mem.WUSER @[shell.scala 40:12]
    io.mem.WID <= dma.io.mem.WID @[shell.scala 40:12]
    io.mem.WLAST <= dma.io.mem.WLAST @[shell.scala 40:12]
    io.mem.WSTRB <= dma.io.mem.WSTRB @[shell.scala 40:12]
    io.mem.WDATA <= dma.io.mem.WDATA @[shell.scala 40:12]
    dma.io.mem.WREADY <= io.mem.WREADY @[shell.scala 40:12]
    io.mem.WVALID <= dma.io.mem.WVALID @[shell.scala 40:12]
    io.mem.AWREGION <= dma.io.mem.AWREGION @[shell.scala 40:12]
    io.mem.AWQOS <= dma.io.mem.AWQOS @[shell.scala 40:12]
    io.mem.AWPROT <= dma.io.mem.AWPROT @[shell.scala 40:12]
    io.mem.AWCACHE <= dma.io.mem.AWCACHE @[shell.scala 40:12]
    io.mem.AWLOCK <= dma.io.mem.AWLOCK @[shell.scala 40:12]
    io.mem.AWBURST <= dma.io.mem.AWBURST @[shell.scala 40:12]
    io.mem.AWSIZE <= dma.io.mem.AWSIZE @[shell.scala 40:12]
    io.mem.AWLEN <= dma.io.mem.AWLEN @[shell.scala 40:12]
    io.mem.AWUSER <= dma.io.mem.AWUSER @[shell.scala 40:12]
    io.mem.AWID <= dma.io.mem.AWID @[shell.scala 40:12]
    io.mem.AWADDR <= dma.io.mem.AWADDR @[shell.scala 40:12]
    dma.io.mem.AWREADY <= io.mem.AWREADY @[shell.scala 40:12]
    io.mem.AWVALID <= dma.io.mem.AWVALID @[shell.scala 40:12]
    io.host.RRESP <= dma.io.host.RRESP @[shell.scala 41:13]
    io.host.RDATA <= dma.io.host.RDATA @[shell.scala 41:13]
    dma.io.host.RREADY <= io.host.RREADY @[shell.scala 41:13]
    io.host.RVALID <= dma.io.host.RVALID @[shell.scala 41:13]
    dma.io.host.ARADDR <= io.host.ARADDR @[shell.scala 41:13]
    io.host.ARREADY <= dma.io.host.ARREADY @[shell.scala 41:13]
    dma.io.host.ARVALID <= io.host.ARVALID @[shell.scala 41:13]
    io.host.BRESP <= dma.io.host.BRESP @[shell.scala 41:13]
    dma.io.host.BREADY <= io.host.BREADY @[shell.scala 41:13]
    io.host.BVALID <= dma.io.host.BVALID @[shell.scala 41:13]
    dma.io.host.WSTRB <= io.host.WSTRB @[shell.scala 41:13]
    dma.io.host.WDATA <= io.host.WDATA @[shell.scala 41:13]
    io.host.WREADY <= dma.io.host.WREADY @[shell.scala 41:13]
    dma.io.host.WVALID <= io.host.WVALID @[shell.scala 41:13]
    dma.io.host.AWADDR <= io.host.AWADDR @[shell.scala 41:13]
    io.host.AWREADY <= dma.io.host.AWREADY @[shell.scala 41:13]
    dma.io.host.AWVALID <= io.host.AWVALID @[shell.scala 41:13]
    dma.io.core.result <= computer.io.core.result @[shell.scala 43:17]
    dma.io.core.done <= computer.io.core.done @[shell.scala 43:17]
    computer.io.core.weight[0] <= dma.io.core.weight[0] @[shell.scala 43:17]
    computer.io.core.weight[1] <= dma.io.core.weight[1] @[shell.scala 43:17]
    computer.io.core.weight[2] <= dma.io.core.weight[2] @[shell.scala 43:17]
    computer.io.core.weight[3] <= dma.io.core.weight[3] @[shell.scala 43:17]
    computer.io.core.input[0] <= dma.io.core.input[0] @[shell.scala 43:17]
    computer.io.core.input[1] <= dma.io.core.input[1] @[shell.scala 43:17]
    computer.io.core.input[2] <= dma.io.core.input[2] @[shell.scala 43:17]
    computer.io.core.input[3] <= dma.io.core.input[3] @[shell.scala 43:17]
    computer.io.core.start <= dma.io.core.start @[shell.scala 43:17]
    io.interrupt <= computer.io.interrupt @[shell.scala 45:18]

