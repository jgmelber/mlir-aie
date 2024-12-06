module {
  aie.device(npu1_4col) {
    memref.global "public" @out_cons : memref<1024xi32>
    memref.global "public" @out : memref<1024xi32>
    memref.global "public" @in2to3 : memref<1024xi32>
    memref.global "public" @in1to2 : memref<1024xi32>
    memref.global "public" @in0to1 : memref<1024xi32>
    memref.global "public" @infactor_cons : memref<1xi32>
    memref.global "public" @infactor : memref<1xi32>
    memref.global "public" @in_cons : memref<1024xi32>
    memref.global "public" @in : memref<1024xi32>
    func.func private @vector_scalar_mul_aie_scalar(memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32)
    func.func private @passthrough(memref<1024xi32>, memref<1024xi32>, i32)
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
    %infactor_cons_buff_0 = aie.buffer(%tile_0_2) {address = 13312 : i32, mem_bank = 0 : i32, sym_name = "infactor_cons_buff_0"} : memref<1xi32> 
    %infactor_cons_buff_1 = aie.buffer(%tile_0_2) {address = 13316 : i32, mem_bank = 0 : i32, sym_name = "infactor_cons_buff_1"} : memref<1xi32> 
    %infactor_cons_prod_lock = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "infactor_cons_prod_lock"}
    %infactor_cons_cons_lock = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "infactor_cons_cons_lock"}
    %infactor_prod_lock = aie.lock(%tile_0_0, 2) {init = 1 : i32, sym_name = "infactor_prod_lock"}
    %infactor_cons_lock = aie.lock(%tile_0_0, 3) {init = 0 : i32, sym_name = "infactor_cons_lock"}
    %in_cons_buff_0 = aie.buffer(%tile_0_2) {address = 9216 : i32, mem_bank = 0 : i32, sym_name = "in_cons_buff_0"} : memref<1024xi32> 
    %in_cons_buff_1 = aie.buffer(%tile_0_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in_cons_buff_1"} : memref<1024xi32> 
    %in_cons_prod_lock = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "in_cons_prod_lock"}
    %in_cons_cons_lock = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "in_cons_cons_lock"}
    %in_prod_lock = aie.lock(%tile_0_0, 0) {init = 1 : i32, sym_name = "in_prod_lock"}
    %in_cons_lock = aie.lock(%tile_0_0, 1) {init = 0 : i32, sym_name = "in_cons_lock"}
    aie.flow(%tile_0_0, DMA : 0, %tile_0_2, DMA : 0)
    aie.flow(%tile_0_0, DMA : 1, %tile_0_2, DMA : 1)
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
      %c4 = arith.constant 4 : index
      %c1_1 = arith.constant 1 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c4 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0to1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in_cons_buff_0, %in0to1_buff_0, %infactor_cons_buff_0, %c1024_i32) : (memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32) -> ()
      aie.use_lock(%in_cons_prod_lock, Release, 1)
      aie.use_lock(%in0to1_cons_lock, Release, 1)
      aie.use_lock(%in0to1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in_cons_buff_1, %in0to1_buff_1, %infactor_cons_buff_0, %c1024_i32_3) : (memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32) -> ()
      aie.use_lock(%in_cons_prod_lock, Release, 1)
      aie.use_lock(%in0to1_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%infactor_cons_prod_lock, Release, 1)
      aie.use_lock(%infactor_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %c4_5 = arith.constant 4 : index
      %c1_6 = arith.constant 1 : index
      %c2_7 = arith.constant 2 : index
      cf.br ^bb6(%c0_4 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c4_5 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0to1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_8 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in_cons_buff_0, %in0to1_buff_0, %infactor_cons_buff_1, %c1024_i32_8) : (memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32) -> ()
      aie.use_lock(%in_cons_prod_lock, Release, 1)
      aie.use_lock(%in0to1_cons_lock, Release, 1)
      aie.use_lock(%in0to1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_9 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in_cons_buff_1, %in0to1_buff_1, %infactor_cons_buff_1, %c1024_i32_9) : (memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32) -> ()
      aie.use_lock(%in_cons_prod_lock, Release, 1)
      aie.use_lock(%in0to1_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2_7 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%infactor_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%infactor_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_10 = arith.constant 0 : index
      %c4_11 = arith.constant 4 : index
      %c1_12 = arith.constant 1 : index
      %c2_13 = arith.constant 2 : index
      cf.br ^bb10(%c0_10 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c4_11 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%in0to1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_14 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in_cons_buff_0, %in0to1_buff_0, %infactor_cons_buff_0, %c1024_i32_14) : (memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32) -> ()
      aie.use_lock(%in_cons_prod_lock, Release, 1)
      aie.use_lock(%in0to1_cons_lock, Release, 1)
      aie.use_lock(%in0to1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_15 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in_cons_buff_1, %in0to1_buff_1, %infactor_cons_buff_0, %c1024_i32_15) : (memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32) -> ()
      aie.use_lock(%in_cons_prod_lock, Release, 1)
      aie.use_lock(%in0to1_cons_lock, Release, 1)
      %11 = arith.addi %9, %c2_13 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%infactor_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c4 = arith.constant 4 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c4 : index
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
      %c1024_i32_2 = arith.constant 1024 : i32
      func.call @passthrough(%in0to1_buff_1, %in1to2_buff_1, %c1024_i32_2) : (memref<1024xi32>, memref<1024xi32>, i32) -> ()
      aie.use_lock(%in0to1_prod_lock, Release, 1)
      aie.use_lock(%in1to2_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "passthrough.o"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c4 = arith.constant 4 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c4 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in2to3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1to2_cons_lock, AcquireGreaterEqual, 1)
      %c0_2 = arith.constant 0 : index
      %c1024 = arith.constant 1024 : index
      %c1_3 = arith.constant 1 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c1024 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %in1to2_buff_0[%4] : memref<1024xi32>
      memref.store %6, %in2to3_buff_0[%4] : memref<1024xi32>
      %7 = arith.addi %4, %c1_3 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%in1to2_prod_lock, Release, 1)
      aie.use_lock(%in2to3_cons_lock, Release, 1)
      aie.use_lock(%in2to3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1to2_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %c1024_5 = arith.constant 1024 : index
      %c1_6 = arith.constant 1 : index
      cf.br ^bb8(%c0_4 : index)
    ^bb8(%8: index):  // 2 preds: ^bb7, ^bb9
      %9 = arith.cmpi slt, %8, %c1024_5 : index
      cf.cond_br %9, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      %10 = memref.load %in1to2_buff_1[%8] : memref<1024xi32>
      memref.store %10, %in2to3_buff_1[%8] : memref<1024xi32>
      %11 = arith.addi %8, %c1_6 : index
      cf.br ^bb8(%11 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%in1to2_prod_lock, Release, 1)
      aie.use_lock(%in2to3_cons_lock, Release, 1)
      %12 = arith.addi %2, %c2 : index
      cf.br ^bb3(%12 : index)
    ^bb11:  // pred: ^bb3
      %13 = arith.addi %0, %c1 : index
      cf.br ^bb1(%13 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    }
    %core_0_5 = aie.core(%tile_0_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c4 = arith.constant 4 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c4 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2to3_cons_lock, AcquireGreaterEqual, 1)
      %c0_2 = arith.constant 0 : index
      %c1024 = arith.constant 1024 : index
      %c1_3 = arith.constant 1 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c1024 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %in2to3_buff_0[%4] : memref<1024xi32>
      memref.store %6, %out_buff_0[%4] : memref<1024xi32>
      %7 = arith.addi %4, %c1_3 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%in2to3_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2to3_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %c1024_5 = arith.constant 1024 : index
      %c1_6 = arith.constant 1 : index
      cf.br ^bb8(%c0_4 : index)
    ^bb8(%8: index):  // 2 preds: ^bb7, ^bb9
      %9 = arith.cmpi slt, %8, %c1024_5 : index
      cf.cond_br %9, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      %10 = memref.load %in2to3_buff_1[%8] : memref<1024xi32>
      memref.store %10, %out_buff_1[%8] : memref<1024xi32>
      %11 = arith.addi %8, %c1_6 : index
      cf.br ^bb8(%11 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%in2to3_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      %12 = arith.addi %2, %c2 : index
      cf.br ^bb3(%12 : index)
    ^bb11:  // pred: ^bb3
      %13 = arith.addi %0, %c1 : index
      cf.br ^bb1(%13 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    }
    aie.shim_dma_allocation @in(MM2S, 0, 0)
    aiex.runtime_sequence(%arg0: memref<4096xi32>, %arg1: memref<1xi32>, %arg2: memref<4096xi32>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 1 : i64, metadata = @in} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 1][0, 0, 0, 1]) {id = 2 : i64, metadata = @infactor} : memref<1xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @out}
    }
    aie.shim_dma_allocation @infactor(MM2S, 1, 0)
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in_cons_buff_0 : memref<1024xi32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in_cons_buff_1 : memref<1024xi32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in_cons_cons_lock, Release, 1)
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
