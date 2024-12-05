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


def my_vector_scalar():
    MSIZE = 4096
    TSIZE = 1024
    ITER = 4
    @device(AIEDevice.npu1_4col)
    def device_body():
        tensor_ty = np.ndarray[(MSIZE,), np.dtype[np.int32]]
        tile_ty = np.ndarray[(TSIZE,), np.dtype[np.int32]]
        scalar_ty = np.ndarray[(1,), np.dtype[np.int32]]

        # AIE Core Function declarations
        scale_scalar = external_func(
            "vector_scalar_mul_aie_scalar",
            inputs=[tile_ty, tile_ty, scalar_ty, np.int32],
        )

        # Tile declarations
        n_cols = 4
        n_comp = 4
        shimtiles = []
        comptiles = []
        for i in range(n_cols):
            # Making the shim tiles
            shimtiles.append(tile(i, 0))
            # Making compute tiles
            c = []
            for j in range(n_comp):
                c.append(tile(i, j+2))
            comptiles.append(c)
            
            
        ShimTile = shimtiles[0]
        ComputeTile2 = comptiles[0][0]
        ComputeTile3 = comptiles[0][1]
        ComputeTile4 = comptiles[0][2]
        ComputeTile5 = comptiles[0][3]

        # AIE-array data movement with object fifos
        of_in = object_fifo("in", ShimTile, ComputeTile2, 2, tile_ty)
        of_factor = object_fifo("infactor", ShimTile, ComputeTile2, 2, scalar_ty)
        of_2to3 = object_fifo("in2to3", ComputeTile2, ComputeTile3, 2, tile_ty)
        of_out = object_fifo("out", ComputeTile3, ShimTile, 2, tile_ty)

        # Set up compute tiles
        # Compute tile 2
        @core(ComputeTile2, "scale.o")
        def core_body():
            # Effective while(1)
            for _ in range_(sys.maxsize):
                elem_factor = of_factor.acquire(ObjectFifoPort.Consume, 1)
                # Number of sub-vector "tile" iterations
                for _ in range_(ITER):
                    elem_out = of_2to3.acquire(ObjectFifoPort.Produce, 1)
                    elem_in = of_in.acquire(ObjectFifoPort.Consume, 1)
                    scale_scalar(elem_in, elem_out, elem_factor, TSIZE)
                    of_in.release(ObjectFifoPort.Consume, 1)
                    of_2to3.release(ObjectFifoPort.Produce, 1)
                of_factor.release(ObjectFifoPort.Consume, 1)
        # Compute tile 3
        # Just making a passthrough tile for now
        @core(ComputeTile3, "scale.o")
        def core_body():
            # Effective while(1)
            for _ in range_(sys.maxsize):
                # Number of sub-vector "tile" iterations
                for _ in range_(ITER):
                    elem_out = of_out.acquire(ObjectFifoPort.Produce, 1)
                    elem_in = of_2to3.acquire(ObjectFifoPort.Consume, 1)
                    for i in range_(TSIZE):
                        elem_out[i] = elem_in[i]
                    of_2to3.release(ObjectFifoPort.Consume, 1)
                    of_out.release(ObjectFifoPort.Produce, 1)

        # To/from AIE-array data movement
        @runtime_sequence(tensor_ty, scalar_ty, tensor_ty)
        def sequence(A, F, C):
            npu_dma_memcpy_nd(metadata=of_in, bd_id=1, mem=A, sizes=[1, 1, 1, MSIZE])
            npu_dma_memcpy_nd(metadata=of_factor, bd_id=2, mem=F, sizes=[1, 1, 1, 1])
            npu_dma_memcpy_nd(metadata=of_out, bd_id=0, mem=C, sizes=[1, 1, 1, MSIZE])
            # We know of_out will complete after of_in and of_factor, so it is sufficient to just wait for of_out
            dma_wait(of_out)


with mlir_mod_ctx() as ctx:
    my_vector_scalar()
    res = ctx.module.operation.verify()
    if res == True:
        print(ctx.module)
    else:
        print(res)
