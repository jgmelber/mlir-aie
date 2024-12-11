module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in3_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in4_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in4_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in5_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in5_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in6_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in6_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in7_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in7_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @of_c20toc21_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c20toc21_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c20toc21_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c20toc21_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c30toc21_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c30toc21_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c10toc11_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c10toc11_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c10toc11_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c10toc11_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c21toc11_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c21toc11_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c21toc22_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c21toc22_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c22toc12_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c22toc12_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c12toc11_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c12toc11_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @ofc11toc02_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @ofc11toc02_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @ofc11toc02_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @ofc11toc02_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @ofc02toc01_buff_9() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01_buff_8() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01_buff_7() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01_buff_6() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01_buff_5() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01_buff_4() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01_buff_3() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01_buff_2() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @out_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @out_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.mlir.global external @out_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @out() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc11toc02_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @ofc11toc02() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c12toc11() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c22toc12() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c21toc22() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c21toc11() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c10toc11_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c10toc11() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c30toc21() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c20toc21_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c20toc21() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in7_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in7() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in6_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in6() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in5_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in5() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in4_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in4() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in3_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in3() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in2_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in2() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in1_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in0_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.func @vector_scalar_mul_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @passthrough(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @vector_add_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @vector_mult_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @mean(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @core_0_4() {
    %0 = llvm.mlir.addressof @ofc11toc02_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @out_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @ofc11toc02_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(31 : index) : i64
    %4 = llvm.mlir.addressof @out_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(53 : i32) : i32
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(49 : i32) : i32
    %8 = llvm.mlir.constant(52 : i32) : i32
    %9 = llvm.mlir.constant(1 : i32) : i32
    %10 = llvm.mlir.constant(1024 : i32) : i32
    %11 = llvm.mlir.constant(-1 : i32) : i32
    %12 = llvm.mlir.constant(2 : index) : i64
    %13 = llvm.mlir.constant(10 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%14 : i64)
  ^bb1(%17: i64):  // 2 preds: ^bb0, ^bb4
    %18 = llvm.icmp "slt" %17, %15 : i64
    llvm.cond_br %18, ^bb2(%14 : i64), ^bb5
  ^bb2(%19: i64):  // 2 preds: ^bb1, ^bb3
    %20 = llvm.icmp "slt" %19, %13 : i64
    llvm.cond_br %20, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    %21 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.and %22, %3  : i64
    %24 = llvm.icmp "eq" %23, %14 : i64
    llvm.intr.assume %24 : i1
    %25 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %26 = llvm.ptrtoint %25 : !llvm.ptr to i64
    %27 = llvm.and %26, %3  : i64
    %28 = llvm.icmp "eq" %27, %14 : i64
    llvm.intr.assume %28 : i1
    llvm.call @mean(%25, %21, %10) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    %30 = llvm.ptrtoint %29 : !llvm.ptr to i64
    %31 = llvm.and %30, %3  : i64
    %32 = llvm.icmp "eq" %31, %14 : i64
    llvm.intr.assume %32 : i1
    %33 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %34 = llvm.ptrtoint %33 : !llvm.ptr to i64
    %35 = llvm.and %34, %3  : i64
    %36 = llvm.icmp "eq" %35, %14 : i64
    llvm.intr.assume %36 : i1
    llvm.call @mean(%33, %29, %10) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    %37 = llvm.add %19, %12 : i64
    llvm.br ^bb2(%37 : i64)
  ^bb4:  // pred: ^bb2
    %38 = llvm.add %17, %16 : i64
    llvm.br ^bb1(%38 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_1_3() {
    %0 = llvm.mlir.addressof @in1_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_c12toc11_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @ofc11toc02_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @in1_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @of_c12toc11_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(31 : index) : i64
    %6 = llvm.mlir.addressof @ofc11toc02_buff_0 : !llvm.ptr
    %7 = llvm.mlir.constant(51 : i32) : i32
    %8 = llvm.mlir.constant(34 : i32) : i32
    %9 = llvm.mlir.constant(48 : i32) : i32
    %10 = llvm.mlir.constant(35 : i32) : i32
    %11 = llvm.mlir.constant(49 : i32) : i32
    %12 = llvm.mlir.constant(50 : i32) : i32
    %13 = llvm.mlir.constant(1 : i32) : i32
    %14 = llvm.mlir.constant(1024 : i32) : i32
    %15 = llvm.mlir.constant(-1 : i32) : i32
    %16 = llvm.mlir.constant(10 : index) : i64
    %17 = llvm.mlir.constant(2 : index) : i64
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%18 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb4
    %22 = llvm.icmp "slt" %21, %20 : i64
    llvm.cond_br %22, ^bb2(%18 : i64), ^bb5
  ^bb2(%23: i64):  // 2 preds: ^bb1, ^bb3
    %24 = llvm.icmp "slt" %23, %16 : i64
    llvm.cond_br %24, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%12, %15) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %15) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %15) : (i32, i32) -> ()
    %25 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %26 = llvm.ptrtoint %25 : !llvm.ptr to i64
    %27 = llvm.and %26, %5  : i64
    %28 = llvm.icmp "eq" %27, %18 : i64
    llvm.intr.assume %28 : i1
    %29 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %30 = llvm.ptrtoint %29 : !llvm.ptr to i64
    %31 = llvm.and %30, %5  : i64
    %32 = llvm.icmp "eq" %31, %18 : i64
    llvm.intr.assume %32 : i1
    %33 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %34 = llvm.ptrtoint %33 : !llvm.ptr to i64
    %35 = llvm.and %34, %5  : i64
    %36 = llvm.icmp "eq" %35, %18 : i64
    llvm.intr.assume %36 : i1
    llvm.call @vector_mult_aie_scalar(%33, %29, %25, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %15) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %15) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %15) : (i32, i32) -> ()
    %37 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %38 = llvm.ptrtoint %37 : !llvm.ptr to i64
    %39 = llvm.and %38, %5  : i64
    %40 = llvm.icmp "eq" %39, %18 : i64
    llvm.intr.assume %40 : i1
    %41 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %42 = llvm.ptrtoint %41 : !llvm.ptr to i64
    %43 = llvm.and %42, %5  : i64
    %44 = llvm.icmp "eq" %43, %18 : i64
    llvm.intr.assume %44 : i1
    %45 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %46 = llvm.ptrtoint %45 : !llvm.ptr to i64
    %47 = llvm.and %46, %5  : i64
    %48 = llvm.icmp "eq" %47, %18 : i64
    llvm.intr.assume %48 : i1
    llvm.call @vector_mult_aie_scalar(%45, %41, %37, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    %49 = llvm.add %23, %17 : i64
    llvm.br ^bb2(%49 : i64)
  ^bb4:  // pred: ^bb2
    %50 = llvm.add %21, %19 : i64
    llvm.br ^bb1(%50 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_1_4() {
    %0 = llvm.mlir.addressof @of_c22toc12_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_c12toc11_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_c22toc12_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(31 : index) : i64
    %4 = llvm.mlir.addressof @of_c12toc11_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(51 : i32) : i32
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(49 : i32) : i32
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(1 : i32) : i32
    %10 = llvm.mlir.constant(1024 : i32) : i32
    %11 = llvm.mlir.constant(-1 : i32) : i32
    %12 = llvm.mlir.constant(10 : index) : i64
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%14 : i64)
  ^bb1(%17: i64):  // 2 preds: ^bb0, ^bb4
    %18 = llvm.icmp "slt" %17, %16 : i64
    llvm.cond_br %18, ^bb2(%14 : i64), ^bb5
  ^bb2(%19: i64):  // 2 preds: ^bb1, ^bb3
    %20 = llvm.icmp "slt" %19, %12 : i64
    llvm.cond_br %20, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    %21 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.and %22, %3  : i64
    %24 = llvm.icmp "eq" %23, %14 : i64
    llvm.intr.assume %24 : i1
    %25 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %26 = llvm.ptrtoint %25 : !llvm.ptr to i64
    %27 = llvm.and %26, %3  : i64
    %28 = llvm.icmp "eq" %27, %14 : i64
    llvm.intr.assume %28 : i1
    llvm.call @passthrough(%25, %21, %10) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %30 = llvm.ptrtoint %29 : !llvm.ptr to i64
    %31 = llvm.and %30, %3  : i64
    %32 = llvm.icmp "eq" %31, %14 : i64
    llvm.intr.assume %32 : i1
    %33 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %34 = llvm.ptrtoint %33 : !llvm.ptr to i64
    %35 = llvm.and %34, %3  : i64
    %36 = llvm.icmp "eq" %35, %14 : i64
    llvm.intr.assume %36 : i1
    llvm.call @passthrough(%33, %29, %10) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    %37 = llvm.add %19, %13 : i64
    llvm.br ^bb2(%37 : i64)
  ^bb4:  // pred: ^bb2
    %38 = llvm.add %17, %15 : i64
    llvm.br ^bb1(%38 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_2_4() {
    %0 = llvm.mlir.addressof @in0_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_c21toc22_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_c22toc12_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @in0_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @of_c21toc22_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(31 : index) : i64
    %6 = llvm.mlir.addressof @of_c22toc12_buff_0 : !llvm.ptr
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(17 : i32) : i32
    %9 = llvm.mlir.constant(4 : i32) : i32
    %10 = llvm.mlir.constant(5 : i32) : i32
    %11 = llvm.mlir.constant(16 : i32) : i32
    %12 = llvm.mlir.constant(49 : i32) : i32
    %13 = llvm.mlir.constant(1 : i32) : i32
    %14 = llvm.mlir.constant(1024 : i32) : i32
    %15 = llvm.mlir.constant(10 : index) : i64
    %16 = llvm.mlir.constant(-1 : i32) : i32
    %17 = llvm.mlir.constant(2 : index) : i64
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%18 : i64)
  ^bb1(%20: i64):  // 2 preds: ^bb0, ^bb8
    %21 = llvm.icmp "slt" %20, %19 : i64
    llvm.cond_br %21, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.br ^bb3(%18 : i64)
  ^bb3(%22: i64):  // 2 preds: ^bb2, ^bb4
    %23 = llvm.icmp "slt" %22, %15 : i64
    llvm.cond_br %23, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %24 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %25 = llvm.ptrtoint %24 : !llvm.ptr to i64
    %26 = llvm.and %25, %5  : i64
    %27 = llvm.icmp "eq" %26, %18 : i64
    llvm.intr.assume %27 : i1
    %28 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %29 = llvm.ptrtoint %28 : !llvm.ptr to i64
    %30 = llvm.and %29, %5  : i64
    %31 = llvm.icmp "eq" %30, %18 : i64
    llvm.intr.assume %31 : i1
    %32 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    %33 = llvm.ptrtoint %32 : !llvm.ptr to i64
    %34 = llvm.and %33, %5  : i64
    %35 = llvm.icmp "eq" %34, %18 : i64
    llvm.intr.assume %35 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%28, %24, %32, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %37 = llvm.ptrtoint %36 : !llvm.ptr to i64
    %38 = llvm.and %37, %5  : i64
    %39 = llvm.icmp "eq" %38, %18 : i64
    llvm.intr.assume %39 : i1
    %40 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %41 = llvm.ptrtoint %40 : !llvm.ptr to i64
    %42 = llvm.and %41, %5  : i64
    %43 = llvm.icmp "eq" %42, %18 : i64
    llvm.intr.assume %43 : i1
    llvm.intr.assume %35 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%40, %36, %32, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    %44 = llvm.add %22, %17 : i64
    llvm.br ^bb3(%44 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.br ^bb6(%18 : i64)
  ^bb6(%45: i64):  // 2 preds: ^bb5, ^bb7
    %46 = llvm.icmp "slt" %45, %15 : i64
    llvm.cond_br %46, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %47 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %48 = llvm.ptrtoint %47 : !llvm.ptr to i64
    %49 = llvm.and %48, %5  : i64
    %50 = llvm.icmp "eq" %49, %18 : i64
    llvm.intr.assume %50 : i1
    %51 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %52 = llvm.ptrtoint %51 : !llvm.ptr to i64
    %53 = llvm.and %52, %5  : i64
    %54 = llvm.icmp "eq" %53, %18 : i64
    llvm.intr.assume %54 : i1
    %55 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    %56 = llvm.ptrtoint %55 : !llvm.ptr to i64
    %57 = llvm.and %56, %5  : i64
    %58 = llvm.icmp "eq" %57, %18 : i64
    llvm.intr.assume %58 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%51, %47, %55, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %59 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %60 = llvm.ptrtoint %59 : !llvm.ptr to i64
    %61 = llvm.and %60, %5  : i64
    %62 = llvm.icmp "eq" %61, %18 : i64
    llvm.intr.assume %62 : i1
    %63 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %64 = llvm.ptrtoint %63 : !llvm.ptr to i64
    %65 = llvm.and %64, %5  : i64
    %66 = llvm.icmp "eq" %65, %18 : i64
    llvm.intr.assume %66 : i1
    llvm.intr.assume %58 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%63, %59, %55, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    %67 = llvm.add %45, %17 : i64
    llvm.br ^bb6(%67 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    %68 = llvm.add %20, %17 : i64
    llvm.br ^bb1(%68 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.br ^bb10(%18 : i64)
  ^bb10(%69: i64):  // 2 preds: ^bb9, ^bb11
    %70 = llvm.icmp "slt" %69, %15 : i64
    llvm.cond_br %70, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %71 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %72 = llvm.ptrtoint %71 : !llvm.ptr to i64
    %73 = llvm.and %72, %5  : i64
    %74 = llvm.icmp "eq" %73, %18 : i64
    llvm.intr.assume %74 : i1
    %75 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %76 = llvm.ptrtoint %75 : !llvm.ptr to i64
    %77 = llvm.and %76, %5  : i64
    %78 = llvm.icmp "eq" %77, %18 : i64
    llvm.intr.assume %78 : i1
    %79 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    %80 = llvm.ptrtoint %79 : !llvm.ptr to i64
    %81 = llvm.and %80, %5  : i64
    %82 = llvm.icmp "eq" %81, %18 : i64
    llvm.intr.assume %82 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%75, %71, %79, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %83 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %84 = llvm.ptrtoint %83 : !llvm.ptr to i64
    %85 = llvm.and %84, %5  : i64
    %86 = llvm.icmp "eq" %85, %18 : i64
    llvm.intr.assume %86 : i1
    %87 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %88 = llvm.ptrtoint %87 : !llvm.ptr to i64
    %89 = llvm.and %88, %5  : i64
    %90 = llvm.icmp "eq" %89, %18 : i64
    llvm.intr.assume %90 : i1
    llvm.intr.assume %82 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%87, %83, %79, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    %91 = llvm.add %69, %17 : i64
    llvm.br ^bb10(%91 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_2_3() {
    %0 = llvm.mlir.addressof @of_c10toc11_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_c21toc22_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_c10toc11_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(31 : index) : i64
    %4 = llvm.mlir.addressof @of_c21toc22_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(53 : i32) : i32
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(49 : i32) : i32
    %8 = llvm.mlir.constant(52 : i32) : i32
    %9 = llvm.mlir.constant(1 : i32) : i32
    %10 = llvm.mlir.constant(1024 : i32) : i32
    %11 = llvm.mlir.constant(-1 : i32) : i32
    %12 = llvm.mlir.constant(10 : index) : i64
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%14 : i64)
  ^bb1(%17: i64):  // 2 preds: ^bb0, ^bb4
    %18 = llvm.icmp "slt" %17, %16 : i64
    llvm.cond_br %18, ^bb2(%14 : i64), ^bb5
  ^bb2(%19: i64):  // 2 preds: ^bb1, ^bb3
    %20 = llvm.icmp "slt" %19, %12 : i64
    llvm.cond_br %20, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    %21 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %22 = llvm.ptrtoint %21 : !llvm.ptr to i64
    %23 = llvm.and %22, %3  : i64
    %24 = llvm.icmp "eq" %23, %14 : i64
    llvm.intr.assume %24 : i1
    %25 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %26 = llvm.ptrtoint %25 : !llvm.ptr to i64
    %27 = llvm.and %26, %3  : i64
    %28 = llvm.icmp "eq" %27, %14 : i64
    llvm.intr.assume %28 : i1
    llvm.call @passthrough(%25, %21, %10) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %30 = llvm.ptrtoint %29 : !llvm.ptr to i64
    %31 = llvm.and %30, %3  : i64
    %32 = llvm.icmp "eq" %31, %14 : i64
    llvm.intr.assume %32 : i1
    %33 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %34 = llvm.ptrtoint %33 : !llvm.ptr to i64
    %35 = llvm.and %34, %3  : i64
    %36 = llvm.icmp "eq" %35, %14 : i64
    llvm.intr.assume %36 : i1
    llvm.call @passthrough(%33, %29, %10) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    %37 = llvm.add %19, %13 : i64
    llvm.br ^bb2(%37 : i64)
  ^bb4:  // pred: ^bb2
    %38 = llvm.add %17, %15 : i64
    llvm.br ^bb1(%38 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_1_2() {
    %0 = llvm.mlir.addressof @in3_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in2_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_c10toc11_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @in2_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @in3_cons_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(31 : index) : i64
    %6 = llvm.mlir.addressof @of_c10toc11_buff_0 : !llvm.ptr
    %7 = llvm.mlir.constant(50 : i32) : i32
    %8 = llvm.mlir.constant(53 : i32) : i32
    %9 = llvm.mlir.constant(48 : i32) : i32
    %10 = llvm.mlir.constant(49 : i32) : i32
    %11 = llvm.mlir.constant(52 : i32) : i32
    %12 = llvm.mlir.constant(51 : i32) : i32
    %13 = llvm.mlir.constant(1 : i32) : i32
    %14 = llvm.mlir.constant(1024 : i32) : i32
    %15 = llvm.mlir.constant(10 : index) : i64
    %16 = llvm.mlir.constant(-1 : i32) : i32
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %19 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%17 : i64)
  ^bb1(%20: i64):  // 2 preds: ^bb0, ^bb8
    %21 = llvm.icmp "slt" %20, %18 : i64
    llvm.cond_br %21, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.br ^bb3(%17 : i64)
  ^bb3(%22: i64):  // 2 preds: ^bb2, ^bb4
    %23 = llvm.icmp "slt" %22, %15 : i64
    llvm.cond_br %23, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %24 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %25 = llvm.ptrtoint %24 : !llvm.ptr to i64
    %26 = llvm.and %25, %5  : i64
    %27 = llvm.icmp "eq" %26, %17 : i64
    llvm.intr.assume %27 : i1
    %28 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    %29 = llvm.ptrtoint %28 : !llvm.ptr to i64
    %30 = llvm.and %29, %5  : i64
    %31 = llvm.icmp "eq" %30, %17 : i64
    llvm.intr.assume %31 : i1
    %32 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %33 = llvm.ptrtoint %32 : !llvm.ptr to i64
    %34 = llvm.and %33, %5  : i64
    %35 = llvm.icmp "eq" %34, %17 : i64
    llvm.intr.assume %35 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%32, %24, %28, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %37 = llvm.ptrtoint %36 : !llvm.ptr to i64
    %38 = llvm.and %37, %5  : i64
    %39 = llvm.icmp "eq" %38, %17 : i64
    llvm.intr.assume %39 : i1
    llvm.intr.assume %31 : i1
    %40 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %41 = llvm.ptrtoint %40 : !llvm.ptr to i64
    %42 = llvm.and %41, %5  : i64
    %43 = llvm.icmp "eq" %42, %17 : i64
    llvm.intr.assume %43 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%40, %36, %28, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    %44 = llvm.add %22, %19 : i64
    llvm.br ^bb3(%44 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.br ^bb6(%17 : i64)
  ^bb6(%45: i64):  // 2 preds: ^bb5, ^bb7
    %46 = llvm.icmp "slt" %45, %15 : i64
    llvm.cond_br %46, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %47 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %48 = llvm.ptrtoint %47 : !llvm.ptr to i64
    %49 = llvm.and %48, %5  : i64
    %50 = llvm.icmp "eq" %49, %17 : i64
    llvm.intr.assume %50 : i1
    %51 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    %52 = llvm.ptrtoint %51 : !llvm.ptr to i64
    %53 = llvm.and %52, %5  : i64
    %54 = llvm.icmp "eq" %53, %17 : i64
    llvm.intr.assume %54 : i1
    %55 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %56 = llvm.ptrtoint %55 : !llvm.ptr to i64
    %57 = llvm.and %56, %5  : i64
    %58 = llvm.icmp "eq" %57, %17 : i64
    llvm.intr.assume %58 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%55, %47, %51, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %59 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %60 = llvm.ptrtoint %59 : !llvm.ptr to i64
    %61 = llvm.and %60, %5  : i64
    %62 = llvm.icmp "eq" %61, %17 : i64
    llvm.intr.assume %62 : i1
    llvm.intr.assume %54 : i1
    %63 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %64 = llvm.ptrtoint %63 : !llvm.ptr to i64
    %65 = llvm.and %64, %5  : i64
    %66 = llvm.icmp "eq" %65, %17 : i64
    llvm.intr.assume %66 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%63, %59, %51, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    %67 = llvm.add %45, %19 : i64
    llvm.br ^bb6(%67 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    %68 = llvm.add %20, %19 : i64
    llvm.br ^bb1(%68 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.br ^bb10(%17 : i64)
  ^bb10(%69: i64):  // 2 preds: ^bb9, ^bb11
    %70 = llvm.icmp "slt" %69, %15 : i64
    llvm.cond_br %70, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %71 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %72 = llvm.ptrtoint %71 : !llvm.ptr to i64
    %73 = llvm.and %72, %5  : i64
    %74 = llvm.icmp "eq" %73, %17 : i64
    llvm.intr.assume %74 : i1
    %75 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    %76 = llvm.ptrtoint %75 : !llvm.ptr to i64
    %77 = llvm.and %76, %5  : i64
    %78 = llvm.icmp "eq" %77, %17 : i64
    llvm.intr.assume %78 : i1
    %79 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %80 = llvm.ptrtoint %79 : !llvm.ptr to i64
    %81 = llvm.and %80, %5  : i64
    %82 = llvm.icmp "eq" %81, %17 : i64
    llvm.intr.assume %82 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%79, %71, %75, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %83 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %84 = llvm.ptrtoint %83 : !llvm.ptr to i64
    %85 = llvm.and %84, %5  : i64
    %86 = llvm.icmp "eq" %85, %17 : i64
    llvm.intr.assume %86 : i1
    llvm.intr.assume %78 : i1
    %87 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    %88 = llvm.ptrtoint %87 : !llvm.ptr to i64
    %89 = llvm.and %88, %5  : i64
    %90 = llvm.icmp "eq" %89, %17 : i64
    llvm.intr.assume %90 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%87, %83, %75, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    %91 = llvm.add %69, %19 : i64
    llvm.br ^bb10(%91 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    llvm.return
  }
}

