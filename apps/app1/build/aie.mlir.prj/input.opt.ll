; ModuleID = '/notebooks/my_mlir-aie/apps/app1/build/aie.mlir.prj/input.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@in_cons_buff_1 = external global [1024 x i32]
@in_cons_buff_0 = external global [1024 x i32]
@infactor_cons_buff_1 = external global [1 x i32]
@infactor_cons_buff_0 = external global [1 x i32]
@in2to3_buff_1 = external global [1024 x i32]
@in2to3_buff_0 = external global [1024 x i32]
@out_buff_1 = external global [1024 x i32]
@out_buff_0 = external global [1024 x i32]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @vector_scalar_mul_aie_scalar(ptr, ptr, ptr, i32) local_unnamed_addr

; Function Attrs: nounwind
define void @core_0_3() local_unnamed_addr #0 {
.new:
  %0 = and i64 ptrtoint (ptr @in2to3_buff_0 to i64), 28
  %1 = icmp eq i64 %0, 0
  %2 = and i64 ptrtoint (ptr @out_buff_0 to i64), 28
  %3 = icmp eq i64 %2, 0
  %4 = and i64 ptrtoint (ptr @in2to3_buff_1 to i64), 28
  %5 = icmp eq i64 %4, 0
  %6 = and i64 ptrtoint (ptr @out_buff_1 to i64), 28
  %7 = icmp eq i64 %6, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.preheader ]
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.assume(i1 %1)
  tail call void @llvm.assume(i1 %3)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.assume(i1 %5)
  tail call void @llvm.assume(i1 %7)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_1, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_1, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_1, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_1, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_1, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_1, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_1, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_1, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 9223372036854775804
  br i1 %niter.ncmp.3, label %.preheader.epil, label %.preheader

.preheader.epil:                                  ; preds = %.preheader, %.preheader.epil
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader ]
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.assume(i1 %1)
  tail call void @llvm.assume(i1 %3)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.assume(i1 %5)
  tail call void @llvm.assume(i1 %7)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_1, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_1, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.epil, !llvm.loop !1

.epilog-lcssa:                                    ; preds = %.preheader.epil
  ret void
}

define void @core_0_2() local_unnamed_addr {
  %1 = and i64 ptrtoint (ptr @in2to3_buff_0 to i64), 28
  %2 = icmp eq i64 %1, 0
  %3 = and i64 ptrtoint (ptr @infactor_cons_buff_0 to i64), 28
  %4 = icmp eq i64 %3, 0
  %5 = and i64 ptrtoint (ptr @in_cons_buff_0 to i64), 28
  %6 = icmp eq i64 %5, 0
  %7 = and i64 ptrtoint (ptr @in2to3_buff_1 to i64), 28
  %8 = icmp eq i64 %7, 0
  %9 = and i64 ptrtoint (ptr @in_cons_buff_1 to i64), 28
  %10 = icmp eq i64 %9, 0
  %11 = and i64 ptrtoint (ptr @infactor_cons_buff_1 to i64), 28
  %12 = icmp eq i64 %11, 0
  br label %13

13:                                               ; preds = %0, %13
  %14 = phi i64 [ 0, %0 ], [ %15, %13 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.assume(i1 %2)
  tail call void @llvm.assume(i1 %4)
  tail call void @llvm.assume(i1 %6)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_0, ptr nonnull @in2to3_buff_0, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.assume(i1 %8)
  tail call void @llvm.assume(i1 %10)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_1, ptr nonnull @in2to3_buff_1, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_0, ptr nonnull @in2to3_buff_0, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_1, ptr nonnull @in2to3_buff_1, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.assume(i1 %12)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_0, ptr nonnull @in2to3_buff_0, ptr nonnull @infactor_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_1, ptr nonnull @in2to3_buff_1, ptr nonnull @infactor_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_0, ptr nonnull @in2to3_buff_0, ptr nonnull @infactor_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_1, ptr nonnull @in2to3_buff_1, ptr nonnull @infactor_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %15 = add nuw nsw i64 %14, 2
  %.not = icmp eq i64 %15, 9223372036854775806
  br i1 %.not, label %16, label %13

16:                                               ; preds = %13
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_0, ptr nonnull @in2to3_buff_0, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_1, ptr nonnull @in2to3_buff_1, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_0, ptr nonnull @in2to3_buff_0, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_1, ptr nonnull @in2to3_buff_1, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i20(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i20, i1 immarg) #2

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.unroll.disable"}
