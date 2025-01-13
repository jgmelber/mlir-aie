module {
  aie.device(npu1_4col) {
    memref.global "public" @out_cons : memref<1xf32>
    memref.global "public" @out : memref<1xf32>
    memref.global "public" @ofc02toc01 : memref<1xf32>
    memref.global "public" @ofc11toc02_cons : memref<1024xf32>
    memref.global "public" @ofc11toc02 : memref<1024xf32>
    memref.global "public" @of_c12toc11 : memref<1024xf32>
    memref.global "public" @of_c22toc12 : memref<1024xf32>
    memref.global "public" @of_c21toc22 : memref<1024xf32>
    memref.global "public" @of_c21toc11 : memref<1024xf32>
    memref.global "public" @of_c10toc11_cons : memref<1024xf32>
    memref.global "public" @of_c10toc11 : memref<1024xf32>
    memref.global "public" @of_c30toc21 : memref<1024xf32>
    memref.global "public" @of_c20toc21_cons : memref<1024xf32>
    memref.global "public" @of_c20toc21 : memref<1024xf32>
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
    func.func private @vector_mult_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32)
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
    %out_cons_prod_lock = aie.lock(%tile_1_0, 4) {init = 1 : i32, sym_name = "out_cons_prod_lock"}
    %out_cons_cons_lock = aie.lock(%tile_1_0, 5) {init = 0 : i32, sym_name = "out_cons_cons_lock"}
    %out_buff_0 = aie.buffer(%tile_0_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out_buff_0"} : memref<1xf32> 
    %out_buff_1 = aie.buffer(%tile_0_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out_buff_1"} : memref<1xf32> 
    %out_prod_lock = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "out_prod_lock"}
    %out_cons_lock = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "out_cons_lock"}
    %ofc02toc01_buff_0 = aie.buffer(%tile_0_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "ofc02toc01_buff_0"} : memref<1xf32> 
    %ofc02toc01_buff_1 = aie.buffer(%tile_0_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "ofc02toc01_buff_1"} : memref<1xf32> 
    %ofc02toc01_prod_lock = aie.lock(%tile_0_4, 2) {init = 2 : i32, sym_name = "ofc02toc01_prod_lock"}
    %ofc02toc01_cons_lock = aie.lock(%tile_0_4, 3) {init = 0 : i32, sym_name = "ofc02toc01_cons_lock"}
    %ofc11toc02_cons_buff_0 = aie.buffer(%tile_0_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "ofc11toc02_cons_buff_0"} : memref<1024xf32> 
    %ofc11toc02_cons_buff_1 = aie.buffer(%tile_0_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "ofc11toc02_cons_buff_1"} : memref<1024xf32> 
    %ofc11toc02_cons_prod_lock = aie.lock(%tile_0_4, 0) {init = 2 : i32, sym_name = "ofc11toc02_cons_prod_lock"}
    %ofc11toc02_cons_cons_lock = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "ofc11toc02_cons_cons_lock"}
    %ofc11toc02_buff_0 = aie.buffer(%tile_1_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "ofc11toc02_buff_0"} : memref<1024xf32> 
    %ofc11toc02_buff_1 = aie.buffer(%tile_1_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "ofc11toc02_buff_1"} : memref<1024xf32> 
    %ofc11toc02_prod_lock = aie.lock(%tile_1_3, 2) {init = 2 : i32, sym_name = "ofc11toc02_prod_lock"}
    %ofc11toc02_cons_lock = aie.lock(%tile_1_3, 3) {init = 0 : i32, sym_name = "ofc11toc02_cons_lock"}
    %of_c12toc11_buff_0 = aie.buffer(%tile_1_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_c12toc11_buff_0"} : memref<1024xf32> 
    %of_c12toc11_buff_1 = aie.buffer(%tile_1_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_c12toc11_buff_1"} : memref<1024xf32> 
    %of_c12toc11_prod_lock = aie.lock(%tile_1_4, 2) {init = 2 : i32, sym_name = "of_c12toc11_prod_lock"}
    %of_c12toc11_cons_lock = aie.lock(%tile_1_4, 3) {init = 0 : i32, sym_name = "of_c12toc11_cons_lock"}
    %of_c22toc12_buff_0 = aie.buffer(%tile_1_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_c22toc12_buff_0"} : memref<1024xf32> 
    %of_c22toc12_buff_1 = aie.buffer(%tile_1_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_c22toc12_buff_1"} : memref<1024xf32> 
    %of_c22toc12_prod_lock = aie.lock(%tile_1_4, 0) {init = 2 : i32, sym_name = "of_c22toc12_prod_lock"}
    %of_c22toc12_cons_lock = aie.lock(%tile_1_4, 1) {init = 0 : i32, sym_name = "of_c22toc12_cons_lock"}
    %of_c21toc22_buff_0 = aie.buffer(%tile_2_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_c21toc22_buff_0"} : memref<1024xf32> 
    %of_c21toc22_buff_1 = aie.buffer(%tile_2_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_c21toc22_buff_1"} : memref<1024xf32> 
    %of_c21toc22_prod_lock = aie.lock(%tile_2_3, 4) {init = 2 : i32, sym_name = "of_c21toc22_prod_lock"}
    %of_c21toc22_cons_lock = aie.lock(%tile_2_3, 5) {init = 0 : i32, sym_name = "of_c21toc22_cons_lock"}
    %of_c21toc11_buff_0 = aie.buffer(%tile_2_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_c21toc11_buff_0"} : memref<1024xf32> 
    %of_c21toc11_buff_1 = aie.buffer(%tile_2_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_c21toc11_buff_1"} : memref<1024xf32> 
    %of_c21toc11_prod_lock = aie.lock(%tile_2_3, 2) {init = 2 : i32, sym_name = "of_c21toc11_prod_lock"}
    %of_c21toc11_cons_lock = aie.lock(%tile_2_3, 3) {init = 0 : i32, sym_name = "of_c21toc11_cons_lock"}
    %of_c10toc11_cons_buff_0 = aie.buffer(%tile_2_3) {address = 5120 : i32, mem_bank = 0 : i32, sym_name = "of_c10toc11_cons_buff_0"} : memref<1024xf32> 
    %of_c10toc11_cons_buff_1 = aie.buffer(%tile_2_3) {address = 20480 : i32, mem_bank = 1 : i32, sym_name = "of_c10toc11_cons_buff_1"} : memref<1024xf32> 
    %of_c10toc11_cons_prod_lock = aie.lock(%tile_2_3, 0) {init = 2 : i32, sym_name = "of_c10toc11_cons_prod_lock"}
    %of_c10toc11_cons_cons_lock = aie.lock(%tile_2_3, 1) {init = 0 : i32, sym_name = "of_c10toc11_cons_cons_lock"}
    %of_c10toc11_buff_0 = aie.buffer(%tile_1_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_c10toc11_buff_0"} : memref<1024xf32> 
    %of_c10toc11_buff_1 = aie.buffer(%tile_1_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_c10toc11_buff_1"} : memref<1024xf32> 
    %of_c10toc11_prod_lock = aie.lock(%tile_1_2, 4) {init = 2 : i32, sym_name = "of_c10toc11_prod_lock"}
    %of_c10toc11_cons_lock = aie.lock(%tile_1_2, 5) {init = 0 : i32, sym_name = "of_c10toc11_cons_lock"}
    %of_c30toc21_buff_0 = aie.buffer(%tile_3_2) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_c30toc21_buff_0"} : memref<1024xf32> 
    %of_c30toc21_buff_1 = aie.buffer(%tile_3_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_c30toc21_buff_1"} : memref<1024xf32> 
    %of_c30toc21_prod_lock = aie.lock(%tile_3_2, 0) {init = 2 : i32, sym_name = "of_c30toc21_prod_lock"}
    %of_c30toc21_cons_lock = aie.lock(%tile_3_2, 1) {init = 0 : i32, sym_name = "of_c30toc21_cons_lock"}
    %of_c20toc21_cons_buff_0 = aie.buffer(%tile_3_3) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_c20toc21_cons_buff_0"} : memref<1024xf32> 
    %of_c20toc21_cons_buff_1 = aie.buffer(%tile_3_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_c20toc21_cons_buff_1"} : memref<1024xf32> 
    %of_c20toc21_cons_prod_lock = aie.lock(%tile_3_3, 0) {init = 2 : i32, sym_name = "of_c20toc21_cons_prod_lock"}
    %of_c20toc21_cons_cons_lock = aie.lock(%tile_3_3, 1) {init = 0 : i32, sym_name = "of_c20toc21_cons_cons_lock"}
    %of_c20toc21_buff_0 = aie.buffer(%tile_2_2) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_c20toc21_buff_0"} : memref<1024xf32> 
    %of_c20toc21_buff_1 = aie.buffer(%tile_2_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_c20toc21_buff_1"} : memref<1024xf32> 
    %of_c20toc21_prod_lock = aie.lock(%tile_2_2, 0) {init = 2 : i32, sym_name = "of_c20toc21_prod_lock"}
    %of_c20toc21_cons_lock = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "of_c20toc21_cons_lock"}
    %in3_cons_buff_0 = aie.buffer(%tile_1_2) {address = 5120 : i32, mem_bank = 0 : i32, sym_name = "in3_cons_buff_0"} : memref<1xf32> 
    %in3_cons_buff_1 = aie.buffer(%tile_1_2) {address = 20480 : i32, mem_bank = 1 : i32, sym_name = "in3_cons_buff_1"} : memref<1xf32> 
    %in3_cons_prod_lock = aie.lock(%tile_1_2, 2) {init = 2 : i32, sym_name = "in3_cons_prod_lock"}
    %in3_cons_cons_lock = aie.lock(%tile_1_2, 3) {init = 0 : i32, sym_name = "in3_cons_cons_lock"}
    %in3_prod_lock = aie.lock(%tile_1_0, 2) {init = 1 : i32, sym_name = "in3_prod_lock"}
    %in3_cons_lock = aie.lock(%tile_1_0, 3) {init = 0 : i32, sym_name = "in3_cons_lock"}
    %in2_cons_buff_0 = aie.buffer(%tile_1_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in2_cons_buff_0"} : memref<1024xf32> 
    %in2_cons_buff_1 = aie.buffer(%tile_1_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in2_cons_buff_1"} : memref<1024xf32> 
    %in2_cons_prod_lock = aie.lock(%tile_1_2, 0) {init = 2 : i32, sym_name = "in2_cons_prod_lock"}
    %in2_cons_cons_lock = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "in2_cons_cons_lock"}
    %in2_prod_lock = aie.lock(%tile_1_0, 0) {init = 1 : i32, sym_name = "in2_prod_lock"}
    %in2_cons_lock = aie.lock(%tile_1_0, 1) {init = 0 : i32, sym_name = "in2_cons_lock"}
    %in1_cons_buff_0 = aie.buffer(%tile_1_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in1_cons_buff_0"} : memref<1024xf32> 
    %in1_cons_buff_1 = aie.buffer(%tile_1_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in1_cons_buff_1"} : memref<1024xf32> 
    %in1_cons_prod_lock = aie.lock(%tile_1_3, 0) {init = 2 : i32, sym_name = "in1_cons_prod_lock"}
    %in1_cons_cons_lock = aie.lock(%tile_1_3, 1) {init = 0 : i32, sym_name = "in1_cons_cons_lock"}
    %in1_prod_lock = aie.lock(%tile_0_0, 2) {init = 1 : i32, sym_name = "in1_prod_lock"}
    %in1_cons_lock = aie.lock(%tile_0_0, 3) {init = 0 : i32, sym_name = "in1_cons_lock"}
    %in0_cons_buff_0 = aie.buffer(%tile_2_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "in0_cons_buff_0"} : memref<1xf32> 
    %in0_cons_buff_1 = aie.buffer(%tile_2_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in0_cons_buff_1"} : memref<1xf32> 
    %in0_cons_prod_lock = aie.lock(%tile_2_4, 0) {init = 2 : i32, sym_name = "in0_cons_prod_lock"}
    %in0_cons_cons_lock = aie.lock(%tile_2_4, 1) {init = 0 : i32, sym_name = "in0_cons_cons_lock"}
    %in0_prod_lock = aie.lock(%tile_0_0, 0) {init = 1 : i32, sym_name = "in0_prod_lock"}
    %in0_cons_lock = aie.lock(%tile_0_0, 1) {init = 0 : i32, sym_name = "in0_cons_lock"}
    aie.flow(%tile_0_0, DMA : 0, %tile_2_4, DMA : 0)
    aie.flow(%tile_0_0, DMA : 1, %tile_1_3, DMA : 0)
    aie.flow(%tile_1_0, DMA : 0, %tile_1_2, DMA : 0)
    aie.flow(%tile_1_0, DMA : 1, %tile_1_2, DMA : 1)
    aie.flow(%tile_2_2, DMA : 0, %tile_3_3, DMA : 0)
    aie.flow(%tile_1_2, DMA : 0, %tile_2_3, DMA : 0)
    aie.flow(%tile_1_3, DMA : 0, %tile_0_4, DMA : 0)
    aie.flow(%tile_0_3, DMA : 0, %tile_1_0, DMA : 0)
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c2_1 = arith.constant 2 : index
      %c1_2 = arith.constant 1 : index
      %c2_3 = arith.constant 2 : index
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %c10 = arith.constant 10 : index
      %c1_5 = arith.constant 1 : index
      %c2_6 = arith.constant 2 : index
      cf.br ^bb3(%c0_4 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c10 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_7 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_0, %c1024_i32_7) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2_6 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_8 = arith.constant 0 : index
      %c10_9 = arith.constant 10 : index
      %c1_10 = arith.constant 1 : index
      %c2_11 = arith.constant 2 : index
      cf.br ^bb6(%c0_8 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c10_9 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_1, %c1024_i32_12) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_13 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_1, %c1024_i32_13) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2_11 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      %c0_14 = arith.constant 0 : index
      %c2_15 = arith.constant 2 : index
      %c1_16 = arith.constant 1 : index
      %c2_17 = arith.constant 2 : index
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_18 = arith.constant 0 : index
      %c10_19 = arith.constant 10 : index
      %c1_20 = arith.constant 1 : index
      %c2_21 = arith.constant 2 : index
      cf.br ^bb9(%c0_18 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c10_19 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_22 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_0, %c1024_i32_22) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_23 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_0, %c1024_i32_23) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      %10 = arith.addi %8, %c2_21 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_24 = arith.constant 0 : index
      %c10_25 = arith.constant 10 : index
      %c1_26 = arith.constant 1 : index
      %c2_27 = arith.constant 2 : index
      cf.br ^bb12(%c0_24 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c10_25 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_28 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_1, %c1024_i32_28) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_29 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_1, %c1024_i32_29) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      %13 = arith.addi %11, %c2_27 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      %14 = arith.addi %0, %c2 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      %c0_30 = arith.constant 0 : index
      %c2_31 = arith.constant 2 : index
      %c1_32 = arith.constant 1 : index
      %c2_33 = arith.constant 2 : index
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_34 = arith.constant 0 : index
      %c10_35 = arith.constant 10 : index
      %c1_36 = arith.constant 1 : index
      %c2_37 = arith.constant 2 : index
      cf.br ^bb16(%c0_34 : index)
    ^bb16(%15: index):  // 2 preds: ^bb15, ^bb17
      %16 = arith.cmpi slt, %15, %c10_35 : index
      cf.cond_br %16, ^bb17, ^bb18
    ^bb17:  // pred: ^bb16
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_38 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_0, %c1024_i32_38) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_39 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_0, %c1024_i32_39) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      %17 = arith.addi %15, %c2_37 : index
      cf.br ^bb16(%17 : index)
    ^bb18:  // pred: ^bb16
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_40 = arith.constant 0 : index
      %c10_41 = arith.constant 10 : index
      %c1_42 = arith.constant 1 : index
      %c2_43 = arith.constant 2 : index
      cf.br ^bb19(%c0_40 : index)
    ^bb19(%18: index):  // 2 preds: ^bb18, ^bb20
      %19 = arith.cmpi slt, %18, %c10_41 : index
      cf.cond_br %19, ^bb20, ^bb21
    ^bb20:  // pred: ^bb19
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_44 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_1, %c1024_i32_44) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_45 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_1, %c1024_i32_45) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      %20 = arith.addi %18, %c2_43 : index
      cf.br ^bb19(%20 : index)
    ^bb21:  // pred: ^bb19
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c10 = arith.constant 10 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c10 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @passthrough(%of_c10toc11_cons_buff_0, %of_c21toc22_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_2 = arith.constant 1024 : i32
      func.call @passthrough(%of_c10toc11_cons_buff_1, %of_c21toc22_buff_1, %c1024_i32_2) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "passthrough.o"}
    %core_2_4 = aie.core(%tile_2_4) {
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
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_0, %of_c22toc12_buff_0, %in0_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_1, %of_c22toc12_buff_1, %in0_cons_buff_0, %c1024_i32_3) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
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
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_8 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_0, %of_c22toc12_buff_0, %in0_cons_buff_1, %c1024_i32_8) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_9 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_1, %of_c22toc12_buff_1, %in0_cons_buff_1, %c1024_i32_9) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
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
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_14 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_0, %of_c22toc12_buff_0, %in0_cons_buff_0, %c1024_i32_14) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_15 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_1, %of_c22toc12_buff_1, %in0_cons_buff_0, %c1024_i32_15) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      %11 = arith.addi %9, %c2_13 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_1_4 = aie.core(%tile_1_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c10 = arith.constant 10 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c10 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @passthrough(%of_c22toc12_buff_0, %of_c12toc11_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_2 = arith.constant 1024 : i32
      func.call @passthrough(%of_c22toc12_buff_1, %of_c12toc11_buff_1, %c1024_i32_2) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "passthrough.o"}
    %core_1_3 = aie.core(%tile_1_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c10 = arith.constant 10 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c10 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%in1_cons_buff_0, %of_c12toc11_buff_0, %ofc11toc02_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_2 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%in1_cons_buff_1, %of_c12toc11_buff_1, %ofc11toc02_buff_1, %c1024_i32_2) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "vector_mult.o"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c10 = arith.constant 10 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c10 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_2 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32_2) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "mean.o"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb11
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb12
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c10 = arith.constant 10 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c10 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 1)
      %c0_2 = arith.constant 0 : index
      %c1_3 = arith.constant 1 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c1_3 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %ofc02toc01_buff_0[%4] : memref<1xf32>
      memref.store %6, %out_buff_0[%4] : memref<1xf32>
      %7 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%ofc02toc01_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c1_6 = arith.constant 1 : index
      %c1_7 = arith.constant 1 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%8: index):  // 2 preds: ^bb7, ^bb9
      %9 = arith.cmpi slt, %8, %c1_6 : index
      cf.cond_br %9, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      %10 = memref.load %ofc02toc01_buff_1[%8] : memref<1xf32>
      memref.store %10, %out_buff_1[%8] : memref<1xf32>
      %11 = arith.addi %8, %c1_7 : index
      cf.br ^bb8(%11 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%ofc02toc01_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      %12 = arith.addi %2, %c2 : index
      cf.br ^bb3(%12 : index)
    ^bb11:  // pred: ^bb3
      %13 = arith.addi %0, %c1 : index
      cf.br ^bb1(%13 : index)
    ^bb12:  // pred: ^bb1
      aie.end
    } {link_with = "passthrough.o"}
    aiex.runtime_sequence(%arg0: memref<1xf32>, %arg1: memref<9216xf32>, %arg2: memref<9216xf32>, %arg3: memref<1xf32>, %arg4: memref<9xf32>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 1][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<1xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 9216][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<9216xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 9216][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<9216xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg3[0, 0, 0, 0][1, 1, 1, 2][0, 0, 0, 1]) {id = 4 : i64, metadata = @in3} : memref<1xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg4[0, 0, 0, 0][1, 1, 1, 9][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<9xf32>
      aiex.npu.dma_wait {symbol = @out}
    }
    aie.shim_dma_allocation @in0(MM2S, 0, 0)
    %mem_2_4 = aie.mem(%tile_2_4) {
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
      aie.end
    }
    aie.shim_dma_allocation @in1(MM2S, 1, 0)
    %mem_1_3 = aie.mem(%tile_1_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%ofc11toc02_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%ofc11toc02_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%ofc11toc02_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%ofc11toc02_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%ofc11toc02_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%ofc11toc02_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    aie.shim_dma_allocation @in2(MM2S, 0, 1)
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
    aie.shim_dma_allocation @in3(MM2S, 1, 1)
    %mem_2_2 = aie.mem(%tile_2_2) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_c20toc21_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_c20toc21_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_c20toc21_prod_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_c20toc21_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_c20toc21_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_c20toc21_prod_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
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
    %mem_0_4 = aie.mem(%tile_0_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%ofc11toc02_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%ofc11toc02_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%ofc11toc02_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%ofc11toc02_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%ofc11toc02_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%ofc11toc02_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_0 : memref<1xf32>, 0, 1) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%out_prod_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_1 : memref<1xf32>, 0, 1) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%out_prod_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    aie.shim_dma_allocation @out(S2MM, 0, 1)
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
