# test.py -*- Python -*-
#
# This file is licensed under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
# (c) Copyright 2024 Advanced Micro Devices, Inc. or its affiliates

import numpy as np
import pyxrt as xrt
import sys
import time

import aie.utils.test as test_utils


def main(opts):

    # Load instruction sequence
    with open(opts.instr, "r") as f:
        instr_text = f.read().split("\n")
        instr_text = [l for l in instr_text if l != ""]
        instr_v = np.array([int(i, 16) for i in instr_text], dtype=np.uint32)

    # ------------------------------------------------------------
    # Configure this to match your design's buffer size and type
    # ------------------------------------------------------------
    MSIZE = 9216 # 96x96
    BSIZE = 9216 # 256X256
    INOUT0_VOLUME = int(MSIZE)  # Input only, 64x uint32_t in this example
    INOUT1_VOLUME = int(1)  # Input only, 1 uint32_t scale factor
    INOUT2_VOLUME = int(BSIZE)  # Output only, 64x uint32_t in this example

    INOUT0_DATATYPE = np.float32
    INOUT1_DATATYPE = np.float32
    INOUT2_DATATYPE = np.float32

    INOUT0_SIZE = INOUT0_VOLUME * INOUT0_DATATYPE().itemsize
    INOUT1_SIZE = INOUT1_VOLUME * INOUT1_DATATYPE().itemsize
    INOUT2_SIZE = INOUT2_VOLUME * INOUT2_DATATYPE().itemsize

    OUT_SIZE = INOUT0_SIZE
    OUT_DATATYPE = INOUT2_DATATYPE

    # ------------------------------------------------------
    # Get device, load the xclbin & kernel and register them
    # ------------------------------------------------------
    (device, kernel) = test_utils.init_xrt_load_kernel(opts)

    # ------------------------------------------------------
    # Initialize input/ output buffer sizes and sync them
    # ------------------------------------------------------
    bo_instr = xrt.bo(device, len(instr_v) * 4, xrt.bo.cacheable, kernel.group_id(1))
    bo_inout0 = xrt.bo(device, INOUT1_SIZE, xrt.bo.host_only, kernel.group_id(3)) # factor (-2 pi f / SPEED_OF_LIGHT)
    bo_inout1 = xrt.bo(device, INOUT0_SIZE, xrt.bo.host_only, kernel.group_id(3)) # vis
    bo_inout2 = xrt.bo(device, INOUT0_SIZE, xrt.bo.host_only, kernel.group_id(3)) # u
    bo_inout3 = xrt.bo(device, INOUT0_SIZE, xrt.bo.host_only, kernel.group_id(3)) # v
    bo_inout4 = xrt.bo(device, INOUT0_SIZE, xrt.bo.host_only, kernel.group_id(3)) # w
    bo_inout5 = xrt.bo(device, INOUT2_SIZE, xrt.bo.host_only, kernel.group_id(3)) # l
    bo_inout6 = xrt.bo(device, INOUT2_SIZE, xrt.bo.host_only, kernel.group_id(3)) # m
    bo_inout7 = xrt.bo(device, INOUT2_SIZE, xrt.bo.host_only, kernel.group_id(3)) # n
    bo_inout8 = xrt.bo(device, OUT_SIZE, xrt.bo.host_only, kernel.group_id(3)) # output

    # Initialize instruction buffer
    bo_instr.write(instr_v, 0)

    # Initialize data buffers
    inout0 = np.array([3], dtype=INOUT1_DATATYPE)
    inout1 = np.arange(1, INOUT0_VOLUME + 1, dtype=INOUT0_DATATYPE)
    inout2 = np.arange(1, INOUT0_VOLUME + 1, dtype=INOUT0_DATATYPE)
    inout3 = np.arange(1, INOUT0_VOLUME + 1, dtype=INOUT0_DATATYPE)
    inout4 = np.arange(1, INOUT0_VOLUME + 1, dtype=INOUT0_DATATYPE)
    inout5 = np.arange(1, INOUT0_VOLUME + 1, dtype=INOUT0_DATATYPE)
    inout6 = np.arange(1, INOUT0_VOLUME + 1, dtype=INOUT0_DATATYPE)
    inout7 = np.arange(1, INOUT0_VOLUME + 1, dtype=INOUT0_DATATYPE)
    inout8 = np.zeros(OUT_SIZE, dtype=np.uint8)
    bo_inout0.write(inout0, 0)
    bo_inout1.write(inout1, 0)
    bo_inout2.write(inout2, 0)
    bo_inout3.write(inout3, 0)
    bo_inout4.write(inout4, 0)
    bo_inout5.write(inout5, 0)
    bo_inout6.write(inout6, 0)
    bo_inout7.write(inout7, 0)
    bo_inout8.write(inout8, 0)

    # Sync buffers to update input buffer values
    bo_instr.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout0.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout1.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout2.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout3.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout4.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout5.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout6.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout7.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout8.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)

    # ------------------------------------------------------
    # Initialize run configs
    # ------------------------------------------------------
    num_iter = opts.iters + opts.warmup_iters
    npu_time_total = 0
    npu_time_min = 9999999
    npu_time_max = 0
    errors = 0

    # ------------------------------------------------------
    # Main run loop
    # ------------------------------------------------------
    for i in range(num_iter):
        # Run kernel
        if opts.verbosity >= 1:
            print("Running Kernel.")
        start = time.time_ns()
        opcode = 3
        h = kernel(opcode, bo_instr, len(instr_v), bo_inout1, bo_inout0, bo_inout8)
        h.wait()
        stop = time.time_ns()
        bo_inout2.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_FROM_DEVICE)

        # Warmup iterations do not count towards average runtime.
        if i < opts.warmup_iters:
            continue

        # Copy output results and verify they are correct
        entire_buffer = bo_inout8.read(OUT_SIZE, 0).view(OUT_DATATYPE)
        output_buffer = entire_buffer[:INOUT2_VOLUME]
        if opts.verify:
            if opts.verbosity >= 1:
                print("Verifying results ...")
            ref = np.arange(1, INOUT0_VOLUME + 1, dtype=INOUT0_DATATYPE) * inout0
            e = np.equal(output_buffer, ref)
            errors = errors + np.size(e) - np.count_nonzero(e)
        for j in output_buffer[:8192:]:
            print(j)
        npu_time = stop - start
        npu_time_total = npu_time_total + npu_time
        npu_time_min = min(npu_time_min, npu_time)
        npu_time_max = max(npu_time_max, npu_time)

    # ------------------------------------------------------
    # Print verification and timing results
    # ------------------------------------------------------

    # TODO - Mac count to guide gflops

    print("\nAvg NPU time: {}us.".format(int((npu_time_total / opts.iters) / 1000)))
    print("\nMin NPU time: {}us.".format(int((npu_time_min / opts.iters) / 1000)))
    print("\nMax NPU time: {}us.".format(int((npu_time_max / opts.iters) / 1000)))

    if not errors:
        print("\nPASS!\n")
        exit(0)
    else:
        print("\nError count: ", errors)
        print("\nFailed.\n")
        exit(-1)


if __name__ == "__main__":
    p = test_utils.create_default_argparser()
    opts = p.parse_args(sys.argv[1:])
    main(opts)
