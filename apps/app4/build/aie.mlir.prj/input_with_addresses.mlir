module {
  aie.device(npu1_4col) {
    memref.global "public" @out_cons : memref<1024xf32>
    memref.global "public" @out : memref<1024xf32>
    memref.global "public" @of_c12toc11 : memref<1024xf32>
    memref.global "public" @of_c22toc12 : memref<1024xf32>
    memref.global "public" @of_c21toc22 : memref<1024xf32>
    memref.global "public" @of_c21toc11 : memref<1024xf32>
    memref.global "public" @of_c10toc11_cons : memref<1024xf32>
    memref.global "public" @of_c10toc11 : memref<1024xf32>
    memref.global "public" @of_c30toc21 : memref<1024xf32>
    memref.global "public" @of_c20toc21_cons : memref<1024xf32>
    memref.global "public" @of_c20toc21 : memref<1024xf32>
    memref.global "public" @in7_cons : memref<1xf32>
    memref.global "public" @in7 : memref<1xf32>
    memref.global "public" @in6_cons : memref<1024xf32>
    memref.global "public" @in6 : memref<1024xf32>
    memref.global "public" @in5_cons : memref<1xf32>
    memref.global "public" @in5 : memref<1xf32>
    memref.global "public" @in4_cons : memref<1024xf32>
    memref.global "public" @in4 : memref<1024xf32>
    memref.global "public" @in3_cons : memref<1xf32>
    memref.global "public" @in3 : memref<1xf32>
    memref.global "public" @in2_cons : memref<1024xf32>
    memref.global "public" @in2 : memref<1024xf32>
    memref.global "public" @in1_cons : memref<1024xf32>
    memref.global "public" @in1 : memref<1024xf32>
    memref.global "public" @in0_cons : memref<1xf32>
    memref.global "public" @in0 : memref<1xf32>
    func.func private @vector_scalar_mul_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32)
    func.func private @passthrough(memref<1024xf32>, memref<1024xf32>, i32)
    func.func private @vector_add_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32)
    func.func private @mean(memref<1024xf32>, memref<1xf32>, i32)
    %tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_0_1 = aie.tile(0, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_0_2 = aie.tile(0, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_0_3 = aie.tile(0, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_0_4 = aie.tile(0, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_0_5 = aie.tile(0, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_1_0 = aie.tile(1, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_1_1 = aie.tile(1, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_1_2 = aie.tile(1, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_1_3 = aie.tile(1, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_1_4 = aie.tile(1, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_1_5 = aie.tile(1, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_2_0 = aie.tile(2, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_2_1 = aie.tile(2, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_2_2 = aie.tile(2, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_2_3 = aie.tile(2, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_2_4 = aie.tile(2, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_2_5 = aie.tile(2, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_3_0 = aie.tile(3, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_3_1 = aie.tile(3, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_3_2 = aie.tile(3, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_3_3 = aie.tile(3, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_3_4 = aie.tile(3, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_3_5 = aie.tile(3, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %out_cons_prod_lock = aie.lock(%tile_3_0, 4) {init = 1 : i32, sym_name = "out_cons_prod_lock"}
    %out_cons_cons_lock = aie.lock(%tile_3_0, 5) {init = 0 : i32, sym_name = "out_cons_cons_lock"}
    %out_buff_0 = aie.buffer(%tile_0_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out_buff_0"} : memref<1024xf32> 
    %out_buff_1 = aie.buffer(%tile_0_2) {address = 5120 : i32, mem_bank = 0 : i32, sym_name = "out_buff_1"} : memref<1024xf32> 
    %out_prod_lock = aie.lock(%tile_0_2, 4) {init = 2 : i32, sym_name = "out_prod_lock"}
    %out_cons_lock = aie.lock(%tile_0_2, 5) {init = 0 : i32, sym_name = "out_cons_lock"}
    %of_c12toc11_buff_0 = aie.buffer(%tile_1_4) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_c12toc11_buff_0"} : memref<1024xf32> 
    %of_c12toc11_buff_1 = aie.buffer(%tile_1_4) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "of_c12toc11_buff_1"} : memref<1024xf32> 
    %of_c12toc11_prod_lock = aie.lock(%tile_1_4, 2) {init = 2 : i32, sym_name = "of_c12toc11_prod_lock"}
    %of_c12toc11_cons_lock = aie.lock(%tile_1_4, 3) {init = 0 : i32, sym_name = "of_c12toc11_cons_lock"}
    %of_c22toc12_buff_0 = aie.buffer(%tile_1_4) {address = 8192 : i32, mem_bank = 0 : i32, sym_name = "of_c22toc12_buff_0"} : memref<1024xf32> 
    %of_c22toc12_buff_1 = aie.buffer(%tile_1_4) {address = 12288 : i32, mem_bank = 0 : i32, sym_name = "of_c22toc12_buff_1"} : memref<1024xf32> 
    %of_c22toc12_prod_lock = aie.lock(%tile_1_4, 0) {init = 2 : i32, sym_name = "of_c22toc12_prod_lock"}
    %of_c22toc12_cons_lock = aie.lock(%tile_1_4, 1) {init = 0 : i32, sym_name = "of_c22toc12_cons_lock"}
    %of_c21toc22_buff_0 = aie.buffer(%tile_2_3) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_c21toc22_buff_0"} : memref<1024xf32> 
    %of_c21toc22_buff_1 = aie.buffer(%tile_2_3) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "of_c21toc22_buff_1"} : memref<1024xf32> 
    %of_c21toc22_prod_lock = aie.lock(%tile_2_3, 4) {init = 2 : i32, sym_name = "of_c21toc22_prod_lock"}
    %of_c21toc22_cons_lock = aie.lock(%tile_2_3, 5) {init = 0 : i32, sym_name = "of_c21toc22_cons_lock"}
    %of_c21toc11_buff_0 = aie.buffer(%tile_2_3) {address = 8192 : i32, mem_bank = 0 : i32, sym_name = "of_c21toc11_buff_0"} : memref<1024xf32> 
    %of_c21toc11_buff_1 = aie.buffer(%tile_2_3) {address = 12288 : i32, mem_bank = 0 : i32, sym_name = "of_c21toc11_buff_1"} : memref<1024xf32> 
    %of_c21toc11_prod_lock = aie.lock(%tile_2_3, 2) {init = 2 : i32, sym_name = "of_c21toc11_prod_lock"}
    %of_c21toc11_cons_lock = aie.lock(%tile_2_3, 3) {init = 0 : i32, sym_name = "of_c21toc11_cons_lock"}
    %of_c10toc11_cons_buff_0 = aie.buffer(%tile_2_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_c10toc11_cons_buff_0"} : memref<1024xf32> 
    %of_c10toc11_cons_buff_1 = aie.buffer(%tile_2_3) {address = 20480 : i32, mem_bank = 1 : i32, sym_name = "of_c10toc11_cons_buff_1"} : memref<1024xf32> 
    %of_c10toc11_cons_prod_lock = aie.lock(%tile_2_3, 0) {init = 2 : i32, sym_name = "of_c10toc11_cons_prod_lock"}
    %of_c10toc11_cons_cons_lock = aie.lock(%tile_2_3, 1) {init = 0 : i32, sym_name = "of_c10toc11_cons_cons_lock"}
    %of_c10toc11_buff_0 = aie.buffer(%tile_1_2) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_c10toc11_buff_0"} : memref<1024xf32> 
    %of_c10toc11_buff_1 = aie.buffer(%tile_1_2) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "of_c10toc11_buff_1"} : memref<1024xf32> 
    %of_c10toc11_prod_lock = aie.lock(%tile_1_2, 4) {init = 2 : i32, sym_name = "of_c10toc11_prod_lock"}
    %of_c10toc11_cons_lock = aie.lock(%tile_1_2, 5) {init = 0 : i32, sym_name = "of_c10toc11_cons_lock"}
    %of_c30toc21_buff_0 = aie.buffer(%tile_3_2) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_c30toc21_buff_0"} : memref<1024xf32> 
    %of_c30toc21_buff_1 = aie.buffer(%tile_3_2) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "of_c30toc21_buff_1"} : memref<1024xf32> 
    %of_c30toc21_prod_lock = aie.lock(%tile_3_2, 4) {init = 2 : i32, sym_name = "of_c30toc21_prod_lock"}
    %of_c30toc21_cons_lock = aie.lock(%tile_3_2, 5) {init = 0 : i32, sym_name = "of_c30toc21_cons_lock"}
    %of_c20toc21_cons_buff_0 = aie.buffer(%tile_3_3) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_c20toc21_cons_buff_0"} : memref<1024xf32> 
    %of_c20toc21_cons_buff_1 = aie.buffer(%tile_3_3) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "of_c20toc21_cons_buff_1"} : memref<1024xf32> 
    %of_c20toc21_cons_prod_lock = aie.lock(%tile_3_3, 0) {init = 2 : i32, sym_name = "of_c20toc21_cons_prod_lock"}
    %of_c20toc21_cons_cons_lock = aie.lock(%tile_3_3, 1) {init = 0 : i32, sym_name = "of_c20toc21_cons_cons_lock"}
    %of_c20toc21_buff_0 = aie.buffer(%tile_2_2) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_c20toc21_buff_0"} : memref<1024xf32> 
    %of_c20toc21_buff_1 = aie.buffer(%tile_2_2) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "of_c20toc21_buff_1"} : memref<1024xf32> 
    %of_c20toc21_prod_lock = aie.lock(%tile_2_2, 4) {init = 2 : i32, sym_name = "of_c20toc21_prod_lock"}
    %of_c20toc21_cons_lock = aie.lock(%tile_2_2, 5) {init = 0 : i32, sym_name = "of_c20toc21_cons_lock"}
    %in7_cons_buff_0 = aie.buffer(%tile_3_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in7_cons_buff_0"} : memref<1xf32> 
    %in7_cons_buff_1 = aie.buffer(%tile_3_2) {address = 16388 : i32, mem_bank = 1 : i32, sym_name = "in7_cons_buff_1"} : memref<1xf32> 
    %in7_cons_prod_lock = aie.lock(%tile_3_2, 2) {init = 2 : i32, sym_name = "in7_cons_prod_lock"}
    %in7_cons_cons_lock = aie.lock(%tile_3_2, 3) {init = 0 : i32, sym_name = "in7_cons_cons_lock"}
    %in7_prod_lock = aie.lock(%tile_3_0, 2) {init = 1 : i32, sym_name = "in7_prod_lock"}
    %in7_cons_lock = aie.lock(%tile_3_0, 3) {init = 0 : i32, sym_name = "in7_cons_lock"}
    %in6_cons_buff_0 = aie.buffer(%tile_3_2) {address = 8192 : i32, mem_bank = 0 : i32, sym_name = "in6_cons_buff_0"} : memref<1024xf32> 
    %in6_cons_buff_1 = aie.buffer(%tile_3_2) {address = 12288 : i32, mem_bank = 0 : i32, sym_name = "in6_cons_buff_1"} : memref<1024xf32> 
    %in6_cons_prod_lock = aie.lock(%tile_3_2, 0) {init = 2 : i32, sym_name = "in6_cons_prod_lock"}
    %in6_cons_cons_lock = aie.lock(%tile_3_2, 1) {init = 0 : i32, sym_name = "in6_cons_cons_lock"}
    %in6_prod_lock = aie.lock(%tile_3_0, 0) {init = 1 : i32, sym_name = "in6_prod_lock"}
    %in6_cons_lock = aie.lock(%tile_3_0, 1) {init = 0 : i32, sym_name = "in6_cons_lock"}
    %in5_cons_buff_0 = aie.buffer(%tile_2_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in5_cons_buff_0"} : memref<1xf32> 
    %in5_cons_buff_1 = aie.buffer(%tile_2_2) {address = 16388 : i32, mem_bank = 1 : i32, sym_name = "in5_cons_buff_1"} : memref<1xf32> 
    %in5_cons_prod_lock = aie.lock(%tile_2_2, 2) {init = 2 : i32, sym_name = "in5_cons_prod_lock"}
    %in5_cons_cons_lock = aie.lock(%tile_2_2, 3) {init = 0 : i32, sym_name = "in5_cons_cons_lock"}
    %in5_prod_lock = aie.lock(%tile_2_0, 2) {init = 1 : i32, sym_name = "in5_prod_lock"}
    %in5_cons_lock = aie.lock(%tile_2_0, 3) {init = 0 : i32, sym_name = "in5_cons_lock"}
    %in4_cons_buff_0 = aie.buffer(%tile_2_2) {address = 8192 : i32, mem_bank = 0 : i32, sym_name = "in4_cons_buff_0"} : memref<1024xf32> 
    %in4_cons_buff_1 = aie.buffer(%tile_2_2) {address = 12288 : i32, mem_bank = 0 : i32, sym_name = "in4_cons_buff_1"} : memref<1024xf32> 
    %in4_cons_prod_lock = aie.lock(%tile_2_2, 0) {init = 2 : i32, sym_name = "in4_cons_prod_lock"}
    %in4_cons_cons_lock = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "in4_cons_cons_lock"}
    %in4_prod_lock = aie.lock(%tile_2_0, 0) {init = 1 : i32, sym_name = "in4_prod_lock"}
    %in4_cons_lock = aie.lock(%tile_2_0, 1) {init = 0 : i32, sym_name = "in4_cons_lock"}
    %in3_cons_buff_0 = aie.buffer(%tile_1_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in3_cons_buff_0"} : memref<1xf32> 
    %in3_cons_buff_1 = aie.buffer(%tile_1_2) {address = 16388 : i32, mem_bank = 1 : i32, sym_name = "in3_cons_buff_1"} : memref<1xf32> 
    %in3_cons_prod_lock = aie.lock(%tile_1_2, 2) {init = 2 : i32, sym_name = "in3_cons_prod_lock"}
    %in3_cons_cons_lock = aie.lock(%tile_1_2, 3) {init = 0 : i32, sym_name = "in3_cons_cons_lock"}
    %in3_prod_lock = aie.lock(%tile_1_0, 2) {init = 1 : i32, sym_name = "in3_prod_lock"}
    %in3_cons_lock = aie.lock(%tile_1_0, 3) {init = 0 : i32, sym_name = "in3_cons_lock"}
    %in2_cons_buff_0 = aie.buffer(%tile_1_2) {address = 8192 : i32, mem_bank = 0 : i32, sym_name = "in2_cons_buff_0"} : memref<1024xf32> 
    %in2_cons_buff_1 = aie.buffer(%tile_1_2) {address = 12288 : i32, mem_bank = 0 : i32, sym_name = "in2_cons_buff_1"} : memref<1024xf32> 
    %in2_cons_prod_lock = aie.lock(%tile_1_2, 0) {init = 2 : i32, sym_name = "in2_cons_prod_lock"}
    %in2_cons_cons_lock = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "in2_cons_cons_lock"}
    %in2_prod_lock = aie.lock(%tile_1_0, 0) {init = 1 : i32, sym_name = "in2_prod_lock"}
    %in2_cons_lock = aie.lock(%tile_1_0, 1) {init = 0 : i32, sym_name = "in2_cons_lock"}
    %in1_cons_buff_0 = aie.buffer(%tile_0_2) {address = 9216 : i32, mem_bank = 0 : i32, sym_name = "in1_cons_buff_0"} : memref<1024xf32> 
    %in1_cons_buff_1 = aie.buffer(%tile_0_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in1_cons_buff_1"} : memref<1024xf32> 
    %in1_cons_prod_lock = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "in1_cons_prod_lock"}
    %in1_cons_cons_lock = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "in1_cons_cons_lock"}
    %in1_prod_lock = aie.lock(%tile_0_0, 2) {init = 1 : i32, sym_name = "in1_prod_lock"}
    %in1_cons_lock = aie.lock(%tile_0_0, 3) {init = 0 : i32, sym_name = "in1_cons_lock"}
    %in0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 13312 : i32, mem_bank = 0 : i32, sym_name = "in0_cons_buff_0"} : memref<1xf32> 
    %in0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 13316 : i32, mem_bank = 0 : i32, sym_name = "in0_cons_buff_1"} : memref<1xf32> 
    %in0_cons_prod_lock = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "in0_cons_prod_lock"}
    %in0_cons_cons_lock = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "in0_cons_cons_lock"}
    %in0_prod_lock = aie.lock(%tile_0_0, 0) {init = 1 : i32, sym_name = "in0_prod_lock"}
    %in0_cons_lock = aie.lock(%tile_0_0, 1) {init = 0 : i32, sym_name = "in0_cons_lock"}
    aie.flow(%tile_0_0, DMA : 0, %tile_0_2, DMA : 0)
    aie.flow(%tile_0_0, DMA : 1, %tile_0_2, DMA : 1)
    aie.flow(%tile_1_0, DMA : 0, %tile_1_2, DMA : 0)
    aie.flow(%tile_1_0, DMA : 1, %tile_1_2, DMA : 1)
    aie.flow(%tile_2_0, DMA : 0, %tile_2_2, DMA : 0)
    aie.flow(%tile_2_0, DMA : 1, %tile_2_2, DMA : 1)
    aie.flow(%tile_3_0, DMA : 0, %tile_3_2, DMA : 0)
    aie.flow(%tile_3_0, DMA : 1, %tile_3_2, DMA : 1)
    aie.flow(%tile_2_2, DMA : 0, %tile_3_3, DMA : 0)
    aie.flow(%tile_1_2, DMA : 0, %tile_2_3, DMA : 0)
    aie.flow(%tile_0_2, DMA : 0, %tile_3_0, DMA : 0)
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
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c10 = arith.constant 10 : index
      %c1_1 = arith.constant 1 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c10 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in1_cons_buff_0, %out_buff_0, %in0_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in1_cons_buff_1, %out_buff_1, %in0_cons_buff_0, %c1024_i32_3) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %c10_5 = arith.constant 10 : index
      %c1_6 = arith.constant 1 : index
      %c2_7 = arith.constant 2 : index
      cf.br ^bb6(%c0_4 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c10_5 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_8 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in1_cons_buff_0, %out_buff_0, %in0_cons_buff_1, %c1024_i32_8) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_9 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in1_cons_buff_1, %out_buff_1, %in0_cons_buff_1, %c1024_i32_9) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2_7 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_10 = arith.constant 0 : index
      %c10_11 = arith.constant 10 : index
      %c1_12 = arith.constant 1 : index
      %c2_13 = arith.constant 2 : index
      cf.br ^bb10(%c0_10 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c10_11 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_14 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in1_cons_buff_0, %out_buff_0, %in0_cons_buff_0, %c1024_i32_14) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_15 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in1_cons_buff_1, %out_buff_1, %in0_cons_buff_0, %c1024_i32_15) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      %11 = arith.addi %9, %c2_13 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    aie.shim_dma_allocation @in0(MM2S, 0, 0)
    aiex.runtime_sequence(%arg0: memref<1xf32>, %arg1: memref<9216xf32>, %arg2: memref<9216xf32>, %arg3: memref<1xf32>, %arg4: memref<9216xf32>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 1][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<1xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 9216][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<9216xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg4[0, 0, 0, 0][1, 1, 1, 9216][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<9216xf32>
      aiex.npu.dma_wait {symbol = @out}
    }
    aie.shim_dma_allocation @in1(MM2S, 1, 0)
    aie.shim_dma_allocation @in2(MM2S, 0, 1)
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_0 : memref<1xf32>, 0, 1) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_1 : memref<1xf32>, 0, 1) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%out_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%out_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @in3(MM2S, 1, 1)
    aie.shim_dma_allocation @in4(MM2S, 0, 2)
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%in3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<1xf32>, 0, 1) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_1 : memref<1xf32>, 0, 1) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%of_c10toc11_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_c10toc11_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_c10toc11_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_c10toc11_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_c10toc11_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_c10toc11_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @in5(MM2S, 1, 2)
    aie.shim_dma_allocation @in6(MM2S, 0, 3)
    %mem_2_2 = aie.mem(%tile_2_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in4_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in4_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%in5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in5_cons_buff_0 : memref<1xf32>, 0, 1) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in5_cons_buff_1 : memref<1xf32>, 0, 1) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%of_c20toc21_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_c20toc21_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_c20toc21_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_c20toc21_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_c20toc21_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_c20toc21_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @in7(MM2S, 1, 3)
    %mem_3_2 = aie.mem(%tile_3_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in6_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in6_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in6_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in6_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in6_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in6_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%in7_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in7_cons_buff_0 : memref<1xf32>, 0, 1) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in7_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in7_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in7_cons_buff_1 : memref<1xf32>, 0, 1) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in7_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_3_3 = aie.mem(%tile_3_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_c20toc21_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_c20toc21_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_c20toc21_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_c20toc21_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_c20toc21_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_c20toc21_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    aie.shim_dma_allocation @out(S2MM, 0, 3)
    %mem_2_3 = aie.mem(%tile_2_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_c10toc11_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_c10toc11_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_c10toc11_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_c10toc11_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_c10toc11_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_c10toc11_cons_cons_lock, Release, 1)
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
