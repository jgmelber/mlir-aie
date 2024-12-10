module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @in0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @in1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in3_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @in3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @in4_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in4_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in5_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @in5_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @in6_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in6_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in7_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @in7_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @in0to1_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in0to1_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in1to2_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in1to2_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in2to3_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in2to3_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in2to3_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in2to3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @out_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @out_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.mlir.global external @out_cons() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @out() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in2to3_cons() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in2to3() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in1to2() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in0to1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in7_cons() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @in7() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @in6_cons() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in6() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in5_cons() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @in5() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @in4_cons() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in4() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in3_cons() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @in3() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @in2_cons() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in2() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in1_cons() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in0_cons() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @in0() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.func @vector_scalar_mul_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @passthrough(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @vector_add_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @mean(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @core_3_5() {
    %0 = llvm.mlir.addressof @out_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in2to3_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @out_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(31 : index) : i64
    %4 = llvm.mlir.addressof @in2to3_cons_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(51 : i32) : i32
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(49 : i32) : i32
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(1 : i32) : i32
    %10 = llvm.mlir.constant(1024 : index) : i64
    %11 = llvm.mlir.constant(-1 : i32) : i32
    %12 = llvm.mlir.constant(8 : index) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %16 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%13 : i64)
  ^bb1(%17: i64):  // 2 preds: ^bb0, ^bb25
    %18 = llvm.icmp "slt" %17, %15 : i64
    llvm.cond_br %18, ^bb2(%13 : i64), ^bb26(%13 : i64)
  ^bb2(%19: i64):  // 2 preds: ^bb1, ^bb9
    %20 = llvm.icmp "slt" %19, %12 : i64
    llvm.cond_br %20, ^bb3, ^bb10
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    llvm.br ^bb4(%13 : i64)
  ^bb4(%21: i64):  // 2 preds: ^bb3, ^bb5
    %22 = llvm.icmp "slt" %21, %10 : i64
    llvm.cond_br %22, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %23 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %24 = llvm.ptrtoint %23 : !llvm.ptr to i64
    %25 = llvm.and %24, %3  : i64
    %26 = llvm.icmp "eq" %25, %13 : i64
    llvm.intr.assume %26 : i1
    %27 = llvm.getelementptr %23[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %28 = llvm.load %27 : !llvm.ptr -> i32
    %29 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %30 = llvm.ptrtoint %29 : !llvm.ptr to i64
    %31 = llvm.and %30, %3  : i64
    %32 = llvm.icmp "eq" %31, %13 : i64
    llvm.intr.assume %32 : i1
    %33 = llvm.getelementptr %29[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %28, %33 : i32, !llvm.ptr
    %34 = llvm.add %21, %14 : i64
    llvm.br ^bb4(%34 : i64)
  ^bb6:  // pred: ^bb4
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    llvm.br ^bb7(%13 : i64)
  ^bb7(%35: i64):  // 2 preds: ^bb6, ^bb8
    %36 = llvm.icmp "slt" %35, %10 : i64
    llvm.cond_br %36, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %37 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %38 = llvm.ptrtoint %37 : !llvm.ptr to i64
    %39 = llvm.and %38, %3  : i64
    %40 = llvm.icmp "eq" %39, %13 : i64
    llvm.intr.assume %40 : i1
    %41 = llvm.getelementptr %37[%35] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %42 = llvm.load %41 : !llvm.ptr -> i32
    %43 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %44 = llvm.ptrtoint %43 : !llvm.ptr to i64
    %45 = llvm.and %44, %3  : i64
    %46 = llvm.icmp "eq" %45, %13 : i64
    llvm.intr.assume %46 : i1
    %47 = llvm.getelementptr %43[%35] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %42, %47 : i32, !llvm.ptr
    %48 = llvm.add %35, %14 : i64
    llvm.intr.assume %40 : i1
    %49 = llvm.getelementptr %37[%48] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %50 = llvm.load %49 : !llvm.ptr -> i32
    llvm.intr.assume %46 : i1
    %51 = llvm.getelementptr %43[%48] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %50, %51 : i32, !llvm.ptr
    %52 = llvm.add %35, %16 : i64
    llvm.br ^bb7(%52 : i64)
  ^bb9:  // pred: ^bb7
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    %53 = llvm.add %19, %16 : i64
    llvm.br ^bb2(%53 : i64)
  ^bb10:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    llvm.br ^bb11(%13 : i64)
  ^bb11(%54: i64):  // 2 preds: ^bb10, ^bb12
    %55 = llvm.icmp "slt" %54, %10 : i64
    llvm.cond_br %55, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %56 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %57 = llvm.ptrtoint %56 : !llvm.ptr to i64
    %58 = llvm.and %57, %3  : i64
    %59 = llvm.icmp "eq" %58, %13 : i64
    llvm.intr.assume %59 : i1
    %60 = llvm.getelementptr %56[%54] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %61 = llvm.load %60 : !llvm.ptr -> i32
    %62 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %63 = llvm.ptrtoint %62 : !llvm.ptr to i64
    %64 = llvm.and %63, %3  : i64
    %65 = llvm.icmp "eq" %64, %13 : i64
    llvm.intr.assume %65 : i1
    %66 = llvm.getelementptr %62[%54] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %61, %66 : i32, !llvm.ptr
    %67 = llvm.add %54, %14 : i64
    llvm.intr.assume %59 : i1
    %68 = llvm.getelementptr %56[%67] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %69 = llvm.load %68 : !llvm.ptr -> i32
    llvm.intr.assume %65 : i1
    %70 = llvm.getelementptr %62[%67] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %69, %70 : i32, !llvm.ptr
    %71 = llvm.add %54, %16 : i64
    llvm.br ^bb11(%71 : i64)
  ^bb13:  // pred: ^bb11
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.br ^bb14(%13 : i64)
  ^bb14(%72: i64):  // 2 preds: ^bb13, ^bb21
    %73 = llvm.icmp "slt" %72, %12 : i64
    llvm.cond_br %73, ^bb15, ^bb22
  ^bb15:  // pred: ^bb14
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    llvm.br ^bb16(%13 : i64)
  ^bb16(%74: i64):  // 2 preds: ^bb15, ^bb17
    %75 = llvm.icmp "slt" %74, %10 : i64
    llvm.cond_br %75, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %76 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %77 = llvm.ptrtoint %76 : !llvm.ptr to i64
    %78 = llvm.and %77, %3  : i64
    %79 = llvm.icmp "eq" %78, %13 : i64
    llvm.intr.assume %79 : i1
    %80 = llvm.getelementptr %76[%74] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %81 = llvm.load %80 : !llvm.ptr -> i32
    %82 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %83 = llvm.ptrtoint %82 : !llvm.ptr to i64
    %84 = llvm.and %83, %3  : i64
    %85 = llvm.icmp "eq" %84, %13 : i64
    llvm.intr.assume %85 : i1
    %86 = llvm.getelementptr %82[%74] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %81, %86 : i32, !llvm.ptr
    %87 = llvm.add %74, %14 : i64
    llvm.br ^bb16(%87 : i64)
  ^bb18:  // pred: ^bb16
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    llvm.br ^bb19(%13 : i64)
  ^bb19(%88: i64):  // 2 preds: ^bb18, ^bb20
    %89 = llvm.icmp "slt" %88, %10 : i64
    llvm.cond_br %89, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %90 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %91 = llvm.ptrtoint %90 : !llvm.ptr to i64
    %92 = llvm.and %91, %3  : i64
    %93 = llvm.icmp "eq" %92, %13 : i64
    llvm.intr.assume %93 : i1
    %94 = llvm.getelementptr %90[%88] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %95 = llvm.load %94 : !llvm.ptr -> i32
    %96 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %97 = llvm.ptrtoint %96 : !llvm.ptr to i64
    %98 = llvm.and %97, %3  : i64
    %99 = llvm.icmp "eq" %98, %13 : i64
    llvm.intr.assume %99 : i1
    %100 = llvm.getelementptr %96[%88] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %95, %100 : i32, !llvm.ptr
    %101 = llvm.add %88, %14 : i64
    llvm.intr.assume %93 : i1
    %102 = llvm.getelementptr %90[%101] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %103 = llvm.load %102 : !llvm.ptr -> i32
    llvm.intr.assume %99 : i1
    %104 = llvm.getelementptr %96[%101] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %103, %104 : i32, !llvm.ptr
    %105 = llvm.add %88, %16 : i64
    llvm.br ^bb19(%105 : i64)
  ^bb21:  // pred: ^bb19
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    %106 = llvm.add %72, %16 : i64
    llvm.br ^bb14(%106 : i64)
  ^bb22:  // pred: ^bb14
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    llvm.br ^bb23(%13 : i64)
  ^bb23(%107: i64):  // 2 preds: ^bb22, ^bb24
    %108 = llvm.icmp "slt" %107, %10 : i64
    llvm.cond_br %108, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %109 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %110 = llvm.ptrtoint %109 : !llvm.ptr to i64
    %111 = llvm.and %110, %3  : i64
    %112 = llvm.icmp "eq" %111, %13 : i64
    llvm.intr.assume %112 : i1
    %113 = llvm.getelementptr %109[%107] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %114 = llvm.load %113 : !llvm.ptr -> i32
    %115 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %116 = llvm.ptrtoint %115 : !llvm.ptr to i64
    %117 = llvm.and %116, %3  : i64
    %118 = llvm.icmp "eq" %117, %13 : i64
    llvm.intr.assume %118 : i1
    %119 = llvm.getelementptr %115[%107] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %114, %119 : i32, !llvm.ptr
    %120 = llvm.add %107, %14 : i64
    llvm.intr.assume %112 : i1
    %121 = llvm.getelementptr %109[%120] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %122 = llvm.load %121 : !llvm.ptr -> i32
    llvm.intr.assume %118 : i1
    %123 = llvm.getelementptr %115[%120] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %122, %123 : i32, !llvm.ptr
    %124 = llvm.add %107, %16 : i64
    llvm.br ^bb23(%124 : i64)
  ^bb25:  // pred: ^bb23
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    %125 = llvm.add %17, %16 : i64
    llvm.br ^bb1(%125 : i64)
  ^bb26(%126: i64):  // 2 preds: ^bb1, ^bb33
    %127 = llvm.icmp "slt" %126, %12 : i64
    llvm.cond_br %127, ^bb27, ^bb34
  ^bb27:  // pred: ^bb26
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    llvm.br ^bb28(%13 : i64)
  ^bb28(%128: i64):  // 2 preds: ^bb27, ^bb29
    %129 = llvm.icmp "slt" %128, %10 : i64
    llvm.cond_br %129, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %130 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %131 = llvm.ptrtoint %130 : !llvm.ptr to i64
    %132 = llvm.and %131, %3  : i64
    %133 = llvm.icmp "eq" %132, %13 : i64
    llvm.intr.assume %133 : i1
    %134 = llvm.getelementptr %130[%128] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %135 = llvm.load %134 : !llvm.ptr -> i32
    %136 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %137 = llvm.ptrtoint %136 : !llvm.ptr to i64
    %138 = llvm.and %137, %3  : i64
    %139 = llvm.icmp "eq" %138, %13 : i64
    llvm.intr.assume %139 : i1
    %140 = llvm.getelementptr %136[%128] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %135, %140 : i32, !llvm.ptr
    %141 = llvm.add %128, %14 : i64
    llvm.br ^bb28(%141 : i64)
  ^bb30:  // pred: ^bb28
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    llvm.br ^bb31(%13 : i64)
  ^bb31(%142: i64):  // 2 preds: ^bb30, ^bb32
    %143 = llvm.icmp "slt" %142, %10 : i64
    llvm.cond_br %143, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %144 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %145 = llvm.ptrtoint %144 : !llvm.ptr to i64
    %146 = llvm.and %145, %3  : i64
    %147 = llvm.icmp "eq" %146, %13 : i64
    llvm.intr.assume %147 : i1
    %148 = llvm.getelementptr %144[%142] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %149 = llvm.load %148 : !llvm.ptr -> i32
    %150 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %151 = llvm.ptrtoint %150 : !llvm.ptr to i64
    %152 = llvm.and %151, %3  : i64
    %153 = llvm.icmp "eq" %152, %13 : i64
    llvm.intr.assume %153 : i1
    %154 = llvm.getelementptr %150[%142] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %149, %154 : i32, !llvm.ptr
    %155 = llvm.add %142, %14 : i64
    llvm.intr.assume %147 : i1
    %156 = llvm.getelementptr %144[%155] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %157 = llvm.load %156 : !llvm.ptr -> i32
    llvm.intr.assume %153 : i1
    %158 = llvm.getelementptr %150[%155] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %157, %158 : i32, !llvm.ptr
    %159 = llvm.add %142, %16 : i64
    llvm.br ^bb31(%159 : i64)
  ^bb33:  // pred: ^bb31
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    %160 = llvm.add %126, %16 : i64
    llvm.br ^bb26(%160 : i64)
  ^bb34:  // pred: ^bb26
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    llvm.br ^bb35(%13 : i64)
  ^bb35(%161: i64):  // 2 preds: ^bb34, ^bb36
    %162 = llvm.icmp "slt" %161, %10 : i64
    llvm.cond_br %162, ^bb36, ^bb37
  ^bb36:  // pred: ^bb35
    %163 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %164 = llvm.ptrtoint %163 : !llvm.ptr to i64
    %165 = llvm.and %164, %3  : i64
    %166 = llvm.icmp "eq" %165, %13 : i64
    llvm.intr.assume %166 : i1
    %167 = llvm.getelementptr %163[%161] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %168 = llvm.load %167 : !llvm.ptr -> i32
    %169 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %170 = llvm.ptrtoint %169 : !llvm.ptr to i64
    %171 = llvm.and %170, %3  : i64
    %172 = llvm.icmp "eq" %171, %13 : i64
    llvm.intr.assume %172 : i1
    %173 = llvm.getelementptr %169[%161] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %168, %173 : i32, !llvm.ptr
    %174 = llvm.add %161, %14 : i64
    llvm.intr.assume %166 : i1
    %175 = llvm.getelementptr %163[%174] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %176 = llvm.load %175 : !llvm.ptr -> i32
    llvm.intr.assume %172 : i1
    %177 = llvm.getelementptr %169[%174] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %176, %177 : i32, !llvm.ptr
    %178 = llvm.add %161, %16 : i64
    llvm.br ^bb35(%178 : i64)
  ^bb37:  // pred: ^bb35
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_0_4() {
    %0 = llvm.mlir.addressof @in2to3_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in1to2_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @in2to3_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(31 : index) : i64
    %4 = llvm.mlir.addressof @in1to2_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(49 : i32) : i32
    %6 = llvm.mlir.constant(0 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(1 : i32) : i32
    %9 = llvm.mlir.constant(1024 : index) : i64
    %10 = llvm.mlir.constant(-1 : i32) : i32
    %11 = llvm.mlir.constant(8 : index) : i64
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %15 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%12 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb25
    %17 = llvm.icmp "slt" %16, %14 : i64
    llvm.cond_br %17, ^bb2(%12 : i64), ^bb26(%12 : i64)
  ^bb2(%18: i64):  // 2 preds: ^bb1, ^bb9
    %19 = llvm.icmp "slt" %18, %11 : i64
    llvm.cond_br %19, ^bb3, ^bb10
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %10) : (i32, i32) -> ()
    llvm.br ^bb4(%12 : i64)
  ^bb4(%20: i64):  // 2 preds: ^bb3, ^bb5
    %21 = llvm.icmp "slt" %20, %9 : i64
    llvm.cond_br %21, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %22 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %23 = llvm.ptrtoint %22 : !llvm.ptr to i64
    %24 = llvm.and %23, %3  : i64
    %25 = llvm.icmp "eq" %24, %12 : i64
    llvm.intr.assume %25 : i1
    %26 = llvm.getelementptr %22[%20] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %27 = llvm.load %26 : !llvm.ptr -> i32
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %29 = llvm.ptrtoint %28 : !llvm.ptr to i64
    %30 = llvm.and %29, %3  : i64
    %31 = llvm.icmp "eq" %30, %12 : i64
    llvm.intr.assume %31 : i1
    %32 = llvm.getelementptr %28[%20] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %27, %32 : i32, !llvm.ptr
    %33 = llvm.add %20, %13 : i64
    llvm.br ^bb4(%33 : i64)
  ^bb6:  // pred: ^bb4
    llvm.call @llvm.aie2.release(%6, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %10) : (i32, i32) -> ()
    llvm.br ^bb7(%12 : i64)
  ^bb7(%34: i64):  // 2 preds: ^bb6, ^bb8
    %35 = llvm.icmp "slt" %34, %9 : i64
    llvm.cond_br %35, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %36 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %37 = llvm.ptrtoint %36 : !llvm.ptr to i64
    %38 = llvm.and %37, %3  : i64
    %39 = llvm.icmp "eq" %38, %12 : i64
    llvm.intr.assume %39 : i1
    %40 = llvm.getelementptr %36[%34] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %41 = llvm.load %40 : !llvm.ptr -> i32
    %42 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %43 = llvm.ptrtoint %42 : !llvm.ptr to i64
    %44 = llvm.and %43, %3  : i64
    %45 = llvm.icmp "eq" %44, %12 : i64
    llvm.intr.assume %45 : i1
    %46 = llvm.getelementptr %42[%34] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %41, %46 : i32, !llvm.ptr
    %47 = llvm.add %34, %13 : i64
    llvm.intr.assume %39 : i1
    %48 = llvm.getelementptr %36[%47] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %49 = llvm.load %48 : !llvm.ptr -> i32
    llvm.intr.assume %45 : i1
    %50 = llvm.getelementptr %42[%47] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %49, %50 : i32, !llvm.ptr
    %51 = llvm.add %34, %15 : i64
    llvm.br ^bb7(%51 : i64)
  ^bb9:  // pred: ^bb7
    llvm.call @llvm.aie2.release(%6, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %8) : (i32, i32) -> ()
    %52 = llvm.add %18, %15 : i64
    llvm.br ^bb2(%52 : i64)
  ^bb10:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %10) : (i32, i32) -> ()
    llvm.br ^bb11(%12 : i64)
  ^bb11(%53: i64):  // 2 preds: ^bb10, ^bb12
    %54 = llvm.icmp "slt" %53, %9 : i64
    llvm.cond_br %54, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %55 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %56 = llvm.ptrtoint %55 : !llvm.ptr to i64
    %57 = llvm.and %56, %3  : i64
    %58 = llvm.icmp "eq" %57, %12 : i64
    llvm.intr.assume %58 : i1
    %59 = llvm.getelementptr %55[%53] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %60 = llvm.load %59 : !llvm.ptr -> i32
    %61 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %62 = llvm.ptrtoint %61 : !llvm.ptr to i64
    %63 = llvm.and %62, %3  : i64
    %64 = llvm.icmp "eq" %63, %12 : i64
    llvm.intr.assume %64 : i1
    %65 = llvm.getelementptr %61[%53] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %60, %65 : i32, !llvm.ptr
    %66 = llvm.add %53, %13 : i64
    llvm.intr.assume %58 : i1
    %67 = llvm.getelementptr %55[%66] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %68 = llvm.load %67 : !llvm.ptr -> i32
    llvm.intr.assume %64 : i1
    %69 = llvm.getelementptr %61[%66] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %68, %69 : i32, !llvm.ptr
    %70 = llvm.add %53, %15 : i64
    llvm.br ^bb11(%70 : i64)
  ^bb13:  // pred: ^bb11
    llvm.call @llvm.aie2.release(%6, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %8) : (i32, i32) -> ()
    llvm.br ^bb14(%12 : i64)
  ^bb14(%71: i64):  // 2 preds: ^bb13, ^bb21
    %72 = llvm.icmp "slt" %71, %11 : i64
    llvm.cond_br %72, ^bb15, ^bb22
  ^bb15:  // pred: ^bb14
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %10) : (i32, i32) -> ()
    llvm.br ^bb16(%12 : i64)
  ^bb16(%73: i64):  // 2 preds: ^bb15, ^bb17
    %74 = llvm.icmp "slt" %73, %9 : i64
    llvm.cond_br %74, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %75 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %76 = llvm.ptrtoint %75 : !llvm.ptr to i64
    %77 = llvm.and %76, %3  : i64
    %78 = llvm.icmp "eq" %77, %12 : i64
    llvm.intr.assume %78 : i1
    %79 = llvm.getelementptr %75[%73] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %80 = llvm.load %79 : !llvm.ptr -> i32
    %81 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %82 = llvm.ptrtoint %81 : !llvm.ptr to i64
    %83 = llvm.and %82, %3  : i64
    %84 = llvm.icmp "eq" %83, %12 : i64
    llvm.intr.assume %84 : i1
    %85 = llvm.getelementptr %81[%73] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %80, %85 : i32, !llvm.ptr
    %86 = llvm.add %73, %13 : i64
    llvm.br ^bb16(%86 : i64)
  ^bb18:  // pred: ^bb16
    llvm.call @llvm.aie2.release(%6, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %10) : (i32, i32) -> ()
    llvm.br ^bb19(%12 : i64)
  ^bb19(%87: i64):  // 2 preds: ^bb18, ^bb20
    %88 = llvm.icmp "slt" %87, %9 : i64
    llvm.cond_br %88, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %89 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %90 = llvm.ptrtoint %89 : !llvm.ptr to i64
    %91 = llvm.and %90, %3  : i64
    %92 = llvm.icmp "eq" %91, %12 : i64
    llvm.intr.assume %92 : i1
    %93 = llvm.getelementptr %89[%87] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %94 = llvm.load %93 : !llvm.ptr -> i32
    %95 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %96 = llvm.ptrtoint %95 : !llvm.ptr to i64
    %97 = llvm.and %96, %3  : i64
    %98 = llvm.icmp "eq" %97, %12 : i64
    llvm.intr.assume %98 : i1
    %99 = llvm.getelementptr %95[%87] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %94, %99 : i32, !llvm.ptr
    %100 = llvm.add %87, %13 : i64
    llvm.intr.assume %92 : i1
    %101 = llvm.getelementptr %89[%100] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %102 = llvm.load %101 : !llvm.ptr -> i32
    llvm.intr.assume %98 : i1
    %103 = llvm.getelementptr %95[%100] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %102, %103 : i32, !llvm.ptr
    %104 = llvm.add %87, %15 : i64
    llvm.br ^bb19(%104 : i64)
  ^bb21:  // pred: ^bb19
    llvm.call @llvm.aie2.release(%6, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %8) : (i32, i32) -> ()
    %105 = llvm.add %71, %15 : i64
    llvm.br ^bb14(%105 : i64)
  ^bb22:  // pred: ^bb14
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %10) : (i32, i32) -> ()
    llvm.br ^bb23(%12 : i64)
  ^bb23(%106: i64):  // 2 preds: ^bb22, ^bb24
    %107 = llvm.icmp "slt" %106, %9 : i64
    llvm.cond_br %107, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %108 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %109 = llvm.ptrtoint %108 : !llvm.ptr to i64
    %110 = llvm.and %109, %3  : i64
    %111 = llvm.icmp "eq" %110, %12 : i64
    llvm.intr.assume %111 : i1
    %112 = llvm.getelementptr %108[%106] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %113 = llvm.load %112 : !llvm.ptr -> i32
    %114 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %115 = llvm.ptrtoint %114 : !llvm.ptr to i64
    %116 = llvm.and %115, %3  : i64
    %117 = llvm.icmp "eq" %116, %12 : i64
    llvm.intr.assume %117 : i1
    %118 = llvm.getelementptr %114[%106] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %113, %118 : i32, !llvm.ptr
    %119 = llvm.add %106, %13 : i64
    llvm.intr.assume %111 : i1
    %120 = llvm.getelementptr %108[%119] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %121 = llvm.load %120 : !llvm.ptr -> i32
    llvm.intr.assume %117 : i1
    %122 = llvm.getelementptr %114[%119] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %121, %122 : i32, !llvm.ptr
    %123 = llvm.add %106, %15 : i64
    llvm.br ^bb23(%123 : i64)
  ^bb25:  // pred: ^bb23
    llvm.call @llvm.aie2.release(%6, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %8) : (i32, i32) -> ()
    %124 = llvm.add %16, %15 : i64
    llvm.br ^bb1(%124 : i64)
  ^bb26(%125: i64):  // 2 preds: ^bb1, ^bb33
    %126 = llvm.icmp "slt" %125, %11 : i64
    llvm.cond_br %126, ^bb27, ^bb34
  ^bb27:  // pred: ^bb26
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %10) : (i32, i32) -> ()
    llvm.br ^bb28(%12 : i64)
  ^bb28(%127: i64):  // 2 preds: ^bb27, ^bb29
    %128 = llvm.icmp "slt" %127, %9 : i64
    llvm.cond_br %128, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %129 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %130 = llvm.ptrtoint %129 : !llvm.ptr to i64
    %131 = llvm.and %130, %3  : i64
    %132 = llvm.icmp "eq" %131, %12 : i64
    llvm.intr.assume %132 : i1
    %133 = llvm.getelementptr %129[%127] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %134 = llvm.load %133 : !llvm.ptr -> i32
    %135 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %136 = llvm.ptrtoint %135 : !llvm.ptr to i64
    %137 = llvm.and %136, %3  : i64
    %138 = llvm.icmp "eq" %137, %12 : i64
    llvm.intr.assume %138 : i1
    %139 = llvm.getelementptr %135[%127] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %134, %139 : i32, !llvm.ptr
    %140 = llvm.add %127, %13 : i64
    llvm.br ^bb28(%140 : i64)
  ^bb30:  // pred: ^bb28
    llvm.call @llvm.aie2.release(%6, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %10) : (i32, i32) -> ()
    llvm.br ^bb31(%12 : i64)
  ^bb31(%141: i64):  // 2 preds: ^bb30, ^bb32
    %142 = llvm.icmp "slt" %141, %9 : i64
    llvm.cond_br %142, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %143 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %144 = llvm.ptrtoint %143 : !llvm.ptr to i64
    %145 = llvm.and %144, %3  : i64
    %146 = llvm.icmp "eq" %145, %12 : i64
    llvm.intr.assume %146 : i1
    %147 = llvm.getelementptr %143[%141] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %148 = llvm.load %147 : !llvm.ptr -> i32
    %149 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %150 = llvm.ptrtoint %149 : !llvm.ptr to i64
    %151 = llvm.and %150, %3  : i64
    %152 = llvm.icmp "eq" %151, %12 : i64
    llvm.intr.assume %152 : i1
    %153 = llvm.getelementptr %149[%141] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %148, %153 : i32, !llvm.ptr
    %154 = llvm.add %141, %13 : i64
    llvm.intr.assume %146 : i1
    %155 = llvm.getelementptr %143[%154] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %156 = llvm.load %155 : !llvm.ptr -> i32
    llvm.intr.assume %152 : i1
    %157 = llvm.getelementptr %149[%154] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %156, %157 : i32, !llvm.ptr
    %158 = llvm.add %141, %15 : i64
    llvm.br ^bb31(%158 : i64)
  ^bb33:  // pred: ^bb31
    llvm.call @llvm.aie2.release(%6, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %8) : (i32, i32) -> ()
    %159 = llvm.add %125, %15 : i64
    llvm.br ^bb26(%159 : i64)
  ^bb34:  // pred: ^bb26
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %10) : (i32, i32) -> ()
    llvm.br ^bb35(%12 : i64)
  ^bb35(%160: i64):  // 2 preds: ^bb34, ^bb36
    %161 = llvm.icmp "slt" %160, %9 : i64
    llvm.cond_br %161, ^bb36, ^bb37
  ^bb36:  // pred: ^bb35
    %162 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %163 = llvm.ptrtoint %162 : !llvm.ptr to i64
    %164 = llvm.and %163, %3  : i64
    %165 = llvm.icmp "eq" %164, %12 : i64
    llvm.intr.assume %165 : i1
    %166 = llvm.getelementptr %162[%160] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %167 = llvm.load %166 : !llvm.ptr -> i32
    %168 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %169 = llvm.ptrtoint %168 : !llvm.ptr to i64
    %170 = llvm.and %169, %3  : i64
    %171 = llvm.icmp "eq" %170, %12 : i64
    llvm.intr.assume %171 : i1
    %172 = llvm.getelementptr %168[%160] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %167, %172 : i32, !llvm.ptr
    %173 = llvm.add %160, %13 : i64
    llvm.intr.assume %165 : i1
    %174 = llvm.getelementptr %162[%173] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %175 = llvm.load %174 : !llvm.ptr -> i32
    llvm.intr.assume %171 : i1
    %176 = llvm.getelementptr %168[%173] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %175, %176 : i32, !llvm.ptr
    %177 = llvm.add %160, %15 : i64
    llvm.br ^bb35(%177 : i64)
  ^bb37:  // pred: ^bb35
    llvm.call @llvm.aie2.release(%6, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %8) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_0_3() {
    %0 = llvm.mlir.addressof @in0to1_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in1to2_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @in0to1_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(31 : index) : i64
    %4 = llvm.mlir.addressof @in1to2_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(49 : i32) : i32
    %6 = llvm.mlir.constant(4 : i32) : i32
    %7 = llvm.mlir.constant(5 : i32) : i32
    %8 = llvm.mlir.constant(48 : i32) : i32
    %9 = llvm.mlir.constant(1 : i32) : i32
    %10 = llvm.mlir.constant(1024 : i32) : i32
    %11 = llvm.mlir.constant(-1 : i32) : i32
    %12 = llvm.mlir.constant(8 : index) : i64
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%14 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb7
    %17 = llvm.icmp "slt" %16, %15 : i64
    llvm.cond_br %17, ^bb2(%14 : i64), ^bb8(%14 : i64)
  ^bb2(%18: i64):  // 2 preds: ^bb1, ^bb3
    %19 = llvm.icmp "slt" %18, %12 : i64
    llvm.cond_br %19, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    %20 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.and %21, %3  : i64
    %23 = llvm.icmp "eq" %22, %14 : i64
    llvm.intr.assume %23 : i1
    %24 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %25 = llvm.ptrtoint %24 : !llvm.ptr to i64
    %26 = llvm.and %25, %3  : i64
    %27 = llvm.icmp "eq" %26, %14 : i64
    llvm.intr.assume %27 : i1
    llvm.call @passthrough(%24, %20, %10) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    %28 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %29 = llvm.ptrtoint %28 : !llvm.ptr to i64
    %30 = llvm.and %29, %3  : i64
    %31 = llvm.icmp "eq" %30, %14 : i64
    llvm.intr.assume %31 : i1
    %32 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %33 = llvm.ptrtoint %32 : !llvm.ptr to i64
    %34 = llvm.and %33, %3  : i64
    %35 = llvm.icmp "eq" %34, %14 : i64
    llvm.intr.assume %35 : i1
    llvm.call @passthrough(%32, %28, %10) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    %36 = llvm.add %18, %13 : i64
    llvm.br ^bb2(%36 : i64)
  ^bb4:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    %37 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %38 = llvm.ptrtoint %37 : !llvm.ptr to i64
    %39 = llvm.and %38, %3  : i64
    %40 = llvm.icmp "eq" %39, %14 : i64
    llvm.intr.assume %40 : i1
    %41 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %42 = llvm.ptrtoint %41 : !llvm.ptr to i64
    %43 = llvm.and %42, %3  : i64
    %44 = llvm.icmp "eq" %43, %14 : i64
    llvm.intr.assume %44 : i1
    llvm.call @passthrough(%41, %37, %10) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.br ^bb5(%14 : i64)
  ^bb5(%45: i64):  // 2 preds: ^bb4, ^bb6
    %46 = llvm.icmp "slt" %45, %12 : i64
    llvm.cond_br %46, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    %47 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %48 = llvm.ptrtoint %47 : !llvm.ptr to i64
    %49 = llvm.and %48, %3  : i64
    %50 = llvm.icmp "eq" %49, %14 : i64
    llvm.intr.assume %50 : i1
    %51 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %52 = llvm.ptrtoint %51 : !llvm.ptr to i64
    %53 = llvm.and %52, %3  : i64
    %54 = llvm.icmp "eq" %53, %14 : i64
    llvm.intr.assume %54 : i1
    llvm.call @passthrough(%51, %47, %10) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    llvm.intr.assume %40 : i1
    llvm.intr.assume %44 : i1
    llvm.call @passthrough(%41, %37, %10) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    %55 = llvm.add %45, %13 : i64
    llvm.br ^bb5(%55 : i64)
  ^bb7:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    %56 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %57 = llvm.ptrtoint %56 : !llvm.ptr to i64
    %58 = llvm.and %57, %3  : i64
    %59 = llvm.icmp "eq" %58, %14 : i64
    llvm.intr.assume %59 : i1
    %60 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %61 = llvm.ptrtoint %60 : !llvm.ptr to i64
    %62 = llvm.and %61, %3  : i64
    %63 = llvm.icmp "eq" %62, %14 : i64
    llvm.intr.assume %63 : i1
    llvm.call @passthrough(%60, %56, %10) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    %64 = llvm.add %16, %13 : i64
    llvm.br ^bb1(%64 : i64)
  ^bb8(%65: i64):  // 2 preds: ^bb1, ^bb9
    %66 = llvm.icmp "slt" %65, %12 : i64
    llvm.cond_br %66, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    %67 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %68 = llvm.ptrtoint %67 : !llvm.ptr to i64
    %69 = llvm.and %68, %3  : i64
    %70 = llvm.icmp "eq" %69, %14 : i64
    llvm.intr.assume %70 : i1
    %71 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %72 = llvm.ptrtoint %71 : !llvm.ptr to i64
    %73 = llvm.and %72, %3  : i64
    %74 = llvm.icmp "eq" %73, %14 : i64
    llvm.intr.assume %74 : i1
    llvm.call @passthrough(%71, %67, %10) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    %75 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %76 = llvm.ptrtoint %75 : !llvm.ptr to i64
    %77 = llvm.and %76, %3  : i64
    %78 = llvm.icmp "eq" %77, %14 : i64
    llvm.intr.assume %78 : i1
    %79 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %80 = llvm.ptrtoint %79 : !llvm.ptr to i64
    %81 = llvm.and %80, %3  : i64
    %82 = llvm.icmp "eq" %81, %14 : i64
    llvm.intr.assume %82 : i1
    llvm.call @passthrough(%79, %75, %10) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    %83 = llvm.add %65, %13 : i64
    llvm.br ^bb8(%83 : i64)
  ^bb10:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    %84 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %85 = llvm.ptrtoint %84 : !llvm.ptr to i64
    %86 = llvm.and %85, %3  : i64
    %87 = llvm.icmp "eq" %86, %14 : i64
    llvm.intr.assume %87 : i1
    %88 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %89 = llvm.ptrtoint %88 : !llvm.ptr to i64
    %90 = llvm.and %89, %3  : i64
    %91 = llvm.icmp "eq" %90, %14 : i64
    llvm.intr.assume %91 : i1
    llvm.call @passthrough(%88, %84, %10) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_0_2() {
    %0 = llvm.mlir.addressof @in0_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in1_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @in0to1_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @in0_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @in1_cons_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(31 : index) : i64
    %6 = llvm.mlir.addressof @in0to1_buff_0 : !llvm.ptr
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(53 : i32) : i32
    %9 = llvm.mlir.constant(50 : i32) : i32
    %10 = llvm.mlir.constant(51 : i32) : i32
    %11 = llvm.mlir.constant(52 : i32) : i32
    %12 = llvm.mlir.constant(49 : i32) : i32
    %13 = llvm.mlir.constant(1 : i32) : i32
    %14 = llvm.mlir.constant(1024 : i32) : i32
    %15 = llvm.mlir.constant(8 : index) : i64
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
    %24 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %25 = llvm.ptrtoint %24 : !llvm.ptr to i64
    %26 = llvm.and %25, %5  : i64
    %27 = llvm.icmp "eq" %26, %17 : i64
    llvm.intr.assume %27 : i1
    %28 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %29 = llvm.ptrtoint %28 : !llvm.ptr to i64
    %30 = llvm.and %29, %5  : i64
    %31 = llvm.icmp "eq" %30, %17 : i64
    llvm.intr.assume %31 : i1
    %32 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x i32>
    %33 = llvm.ptrtoint %32 : !llvm.ptr to i64
    %34 = llvm.and %33, %5  : i64
    %35 = llvm.icmp "eq" %34, %17 : i64
    llvm.intr.assume %35 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%28, %24, %32, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %37 = llvm.ptrtoint %36 : !llvm.ptr to i64
    %38 = llvm.and %37, %5  : i64
    %39 = llvm.icmp "eq" %38, %17 : i64
    llvm.intr.assume %39 : i1
    %40 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %41 = llvm.ptrtoint %40 : !llvm.ptr to i64
    %42 = llvm.and %41, %5  : i64
    %43 = llvm.icmp "eq" %42, %17 : i64
    llvm.intr.assume %43 : i1
    llvm.intr.assume %35 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%40, %36, %32, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    %44 = llvm.add %22, %19 : i64
    llvm.br ^bb3(%44 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %45 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %46 = llvm.ptrtoint %45 : !llvm.ptr to i64
    %47 = llvm.and %46, %5  : i64
    %48 = llvm.icmp "eq" %47, %17 : i64
    llvm.intr.assume %48 : i1
    %49 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %50 = llvm.ptrtoint %49 : !llvm.ptr to i64
    %51 = llvm.and %50, %5  : i64
    %52 = llvm.icmp "eq" %51, %17 : i64
    llvm.intr.assume %52 : i1
    %53 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x i32>
    %54 = llvm.ptrtoint %53 : !llvm.ptr to i64
    %55 = llvm.and %54, %5  : i64
    %56 = llvm.icmp "eq" %55, %17 : i64
    llvm.intr.assume %56 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%49, %45, %53, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.br ^bb6(%17 : i64)
  ^bb6(%57: i64):  // 2 preds: ^bb5, ^bb7
    %58 = llvm.icmp "slt" %57, %15 : i64
    llvm.cond_br %58, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %59 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %60 = llvm.ptrtoint %59 : !llvm.ptr to i64
    %61 = llvm.and %60, %5  : i64
    %62 = llvm.icmp "eq" %61, %17 : i64
    llvm.intr.assume %62 : i1
    %63 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %64 = llvm.ptrtoint %63 : !llvm.ptr to i64
    %65 = llvm.and %64, %5  : i64
    %66 = llvm.icmp "eq" %65, %17 : i64
    llvm.intr.assume %66 : i1
    %67 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x i32>
    %68 = llvm.ptrtoint %67 : !llvm.ptr to i64
    %69 = llvm.and %68, %5  : i64
    %70 = llvm.icmp "eq" %69, %17 : i64
    llvm.intr.assume %70 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%63, %59, %67, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    llvm.intr.assume %48 : i1
    llvm.intr.assume %52 : i1
    llvm.intr.assume %70 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%49, %45, %67, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    %71 = llvm.add %57, %19 : i64
    llvm.br ^bb6(%71 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %72 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %73 = llvm.ptrtoint %72 : !llvm.ptr to i64
    %74 = llvm.and %73, %5  : i64
    %75 = llvm.icmp "eq" %74, %17 : i64
    llvm.intr.assume %75 : i1
    %76 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %77 = llvm.ptrtoint %76 : !llvm.ptr to i64
    %78 = llvm.and %77, %5  : i64
    %79 = llvm.icmp "eq" %78, %17 : i64
    llvm.intr.assume %79 : i1
    %80 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x i32>
    %81 = llvm.ptrtoint %80 : !llvm.ptr to i64
    %82 = llvm.and %81, %5  : i64
    %83 = llvm.icmp "eq" %82, %17 : i64
    llvm.intr.assume %83 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%76, %72, %80, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    %84 = llvm.add %20, %19 : i64
    llvm.br ^bb1(%84 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.br ^bb10(%17 : i64)
  ^bb10(%85: i64):  // 2 preds: ^bb9, ^bb11
    %86 = llvm.icmp "slt" %85, %15 : i64
    llvm.cond_br %86, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %87 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %88 = llvm.ptrtoint %87 : !llvm.ptr to i64
    %89 = llvm.and %88, %5  : i64
    %90 = llvm.icmp "eq" %89, %17 : i64
    llvm.intr.assume %90 : i1
    %91 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %92 = llvm.ptrtoint %91 : !llvm.ptr to i64
    %93 = llvm.and %92, %5  : i64
    %94 = llvm.icmp "eq" %93, %17 : i64
    llvm.intr.assume %94 : i1
    %95 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x i32>
    %96 = llvm.ptrtoint %95 : !llvm.ptr to i64
    %97 = llvm.and %96, %5  : i64
    %98 = llvm.icmp "eq" %97, %17 : i64
    llvm.intr.assume %98 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%91, %87, %95, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %99 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %100 = llvm.ptrtoint %99 : !llvm.ptr to i64
    %101 = llvm.and %100, %5  : i64
    %102 = llvm.icmp "eq" %101, %17 : i64
    llvm.intr.assume %102 : i1
    %103 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %104 = llvm.ptrtoint %103 : !llvm.ptr to i64
    %105 = llvm.and %104, %5  : i64
    %106 = llvm.icmp "eq" %105, %17 : i64
    llvm.intr.assume %106 : i1
    llvm.intr.assume %98 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%103, %99, %95, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    %107 = llvm.add %85, %19 : i64
    llvm.br ^bb10(%107 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %108 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %109 = llvm.ptrtoint %108 : !llvm.ptr to i64
    %110 = llvm.and %109, %5  : i64
    %111 = llvm.icmp "eq" %110, %17 : i64
    llvm.intr.assume %111 : i1
    %112 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %113 = llvm.ptrtoint %112 : !llvm.ptr to i64
    %114 = llvm.and %113, %5  : i64
    %115 = llvm.icmp "eq" %114, %17 : i64
    llvm.intr.assume %115 : i1
    %116 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x i32>
    %117 = llvm.ptrtoint %116 : !llvm.ptr to i64
    %118 = llvm.and %117, %5  : i64
    %119 = llvm.icmp "eq" %118, %17 : i64
    llvm.intr.assume %119 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%112, %108, %116, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    llvm.return
  }
}

