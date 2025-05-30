//===- aie.mlir ------------------------------------------------*- MLIR -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. or its affiliates
// Copyright (C) 2020-2022, Xilinx Inc.
//
//===----------------------------------------------------------------------===//

module {
  aie.device(NPUDEVICE) {
    memref.global "public" @objFifo_in0 : memref<16xi8>
    memref.global "public" @objFifo_out0 : memref<16xi8>

    %tile_0_0 = aie.tile(0, 0)
    %tile_0_1 = aie.tile(0, 1)
    %tile_0_2 = aie.tile(0, 2)

    %objFifo_in1_cons_buff_0 = aie.buffer(%tile_0_2) {sym_name = "objFifo_in1_cons_buff_0"} : memref<8xi8>
    %objFifo_in1_cons_buff_1 = aie.buffer(%tile_0_2) {sym_name = "objFifo_in1_cons_buff_1"} : memref<8xi8>
    %objFifo_out1_buff_0 = aie.buffer(%tile_0_2) {sym_name = "objFifo_out1_buff_0"} : memref<8xi8>
    %objFifo_out1_buff_1 = aie.buffer(%tile_0_2) {sym_name = "objFifo_out1_buff_1"} : memref<8xi8>

    %objFifo_in1_cons_prod_lock = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "objFifo_in1_cons_prod_lock"}
    %objFifo_in1_cons_cons_lock = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "objFifo_in1_cons_cons_lock"}
    %objFifo_out1_prod_lock = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "objFifo_out1_prod_lock"}
    %objFifo_out1_cons_lock = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "objFifo_out1_cons_lock"}

    aie.flow(%tile_0_0, DMA : 0, %tile_0_1, DMA : 0)
    aie.flow(%tile_0_1, DMA : 0, %tile_0_2, DMA : 0)
    aie.flow(%tile_0_1, DMA : 1, %tile_0_0, DMA : 0)
    aie.flow(%tile_0_2, DMA : 0, %tile_0_1, DMA : 1)

    %core_0_2 = aie.core(%tile_0_2) {
      %c8 = arith.constant 8 : index
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c21_i8 = arith.constant 21 : i8
      %c2 = arith.constant 2 : index
      scf.for %arg0 = %c0 to %c8 step %c2 {
        aie.use_lock(%objFifo_in1_cons_cons_lock, AcquireGreaterEqual, 1)
        aie.use_lock(%objFifo_out1_prod_lock, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c8 step %c1 {
          %0 = memref.load %objFifo_in1_cons_buff_0[%arg1] : memref<8xi8>
          %1 = arith.addi %0, %c21_i8 : i8
          memref.store %1, %objFifo_out1_buff_0[%arg1] : memref<8xi8>
        }
        aie.use_lock(%objFifo_in1_cons_prod_lock, Release, 1)
        aie.use_lock(%objFifo_out1_cons_lock, Release, 1)
        aie.use_lock(%objFifo_in1_cons_cons_lock, AcquireGreaterEqual, 1)
        aie.use_lock(%objFifo_out1_prod_lock, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c8 step %c1 {
          %0 = memref.load %objFifo_in1_cons_buff_1[%arg1] : memref<8xi8>
          %1 = arith.addi %0, %c21_i8 : i8
          memref.store %1, %objFifo_out1_buff_1[%arg1] : memref<8xi8>
        }
        aie.use_lock(%objFifo_in1_cons_prod_lock, Release, 1)
        aie.use_lock(%objFifo_out1_cons_lock, Release, 1)
      }
      aie.end
    }

    aie.shim_dma_allocation @objFifo_in0(MM2S, 0, 0)

    aiex.runtime_sequence(%arg0: memref<64xi8>, %arg1: memref<32xi8>, %arg2: memref<64xi8>) {
      %c0_i64 = arith.constant 0 : i64
      %c1_i64 = arith.constant 1 : i64
      %c32_i64 = arith.constant 32 : i64
      %c64_i64 = arith.constant 64 : i64
      aiex.npu.dma_memcpy_nd (%arg0[%c0_i64, %c0_i64, %c0_i64, %c0_i64][%c1_i64, %c1_i64, %c1_i64, %c32_i64][%c0_i64, %c0_i64, %c0_i64, %c1_i64]) {id = 0 : i64, metadata = @objFifo_in0} : memref<64xi8>
      aiex.npu.dma_memcpy_nd (%arg2[%c0_i64, %c0_i64, %c0_i64, %c0_i64][%c1_i64, %c1_i64, %c1_i64, %c64_i64][%c0_i64, %c0_i64, %c0_i64, %c1_i64]) {id = 1 : i64, metadata = @objFifo_out0, issue_token = true} : memref<64xi8>
      aiex.npu.dma_wait { symbol = @objFifo_out0 }
    }

    %memtile_dma_0_1 = aie.memtile_dma(%tile_0_1) {
      %objFifo_in0_cons_buff_0 = aie.buffer(%tile_0_1) {sym_name = "objFifo_in0_cons_buff_0"} : memref<16xi8>
      %objFifo_in0_cons_buff_1 = aie.buffer(%tile_0_1) {sym_name = "objFifo_in0_cons_buff_1"} : memref<16xi8>
      %objFifo_out0_buff_0 = aie.buffer(%tile_0_1) {sym_name = "objFifo_out0_buff_0"} : memref<16xi8>
      %objFifo_out0_buff_1 = aie.buffer(%tile_0_1) {sym_name = "objFifo_out0_buff_1"} : memref<16xi8>
      %objFifo_in0_cons_prod_lock = aie.lock(%tile_0_1, 0) {init = 2 : i32, sym_name = "objFifo_in0_cons_prod_lock"}
      %objFifo_in0_cons_cons_lock = aie.lock(%tile_0_1, 1) {init = 0 : i32, sym_name = "objFifo_in0_cons_cons_lock"}
      %objFifo_out0_prod_lock = aie.lock(%tile_0_1, 2) {init = 2 : i32, sym_name = "objFifo_out0_prod_lock"}
      %objFifo_out0_cons_lock = aie.lock(%tile_0_1, 3) {init = 0 : i32, sym_name = "objFifo_out0_cons_lock"}
      %0 = aie.dma(S2MM, 0) [{
        aie.use_lock(%objFifo_in0_cons_prod_lock, AcquireGreaterEqual, 1)
        aie.dma_bd(%objFifo_in0_cons_buff_0 : memref<16xi8>, 0, 8)
        aie.use_lock(%objFifo_in0_cons_cons_lock, Release, 1)
      }, {
        aie.use_lock(%objFifo_in0_cons_prod_lock, AcquireGreaterEqual, 1)
        aie.dma_bd(%objFifo_in0_cons_buff_1 : memref<16xi8>, 0, 8)
        aie.use_lock(%objFifo_in0_cons_cons_lock, Release, 1)
      }]
      %1 = aie.dma(MM2S, 0) [{
        aie.use_lock(%objFifo_in0_cons_cons_lock, AcquireGreaterEqual, 1)
        aie.dma_bd(%objFifo_in0_cons_buff_0 : memref<16xi8>, 0, 16, [<size = 8, stride = 1>], [<const_pad_before = 4, const_pad_after = 4>])
        aie.use_lock(%objFifo_in0_cons_prod_lock, Release, 1)
      }, {
        aie.use_lock(%objFifo_in0_cons_cons_lock, AcquireGreaterEqual, 1)
        aie.dma_bd(%objFifo_in0_cons_buff_1 : memref<16xi8>, 0, 16, [<size = 8, stride = 1>], [<const_pad_before = 4, const_pad_after = 4>])
        aie.use_lock(%objFifo_in0_cons_prod_lock, Release, 1)
      }]
      %2 = aie.dma(MM2S, 1) [{
        aie.use_lock(%objFifo_out0_cons_lock, AcquireGreaterEqual, 1)
        aie.dma_bd(%objFifo_out0_buff_0 : memref<16xi8>)
        aie.use_lock(%objFifo_out0_prod_lock, Release, 1)
      }, {
        aie.use_lock(%objFifo_out0_cons_lock, AcquireGreaterEqual, 1)
        aie.dma_bd(%objFifo_out0_buff_1 : memref<16xi8>)
        aie.use_lock(%objFifo_out0_prod_lock, Release, 1)
      }]
      %3 = aie.dma(S2MM, 1) [{
        aie.use_lock(%objFifo_out0_prod_lock, AcquireGreaterEqual, 1)
        aie.dma_bd(%objFifo_out0_buff_0 : memref<16xi8>)
        aie.use_lock(%objFifo_out0_cons_lock, Release, 1)
      }, {
        aie.use_lock(%objFifo_out0_prod_lock, AcquireGreaterEqual, 1)
        aie.dma_bd(%objFifo_out0_buff_1 : memref<16xi8>)
        aie.use_lock(%objFifo_out0_cons_lock, Release, 1)
      }]
      aie.end
    }

    aie.shim_dma_allocation @objFifo_out0(S2MM, 0, 0)

    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma(S2MM, 0) [{
        aie.use_lock(%objFifo_in1_cons_prod_lock, AcquireGreaterEqual, 1)
        aie.dma_bd(%objFifo_in1_cons_buff_0 : memref<8xi8>)
        aie.use_lock(%objFifo_in1_cons_cons_lock, Release, 1)
      }, {
        aie.use_lock(%objFifo_in1_cons_prod_lock, AcquireGreaterEqual, 1)
        aie.dma_bd(%objFifo_in1_cons_buff_1 : memref<8xi8>)
        aie.use_lock(%objFifo_in1_cons_cons_lock, Release, 1)
      }]
      %1 = aie.dma(MM2S, 0) [{
        aie.use_lock(%objFifo_out1_cons_lock, AcquireGreaterEqual, 1)
        aie.dma_bd(%objFifo_out1_buff_0 : memref<8xi8>)
        aie.use_lock(%objFifo_out1_prod_lock, Release, 1)
      }, {
        aie.use_lock(%objFifo_out1_cons_lock, AcquireGreaterEqual, 1)
        aie.dma_bd(%objFifo_out1_buff_1 : memref<8xi8>)
        aie.use_lock(%objFifo_out1_prod_lock, Release, 1)
      }]
      aie.end
    }
  }
}
