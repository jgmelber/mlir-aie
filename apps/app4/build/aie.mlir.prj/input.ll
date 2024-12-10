; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@in0_cons_buff_1 = external global [1 x i32]
@in0_cons_buff_0 = external global [1 x i32]
@in1_cons_buff_1 = external global [1024 x i32]
@in1_cons_buff_0 = external global [1024 x i32]
@in2_cons_buff_1 = external global [1024 x i32]
@in2_cons_buff_0 = external global [1024 x i32]
@in3_cons_buff_1 = external global [1 x i32]
@in3_cons_buff_0 = external global [1 x i32]
@in4_cons_buff_1 = external global [1024 x i32]
@in4_cons_buff_0 = external global [1024 x i32]
@in5_cons_buff_1 = external global [1 x i32]
@in5_cons_buff_0 = external global [1 x i32]
@in6_cons_buff_1 = external global [1024 x i32]
@in6_cons_buff_0 = external global [1024 x i32]
@in7_cons_buff_1 = external global [1 x i32]
@in7_cons_buff_0 = external global [1 x i32]
@in0to1_buff_1 = external global [1024 x i32]
@in0to1_buff_0 = external global [1024 x i32]
@in1to2_buff_1 = external global [1024 x i32]
@in1to2_buff_0 = external global [1024 x i32]
@in2to3_buff_1 = external global [1024 x i32]
@in2to3_buff_0 = external global [1024 x i32]
@in2to3_cons_buff_1 = external global [1024 x i32]
@in2to3_cons_buff_0 = external global [1024 x i32]
@out_buff_1 = external global [1024 x i32]
@out_buff_0 = external global [1024 x i32]
@out_cons = external global [1024 x i32]
@out = external global [1024 x i32]
@in2to3_cons = external global [1024 x i32]
@in2to3 = external global [1024 x i32]
@in1to2 = external global [1024 x i32]
@in0to1 = external global [1024 x i32]
@in7_cons = external global [1 x i32]
@in7 = external global [1 x i32]
@in6_cons = external global [1024 x i32]
@in6 = external global [1024 x i32]
@in5_cons = external global [1 x i32]
@in5 = external global [1 x i32]
@in4_cons = external global [1024 x i32]
@in4 = external global [1024 x i32]
@in3_cons = external global [1 x i32]
@in3 = external global [1 x i32]
@in2_cons = external global [1024 x i32]
@in2 = external global [1024 x i32]
@in1_cons = external global [1024 x i32]
@in1 = external global [1024 x i32]
@in0_cons = external global [1 x i32]
@in0 = external global [1 x i32]

declare void @debug_i32(i32)

declare void @llvm.aie2.put.ms(i32, i32)

declare { i32, i32 } @llvm.aie2.get.ss()

declare void @llvm.aie2.mcd.write.vec(<16 x i32>, i32)

declare <16 x i32> @llvm.aie2.scd.read.vec(i32)

declare void @llvm.aie2.acquire(i32, i32)

declare void @llvm.aie2.release(i32, i32)

declare void @vector_scalar_mul_aie_scalar(ptr, ptr, ptr, i32)

declare void @passthrough(ptr, ptr, i32)

declare void @vector_add_aie_scalar(ptr, ptr, ptr, i32)

declare void @mean(ptr, ptr, i32)

