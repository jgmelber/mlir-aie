module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @infactor_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @infactor_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @in1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in0to1_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in0to1_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in1to2_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in1to2_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in2to3_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in2to3_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
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
  llvm.mlir.global external @in2to3() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in1to2() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in0to1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in1_cons() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @infactor_cons() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @infactor() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @in0_cons() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in0() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.func @vector_scalar_mul_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @passthrough(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @vector_add_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @mean(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @core_0_5() {
    %0 = llvm.mlir.addressof @out_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in2to3_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @out_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(31 : index) : i64
    %4 = llvm.mlir.addressof @in2to3_buff_0 : !llvm.ptr
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
    %0 = llvm.mlir.addressof @infactor_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in0_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @in0to1_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @in0_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @infactor_cons_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(31 : index) : i64
    %6 = llvm.mlir.addressof @in0to1_buff_0 : !llvm.ptr
    %7 = llvm.mlir.constant(50 : i32) : i32
    %8 = llvm.mlir.constant(53 : i32) : i32
    %9 = llvm.mlir.constant(48 : i32) : i32
    %10 = llvm.mlir.constant(49 : i32) : i32
    %11 = llvm.mlir.constant(52 : i32) : i32
    %12 = llvm.mlir.constant(51 : i32) : i32
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
    %28 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x i32>
    %29 = llvm.ptrtoint %28 : !llvm.ptr to i64
    %30 = llvm.and %29, %5  : i64
    %31 = llvm.icmp "eq" %30, %17 : i64
    llvm.intr.assume %31 : i1
    %32 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %33 = llvm.ptrtoint %32 : !llvm.ptr to i64
    %34 = llvm.and %33, %5  : i64
    %35 = llvm.icmp "eq" %34, %17 : i64
    llvm.intr.assume %35 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%32, %24, %28, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %37 = llvm.ptrtoint %36 : !llvm.ptr to i64
    %38 = llvm.and %37, %5  : i64
    %39 = llvm.icmp "eq" %38, %17 : i64
    llvm.intr.assume %39 : i1
    llvm.intr.assume %31 : i1
    %40 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
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
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %45 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %46 = llvm.ptrtoint %45 : !llvm.ptr to i64
    %47 = llvm.and %46, %5  : i64
    %48 = llvm.icmp "eq" %47, %17 : i64
    llvm.intr.assume %48 : i1
    %49 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x i32>
    %50 = llvm.ptrtoint %49 : !llvm.ptr to i64
    %51 = llvm.and %50, %5  : i64
    %52 = llvm.icmp "eq" %51, %17 : i64
    llvm.intr.assume %52 : i1
    %53 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %54 = llvm.ptrtoint %53 : !llvm.ptr to i64
    %55 = llvm.and %54, %5  : i64
    %56 = llvm.icmp "eq" %55, %17 : i64
    llvm.intr.assume %56 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%53, %45, %49, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
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
    %63 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x i32>
    %64 = llvm.ptrtoint %63 : !llvm.ptr to i64
    %65 = llvm.and %64, %5  : i64
    %66 = llvm.icmp "eq" %65, %17 : i64
    llvm.intr.assume %66 : i1
    %67 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %68 = llvm.ptrtoint %67 : !llvm.ptr to i64
    %69 = llvm.and %68, %5  : i64
    %70 = llvm.icmp "eq" %69, %17 : i64
    llvm.intr.assume %70 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%67, %59, %63, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    llvm.intr.assume %48 : i1
    llvm.intr.assume %66 : i1
    llvm.intr.assume %56 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%53, %45, %63, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
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
    %76 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x i32>
    %77 = llvm.ptrtoint %76 : !llvm.ptr to i64
    %78 = llvm.and %77, %5  : i64
    %79 = llvm.icmp "eq" %78, %17 : i64
    llvm.intr.assume %79 : i1
    %80 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %81 = llvm.ptrtoint %80 : !llvm.ptr to i64
    %82 = llvm.and %81, %5  : i64
    %83 = llvm.icmp "eq" %82, %17 : i64
    llvm.intr.assume %83 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%80, %72, %76, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
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
    %91 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x i32>
    %92 = llvm.ptrtoint %91 : !llvm.ptr to i64
    %93 = llvm.and %92, %5  : i64
    %94 = llvm.icmp "eq" %93, %17 : i64
    llvm.intr.assume %94 : i1
    %95 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %96 = llvm.ptrtoint %95 : !llvm.ptr to i64
    %97 = llvm.and %96, %5  : i64
    %98 = llvm.icmp "eq" %97, %17 : i64
    llvm.intr.assume %98 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%95, %87, %91, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %99 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %100 = llvm.ptrtoint %99 : !llvm.ptr to i64
    %101 = llvm.and %100, %5  : i64
    %102 = llvm.icmp "eq" %101, %17 : i64
    llvm.intr.assume %102 : i1
    llvm.intr.assume %94 : i1
    %103 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %104 = llvm.ptrtoint %103 : !llvm.ptr to i64
    %105 = llvm.and %104, %5  : i64
    %106 = llvm.icmp "eq" %105, %17 : i64
    llvm.intr.assume %106 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%103, %99, %91, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
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
    %112 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x i32>
    %113 = llvm.ptrtoint %112 : !llvm.ptr to i64
    %114 = llvm.and %113, %5  : i64
    %115 = llvm.icmp "eq" %114, %17 : i64
    llvm.intr.assume %115 : i1
    %116 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    %117 = llvm.ptrtoint %116 : !llvm.ptr to i64
    %118 = llvm.and %117, %5  : i64
    %119 = llvm.icmp "eq" %118, %17 : i64
    llvm.intr.assume %119 : i1
    llvm.call @vector_scalar_mul_aie_scalar(%116, %108, %112, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    llvm.return
  }
}

