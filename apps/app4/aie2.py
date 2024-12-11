# section-4/section-4a/aie2.py -*- Python -*-
#
# This file is licensed under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
# (c) Copyright 2024 Advanced Micro Devices, Inc. or its affiliates
import numpy as np
import sys

from aie.dialects.aie import *
from aie.dialects.aiex import *
from aie.helpers.dialects.ext.scf import _for as range_
from aie.extras.context import mlir_mod_ctx

def declaring_tiles(n_cols, n_comp):
    st = [] # Shim Tiles
    mt = [] # Memory Tiles (currently not used)
    ct = [] # Compute Tiles
    for i in range(n_cols):
        # Making the shim tiles
        st.append(tile(i, 0))
        mt.append(tile(i, 1))
        # Making compute tiles
        c = []
        for j in range(n_comp):
            c.append(tile(i, j+2))
        ct.append(c)
    return (st, mt, ct)

def declaring_kernel_func(tile_ty, scalar_ty):
    # kernel for vector x scalar
    name0 = "scale_scalar"
    kernel0 = external_func("vector_scalar_mul_aie_scalar", # Name of the function inside the file compiled in the makefile
        inputs=[tile_ty, tile_ty, scalar_ty, np.int32],
    )
    # kernel for passthrough (scalar)
    name1 = "passthrough"
    kernel1 = external_func("passthrough",
        inputs=[tile_ty, tile_ty, np.int32],
    )
    # kenrel for adding two vectors (scalar)
    name2 = "add_scalar"
    kernel2 = external_func("vector_add_aie_scalar",
        inputs=[tile_ty, tile_ty, tile_ty, np.int32],
    )
    # kernel for mean of a vector (scalar)
    name3 = "mean"
    kernel3 = external_func("mean",
        inputs=[tile_ty, scalar_ty, np.int32],
    )
    return {
        name0: kernel0,
        name1: kernel1,
        name2: kernel2,
        name3: kernel3,
    }


