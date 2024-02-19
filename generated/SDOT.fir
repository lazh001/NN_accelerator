circuit SDOT :
  module LFSR :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<27>("h7e1726c")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module SNG2 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR @[SNG.scala 64:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 65:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 69:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 69:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 70:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 70:16]

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
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:28]
    io.product <= _io_product_T @[SDOT.scala 27:16]

  module LFSR_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<28>("hfc2e4d8")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module SNG2_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_1 @[SNG.scala 64:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 65:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 69:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 69:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 70:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 70:16]

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
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:28]
    io.product <= _io_product_T @[SDOT.scala 27:16]

  module LFSR_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<29>("h17a45744")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module SNG2_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_2 @[SNG.scala 64:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 65:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 69:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 69:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 70:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 70:16]

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
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:28]
    io.product <= _io_product_T @[SDOT.scala 27:16]

  module LFSR_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<29>("h1f85c9b0")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module SNG2_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_3 @[SNG.scala 64:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 65:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 69:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 69:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 70:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 70:16]

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
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:28]
    io.product <= _io_product_T @[SDOT.scala 27:16]

  module LFSR_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<30>("h27673c1c")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module SNG2_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_4 @[SNG.scala 64:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 65:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 69:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 69:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 70:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 70:16]

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
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:28]
    io.product <= _io_product_T @[SDOT.scala 27:16]

  module LFSR_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<30>("h2f48ae88")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module SNG2_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_5 @[SNG.scala 64:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 65:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 69:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 69:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 70:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 70:16]

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
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:28]
    io.product <= _io_product_T @[SDOT.scala 27:16]

  module LFSR_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<30>("h372a20f4")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module SNG2_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_6 @[SNG.scala 64:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 65:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 69:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 69:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 70:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 70:16]

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
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:28]
    io.product <= _io_product_T @[SDOT.scala 27:16]

  module LFSR_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<30>("h3f0b9360")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module SNG2_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_7 @[SNG.scala 64:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 65:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 69:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 69:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 70:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 70:16]

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
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:28]
    io.product <= _io_product_T @[SDOT.scala 27:16]

  module LFSR_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h46ed05cc")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module SNG2_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_8 @[SNG.scala 64:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 65:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 69:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 69:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 70:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 70:16]

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
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:28]
    io.product <= _io_product_T @[SDOT.scala 27:16]

  module LFSR_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h4ece7838")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module SNG2_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_9 @[SNG.scala 64:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 65:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 69:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 69:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 70:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 70:16]

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
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:28]
    io.product <= _io_product_T @[SDOT.scala 27:16]

  module LFSR_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h56afeaa4")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module SNG2_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_10 @[SNG.scala 64:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 65:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 69:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 69:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 70:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 70:16]

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
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:28]
    io.product <= _io_product_T @[SDOT.scala 27:16]

  module LFSR_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h5e915d10")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module SNG2_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_11 @[SNG.scala 64:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 65:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 69:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 69:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 70:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 70:16]

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
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:28]
    io.product <= _io_product_T @[SDOT.scala 27:16]

  module LFSR_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h6672cf7c")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module SNG2_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_12 @[SNG.scala 64:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 65:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 69:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 69:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 70:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 70:16]

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
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:28]
    io.product <= _io_product_T @[SDOT.scala 27:16]

  module LFSR_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h6e5441e8")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module SNG2_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_13 @[SNG.scala 64:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 65:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 69:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 69:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 70:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 70:16]

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
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:28]
    io.product <= _io_product_T @[SDOT.scala 27:16]

  module LFSR_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h7635b454")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module SNG2_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_14 @[SNG.scala 64:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 65:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 69:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 69:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 70:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 70:16]

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
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:28]
    io.product <= _io_product_T @[SDOT.scala 27:16]

  module LFSR_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h7e1726c0")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module SNG2_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, flip binNum1 : SInt<8>, flip binNum2 : SInt<8>, stoNum1 : UInt<1>, stoNum2 : UInt<1>}

    inst lfsr of LFSR_15 @[SNG.scala 64:22]
    lfsr.clock <= clock
    lfsr.reset <= reset
    lfsr.io.enable <= io.enable @[SNG.scala 65:20]
    node _io_stoNum1_T = gt(io.binNum1, lfsr.io.out) @[SNG.scala 69:30]
    io.stoNum1 <= _io_stoNum1_T @[SNG.scala 69:16]
    node _io_stoNum2_T = gt(io.binNum2, lfsr.io.out) @[SNG.scala 70:30]
    io.stoNum2 <= _io_stoNum2_T @[SNG.scala 70:16]

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
    node _io_product_T = xor(SNG2.io.stoNum1, stoWeight) @[SDOT.scala 27:28]
    io.product <= _io_product_T @[SDOT.scala 27:16]

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
      reset => (reset, UInt<29>("h1ec4950b")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module LFSR_17 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<30>("h3d892a16")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module LFSR_18 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h5c4dbf21")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module LFSR_19 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable : UInt<1>, out : SInt<8>}

    reg state : UInt<32>, clock with :
      reset => (reset, UInt<31>("h7b12542c")) @[SNG.scala 22:24]
    node _bit_T = bits(state, 31, 31) @[SNG.scala 24:20]
    node _bit_T_1 = bits(state, 29, 29) @[SNG.scala 24:32]
    node _bit_T_2 = xor(_bit_T, _bit_T_1) @[SNG.scala 24:25]
    node _bit_T_3 = bits(state, 28, 28) @[SNG.scala 24:44]
    node _bit_T_4 = xor(_bit_T_2, _bit_T_3) @[SNG.scala 24:37]
    node _bit_T_5 = bits(state, 26, 26) @[SNG.scala 24:56]
    node bit = xor(_bit_T_4, _bit_T_5) @[SNG.scala 24:49]
    node _nextState_T = shl(state, 1) @[SNG.scala 26:27]
    node nextState = or(_nextState_T, bit) @[SNG.scala 26:32]
    state <= nextState @[SNG.scala 28:11]
    node _io_out_T = bits(state, 19, 12) @[SNG.scala 30:20]
    node _io_out_T_1 = asSInt(_io_out_T) @[SNG.scala 30:34]
    io.out <= _io_out_T_1 @[SNG.scala 30:12]

  module SDOT :
    input clock : Clock
    input reset : UInt<1>
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