define void @core_3_5() {
  br label %1

1:                                                ; preds = %109, %0
  %2 = phi i64 [ %110, %109 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %111

4:                                                ; preds = %37, %1
  %5 = phi i64 [ %38, %37 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %39

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %19, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 1024
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = and i64 ptrtoint (ptr @in2to3_cons_buff_0 to i64), 31
  %13 = icmp eq i64 %12, 0
  call void @llvm.assume(i1 %13)
  %14 = getelementptr i32, ptr @in2to3_cons_buff_0, i64 %9
  %15 = load i32, ptr %14, align 4
  %16 = and i64 ptrtoint (ptr @out_buff_0 to i64), 31
  %17 = icmp eq i64 %16, 0
  call void @llvm.assume(i1 %17)
  %18 = getelementptr i32, ptr @out_buff_0, i64 %9
  store i32 %15, ptr %18, align 4
  %19 = add i64 %9, 1
  br label %8

20:                                               ; preds = %8
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %21

21:                                               ; preds = %24, %20
  %22 = phi i64 [ %36, %24 ], [ 0, %20 ]
  %23 = icmp slt i64 %22, 1024
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = and i64 ptrtoint (ptr @in2to3_cons_buff_1 to i64), 31
  %26 = icmp eq i64 %25, 0
  call void @llvm.assume(i1 %26)
  %27 = getelementptr i32, ptr @in2to3_cons_buff_1, i64 %22
  %28 = load i32, ptr %27, align 4
  %29 = and i64 ptrtoint (ptr @out_buff_1 to i64), 31
  %30 = icmp eq i64 %29, 0
  call void @llvm.assume(i1 %30)
  %31 = getelementptr i32, ptr @out_buff_1, i64 %22
  store i32 %28, ptr %31, align 4
  %32 = add i64 %22, 1
  call void @llvm.assume(i1 %26)
  %33 = getelementptr i32, ptr @in2to3_cons_buff_1, i64 %32
  %34 = load i32, ptr %33, align 4
  call void @llvm.assume(i1 %30)
  %35 = getelementptr i32, ptr @out_buff_1, i64 %32
  store i32 %34, ptr %35, align 4
  %36 = add i64 %22, 2
  br label %21

37:                                               ; preds = %21
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %38 = add i64 %5, 2
  br label %4

39:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %40

40:                                               ; preds = %43, %39
  %41 = phi i64 [ %55, %43 ], [ 0, %39 ]
  %42 = icmp slt i64 %41, 1024
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = and i64 ptrtoint (ptr @in2to3_cons_buff_0 to i64), 31
  %45 = icmp eq i64 %44, 0
  call void @llvm.assume(i1 %45)
  %46 = getelementptr i32, ptr @in2to3_cons_buff_0, i64 %41
  %47 = load i32, ptr %46, align 4
  %48 = and i64 ptrtoint (ptr @out_buff_0 to i64), 31
  %49 = icmp eq i64 %48, 0
  call void @llvm.assume(i1 %49)
  %50 = getelementptr i32, ptr @out_buff_0, i64 %41
  store i32 %47, ptr %50, align 4
  %51 = add i64 %41, 1
  call void @llvm.assume(i1 %45)
  %52 = getelementptr i32, ptr @in2to3_cons_buff_0, i64 %51
  %53 = load i32, ptr %52, align 4
  call void @llvm.assume(i1 %49)
  %54 = getelementptr i32, ptr @out_buff_0, i64 %51
  store i32 %53, ptr %54, align 4
  %55 = add i64 %41, 2
  br label %40

56:                                               ; preds = %40
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  br label %57

57:                                               ; preds = %90, %56
  %58 = phi i64 [ %91, %90 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 8
  br i1 %59, label %60, label %92

60:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %61

61:                                               ; preds = %64, %60
  %62 = phi i64 [ %72, %64 ], [ 0, %60 ]
  %63 = icmp slt i64 %62, 1024
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = and i64 ptrtoint (ptr @in2to3_cons_buff_1 to i64), 31
  %66 = icmp eq i64 %65, 0
  call void @llvm.assume(i1 %66)
  %67 = getelementptr i32, ptr @in2to3_cons_buff_1, i64 %62
  %68 = load i32, ptr %67, align 4
  %69 = and i64 ptrtoint (ptr @out_buff_1 to i64), 31
  %70 = icmp eq i64 %69, 0
  call void @llvm.assume(i1 %70)
  %71 = getelementptr i32, ptr @out_buff_1, i64 %62
  store i32 %68, ptr %71, align 4
  %72 = add i64 %62, 1
  br label %61

73:                                               ; preds = %61
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %74

74:                                               ; preds = %77, %73
  %75 = phi i64 [ %89, %77 ], [ 0, %73 ]
  %76 = icmp slt i64 %75, 1024
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = and i64 ptrtoint (ptr @in2to3_cons_buff_0 to i64), 31
  %79 = icmp eq i64 %78, 0
  call void @llvm.assume(i1 %79)
  %80 = getelementptr i32, ptr @in2to3_cons_buff_0, i64 %75
  %81 = load i32, ptr %80, align 4
  %82 = and i64 ptrtoint (ptr @out_buff_0 to i64), 31
  %83 = icmp eq i64 %82, 0
  call void @llvm.assume(i1 %83)
  %84 = getelementptr i32, ptr @out_buff_0, i64 %75
  store i32 %81, ptr %84, align 4
  %85 = add i64 %75, 1
  call void @llvm.assume(i1 %79)
  %86 = getelementptr i32, ptr @in2to3_cons_buff_0, i64 %85
  %87 = load i32, ptr %86, align 4
  call void @llvm.assume(i1 %83)
  %88 = getelementptr i32, ptr @out_buff_0, i64 %85
  store i32 %87, ptr %88, align 4
  %89 = add i64 %75, 2
  br label %74

90:                                               ; preds = %74
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %91 = add i64 %58, 2
  br label %57

92:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %93

93:                                               ; preds = %96, %92
  %94 = phi i64 [ %108, %96 ], [ 0, %92 ]
  %95 = icmp slt i64 %94, 1024
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = and i64 ptrtoint (ptr @in2to3_cons_buff_1 to i64), 31
  %98 = icmp eq i64 %97, 0
  call void @llvm.assume(i1 %98)
  %99 = getelementptr i32, ptr @in2to3_cons_buff_1, i64 %94
  %100 = load i32, ptr %99, align 4
  %101 = and i64 ptrtoint (ptr @out_buff_1 to i64), 31
  %102 = icmp eq i64 %101, 0
  call void @llvm.assume(i1 %102)
  %103 = getelementptr i32, ptr @out_buff_1, i64 %94
  store i32 %100, ptr %103, align 4
  %104 = add i64 %94, 1
  call void @llvm.assume(i1 %98)
  %105 = getelementptr i32, ptr @in2to3_cons_buff_1, i64 %104
  %106 = load i32, ptr %105, align 4
  call void @llvm.assume(i1 %102)
  %107 = getelementptr i32, ptr @out_buff_1, i64 %104
  store i32 %106, ptr %107, align 4
  %108 = add i64 %94, 2
  br label %93

109:                                              ; preds = %93
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %110 = add i64 %2, 2
  br label %1

111:                                              ; preds = %144, %1
  %112 = phi i64 [ %145, %144 ], [ 0, %1 ]
  %113 = icmp slt i64 %112, 8
  br i1 %113, label %114, label %146

114:                                              ; preds = %111
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %115

115:                                              ; preds = %118, %114
  %116 = phi i64 [ %126, %118 ], [ 0, %114 ]
  %117 = icmp slt i64 %116, 1024
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = and i64 ptrtoint (ptr @in2to3_cons_buff_0 to i64), 31
  %120 = icmp eq i64 %119, 0
  call void @llvm.assume(i1 %120)
  %121 = getelementptr i32, ptr @in2to3_cons_buff_0, i64 %116
  %122 = load i32, ptr %121, align 4
  %123 = and i64 ptrtoint (ptr @out_buff_0 to i64), 31
  %124 = icmp eq i64 %123, 0
  call void @llvm.assume(i1 %124)
  %125 = getelementptr i32, ptr @out_buff_0, i64 %116
  store i32 %122, ptr %125, align 4
  %126 = add i64 %116, 1
  br label %115

127:                                              ; preds = %115
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %128

128:                                              ; preds = %131, %127
  %129 = phi i64 [ %143, %131 ], [ 0, %127 ]
  %130 = icmp slt i64 %129, 1024
  br i1 %130, label %131, label %144

131:                                              ; preds = %128
  %132 = and i64 ptrtoint (ptr @in2to3_cons_buff_1 to i64), 31
  %133 = icmp eq i64 %132, 0
  call void @llvm.assume(i1 %133)
  %134 = getelementptr i32, ptr @in2to3_cons_buff_1, i64 %129
  %135 = load i32, ptr %134, align 4
  %136 = and i64 ptrtoint (ptr @out_buff_1 to i64), 31
  %137 = icmp eq i64 %136, 0
  call void @llvm.assume(i1 %137)
  %138 = getelementptr i32, ptr @out_buff_1, i64 %129
  store i32 %135, ptr %138, align 4
  %139 = add i64 %129, 1
  call void @llvm.assume(i1 %133)
  %140 = getelementptr i32, ptr @in2to3_cons_buff_1, i64 %139
  %141 = load i32, ptr %140, align 4
  call void @llvm.assume(i1 %137)
  %142 = getelementptr i32, ptr @out_buff_1, i64 %139
  store i32 %141, ptr %142, align 4
  %143 = add i64 %129, 2
  br label %128

144:                                              ; preds = %128
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %145 = add i64 %112, 2
  br label %111

146:                                              ; preds = %111
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %147

147:                                              ; preds = %150, %146
  %148 = phi i64 [ %162, %150 ], [ 0, %146 ]
  %149 = icmp slt i64 %148, 1024
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = and i64 ptrtoint (ptr @in2to3_cons_buff_0 to i64), 31
  %152 = icmp eq i64 %151, 0
  call void @llvm.assume(i1 %152)
  %153 = getelementptr i32, ptr @in2to3_cons_buff_0, i64 %148
  %154 = load i32, ptr %153, align 4
  %155 = and i64 ptrtoint (ptr @out_buff_0 to i64), 31
  %156 = icmp eq i64 %155, 0
  call void @llvm.assume(i1 %156)
  %157 = getelementptr i32, ptr @out_buff_0, i64 %148
  store i32 %154, ptr %157, align 4
  %158 = add i64 %148, 1
  call void @llvm.assume(i1 %152)
  %159 = getelementptr i32, ptr @in2to3_cons_buff_0, i64 %158
  %160 = load i32, ptr %159, align 4
  call void @llvm.assume(i1 %156)
  %161 = getelementptr i32, ptr @out_buff_0, i64 %158
  store i32 %160, ptr %161, align 4
  %162 = add i64 %148, 2
  br label %147

163:                                              ; preds = %147
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

define void @core_0_4() {
  br label %1

1:                                                ; preds = %109, %0
  %2 = phi i64 [ %110, %109 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %111

4:                                                ; preds = %37, %1
  %5 = phi i64 [ %38, %37 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %39

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %19, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 1024
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = and i64 ptrtoint (ptr @in1to2_buff_0 to i64), 31
  %13 = icmp eq i64 %12, 0
  call void @llvm.assume(i1 %13)
  %14 = getelementptr i32, ptr @in1to2_buff_0, i64 %9
  %15 = load i32, ptr %14, align 4
  %16 = and i64 ptrtoint (ptr @in2to3_buff_0 to i64), 31
  %17 = icmp eq i64 %16, 0
  call void @llvm.assume(i1 %17)
  %18 = getelementptr i32, ptr @in2to3_buff_0, i64 %9
  store i32 %15, ptr %18, align 4
  %19 = add i64 %9, 1
  br label %8

20:                                               ; preds = %8
  call void @llvm.aie2.release(i32 0, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %21

21:                                               ; preds = %24, %20
  %22 = phi i64 [ %36, %24 ], [ 0, %20 ]
  %23 = icmp slt i64 %22, 1024
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = and i64 ptrtoint (ptr @in1to2_buff_1 to i64), 31
  %26 = icmp eq i64 %25, 0
  call void @llvm.assume(i1 %26)
  %27 = getelementptr i32, ptr @in1to2_buff_1, i64 %22
  %28 = load i32, ptr %27, align 4
  %29 = and i64 ptrtoint (ptr @in2to3_buff_1 to i64), 31
  %30 = icmp eq i64 %29, 0
  call void @llvm.assume(i1 %30)
  %31 = getelementptr i32, ptr @in2to3_buff_1, i64 %22
  store i32 %28, ptr %31, align 4
  %32 = add i64 %22, 1
  call void @llvm.assume(i1 %26)
  %33 = getelementptr i32, ptr @in1to2_buff_1, i64 %32
  %34 = load i32, ptr %33, align 4
  call void @llvm.assume(i1 %30)
  %35 = getelementptr i32, ptr @in2to3_buff_1, i64 %32
  store i32 %34, ptr %35, align 4
  %36 = add i64 %22, 2
  br label %21

37:                                               ; preds = %21
  call void @llvm.aie2.release(i32 0, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  %38 = add i64 %5, 2
  br label %4

39:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %40

40:                                               ; preds = %43, %39
  %41 = phi i64 [ %55, %43 ], [ 0, %39 ]
  %42 = icmp slt i64 %41, 1024
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = and i64 ptrtoint (ptr @in1to2_buff_0 to i64), 31
  %45 = icmp eq i64 %44, 0
  call void @llvm.assume(i1 %45)
  %46 = getelementptr i32, ptr @in1to2_buff_0, i64 %41
  %47 = load i32, ptr %46, align 4
  %48 = and i64 ptrtoint (ptr @in2to3_buff_0 to i64), 31
  %49 = icmp eq i64 %48, 0
  call void @llvm.assume(i1 %49)
  %50 = getelementptr i32, ptr @in2to3_buff_0, i64 %41
  store i32 %47, ptr %50, align 4
  %51 = add i64 %41, 1
  call void @llvm.assume(i1 %45)
  %52 = getelementptr i32, ptr @in1to2_buff_0, i64 %51
  %53 = load i32, ptr %52, align 4
  call void @llvm.assume(i1 %49)
  %54 = getelementptr i32, ptr @in2to3_buff_0, i64 %51
  store i32 %53, ptr %54, align 4
  %55 = add i64 %41, 2
  br label %40

56:                                               ; preds = %40
  call void @llvm.aie2.release(i32 0, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  br label %57

57:                                               ; preds = %90, %56
  %58 = phi i64 [ %91, %90 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 8
  br i1 %59, label %60, label %92

60:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %61

61:                                               ; preds = %64, %60
  %62 = phi i64 [ %72, %64 ], [ 0, %60 ]
  %63 = icmp slt i64 %62, 1024
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = and i64 ptrtoint (ptr @in1to2_buff_1 to i64), 31
  %66 = icmp eq i64 %65, 0
  call void @llvm.assume(i1 %66)
  %67 = getelementptr i32, ptr @in1to2_buff_1, i64 %62
  %68 = load i32, ptr %67, align 4
  %69 = and i64 ptrtoint (ptr @in2to3_buff_1 to i64), 31
  %70 = icmp eq i64 %69, 0
  call void @llvm.assume(i1 %70)
  %71 = getelementptr i32, ptr @in2to3_buff_1, i64 %62
  store i32 %68, ptr %71, align 4
  %72 = add i64 %62, 1
  br label %61

73:                                               ; preds = %61
  call void @llvm.aie2.release(i32 0, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %74

74:                                               ; preds = %77, %73
  %75 = phi i64 [ %89, %77 ], [ 0, %73 ]
  %76 = icmp slt i64 %75, 1024
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = and i64 ptrtoint (ptr @in1to2_buff_0 to i64), 31
  %79 = icmp eq i64 %78, 0
  call void @llvm.assume(i1 %79)
  %80 = getelementptr i32, ptr @in1to2_buff_0, i64 %75
  %81 = load i32, ptr %80, align 4
  %82 = and i64 ptrtoint (ptr @in2to3_buff_0 to i64), 31
  %83 = icmp eq i64 %82, 0
  call void @llvm.assume(i1 %83)
  %84 = getelementptr i32, ptr @in2to3_buff_0, i64 %75
  store i32 %81, ptr %84, align 4
  %85 = add i64 %75, 1
  call void @llvm.assume(i1 %79)
  %86 = getelementptr i32, ptr @in1to2_buff_0, i64 %85
  %87 = load i32, ptr %86, align 4
  call void @llvm.assume(i1 %83)
  %88 = getelementptr i32, ptr @in2to3_buff_0, i64 %85
  store i32 %87, ptr %88, align 4
  %89 = add i64 %75, 2
  br label %74

90:                                               ; preds = %74
  call void @llvm.aie2.release(i32 0, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  %91 = add i64 %58, 2
  br label %57

92:                                               ; preds = %57
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %93

93:                                               ; preds = %96, %92
  %94 = phi i64 [ %108, %96 ], [ 0, %92 ]
  %95 = icmp slt i64 %94, 1024
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = and i64 ptrtoint (ptr @in1to2_buff_1 to i64), 31
  %98 = icmp eq i64 %97, 0
  call void @llvm.assume(i1 %98)
  %99 = getelementptr i32, ptr @in1to2_buff_1, i64 %94
  %100 = load i32, ptr %99, align 4
  %101 = and i64 ptrtoint (ptr @in2to3_buff_1 to i64), 31
  %102 = icmp eq i64 %101, 0
  call void @llvm.assume(i1 %102)
  %103 = getelementptr i32, ptr @in2to3_buff_1, i64 %94
  store i32 %100, ptr %103, align 4
  %104 = add i64 %94, 1
  call void @llvm.assume(i1 %98)
  %105 = getelementptr i32, ptr @in1to2_buff_1, i64 %104
  %106 = load i32, ptr %105, align 4
  call void @llvm.assume(i1 %102)
  %107 = getelementptr i32, ptr @in2to3_buff_1, i64 %104
  store i32 %106, ptr %107, align 4
  %108 = add i64 %94, 2
  br label %93

109:                                              ; preds = %93
  call void @llvm.aie2.release(i32 0, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  %110 = add i64 %2, 2
  br label %1

111:                                              ; preds = %144, %1
  %112 = phi i64 [ %145, %144 ], [ 0, %1 ]
  %113 = icmp slt i64 %112, 8
  br i1 %113, label %114, label %146

114:                                              ; preds = %111
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %115

115:                                              ; preds = %118, %114
  %116 = phi i64 [ %126, %118 ], [ 0, %114 ]
  %117 = icmp slt i64 %116, 1024
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = and i64 ptrtoint (ptr @in1to2_buff_0 to i64), 31
  %120 = icmp eq i64 %119, 0
  call void @llvm.assume(i1 %120)
  %121 = getelementptr i32, ptr @in1to2_buff_0, i64 %116
  %122 = load i32, ptr %121, align 4
  %123 = and i64 ptrtoint (ptr @in2to3_buff_0 to i64), 31
  %124 = icmp eq i64 %123, 0
  call void @llvm.assume(i1 %124)
  %125 = getelementptr i32, ptr @in2to3_buff_0, i64 %116
  store i32 %122, ptr %125, align 4
  %126 = add i64 %116, 1
  br label %115

127:                                              ; preds = %115
  call void @llvm.aie2.release(i32 0, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %128

128:                                              ; preds = %131, %127
  %129 = phi i64 [ %143, %131 ], [ 0, %127 ]
  %130 = icmp slt i64 %129, 1024
  br i1 %130, label %131, label %144

131:                                              ; preds = %128
  %132 = and i64 ptrtoint (ptr @in1to2_buff_1 to i64), 31
  %133 = icmp eq i64 %132, 0
  call void @llvm.assume(i1 %133)
  %134 = getelementptr i32, ptr @in1to2_buff_1, i64 %129
  %135 = load i32, ptr %134, align 4
  %136 = and i64 ptrtoint (ptr @in2to3_buff_1 to i64), 31
  %137 = icmp eq i64 %136, 0
  call void @llvm.assume(i1 %137)
  %138 = getelementptr i32, ptr @in2to3_buff_1, i64 %129
  store i32 %135, ptr %138, align 4
  %139 = add i64 %129, 1
  call void @llvm.assume(i1 %133)
  %140 = getelementptr i32, ptr @in1to2_buff_1, i64 %139
  %141 = load i32, ptr %140, align 4
  call void @llvm.assume(i1 %137)
  %142 = getelementptr i32, ptr @in2to3_buff_1, i64 %139
  store i32 %141, ptr %142, align 4
  %143 = add i64 %129, 2
  br label %128

144:                                              ; preds = %128
  call void @llvm.aie2.release(i32 0, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  %145 = add i64 %112, 2
  br label %111

146:                                              ; preds = %111
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %147

147:                                              ; preds = %150, %146
  %148 = phi i64 [ %162, %150 ], [ 0, %146 ]
  %149 = icmp slt i64 %148, 1024
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = and i64 ptrtoint (ptr @in1to2_buff_0 to i64), 31
  %152 = icmp eq i64 %151, 0
  call void @llvm.assume(i1 %152)
  %153 = getelementptr i32, ptr @in1to2_buff_0, i64 %148
  %154 = load i32, ptr %153, align 4
  %155 = and i64 ptrtoint (ptr @in2to3_buff_0 to i64), 31
  %156 = icmp eq i64 %155, 0
  call void @llvm.assume(i1 %156)
  %157 = getelementptr i32, ptr @in2to3_buff_0, i64 %148
  store i32 %154, ptr %157, align 4
  %158 = add i64 %148, 1
  call void @llvm.assume(i1 %152)
  %159 = getelementptr i32, ptr @in1to2_buff_0, i64 %158
  %160 = load i32, ptr %159, align 4
  call void @llvm.assume(i1 %156)
  %161 = getelementptr i32, ptr @in2to3_buff_0, i64 %158
  store i32 %160, ptr %161, align 4
  %162 = add i64 %148, 2
  br label %147

163:                                              ; preds = %147
  call void @llvm.aie2.release(i32 0, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  ret void
}

define void @core_0_3() {
  br label %1

1:                                                ; preds = %31, %0
  %2 = phi i64 [ %36, %31 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %37

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %16, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  %8 = and i64 ptrtoint (ptr @in1to2_buff_0 to i64), 31
  %9 = icmp eq i64 %8, 0
  call void @llvm.assume(i1 %9)
  %10 = and i64 ptrtoint (ptr @in0to1_buff_0 to i64), 31
  %11 = icmp eq i64 %10, 0
  call void @llvm.assume(i1 %11)
  call void @passthrough(ptr @in0to1_buff_0, ptr @in1to2_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  %12 = and i64 ptrtoint (ptr @in1to2_buff_1 to i64), 31
  %13 = icmp eq i64 %12, 0
  call void @llvm.assume(i1 %13)
  %14 = and i64 ptrtoint (ptr @in0to1_buff_1 to i64), 31
  %15 = icmp eq i64 %14, 0
  call void @llvm.assume(i1 %15)
  call void @passthrough(ptr @in0to1_buff_1, ptr @in1to2_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  %16 = add i64 %5, 2
  br label %4

17:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  %18 = and i64 ptrtoint (ptr @in1to2_buff_0 to i64), 31
  %19 = icmp eq i64 %18, 0
  call void @llvm.assume(i1 %19)
  %20 = and i64 ptrtoint (ptr @in0to1_buff_0 to i64), 31
  %21 = icmp eq i64 %20, 0
  call void @llvm.assume(i1 %21)
  call void @passthrough(ptr @in0to1_buff_0, ptr @in1to2_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  br label %22

22:                                               ; preds = %25, %17
  %23 = phi i64 [ %30, %25 ], [ 0, %17 ]
  %24 = icmp slt i64 %23, 8
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  %26 = and i64 ptrtoint (ptr @in1to2_buff_1 to i64), 31
  %27 = icmp eq i64 %26, 0
  call void @llvm.assume(i1 %27)
  %28 = and i64 ptrtoint (ptr @in0to1_buff_1 to i64), 31
  %29 = icmp eq i64 %28, 0
  call void @llvm.assume(i1 %29)
  call void @passthrough(ptr @in0to1_buff_1, ptr @in1to2_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 %19)
  call void @llvm.assume(i1 %21)
  call void @passthrough(ptr @in0to1_buff_0, ptr @in1to2_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  %30 = add i64 %23, 2
  br label %22

31:                                               ; preds = %22
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  %32 = and i64 ptrtoint (ptr @in1to2_buff_1 to i64), 31
  %33 = icmp eq i64 %32, 0
  call void @llvm.assume(i1 %33)
  %34 = and i64 ptrtoint (ptr @in0to1_buff_1 to i64), 31
  %35 = icmp eq i64 %34, 0
  call void @llvm.assume(i1 %35)
  call void @passthrough(ptr @in0to1_buff_1, ptr @in1to2_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  %36 = add i64 %2, 2
  br label %1

37:                                               ; preds = %40, %1
  %38 = phi i64 [ %49, %40 ], [ 0, %1 ]
  %39 = icmp slt i64 %38, 8
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  %41 = and i64 ptrtoint (ptr @in1to2_buff_0 to i64), 31
  %42 = icmp eq i64 %41, 0
  call void @llvm.assume(i1 %42)
  %43 = and i64 ptrtoint (ptr @in0to1_buff_0 to i64), 31
  %44 = icmp eq i64 %43, 0
  call void @llvm.assume(i1 %44)
  call void @passthrough(ptr @in0to1_buff_0, ptr @in1to2_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  %45 = and i64 ptrtoint (ptr @in1to2_buff_1 to i64), 31
  %46 = icmp eq i64 %45, 0
  call void @llvm.assume(i1 %46)
  %47 = and i64 ptrtoint (ptr @in0to1_buff_1 to i64), 31
  %48 = icmp eq i64 %47, 0
  call void @llvm.assume(i1 %48)
  call void @passthrough(ptr @in0to1_buff_1, ptr @in1to2_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  %49 = add i64 %38, 2
  br label %37

50:                                               ; preds = %37
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  %51 = and i64 ptrtoint (ptr @in1to2_buff_0 to i64), 31
  %52 = icmp eq i64 %51, 0
  call void @llvm.assume(i1 %52)
  %53 = and i64 ptrtoint (ptr @in0to1_buff_0 to i64), 31
  %54 = icmp eq i64 %53, 0
  call void @llvm.assume(i1 %54)
  call void @passthrough(ptr @in0to1_buff_0, ptr @in1to2_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  ret void
}

define void @core_0_2() {
  br label %1

1:                                                ; preds = %38, %0
  %2 = phi i64 [ %45, %38 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %46

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %19, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  %9 = and i64 ptrtoint (ptr @in0to1_buff_0 to i64), 31
  %10 = icmp eq i64 %9, 0
  call void @llvm.assume(i1 %10)
  %11 = and i64 ptrtoint (ptr @in1_cons_buff_0 to i64), 31
  %12 = icmp eq i64 %11, 0
  call void @llvm.assume(i1 %12)
  %13 = and i64 ptrtoint (ptr @in0_cons_buff_0 to i64), 31
  %14 = icmp eq i64 %13, 0
  call void @llvm.assume(i1 %14)
  call void @vector_scalar_mul_aie_scalar(ptr @in1_cons_buff_0, ptr @in0to1_buff_0, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  %15 = and i64 ptrtoint (ptr @in0to1_buff_1 to i64), 31
  %16 = icmp eq i64 %15, 0
  call void @llvm.assume(i1 %16)
  %17 = and i64 ptrtoint (ptr @in1_cons_buff_1 to i64), 31
  %18 = icmp eq i64 %17, 0
  call void @llvm.assume(i1 %18)
  call void @llvm.assume(i1 %14)
  call void @vector_scalar_mul_aie_scalar(ptr @in1_cons_buff_1, ptr @in0to1_buff_1, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %19 = add i64 %6, 2
  br label %5

20:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  %21 = and i64 ptrtoint (ptr @in0to1_buff_0 to i64), 31
  %22 = icmp eq i64 %21, 0
  call void @llvm.assume(i1 %22)
  %23 = and i64 ptrtoint (ptr @in1_cons_buff_0 to i64), 31
  %24 = icmp eq i64 %23, 0
  call void @llvm.assume(i1 %24)
  %25 = and i64 ptrtoint (ptr @in0_cons_buff_0 to i64), 31
  %26 = icmp eq i64 %25, 0
  call void @llvm.assume(i1 %26)
  call void @vector_scalar_mul_aie_scalar(ptr @in1_cons_buff_0, ptr @in0to1_buff_0, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %27

27:                                               ; preds = %30, %20
  %28 = phi i64 [ %37, %30 ], [ 0, %20 ]
  %29 = icmp slt i64 %28, 8
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  %31 = and i64 ptrtoint (ptr @in0to1_buff_1 to i64), 31
  %32 = icmp eq i64 %31, 0
  call void @llvm.assume(i1 %32)
  %33 = and i64 ptrtoint (ptr @in1_cons_buff_1 to i64), 31
  %34 = icmp eq i64 %33, 0
  call void @llvm.assume(i1 %34)
  %35 = and i64 ptrtoint (ptr @in0_cons_buff_1 to i64), 31
  %36 = icmp eq i64 %35, 0
  call void @llvm.assume(i1 %36)
  call void @vector_scalar_mul_aie_scalar(ptr @in1_cons_buff_1, ptr @in0to1_buff_1, ptr @in0_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 %22)
  call void @llvm.assume(i1 %24)
  call void @llvm.assume(i1 %36)
  call void @vector_scalar_mul_aie_scalar(ptr @in1_cons_buff_0, ptr @in0to1_buff_0, ptr @in0_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %37 = add i64 %28, 2
  br label %27

38:                                               ; preds = %27
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  %39 = and i64 ptrtoint (ptr @in0to1_buff_1 to i64), 31
  %40 = icmp eq i64 %39, 0
  call void @llvm.assume(i1 %40)
  %41 = and i64 ptrtoint (ptr @in1_cons_buff_1 to i64), 31
  %42 = icmp eq i64 %41, 0
  call void @llvm.assume(i1 %42)
  %43 = and i64 ptrtoint (ptr @in0_cons_buff_1 to i64), 31
  %44 = icmp eq i64 %43, 0
  call void @llvm.assume(i1 %44)
  call void @vector_scalar_mul_aie_scalar(ptr @in1_cons_buff_1, ptr @in0to1_buff_1, ptr @in0_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %45 = add i64 %2, 2
  br label %1

46:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %47

47:                                               ; preds = %50, %46
  %48 = phi i64 [ %61, %50 ], [ 0, %46 ]
  %49 = icmp slt i64 %48, 8
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  %51 = and i64 ptrtoint (ptr @in0to1_buff_0 to i64), 31
  %52 = icmp eq i64 %51, 0
  call void @llvm.assume(i1 %52)
  %53 = and i64 ptrtoint (ptr @in1_cons_buff_0 to i64), 31
  %54 = icmp eq i64 %53, 0
  call void @llvm.assume(i1 %54)
  %55 = and i64 ptrtoint (ptr @in0_cons_buff_0 to i64), 31
  %56 = icmp eq i64 %55, 0
  call void @llvm.assume(i1 %56)
  call void @vector_scalar_mul_aie_scalar(ptr @in1_cons_buff_0, ptr @in0to1_buff_0, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  %57 = and i64 ptrtoint (ptr @in0to1_buff_1 to i64), 31
  %58 = icmp eq i64 %57, 0
  call void @llvm.assume(i1 %58)
  %59 = and i64 ptrtoint (ptr @in1_cons_buff_1 to i64), 31
  %60 = icmp eq i64 %59, 0
  call void @llvm.assume(i1 %60)
  call void @llvm.assume(i1 %56)
  call void @vector_scalar_mul_aie_scalar(ptr @in1_cons_buff_1, ptr @in0to1_buff_1, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %61 = add i64 %48, 2
  br label %47

62:                                               ; preds = %47
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  %63 = and i64 ptrtoint (ptr @in0to1_buff_0 to i64), 31
  %64 = icmp eq i64 %63, 0
  call void @llvm.assume(i1 %64)
  %65 = and i64 ptrtoint (ptr @in1_cons_buff_0 to i64), 31
  %66 = icmp eq i64 %65, 0
  call void @llvm.assume(i1 %66)
  %67 = and i64 ptrtoint (ptr @in0_cons_buff_0 to i64), 31
  %68 = icmp eq i64 %67, 0
  call void @llvm.assume(i1 %68)
  call void @vector_scalar_mul_aie_scalar(ptr @in1_cons_buff_0, ptr @in0to1_buff_0, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
