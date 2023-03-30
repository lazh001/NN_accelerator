circuit shellSimple :
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

  module MAC :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<1>, y : UInt<17>}

    wire mult : UInt<16> @[vtaGEMM.scala 17:18]
    reg rA : UInt, clock with :
      reset => (UInt<1>("h0"), rA) @[vtaGEMM.scala 18:31]
    rA <= io.a @[vtaGEMM.scala 18:31]
    reg rB : UInt, clock with :
      reset => (UInt<1>("h0"), rB) @[vtaGEMM.scala 19:31]
    rB <= io.b @[vtaGEMM.scala 19:31]
    reg rC : UInt, clock with :
      reset => (UInt<1>("h0"), rC) @[vtaGEMM.scala 20:31]
    rC <= io.c @[vtaGEMM.scala 20:31]
    node _mult_T = mul(rA, rB) @[vtaGEMM.scala 22:14]
    mult <= _mult_T @[vtaGEMM.scala 22:8]
    node addV = add(rC, mult) @[vtaGEMM.scala 23:30]
    io.y <= addV @[vtaGEMM.scala 24:8]

  module MAC_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<1>, y : UInt<17>}

    wire mult : UInt<16> @[vtaGEMM.scala 17:18]
    reg rA : UInt, clock with :
      reset => (UInt<1>("h0"), rA) @[vtaGEMM.scala 18:31]
    rA <= io.a @[vtaGEMM.scala 18:31]
    reg rB : UInt, clock with :
      reset => (UInt<1>("h0"), rB) @[vtaGEMM.scala 19:31]
    rB <= io.b @[vtaGEMM.scala 19:31]
    reg rC : UInt, clock with :
      reset => (UInt<1>("h0"), rC) @[vtaGEMM.scala 20:31]
    rC <= io.c @[vtaGEMM.scala 20:31]
    node _mult_T = mul(rA, rB) @[vtaGEMM.scala 22:14]
    mult <= _mult_T @[vtaGEMM.scala 22:8]
    node addV = add(rC, mult) @[vtaGEMM.scala 23:30]
    io.y <= addV @[vtaGEMM.scala 24:8]

  module MAC_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<1>, y : UInt<17>}

    wire mult : UInt<16> @[vtaGEMM.scala 17:18]
    reg rA : UInt, clock with :
      reset => (UInt<1>("h0"), rA) @[vtaGEMM.scala 18:31]
    rA <= io.a @[vtaGEMM.scala 18:31]
    reg rB : UInt, clock with :
      reset => (UInt<1>("h0"), rB) @[vtaGEMM.scala 19:31]
    rB <= io.b @[vtaGEMM.scala 19:31]
    reg rC : UInt, clock with :
      reset => (UInt<1>("h0"), rC) @[vtaGEMM.scala 20:31]
    rC <= io.c @[vtaGEMM.scala 20:31]
    node _mult_T = mul(rA, rB) @[vtaGEMM.scala 22:14]
    mult <= _mult_T @[vtaGEMM.scala 22:8]
    node addV = add(rC, mult) @[vtaGEMM.scala 23:30]
    io.y <= addV @[vtaGEMM.scala 24:8]

  module MAC_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<1>, y : UInt<17>}

    wire mult : UInt<16> @[vtaGEMM.scala 17:18]
    reg rA : UInt, clock with :
      reset => (UInt<1>("h0"), rA) @[vtaGEMM.scala 18:31]
    rA <= io.a @[vtaGEMM.scala 18:31]
    reg rB : UInt, clock with :
      reset => (UInt<1>("h0"), rB) @[vtaGEMM.scala 19:31]
    rB <= io.b @[vtaGEMM.scala 19:31]
    reg rC : UInt, clock with :
      reset => (UInt<1>("h0"), rC) @[vtaGEMM.scala 20:31]
    rC <= io.c @[vtaGEMM.scala 20:31]
    node _mult_T = mul(rA, rB) @[vtaGEMM.scala 22:14]
    mult <= _mult_T @[vtaGEMM.scala 22:8]
    node addV = add(rC, mult) @[vtaGEMM.scala 23:30]
    io.y <= addV @[vtaGEMM.scala 24:8]

  module MAC_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<1>, y : UInt<17>}

    wire mult : UInt<16> @[vtaGEMM.scala 17:18]
    reg rA : UInt, clock with :
      reset => (UInt<1>("h0"), rA) @[vtaGEMM.scala 18:31]
    rA <= io.a @[vtaGEMM.scala 18:31]
    reg rB : UInt, clock with :
      reset => (UInt<1>("h0"), rB) @[vtaGEMM.scala 19:31]
    rB <= io.b @[vtaGEMM.scala 19:31]
    reg rC : UInt, clock with :
      reset => (UInt<1>("h0"), rC) @[vtaGEMM.scala 20:31]
    rC <= io.c @[vtaGEMM.scala 20:31]
    node _mult_T = mul(rA, rB) @[vtaGEMM.scala 22:14]
    mult <= _mult_T @[vtaGEMM.scala 22:8]
    node addV = add(rC, mult) @[vtaGEMM.scala 23:30]
    io.y <= addV @[vtaGEMM.scala 24:8]

  module MAC_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<1>, y : UInt<17>}

    wire mult : UInt<16> @[vtaGEMM.scala 17:18]
    reg rA : UInt, clock with :
      reset => (UInt<1>("h0"), rA) @[vtaGEMM.scala 18:31]
    rA <= io.a @[vtaGEMM.scala 18:31]
    reg rB : UInt, clock with :
      reset => (UInt<1>("h0"), rB) @[vtaGEMM.scala 19:31]
    rB <= io.b @[vtaGEMM.scala 19:31]
    reg rC : UInt, clock with :
      reset => (UInt<1>("h0"), rC) @[vtaGEMM.scala 20:31]
    rC <= io.c @[vtaGEMM.scala 20:31]
    node _mult_T = mul(rA, rB) @[vtaGEMM.scala 22:14]
    mult <= _mult_T @[vtaGEMM.scala 22:8]
    node addV = add(rC, mult) @[vtaGEMM.scala 23:30]
    io.y <= addV @[vtaGEMM.scala 24:8]

  module MAC_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<1>, y : UInt<17>}

    wire mult : UInt<16> @[vtaGEMM.scala 17:18]
    reg rA : UInt, clock with :
      reset => (UInt<1>("h0"), rA) @[vtaGEMM.scala 18:31]
    rA <= io.a @[vtaGEMM.scala 18:31]
    reg rB : UInt, clock with :
      reset => (UInt<1>("h0"), rB) @[vtaGEMM.scala 19:31]
    rB <= io.b @[vtaGEMM.scala 19:31]
    reg rC : UInt, clock with :
      reset => (UInt<1>("h0"), rC) @[vtaGEMM.scala 20:31]
    rC <= io.c @[vtaGEMM.scala 20:31]
    node _mult_T = mul(rA, rB) @[vtaGEMM.scala 22:14]
    mult <= _mult_T @[vtaGEMM.scala 22:8]
    node addV = add(rC, mult) @[vtaGEMM.scala 23:30]
    io.y <= addV @[vtaGEMM.scala 24:8]

  module MAC_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<1>, y : UInt<17>}

    wire mult : UInt<16> @[vtaGEMM.scala 17:18]
    reg rA : UInt, clock with :
      reset => (UInt<1>("h0"), rA) @[vtaGEMM.scala 18:31]
    rA <= io.a @[vtaGEMM.scala 18:31]
    reg rB : UInt, clock with :
      reset => (UInt<1>("h0"), rB) @[vtaGEMM.scala 19:31]
    rB <= io.b @[vtaGEMM.scala 19:31]
    reg rC : UInt, clock with :
      reset => (UInt<1>("h0"), rC) @[vtaGEMM.scala 20:31]
    rC <= io.c @[vtaGEMM.scala 20:31]
    node _mult_T = mul(rA, rB) @[vtaGEMM.scala 22:14]
    mult <= _mult_T @[vtaGEMM.scala 22:8]
    node addV = add(rC, mult) @[vtaGEMM.scala 23:30]
    io.y <= addV @[vtaGEMM.scala 24:8]

  module MAC_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<1>, y : UInt<17>}

    wire mult : UInt<16> @[vtaGEMM.scala 17:18]
    reg rA : UInt, clock with :
      reset => (UInt<1>("h0"), rA) @[vtaGEMM.scala 18:31]
    rA <= io.a @[vtaGEMM.scala 18:31]
    reg rB : UInt, clock with :
      reset => (UInt<1>("h0"), rB) @[vtaGEMM.scala 19:31]
    rB <= io.b @[vtaGEMM.scala 19:31]
    reg rC : UInt, clock with :
      reset => (UInt<1>("h0"), rC) @[vtaGEMM.scala 20:31]
    rC <= io.c @[vtaGEMM.scala 20:31]
    node _mult_T = mul(rA, rB) @[vtaGEMM.scala 22:14]
    mult <= _mult_T @[vtaGEMM.scala 22:8]
    node addV = add(rC, mult) @[vtaGEMM.scala 23:30]
    io.y <= addV @[vtaGEMM.scala 24:8]

  module MAC_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<1>, y : UInt<17>}

    wire mult : UInt<16> @[vtaGEMM.scala 17:18]
    reg rA : UInt, clock with :
      reset => (UInt<1>("h0"), rA) @[vtaGEMM.scala 18:31]
    rA <= io.a @[vtaGEMM.scala 18:31]
    reg rB : UInt, clock with :
      reset => (UInt<1>("h0"), rB) @[vtaGEMM.scala 19:31]
    rB <= io.b @[vtaGEMM.scala 19:31]
    reg rC : UInt, clock with :
      reset => (UInt<1>("h0"), rC) @[vtaGEMM.scala 20:31]
    rC <= io.c @[vtaGEMM.scala 20:31]
    node _mult_T = mul(rA, rB) @[vtaGEMM.scala 22:14]
    mult <= _mult_T @[vtaGEMM.scala 22:8]
    node addV = add(rC, mult) @[vtaGEMM.scala 23:30]
    io.y <= addV @[vtaGEMM.scala 24:8]

  module MAC_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<1>, y : UInt<17>}

    wire mult : UInt<16> @[vtaGEMM.scala 17:18]
    reg rA : UInt, clock with :
      reset => (UInt<1>("h0"), rA) @[vtaGEMM.scala 18:31]
    rA <= io.a @[vtaGEMM.scala 18:31]
    reg rB : UInt, clock with :
      reset => (UInt<1>("h0"), rB) @[vtaGEMM.scala 19:31]
    rB <= io.b @[vtaGEMM.scala 19:31]
    reg rC : UInt, clock with :
      reset => (UInt<1>("h0"), rC) @[vtaGEMM.scala 20:31]
    rC <= io.c @[vtaGEMM.scala 20:31]
    node _mult_T = mul(rA, rB) @[vtaGEMM.scala 22:14]
    mult <= _mult_T @[vtaGEMM.scala 22:8]
    node addV = add(rC, mult) @[vtaGEMM.scala 23:30]
    io.y <= addV @[vtaGEMM.scala 24:8]

  module MAC_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<1>, y : UInt<17>}

    wire mult : UInt<16> @[vtaGEMM.scala 17:18]
    reg rA : UInt, clock with :
      reset => (UInt<1>("h0"), rA) @[vtaGEMM.scala 18:31]
    rA <= io.a @[vtaGEMM.scala 18:31]
    reg rB : UInt, clock with :
      reset => (UInt<1>("h0"), rB) @[vtaGEMM.scala 19:31]
    rB <= io.b @[vtaGEMM.scala 19:31]
    reg rC : UInt, clock with :
      reset => (UInt<1>("h0"), rC) @[vtaGEMM.scala 20:31]
    rC <= io.c @[vtaGEMM.scala 20:31]
    node _mult_T = mul(rA, rB) @[vtaGEMM.scala 22:14]
    mult <= _mult_T @[vtaGEMM.scala 22:8]
    node addV = add(rC, mult) @[vtaGEMM.scala 23:30]
    io.y <= addV @[vtaGEMM.scala 24:8]

  module MAC_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<1>, y : UInt<17>}

    wire mult : UInt<16> @[vtaGEMM.scala 17:18]
    reg rA : UInt, clock with :
      reset => (UInt<1>("h0"), rA) @[vtaGEMM.scala 18:31]
    rA <= io.a @[vtaGEMM.scala 18:31]
    reg rB : UInt, clock with :
      reset => (UInt<1>("h0"), rB) @[vtaGEMM.scala 19:31]
    rB <= io.b @[vtaGEMM.scala 19:31]
    reg rC : UInt, clock with :
      reset => (UInt<1>("h0"), rC) @[vtaGEMM.scala 20:31]
    rC <= io.c @[vtaGEMM.scala 20:31]
    node _mult_T = mul(rA, rB) @[vtaGEMM.scala 22:14]
    mult <= _mult_T @[vtaGEMM.scala 22:8]
    node addV = add(rC, mult) @[vtaGEMM.scala 23:30]
    io.y <= addV @[vtaGEMM.scala 24:8]

  module MAC_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<1>, y : UInt<17>}

    wire mult : UInt<16> @[vtaGEMM.scala 17:18]
    reg rA : UInt, clock with :
      reset => (UInt<1>("h0"), rA) @[vtaGEMM.scala 18:31]
    rA <= io.a @[vtaGEMM.scala 18:31]
    reg rB : UInt, clock with :
      reset => (UInt<1>("h0"), rB) @[vtaGEMM.scala 19:31]
    rB <= io.b @[vtaGEMM.scala 19:31]
    reg rC : UInt, clock with :
      reset => (UInt<1>("h0"), rC) @[vtaGEMM.scala 20:31]
    rC <= io.c @[vtaGEMM.scala 20:31]
    node _mult_T = mul(rA, rB) @[vtaGEMM.scala 22:14]
    mult <= _mult_T @[vtaGEMM.scala 22:8]
    node addV = add(rC, mult) @[vtaGEMM.scala 23:30]
    io.y <= addV @[vtaGEMM.scala 24:8]

  module MAC_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<1>, y : UInt<17>}

    wire mult : UInt<16> @[vtaGEMM.scala 17:18]
    reg rA : UInt, clock with :
      reset => (UInt<1>("h0"), rA) @[vtaGEMM.scala 18:31]
    rA <= io.a @[vtaGEMM.scala 18:31]
    reg rB : UInt, clock with :
      reset => (UInt<1>("h0"), rB) @[vtaGEMM.scala 19:31]
    rB <= io.b @[vtaGEMM.scala 19:31]
    reg rC : UInt, clock with :
      reset => (UInt<1>("h0"), rC) @[vtaGEMM.scala 20:31]
    rC <= io.c @[vtaGEMM.scala 20:31]
    node _mult_T = mul(rA, rB) @[vtaGEMM.scala 22:14]
    mult <= _mult_T @[vtaGEMM.scala 22:8]
    node addV = add(rC, mult) @[vtaGEMM.scala 23:30]
    io.y <= addV @[vtaGEMM.scala 24:8]

  module MAC_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<1>, y : UInt<17>}

    wire mult : UInt<16> @[vtaGEMM.scala 17:18]
    reg rA : UInt, clock with :
      reset => (UInt<1>("h0"), rA) @[vtaGEMM.scala 18:31]
    rA <= io.a @[vtaGEMM.scala 18:31]
    reg rB : UInt, clock with :
      reset => (UInt<1>("h0"), rB) @[vtaGEMM.scala 19:31]
    rB <= io.b @[vtaGEMM.scala 19:31]
    reg rC : UInt, clock with :
      reset => (UInt<1>("h0"), rC) @[vtaGEMM.scala 20:31]
    rC <= io.c @[vtaGEMM.scala 20:31]
    node _mult_T = mul(rA, rB) @[vtaGEMM.scala 22:14]
    mult <= _mult_T @[vtaGEMM.scala 22:8]
    node addV = add(rC, mult) @[vtaGEMM.scala 23:30]
    io.y <= addV @[vtaGEMM.scala 24:8]

  module Adder :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<17>, flip b : UInt<17>, y : UInt<18>}

    wire add : UInt<18> @[vtaGEMM.scala 56:17]
    wire rA : UInt<17> @[vtaGEMM.scala 57:16]
    wire rB : UInt<17> @[vtaGEMM.scala 58:16]
    rA <= io.a @[vtaGEMM.scala 59:6]
    rB <= io.b @[vtaGEMM.scala 60:6]
    node _add_T = add(rA, rB) @[vtaGEMM.scala 61:13]
    add <= _add_T @[vtaGEMM.scala 61:7]
    io.y <= add @[vtaGEMM.scala 62:8]

  module Adder_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<17>, flip b : UInt<17>, y : UInt<18>}

    wire add : UInt<18> @[vtaGEMM.scala 56:17]
    wire rA : UInt<17> @[vtaGEMM.scala 57:16]
    wire rB : UInt<17> @[vtaGEMM.scala 58:16]
    rA <= io.a @[vtaGEMM.scala 59:6]
    rB <= io.b @[vtaGEMM.scala 60:6]
    node _add_T = add(rA, rB) @[vtaGEMM.scala 61:13]
    add <= _add_T @[vtaGEMM.scala 61:7]
    io.y <= add @[vtaGEMM.scala 62:8]

  module Adder_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<17>, flip b : UInt<17>, y : UInt<18>}

    wire add : UInt<18> @[vtaGEMM.scala 56:17]
    wire rA : UInt<17> @[vtaGEMM.scala 57:16]
    wire rB : UInt<17> @[vtaGEMM.scala 58:16]
    rA <= io.a @[vtaGEMM.scala 59:6]
    rB <= io.b @[vtaGEMM.scala 60:6]
    node _add_T = add(rA, rB) @[vtaGEMM.scala 61:13]
    add <= _add_T @[vtaGEMM.scala 61:7]
    io.y <= add @[vtaGEMM.scala 62:8]

  module Adder_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<17>, flip b : UInt<17>, y : UInt<18>}

    wire add : UInt<18> @[vtaGEMM.scala 56:17]
    wire rA : UInt<17> @[vtaGEMM.scala 57:16]
    wire rB : UInt<17> @[vtaGEMM.scala 58:16]
    rA <= io.a @[vtaGEMM.scala 59:6]
    rB <= io.b @[vtaGEMM.scala 60:6]
    node _add_T = add(rA, rB) @[vtaGEMM.scala 61:13]
    add <= _add_T @[vtaGEMM.scala 61:7]
    io.y <= add @[vtaGEMM.scala 62:8]

  module Adder_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<17>, flip b : UInt<17>, y : UInt<18>}

    wire add : UInt<18> @[vtaGEMM.scala 56:17]
    wire rA : UInt<17> @[vtaGEMM.scala 57:16]
    wire rB : UInt<17> @[vtaGEMM.scala 58:16]
    rA <= io.a @[vtaGEMM.scala 59:6]
    rB <= io.b @[vtaGEMM.scala 60:6]
    node _add_T = add(rA, rB) @[vtaGEMM.scala 61:13]
    add <= _add_T @[vtaGEMM.scala 61:7]
    io.y <= add @[vtaGEMM.scala 62:8]

  module Adder_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<17>, flip b : UInt<17>, y : UInt<18>}

    wire add : UInt<18> @[vtaGEMM.scala 56:17]
    wire rA : UInt<17> @[vtaGEMM.scala 57:16]
    wire rB : UInt<17> @[vtaGEMM.scala 58:16]
    rA <= io.a @[vtaGEMM.scala 59:6]
    rB <= io.b @[vtaGEMM.scala 60:6]
    node _add_T = add(rA, rB) @[vtaGEMM.scala 61:13]
    add <= _add_T @[vtaGEMM.scala 61:7]
    io.y <= add @[vtaGEMM.scala 62:8]

  module Adder_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<17>, flip b : UInt<17>, y : UInt<18>}

    wire add : UInt<18> @[vtaGEMM.scala 56:17]
    wire rA : UInt<17> @[vtaGEMM.scala 57:16]
    wire rB : UInt<17> @[vtaGEMM.scala 58:16]
    rA <= io.a @[vtaGEMM.scala 59:6]
    rB <= io.b @[vtaGEMM.scala 60:6]
    node _add_T = add(rA, rB) @[vtaGEMM.scala 61:13]
    add <= _add_T @[vtaGEMM.scala 61:7]
    io.y <= add @[vtaGEMM.scala 62:8]

  module Adder_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<17>, flip b : UInt<17>, y : UInt<18>}

    wire add : UInt<18> @[vtaGEMM.scala 56:17]
    wire rA : UInt<17> @[vtaGEMM.scala 57:16]
    wire rB : UInt<17> @[vtaGEMM.scala 58:16]
    rA <= io.a @[vtaGEMM.scala 59:6]
    rB <= io.b @[vtaGEMM.scala 60:6]
    node _add_T = add(rA, rB) @[vtaGEMM.scala 61:13]
    add <= _add_T @[vtaGEMM.scala 61:7]
    io.y <= add @[vtaGEMM.scala 62:8]

  module Adder_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<18>, flip b : UInt<18>, y : UInt<19>}

    wire add : UInt<19> @[vtaGEMM.scala 56:17]
    wire rA : UInt<18> @[vtaGEMM.scala 57:16]
    wire rB : UInt<18> @[vtaGEMM.scala 58:16]
    rA <= io.a @[vtaGEMM.scala 59:6]
    rB <= io.b @[vtaGEMM.scala 60:6]
    node _add_T = add(rA, rB) @[vtaGEMM.scala 61:13]
    add <= _add_T @[vtaGEMM.scala 61:7]
    io.y <= add @[vtaGEMM.scala 62:8]

  module Adder_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<18>, flip b : UInt<18>, y : UInt<19>}

    wire add : UInt<19> @[vtaGEMM.scala 56:17]
    wire rA : UInt<18> @[vtaGEMM.scala 57:16]
    wire rB : UInt<18> @[vtaGEMM.scala 58:16]
    rA <= io.a @[vtaGEMM.scala 59:6]
    rB <= io.b @[vtaGEMM.scala 60:6]
    node _add_T = add(rA, rB) @[vtaGEMM.scala 61:13]
    add <= _add_T @[vtaGEMM.scala 61:7]
    io.y <= add @[vtaGEMM.scala 62:8]

  module Adder_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<18>, flip b : UInt<18>, y : UInt<19>}

    wire add : UInt<19> @[vtaGEMM.scala 56:17]
    wire rA : UInt<18> @[vtaGEMM.scala 57:16]
    wire rB : UInt<18> @[vtaGEMM.scala 58:16]
    rA <= io.a @[vtaGEMM.scala 59:6]
    rB <= io.b @[vtaGEMM.scala 60:6]
    node _add_T = add(rA, rB) @[vtaGEMM.scala 61:13]
    add <= _add_T @[vtaGEMM.scala 61:7]
    io.y <= add @[vtaGEMM.scala 62:8]

  module Adder_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<18>, flip b : UInt<18>, y : UInt<19>}

    wire add : UInt<19> @[vtaGEMM.scala 56:17]
    wire rA : UInt<18> @[vtaGEMM.scala 57:16]
    wire rB : UInt<18> @[vtaGEMM.scala 58:16]
    rA <= io.a @[vtaGEMM.scala 59:6]
    rB <= io.b @[vtaGEMM.scala 60:6]
    node _add_T = add(rA, rB) @[vtaGEMM.scala 61:13]
    add <= _add_T @[vtaGEMM.scala 61:7]
    io.y <= add @[vtaGEMM.scala 62:8]

  module PipeAdder :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<19>, flip b : UInt<19>, y : UInt<20>}

    wire add : UInt<20> @[vtaGEMM.scala 42:17]
    reg rA : UInt, clock with :
      reset => (UInt<1>("h0"), rA) @[vtaGEMM.scala 43:19]
    rA <= io.a @[vtaGEMM.scala 43:19]
    reg rB : UInt, clock with :
      reset => (UInt<1>("h0"), rB) @[vtaGEMM.scala 44:19]
    rB <= io.b @[vtaGEMM.scala 44:19]
    node _add_T = add(rA, rB) @[vtaGEMM.scala 45:13]
    add <= _add_T @[vtaGEMM.scala 45:7]
    io.y <= add @[vtaGEMM.scala 46:8]

  module PipeAdder_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<19>, flip b : UInt<19>, y : UInt<20>}

    wire add : UInt<20> @[vtaGEMM.scala 42:17]
    reg rA : UInt, clock with :
      reset => (UInt<1>("h0"), rA) @[vtaGEMM.scala 43:19]
    rA <= io.a @[vtaGEMM.scala 43:19]
    reg rB : UInt, clock with :
      reset => (UInt<1>("h0"), rB) @[vtaGEMM.scala 44:19]
    rB <= io.b @[vtaGEMM.scala 44:19]
    node _add_T = add(rA, rB) @[vtaGEMM.scala 45:13]
    add <= _add_T @[vtaGEMM.scala 45:7]
    io.y <= add @[vtaGEMM.scala 46:8]

  module Adder_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<20>, flip b : UInt<20>, y : UInt<21>}

    wire add : UInt<21> @[vtaGEMM.scala 56:17]
    wire rA : UInt<20> @[vtaGEMM.scala 57:16]
    wire rB : UInt<20> @[vtaGEMM.scala 58:16]
    rA <= io.a @[vtaGEMM.scala 59:6]
    rB <= io.b @[vtaGEMM.scala 60:6]
    node _add_T = add(rA, rB) @[vtaGEMM.scala 61:13]
    add <= _add_T @[vtaGEMM.scala 61:7]
    io.y <= add @[vtaGEMM.scala 62:8]

  module DotProduct :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>[16], flip b : UInt<8>[16], y : UInt<21>}

    inst m_0 of MAC @[vtaGEMM.scala 80:32]
    m_0.clock <= clock
    m_0.reset <= reset
    inst m_1 of MAC_1 @[vtaGEMM.scala 80:32]
    m_1.clock <= clock
    m_1.reset <= reset
    inst m_2 of MAC_2 @[vtaGEMM.scala 80:32]
    m_2.clock <= clock
    m_2.reset <= reset
    inst m_3 of MAC_3 @[vtaGEMM.scala 80:32]
    m_3.clock <= clock
    m_3.reset <= reset
    inst m_4 of MAC_4 @[vtaGEMM.scala 80:32]
    m_4.clock <= clock
    m_4.reset <= reset
    inst m_5 of MAC_5 @[vtaGEMM.scala 80:32]
    m_5.clock <= clock
    m_5.reset <= reset
    inst m_6 of MAC_6 @[vtaGEMM.scala 80:32]
    m_6.clock <= clock
    m_6.reset <= reset
    inst m_7 of MAC_7 @[vtaGEMM.scala 80:32]
    m_7.clock <= clock
    m_7.reset <= reset
    inst m_8 of MAC_8 @[vtaGEMM.scala 80:32]
    m_8.clock <= clock
    m_8.reset <= reset
    inst m_9 of MAC_9 @[vtaGEMM.scala 80:32]
    m_9.clock <= clock
    m_9.reset <= reset
    inst m_10 of MAC_10 @[vtaGEMM.scala 80:32]
    m_10.clock <= clock
    m_10.reset <= reset
    inst m_11 of MAC_11 @[vtaGEMM.scala 80:32]
    m_11.clock <= clock
    m_11.reset <= reset
    inst m_12 of MAC_12 @[vtaGEMM.scala 80:32]
    m_12.clock <= clock
    m_12.reset <= reset
    inst m_13 of MAC_13 @[vtaGEMM.scala 80:32]
    m_13.clock <= clock
    m_13.reset <= reset
    inst m_14 of MAC_14 @[vtaGEMM.scala 80:32]
    m_14.clock <= clock
    m_14.reset <= reset
    inst m_15 of MAC_15 @[vtaGEMM.scala 80:32]
    m_15.clock <= clock
    m_15.reset <= reset
    inst a_0_0 of Adder @[vtaGEMM.scala 88:17]
    a_0_0.clock <= clock
    a_0_0.reset <= reset
    inst a_0_1 of Adder_1 @[vtaGEMM.scala 88:17]
    a_0_1.clock <= clock
    a_0_1.reset <= reset
    inst a_0_2 of Adder_2 @[vtaGEMM.scala 88:17]
    a_0_2.clock <= clock
    a_0_2.reset <= reset
    inst a_0_3 of Adder_3 @[vtaGEMM.scala 88:17]
    a_0_3.clock <= clock
    a_0_3.reset <= reset
    inst a_0_4 of Adder_4 @[vtaGEMM.scala 88:17]
    a_0_4.clock <= clock
    a_0_4.reset <= reset
    inst a_0_5 of Adder_5 @[vtaGEMM.scala 88:17]
    a_0_5.clock <= clock
    a_0_5.reset <= reset
    inst a_0_6 of Adder_6 @[vtaGEMM.scala 88:17]
    a_0_6.clock <= clock
    a_0_6.reset <= reset
    inst a_0_7 of Adder_7 @[vtaGEMM.scala 88:17]
    a_0_7.clock <= clock
    a_0_7.reset <= reset
    inst a_1_0 of Adder_8 @[vtaGEMM.scala 88:17]
    a_1_0.clock <= clock
    a_1_0.reset <= reset
    inst a_1_1 of Adder_9 @[vtaGEMM.scala 88:17]
    a_1_1.clock <= clock
    a_1_1.reset <= reset
    inst a_1_2 of Adder_10 @[vtaGEMM.scala 88:17]
    a_1_2.clock <= clock
    a_1_2.reset <= reset
    inst a_1_3 of Adder_11 @[vtaGEMM.scala 88:17]
    a_1_3.clock <= clock
    a_1_3.reset <= reset
    inst a_2_0 of PipeAdder @[vtaGEMM.scala 85:17]
    a_2_0.clock <= clock
    a_2_0.reset <= reset
    inst a_2_1 of PipeAdder_1 @[vtaGEMM.scala 85:17]
    a_2_1.clock <= clock
    a_2_1.reset <= reset
    inst a_3_0 of Adder_12 @[vtaGEMM.scala 88:17]
    a_3_0.clock <= clock
    a_3_0.reset <= reset
    m_0.io.a <= io.a[0] @[vtaGEMM.scala 94:15]
    m_0.io.b <= io.b[0] @[vtaGEMM.scala 95:15]
    m_0.io.c <= UInt<1>("h0") @[vtaGEMM.scala 96:15]
    m_1.io.a <= io.a[1] @[vtaGEMM.scala 94:15]
    m_1.io.b <= io.b[1] @[vtaGEMM.scala 95:15]
    m_1.io.c <= UInt<1>("h0") @[vtaGEMM.scala 96:15]
    m_2.io.a <= io.a[2] @[vtaGEMM.scala 94:15]
    m_2.io.b <= io.b[2] @[vtaGEMM.scala 95:15]
    m_2.io.c <= UInt<1>("h0") @[vtaGEMM.scala 96:15]
    m_3.io.a <= io.a[3] @[vtaGEMM.scala 94:15]
    m_3.io.b <= io.b[3] @[vtaGEMM.scala 95:15]
    m_3.io.c <= UInt<1>("h0") @[vtaGEMM.scala 96:15]
    m_4.io.a <= io.a[4] @[vtaGEMM.scala 94:15]
    m_4.io.b <= io.b[4] @[vtaGEMM.scala 95:15]
    m_4.io.c <= UInt<1>("h0") @[vtaGEMM.scala 96:15]
    m_5.io.a <= io.a[5] @[vtaGEMM.scala 94:15]
    m_5.io.b <= io.b[5] @[vtaGEMM.scala 95:15]
    m_5.io.c <= UInt<1>("h0") @[vtaGEMM.scala 96:15]
    m_6.io.a <= io.a[6] @[vtaGEMM.scala 94:15]
    m_6.io.b <= io.b[6] @[vtaGEMM.scala 95:15]
    m_6.io.c <= UInt<1>("h0") @[vtaGEMM.scala 96:15]
    m_7.io.a <= io.a[7] @[vtaGEMM.scala 94:15]
    m_7.io.b <= io.b[7] @[vtaGEMM.scala 95:15]
    m_7.io.c <= UInt<1>("h0") @[vtaGEMM.scala 96:15]
    m_8.io.a <= io.a[8] @[vtaGEMM.scala 94:15]
    m_8.io.b <= io.b[8] @[vtaGEMM.scala 95:15]
    m_8.io.c <= UInt<1>("h0") @[vtaGEMM.scala 96:15]
    m_9.io.a <= io.a[9] @[vtaGEMM.scala 94:15]
    m_9.io.b <= io.b[9] @[vtaGEMM.scala 95:15]
    m_9.io.c <= UInt<1>("h0") @[vtaGEMM.scala 96:15]
    m_10.io.a <= io.a[10] @[vtaGEMM.scala 94:15]
    m_10.io.b <= io.b[10] @[vtaGEMM.scala 95:15]
    m_10.io.c <= UInt<1>("h0") @[vtaGEMM.scala 96:15]
    m_11.io.a <= io.a[11] @[vtaGEMM.scala 94:15]
    m_11.io.b <= io.b[11] @[vtaGEMM.scala 95:15]
    m_11.io.c <= UInt<1>("h0") @[vtaGEMM.scala 96:15]
    m_12.io.a <= io.a[12] @[vtaGEMM.scala 94:15]
    m_12.io.b <= io.b[12] @[vtaGEMM.scala 95:15]
    m_12.io.c <= UInt<1>("h0") @[vtaGEMM.scala 96:15]
    m_13.io.a <= io.a[13] @[vtaGEMM.scala 94:15]
    m_13.io.b <= io.b[13] @[vtaGEMM.scala 95:15]
    m_13.io.c <= UInt<1>("h0") @[vtaGEMM.scala 96:15]
    m_14.io.a <= io.a[14] @[vtaGEMM.scala 94:15]
    m_14.io.b <= io.b[14] @[vtaGEMM.scala 95:15]
    m_14.io.c <= UInt<1>("h0") @[vtaGEMM.scala 96:15]
    m_15.io.a <= io.a[15] @[vtaGEMM.scala 94:15]
    m_15.io.b <= io.b[15] @[vtaGEMM.scala 95:15]
    m_15.io.c <= UInt<1>("h0") @[vtaGEMM.scala 96:15]
    a_0_0.io.a <= m_0.io.y @[vtaGEMM.scala 104:22]
    a_0_0.io.b <= m_1.io.y @[vtaGEMM.scala 105:22]
    a_0_1.io.a <= m_2.io.y @[vtaGEMM.scala 104:22]
    a_0_1.io.b <= m_3.io.y @[vtaGEMM.scala 105:22]
    a_0_2.io.a <= m_4.io.y @[vtaGEMM.scala 104:22]
    a_0_2.io.b <= m_5.io.y @[vtaGEMM.scala 105:22]
    a_0_3.io.a <= m_6.io.y @[vtaGEMM.scala 104:22]
    a_0_3.io.b <= m_7.io.y @[vtaGEMM.scala 105:22]
    a_0_4.io.a <= m_8.io.y @[vtaGEMM.scala 104:22]
    a_0_4.io.b <= m_9.io.y @[vtaGEMM.scala 105:22]
    a_0_5.io.a <= m_10.io.y @[vtaGEMM.scala 104:22]
    a_0_5.io.b <= m_11.io.y @[vtaGEMM.scala 105:22]
    a_0_6.io.a <= m_12.io.y @[vtaGEMM.scala 104:22]
    a_0_6.io.b <= m_13.io.y @[vtaGEMM.scala 105:22]
    a_0_7.io.a <= m_14.io.y @[vtaGEMM.scala 104:22]
    a_0_7.io.b <= m_15.io.y @[vtaGEMM.scala 105:22]
    a_1_0.io.a <= a_0_0.io.y @[vtaGEMM.scala 107:22]
    a_1_0.io.b <= a_0_1.io.y @[vtaGEMM.scala 108:22]
    a_1_1.io.a <= a_0_2.io.y @[vtaGEMM.scala 107:22]
    a_1_1.io.b <= a_0_3.io.y @[vtaGEMM.scala 108:22]
    a_1_2.io.a <= a_0_4.io.y @[vtaGEMM.scala 107:22]
    a_1_2.io.b <= a_0_5.io.y @[vtaGEMM.scala 108:22]
    a_1_3.io.a <= a_0_6.io.y @[vtaGEMM.scala 107:22]
    a_1_3.io.b <= a_0_7.io.y @[vtaGEMM.scala 108:22]
    a_2_0.io.a <= a_1_0.io.y @[vtaGEMM.scala 107:22]
    a_2_0.io.b <= a_1_1.io.y @[vtaGEMM.scala 108:22]
    a_2_1.io.a <= a_1_2.io.y @[vtaGEMM.scala 107:22]
    a_2_1.io.b <= a_1_3.io.y @[vtaGEMM.scala 108:22]
    a_3_0.io.a <= a_2_0.io.y @[vtaGEMM.scala 107:22]
    a_3_0.io.b <= a_2_1.io.y @[vtaGEMM.scala 108:22]
    io.y <= a_3_0.io.y @[vtaGEMM.scala 114:8]

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
    wire io_deq_out : { valid : UInt<1>, bits : UInt<1>} @[Valid.scala 122:21]
    io_deq_out.valid <= io_deq_outPipe_valid @[Valid.scala 123:17]
    io_deq_out.bits <= io_deq_outPipe_bits @[Valid.scala 124:16]
    io.deq.bits <= io_deq_out.bits @[Valid.scala 202:10]
    io.deq.valid <= io_deq_out.valid @[Valid.scala 202:10]

  module ComputSimple :
    input clock : Clock
    input reset : Reset
    output io : { core : { flip start : UInt<1>, flip input : UInt<32>[4], flip weight : UInt<32>[4], done : UInt<1>, result : UInt<32>}, interrupt : UInt<1>}

    inst dot of DotProduct @[compute.scala 16:21]
    dot.clock <= clock
    dot.reset <= reset
    reg corestate : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[compute.scala 19:28]
    inst pipe of Pipe @[compute.scala 21:22]
    pipe.clock <= clock
    pipe.reset <= reset
    wire vld : UInt<1> @[compute.scala 22:19]
    pipe.io.enq.valid <= io.core.start @[compute.scala 24:23]
    pipe.io.enq.bits <= UInt<1>("h1") @[compute.scala 25:22]
    vld <= pipe.io.deq.valid @[compute.scala 26:9]
    io.core.done <= vld @[compute.scala 28:18]
    node _T = eq(UInt<1>("h0"), corestate) @[compute.scala 30:23]
    when _T : @[compute.scala 30:23]
      when io.core.start : @[compute.scala 32:33]
        corestate <= UInt<1>("h1") @[compute.scala 33:27]
    else :
      node _T_1 = eq(UInt<1>("h1"), corestate) @[compute.scala 30:23]
      when _T_1 : @[compute.scala 30:23]
        when vld : @[compute.scala 37:23]
          corestate <= UInt<1>("h0") @[compute.scala 38:27]
    when vld : @[compute.scala 43:14]
      node _io_core_result_T = cat(UInt<11>("h0"), dot.io.y) @[Cat.scala 31:58]
      io.core.result <= _io_core_result_T @[compute.scala 44:24]
    else :
      io.core.result <= UInt<32>("h0") @[compute.scala 47:24]
    wire _input_WIRE : UInt<8>[16] @[compute.scala 50:32]
    _input_WIRE[0] <= UInt<8>("h0") @[compute.scala 50:32]
    _input_WIRE[1] <= UInt<8>("h0") @[compute.scala 50:32]
    _input_WIRE[2] <= UInt<8>("h0") @[compute.scala 50:32]
    _input_WIRE[3] <= UInt<8>("h0") @[compute.scala 50:32]
    _input_WIRE[4] <= UInt<8>("h0") @[compute.scala 50:32]
    _input_WIRE[5] <= UInt<8>("h0") @[compute.scala 50:32]
    _input_WIRE[6] <= UInt<8>("h0") @[compute.scala 50:32]
    _input_WIRE[7] <= UInt<8>("h0") @[compute.scala 50:32]
    _input_WIRE[8] <= UInt<8>("h0") @[compute.scala 50:32]
    _input_WIRE[9] <= UInt<8>("h0") @[compute.scala 50:32]
    _input_WIRE[10] <= UInt<8>("h0") @[compute.scala 50:32]
    _input_WIRE[11] <= UInt<8>("h0") @[compute.scala 50:32]
    _input_WIRE[12] <= UInt<8>("h0") @[compute.scala 50:32]
    _input_WIRE[13] <= UInt<8>("h0") @[compute.scala 50:32]
    _input_WIRE[14] <= UInt<8>("h0") @[compute.scala 50:32]
    _input_WIRE[15] <= UInt<8>("h0") @[compute.scala 50:32]
    reg input : UInt<8>[16], clock with :
      reset => (reset, _input_WIRE) @[compute.scala 50:24]
    wire _weight_WIRE : UInt<8>[16] @[compute.scala 51:33]
    _weight_WIRE[0] <= UInt<8>("h0") @[compute.scala 51:33]
    _weight_WIRE[1] <= UInt<8>("h0") @[compute.scala 51:33]
    _weight_WIRE[2] <= UInt<8>("h0") @[compute.scala 51:33]
    _weight_WIRE[3] <= UInt<8>("h0") @[compute.scala 51:33]
    _weight_WIRE[4] <= UInt<8>("h0") @[compute.scala 51:33]
    _weight_WIRE[5] <= UInt<8>("h0") @[compute.scala 51:33]
    _weight_WIRE[6] <= UInt<8>("h0") @[compute.scala 51:33]
    _weight_WIRE[7] <= UInt<8>("h0") @[compute.scala 51:33]
    _weight_WIRE[8] <= UInt<8>("h0") @[compute.scala 51:33]
    _weight_WIRE[9] <= UInt<8>("h0") @[compute.scala 51:33]
    _weight_WIRE[10] <= UInt<8>("h0") @[compute.scala 51:33]
    _weight_WIRE[11] <= UInt<8>("h0") @[compute.scala 51:33]
    _weight_WIRE[12] <= UInt<8>("h0") @[compute.scala 51:33]
    _weight_WIRE[13] <= UInt<8>("h0") @[compute.scala 51:33]
    _weight_WIRE[14] <= UInt<8>("h0") @[compute.scala 51:33]
    _weight_WIRE[15] <= UInt<8>("h0") @[compute.scala 51:33]
    reg weight : UInt<8>[16], clock with :
      reset => (reset, _weight_WIRE) @[compute.scala 51:25]
    when io.core.start : @[compute.scala 53:24]
      node _input_0_T = bits(io.core.input[0], 7, 0) @[compute.scala 56:51]
      input[0] <= _input_0_T @[compute.scala 56:32]
      node _weight_0_T = bits(io.core.weight[0], 7, 0) @[compute.scala 57:53]
      weight[0] <= _weight_0_T @[compute.scala 57:33]
      node _input_1_T = bits(io.core.input[0], 15, 8) @[compute.scala 56:51]
      input[1] <= _input_1_T @[compute.scala 56:32]
      node _weight_1_T = bits(io.core.weight[0], 15, 8) @[compute.scala 57:53]
      weight[1] <= _weight_1_T @[compute.scala 57:33]
      node _input_2_T = bits(io.core.input[0], 23, 16) @[compute.scala 56:51]
      input[2] <= _input_2_T @[compute.scala 56:32]
      node _weight_2_T = bits(io.core.weight[0], 23, 16) @[compute.scala 57:53]
      weight[2] <= _weight_2_T @[compute.scala 57:33]
      node _input_3_T = bits(io.core.input[0], 31, 24) @[compute.scala 56:51]
      input[3] <= _input_3_T @[compute.scala 56:32]
      node _weight_3_T = bits(io.core.weight[0], 31, 24) @[compute.scala 57:53]
      weight[3] <= _weight_3_T @[compute.scala 57:33]
      node _input_4_T = bits(io.core.input[1], 7, 0) @[compute.scala 56:51]
      input[4] <= _input_4_T @[compute.scala 56:32]
      node _weight_4_T = bits(io.core.weight[1], 7, 0) @[compute.scala 57:53]
      weight[4] <= _weight_4_T @[compute.scala 57:33]
      node _input_5_T = bits(io.core.input[1], 15, 8) @[compute.scala 56:51]
      input[5] <= _input_5_T @[compute.scala 56:32]
      node _weight_5_T = bits(io.core.weight[1], 15, 8) @[compute.scala 57:53]
      weight[5] <= _weight_5_T @[compute.scala 57:33]
      node _input_6_T = bits(io.core.input[1], 23, 16) @[compute.scala 56:51]
      input[6] <= _input_6_T @[compute.scala 56:32]
      node _weight_6_T = bits(io.core.weight[1], 23, 16) @[compute.scala 57:53]
      weight[6] <= _weight_6_T @[compute.scala 57:33]
      node _input_7_T = bits(io.core.input[1], 31, 24) @[compute.scala 56:51]
      input[7] <= _input_7_T @[compute.scala 56:32]
      node _weight_7_T = bits(io.core.weight[1], 31, 24) @[compute.scala 57:53]
      weight[7] <= _weight_7_T @[compute.scala 57:33]
      node _input_8_T = bits(io.core.input[2], 7, 0) @[compute.scala 56:51]
      input[8] <= _input_8_T @[compute.scala 56:32]
      node _weight_8_T = bits(io.core.weight[2], 7, 0) @[compute.scala 57:53]
      weight[8] <= _weight_8_T @[compute.scala 57:33]
      node _input_9_T = bits(io.core.input[2], 15, 8) @[compute.scala 56:51]
      input[9] <= _input_9_T @[compute.scala 56:32]
      node _weight_9_T = bits(io.core.weight[2], 15, 8) @[compute.scala 57:53]
      weight[9] <= _weight_9_T @[compute.scala 57:33]
      node _input_10_T = bits(io.core.input[2], 23, 16) @[compute.scala 56:51]
      input[10] <= _input_10_T @[compute.scala 56:32]
      node _weight_10_T = bits(io.core.weight[2], 23, 16) @[compute.scala 57:53]
      weight[10] <= _weight_10_T @[compute.scala 57:33]
      node _input_11_T = bits(io.core.input[2], 31, 24) @[compute.scala 56:51]
      input[11] <= _input_11_T @[compute.scala 56:32]
      node _weight_11_T = bits(io.core.weight[2], 31, 24) @[compute.scala 57:53]
      weight[11] <= _weight_11_T @[compute.scala 57:33]
      node _input_12_T = bits(io.core.input[3], 7, 0) @[compute.scala 56:51]
      input[12] <= _input_12_T @[compute.scala 56:32]
      node _weight_12_T = bits(io.core.weight[3], 7, 0) @[compute.scala 57:53]
      weight[12] <= _weight_12_T @[compute.scala 57:33]
      node _input_13_T = bits(io.core.input[3], 15, 8) @[compute.scala 56:51]
      input[13] <= _input_13_T @[compute.scala 56:32]
      node _weight_13_T = bits(io.core.weight[3], 15, 8) @[compute.scala 57:53]
      weight[13] <= _weight_13_T @[compute.scala 57:33]
      node _input_14_T = bits(io.core.input[3], 23, 16) @[compute.scala 56:51]
      input[14] <= _input_14_T @[compute.scala 56:32]
      node _weight_14_T = bits(io.core.weight[3], 23, 16) @[compute.scala 57:53]
      weight[14] <= _weight_14_T @[compute.scala 57:33]
      node _input_15_T = bits(io.core.input[3], 31, 24) @[compute.scala 56:51]
      input[15] <= _input_15_T @[compute.scala 56:32]
      node _weight_15_T = bits(io.core.weight[3], 31, 24) @[compute.scala 57:53]
      weight[15] <= _weight_15_T @[compute.scala 57:33]
    dot.io.a[0] <= input[0] @[compute.scala 62:14]
    dot.io.a[1] <= input[1] @[compute.scala 62:14]
    dot.io.a[2] <= input[2] @[compute.scala 62:14]
    dot.io.a[3] <= input[3] @[compute.scala 62:14]
    dot.io.a[4] <= input[4] @[compute.scala 62:14]
    dot.io.a[5] <= input[5] @[compute.scala 62:14]
    dot.io.a[6] <= input[6] @[compute.scala 62:14]
    dot.io.a[7] <= input[7] @[compute.scala 62:14]
    dot.io.a[8] <= input[8] @[compute.scala 62:14]
    dot.io.a[9] <= input[9] @[compute.scala 62:14]
    dot.io.a[10] <= input[10] @[compute.scala 62:14]
    dot.io.a[11] <= input[11] @[compute.scala 62:14]
    dot.io.a[12] <= input[12] @[compute.scala 62:14]
    dot.io.a[13] <= input[13] @[compute.scala 62:14]
    dot.io.a[14] <= input[14] @[compute.scala 62:14]
    dot.io.a[15] <= input[15] @[compute.scala 62:14]
    dot.io.b[0] <= weight[0] @[compute.scala 63:14]
    dot.io.b[1] <= weight[1] @[compute.scala 63:14]
    dot.io.b[2] <= weight[2] @[compute.scala 63:14]
    dot.io.b[3] <= weight[3] @[compute.scala 63:14]
    dot.io.b[4] <= weight[4] @[compute.scala 63:14]
    dot.io.b[5] <= weight[5] @[compute.scala 63:14]
    dot.io.b[6] <= weight[6] @[compute.scala 63:14]
    dot.io.b[7] <= weight[7] @[compute.scala 63:14]
    dot.io.b[8] <= weight[8] @[compute.scala 63:14]
    dot.io.b[9] <= weight[9] @[compute.scala 63:14]
    dot.io.b[10] <= weight[10] @[compute.scala 63:14]
    dot.io.b[11] <= weight[11] @[compute.scala 63:14]
    dot.io.b[12] <= weight[12] @[compute.scala 63:14]
    dot.io.b[13] <= weight[13] @[compute.scala 63:14]
    dot.io.b[14] <= weight[14] @[compute.scala 63:14]
    dot.io.b[15] <= weight[15] @[compute.scala 63:14]
    io.interrupt <= vld @[compute.scala 66:18]

  module shellSimple :
    input clock : Clock
    input reset : UInt<1>
    output io : { mem : { AWVALID : UInt<1>, flip AWREADY : UInt<1>, AWADDR : UInt<32>, AWID : UInt<1>, AWUSER : UInt<0>, AWLEN : UInt<8>, AWSIZE : UInt<3>, AWBURST : UInt<2>, AWLOCK : UInt<2>, AWCACHE : UInt<4>, AWPROT : UInt<3>, AWQOS : UInt<4>, AWREGION : UInt<4>, WVALID : UInt<1>, flip WREADY : UInt<1>, WDATA : UInt<32>, WSTRB : UInt<4>, WLAST : UInt<1>, WID : UInt<1>, WUSER : UInt<0>, flip BVALID : UInt<1>, BREADY : UInt<1>, flip BRESP : UInt<2>, flip BID : UInt<1>, flip BUSER : UInt<0>, ARVALID : UInt<1>, flip ARREADY : UInt<1>, ARADDR : UInt<32>, ARID : UInt<1>, ARUSER : UInt<0>, ARLEN : UInt<8>, ARSIZE : UInt<3>, ARBURST : UInt<2>, ARLOCK : UInt<2>, ARCACHE : UInt<4>, ARPROT : UInt<3>, ARQOS : UInt<4>, ARREGION : UInt<4>, flip RVALID : UInt<1>, RREADY : UInt<1>, flip RDATA : UInt<32>, flip RRESP : UInt<2>, flip RLAST : UInt<1>, flip RID : UInt<1>, flip RUSER : UInt<0>}, host : { flip AWVALID : UInt<1>, AWREADY : UInt<1>, flip AWADDR : UInt<32>, flip WVALID : UInt<1>, WREADY : UInt<1>, flip WDATA : UInt<32>, flip WSTRB : UInt<4>, BVALID : UInt<1>, flip BREADY : UInt<1>, BRESP : UInt<2>, flip ARVALID : UInt<1>, ARREADY : UInt<1>, flip ARADDR : UInt<32>, RVALID : UInt<1>, flip RREADY : UInt<1>, RDATA : UInt<32>, RRESP : UInt<2>}, interrupt : UInt<1>}

    inst dma of DMASimpleXil @[shell.scala 16:21]
    dma.clock <= clock
    dma.reset <= reset
    inst computer of ComputSimple @[shell.scala 18:26]
    computer.clock <= clock
    computer.reset <= reset
    dma.io.mem.RUSER <= io.mem.RUSER @[shell.scala 20:12]
    dma.io.mem.RID <= io.mem.RID @[shell.scala 20:12]
    dma.io.mem.RLAST <= io.mem.RLAST @[shell.scala 20:12]
    dma.io.mem.RRESP <= io.mem.RRESP @[shell.scala 20:12]
    dma.io.mem.RDATA <= io.mem.RDATA @[shell.scala 20:12]
    io.mem.RREADY <= dma.io.mem.RREADY @[shell.scala 20:12]
    dma.io.mem.RVALID <= io.mem.RVALID @[shell.scala 20:12]
    io.mem.ARREGION <= dma.io.mem.ARREGION @[shell.scala 20:12]
    io.mem.ARQOS <= dma.io.mem.ARQOS @[shell.scala 20:12]
    io.mem.ARPROT <= dma.io.mem.ARPROT @[shell.scala 20:12]
    io.mem.ARCACHE <= dma.io.mem.ARCACHE @[shell.scala 20:12]
    io.mem.ARLOCK <= dma.io.mem.ARLOCK @[shell.scala 20:12]
    io.mem.ARBURST <= dma.io.mem.ARBURST @[shell.scala 20:12]
    io.mem.ARSIZE <= dma.io.mem.ARSIZE @[shell.scala 20:12]
    io.mem.ARLEN <= dma.io.mem.ARLEN @[shell.scala 20:12]
    io.mem.ARUSER <= dma.io.mem.ARUSER @[shell.scala 20:12]
    io.mem.ARID <= dma.io.mem.ARID @[shell.scala 20:12]
    io.mem.ARADDR <= dma.io.mem.ARADDR @[shell.scala 20:12]
    dma.io.mem.ARREADY <= io.mem.ARREADY @[shell.scala 20:12]
    io.mem.ARVALID <= dma.io.mem.ARVALID @[shell.scala 20:12]
    dma.io.mem.BUSER <= io.mem.BUSER @[shell.scala 20:12]
    dma.io.mem.BID <= io.mem.BID @[shell.scala 20:12]
    dma.io.mem.BRESP <= io.mem.BRESP @[shell.scala 20:12]
    io.mem.BREADY <= dma.io.mem.BREADY @[shell.scala 20:12]
    dma.io.mem.BVALID <= io.mem.BVALID @[shell.scala 20:12]
    io.mem.WUSER <= dma.io.mem.WUSER @[shell.scala 20:12]
    io.mem.WID <= dma.io.mem.WID @[shell.scala 20:12]
    io.mem.WLAST <= dma.io.mem.WLAST @[shell.scala 20:12]
    io.mem.WSTRB <= dma.io.mem.WSTRB @[shell.scala 20:12]
    io.mem.WDATA <= dma.io.mem.WDATA @[shell.scala 20:12]
    dma.io.mem.WREADY <= io.mem.WREADY @[shell.scala 20:12]
    io.mem.WVALID <= dma.io.mem.WVALID @[shell.scala 20:12]
    io.mem.AWREGION <= dma.io.mem.AWREGION @[shell.scala 20:12]
    io.mem.AWQOS <= dma.io.mem.AWQOS @[shell.scala 20:12]
    io.mem.AWPROT <= dma.io.mem.AWPROT @[shell.scala 20:12]
    io.mem.AWCACHE <= dma.io.mem.AWCACHE @[shell.scala 20:12]
    io.mem.AWLOCK <= dma.io.mem.AWLOCK @[shell.scala 20:12]
    io.mem.AWBURST <= dma.io.mem.AWBURST @[shell.scala 20:12]
    io.mem.AWSIZE <= dma.io.mem.AWSIZE @[shell.scala 20:12]
    io.mem.AWLEN <= dma.io.mem.AWLEN @[shell.scala 20:12]
    io.mem.AWUSER <= dma.io.mem.AWUSER @[shell.scala 20:12]
    io.mem.AWID <= dma.io.mem.AWID @[shell.scala 20:12]
    io.mem.AWADDR <= dma.io.mem.AWADDR @[shell.scala 20:12]
    dma.io.mem.AWREADY <= io.mem.AWREADY @[shell.scala 20:12]
    io.mem.AWVALID <= dma.io.mem.AWVALID @[shell.scala 20:12]
    io.host.RRESP <= dma.io.host.RRESP @[shell.scala 21:13]
    io.host.RDATA <= dma.io.host.RDATA @[shell.scala 21:13]
    dma.io.host.RREADY <= io.host.RREADY @[shell.scala 21:13]
    io.host.RVALID <= dma.io.host.RVALID @[shell.scala 21:13]
    dma.io.host.ARADDR <= io.host.ARADDR @[shell.scala 21:13]
    io.host.ARREADY <= dma.io.host.ARREADY @[shell.scala 21:13]
    dma.io.host.ARVALID <= io.host.ARVALID @[shell.scala 21:13]
    io.host.BRESP <= dma.io.host.BRESP @[shell.scala 21:13]
    dma.io.host.BREADY <= io.host.BREADY @[shell.scala 21:13]
    io.host.BVALID <= dma.io.host.BVALID @[shell.scala 21:13]
    dma.io.host.WSTRB <= io.host.WSTRB @[shell.scala 21:13]
    dma.io.host.WDATA <= io.host.WDATA @[shell.scala 21:13]
    io.host.WREADY <= dma.io.host.WREADY @[shell.scala 21:13]
    dma.io.host.WVALID <= io.host.WVALID @[shell.scala 21:13]
    dma.io.host.AWADDR <= io.host.AWADDR @[shell.scala 21:13]
    io.host.AWREADY <= dma.io.host.AWREADY @[shell.scala 21:13]
    dma.io.host.AWVALID <= io.host.AWVALID @[shell.scala 21:13]
    dma.io.core.result <= computer.io.core.result @[shell.scala 23:17]
    dma.io.core.done <= computer.io.core.done @[shell.scala 23:17]
    computer.io.core.weight[0] <= dma.io.core.weight[0] @[shell.scala 23:17]
    computer.io.core.weight[1] <= dma.io.core.weight[1] @[shell.scala 23:17]
    computer.io.core.weight[2] <= dma.io.core.weight[2] @[shell.scala 23:17]
    computer.io.core.weight[3] <= dma.io.core.weight[3] @[shell.scala 23:17]
    computer.io.core.input[0] <= dma.io.core.input[0] @[shell.scala 23:17]
    computer.io.core.input[1] <= dma.io.core.input[1] @[shell.scala 23:17]
    computer.io.core.input[2] <= dma.io.core.input[2] @[shell.scala 23:17]
    computer.io.core.input[3] <= dma.io.core.input[3] @[shell.scala 23:17]
    computer.io.core.start <= dma.io.core.start @[shell.scala 23:17]
    io.interrupt <= computer.io.interrupt @[shell.scala 25:18]