def loafty():
    MSIZE = 9216 # 96x96
    BSIZE = 9216 # 256X256
    TSIZE = 1024
    ITER_M = 10
    ITER_B = 9
    @device(AIEDevice.npu1_4col)
    def device_body():
        tensor_ty = np.ndarray[(MSIZE,), np.dtype[np.float32]]
        tile_ty = np.ndarray[(TSIZE,), np.dtype[np.float32]]
        scalar_ty = np.ndarray[(1,), np.dtype[np.float32]]

        # AIE Core Function declarations
        kernels = declaring_kernel_func(tile_ty, scalar_ty)

        # Tile declarations
        st, mt, ct = declaring_tiles(4, 4)

        # AIE-array data movement with object fifos
        # Inputs
        # Column 0 (ct[0][0])
        of_in_factor = object_fifo("in0", st[0], ct[0][0], 2, scalar_ty) # input: factor (2 * pi * f / SL)
        of_in_vis = object_fifo("in1", st[0], ct[0][0], 2, tile_ty) # input: visibilities
        # Column 1 (ct[1][0])
        of_in_u = object_fifo("in2", st[1], ct[1][0], 2, tile_ty) # input: u (baselines)
        of_in_l = object_fifo("in3", st[1], ct[1][0], 2, scalar_ty) # input: l (baseline scale)
        # Column 2 (ct[2][0])
        of_in_v = object_fifo("in4", st[2], ct[2][0], 2, tile_ty) # input: v (baselines)
        of_in_m = object_fifo("in5", st[2], ct[2][0], 2, scalar_ty) # input: m (baseline scale)
        # Column 3 (ct[3][0])
        of_in_w = object_fifo("in6", st[3], ct[3][0], 2, tile_ty) # input: w (baselines)
        of_in_n = object_fifo("in7", st[3], ct[3][0], 2, scalar_ty) # input: n (baseline scale)
        
        # Internal movements
        # S1 = add w*n, v*m (ct[3][1])
        of_c20toc31 = object_fifo("of_c20toc21", ct[2][0], ct[3][1], 2, tile_ty)
        of_c30toc31 = object_fifo("of_c30toc21", ct[3][0], ct[3][1], 2, tile_ty)
        # S2 = add S1, u*l (ct[2][1])
        of_c10toc21 = object_fifo("of_c10toc11", ct[1][0], ct[2][1], 2, tile_ty)
        of_c31toc21 = object_fifo("of_c21toc11", ct[3][1], ct[2][1], 2, tile_ty)
        # F = factor * S2 (ct[2][2])
            # input of the factor
        of_c21toc22 = object_fifo("of_c21toc22", ct[2][1], ct[2][2], 2, tile_ty)
        # C = cos F  (ct[1][2])
        of_c22toc12 = object_fifo("of_c22toc12", ct[2][2], ct[1][2], 2, tile_ty)
        # MU = vis * C (ct[1][1])
            # input of the visibilities
        of_c12toc11 = object_fifo("of_c12toc11", ct[1][2], ct[1][1], 2, tile_ty)
        # M1 = mean MU (ct[0][2])
        
        # M2 = mean M1 (ct[0][1])

        # M3 = mean M2 (ct[0][0])
        
        # Output
        of_out = object_fifo("out", ct[0][0], st[3], 2, tile_ty)

        # Set up compute tiles
        # Compute tile 2
        @core(ct[0][0], "scale.o")
        def core_body():
            # Effective while(1)
            for _ in range_(sys.maxsize):
                elem_factor = of_in_factor.acquire(ObjectFifoPort.Consume, 1) # The one represents an object of size TSIZE
                # Number of sub-vector "tile" iterations
                for _ in range_(ITER_M):
                    elem_out = of_out.acquire(ObjectFifoPort.Produce, 1)
                    elem_in = of_in_vis.acquire(ObjectFifoPort.Consume, 1)
                    kernels['scale_scalar'](elem_in, elem_out, elem_factor, TSIZE)
                    of_in_vis.release(ObjectFifoPort.Consume, 1)
                    of_out.release(ObjectFifoPort.Produce, 1)
                of_in_factor.release(ObjectFifoPort.Consume, 1)
        # Compute tile 3
        # Just making a passthrough tiles for now
        # @core(ct[0][1], "passthrough.o")
        # def core_body():
        #     # Effective while(1)
        #     for _ in range_(sys.maxsize):
        #         # Number of sub-vector "tile" iterations
        #         for _ in range_(ITER_M):
        #             elem_out = of_1to2.acquire(ObjectFifoPort.Produce, 1)
        #             elem_in = of_0to1.acquire(ObjectFifoPort.Consume, 1)
        #             kernels['passthrough'](elem_in, elem_out, TSIZE)
        #             of_0to1.release(ObjectFifoPort.Consume, 1)
        #             of_1to2.release(ObjectFifoPort.Produce, 1)
        # @core(ct[0][2])
        # def core_body():
        #     # Effective while(1)
        #     for _ in range_(sys.maxsize):
        #         # Number of sub-vector "tile" iterations
        #         for _ in range_(ITER_M):
        #             elem_out = of_2to3.acquire(ObjectFifoPort.Produce, 1)
        #             elem_in = of_1to2.acquire(ObjectFifoPort.Consume, 1)
        #             for i in range_(TSIZE):
        #                 elem_out[i] = elem_in[i]
        #             of_1to2.release(ObjectFifoPort.Consume, 1)
        #             of_2to3.release(ObjectFifoPort.Produce, 1)
        # @core(ct[3][3])
        # def core_body():
        #     # Effective while(1)
        #     for _ in range_(sys.maxsize):
        #         # Number of sub-vector "tile" iterations
        #         for _ in range_(ITER_M):
        #             elem_out = of_out.acquire(ObjectFifoPort.Produce, 1)
        #             elem_in = of_2to3.acquire(ObjectFifoPort.Consume, 1)
        #             for i in range_(TSIZE):
        #                 elem_out[i] = elem_in[i]
        #             of_2to3.release(ObjectFifoPort.Consume, 1)
        #             of_out.release(ObjectFifoPort.Produce, 1)

        # To/from AIE-array data movement
        @runtime_sequence(scalar_ty, tensor_ty, tensor_ty, scalar_ty, tensor_ty)
        def sequence(factor, vis, u, l, output):
            npu_dma_memcpy_nd(metadata=of_in_factor, bd_id=1, mem=factor, sizes=[1, 1, 1, 1]) # input: factor (2 * pi * f / SL)
            npu_dma_memcpy_nd(metadata=of_in_vis, bd_id=2, mem=vis, sizes=[1, 1, 1, MSIZE]) # input: visibilities
            npu_dma_memcpy_nd(metadata=of_in_u, bd_id=3, mem=u, sizes=[1, 1, 1, MSIZE]) # input: u (baselines)
            npu_dma_memcpy_nd(metadata=of_in_l, bd_id=4, mem=l, sizes=[1, 1, 1, 1]) # input: l (baseline scale)
            # npu_dma_memcpy_nd(metadata=of_in_v, bd_id=5, mem=v, sizes=[1, 1, 1, MSIZE]) # input: v (baselines)
            # npu_dma_memcpy_nd(metadata=of_in_m, bd_id=6, mem=m, sizes=[1, 1, 1, 1]) # input: m (baseline scale)
            # npu_dma_memcpy_nd(metadata=of_in_w, bd_id=7, mem=w, sizes=[1, 1, 1, MSIZE]) # input: w (baselines)
            # npu_dma_memcpy_nd(metadata=of_in_n, bd_id=8, mem=n, sizes=[1, 1, 1, 1]) # input: n (baseline scale)
            npu_dma_memcpy_nd(metadata=of_out, bd_id=0, mem=output, sizes=[1, 1, 1, MSIZE]) # output
            # We know of_out will complete after of_in and of_in_factor, so it is sufficient to just wait for of_out
            dma_wait(of_out)


with mlir_mod_ctx() as ctx:
    loafty()
    res = ctx.module.operation.verify()
    if res == True:
        print(ctx.module)
    else:
        print(res)
