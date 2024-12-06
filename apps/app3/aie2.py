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
    @device(AIEDevice.npu1_1col)
    def device_body():
        tensor_ty = np.ndarray[(MSIZE,), np.dtype[np.int32]]
        tile_ty = np.ndarray[(TSIZE,), np.dtype[np.int32]]
        scalar_ty = np.ndarray[(1,), np.dtype[np.int32]]

        # AIE Core Function declarations
        scale_scalar = external_func(
            "vector_scalar_mul_aie_scalar", # Name of the function inside the file compiled in the makefile
            inputs=[tile_ty, tile_ty, scalar_ty, np.int32],
        )
        passthrough = external_func(
            "passthrough",
            inputs=[tile_ty, tile_ty, np.int32],
        )

        # Tile declarations
        n_cols = 1
        n_comp = 4
        st = [] # Shim Tiles
        mt = [] # Memory Tiles (currently not used)
        ct = [] # Compute Tiles
        for i in range(n_cols):
            # Making the shim tiles
            st.append(tile(i, 0))
            # Making compute tiles
            c = []
            for j in range(n_comp):
                c.append(tile(i, j+2))
            ct.append(c)

        # AIE-array data movement with object fifos
        # Inputs from shim 00 to cmptile 00
        of_in = object_fifo("in", st[0], ct[0][0], 2, tile_ty)
        of_factor = object_fifo("infactor", st[0], ct[0][0], 2, scalar_ty)
        
        # Internal movements
        # Column 0
        of_0to1 = object_fifo("in0to1", ct[0][0], ct[0][1], 2, tile_ty)
        of_1to2 = object_fifo("in1to2", ct[0][1], ct[0][2], 2, tile_ty)
        of_2to3 = object_fifo("in2to3", ct[0][2], ct[0][3], 2, tile_ty)
        
        # Output
        of_out = object_fifo("out", ct[0][3], st[0], 2, tile_ty)

        # Set up compute tiles
        # Compute tile 2
        @core(ct[0][0], "scale.o")
        def core_body():
            # Effective while(1)
            for _ in range_(sys.maxsize):
                elem_factor = of_factor.acquire(ObjectFifoPort.Consume, 1) # The one represents an object of size TSIZE
                # Number of sub-vector "tile" iterations
                for _ in range_(ITER):
                    elem_out = of_0to1.acquire(ObjectFifoPort.Produce, 1)
                    elem_in = of_in.acquire(ObjectFifoPort.Consume, 1)
                    scale_scalar(elem_in, elem_out, elem_factor, TSIZE)
                    of_in.release(ObjectFifoPort.Consume, 1)
                    of_0to1.release(ObjectFifoPort.Produce, 1)
                of_factor.release(ObjectFifoPort.Consume, 1)
        # Compute tile 3
        # Just making a passthrough tiles for now
        @core(ct[0][1], "passthrough.o")
        def core_body():
            # Effective while(1)
            for _ in range_(sys.maxsize):
                # Number of sub-vector "tile" iterations
                for _ in range_(ITER):
                    elem_out = of_1to2.acquire(ObjectFifoPort.Produce, 1)
                    elem_in = of_0to1.acquire(ObjectFifoPort.Consume, 1)
                    passthrough(elem_in, elem_out, TSIZE)
                    of_0to1.release(ObjectFifoPort.Consume, 1)
                    of_1to2.release(ObjectFifoPort.Produce, 1)
        @core(ct[0][2])
        def core_body():
            # Effective while(1)
            for _ in range_(sys.maxsize):
                # Number of sub-vector "tile" iterations
                for _ in range_(ITER):
                    elem_out = of_2to3.acquire(ObjectFifoPort.Produce, 1)
                    elem_in = of_1to2.acquire(ObjectFifoPort.Consume, 1)
                    for i in range_(TSIZE):
                        elem_out[i] = elem_in[i]
                    of_1to2.release(ObjectFifoPort.Consume, 1)
                    of_2to3.release(ObjectFifoPort.Produce, 1)
        @core(ct[0][3])
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
