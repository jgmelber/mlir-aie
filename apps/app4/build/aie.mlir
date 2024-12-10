module {
  aie.device(npu1_4col) {
    func.func private @vector_scalar_mul_aie_scalar(memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32)
    func.func private @passthrough(memref<1024xi32>, memref<1024xi32>, i32)
    func.func private @vector_add_aie_scalar(memref<1024xi32>, memref<1024xi32>, memref<1024xi32>, i32)
    func.func private @mean(memref<1024xi32>, memref<1xi32>, i32)
    %tile_0_0 = aie.tile(0, 0)
    %tile_0_1 = aie.tile(0, 1)
    %tile_0_2 = aie.tile(0, 2)
    %tile_0_3 = aie.tile(0, 3)
    %tile_0_4 = aie.tile(0, 4)
    %tile_0_5 = aie.tile(0, 5)
    %tile_1_0 = aie.tile(1, 0)
    %tile_1_1 = aie.tile(1, 1)
    %tile_1_2 = aie.tile(1, 2)
    %tile_1_3 = aie.tile(1, 3)
    %tile_1_4 = aie.tile(1, 4)
    %tile_1_5 = aie.tile(1, 5)
    %tile_2_0 = aie.tile(2, 0)
    %tile_2_1 = aie.tile(2, 1)
    %tile_2_2 = aie.tile(2, 2)
    %tile_2_3 = aie.tile(2, 3)
    %tile_2_4 = aie.tile(2, 4)
    %tile_2_5 = aie.tile(2, 5)
    %tile_3_0 = aie.tile(3, 0)
    %tile_3_1 = aie.tile(3, 1)
    %tile_3_2 = aie.tile(3, 2)
    %tile_3_3 = aie.tile(3, 3)
    %tile_3_4 = aie.tile(3, 4)
    %tile_3_5 = aie.tile(3, 5)
    aie.objectfifo @in0(%tile_0_0, {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<1xi32>>
    aie.objectfifo @in1(%tile_0_0, {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<1024xi32>>
    aie.objectfifo @in2(%tile_1_0, {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<1024xi32>>
    aie.objectfifo @in3(%tile_1_0, {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<1xi32>>
    aie.objectfifo @in4(%tile_2_0, {%tile_2_2}, 2 : i32) : !aie.objectfifo<memref<1024xi32>>
    aie.objectfifo @in5(%tile_2_0, {%tile_2_2}, 2 : i32) : !aie.objectfifo<memref<1xi32>>
    aie.objectfifo @in6(%tile_3_0, {%tile_3_2}, 2 : i32) : !aie.objectfifo<memref<1024xi32>>
    aie.objectfifo @in7(%tile_3_0, {%tile_3_2}, 2 : i32) : !aie.objectfifo<memref<1xi32>>
    aie.objectfifo @in0to1(%tile_0_2, {%tile_0_3}, 2 : i32) : !aie.objectfifo<memref<1024xi32>>
    aie.objectfifo @in1to2(%tile_0_3, {%tile_0_4}, 2 : i32) : !aie.objectfifo<memref<1024xi32>>
    aie.objectfifo @in2to3(%tile_0_4, {%tile_3_5}, 2 : i32) : !aie.objectfifo<memref<1024xi32>>
    aie.objectfifo @out(%tile_3_5, {%tile_3_0}, 2 : i32) : !aie.objectfifo<memref<1024xi32>>
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<1xi32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1xi32>> -> memref<1xi32>
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %2 = aie.objectfifo.acquire @in0to1(Produce, 1) : !aie.objectfifosubview<memref<1024xi32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xi32>> -> memref<1024xi32>
          %4 = aie.objectfifo.acquire @in1(Consume, 1) : !aie.objectfifosubview<memref<1024xi32>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xi32>> -> memref<1024xi32>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_scalar_mul_aie_scalar(%5, %3, %1, %c1024_i32) : (memref<1024xi32>, memref<1024xi32>, memref<1xi32>, i32) -> ()
          aie.objectfifo.release @in1(Consume, 1)
          aie.objectfifo.release @in0to1(Produce, 1)
        }
        aie.objectfifo.release @in0(Consume, 1)
      }
      aie.end
    } {link_with = "scale.o"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %0 = aie.objectfifo.acquire @in1to2(Produce, 1) : !aie.objectfifosubview<memref<1024xi32>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1024xi32>> -> memref<1024xi32>
          %2 = aie.objectfifo.acquire @in0to1(Consume, 1) : !aie.objectfifosubview<memref<1024xi32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xi32>> -> memref<1024xi32>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @passthrough(%3, %1, %c1024_i32) : (memref<1024xi32>, memref<1024xi32>, i32) -> ()
          aie.objectfifo.release @in0to1(Consume, 1)
          aie.objectfifo.release @in1to2(Produce, 1)
        }
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %0 = aie.objectfifo.acquire @in2to3(Produce, 1) : !aie.objectfifosubview<memref<1024xi32>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1024xi32>> -> memref<1024xi32>
          %2 = aie.objectfifo.acquire @in1to2(Consume, 1) : !aie.objectfifosubview<memref<1024xi32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xi32>> -> memref<1024xi32>
          %c0_2 = arith.constant 0 : index
          %c1024 = arith.constant 1024 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c1024 step %c1_3 {
            %4 = memref.load %3[%arg2] : memref<1024xi32>
            memref.store %4, %1[%arg2] : memref<1024xi32>
          }
          aie.objectfifo.release @in1to2(Consume, 1)
          aie.objectfifo.release @in2to3(Produce, 1)
        }
      }
      aie.end
    }
    %core_3_5 = aie.core(%tile_3_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %0 = aie.objectfifo.acquire @out(Produce, 1) : !aie.objectfifosubview<memref<1024xi32>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1024xi32>> -> memref<1024xi32>
          %2 = aie.objectfifo.acquire @in2to3(Consume, 1) : !aie.objectfifosubview<memref<1024xi32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xi32>> -> memref<1024xi32>
          %c0_2 = arith.constant 0 : index
          %c1024 = arith.constant 1024 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c1024 step %c1_3 {
            %4 = memref.load %3[%arg2] : memref<1024xi32>
            memref.store %4, %1[%arg2] : memref<1024xi32>
          }
          aie.objectfifo.release @in2to3(Consume, 1)
          aie.objectfifo.release @out(Produce, 1)
        }
      }
      aie.end
    }
    aiex.runtime_sequence(%arg0: memref<9216xi32>, %arg1: memref<1xi32>, %arg2: memref<9216xi32>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 9216][0, 0, 0, 1]) {id = 1 : i64, metadata = @in1} : memref<9216xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 1][0, 0, 0, 1]) {id = 2 : i64, metadata = @in0} : memref<1xi32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 9216][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<9216xi32>
      aiex.npu.dma_wait {symbol = @out}
    }
  }
}

