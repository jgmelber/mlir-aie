; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@in0_cons_buff_1 = external global [1 x float]
@in0_cons_buff_0 = external global [1 x float]
@in1_cons_buff_1 = external global [1024 x float]
@in1_cons_buff_0 = external global [1024 x float]
@in2_cons_buff_1 = external global [1024 x float]
@in2_cons_buff_0 = external global [1024 x float]
@in3_cons_buff_1 = external global [1 x float]
@in3_cons_buff_0 = external global [1 x float]
@of_c20toc21_buff_1 = external global [1024 x float]
@of_c20toc21_buff_0 = external global [1024 x float]
@of_c20toc21_cons_buff_1 = external global [1024 x float]
@of_c20toc21_cons_buff_0 = external global [1024 x float]
@of_c30toc21_buff_1 = external global [1024 x float]
@of_c30toc21_buff_0 = external global [1024 x float]
@of_c10toc11_buff_1 = external global [1024 x float]
@of_c10toc11_buff_0 = external global [1024 x float]
@of_c10toc11_cons_buff_1 = external global [1024 x float]
@of_c10toc11_cons_buff_0 = external global [1024 x float]
@of_c21toc11_buff_1 = external global [1024 x float]
@of_c21toc11_buff_0 = external global [1024 x float]
@of_c21toc22_buff_1 = external global [1024 x float]
@of_c21toc22_buff_0 = external global [1024 x float]
@of_c22toc12_buff_1 = external global [1024 x float]
@of_c22toc12_buff_0 = external global [1024 x float]
@of_c12toc11_buff_1 = external global [1024 x float]
@of_c12toc11_buff_0 = external global [1024 x float]
@ofc11toc02_buff_1 = external global [1024 x float]
@ofc11toc02_buff_0 = external global [1024 x float]
@ofc11toc02_cons_buff_1 = external global [1024 x float]
@ofc11toc02_cons_buff_0 = external global [1024 x float]
@ofc02toc01_buff_1 = external global [1 x float]
@ofc02toc01_buff_0 = external global [1 x float]
@out_buff_1 = external global [1 x float]
@out_buff_0 = external global [1 x float]
@out_cons = external global [1 x float]
@out = external global [1 x float]
@ofc02toc01 = external global [1 x float]
@ofc11toc02_cons = external global [1024 x float]
@ofc11toc02 = external global [1024 x float]
@of_c12toc11 = external global [1024 x float]
@of_c22toc12 = external global [1024 x float]
@of_c21toc22 = external global [1024 x float]
@of_c21toc11 = external global [1024 x float]
@of_c10toc11_cons = external global [1024 x float]
@of_c10toc11 = external global [1024 x float]
@of_c30toc21 = external global [1024 x float]
@of_c20toc21_cons = external global [1024 x float]
@of_c20toc21 = external global [1024 x float]
@in3_cons = external global [1 x float]
@in3 = external global [1 x float]
@in2_cons = external global [1024 x float]
@in2 = external global [1024 x float]
@in1_cons = external global [1024 x float]
@in1 = external global [1024 x float]
@in0_cons = external global [1 x float]
@in0 = external global [1 x float]

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

declare void @vector_mult_aie_scalar(ptr, ptr, ptr, i32)

declare void @mean(ptr, ptr, i32)

