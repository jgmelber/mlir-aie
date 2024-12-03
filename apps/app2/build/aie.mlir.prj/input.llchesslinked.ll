; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target triple = "aie2"

%struct.ipd.custom_type.uint2_t.uint2_t = type { i2 }

@in_cons_buff_1 = external global [1024 x i32]
@in_cons_buff_0 = external global [1024 x i32]
@infactor_cons_buff_1 = external global [1 x i32]
@infactor_cons_buff_0 = external global [1 x i32]
@out_buff_1 = external global [1024 x i32]
@out_buff_0 = external global [1024 x i32]

define void @core_0_2() {
  br label %1

1:                                                ; preds = %36, %0
  %2 = phi i64 [ %37, %36 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %38

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %19, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 4
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  %9 = and i64 ptrtoint (ptr @out_buff_0 to i64), 31
  %10 = icmp eq i64 %9, 0
  call void @llvm.assume(i1 %10)
  %11 = and i64 ptrtoint (ptr @infactor_cons_buff_0 to i64), 31
  %12 = icmp eq i64 %11, 0
  call void @llvm.assume(i1 %12)
  %13 = and i64 ptrtoint (ptr @in_cons_buff_0 to i64), 31
  %14 = icmp eq i64 %13, 0
  call void @llvm.assume(i1 %14)
  call void @vector_scalar_mul_aie_scalar(ptr @in_cons_buff_0, ptr @out_buff_0, ptr @infactor_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  %15 = and i64 ptrtoint (ptr @out_buff_1 to i64), 31
  %16 = icmp eq i64 %15, 0
  call void @llvm.assume(i1 %16)
  call void @llvm.assume(i1 %12)
  %17 = and i64 ptrtoint (ptr @in_cons_buff_1 to i64), 31
  %18 = icmp eq i64 %17, 0
  call void @llvm.assume(i1 %18)
  call void @vector_scalar_mul_aie_scalar(ptr @in_cons_buff_1, ptr @out_buff_1, ptr @infactor_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %19 = add i64 %6, 2
  br label %5

20:                                               ; preds = %5
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %21

21:                                               ; preds = %24, %20
  %22 = phi i64 [ %35, %24 ], [ 0, %20 ]
  %23 = icmp slt i64 %22, 4
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  %25 = and i64 ptrtoint (ptr @out_buff_0 to i64), 31
  %26 = icmp eq i64 %25, 0
  call void @llvm.assume(i1 %26)
  %27 = and i64 ptrtoint (ptr @infactor_cons_buff_1 to i64), 31
  %28 = icmp eq i64 %27, 0
  call void @llvm.assume(i1 %28)
  %29 = and i64 ptrtoint (ptr @in_cons_buff_0 to i64), 31
  %30 = icmp eq i64 %29, 0
  call void @llvm.assume(i1 %30)
  call void @vector_scalar_mul_aie_scalar(ptr @in_cons_buff_0, ptr @out_buff_0, ptr @infactor_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  %31 = and i64 ptrtoint (ptr @out_buff_1 to i64), 31
  %32 = icmp eq i64 %31, 0
  call void @llvm.assume(i1 %32)
  call void @llvm.assume(i1 %28)
  %33 = and i64 ptrtoint (ptr @in_cons_buff_1 to i64), 31
  %34 = icmp eq i64 %33, 0
  call void @llvm.assume(i1 %34)
  call void @vector_scalar_mul_aie_scalar(ptr @in_cons_buff_1, ptr @out_buff_1, ptr @infactor_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %35 = add i64 %22, 2
  br label %21

36:                                               ; preds = %21
  call void @llvm.aie2.release(i32 50, i32 1)
  %37 = add i64 %2, 2
  br label %1

38:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %39

39:                                               ; preds = %42, %38
  %40 = phi i64 [ %53, %42 ], [ 0, %38 ]
  %41 = icmp slt i64 %40, 4
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  %43 = and i64 ptrtoint (ptr @out_buff_0 to i64), 31
  %44 = icmp eq i64 %43, 0
  call void @llvm.assume(i1 %44)
  %45 = and i64 ptrtoint (ptr @infactor_cons_buff_0 to i64), 31
  %46 = icmp eq i64 %45, 0
  call void @llvm.assume(i1 %46)
  %47 = and i64 ptrtoint (ptr @in_cons_buff_0 to i64), 31
  %48 = icmp eq i64 %47, 0
  call void @llvm.assume(i1 %48)
  call void @vector_scalar_mul_aie_scalar(ptr @in_cons_buff_0, ptr @out_buff_0, ptr @infactor_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  %49 = and i64 ptrtoint (ptr @out_buff_1 to i64), 31
  %50 = icmp eq i64 %49, 0
  call void @llvm.assume(i1 %50)
  call void @llvm.assume(i1 %46)
  %51 = and i64 ptrtoint (ptr @in_cons_buff_1 to i64), 31
  %52 = icmp eq i64 %51, 0
  call void @llvm.assume(i1 %52)
  call void @vector_scalar_mul_aie_scalar(ptr @in_cons_buff_1, ptr @out_buff_1, ptr @infactor_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %53 = add i64 %40, 2
  br label %39

54:                                               ; preds = %39
  call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

declare void @llvm.aie2.acquire(i32, i32)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #0

declare void @vector_scalar_mul_aie_scalar(ptr, ptr, ptr, i32)

declare void @llvm.aie2.release(i32, i32)

; Function Attrs: mustprogress nounwind
define dso_local void @llvm___aie2___acquire(i32 noundef %0, i32 noundef %1) local_unnamed_addr addrspace(1) #1 {
  tail call addrspace(1) void @llvm.chess_memory_fence()
  tail call addrspace(1) void @_Z25chess_separator_schedulerv() #4
  tail call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_acquire_guarded___uint___uint(i32 zeroext %0, i32 zeroext %1) #4
  tail call addrspace(1) void @_Z25chess_separator_schedulerv() #4
  tail call addrspace(1) void @llvm.chess_memory_fence()
  ret void
}

; Function Attrs: nounwind willreturn
declare void @llvm.chess_memory_fence() addrspace(1) #2

; Function Attrs: nounwind memory(inaccessiblemem: readwrite)
declare dso_local void @_Z25chess_separator_schedulerv() local_unnamed_addr addrspace(1) #3

; Function Attrs: nounwind memory(inaccessiblemem: readwrite)
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_acquire_guarded___uint___uint(i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #3

; Function Attrs: mustprogress nounwind
define dso_local void @llvm___aie2___release(i32 noundef %0, i32 noundef %1) local_unnamed_addr addrspace(1) #1 {
  tail call addrspace(1) void @llvm.chess_memory_fence()
  tail call addrspace(1) void @_Z25chess_separator_schedulerv() #4
  tail call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_release_guarded___uint___sint(i32 zeroext %0, i32 signext %1) #4
  tail call addrspace(1) void @_Z25chess_separator_schedulerv() #4
  tail call addrspace(1) void @llvm.chess_memory_fence()
  ret void
}

; Function Attrs: nounwind memory(inaccessiblemem: readwrite)
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_release_guarded___uint___sint(i32 zeroext, i32 signext) local_unnamed_addr addrspace(1) #3

; Function Attrs: nounwind memory(inaccessiblemem: readwrite)
define dso_local void @llvm___aie___event0() local_unnamed_addr addrspace(1) #3 {
  tail call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_event_uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t zeroinitializer) #4
  ret void
}

; Function Attrs: nounwind memory(inaccessiblemem: readwrite)
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_event_uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t) local_unnamed_addr addrspace(1) #3

; Function Attrs: nounwind memory(inaccessiblemem: readwrite)
define dso_local void @llvm___aie___event1() local_unnamed_addr addrspace(1) #3 {
  tail call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_event_uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t { i2 1 }) #4
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #1 = { mustprogress nounwind "frame-pointer"="all" "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #2 = { nounwind willreturn }
attributes #3 = { nounwind memory(inaccessiblemem: readwrite) "frame-pointer"="all" "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { nounwind memory(inaccessiblemem: readwrite) "no-builtin-memcpy" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.linker.options = !{}
!llvm.chess.memory-units = !{!3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{i32 0, i8 undef}
!4 = !{i32 2, i8 undef}
!5 = !{i32 3, i8 undef}
!6 = !{i32 4, i8 undef}
!7 = !{i32 5, i8 undef}
!8 = !{i32 6, i8 undef}
!9 = !{i32 7, i8 undef}
!10 = !{i32 8, i8 undef}
!11 = !{i32 9, i8 undef}
!12 = !{i32 10, i8 undef}
!13 = !{i32 11, i8 undef}
!14 = !{i32 12, i8 undef}
!15 = !{i32 13, i8 undef}
!16 = !{i32 14, i8 undef}
!17 = !{!"clang version 16.0.3 (/u/sgasip/ipd/repositories/llvm_ipd 6a0b186d7c0e25173296a8e19f630e71bd7e8ed9)"}
