module {
  aie.device(npu1_4col) {
    memref.global "public" @out_cons : memref<1024xi32>
    memref.global "public" @out : memref<1024xi32>
    memref.global "public" @in2to3 : memref<1024xi32>
    memref.global "public" @in1to2 : memref<1024xi32>
    memref.global "public" @in0to1 : memref<1024xi32>
    memref.global "public" @in1_cons : memref<1024xi32>
    memref.global "public" @in1 : memref<1024xi32>
    memref.global "public" @infactor_cons : memref<1xi32>
    memref.global "public" @infactor : memref<1xi32>
    memref.global "public" @in0_cons : memref<1024xi32>
    memref.global "public" @in0 : memref<1024xi32>
    func.func private @vector_scalar_mul_aie_scalar(memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32)
    func.func private @passthrough(memref<1024xi32>, memref<1024xi32>, i32)
    func.func private @vector_add_aie_scalar(memref<1024xi32>, memref<1024xi32>, memref<1024xi32>, i32)
    func.func private @mean(memref<1024xi32>, memref<1xi32>, i32)
    %tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_0_2 = aie.tile(0, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_0_3 = aie.tile(0, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_0_4 = aie.tile(0, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_0_5 = aie.tile(0, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_1_0 = aie.tile(1, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_1_2 = aie.tile(1, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_1_3 = aie.tile(1, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_1_4 = aie.tile(1, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_1_5 = aie.tile(1, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_2_0 = aie.tile(2, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_2_2 = aie.tile(2, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_2_3 = aie.tile(2, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_2_4 = aie.tile(2, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_2_5 = aie.tile(2, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_3_0 = aie.tile(3, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_3_2 = aie.tile(3, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_3_3 = aie.tile(3, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_3_4 = aie.tile(3, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_3_5 = aie.tile(3, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %out_cons_prod_lock = aie.lock(%tile_0_0, 4) {init = 1 : i32, sym_name = "out_cons_prod_lock"}
    %out_cons_cons_lock = aie.lock(%tile_0_0, 5) {init = 0 : i32, sym_name = "out_cons_cons_lock"}
    %out_buff_0 = aie.buffer(%tile_0_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out_buff_0"} : memref<1024xi32> 
    %out_buff_1 = aie.buffer(%tile_0_5) {address = 5120 : i32, mem_bank = 0 : i32, sym_name = "out_buff_1"} : memref<1024xi32> 
    %out_prod_lock = aie.lock(%tile_0_5, 0) {init = 2 : i32, sym_name = "out_prod_lock"}
    %out_cons_lock = aie.lock(%tile_0_5, 1) {init = 0 : i32, sym_name = "out_cons_lock"}
    %in2to3_buff_0 = aie.buffer(%tile_0_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "in2to3_buff_0"} : memref<1024xi32> 
    %in2to3_buff_1 = aie.buffer(%tile_0_4) {address = 5120 : i32, mem_bank = 0 : i32, sym_name = "in2to3_buff_1"} : memref<1024xi32> 
    %in2to3_prod_lock = aie.lock(%tile_0_4, 0) {init = 2 : i32, sym_name = "in2to3_prod_lock"}
    %in2to3_cons_lock = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "in2to3_cons_lock"}
    %in1to2_buff_0 = aie.buffer(%tile_0_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "in1to2_buff_0"} : memref<1024xi32> 
    %in1to2_buff_1 = aie.buffer(%tile_0_3) {address = 5120 : i32, mem_bank = 0 : i32, sym_name = "in1to2_buff_1"} : memref<1024xi32> 
    %in1to2_prod_lock = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "in1to2_prod_lock"}
    %in1to2_cons_lock = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "in1to2_cons_lock"}
    %in0to1_buff_0 = aie.buffer(%tile_0_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "in0to1_buff_0"} : memref<1024xi32> 
    %in0to1_buff_1 = aie.buffer(%tile_0_2) {address = 5120 : i32, mem_bank = 0 : i32, sym_name = "in0to1_buff_1"} : memref<1024xi32> 
    %in0to1_prod_lock = aie.lock(%tile_0_2, 4) {init = 2 : i32, sym_name = "in0to1_prod_lock"}
    %in0to1_cons_lock = aie.lock(%tile_0_2, 5) {init = 0 : i32, sym_name = "in0to1_cons_lock"}
    %in1_cons_buff_0 = aie.buffer(%tile_1_2) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in1_cons_buff_0"} : memref<1024xi32> 
    %in1_cons_buff_1 = aie.buffer(%tile_1_2) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "in1_cons_buff_1"} : memref<1024xi32> 
    %in1_cons_prod_lock = aie.lock(%tile_1_2, 0) {init = 2 : i32, sym_name = "in1_cons_prod_lock"}
    %in1_cons_cons_lock = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "in1_cons_cons_lock"}
    %in1_prod_lock = aie.lock(%tile_1_0, 0) {init = 1 : i32, sym_name = "in1_prod_lock"}
    %in1_cons_lock = aie.lock(%tile_1_0, 1) {init = 0 : i32, sym_name = "in1_cons_lock"}
    %infactor_cons_buff_0 = aie.buffer(%tile_0_2) {address = 13312 : i32, mem_bank = 0 : i32, sym_name = "infactor_cons_buff_0"} : memref<1xi32> 
    %infactor_cons_buff_1 = aie.buffer(%tile_0_2) {address = 13316 : i32, mem_bank = 0 : i32, sym_name = "infactor_cons_buff_1"} : memref<1xi32> 
    %infactor_cons_prod_lock = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "infactor_cons_prod_lock"}
    %infactor_cons_cons_lock = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "infactor_cons_cons_lock"}
    %infactor_prod_lock = aie.lock(%tile_0_0, 2) {init = 1 : i32, sym_name = "infactor_prod_lock"}
    %infactor_cons_lock = aie.lock(%tile_0_0, 3) {init = 0 : i32, sym_name = "infactor_cons_lock"}
    %in0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 9216 : i32, mem_bank = 0 : i32, sym_name = "in0_cons_buff_0"} : memref<1024xi32> 
    %in0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in0_cons_buff_1"} : memref<1024xi32> 
    %in0_cons_prod_lock = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "in0_cons_prod_lock"}
    %in0_cons_cons_lock = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "in0_cons_cons_lock"}
    %in0_prod_lock = aie.lock(%tile_0_0, 0) {init = 1 : i32, sym_name = "in0_prod_lock"}
    %in0_cons_lock = aie.lock(%tile_0_0, 1) {init = 0 : i32, sym_name = "in0_cons_lock"}
    aie.flow(%tile_0_0, DMA : 0, %tile_0_2, DMA : 0)
    aie.flow(%tile_0_0, DMA : 1, %tile_0_2, DMA : 1)
    aie.flow(%tile_1_0, DMA : 0, %tile_1_2, DMA : 0)
    aie.flow(%tile_0_5, DMA : 0, %tile_0_0, DMA : 0)
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      aie.use_lock(%infactor_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c9 = arith.constant 9 : index
      %c1_1 = arith.constant 1 : index
      %c8 = arith.constant 8 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0to1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in0_cons_buff_0, %in0to1_buff_0, %infactor_cons_buff_0, %c1024_i32) : (memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32) -> ()
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0to1_cons_lock, Release, 1)
      aie.use_lock(%in0to1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in0_cons_buff_1, %in0to1_buff_1, %infactor_cons_buff_0, %c1024_i32_3) : (memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32) -> ()
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0to1_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%in0to1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in0_cons_buff_0, %in0to1_buff_0, %infactor_cons_buff_0, %c1024_i32_4) : (memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32) -> ()
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0to1_cons_lock, Release, 1)
      aie.use_lock(%infactor_cons_prod_lock, Release, 1)
      aie.use_lock(%infactor_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c9_6 = arith.constant 9 : index
      %c1_7 = arith.constant 1 : index
      %c8_8 = arith.constant 8 : index
      %c2_9 = arith.constant 2 : index
      cf.br ^bb6(%c0_5 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8_8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0to1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_10 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in0_cons_buff_1, %in0to1_buff_1, %infactor_cons_buff_1, %c1024_i32_10) : (memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32) -> ()
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0to1_cons_lock, Release, 1)
      aie.use_lock(%in0to1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in0_cons_buff_0, %in0to1_buff_0, %infactor_cons_buff_1, %c1024_i32_11) : (memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32) -> ()
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0to1_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%in0to1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in0_cons_buff_1, %in0to1_buff_1, %infactor_cons_buff_1, %c1024_i32_12) : (memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32) -> ()
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0to1_cons_lock, Release, 1)
      aie.use_lock(%infactor_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%infactor_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_13 = arith.constant 0 : index
      %c9_14 = arith.constant 9 : index
      %c1_15 = arith.constant 1 : index
      %c8_16 = arith.constant 8 : index
      %c2_17 = arith.constant 2 : index
      cf.br ^bb10(%c0_13 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8_16 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%in0to1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_18 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in0_cons_buff_0, %in0to1_buff_0, %infactor_cons_buff_0, %c1024_i32_18) : (memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32) -> ()
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0to1_cons_lock, Release, 1)
      aie.use_lock(%in0to1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in0_cons_buff_1, %in0to1_buff_1, %infactor_cons_buff_0, %c1024_i32_19) : (memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32) -> ()
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0to1_cons_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%in0to1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in0_cons_buff_0, %in0to1_buff_0, %infactor_cons_buff_0, %c1024_i32_20) : (memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32) -> ()
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0to1_cons_lock, Release, 1)
      aie.use_lock(%infactor_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c9 = arith.constant 9 : index
      %c1_1 = arith.constant 1 : index
      %c8 = arith.constant 8 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in1to2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in0to1_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @passthrough(%in0to1_buff_0, %in1to2_buff_0, %c1024_i32) : (memref<1024xi32>, memref<1024xi32>, i32) -> ()
      aie.use_lock(%in0to1_prod_lock, Release, 1)
      aie.use_lock(%in1to2_cons_lock, Release, 1)
      aie.use_lock(%in1to2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in0to1_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @passthrough(%in0to1_buff_1, %in1to2_buff_1, %c1024_i32_3) : (memref<1024xi32>, memref<1024xi32>, i32) -> ()
      aie.use_lock(%in0to1_prod_lock, Release, 1)
      aie.use_lock(%in1to2_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%in1to2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in0to1_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @passthrough(%in0to1_buff_0, %in1to2_buff_0, %c1024_i32_4) : (memref<1024xi32>, memref<1024xi32>, i32) -> ()
      aie.use_lock(%in0to1_prod_lock, Release, 1)
      aie.use_lock(%in1to2_cons_lock, Release, 1)
      %c0_5 = arith.constant 0 : index
      %c9_6 = arith.constant 9 : index
      %c1_7 = arith.constant 1 : index
      %c8_8 = arith.constant 8 : index
      %c2_9 = arith.constant 2 : index
      cf.br ^bb6(%c0_5 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8_8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in1to2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in0to1_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_10 = arith.constant 1024 : i32
      func.call @passthrough(%in0to1_buff_1, %in1to2_buff_1, %c1024_i32_10) : (memref<1024xi32>, memref<1024xi32>, i32) -> ()
      aie.use_lock(%in0to1_prod_lock, Release, 1)
      aie.use_lock(%in1to2_cons_lock, Release, 1)
      aie.use_lock(%in1to2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in0to1_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @passthrough(%in0to1_buff_0, %in1to2_buff_0, %c1024_i32_11) : (memref<1024xi32>, memref<1024xi32>, i32) -> ()
      aie.use_lock(%in0to1_prod_lock, Release, 1)
      aie.use_lock(%in1to2_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%in1to2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in0to1_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @passthrough(%in0to1_buff_1, %in1to2_buff_1, %c1024_i32_12) : (memref<1024xi32>, memref<1024xi32>, i32) -> ()
      aie.use_lock(%in0to1_prod_lock, Release, 1)
      aie.use_lock(%in1to2_cons_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      %c0_13 = arith.constant 0 : index
      %c9_14 = arith.constant 9 : index
      %c1_15 = arith.constant 1 : index
      %c8_16 = arith.constant 8 : index
      %c2_17 = arith.constant 2 : index
      cf.br ^bb10(%c0_13 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8_16 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%in1to2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in0to1_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_18 = arith.constant 1024 : i32
      func.call @passthrough(%in0to1_buff_0, %in1to2_buff_0, %c1024_i32_18) : (memref<1024xi32>, memref<1024xi32>, i32) -> ()
      aie.use_lock(%in0to1_prod_lock, Release, 1)
      aie.use_lock(%in1to2_cons_lock, Release, 1)
      aie.use_lock(%in1to2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in0to1_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @passthrough(%in0to1_buff_1, %in1to2_buff_1, %c1024_i32_19) : (memref<1024xi32>, memref<1024xi32>, i32) -> ()
      aie.use_lock(%in0to1_prod_lock, Release, 1)
      aie.use_lock(%in1to2_cons_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%in1to2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in0to1_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @passthrough(%in0to1_buff_0, %in1to2_buff_0, %c1024_i32_20) : (memref<1024xi32>, memref<1024xi32>, i32) -> ()
      aie.use_lock(%in0to1_prod_lock, Release, 1)
      aie.use_lock(%in1to2_cons_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb26
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb27
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c9 = arith.constant 9 : index
      %c1_1 = arith.constant 1 : index
      %c8 = arith.constant 8 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in2to3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1to2_cons_lock, AcquireGreaterEqual, 1)
      %c0_3 = arith.constant 0 : index
      %c1024 = arith.constant 1024 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_3 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c1024 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %in1to2_buff_0[%4] : memref<1024xi32>
      memref.store %6, %in2to3_buff_0[%4] : memref<1024xi32>
      %7 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%in1to2_prod_lock, Release, 1)
      aie.use_lock(%in2to3_cons_lock, Release, 1)
      aie.use_lock(%in2to3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1to2_cons_lock, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c1024_6 = arith.constant 1024 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%8: index):  // 2 preds: ^bb7, ^bb9
      %9 = arith.cmpi slt, %8, %c1024_6 : index
      cf.cond_br %9, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      %10 = memref.load %in1to2_buff_1[%8] : memref<1024xi32>
      memref.store %10, %in2to3_buff_1[%8] : memref<1024xi32>
      %c1_9 = arith.constant 1 : index
      %11 = arith.addi %8, %c1_7 : index
      %12 = memref.load %in1to2_buff_1[%11] : memref<1024xi32>
      memref.store %12, %in2to3_buff_1[%11] : memref<1024xi32>
      %13 = arith.addi %8, %c2_8 : index
      cf.br ^bb8(%13 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%in1to2_prod_lock, Release, 1)
      aie.use_lock(%in2to3_cons_lock, Release, 1)
      %14 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%14 : index)
    ^bb11:  // pred: ^bb3
      aie.use_lock(%in2to3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1to2_cons_lock, AcquireGreaterEqual, 1)
      %c0_10 = arith.constant 0 : index
      %c1024_11 = arith.constant 1024 : index
      %c1_12 = arith.constant 1 : index
      %c2_13 = arith.constant 2 : index
      cf.br ^bb12(%c0_10 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c1024_11 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      %17 = memref.load %in1to2_buff_0[%15] : memref<1024xi32>
      memref.store %17, %in2to3_buff_0[%15] : memref<1024xi32>
      %c1_14 = arith.constant 1 : index
      %18 = arith.addi %15, %c1_12 : index
      %19 = memref.load %in1to2_buff_0[%18] : memref<1024xi32>
      memref.store %19, %in2to3_buff_0[%18] : memref<1024xi32>
      %20 = arith.addi %15, %c2_13 : index
      cf.br ^bb12(%20 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%in1to2_prod_lock, Release, 1)
      aie.use_lock(%in2to3_cons_lock, Release, 1)
      %c0_15 = arith.constant 0 : index
      %c9_16 = arith.constant 9 : index
      %c1_17 = arith.constant 1 : index
      %c8_18 = arith.constant 8 : index
      %c2_19 = arith.constant 2 : index
      cf.br ^bb15(%c0_15 : index)
    ^bb15(%21: index):  // 2 preds: ^bb14, ^bb22
      %22 = arith.cmpi slt, %21, %c8_18 : index
      cf.cond_br %22, ^bb16, ^bb23
    ^bb16:  // pred: ^bb15
      aie.use_lock(%in2to3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1to2_cons_lock, AcquireGreaterEqual, 1)
      %c0_20 = arith.constant 0 : index
      %c1024_21 = arith.constant 1024 : index
      %c1_22 = arith.constant 1 : index
      cf.br ^bb17(%c0_20 : index)
    ^bb17(%23: index):  // 2 preds: ^bb16, ^bb18
      %24 = arith.cmpi slt, %23, %c1024_21 : index
      cf.cond_br %24, ^bb18, ^bb19
    ^bb18:  // pred: ^bb17
      %25 = memref.load %in1to2_buff_1[%23] : memref<1024xi32>
      memref.store %25, %in2to3_buff_1[%23] : memref<1024xi32>
      %26 = arith.addi %23, %c1_22 : index
      cf.br ^bb17(%26 : index)
    ^bb19:  // pred: ^bb17
      aie.use_lock(%in1to2_prod_lock, Release, 1)
      aie.use_lock(%in2to3_cons_lock, Release, 1)
      aie.use_lock(%in2to3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1to2_cons_lock, AcquireGreaterEqual, 1)
      %c0_23 = arith.constant 0 : index
      %c1024_24 = arith.constant 1024 : index
      %c1_25 = arith.constant 1 : index
      %c2_26 = arith.constant 2 : index
      cf.br ^bb20(%c0_23 : index)
    ^bb20(%27: index):  // 2 preds: ^bb19, ^bb21
      %28 = arith.cmpi slt, %27, %c1024_24 : index
      cf.cond_br %28, ^bb21, ^bb22
    ^bb21:  // pred: ^bb20
      %29 = memref.load %in1to2_buff_0[%27] : memref<1024xi32>
      memref.store %29, %in2to3_buff_0[%27] : memref<1024xi32>
      %c1_27 = arith.constant 1 : index
      %30 = arith.addi %27, %c1_25 : index
      %31 = memref.load %in1to2_buff_0[%30] : memref<1024xi32>
      memref.store %31, %in2to3_buff_0[%30] : memref<1024xi32>
      %32 = arith.addi %27, %c2_26 : index
      cf.br ^bb20(%32 : index)
    ^bb22:  // pred: ^bb20
      aie.use_lock(%in1to2_prod_lock, Release, 1)
      aie.use_lock(%in2to3_cons_lock, Release, 1)
      %33 = arith.addi %21, %c2_19 : index
      cf.br ^bb15(%33 : index)
    ^bb23:  // pred: ^bb15
      aie.use_lock(%in2to3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1to2_cons_lock, AcquireGreaterEqual, 1)
      %c0_28 = arith.constant 0 : index
      %c1024_29 = arith.constant 1024 : index
      %c1_30 = arith.constant 1 : index
      %c2_31 = arith.constant 2 : index
      cf.br ^bb24(%c0_28 : index)
    ^bb24(%34: index):  // 2 preds: ^bb23, ^bb25
      %35 = arith.cmpi slt, %34, %c1024_29 : index
      cf.cond_br %35, ^bb25, ^bb26
    ^bb25:  // pred: ^bb24
      %36 = memref.load %in1to2_buff_1[%34] : memref<1024xi32>
      memref.store %36, %in2to3_buff_1[%34] : memref<1024xi32>
      %c1_32 = arith.constant 1 : index
      %37 = arith.addi %34, %c1_30 : index
      %38 = memref.load %in1to2_buff_1[%37] : memref<1024xi32>
      memref.store %38, %in2to3_buff_1[%37] : memref<1024xi32>
      %39 = arith.addi %34, %c2_31 : index
      cf.br ^bb24(%39 : index)
    ^bb26:  // pred: ^bb24
      aie.use_lock(%in1to2_prod_lock, Release, 1)
      aie.use_lock(%in2to3_cons_lock, Release, 1)
      %40 = arith.addi %0, %c2 : index
      cf.br ^bb1(%40 : index)
    ^bb27:  // pred: ^bb1
      %c0_33 = arith.constant 0 : index
      %c9_34 = arith.constant 9 : index
      %c1_35 = arith.constant 1 : index
      %c8_36 = arith.constant 8 : index
      %c2_37 = arith.constant 2 : index
      cf.br ^bb28(%c0_33 : index)
    ^bb28(%41: index):  // 2 preds: ^bb27, ^bb35
      %42 = arith.cmpi slt, %41, %c8_36 : index
      cf.cond_br %42, ^bb29, ^bb36
    ^bb29:  // pred: ^bb28
      aie.use_lock(%in2to3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1to2_cons_lock, AcquireGreaterEqual, 1)
      %c0_38 = arith.constant 0 : index
      %c1024_39 = arith.constant 1024 : index
      %c1_40 = arith.constant 1 : index
      cf.br ^bb30(%c0_38 : index)
    ^bb30(%43: index):  // 2 preds: ^bb29, ^bb31
      %44 = arith.cmpi slt, %43, %c1024_39 : index
      cf.cond_br %44, ^bb31, ^bb32
    ^bb31:  // pred: ^bb30
      %45 = memref.load %in1to2_buff_0[%43] : memref<1024xi32>
      memref.store %45, %in2to3_buff_0[%43] : memref<1024xi32>
      %46 = arith.addi %43, %c1_40 : index
      cf.br ^bb30(%46 : index)
    ^bb32:  // pred: ^bb30
      aie.use_lock(%in1to2_prod_lock, Release, 1)
      aie.use_lock(%in2to3_cons_lock, Release, 1)
      aie.use_lock(%in2to3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1to2_cons_lock, AcquireGreaterEqual, 1)
      %c0_41 = arith.constant 0 : index
      %c1024_42 = arith.constant 1024 : index
      %c1_43 = arith.constant 1 : index
      %c2_44 = arith.constant 2 : index
      cf.br ^bb33(%c0_41 : index)
    ^bb33(%47: index):  // 2 preds: ^bb32, ^bb34
      %48 = arith.cmpi slt, %47, %c1024_42 : index
      cf.cond_br %48, ^bb34, ^bb35
    ^bb34:  // pred: ^bb33
      %49 = memref.load %in1to2_buff_1[%47] : memref<1024xi32>
      memref.store %49, %in2to3_buff_1[%47] : memref<1024xi32>
      %c1_45 = arith.constant 1 : index
      %50 = arith.addi %47, %c1_43 : index
      %51 = memref.load %in1to2_buff_1[%50] : memref<1024xi32>
      memref.store %51, %in2to3_buff_1[%50] : memref<1024xi32>
      %52 = arith.addi %47, %c2_44 : index
      cf.br ^bb33(%52 : index)
    ^bb35:  // pred: ^bb33
      aie.use_lock(%in1to2_prod_lock, Release, 1)
      aie.use_lock(%in2to3_cons_lock, Release, 1)
      %53 = arith.addi %41, %c2_37 : index
      cf.br ^bb28(%53 : index)
    ^bb36:  // pred: ^bb28
      aie.use_lock(%in2to3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1to2_cons_lock, AcquireGreaterEqual, 1)
      %c0_46 = arith.constant 0 : index
      %c1024_47 = arith.constant 1024 : index
      %c1_48 = arith.constant 1 : index
      %c2_49 = arith.constant 2 : index
      cf.br ^bb37(%c0_46 : index)
    ^bb37(%54: index):  // 2 preds: ^bb36, ^bb38
      %55 = arith.cmpi slt, %54, %c1024_47 : index
      cf.cond_br %55, ^bb38, ^bb39
    ^bb38:  // pred: ^bb37
      %56 = memref.load %in1to2_buff_0[%54] : memref<1024xi32>
      memref.store %56, %in2to3_buff_0[%54] : memref<1024xi32>
      %c1_50 = arith.constant 1 : index
      %57 = arith.addi %54, %c1_48 : index
      %58 = memref.load %in1to2_buff_0[%57] : memref<1024xi32>
      memref.store %58, %in2to3_buff_0[%57] : memref<1024xi32>
      %59 = arith.addi %54, %c2_49 : index
      cf.br ^bb37(%59 : index)
    ^bb39:  // pred: ^bb37
      aie.use_lock(%in1to2_prod_lock, Release, 1)
      aie.use_lock(%in2to3_cons_lock, Release, 1)
      aie.end
    }
    %core_0_5 = aie.core(%tile_0_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb26
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb27
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c9 = arith.constant 9 : index
      %c1_1 = arith.constant 1 : index
      %c8 = arith.constant 8 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2to3_cons_lock, AcquireGreaterEqual, 1)
      %c0_3 = arith.constant 0 : index
      %c1024 = arith.constant 1024 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_3 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c1024 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %in2to3_buff_0[%4] : memref<1024xi32>
      memref.store %6, %out_buff_0[%4] : memref<1024xi32>
      %7 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%in2to3_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2to3_cons_lock, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c1024_6 = arith.constant 1024 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%8: index):  // 2 preds: ^bb7, ^bb9
      %9 = arith.cmpi slt, %8, %c1024_6 : index
      cf.cond_br %9, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      %10 = memref.load %in2to3_buff_1[%8] : memref<1024xi32>
      memref.store %10, %out_buff_1[%8] : memref<1024xi32>
      %c1_9 = arith.constant 1 : index
      %11 = arith.addi %8, %c1_7 : index
      %12 = memref.load %in2to3_buff_1[%11] : memref<1024xi32>
      memref.store %12, %out_buff_1[%11] : memref<1024xi32>
      %13 = arith.addi %8, %c2_8 : index
      cf.br ^bb8(%13 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%in2to3_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      %14 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%14 : index)
    ^bb11:  // pred: ^bb3
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2to3_cons_lock, AcquireGreaterEqual, 1)
      %c0_10 = arith.constant 0 : index
      %c1024_11 = arith.constant 1024 : index
      %c1_12 = arith.constant 1 : index
      %c2_13 = arith.constant 2 : index
      cf.br ^bb12(%c0_10 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c1024_11 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      %17 = memref.load %in2to3_buff_0[%15] : memref<1024xi32>
      memref.store %17, %out_buff_0[%15] : memref<1024xi32>
      %c1_14 = arith.constant 1 : index
      %18 = arith.addi %15, %c1_12 : index
      %19 = memref.load %in2to3_buff_0[%18] : memref<1024xi32>
      memref.store %19, %out_buff_0[%18] : memref<1024xi32>
      %20 = arith.addi %15, %c2_13 : index
      cf.br ^bb12(%20 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%in2to3_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      %c0_15 = arith.constant 0 : index
      %c9_16 = arith.constant 9 : index
      %c1_17 = arith.constant 1 : index
      %c8_18 = arith.constant 8 : index
      %c2_19 = arith.constant 2 : index
      cf.br ^bb15(%c0_15 : index)
    ^bb15(%21: index):  // 2 preds: ^bb14, ^bb22
      %22 = arith.cmpi slt, %21, %c8_18 : index
      cf.cond_br %22, ^bb16, ^bb23
    ^bb16:  // pred: ^bb15
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2to3_cons_lock, AcquireGreaterEqual, 1)
      %c0_20 = arith.constant 0 : index
      %c1024_21 = arith.constant 1024 : index
      %c1_22 = arith.constant 1 : index
      cf.br ^bb17(%c0_20 : index)
    ^bb17(%23: index):  // 2 preds: ^bb16, ^bb18
      %24 = arith.cmpi slt, %23, %c1024_21 : index
      cf.cond_br %24, ^bb18, ^bb19
    ^bb18:  // pred: ^bb17
      %25 = memref.load %in2to3_buff_1[%23] : memref<1024xi32>
      memref.store %25, %out_buff_1[%23] : memref<1024xi32>
      %26 = arith.addi %23, %c1_22 : index
      cf.br ^bb17(%26 : index)
    ^bb19:  // pred: ^bb17
      aie.use_lock(%in2to3_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2to3_cons_lock, AcquireGreaterEqual, 1)
      %c0_23 = arith.constant 0 : index
      %c1024_24 = arith.constant 1024 : index
      %c1_25 = arith.constant 1 : index
      %c2_26 = arith.constant 2 : index
      cf.br ^bb20(%c0_23 : index)
    ^bb20(%27: index):  // 2 preds: ^bb19, ^bb21
      %28 = arith.cmpi slt, %27, %c1024_24 : index
      cf.cond_br %28, ^bb21, ^bb22
    ^bb21:  // pred: ^bb20
      %29 = memref.load %in2to3_buff_0[%27] : memref<1024xi32>
      memref.store %29, %out_buff_0[%27] : memref<1024xi32>
      %c1_27 = arith.constant 1 : index
      %30 = arith.addi %27, %c1_25 : index
      %31 = memref.load %in2to3_buff_0[%30] : memref<1024xi32>
      memref.store %31, %out_buff_0[%30] : memref<1024xi32>
      %32 = arith.addi %27, %c2_26 : index
      cf.br ^bb20(%32 : index)
    ^bb22:  // pred: ^bb20
      aie.use_lock(%in2to3_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      %33 = arith.addi %21, %c2_19 : index
      cf.br ^bb15(%33 : index)
    ^bb23:  // pred: ^bb15
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2to3_cons_lock, AcquireGreaterEqual, 1)
      %c0_28 = arith.constant 0 : index
      %c1024_29 = arith.constant 1024 : index
      %c1_30 = arith.constant 1 : index
      %c2_31 = arith.constant 2 : index
      cf.br ^bb24(%c0_28 : index)
    ^bb24(%34: index):  // 2 preds: ^bb23, ^bb25
      %35 = arith.cmpi slt, %34, %c1024_29 : index
      cf.cond_br %35, ^bb25, ^bb26
    ^bb25:  // pred: ^bb24
      %36 = memref.load %in2to3_buff_1[%34] : memref<1024xi32>
      memref.store %36, %out_buff_1[%34] : memref<1024xi32>
      %c1_32 = arith.constant 1 : index
      %37 = arith.addi %34, %c1_30 : index
      %38 = memref.load %in2to3_buff_1[%37] : memref<1024xi32>
      memref.store %38, %out_buff_1[%37] : memref<1024xi32>
      %39 = arith.addi %34, %c2_31 : index
      cf.br ^bb24(%39 : index)
    ^bb26:  // pred: ^bb24
      aie.use_lock(%in2to3_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      %40 = arith.addi %0, %c2 : index
      cf.br ^bb1(%40 : index)
    ^bb27:  // pred: ^bb1
      %c0_33 = arith.constant 0 : index
      %c9_34 = arith.constant 9 : index
      %c1_35 = arith.constant 1 : index
      %c8_36 = arith.constant 8 : index
      %c2_37 = arith.constant 2 : index
      cf.br ^bb28(%c0_33 : index)
    ^bb28(%41: index):  // 2 preds: ^bb27, ^bb35
      %42 = arith.cmpi slt, %41, %c8_36 : index
      cf.cond_br %42, ^bb29, ^bb36
    ^bb29:  // pred: ^bb28
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2to3_cons_lock, AcquireGreaterEqual, 1)
      %c0_38 = arith.constant 0 : index
      %c1024_39 = arith.constant 1024 : index
      %c1_40 = arith.constant 1 : index
      cf.br ^bb30(%c0_38 : index)
    ^bb30(%43: index):  // 2 preds: ^bb29, ^bb31
      %44 = arith.cmpi slt, %43, %c1024_39 : index
      cf.cond_br %44, ^bb31, ^bb32
    ^bb31:  // pred: ^bb30
      %45 = memref.load %in2to3_buff_0[%43] : memref<1024xi32>
      memref.store %45, %out_buff_0[%43] : memref<1024xi32>
      %46 = arith.addi %43, %c1_40 : index
      cf.br ^bb30(%46 : index)
    ^bb32:  // pred: ^bb30
      aie.use_lock(%in2to3_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2to3_cons_lock, AcquireGreaterEqual, 1)
      %c0_41 = arith.constant 0 : index
      %c1024_42 = arith.constant 1024 : index
      %c1_43 = arith.constant 1 : index
      %c2_44 = arith.constant 2 : index
      cf.br ^bb33(%c0_41 : index)
    ^bb33(%47: index):  // 2 preds: ^bb32, ^bb34
      %48 = arith.cmpi slt, %47, %c1024_42 : index
      cf.cond_br %48, ^bb34, ^bb35
    ^bb34:  // pred: ^bb33
      %49 = memref.load %in2to3_buff_1[%47] : memref<1024xi32>
      memref.store %49, %out_buff_1[%47] : memref<1024xi32>
      %c1_45 = arith.constant 1 : index
      %50 = arith.addi %47, %c1_43 : index
      %51 = memref.load %in2to3_buff_1[%50] : memref<1024xi32>
      memref.store %51, %out_buff_1[%50] : memref<1024xi32>
      %52 = arith.addi %47, %c2_44 : index
      cf.br ^bb33(%52 : index)
    ^bb35:  // pred: ^bb33
      aie.use_lock(%in2to3_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      %53 = arith.addi %41, %c2_37 : index
      cf.br ^bb28(%53 : index)
    ^bb36:  // pred: ^bb28
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2to3_cons_lock, AcquireGreaterEqual, 1)
      %c0_46 = arith.constant 0 : index
      %c1024_47 = arith.constant 1024 : index
      %c1_48 = arith.constant 1 : index
      %c2_49 = arith.constant 2 : index
      cf.br ^bb37(%c0_46 : index)
    ^bb37(%54: index):  // 2 preds: ^bb36, ^bb38
      %55 = arith.cmpi slt, %54, %c1024_47 : index
      cf.cond_br %55, ^bb38, ^bb39
    ^bb38:  // pred: ^bb37
      %56 = memref.load %in2to3_buff_0[%54] : memref<1024xi32>
      memref.store %56, %out_buff_0[%54] : memref<1024xi32>
      %c1_50 = arith.constant 1 : index
      %57 = arith.addi %54, %c1_48 : index
      %58 = memref.load %in2to3_buff_0[%57] : memref<1024xi32>
      memref.store %58, %out_buff_0[%57] : memref<1024xi32>
      %59 = arith.addi %54, %c2_49 : index
      cf.br ^bb37(%59 : index)
    ^bb39:  // pred: ^bb37
      aie.use_lock(%in2to3_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.end
    }
    aie.shim_dma_allocation @in0(MM2S, 0, 0)
    aiex.runtime_sequence(%arg0: memref<9216xi32>, %arg1: memref<1xi32>, %arg2: memref<9216xi32>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 9216][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<9216xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 1][0, 0, 0, 1]) {id = 2 : i64, metadata = @infactor} : memref<1xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 9216][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<9216xi32>
      aiex.npu.dma_wait {symbol = @out}
    }
    aie.shim_dma_allocation @infactor(MM2S, 1, 0)
    aie.shim_dma_allocation @in1(MM2S, 0, 1)
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_0 : memref<1024xi32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_1 : memref<1024xi32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%infactor_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%infactor_cons_buff_0 : memref<1xi32>, 0, 1) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%infactor_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%infactor_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%infactor_cons_buff_1 : memref<1xi32>, 0, 1) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%infactor_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<1024xi32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<1024xi32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    aie.shim_dma_allocation @out(S2MM, 0, 0)
    %mem_0_5 = aie.mem(%tile_0_5) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_0 : memref<1024xi32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%out_prod_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_1 : memref<1024xi32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%out_prod_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    aie.packet_flow(15) {
      aie.packet_source<%tile_0_0, Ctrl : 0>
      aie.packet_dest<%tile_0_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%tile_1_0, Ctrl : 0>
      aie.packet_dest<%tile_1_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%tile_2_0, Ctrl : 0>
      aie.packet_dest<%tile_2_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%tile_3_0, Ctrl : 0>
      aie.packet_dest<%tile_3_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
  }
}
