module {
  aie.device(npu1_1col) {
    memref.global "public" @out_cons : memref<1xi32>
    memref.global "public" @out : memref<1xi32>
    memref.global "public" @infactor_cons : memref<1xi32>
    memref.global "public" @infactor : memref<1xi32>
    memref.global "public" @in_cons : memref<1024xi32>
    memref.global "public" @in : memref<1024xi32>
    func.func private @vector_scalar_mul_aie_scalar(memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32)
    func.func private @passthrough(memref<1024xi32>, memref<1xi32>, i32)
    func.func private @mean(memref<1024xi32>, memref<1xi32>, i32)
    %tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_0_2 = aie.tile(0, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %out_cons_prod_lock = aie.lock(%tile_0_0, 4) {init = 1 : i32, sym_name = "out_cons_prod_lock"}
    %out_cons_cons_lock = aie.lock(%tile_0_0, 5) {init = 0 : i32, sym_name = "out_cons_cons_lock"}
    %out_buff_0 = aie.buffer(%tile_0_2) {address = 9216 : i32, mem_bank = 0 : i32, sym_name = "out_buff_0"} : memref<1xi32> 
    %out_buff_1 = aie.buffer(%tile_0_2) {address = 9220 : i32, mem_bank = 0 : i32, sym_name = "out_buff_1"} : memref<1xi32> 
    %out_prod_lock = aie.lock(%tile_0_2, 4) {init = 2 : i32, sym_name = "out_prod_lock"}
    %out_cons_lock = aie.lock(%tile_0_2, 5) {init = 0 : i32, sym_name = "out_cons_lock"}
    %infactor_cons_buff_0 = aie.buffer(%tile_0_2) {address = 9224 : i32, mem_bank = 0 : i32, sym_name = "infactor_cons_buff_0"} : memref<1xi32> 
    %infactor_cons_buff_1 = aie.buffer(%tile_0_2) {address = 9228 : i32, mem_bank = 0 : i32, sym_name = "infactor_cons_buff_1"} : memref<1xi32> 
    %infactor_cons_prod_lock = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "infactor_cons_prod_lock"}
    %infactor_cons_cons_lock = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "infactor_cons_cons_lock"}
    %infactor_prod_lock = aie.lock(%tile_0_0, 2) {init = 1 : i32, sym_name = "infactor_prod_lock"}
    %infactor_cons_lock = aie.lock(%tile_0_0, 3) {init = 0 : i32, sym_name = "infactor_cons_lock"}
    %in_cons_buff_0 = aie.buffer(%tile_0_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "in_cons_buff_0"} : memref<1024xi32> 
    %in_cons_buff_1 = aie.buffer(%tile_0_2) {address = 5120 : i32, mem_bank = 0 : i32, sym_name = "in_cons_buff_1"} : memref<1024xi32> 
    %in_cons_prod_lock = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "in_cons_prod_lock"}
    %in_cons_cons_lock = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "in_cons_cons_lock"}
    %in_prod_lock = aie.lock(%tile_0_0, 0) {init = 1 : i32, sym_name = "in_prod_lock"}
    %in_cons_lock = aie.lock(%tile_0_0, 1) {init = 0 : i32, sym_name = "in_cons_lock"}
    %switchbox_0_0 = aie.switchbox(%tile_0_0) {
      aie.connect<South : 3, North : 1>
      aie.connect<South : 7, North : 0>
      aie.connect<North : 0, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(Ctrl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_0_0 = aie.shim_mux(%tile_0_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<DMA : 1, North : 7>
      aie.connect<North : 2, DMA : 0>
    }
    %tile_0_1 = aie.tile(0, 1)
    %switchbox_0_1 = aie.switchbox(%tile_0_1) {
      aie.connect<South : 1, North : 1>
      aie.connect<South : 0, North : 0>
      aie.connect<North : 0, South : 0>
    }
    %switchbox_0_2 = aie.switchbox(%tile_0_2) {
      aie.connect<South : 1, DMA : 0>
      aie.connect<South : 0, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %core_0_2 = aie.core(%tile_0_2) {
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
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @mean(%in_cons_buff_0, %out_buff_0, %c1024_i32) : (memref<1024xi32>, memref<1xi32>, i32) -> ()
      aie.use_lock(%in_cons_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_2 = arith.constant 1024 : i32
      func.call @mean(%in_cons_buff_1, %out_buff_1, %c1024_i32_2) : (memref<1024xi32>, memref<1xi32>, i32) -> ()
      aie.use_lock(%in_cons_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "mean.o"}
    aie.shim_dma_allocation @in(MM2S, 0, 0)
    aiex.runtime_sequence(%arg0: memref<4096xi32>, %arg1: memref<1xi32>, %arg2: memref<4xi32>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 1 : i64, metadata = @in} : memref<4096xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 1][0, 0, 0, 1]) {id = 2 : i64, metadata = @infactor} : memref<1xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 4][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<4xi32>
      aiex.npu.dma_wait {symbol = @out}
    }
    aie.shim_dma_allocation @infactor(MM2S, 1, 0)
    aie.shim_dma_allocation @out(S2MM, 0, 0)
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
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_0 : memref<1xi32>, 0, 1) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%out_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_1 : memref<1xi32>, 0, 1) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%out_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    aie.packet_flow(15) {
      aie.packet_source<%tile_0_0, Ctrl : 0>
      aie.packet_dest<%tile_0_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.wire(%shim_mux_0_0 : North, %switchbox_0_0 : South)
    aie.wire(%tile_0_0 : DMA, %shim_mux_0_0 : DMA)
    aie.wire(%tile_0_1 : Core, %switchbox_0_1 : Core)
    aie.wire(%tile_0_1 : DMA, %switchbox_0_1 : DMA)
    aie.wire(%switchbox_0_0 : North, %switchbox_0_1 : South)
    aie.wire(%tile_0_2 : Core, %switchbox_0_2 : Core)
    aie.wire(%tile_0_2 : DMA, %switchbox_0_2 : DMA)
    aie.wire(%switchbox_0_1 : North, %switchbox_0_2 : South)
  }
}