define void @core_0_3() {
  br label %1

1:                                                ; preds = %27, %0
  %2 = phi i64 [ %28, %27 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %29

4:                                                ; preds = %25, %1
  %5 = phi i64 [ %26, %25 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 10
  br i1 %6, label %7, label %27

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %15, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %12 = getelementptr float, ptr @ofc02toc01_buff_0, i64 %9
  %13 = load float, ptr %12, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %14 = getelementptr float, ptr @out_buff_0, i64 %9
  store float %13, ptr %14, align 4
  %15 = add i64 %9, 1
  br label %8

16:                                               ; preds = %8
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  br label %17

17:                                               ; preds = %20, %16
  %18 = phi i64 [ %24, %20 ], [ 0, %16 ]
  %19 = icmp slt i64 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %21 = getelementptr float, ptr @ofc02toc01_buff_1, i64 %18
  %22 = load float, ptr %21, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %23 = getelementptr float, ptr @out_buff_1, i64 %18
  store float %22, ptr %23, align 4
  %24 = add i64 %18, 1
  br label %17

25:                                               ; preds = %17
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  %26 = add i64 %5, 2
  br label %4

27:                                               ; preds = %4
  %28 = add i64 %2, 1
  br label %1

29:                                               ; preds = %1
  ret void
}

define void @core_0_4() {
  br label %1

1:                                                ; preds = %9, %0
  %2 = phi i64 [ %10, %9 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 10
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  %10 = add i64 %2, 1
  br label %1

11:                                               ; preds = %1
  ret void
}

define void @core_1_3() {
  br label %1

1:                                                ; preds = %9, %0
  %2 = phi i64 [ %10, %9 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 10
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @in1_cons_buff_0, ptr @of_c12toc11_buff_0, ptr @ofc11toc02_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @in1_cons_buff_1, ptr @of_c12toc11_buff_1, ptr @ofc11toc02_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  %10 = add i64 %2, 1
  br label %1

11:                                               ; preds = %1
  ret void
}

define void @core_1_4() {
  br label %1

1:                                                ; preds = %9, %0
  %2 = phi i64 [ %10, %9 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 10
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @passthrough(ptr @of_c22toc12_buff_0, ptr @of_c12toc11_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @passthrough(ptr @of_c22toc12_buff_1, ptr @of_c12toc11_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  %10 = add i64 %2, 1
  br label %1

11:                                               ; preds = %1
  ret void
}

define void @core_2_4() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 10
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_c21toc22_buff_0, ptr @of_c22toc12_buff_0, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_c21toc22_buff_1, ptr @of_c22toc12_buff_1, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 17, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 10
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_c21toc22_buff_0, ptr @of_c22toc12_buff_0, ptr @in0_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_c21toc22_buff_1, ptr @of_c22toc12_buff_1, ptr @in0_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 17, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 10
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_c21toc22_buff_0, ptr @of_c22toc12_buff_0, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_c21toc22_buff_1, ptr @of_c22toc12_buff_1, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 17, i32 1)
  %23 = add i64 %20, 2
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_2_3() {
  br label %1

1:                                                ; preds = %9, %0
  %2 = phi i64 [ %10, %9 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 10
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_c10toc11_cons_buff_0, ptr @of_c21toc22_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_1, i64 32) ]
  call void @passthrough(ptr @of_c10toc11_cons_buff_1, ptr @of_c21toc22_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  %10 = add i64 %2, 1
  br label %1

11:                                               ; preds = %1
  ret void
}

define void @core_1_2() {
  br label %1

1:                                                ; preds = %28, %0
  %2 = phi i64 [ %29, %28 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %30

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 10
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_0, ptr @of_c10toc11_buff_0, ptr @in3_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_1, ptr @of_c10toc11_buff_1, ptr @in3_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 10
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_0, ptr @of_c10toc11_buff_0, ptr @in3_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_1, ptr @of_c10toc11_buff_1, ptr @in3_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %17

17:                                               ; preds = %20, %16
  %18 = phi i64 [ %21, %20 ], [ 0, %16 ]
  %19 = icmp slt i64 %18, 10
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_0, ptr @of_c10toc11_buff_0, ptr @in3_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_1, ptr @of_c10toc11_buff_1, ptr @in3_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %21 = add i64 %18, 2
  br label %17

22:                                               ; preds = %17
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %23

23:                                               ; preds = %26, %22
  %24 = phi i64 [ %27, %26 ], [ 0, %22 ]
  %25 = icmp slt i64 %24, 10
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_0, ptr @of_c10toc11_buff_0, ptr @in3_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_1, ptr @of_c10toc11_buff_1, ptr @in3_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %27 = add i64 %24, 2
  br label %23

28:                                               ; preds = %23
  call void @llvm.aie2.release(i32 50, i32 1)
  %29 = add i64 %2, 2
  br label %1

30:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %31

31:                                               ; preds = %34, %30
  %32 = phi i64 [ %35, %34 ], [ 0, %30 ]
  %33 = icmp slt i64 %32, 10
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_0, ptr @of_c10toc11_buff_0, ptr @in3_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_1, ptr @of_c10toc11_buff_1, ptr @in3_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %35 = add i64 %32, 2
  br label %31

36:                                               ; preds = %31
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %37

37:                                               ; preds = %40, %36
  %38 = phi i64 [ %41, %40 ], [ 0, %36 ]
  %39 = icmp slt i64 %38, 10
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_0, ptr @of_c10toc11_buff_0, ptr @in3_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_1, ptr @of_c10toc11_buff_1, ptr @in3_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %41 = add i64 %38, 2
  br label %37

42:                                               ; preds = %37
  call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
