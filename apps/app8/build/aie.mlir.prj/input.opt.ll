; ModuleID = '/notebooks/my_mlir-aie/apps/app8/build/aie.mlir.prj/input.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@u_cons_buff_1 = external global [1024 x float]
@u_cons_buff_0 = external global [1024 x float]
@v_cons_buff_1 = external global [1024 x float]
@v_cons_buff_0 = external global [1024 x float]
@w_cons_buff_1 = external global [1024 x float]
@w_cons_buff_0 = external global [1024 x float]
@l_cons_buff_1 = external global [1 x float]
@l_cons_buff_0 = external global [1 x float]
@m_cons_buff_1 = external global [1 x float]
@m_cons_buff_0 = external global [1 x float]
@n_cons_buff_1 = external global [1 x float]
@n_cons_buff_0 = external global [1 x float]
@addA0_buff_1 = external global [1024 x float]
@addA0_buff_0 = external global [1024 x float]
@addA1_buff_1 = external global [1024 x float]
@addA1_buff_0 = external global [1024 x float]
@out_buff_1 = external global [1024 x float]
@out_buff_0 = external global [1024 x float]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @vector_scalar_mul_aie_scalar(ptr, ptr, ptr, i32) local_unnamed_addr

; Function Attrs: nounwind
define void @core_2_3() local_unnamed_addr #0 {
.preheader5:
  br label %0

