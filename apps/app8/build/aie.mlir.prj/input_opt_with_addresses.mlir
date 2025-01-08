module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<3072 x f32>
  llvm.mlir.global external @in3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<3 x f32>
  llvm.mlir.global external @u_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @u_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @v_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @v_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @w_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @w_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @l_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @l_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @m_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @m_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @n_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @n_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @addA0_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addA0_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addA1_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addA1_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addA1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addA1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addB0_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addB0_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addB1_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addB1_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @out_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @out_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.mlir.global external @out_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @out() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addB1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addB0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addA1_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addA1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addA0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @n_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @n() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @m_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @m() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @l_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @l() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @w_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @w() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @v_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @v() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @u_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @u() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in3_cons() {addr_space = 0 : i32} : !llvm.array<3 x f32>
  llvm.mlir.global external @in3() {addr_space = 0 : i32} : !llvm.array<3 x f32>
  llvm.mlir.global external @in2_cons() {addr_space = 0 : i32} : !llvm.array<3072 x f32>
  llvm.mlir.global external @in2() {addr_space = 0 : i32} : !llvm.array<3072 x f32>
  llvm.mlir.global external @in1_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in0_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.func @vector_scalar_mul_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @passthrough(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @vector_add_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @vector_mult_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @mean(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @core_2_3() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(4 : i32) : i32
    %2 = llvm.mlir.constant(49 : i32) : i32
    %3 = llvm.mlir.constant(5 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1 : i32) : i32
    %6 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %7 = llvm.mlir.constant(2 : index) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(8 : index) : i64
    llvm.br ^bb1(%8 : i64)
  ^bb1(%10: i64):  // 2 preds: ^bb0, ^bb7
    %11 = llvm.icmp "slt" %10, %9 : i64
    llvm.cond_br %11, ^bb2(%8 : i64), ^bb8(%8 : i64)
  ^bb2(%12: i64):  // 2 preds: ^bb1, ^bb3
    %13 = llvm.icmp "slt" %12, %6 : i64
    llvm.cond_br %13, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%3, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %14 = llvm.add %12, %7 : i64
    llvm.br ^bb2(%14 : i64)
  ^bb4:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%3, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.br ^bb5(%8 : i64)
  ^bb5(%15: i64):  // 2 preds: ^bb4, ^bb6
    %16 = llvm.icmp "slt" %15, %6 : i64
    llvm.cond_br %16, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%3, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %17 = llvm.add %15, %7 : i64
    llvm.br ^bb5(%17 : i64)
  ^bb7:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%3, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %18 = llvm.add %10, %7 : i64
    llvm.br ^bb1(%18 : i64)
  ^bb8(%19: i64):  // 2 preds: ^bb1, ^bb9
    %20 = llvm.icmp "slt" %19, %6 : i64
    llvm.cond_br %20, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%3, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %21 = llvm.add %19, %7 : i64
    llvm.br ^bb8(%21 : i64)
  ^bb10:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%3, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_3_2() {
    %0 = llvm.mlir.addressof @n_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @w_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @addA1_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @w_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @n_cons_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(32 : index) : i64
    %6 = llvm.mlir.constant(true) : i1
    %7 = llvm.mlir.addressof @addA1_buff_0 : !llvm.ptr
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(48 : i32) : i32
    %10 = llvm.mlir.constant(53 : i32) : i32
    %11 = llvm.mlir.constant(52 : i32) : i32
    %12 = llvm.mlir.constant(49 : i32) : i32
    %13 = llvm.mlir.constant(51 : i32) : i32
    %14 = llvm.mlir.constant(1 : i32) : i32
    %15 = llvm.mlir.constant(1024 : i32) : i32
    %16 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %17 = llvm.mlir.constant(-1 : i32) : i32
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(8 : index) : i64
    %20 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%18 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb8
    %22 = llvm.icmp "slt" %21, %19 : i64
    llvm.cond_br %22, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb3(%18 : i64)
  ^bb3(%23: i64):  // 2 preds: ^bb2, ^bb4
    %24 = llvm.icmp "slt" %23, %16 : i64
    llvm.cond_br %24, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%27, %25, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%29, %28, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %30 = llvm.add %23, %20 : i64
    llvm.br ^bb3(%30 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %31 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    %32 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb6(%18 : i64)
  ^bb6(%34: i64):  // 2 preds: ^bb5, ^bb7
    %35 = llvm.icmp "slt" %34, %16 : i64
    llvm.cond_br %35, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%36, %5 : !llvm.ptr, i64)] : i1
    %37 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%38, %36, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %39 = llvm.add %34, %20 : i64
    llvm.br ^bb6(%39 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %40 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%40, %5 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%42, %40, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %43 = llvm.add %21, %20 : i64
    llvm.br ^bb1(%43 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb10(%18 : i64)
  ^bb10(%44: i64):  // 2 preds: ^bb9, ^bb11
    %45 = llvm.icmp "slt" %44, %16 : i64
    llvm.cond_br %45, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %46 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%46, %5 : !llvm.ptr, i64)] : i1
    %47 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%48, %46, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %49 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %50 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%50, %49, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %51 = llvm.add %44, %20 : i64
    llvm.br ^bb10(%51 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %52 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    %54 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%54, %52, %53, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_2_2() {
    %0 = llvm.mlir.addressof @m_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @v_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @addA0_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @v_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @m_cons_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(32 : index) : i64
    %6 = llvm.mlir.constant(true) : i1
    %7 = llvm.mlir.addressof @addA0_buff_0 : !llvm.ptr
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(48 : i32) : i32
    %10 = llvm.mlir.constant(53 : i32) : i32
    %11 = llvm.mlir.constant(52 : i32) : i32
    %12 = llvm.mlir.constant(49 : i32) : i32
    %13 = llvm.mlir.constant(51 : i32) : i32
    %14 = llvm.mlir.constant(1 : i32) : i32
    %15 = llvm.mlir.constant(1024 : i32) : i32
    %16 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %17 = llvm.mlir.constant(-1 : i32) : i32
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(8 : index) : i64
    %20 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%18 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb8
    %22 = llvm.icmp "slt" %21, %19 : i64
    llvm.cond_br %22, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb3(%18 : i64)
  ^bb3(%23: i64):  // 2 preds: ^bb2, ^bb4
    %24 = llvm.icmp "slt" %23, %16 : i64
    llvm.cond_br %24, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%27, %25, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%29, %28, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %30 = llvm.add %23, %20 : i64
    llvm.br ^bb3(%30 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %31 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    %32 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb6(%18 : i64)
  ^bb6(%34: i64):  // 2 preds: ^bb5, ^bb7
    %35 = llvm.icmp "slt" %34, %16 : i64
    llvm.cond_br %35, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%36, %5 : !llvm.ptr, i64)] : i1
    %37 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%38, %36, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %39 = llvm.add %34, %20 : i64
    llvm.br ^bb6(%39 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %40 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%40, %5 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%42, %40, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %43 = llvm.add %21, %20 : i64
    llvm.br ^bb1(%43 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb10(%18 : i64)
  ^bb10(%44: i64):  // 2 preds: ^bb9, ^bb11
    %45 = llvm.icmp "slt" %44, %16 : i64
    llvm.cond_br %45, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %46 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%46, %5 : !llvm.ptr, i64)] : i1
    %47 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%48, %46, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %49 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %50 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%50, %49, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %51 = llvm.add %44, %20 : i64
    llvm.br ^bb10(%51 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %52 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    %54 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%54, %52, %53, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_1_2() {
    %0 = llvm.mlir.addressof @l_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @u_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @out_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @u_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @l_cons_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(32 : index) : i64
    %6 = llvm.mlir.constant(true) : i1
    %7 = llvm.mlir.addressof @out_buff_0 : !llvm.ptr
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(48 : i32) : i32
    %10 = llvm.mlir.constant(55 : i32) : i32
    %11 = llvm.mlir.constant(54 : i32) : i32
    %12 = llvm.mlir.constant(49 : i32) : i32
    %13 = llvm.mlir.constant(51 : i32) : i32
    %14 = llvm.mlir.constant(1 : i32) : i32
    %15 = llvm.mlir.constant(1024 : i32) : i32
    %16 = llvm.mlir.constant(8 : index) : i64
    %17 = llvm.mlir.constant(-1 : i32) : i32
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %20 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%18 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb8
    %22 = llvm.icmp "slt" %21, %19 : i64
    llvm.cond_br %22, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb3(%18 : i64)
  ^bb3(%23: i64):  // 2 preds: ^bb2, ^bb4
    %24 = llvm.icmp "slt" %23, %16 : i64
    llvm.cond_br %24, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%27, %25, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%29, %28, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %30 = llvm.add %23, %20 : i64
    llvm.br ^bb3(%30 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %31 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    %32 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb6(%18 : i64)
  ^bb6(%34: i64):  // 2 preds: ^bb5, ^bb7
    %35 = llvm.icmp "slt" %34, %16 : i64
    llvm.cond_br %35, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%36, %5 : !llvm.ptr, i64)] : i1
    %37 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%38, %36, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %39 = llvm.add %34, %20 : i64
    llvm.br ^bb6(%39 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %40 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%40, %5 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%42, %40, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %43 = llvm.add %21, %20 : i64
    llvm.br ^bb1(%43 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb10(%18 : i64)
  ^bb10(%44: i64):  // 2 preds: ^bb9, ^bb11
    %45 = llvm.icmp "slt" %44, %16 : i64
    llvm.cond_br %45, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %46 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%46, %5 : !llvm.ptr, i64)] : i1
    %47 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%48, %46, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %49 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %50 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%50, %49, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %51 = llvm.add %44, %20 : i64
    llvm.br ^bb10(%51 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %52 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    %54 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%54, %52, %53, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.return
  }
}