0:                                                ; preds = %0, %.preheader5
  %niter = phi i64 [ 0, %.preheader5 ], [ %niter.next.3, %0 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 4611686018427387900
  br i1 %niter.ncmp.3, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %0, %.epil.preheader
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.epil.preheader, !llvm.loop !1

.epilog-lcssa:                                    ; preds = %.epil.preheader
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  br label %1

1:                                                ; preds = %1, %.epilog-lcssa
  %niter12 = phi i64 [ 0, %.epilog-lcssa ], [ %niter12.next.3, %1 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter12.next.3 = add nuw nsw i64 %niter12, 4
  %niter12.ncmp.3 = icmp eq i64 %niter12.next.3, 4611686018427387900
  br i1 %niter12.ncmp.3, label %.epil.preheader9, label %1

.epil.preheader9:                                 ; preds = %1, %.epil.preheader9
  %epil.iter10 = phi i64 [ %epil.iter10.next, %.epil.preheader9 ], [ 0, %1 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter10.next = add i64 %epil.iter10, 1
  %epil.iter10.cmp.not = icmp eq i64 %epil.iter10.next, 3
  br i1 %epil.iter10.cmp.not, label %.preheader5.1, label %.epil.preheader9, !llvm.loop !3

.preheader5.1:                                    ; preds = %.epil.preheader9
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  br label %2

2:                                                ; preds = %2, %.preheader5.1
  %niter21 = phi i64 [ 0, %.preheader5.1 ], [ %niter21.next.3, %2 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter21.next.3 = add nuw nsw i64 %niter21, 4
  %niter21.ncmp.3 = icmp eq i64 %niter21.next.3, 4611686018427387900
  br i1 %niter21.ncmp.3, label %.epil.preheader17, label %2

.epil.preheader17:                                ; preds = %2, %.epil.preheader17
  %epil.iter18 = phi i64 [ %epil.iter18.next, %.epil.preheader17 ], [ 0, %2 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter18.next = add i64 %epil.iter18, 1
  %epil.iter18.cmp.not = icmp eq i64 %epil.iter18.next, 3
  br i1 %epil.iter18.cmp.not, label %.epilog-lcssa20, label %.epil.preheader17, !llvm.loop !4

.epilog-lcssa20:                                  ; preds = %.epil.preheader17
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  br label %3

3:                                                ; preds = %3, %.epilog-lcssa20
  %niter26 = phi i64 [ 0, %.epilog-lcssa20 ], [ %niter26.next.3, %3 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter26.next.3 = add nuw nsw i64 %niter26, 4
  %niter26.ncmp.3 = icmp eq i64 %niter26.next.3, 4611686018427387900
  br i1 %niter26.ncmp.3, label %.epil.preheader23, label %3

.epil.preheader23:                                ; preds = %3, %.epil.preheader23
  %epil.iter24 = phi i64 [ %epil.iter24.next, %.epil.preheader23 ], [ 0, %3 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter24.next = add i64 %epil.iter24, 1
  %epil.iter24.cmp.not = icmp eq i64 %epil.iter24.next, 3
  br i1 %epil.iter24.cmp.not, label %.preheader5.2, label %.epil.preheader23, !llvm.loop !5

.preheader5.2:                                    ; preds = %.epil.preheader23
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  br label %4

4:                                                ; preds = %4, %.preheader5.2
  %niter32 = phi i64 [ 0, %.preheader5.2 ], [ %niter32.next.3, %4 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter32.next.3 = add nuw nsw i64 %niter32, 4
  %niter32.ncmp.3 = icmp eq i64 %niter32.next.3, 4611686018427387900
  br i1 %niter32.ncmp.3, label %.epil.preheader28, label %4

.epil.preheader28:                                ; preds = %4, %.epil.preheader28
  %epil.iter29 = phi i64 [ %epil.iter29.next, %.epil.preheader28 ], [ 0, %4 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter29.next = add i64 %epil.iter29, 1
  %epil.iter29.cmp.not = icmp eq i64 %epil.iter29.next, 3
  br i1 %epil.iter29.cmp.not, label %.epilog-lcssa31, label %.epil.preheader28, !llvm.loop !6

.epilog-lcssa31:                                  ; preds = %.epil.preheader28
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  br label %5

5:                                                ; preds = %5, %.epilog-lcssa31
  %niter37 = phi i64 [ 0, %.epilog-lcssa31 ], [ %niter37.next.3, %5 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter37.next.3 = add nuw nsw i64 %niter37, 4
  %niter37.ncmp.3 = icmp eq i64 %niter37.next.3, 4611686018427387900
  br i1 %niter37.ncmp.3, label %.epil.preheader34, label %5

.epil.preheader34:                                ; preds = %5, %.epil.preheader34
  %epil.iter35 = phi i64 [ %epil.iter35.next, %.epil.preheader34 ], [ 0, %5 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter35.next = add i64 %epil.iter35, 1
  %epil.iter35.cmp.not = icmp eq i64 %epil.iter35.next, 3
  br i1 %epil.iter35.cmp.not, label %.preheader5.3, label %.epil.preheader34, !llvm.loop !7

.preheader5.3:                                    ; preds = %.epil.preheader34
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  br label %6

6:                                                ; preds = %6, %.preheader5.3
  %niter43 = phi i64 [ 0, %.preheader5.3 ], [ %niter43.next.3, %6 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter43.next.3 = add nuw nsw i64 %niter43, 4
  %niter43.ncmp.3 = icmp eq i64 %niter43.next.3, 4611686018427387900
  br i1 %niter43.ncmp.3, label %.epil.preheader39, label %6

.epil.preheader39:                                ; preds = %6, %.epil.preheader39
  %epil.iter40 = phi i64 [ %epil.iter40.next, %.epil.preheader39 ], [ 0, %6 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter40.next = add i64 %epil.iter40, 1
  %epil.iter40.cmp.not = icmp eq i64 %epil.iter40.next, 3
  br i1 %epil.iter40.cmp.not, label %.epilog-lcssa42, label %.epil.preheader39, !llvm.loop !8

.epilog-lcssa42:                                  ; preds = %.epil.preheader39
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  br label %7

7:                                                ; preds = %7, %.epilog-lcssa42
  %niter48 = phi i64 [ 0, %.epilog-lcssa42 ], [ %niter48.next.3, %7 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter48.next.3 = add nuw nsw i64 %niter48, 4
  %niter48.ncmp.3 = icmp eq i64 %niter48.next.3, 4611686018427387900
  br i1 %niter48.ncmp.3, label %.epil.preheader45, label %7

.epil.preheader45:                                ; preds = %7, %.epil.preheader45
  %epil.iter46 = phi i64 [ %epil.iter46.next, %.epil.preheader45 ], [ 0, %7 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter46.next = add i64 %epil.iter46, 1
  %epil.iter46.cmp.not = icmp eq i64 %epil.iter46.next, 3
  br i1 %epil.iter46.cmp.not, label %.preheader.preheader, label %.epil.preheader45, !llvm.loop !9

.preheader.preheader:                             ; preds = %.epil.preheader45
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %niter53 = phi i64 [ 0, %.preheader.preheader ], [ %niter53.next.3, %.preheader ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter53.next.3 = add nuw nsw i64 %niter53, 4
  %niter53.ncmp.3 = icmp eq i64 %niter53.next.3, 4611686018427387900
  br i1 %niter53.ncmp.3, label %.preheader.epil, label %.preheader

.preheader.epil:                                  ; preds = %.preheader, %.preheader.epil
  %epil.iter50 = phi i64 [ %epil.iter50.next, %.preheader.epil ], [ 0, %.preheader ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter50.next = add i64 %epil.iter50, 1
  %epil.iter50.cmp.not = icmp eq i64 %epil.iter50.next, 3
  br i1 %epil.iter50.cmp.not, label %.epilog-lcssa52, label %.preheader.epil, !llvm.loop !10

.epilog-lcssa52:                                  ; preds = %.preheader.epil
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_3_2() local_unnamed_addr {
  br label %.new

.new:                                             ; preds = %0, %.epilog-lcssa11
  %1 = phi i64 [ 0, %0 ], [ %4, %.epilog-lcssa11 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %2

2:                                                ; preds = %2, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %2 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 4611686018427387900
  br i1 %niter.ncmp.3, label %.epil.preheader, label %2

.epil.preheader:                                  ; preds = %2, %.epil.preheader
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %2 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.epil.preheader, !llvm.loop !11

.epilog-lcssa:                                    ; preds = %.epil.preheader
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %3

3:                                                ; preds = %3, %.epilog-lcssa
  %niter12 = phi i64 [ 0, %.epilog-lcssa ], [ %niter12.next.3, %3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter12.next.3 = add nuw nsw i64 %niter12, 4
  %niter12.ncmp.3 = icmp eq i64 %niter12.next.3, 4611686018427387900
  br i1 %niter12.ncmp.3, label %.epil.preheader8, label %3

.epil.preheader8:                                 ; preds = %3, %.epil.preheader8
  %epil.iter9 = phi i64 [ %epil.iter9.next, %.epil.preheader8 ], [ 0, %3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter9.next = add i64 %epil.iter9, 1
  %epil.iter9.cmp.not = icmp eq i64 %epil.iter9.next, 3
  br i1 %epil.iter9.cmp.not, label %.epilog-lcssa11, label %.epil.preheader8, !llvm.loop !12

.epilog-lcssa11:                                  ; preds = %.epil.preheader8
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %4 = add nuw nsw i64 %1, 2
  %5 = icmp ult i64 %1, 6
  br i1 %5, label %.new, label %.new13

.new13:                                           ; preds = %.epilog-lcssa11
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %6

6:                                                ; preds = %6, %.new13
  %niter19 = phi i64 [ 0, %.new13 ], [ %niter19.next.3, %6 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter19.next.3 = add nuw nsw i64 %niter19, 4
  %niter19.ncmp.3 = icmp eq i64 %niter19.next.3, 4611686018427387900
  br i1 %niter19.ncmp.3, label %.epil.preheader15, label %6

.epil.preheader15:                                ; preds = %6, %.epil.preheader15
  %epil.iter16 = phi i64 [ %epil.iter16.next, %.epil.preheader15 ], [ 0, %6 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter16.next = add i64 %epil.iter16, 1
  %epil.iter16.cmp.not = icmp eq i64 %epil.iter16.next, 3
  br i1 %epil.iter16.cmp.not, label %.epilog-lcssa18, label %.epil.preheader15, !llvm.loop !13

.epilog-lcssa18:                                  ; preds = %.epil.preheader15
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_2_2() local_unnamed_addr {
  br label %.new

.new:                                             ; preds = %0, %.epilog-lcssa11
  %1 = phi i64 [ 0, %0 ], [ %4, %.epilog-lcssa11 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %2

2:                                                ; preds = %2, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %2 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 4611686018427387900
  br i1 %niter.ncmp.3, label %.epil.preheader, label %2

.epil.preheader:                                  ; preds = %2, %.epil.preheader
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %2 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.epil.preheader, !llvm.loop !14

.epilog-lcssa:                                    ; preds = %.epil.preheader
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %3

3:                                                ; preds = %3, %.epilog-lcssa
  %niter12 = phi i64 [ 0, %.epilog-lcssa ], [ %niter12.next.3, %3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter12.next.3 = add nuw nsw i64 %niter12, 4
  %niter12.ncmp.3 = icmp eq i64 %niter12.next.3, 4611686018427387900
  br i1 %niter12.ncmp.3, label %.epil.preheader8, label %3

.epil.preheader8:                                 ; preds = %3, %.epil.preheader8
  %epil.iter9 = phi i64 [ %epil.iter9.next, %.epil.preheader8 ], [ 0, %3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter9.next = add i64 %epil.iter9, 1
  %epil.iter9.cmp.not = icmp eq i64 %epil.iter9.next, 3
  br i1 %epil.iter9.cmp.not, label %.epilog-lcssa11, label %.epil.preheader8, !llvm.loop !15

.epilog-lcssa11:                                  ; preds = %.epil.preheader8
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %4 = add nuw nsw i64 %1, 2
  %5 = icmp ult i64 %1, 6
  br i1 %5, label %.new, label %.new13

.new13:                                           ; preds = %.epilog-lcssa11
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %6

6:                                                ; preds = %6, %.new13
  %niter19 = phi i64 [ 0, %.new13 ], [ %niter19.next.3, %6 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter19.next.3 = add nuw nsw i64 %niter19, 4
  %niter19.ncmp.3 = icmp eq i64 %niter19.next.3, 4611686018427387900
  br i1 %niter19.ncmp.3, label %.epil.preheader15, label %6

.epil.preheader15:                                ; preds = %6, %.epil.preheader15
  %epil.iter16 = phi i64 [ %epil.iter16.next, %.epil.preheader15 ], [ 0, %6 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter16.next = add i64 %epil.iter16, 1
  %epil.iter16.cmp.not = icmp eq i64 %epil.iter16.next, 3
  br i1 %epil.iter16.cmp.not, label %.epilog-lcssa18, label %.epil.preheader15, !llvm.loop !16

.epilog-lcssa18:                                  ; preds = %.epil.preheader15
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_1_2() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @l_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @l_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @l_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @l_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @l_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @l_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @l_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @l_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @l_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %3 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %3, 9223372036854775806
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 54, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 55, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.unroll.disable"}
!3 = distinct !{!3, !2}
!4 = distinct !{!4, !2}
!5 = distinct !{!5, !2}
!6 = distinct !{!6, !2}
!7 = distinct !{!7, !2}
!8 = distinct !{!8, !2}
!9 = distinct !{!9, !2}
!10 = distinct !{!10, !2}
!11 = distinct !{!11, !2}
!12 = distinct !{!12, !2}
!13 = distinct !{!13, !2}
!14 = distinct !{!14, !2}
!15 = distinct !{!15, !2}
!16 = distinct !{!16, !2}
