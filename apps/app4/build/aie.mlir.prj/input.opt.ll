; ModuleID = '/notebooks/my_mlir-aie/apps/app4/build/aie.mlir.prj/input.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@in0_cons_buff_1 = external global [1024 x i32]
@in0_cons_buff_0 = external global [1024 x i32]
@infactor_cons_buff_1 = external global [1 x i32]
@infactor_cons_buff_0 = external global [1 x i32]
@in0to1_buff_1 = external global [1024 x i32]
@in0to1_buff_0 = external global [1024 x i32]
@in1to2_buff_1 = external global [1024 x i32]
@in1to2_buff_0 = external global [1024 x i32]
@in2to3_buff_1 = external global [1024 x i32]
@in2to3_buff_0 = external global [1024 x i32]
@out_buff_1 = external global [1024 x i32]
@out_buff_0 = external global [1024 x i32]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @vector_scalar_mul_aie_scalar(ptr, ptr, ptr, i32) local_unnamed_addr

declare void @passthrough(ptr, ptr, i32) local_unnamed_addr

; Function Attrs: nounwind
define void @core_0_5() local_unnamed_addr #0 {
  %1 = and i64 ptrtoint (ptr @in2to3_buff_0 to i64), 28
  %2 = icmp eq i64 %1, 0
  %3 = and i64 ptrtoint (ptr @out_buff_0 to i64), 28
  %4 = icmp eq i64 %3, 0
  %5 = and i64 ptrtoint (ptr @in2to3_buff_1 to i64), 28
  %6 = icmp eq i64 %5, 0
  %7 = and i64 ptrtoint (ptr @out_buff_1 to i64), 28
  %8 = icmp eq i64 %7, 0
  br label %.preheader12

.preheader12:                                     ; preds = %0, %409
  %9 = phi i64 [ 0, %0 ], [ %410, %409 ]
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.assume(i1 %2)
  tail call void @llvm.assume(i1 %4)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.assume(i1 %6)
  tail call void @llvm.assume(i1 %8)
  br label %10

.preheader:                                       ; preds = %409
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %411

10:                                               ; preds = %10, %.preheader12
  %11 = phi i64 [ 0, %.preheader12 ], [ %47, %10 ]
  %12 = trunc nuw i64 %11 to i20
  %13 = getelementptr i32, ptr @in2to3_buff_1, i20 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i32, ptr @out_buff_1, i20 %12
  store i32 %14, ptr %15, align 4
  %16 = or disjoint i20 %12, 1
  %17 = getelementptr i32, ptr @in2to3_buff_1, i20 %16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i32, ptr @out_buff_1, i20 %16
  store i32 %18, ptr %19, align 4
  %20 = trunc i64 %11 to i20
  %21 = or disjoint i20 %20, 2
  %22 = getelementptr i32, ptr @in2to3_buff_1, i20 %21
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i32, ptr @out_buff_1, i20 %21
  store i32 %23, ptr %24, align 4
  %25 = or disjoint i20 %20, 3
  %26 = getelementptr i32, ptr @in2to3_buff_1, i20 %25
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i32, ptr @out_buff_1, i20 %25
  store i32 %27, ptr %28, align 4
  %29 = trunc i64 %11 to i20
  %30 = or disjoint i20 %29, 4
  %31 = getelementptr i32, ptr @in2to3_buff_1, i20 %30
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i32, ptr @out_buff_1, i20 %30
  store i32 %32, ptr %33, align 4
  %34 = or disjoint i20 %29, 5
  %35 = getelementptr i32, ptr @in2to3_buff_1, i20 %34
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i32, ptr @out_buff_1, i20 %34
  store i32 %36, ptr %37, align 4
  %38 = or disjoint i64 %11, 6
  %39 = trunc nuw i64 %38 to i20
  %40 = getelementptr i32, ptr @in2to3_buff_1, i20 %39
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i32, ptr @out_buff_1, i20 %39
  store i32 %41, ptr %42, align 4
  %43 = or disjoint i20 %39, 1
  %44 = getelementptr i32, ptr @in2to3_buff_1, i20 %43
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr i32, ptr @out_buff_1, i20 %43
  store i32 %45, ptr %46, align 4
  %47 = add nuw nsw i64 %11, 8
  %48 = icmp ult i64 %38, 1022
  br i1 %48, label %10, label %49

49:                                               ; preds = %10
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %50

50:                                               ; preds = %50, %49
  %51 = phi i64 [ 0, %49 ], [ %87, %50 ]
  %52 = trunc nuw i64 %51 to i20
  %53 = getelementptr i32, ptr @in2to3_buff_1, i20 %52
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i32, ptr @out_buff_1, i20 %52
  store i32 %54, ptr %55, align 4
  %56 = or disjoint i20 %52, 1
  %57 = getelementptr i32, ptr @in2to3_buff_1, i20 %56
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr i32, ptr @out_buff_1, i20 %56
  store i32 %58, ptr %59, align 4
  %60 = trunc i64 %51 to i20
  %61 = or disjoint i20 %60, 2
  %62 = getelementptr i32, ptr @in2to3_buff_1, i20 %61
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i32, ptr @out_buff_1, i20 %61
  store i32 %63, ptr %64, align 4
  %65 = or disjoint i20 %60, 3
  %66 = getelementptr i32, ptr @in2to3_buff_1, i20 %65
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr i32, ptr @out_buff_1, i20 %65
  store i32 %67, ptr %68, align 4
  %69 = trunc i64 %51 to i20
  %70 = or disjoint i20 %69, 4
  %71 = getelementptr i32, ptr @in2to3_buff_1, i20 %70
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr i32, ptr @out_buff_1, i20 %70
  store i32 %72, ptr %73, align 4
  %74 = or disjoint i20 %69, 5
  %75 = getelementptr i32, ptr @in2to3_buff_1, i20 %74
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr i32, ptr @out_buff_1, i20 %74
  store i32 %76, ptr %77, align 4
  %78 = or disjoint i64 %51, 6
  %79 = trunc nuw i64 %78 to i20
  %80 = getelementptr i32, ptr @in2to3_buff_1, i20 %79
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr i32, ptr @out_buff_1, i20 %79
  store i32 %81, ptr %82, align 4
  %83 = or disjoint i20 %79, 1
  %84 = getelementptr i32, ptr @in2to3_buff_1, i20 %83
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr i32, ptr @out_buff_1, i20 %83
  store i32 %85, ptr %86, align 4
  %87 = add nuw nsw i64 %51, 8
  %88 = icmp ult i64 %78, 1022
  br i1 %88, label %50, label %89

89:                                               ; preds = %50
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %90

90:                                               ; preds = %90, %89
  %91 = phi i64 [ 0, %89 ], [ %127, %90 ]
  %92 = trunc nuw i64 %91 to i20
  %93 = getelementptr i32, ptr @in2to3_buff_1, i20 %92
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr i32, ptr @out_buff_1, i20 %92
  store i32 %94, ptr %95, align 4
  %96 = or disjoint i20 %92, 1
  %97 = getelementptr i32, ptr @in2to3_buff_1, i20 %96
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr i32, ptr @out_buff_1, i20 %96
  store i32 %98, ptr %99, align 4
  %100 = trunc i64 %91 to i20
  %101 = or disjoint i20 %100, 2
  %102 = getelementptr i32, ptr @in2to3_buff_1, i20 %101
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr i32, ptr @out_buff_1, i20 %101
  store i32 %103, ptr %104, align 4
  %105 = or disjoint i20 %100, 3
  %106 = getelementptr i32, ptr @in2to3_buff_1, i20 %105
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr i32, ptr @out_buff_1, i20 %105
  store i32 %107, ptr %108, align 4
  %109 = trunc i64 %91 to i20
  %110 = or disjoint i20 %109, 4
  %111 = getelementptr i32, ptr @in2to3_buff_1, i20 %110
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i32, ptr @out_buff_1, i20 %110
  store i32 %112, ptr %113, align 4
  %114 = or disjoint i20 %109, 5
  %115 = getelementptr i32, ptr @in2to3_buff_1, i20 %114
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr i32, ptr @out_buff_1, i20 %114
  store i32 %116, ptr %117, align 4
  %118 = or disjoint i64 %91, 6
  %119 = trunc nuw i64 %118 to i20
  %120 = getelementptr i32, ptr @in2to3_buff_1, i20 %119
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr i32, ptr @out_buff_1, i20 %119
  store i32 %121, ptr %122, align 4
  %123 = or disjoint i20 %119, 1
  %124 = getelementptr i32, ptr @in2to3_buff_1, i20 %123
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr i32, ptr @out_buff_1, i20 %123
  store i32 %125, ptr %126, align 4
  %127 = add nuw nsw i64 %91, 8
  %128 = icmp ult i64 %118, 1022
  br i1 %128, label %90, label %129

129:                                              ; preds = %90
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %130

130:                                              ; preds = %130, %129
  %131 = phi i64 [ 0, %129 ], [ %167, %130 ]
  %132 = trunc nuw i64 %131 to i20
  %133 = getelementptr i32, ptr @in2to3_buff_1, i20 %132
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr i32, ptr @out_buff_1, i20 %132
  store i32 %134, ptr %135, align 4
  %136 = or disjoint i20 %132, 1
  %137 = getelementptr i32, ptr @in2to3_buff_1, i20 %136
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr i32, ptr @out_buff_1, i20 %136
  store i32 %138, ptr %139, align 4
  %140 = trunc i64 %131 to i20
  %141 = or disjoint i20 %140, 2
  %142 = getelementptr i32, ptr @in2to3_buff_1, i20 %141
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr i32, ptr @out_buff_1, i20 %141
  store i32 %143, ptr %144, align 4
  %145 = or disjoint i20 %140, 3
  %146 = getelementptr i32, ptr @in2to3_buff_1, i20 %145
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr i32, ptr @out_buff_1, i20 %145
  store i32 %147, ptr %148, align 4
  %149 = trunc i64 %131 to i20
  %150 = or disjoint i20 %149, 4
  %151 = getelementptr i32, ptr @in2to3_buff_1, i20 %150
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr i32, ptr @out_buff_1, i20 %150
  store i32 %152, ptr %153, align 4
  %154 = or disjoint i20 %149, 5
  %155 = getelementptr i32, ptr @in2to3_buff_1, i20 %154
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr i32, ptr @out_buff_1, i20 %154
  store i32 %156, ptr %157, align 4
  %158 = or disjoint i64 %131, 6
  %159 = trunc nuw i64 %158 to i20
  %160 = getelementptr i32, ptr @in2to3_buff_1, i20 %159
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr i32, ptr @out_buff_1, i20 %159
  store i32 %161, ptr %162, align 4
  %163 = or disjoint i20 %159, 1
  %164 = getelementptr i32, ptr @in2to3_buff_1, i20 %163
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr i32, ptr @out_buff_1, i20 %163
  store i32 %165, ptr %166, align 4
  %167 = add nuw nsw i64 %131, 8
  %168 = icmp ult i64 %158, 1022
  br i1 %168, label %130, label %169

169:                                              ; preds = %130
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %170

170:                                              ; preds = %170, %169
  %171 = phi i64 [ 0, %169 ], [ %207, %170 ]
  %172 = trunc nuw i64 %171 to i20
  %173 = getelementptr i32, ptr @in2to3_buff_0, i20 %172
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr i32, ptr @out_buff_0, i20 %172
  store i32 %174, ptr %175, align 4
  %176 = or disjoint i20 %172, 1
  %177 = getelementptr i32, ptr @in2to3_buff_0, i20 %176
  %178 = load i32, ptr %177, align 4
  %179 = getelementptr i32, ptr @out_buff_0, i20 %176
  store i32 %178, ptr %179, align 4
  %180 = trunc i64 %171 to i20
  %181 = or disjoint i20 %180, 2
  %182 = getelementptr i32, ptr @in2to3_buff_0, i20 %181
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr i32, ptr @out_buff_0, i20 %181
  store i32 %183, ptr %184, align 4
  %185 = or disjoint i20 %180, 3
  %186 = getelementptr i32, ptr @in2to3_buff_0, i20 %185
  %187 = load i32, ptr %186, align 4
  %188 = getelementptr i32, ptr @out_buff_0, i20 %185
  store i32 %187, ptr %188, align 4
  %189 = trunc i64 %171 to i20
  %190 = or disjoint i20 %189, 4
  %191 = getelementptr i32, ptr @in2to3_buff_0, i20 %190
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr i32, ptr @out_buff_0, i20 %190
  store i32 %192, ptr %193, align 4
  %194 = or disjoint i20 %189, 5
  %195 = getelementptr i32, ptr @in2to3_buff_0, i20 %194
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr i32, ptr @out_buff_0, i20 %194
  store i32 %196, ptr %197, align 4
  %198 = or disjoint i64 %171, 6
  %199 = trunc nuw i64 %198 to i20
  %200 = getelementptr i32, ptr @in2to3_buff_0, i20 %199
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr i32, ptr @out_buff_0, i20 %199
  store i32 %201, ptr %202, align 4
  %203 = or disjoint i20 %199, 1
  %204 = getelementptr i32, ptr @in2to3_buff_0, i20 %203
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr i32, ptr @out_buff_0, i20 %203
  store i32 %205, ptr %206, align 4
  %207 = add nuw nsw i64 %171, 8
  %208 = icmp ult i64 %198, 1022
  br i1 %208, label %170, label %209

209:                                              ; preds = %170
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_1, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %210

210:                                              ; preds = %210, %209
  %211 = phi i64 [ 0, %209 ], [ %247, %210 ]
  %212 = trunc nuw i64 %211 to i20
  %213 = getelementptr i32, ptr @in2to3_buff_0, i20 %212
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr i32, ptr @out_buff_0, i20 %212
  store i32 %214, ptr %215, align 4
  %216 = or disjoint i20 %212, 1
  %217 = getelementptr i32, ptr @in2to3_buff_0, i20 %216
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr i32, ptr @out_buff_0, i20 %216
  store i32 %218, ptr %219, align 4
  %220 = trunc i64 %211 to i20
  %221 = or disjoint i20 %220, 2
  %222 = getelementptr i32, ptr @in2to3_buff_0, i20 %221
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr i32, ptr @out_buff_0, i20 %221
  store i32 %223, ptr %224, align 4
  %225 = or disjoint i20 %220, 3
  %226 = getelementptr i32, ptr @in2to3_buff_0, i20 %225
  %227 = load i32, ptr %226, align 4
  %228 = getelementptr i32, ptr @out_buff_0, i20 %225
  store i32 %227, ptr %228, align 4
  %229 = trunc i64 %211 to i20
  %230 = or disjoint i20 %229, 4
  %231 = getelementptr i32, ptr @in2to3_buff_0, i20 %230
  %232 = load i32, ptr %231, align 4
  %233 = getelementptr i32, ptr @out_buff_0, i20 %230
  store i32 %232, ptr %233, align 4
  %234 = or disjoint i20 %229, 5
  %235 = getelementptr i32, ptr @in2to3_buff_0, i20 %234
  %236 = load i32, ptr %235, align 4
  %237 = getelementptr i32, ptr @out_buff_0, i20 %234
  store i32 %236, ptr %237, align 4
  %238 = or disjoint i64 %211, 6
  %239 = trunc nuw i64 %238 to i20
  %240 = getelementptr i32, ptr @in2to3_buff_0, i20 %239
  %241 = load i32, ptr %240, align 4
  %242 = getelementptr i32, ptr @out_buff_0, i20 %239
  store i32 %241, ptr %242, align 4
  %243 = or disjoint i20 %239, 1
  %244 = getelementptr i32, ptr @in2to3_buff_0, i20 %243
  %245 = load i32, ptr %244, align 4
  %246 = getelementptr i32, ptr @out_buff_0, i20 %243
  store i32 %245, ptr %246, align 4
  %247 = add nuw nsw i64 %211, 8
  %248 = icmp ult i64 %238, 1022
  br i1 %248, label %210, label %249

249:                                              ; preds = %210
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_1, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %250

250:                                              ; preds = %250, %249
  %251 = phi i64 [ 0, %249 ], [ %287, %250 ]
  %252 = trunc nuw i64 %251 to i20
  %253 = getelementptr i32, ptr @in2to3_buff_0, i20 %252
  %254 = load i32, ptr %253, align 4
  %255 = getelementptr i32, ptr @out_buff_0, i20 %252
  store i32 %254, ptr %255, align 4
  %256 = or disjoint i20 %252, 1
  %257 = getelementptr i32, ptr @in2to3_buff_0, i20 %256
  %258 = load i32, ptr %257, align 4
  %259 = getelementptr i32, ptr @out_buff_0, i20 %256
  store i32 %258, ptr %259, align 4
  %260 = trunc i64 %251 to i20
  %261 = or disjoint i20 %260, 2
  %262 = getelementptr i32, ptr @in2to3_buff_0, i20 %261
  %263 = load i32, ptr %262, align 4
  %264 = getelementptr i32, ptr @out_buff_0, i20 %261
  store i32 %263, ptr %264, align 4
  %265 = or disjoint i20 %260, 3
  %266 = getelementptr i32, ptr @in2to3_buff_0, i20 %265
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr i32, ptr @out_buff_0, i20 %265
  store i32 %267, ptr %268, align 4
  %269 = trunc i64 %251 to i20
  %270 = or disjoint i20 %269, 4
  %271 = getelementptr i32, ptr @in2to3_buff_0, i20 %270
  %272 = load i32, ptr %271, align 4
  %273 = getelementptr i32, ptr @out_buff_0, i20 %270
  store i32 %272, ptr %273, align 4
  %274 = or disjoint i20 %269, 5
  %275 = getelementptr i32, ptr @in2to3_buff_0, i20 %274
  %276 = load i32, ptr %275, align 4
  %277 = getelementptr i32, ptr @out_buff_0, i20 %274
  store i32 %276, ptr %277, align 4
  %278 = or disjoint i64 %251, 6
  %279 = trunc nuw i64 %278 to i20
  %280 = getelementptr i32, ptr @in2to3_buff_0, i20 %279
  %281 = load i32, ptr %280, align 4
  %282 = getelementptr i32, ptr @out_buff_0, i20 %279
  store i32 %281, ptr %282, align 4
  %283 = or disjoint i20 %279, 1
  %284 = getelementptr i32, ptr @in2to3_buff_0, i20 %283
  %285 = load i32, ptr %284, align 4
  %286 = getelementptr i32, ptr @out_buff_0, i20 %283
  store i32 %285, ptr %286, align 4
  %287 = add nuw nsw i64 %251, 8
  %288 = icmp ult i64 %278, 1022
  br i1 %288, label %250, label %289

289:                                              ; preds = %250
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_1, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %290

290:                                              ; preds = %290, %289
  %291 = phi i64 [ 0, %289 ], [ %327, %290 ]
  %292 = trunc nuw i64 %291 to i20
  %293 = getelementptr i32, ptr @in2to3_buff_0, i20 %292
  %294 = load i32, ptr %293, align 4
  %295 = getelementptr i32, ptr @out_buff_0, i20 %292
  store i32 %294, ptr %295, align 4
  %296 = or disjoint i20 %292, 1
  %297 = getelementptr i32, ptr @in2to3_buff_0, i20 %296
  %298 = load i32, ptr %297, align 4
  %299 = getelementptr i32, ptr @out_buff_0, i20 %296
  store i32 %298, ptr %299, align 4
  %300 = trunc i64 %291 to i20
  %301 = or disjoint i20 %300, 2
  %302 = getelementptr i32, ptr @in2to3_buff_0, i20 %301
  %303 = load i32, ptr %302, align 4
  %304 = getelementptr i32, ptr @out_buff_0, i20 %301
  store i32 %303, ptr %304, align 4
  %305 = or disjoint i20 %300, 3
  %306 = getelementptr i32, ptr @in2to3_buff_0, i20 %305
  %307 = load i32, ptr %306, align 4
  %308 = getelementptr i32, ptr @out_buff_0, i20 %305
  store i32 %307, ptr %308, align 4
  %309 = trunc i64 %291 to i20
  %310 = or disjoint i20 %309, 4
  %311 = getelementptr i32, ptr @in2to3_buff_0, i20 %310
  %312 = load i32, ptr %311, align 4
  %313 = getelementptr i32, ptr @out_buff_0, i20 %310
  store i32 %312, ptr %313, align 4
  %314 = or disjoint i20 %309, 5
  %315 = getelementptr i32, ptr @in2to3_buff_0, i20 %314
  %316 = load i32, ptr %315, align 4
  %317 = getelementptr i32, ptr @out_buff_0, i20 %314
  store i32 %316, ptr %317, align 4
  %318 = or disjoint i64 %291, 6
  %319 = trunc nuw i64 %318 to i20
  %320 = getelementptr i32, ptr @in2to3_buff_0, i20 %319
  %321 = load i32, ptr %320, align 4
  %322 = getelementptr i32, ptr @out_buff_0, i20 %319
  store i32 %321, ptr %322, align 4
  %323 = or disjoint i20 %319, 1
  %324 = getelementptr i32, ptr @in2to3_buff_0, i20 %323
  %325 = load i32, ptr %324, align 4
  %326 = getelementptr i32, ptr @out_buff_0, i20 %323
  store i32 %325, ptr %326, align 4
  %327 = add nuw nsw i64 %291, 8
  %328 = icmp ult i64 %318, 1022
  br i1 %328, label %290, label %329

329:                                              ; preds = %290
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_1, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %330

330:                                              ; preds = %330, %329
  %331 = phi i64 [ 0, %329 ], [ %367, %330 ]
  %332 = trunc nuw i64 %331 to i20
  %333 = getelementptr i32, ptr @in2to3_buff_0, i20 %332
  %334 = load i32, ptr %333, align 4
  %335 = getelementptr i32, ptr @out_buff_0, i20 %332
  store i32 %334, ptr %335, align 4
  %336 = or disjoint i20 %332, 1
  %337 = getelementptr i32, ptr @in2to3_buff_0, i20 %336
  %338 = load i32, ptr %337, align 4
  %339 = getelementptr i32, ptr @out_buff_0, i20 %336
  store i32 %338, ptr %339, align 4
  %340 = trunc i64 %331 to i20
  %341 = or disjoint i20 %340, 2
  %342 = getelementptr i32, ptr @in2to3_buff_0, i20 %341
  %343 = load i32, ptr %342, align 4
  %344 = getelementptr i32, ptr @out_buff_0, i20 %341
  store i32 %343, ptr %344, align 4
  %345 = or disjoint i20 %340, 3
  %346 = getelementptr i32, ptr @in2to3_buff_0, i20 %345
  %347 = load i32, ptr %346, align 4
  %348 = getelementptr i32, ptr @out_buff_0, i20 %345
  store i32 %347, ptr %348, align 4
  %349 = trunc i64 %331 to i20
  %350 = or disjoint i20 %349, 4
  %351 = getelementptr i32, ptr @in2to3_buff_0, i20 %350
  %352 = load i32, ptr %351, align 4
  %353 = getelementptr i32, ptr @out_buff_0, i20 %350
  store i32 %352, ptr %353, align 4
  %354 = or disjoint i20 %349, 5
  %355 = getelementptr i32, ptr @in2to3_buff_0, i20 %354
  %356 = load i32, ptr %355, align 4
  %357 = getelementptr i32, ptr @out_buff_0, i20 %354
  store i32 %356, ptr %357, align 4
  %358 = or disjoint i64 %331, 6
  %359 = trunc nuw i64 %358 to i20
  %360 = getelementptr i32, ptr @in2to3_buff_0, i20 %359
  %361 = load i32, ptr %360, align 4
  %362 = getelementptr i32, ptr @out_buff_0, i20 %359
  store i32 %361, ptr %362, align 4
  %363 = or disjoint i20 %359, 1
  %364 = getelementptr i32, ptr @in2to3_buff_0, i20 %363
  %365 = load i32, ptr %364, align 4
  %366 = getelementptr i32, ptr @out_buff_0, i20 %363
  store i32 %365, ptr %366, align 4
  %367 = add nuw nsw i64 %331, 8
  %368 = icmp ult i64 %358, 1022
  br i1 %368, label %330, label %369

369:                                              ; preds = %330
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %370

370:                                              ; preds = %370, %369
  %371 = phi i64 [ 0, %369 ], [ %407, %370 ]
  %372 = trunc nuw i64 %371 to i20
  %373 = getelementptr i32, ptr @in2to3_buff_1, i20 %372
  %374 = load i32, ptr %373, align 4
  %375 = getelementptr i32, ptr @out_buff_1, i20 %372
  store i32 %374, ptr %375, align 4
  %376 = or disjoint i20 %372, 1
  %377 = getelementptr i32, ptr @in2to3_buff_1, i20 %376
  %378 = load i32, ptr %377, align 4
  %379 = getelementptr i32, ptr @out_buff_1, i20 %376
  store i32 %378, ptr %379, align 4
  %380 = trunc i64 %371 to i20
  %381 = or disjoint i20 %380, 2
  %382 = getelementptr i32, ptr @in2to3_buff_1, i20 %381
  %383 = load i32, ptr %382, align 4
  %384 = getelementptr i32, ptr @out_buff_1, i20 %381
  store i32 %383, ptr %384, align 4
  %385 = or disjoint i20 %380, 3
  %386 = getelementptr i32, ptr @in2to3_buff_1, i20 %385
  %387 = load i32, ptr %386, align 4
  %388 = getelementptr i32, ptr @out_buff_1, i20 %385
  store i32 %387, ptr %388, align 4
  %389 = trunc i64 %371 to i20
  %390 = or disjoint i20 %389, 4
  %391 = getelementptr i32, ptr @in2to3_buff_1, i20 %390
  %392 = load i32, ptr %391, align 4
  %393 = getelementptr i32, ptr @out_buff_1, i20 %390
  store i32 %392, ptr %393, align 4
  %394 = or disjoint i20 %389, 5
  %395 = getelementptr i32, ptr @in2to3_buff_1, i20 %394
  %396 = load i32, ptr %395, align 4
  %397 = getelementptr i32, ptr @out_buff_1, i20 %394
  store i32 %396, ptr %397, align 4
  %398 = or disjoint i64 %371, 6
  %399 = trunc nuw i64 %398 to i20
  %400 = getelementptr i32, ptr @in2to3_buff_1, i20 %399
  %401 = load i32, ptr %400, align 4
  %402 = getelementptr i32, ptr @out_buff_1, i20 %399
  store i32 %401, ptr %402, align 4
  %403 = or disjoint i20 %399, 1
  %404 = getelementptr i32, ptr @in2to3_buff_1, i20 %403
  %405 = load i32, ptr %404, align 4
  %406 = getelementptr i32, ptr @out_buff_1, i20 %403
  store i32 %405, ptr %406, align 4
  %407 = add nuw nsw i64 %371, 8
  %408 = icmp ult i64 %398, 1022
  br i1 %408, label %370, label %409

409:                                              ; preds = %370
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %410 = add nuw nsw i64 %9, 2
  %.not = icmp eq i64 %410, 9223372036854775806
  br i1 %.not, label %.preheader, label %.preheader12

411:                                              ; preds = %411, %.preheader
  %412 = phi i64 [ 0, %.preheader ], [ %448, %411 ]
  %413 = trunc nuw i64 %412 to i20
  %414 = getelementptr i32, ptr @in2to3_buff_1, i20 %413
  %415 = load i32, ptr %414, align 4
  %416 = getelementptr i32, ptr @out_buff_1, i20 %413
  store i32 %415, ptr %416, align 4
  %417 = or disjoint i20 %413, 1
  %418 = getelementptr i32, ptr @in2to3_buff_1, i20 %417
  %419 = load i32, ptr %418, align 4
  %420 = getelementptr i32, ptr @out_buff_1, i20 %417
  store i32 %419, ptr %420, align 4
  %421 = trunc i64 %412 to i20
  %422 = or disjoint i20 %421, 2
  %423 = getelementptr i32, ptr @in2to3_buff_1, i20 %422
  %424 = load i32, ptr %423, align 4
  %425 = getelementptr i32, ptr @out_buff_1, i20 %422
  store i32 %424, ptr %425, align 4
  %426 = or disjoint i20 %421, 3
  %427 = getelementptr i32, ptr @in2to3_buff_1, i20 %426
  %428 = load i32, ptr %427, align 4
  %429 = getelementptr i32, ptr @out_buff_1, i20 %426
  store i32 %428, ptr %429, align 4
  %430 = trunc i64 %412 to i20
  %431 = or disjoint i20 %430, 4
  %432 = getelementptr i32, ptr @in2to3_buff_1, i20 %431
  %433 = load i32, ptr %432, align 4
  %434 = getelementptr i32, ptr @out_buff_1, i20 %431
  store i32 %433, ptr %434, align 4
  %435 = or disjoint i20 %430, 5
  %436 = getelementptr i32, ptr @in2to3_buff_1, i20 %435
  %437 = load i32, ptr %436, align 4
  %438 = getelementptr i32, ptr @out_buff_1, i20 %435
  store i32 %437, ptr %438, align 4
  %439 = or disjoint i64 %412, 6
  %440 = trunc nuw i64 %439 to i20
  %441 = getelementptr i32, ptr @in2to3_buff_1, i20 %440
  %442 = load i32, ptr %441, align 4
  %443 = getelementptr i32, ptr @out_buff_1, i20 %440
  store i32 %442, ptr %443, align 4
  %444 = or disjoint i20 %440, 1
  %445 = getelementptr i32, ptr @in2to3_buff_1, i20 %444
  %446 = load i32, ptr %445, align 4
  %447 = getelementptr i32, ptr @out_buff_1, i20 %444
  store i32 %446, ptr %447, align 4
  %448 = add nuw nsw i64 %412, 8
  %449 = icmp ult i64 %439, 1022
  br i1 %449, label %411, label %450

450:                                              ; preds = %411
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %451

451:                                              ; preds = %451, %450
  %452 = phi i64 [ 0, %450 ], [ %488, %451 ]
  %453 = trunc nuw i64 %452 to i20
  %454 = getelementptr i32, ptr @in2to3_buff_1, i20 %453
  %455 = load i32, ptr %454, align 4
  %456 = getelementptr i32, ptr @out_buff_1, i20 %453
  store i32 %455, ptr %456, align 4
  %457 = or disjoint i20 %453, 1
  %458 = getelementptr i32, ptr @in2to3_buff_1, i20 %457
  %459 = load i32, ptr %458, align 4
  %460 = getelementptr i32, ptr @out_buff_1, i20 %457
  store i32 %459, ptr %460, align 4
  %461 = trunc i64 %452 to i20
  %462 = or disjoint i20 %461, 2
  %463 = getelementptr i32, ptr @in2to3_buff_1, i20 %462
  %464 = load i32, ptr %463, align 4
  %465 = getelementptr i32, ptr @out_buff_1, i20 %462
  store i32 %464, ptr %465, align 4
  %466 = or disjoint i20 %461, 3
  %467 = getelementptr i32, ptr @in2to3_buff_1, i20 %466
  %468 = load i32, ptr %467, align 4
  %469 = getelementptr i32, ptr @out_buff_1, i20 %466
  store i32 %468, ptr %469, align 4
  %470 = trunc i64 %452 to i20
  %471 = or disjoint i20 %470, 4
  %472 = getelementptr i32, ptr @in2to3_buff_1, i20 %471
  %473 = load i32, ptr %472, align 4
  %474 = getelementptr i32, ptr @out_buff_1, i20 %471
  store i32 %473, ptr %474, align 4
  %475 = or disjoint i20 %470, 5
  %476 = getelementptr i32, ptr @in2to3_buff_1, i20 %475
  %477 = load i32, ptr %476, align 4
  %478 = getelementptr i32, ptr @out_buff_1, i20 %475
  store i32 %477, ptr %478, align 4
  %479 = or disjoint i64 %452, 6
  %480 = trunc nuw i64 %479 to i20
  %481 = getelementptr i32, ptr @in2to3_buff_1, i20 %480
  %482 = load i32, ptr %481, align 4
  %483 = getelementptr i32, ptr @out_buff_1, i20 %480
  store i32 %482, ptr %483, align 4
  %484 = or disjoint i20 %480, 1
  %485 = getelementptr i32, ptr @in2to3_buff_1, i20 %484
  %486 = load i32, ptr %485, align 4
  %487 = getelementptr i32, ptr @out_buff_1, i20 %484
  store i32 %486, ptr %487, align 4
  %488 = add nuw nsw i64 %452, 8
  %489 = icmp ult i64 %479, 1022
  br i1 %489, label %451, label %490

490:                                              ; preds = %451
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %491

491:                                              ; preds = %491, %490
  %492 = phi i64 [ 0, %490 ], [ %528, %491 ]
  %493 = trunc nuw i64 %492 to i20
  %494 = getelementptr i32, ptr @in2to3_buff_1, i20 %493
  %495 = load i32, ptr %494, align 4
  %496 = getelementptr i32, ptr @out_buff_1, i20 %493
  store i32 %495, ptr %496, align 4
  %497 = or disjoint i20 %493, 1
  %498 = getelementptr i32, ptr @in2to3_buff_1, i20 %497
  %499 = load i32, ptr %498, align 4
  %500 = getelementptr i32, ptr @out_buff_1, i20 %497
  store i32 %499, ptr %500, align 4
  %501 = trunc i64 %492 to i20
  %502 = or disjoint i20 %501, 2
  %503 = getelementptr i32, ptr @in2to3_buff_1, i20 %502
  %504 = load i32, ptr %503, align 4
  %505 = getelementptr i32, ptr @out_buff_1, i20 %502
  store i32 %504, ptr %505, align 4
  %506 = or disjoint i20 %501, 3
  %507 = getelementptr i32, ptr @in2to3_buff_1, i20 %506
  %508 = load i32, ptr %507, align 4
  %509 = getelementptr i32, ptr @out_buff_1, i20 %506
  store i32 %508, ptr %509, align 4
  %510 = trunc i64 %492 to i20
  %511 = or disjoint i20 %510, 4
  %512 = getelementptr i32, ptr @in2to3_buff_1, i20 %511
  %513 = load i32, ptr %512, align 4
  %514 = getelementptr i32, ptr @out_buff_1, i20 %511
  store i32 %513, ptr %514, align 4
  %515 = or disjoint i20 %510, 5
  %516 = getelementptr i32, ptr @in2to3_buff_1, i20 %515
  %517 = load i32, ptr %516, align 4
  %518 = getelementptr i32, ptr @out_buff_1, i20 %515
  store i32 %517, ptr %518, align 4
  %519 = or disjoint i64 %492, 6
  %520 = trunc nuw i64 %519 to i20
  %521 = getelementptr i32, ptr @in2to3_buff_1, i20 %520
  %522 = load i32, ptr %521, align 4
  %523 = getelementptr i32, ptr @out_buff_1, i20 %520
  store i32 %522, ptr %523, align 4
  %524 = or disjoint i20 %520, 1
  %525 = getelementptr i32, ptr @in2to3_buff_1, i20 %524
  %526 = load i32, ptr %525, align 4
  %527 = getelementptr i32, ptr @out_buff_1, i20 %524
  store i32 %526, ptr %527, align 4
  %528 = add nuw nsw i64 %492, 8
  %529 = icmp ult i64 %519, 1022
  br i1 %529, label %491, label %530

530:                                              ; preds = %491
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @out_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %531

531:                                              ; preds = %531, %530
  %532 = phi i64 [ 0, %530 ], [ %568, %531 ]
  %533 = trunc nuw i64 %532 to i20
  %534 = getelementptr i32, ptr @in2to3_buff_1, i20 %533
  %535 = load i32, ptr %534, align 4
  %536 = getelementptr i32, ptr @out_buff_1, i20 %533
  store i32 %535, ptr %536, align 4
  %537 = or disjoint i20 %533, 1
  %538 = getelementptr i32, ptr @in2to3_buff_1, i20 %537
  %539 = load i32, ptr %538, align 4
  %540 = getelementptr i32, ptr @out_buff_1, i20 %537
  store i32 %539, ptr %540, align 4
  %541 = trunc i64 %532 to i20
  %542 = or disjoint i20 %541, 2
  %543 = getelementptr i32, ptr @in2to3_buff_1, i20 %542
  %544 = load i32, ptr %543, align 4
  %545 = getelementptr i32, ptr @out_buff_1, i20 %542
  store i32 %544, ptr %545, align 4
  %546 = or disjoint i20 %541, 3
  %547 = getelementptr i32, ptr @in2to3_buff_1, i20 %546
  %548 = load i32, ptr %547, align 4
  %549 = getelementptr i32, ptr @out_buff_1, i20 %546
  store i32 %548, ptr %549, align 4
  %550 = trunc i64 %532 to i20
  %551 = or disjoint i20 %550, 4
  %552 = getelementptr i32, ptr @in2to3_buff_1, i20 %551
  %553 = load i32, ptr %552, align 4
  %554 = getelementptr i32, ptr @out_buff_1, i20 %551
  store i32 %553, ptr %554, align 4
  %555 = or disjoint i20 %550, 5
  %556 = getelementptr i32, ptr @in2to3_buff_1, i20 %555
  %557 = load i32, ptr %556, align 4
  %558 = getelementptr i32, ptr @out_buff_1, i20 %555
  store i32 %557, ptr %558, align 4
  %559 = or disjoint i64 %532, 6
  %560 = trunc nuw i64 %559 to i20
  %561 = getelementptr i32, ptr @in2to3_buff_1, i20 %560
  %562 = load i32, ptr %561, align 4
  %563 = getelementptr i32, ptr @out_buff_1, i20 %560
  store i32 %562, ptr %563, align 4
  %564 = or disjoint i20 %560, 1
  %565 = getelementptr i32, ptr @in2to3_buff_1, i20 %564
  %566 = load i32, ptr %565, align 4
  %567 = getelementptr i32, ptr @out_buff_1, i20 %564
  store i32 %566, ptr %567, align 4
  %568 = add nuw nsw i64 %532, 8
  %569 = icmp ult i64 %559, 1022
  br i1 %569, label %531, label %570

570:                                              ; preds = %531
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %571

571:                                              ; preds = %571, %570
  %572 = phi i64 [ 0, %570 ], [ %608, %571 ]
  %573 = trunc nuw i64 %572 to i20
  %574 = getelementptr i32, ptr @in2to3_buff_0, i20 %573
  %575 = load i32, ptr %574, align 4
  %576 = getelementptr i32, ptr @out_buff_0, i20 %573
  store i32 %575, ptr %576, align 4
  %577 = or disjoint i20 %573, 1
  %578 = getelementptr i32, ptr @in2to3_buff_0, i20 %577
  %579 = load i32, ptr %578, align 4
  %580 = getelementptr i32, ptr @out_buff_0, i20 %577
  store i32 %579, ptr %580, align 4
  %581 = trunc i64 %572 to i20
  %582 = or disjoint i20 %581, 2
  %583 = getelementptr i32, ptr @in2to3_buff_0, i20 %582
  %584 = load i32, ptr %583, align 4
  %585 = getelementptr i32, ptr @out_buff_0, i20 %582
  store i32 %584, ptr %585, align 4
  %586 = or disjoint i20 %581, 3
  %587 = getelementptr i32, ptr @in2to3_buff_0, i20 %586
  %588 = load i32, ptr %587, align 4
  %589 = getelementptr i32, ptr @out_buff_0, i20 %586
  store i32 %588, ptr %589, align 4
  %590 = trunc i64 %572 to i20
  %591 = or disjoint i20 %590, 4
  %592 = getelementptr i32, ptr @in2to3_buff_0, i20 %591
  %593 = load i32, ptr %592, align 4
  %594 = getelementptr i32, ptr @out_buff_0, i20 %591
  store i32 %593, ptr %594, align 4
  %595 = or disjoint i20 %590, 5
  %596 = getelementptr i32, ptr @in2to3_buff_0, i20 %595
  %597 = load i32, ptr %596, align 4
  %598 = getelementptr i32, ptr @out_buff_0, i20 %595
  store i32 %597, ptr %598, align 4
  %599 = or disjoint i64 %572, 6
  %600 = trunc nuw i64 %599 to i20
  %601 = getelementptr i32, ptr @in2to3_buff_0, i20 %600
  %602 = load i32, ptr %601, align 4
  %603 = getelementptr i32, ptr @out_buff_0, i20 %600
  store i32 %602, ptr %603, align 4
  %604 = or disjoint i20 %600, 1
  %605 = getelementptr i32, ptr @in2to3_buff_0, i20 %604
  %606 = load i32, ptr %605, align 4
  %607 = getelementptr i32, ptr @out_buff_0, i20 %604
  store i32 %606, ptr %607, align 4
  %608 = add nuw nsw i64 %572, 8
  %609 = icmp ult i64 %599, 1022
  br i1 %609, label %571, label %610

610:                                              ; preds = %571
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_0_4() local_unnamed_addr #0 {
  %1 = and i64 ptrtoint (ptr @in1to2_buff_0 to i64), 28
  %2 = icmp eq i64 %1, 0
  %3 = and i64 ptrtoint (ptr @in2to3_buff_0 to i64), 28
  %4 = icmp eq i64 %3, 0
  %5 = and i64 ptrtoint (ptr @in1to2_buff_1 to i64), 28
  %6 = icmp eq i64 %5, 0
  %7 = and i64 ptrtoint (ptr @in2to3_buff_1 to i64), 28
  %8 = icmp eq i64 %7, 0
  br label %.preheader12

.preheader12:                                     ; preds = %0, %409
  %9 = phi i64 [ 0, %0 ], [ %410, %409 ]
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.assume(i1 %2)
  tail call void @llvm.assume(i1 %4)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in1to2_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.assume(i1 %6)
  tail call void @llvm.assume(i1 %8)
  br label %10

.preheader:                                       ; preds = %409
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in1to2_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %411

10:                                               ; preds = %10, %.preheader12
  %11 = phi i64 [ 0, %.preheader12 ], [ %47, %10 ]
  %12 = trunc nuw i64 %11 to i20
  %13 = getelementptr i32, ptr @in1to2_buff_1, i20 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i32, ptr @in2to3_buff_1, i20 %12
  store i32 %14, ptr %15, align 4
  %16 = or disjoint i20 %12, 1
  %17 = getelementptr i32, ptr @in1to2_buff_1, i20 %16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i32, ptr @in2to3_buff_1, i20 %16
  store i32 %18, ptr %19, align 4
  %20 = trunc i64 %11 to i20
  %21 = or disjoint i20 %20, 2
  %22 = getelementptr i32, ptr @in1to2_buff_1, i20 %21
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i32, ptr @in2to3_buff_1, i20 %21
  store i32 %23, ptr %24, align 4
  %25 = or disjoint i20 %20, 3
  %26 = getelementptr i32, ptr @in1to2_buff_1, i20 %25
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i32, ptr @in2to3_buff_1, i20 %25
  store i32 %27, ptr %28, align 4
  %29 = trunc i64 %11 to i20
  %30 = or disjoint i20 %29, 4
  %31 = getelementptr i32, ptr @in1to2_buff_1, i20 %30
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i32, ptr @in2to3_buff_1, i20 %30
  store i32 %32, ptr %33, align 4
  %34 = or disjoint i20 %29, 5
  %35 = getelementptr i32, ptr @in1to2_buff_1, i20 %34
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i32, ptr @in2to3_buff_1, i20 %34
  store i32 %36, ptr %37, align 4
  %38 = or disjoint i64 %11, 6
  %39 = trunc nuw i64 %38 to i20
  %40 = getelementptr i32, ptr @in1to2_buff_1, i20 %39
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i32, ptr @in2to3_buff_1, i20 %39
  store i32 %41, ptr %42, align 4
  %43 = or disjoint i20 %39, 1
  %44 = getelementptr i32, ptr @in1to2_buff_1, i20 %43
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr i32, ptr @in2to3_buff_1, i20 %43
  store i32 %45, ptr %46, align 4
  %47 = add nuw nsw i64 %11, 8
  %48 = icmp ult i64 %38, 1022
  br i1 %48, label %10, label %49

49:                                               ; preds = %10
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in1to2_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %50

50:                                               ; preds = %50, %49
  %51 = phi i64 [ 0, %49 ], [ %87, %50 ]
  %52 = trunc nuw i64 %51 to i20
  %53 = getelementptr i32, ptr @in1to2_buff_1, i20 %52
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i32, ptr @in2to3_buff_1, i20 %52
  store i32 %54, ptr %55, align 4
  %56 = or disjoint i20 %52, 1
  %57 = getelementptr i32, ptr @in1to2_buff_1, i20 %56
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr i32, ptr @in2to3_buff_1, i20 %56
  store i32 %58, ptr %59, align 4
  %60 = trunc i64 %51 to i20
  %61 = or disjoint i20 %60, 2
  %62 = getelementptr i32, ptr @in1to2_buff_1, i20 %61
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i32, ptr @in2to3_buff_1, i20 %61
  store i32 %63, ptr %64, align 4
  %65 = or disjoint i20 %60, 3
  %66 = getelementptr i32, ptr @in1to2_buff_1, i20 %65
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr i32, ptr @in2to3_buff_1, i20 %65
  store i32 %67, ptr %68, align 4
  %69 = trunc i64 %51 to i20
  %70 = or disjoint i20 %69, 4
  %71 = getelementptr i32, ptr @in1to2_buff_1, i20 %70
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr i32, ptr @in2to3_buff_1, i20 %70
  store i32 %72, ptr %73, align 4
  %74 = or disjoint i20 %69, 5
  %75 = getelementptr i32, ptr @in1to2_buff_1, i20 %74
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr i32, ptr @in2to3_buff_1, i20 %74
  store i32 %76, ptr %77, align 4
  %78 = or disjoint i64 %51, 6
  %79 = trunc nuw i64 %78 to i20
  %80 = getelementptr i32, ptr @in1to2_buff_1, i20 %79
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr i32, ptr @in2to3_buff_1, i20 %79
  store i32 %81, ptr %82, align 4
  %83 = or disjoint i20 %79, 1
  %84 = getelementptr i32, ptr @in1to2_buff_1, i20 %83
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr i32, ptr @in2to3_buff_1, i20 %83
  store i32 %85, ptr %86, align 4
  %87 = add nuw nsw i64 %51, 8
  %88 = icmp ult i64 %78, 1022
  br i1 %88, label %50, label %89

89:                                               ; preds = %50
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in1to2_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %90

90:                                               ; preds = %90, %89
  %91 = phi i64 [ 0, %89 ], [ %127, %90 ]
  %92 = trunc nuw i64 %91 to i20
  %93 = getelementptr i32, ptr @in1to2_buff_1, i20 %92
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr i32, ptr @in2to3_buff_1, i20 %92
  store i32 %94, ptr %95, align 4
  %96 = or disjoint i20 %92, 1
  %97 = getelementptr i32, ptr @in1to2_buff_1, i20 %96
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr i32, ptr @in2to3_buff_1, i20 %96
  store i32 %98, ptr %99, align 4
  %100 = trunc i64 %91 to i20
  %101 = or disjoint i20 %100, 2
  %102 = getelementptr i32, ptr @in1to2_buff_1, i20 %101
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr i32, ptr @in2to3_buff_1, i20 %101
  store i32 %103, ptr %104, align 4
  %105 = or disjoint i20 %100, 3
  %106 = getelementptr i32, ptr @in1to2_buff_1, i20 %105
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr i32, ptr @in2to3_buff_1, i20 %105
  store i32 %107, ptr %108, align 4
  %109 = trunc i64 %91 to i20
  %110 = or disjoint i20 %109, 4
  %111 = getelementptr i32, ptr @in1to2_buff_1, i20 %110
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i32, ptr @in2to3_buff_1, i20 %110
  store i32 %112, ptr %113, align 4
  %114 = or disjoint i20 %109, 5
  %115 = getelementptr i32, ptr @in1to2_buff_1, i20 %114
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr i32, ptr @in2to3_buff_1, i20 %114
  store i32 %116, ptr %117, align 4
  %118 = or disjoint i64 %91, 6
  %119 = trunc nuw i64 %118 to i20
  %120 = getelementptr i32, ptr @in1to2_buff_1, i20 %119
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr i32, ptr @in2to3_buff_1, i20 %119
  store i32 %121, ptr %122, align 4
  %123 = or disjoint i20 %119, 1
  %124 = getelementptr i32, ptr @in1to2_buff_1, i20 %123
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr i32, ptr @in2to3_buff_1, i20 %123
  store i32 %125, ptr %126, align 4
  %127 = add nuw nsw i64 %91, 8
  %128 = icmp ult i64 %118, 1022
  br i1 %128, label %90, label %129

129:                                              ; preds = %90
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in1to2_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %130

130:                                              ; preds = %130, %129
  %131 = phi i64 [ 0, %129 ], [ %167, %130 ]
  %132 = trunc nuw i64 %131 to i20
  %133 = getelementptr i32, ptr @in1to2_buff_1, i20 %132
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr i32, ptr @in2to3_buff_1, i20 %132
  store i32 %134, ptr %135, align 4
  %136 = or disjoint i20 %132, 1
  %137 = getelementptr i32, ptr @in1to2_buff_1, i20 %136
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr i32, ptr @in2to3_buff_1, i20 %136
  store i32 %138, ptr %139, align 4
  %140 = trunc i64 %131 to i20
  %141 = or disjoint i20 %140, 2
  %142 = getelementptr i32, ptr @in1to2_buff_1, i20 %141
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr i32, ptr @in2to3_buff_1, i20 %141
  store i32 %143, ptr %144, align 4
  %145 = or disjoint i20 %140, 3
  %146 = getelementptr i32, ptr @in1to2_buff_1, i20 %145
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr i32, ptr @in2to3_buff_1, i20 %145
  store i32 %147, ptr %148, align 4
  %149 = trunc i64 %131 to i20
  %150 = or disjoint i20 %149, 4
  %151 = getelementptr i32, ptr @in1to2_buff_1, i20 %150
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr i32, ptr @in2to3_buff_1, i20 %150
  store i32 %152, ptr %153, align 4
  %154 = or disjoint i20 %149, 5
  %155 = getelementptr i32, ptr @in1to2_buff_1, i20 %154
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr i32, ptr @in2to3_buff_1, i20 %154
  store i32 %156, ptr %157, align 4
  %158 = or disjoint i64 %131, 6
  %159 = trunc nuw i64 %158 to i20
  %160 = getelementptr i32, ptr @in1to2_buff_1, i20 %159
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr i32, ptr @in2to3_buff_1, i20 %159
  store i32 %161, ptr %162, align 4
  %163 = or disjoint i20 %159, 1
  %164 = getelementptr i32, ptr @in1to2_buff_1, i20 %163
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr i32, ptr @in2to3_buff_1, i20 %163
  store i32 %165, ptr %166, align 4
  %167 = add nuw nsw i64 %131, 8
  %168 = icmp ult i64 %158, 1022
  br i1 %168, label %130, label %169

169:                                              ; preds = %130
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %170

170:                                              ; preds = %170, %169
  %171 = phi i64 [ 0, %169 ], [ %207, %170 ]
  %172 = trunc nuw i64 %171 to i20
  %173 = getelementptr i32, ptr @in1to2_buff_0, i20 %172
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr i32, ptr @in2to3_buff_0, i20 %172
  store i32 %174, ptr %175, align 4
  %176 = or disjoint i20 %172, 1
  %177 = getelementptr i32, ptr @in1to2_buff_0, i20 %176
  %178 = load i32, ptr %177, align 4
  %179 = getelementptr i32, ptr @in2to3_buff_0, i20 %176
  store i32 %178, ptr %179, align 4
  %180 = trunc i64 %171 to i20
  %181 = or disjoint i20 %180, 2
  %182 = getelementptr i32, ptr @in1to2_buff_0, i20 %181
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr i32, ptr @in2to3_buff_0, i20 %181
  store i32 %183, ptr %184, align 4
  %185 = or disjoint i20 %180, 3
  %186 = getelementptr i32, ptr @in1to2_buff_0, i20 %185
  %187 = load i32, ptr %186, align 4
  %188 = getelementptr i32, ptr @in2to3_buff_0, i20 %185
  store i32 %187, ptr %188, align 4
  %189 = trunc i64 %171 to i20
  %190 = or disjoint i20 %189, 4
  %191 = getelementptr i32, ptr @in1to2_buff_0, i20 %190
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr i32, ptr @in2to3_buff_0, i20 %190
  store i32 %192, ptr %193, align 4
  %194 = or disjoint i20 %189, 5
  %195 = getelementptr i32, ptr @in1to2_buff_0, i20 %194
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr i32, ptr @in2to3_buff_0, i20 %194
  store i32 %196, ptr %197, align 4
  %198 = or disjoint i64 %171, 6
  %199 = trunc nuw i64 %198 to i20
  %200 = getelementptr i32, ptr @in1to2_buff_0, i20 %199
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr i32, ptr @in2to3_buff_0, i20 %199
  store i32 %201, ptr %202, align 4
  %203 = or disjoint i20 %199, 1
  %204 = getelementptr i32, ptr @in1to2_buff_0, i20 %203
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr i32, ptr @in2to3_buff_0, i20 %203
  store i32 %205, ptr %206, align 4
  %207 = add nuw nsw i64 %171, 8
  %208 = icmp ult i64 %198, 1022
  br i1 %208, label %170, label %209

209:                                              ; preds = %170
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_1, ptr noundef nonnull align 4 dereferenceable(4096) @in1to2_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %210

210:                                              ; preds = %210, %209
  %211 = phi i64 [ 0, %209 ], [ %247, %210 ]
  %212 = trunc nuw i64 %211 to i20
  %213 = getelementptr i32, ptr @in1to2_buff_0, i20 %212
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr i32, ptr @in2to3_buff_0, i20 %212
  store i32 %214, ptr %215, align 4
  %216 = or disjoint i20 %212, 1
  %217 = getelementptr i32, ptr @in1to2_buff_0, i20 %216
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr i32, ptr @in2to3_buff_0, i20 %216
  store i32 %218, ptr %219, align 4
  %220 = trunc i64 %211 to i20
  %221 = or disjoint i20 %220, 2
  %222 = getelementptr i32, ptr @in1to2_buff_0, i20 %221
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr i32, ptr @in2to3_buff_0, i20 %221
  store i32 %223, ptr %224, align 4
  %225 = or disjoint i20 %220, 3
  %226 = getelementptr i32, ptr @in1to2_buff_0, i20 %225
  %227 = load i32, ptr %226, align 4
  %228 = getelementptr i32, ptr @in2to3_buff_0, i20 %225
  store i32 %227, ptr %228, align 4
  %229 = trunc i64 %211 to i20
  %230 = or disjoint i20 %229, 4
  %231 = getelementptr i32, ptr @in1to2_buff_0, i20 %230
  %232 = load i32, ptr %231, align 4
  %233 = getelementptr i32, ptr @in2to3_buff_0, i20 %230
  store i32 %232, ptr %233, align 4
  %234 = or disjoint i20 %229, 5
  %235 = getelementptr i32, ptr @in1to2_buff_0, i20 %234
  %236 = load i32, ptr %235, align 4
  %237 = getelementptr i32, ptr @in2to3_buff_0, i20 %234
  store i32 %236, ptr %237, align 4
  %238 = or disjoint i64 %211, 6
  %239 = trunc nuw i64 %238 to i20
  %240 = getelementptr i32, ptr @in1to2_buff_0, i20 %239
  %241 = load i32, ptr %240, align 4
  %242 = getelementptr i32, ptr @in2to3_buff_0, i20 %239
  store i32 %241, ptr %242, align 4
  %243 = or disjoint i20 %239, 1
  %244 = getelementptr i32, ptr @in1to2_buff_0, i20 %243
  %245 = load i32, ptr %244, align 4
  %246 = getelementptr i32, ptr @in2to3_buff_0, i20 %243
  store i32 %245, ptr %246, align 4
  %247 = add nuw nsw i64 %211, 8
  %248 = icmp ult i64 %238, 1022
  br i1 %248, label %210, label %249

249:                                              ; preds = %210
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_1, ptr noundef nonnull align 4 dereferenceable(4096) @in1to2_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %250

250:                                              ; preds = %250, %249
  %251 = phi i64 [ 0, %249 ], [ %287, %250 ]
  %252 = trunc nuw i64 %251 to i20
  %253 = getelementptr i32, ptr @in1to2_buff_0, i20 %252
  %254 = load i32, ptr %253, align 4
  %255 = getelementptr i32, ptr @in2to3_buff_0, i20 %252
  store i32 %254, ptr %255, align 4
  %256 = or disjoint i20 %252, 1
  %257 = getelementptr i32, ptr @in1to2_buff_0, i20 %256
  %258 = load i32, ptr %257, align 4
  %259 = getelementptr i32, ptr @in2to3_buff_0, i20 %256
  store i32 %258, ptr %259, align 4
  %260 = trunc i64 %251 to i20
  %261 = or disjoint i20 %260, 2
  %262 = getelementptr i32, ptr @in1to2_buff_0, i20 %261
  %263 = load i32, ptr %262, align 4
  %264 = getelementptr i32, ptr @in2to3_buff_0, i20 %261
  store i32 %263, ptr %264, align 4
  %265 = or disjoint i20 %260, 3
  %266 = getelementptr i32, ptr @in1to2_buff_0, i20 %265
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr i32, ptr @in2to3_buff_0, i20 %265
  store i32 %267, ptr %268, align 4
  %269 = trunc i64 %251 to i20
  %270 = or disjoint i20 %269, 4
  %271 = getelementptr i32, ptr @in1to2_buff_0, i20 %270
  %272 = load i32, ptr %271, align 4
  %273 = getelementptr i32, ptr @in2to3_buff_0, i20 %270
  store i32 %272, ptr %273, align 4
  %274 = or disjoint i20 %269, 5
  %275 = getelementptr i32, ptr @in1to2_buff_0, i20 %274
  %276 = load i32, ptr %275, align 4
  %277 = getelementptr i32, ptr @in2to3_buff_0, i20 %274
  store i32 %276, ptr %277, align 4
  %278 = or disjoint i64 %251, 6
  %279 = trunc nuw i64 %278 to i20
  %280 = getelementptr i32, ptr @in1to2_buff_0, i20 %279
  %281 = load i32, ptr %280, align 4
  %282 = getelementptr i32, ptr @in2to3_buff_0, i20 %279
  store i32 %281, ptr %282, align 4
  %283 = or disjoint i20 %279, 1
  %284 = getelementptr i32, ptr @in1to2_buff_0, i20 %283
  %285 = load i32, ptr %284, align 4
  %286 = getelementptr i32, ptr @in2to3_buff_0, i20 %283
  store i32 %285, ptr %286, align 4
  %287 = add nuw nsw i64 %251, 8
  %288 = icmp ult i64 %278, 1022
  br i1 %288, label %250, label %289

289:                                              ; preds = %250
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_1, ptr noundef nonnull align 4 dereferenceable(4096) @in1to2_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %290

290:                                              ; preds = %290, %289
  %291 = phi i64 [ 0, %289 ], [ %327, %290 ]
  %292 = trunc nuw i64 %291 to i20
  %293 = getelementptr i32, ptr @in1to2_buff_0, i20 %292
  %294 = load i32, ptr %293, align 4
  %295 = getelementptr i32, ptr @in2to3_buff_0, i20 %292
  store i32 %294, ptr %295, align 4
  %296 = or disjoint i20 %292, 1
  %297 = getelementptr i32, ptr @in1to2_buff_0, i20 %296
  %298 = load i32, ptr %297, align 4
  %299 = getelementptr i32, ptr @in2to3_buff_0, i20 %296
  store i32 %298, ptr %299, align 4
  %300 = trunc i64 %291 to i20
  %301 = or disjoint i20 %300, 2
  %302 = getelementptr i32, ptr @in1to2_buff_0, i20 %301
  %303 = load i32, ptr %302, align 4
  %304 = getelementptr i32, ptr @in2to3_buff_0, i20 %301
  store i32 %303, ptr %304, align 4
  %305 = or disjoint i20 %300, 3
  %306 = getelementptr i32, ptr @in1to2_buff_0, i20 %305
  %307 = load i32, ptr %306, align 4
  %308 = getelementptr i32, ptr @in2to3_buff_0, i20 %305
  store i32 %307, ptr %308, align 4
  %309 = trunc i64 %291 to i20
  %310 = or disjoint i20 %309, 4
  %311 = getelementptr i32, ptr @in1to2_buff_0, i20 %310
  %312 = load i32, ptr %311, align 4
  %313 = getelementptr i32, ptr @in2to3_buff_0, i20 %310
  store i32 %312, ptr %313, align 4
  %314 = or disjoint i20 %309, 5
  %315 = getelementptr i32, ptr @in1to2_buff_0, i20 %314
  %316 = load i32, ptr %315, align 4
  %317 = getelementptr i32, ptr @in2to3_buff_0, i20 %314
  store i32 %316, ptr %317, align 4
  %318 = or disjoint i64 %291, 6
  %319 = trunc nuw i64 %318 to i20
  %320 = getelementptr i32, ptr @in1to2_buff_0, i20 %319
  %321 = load i32, ptr %320, align 4
  %322 = getelementptr i32, ptr @in2to3_buff_0, i20 %319
  store i32 %321, ptr %322, align 4
  %323 = or disjoint i20 %319, 1
  %324 = getelementptr i32, ptr @in1to2_buff_0, i20 %323
  %325 = load i32, ptr %324, align 4
  %326 = getelementptr i32, ptr @in2to3_buff_0, i20 %323
  store i32 %325, ptr %326, align 4
  %327 = add nuw nsw i64 %291, 8
  %328 = icmp ult i64 %318, 1022
  br i1 %328, label %290, label %329

329:                                              ; preds = %290
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_1, ptr noundef nonnull align 4 dereferenceable(4096) @in1to2_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %330

330:                                              ; preds = %330, %329
  %331 = phi i64 [ 0, %329 ], [ %367, %330 ]
  %332 = trunc nuw i64 %331 to i20
  %333 = getelementptr i32, ptr @in1to2_buff_0, i20 %332
  %334 = load i32, ptr %333, align 4
  %335 = getelementptr i32, ptr @in2to3_buff_0, i20 %332
  store i32 %334, ptr %335, align 4
  %336 = or disjoint i20 %332, 1
  %337 = getelementptr i32, ptr @in1to2_buff_0, i20 %336
  %338 = load i32, ptr %337, align 4
  %339 = getelementptr i32, ptr @in2to3_buff_0, i20 %336
  store i32 %338, ptr %339, align 4
  %340 = trunc i64 %331 to i20
  %341 = or disjoint i20 %340, 2
  %342 = getelementptr i32, ptr @in1to2_buff_0, i20 %341
  %343 = load i32, ptr %342, align 4
  %344 = getelementptr i32, ptr @in2to3_buff_0, i20 %341
  store i32 %343, ptr %344, align 4
  %345 = or disjoint i20 %340, 3
  %346 = getelementptr i32, ptr @in1to2_buff_0, i20 %345
  %347 = load i32, ptr %346, align 4
  %348 = getelementptr i32, ptr @in2to3_buff_0, i20 %345
  store i32 %347, ptr %348, align 4
  %349 = trunc i64 %331 to i20
  %350 = or disjoint i20 %349, 4
  %351 = getelementptr i32, ptr @in1to2_buff_0, i20 %350
  %352 = load i32, ptr %351, align 4
  %353 = getelementptr i32, ptr @in2to3_buff_0, i20 %350
  store i32 %352, ptr %353, align 4
  %354 = or disjoint i20 %349, 5
  %355 = getelementptr i32, ptr @in1to2_buff_0, i20 %354
  %356 = load i32, ptr %355, align 4
  %357 = getelementptr i32, ptr @in2to3_buff_0, i20 %354
  store i32 %356, ptr %357, align 4
  %358 = or disjoint i64 %331, 6
  %359 = trunc nuw i64 %358 to i20
  %360 = getelementptr i32, ptr @in1to2_buff_0, i20 %359
  %361 = load i32, ptr %360, align 4
  %362 = getelementptr i32, ptr @in2to3_buff_0, i20 %359
  store i32 %361, ptr %362, align 4
  %363 = or disjoint i20 %359, 1
  %364 = getelementptr i32, ptr @in1to2_buff_0, i20 %363
  %365 = load i32, ptr %364, align 4
  %366 = getelementptr i32, ptr @in2to3_buff_0, i20 %363
  store i32 %365, ptr %366, align 4
  %367 = add nuw nsw i64 %331, 8
  %368 = icmp ult i64 %358, 1022
  br i1 %368, label %330, label %369

369:                                              ; preds = %330
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %370

370:                                              ; preds = %370, %369
  %371 = phi i64 [ 0, %369 ], [ %407, %370 ]
  %372 = trunc nuw i64 %371 to i20
  %373 = getelementptr i32, ptr @in1to2_buff_1, i20 %372
  %374 = load i32, ptr %373, align 4
  %375 = getelementptr i32, ptr @in2to3_buff_1, i20 %372
  store i32 %374, ptr %375, align 4
  %376 = or disjoint i20 %372, 1
  %377 = getelementptr i32, ptr @in1to2_buff_1, i20 %376
  %378 = load i32, ptr %377, align 4
  %379 = getelementptr i32, ptr @in2to3_buff_1, i20 %376
  store i32 %378, ptr %379, align 4
  %380 = trunc i64 %371 to i20
  %381 = or disjoint i20 %380, 2
  %382 = getelementptr i32, ptr @in1to2_buff_1, i20 %381
  %383 = load i32, ptr %382, align 4
  %384 = getelementptr i32, ptr @in2to3_buff_1, i20 %381
  store i32 %383, ptr %384, align 4
  %385 = or disjoint i20 %380, 3
  %386 = getelementptr i32, ptr @in1to2_buff_1, i20 %385
  %387 = load i32, ptr %386, align 4
  %388 = getelementptr i32, ptr @in2to3_buff_1, i20 %385
  store i32 %387, ptr %388, align 4
  %389 = trunc i64 %371 to i20
  %390 = or disjoint i20 %389, 4
  %391 = getelementptr i32, ptr @in1to2_buff_1, i20 %390
  %392 = load i32, ptr %391, align 4
  %393 = getelementptr i32, ptr @in2to3_buff_1, i20 %390
  store i32 %392, ptr %393, align 4
  %394 = or disjoint i20 %389, 5
  %395 = getelementptr i32, ptr @in1to2_buff_1, i20 %394
  %396 = load i32, ptr %395, align 4
  %397 = getelementptr i32, ptr @in2to3_buff_1, i20 %394
  store i32 %396, ptr %397, align 4
  %398 = or disjoint i64 %371, 6
  %399 = trunc nuw i64 %398 to i20
  %400 = getelementptr i32, ptr @in1to2_buff_1, i20 %399
  %401 = load i32, ptr %400, align 4
  %402 = getelementptr i32, ptr @in2to3_buff_1, i20 %399
  store i32 %401, ptr %402, align 4
  %403 = or disjoint i20 %399, 1
  %404 = getelementptr i32, ptr @in1to2_buff_1, i20 %403
  %405 = load i32, ptr %404, align 4
  %406 = getelementptr i32, ptr @in2to3_buff_1, i20 %403
  store i32 %405, ptr %406, align 4
  %407 = add nuw nsw i64 %371, 8
  %408 = icmp ult i64 %398, 1022
  br i1 %408, label %370, label %409

409:                                              ; preds = %370
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %410 = add nuw nsw i64 %9, 2
  %.not = icmp eq i64 %410, 9223372036854775806
  br i1 %.not, label %.preheader, label %.preheader12

411:                                              ; preds = %411, %.preheader
  %412 = phi i64 [ 0, %.preheader ], [ %448, %411 ]
  %413 = trunc nuw i64 %412 to i20
  %414 = getelementptr i32, ptr @in1to2_buff_1, i20 %413
  %415 = load i32, ptr %414, align 4
  %416 = getelementptr i32, ptr @in2to3_buff_1, i20 %413
  store i32 %415, ptr %416, align 4
  %417 = or disjoint i20 %413, 1
  %418 = getelementptr i32, ptr @in1to2_buff_1, i20 %417
  %419 = load i32, ptr %418, align 4
  %420 = getelementptr i32, ptr @in2to3_buff_1, i20 %417
  store i32 %419, ptr %420, align 4
  %421 = trunc i64 %412 to i20
  %422 = or disjoint i20 %421, 2
  %423 = getelementptr i32, ptr @in1to2_buff_1, i20 %422
  %424 = load i32, ptr %423, align 4
  %425 = getelementptr i32, ptr @in2to3_buff_1, i20 %422
  store i32 %424, ptr %425, align 4
  %426 = or disjoint i20 %421, 3
  %427 = getelementptr i32, ptr @in1to2_buff_1, i20 %426
  %428 = load i32, ptr %427, align 4
  %429 = getelementptr i32, ptr @in2to3_buff_1, i20 %426
  store i32 %428, ptr %429, align 4
  %430 = trunc i64 %412 to i20
  %431 = or disjoint i20 %430, 4
  %432 = getelementptr i32, ptr @in1to2_buff_1, i20 %431
  %433 = load i32, ptr %432, align 4
  %434 = getelementptr i32, ptr @in2to3_buff_1, i20 %431
  store i32 %433, ptr %434, align 4
  %435 = or disjoint i20 %430, 5
  %436 = getelementptr i32, ptr @in1to2_buff_1, i20 %435
  %437 = load i32, ptr %436, align 4
  %438 = getelementptr i32, ptr @in2to3_buff_1, i20 %435
  store i32 %437, ptr %438, align 4
  %439 = or disjoint i64 %412, 6
  %440 = trunc nuw i64 %439 to i20
  %441 = getelementptr i32, ptr @in1to2_buff_1, i20 %440
  %442 = load i32, ptr %441, align 4
  %443 = getelementptr i32, ptr @in2to3_buff_1, i20 %440
  store i32 %442, ptr %443, align 4
  %444 = or disjoint i20 %440, 1
  %445 = getelementptr i32, ptr @in1to2_buff_1, i20 %444
  %446 = load i32, ptr %445, align 4
  %447 = getelementptr i32, ptr @in2to3_buff_1, i20 %444
  store i32 %446, ptr %447, align 4
  %448 = add nuw nsw i64 %412, 8
  %449 = icmp ult i64 %439, 1022
  br i1 %449, label %411, label %450

450:                                              ; preds = %411
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in1to2_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %451

451:                                              ; preds = %451, %450
  %452 = phi i64 [ 0, %450 ], [ %488, %451 ]
  %453 = trunc nuw i64 %452 to i20
  %454 = getelementptr i32, ptr @in1to2_buff_1, i20 %453
  %455 = load i32, ptr %454, align 4
  %456 = getelementptr i32, ptr @in2to3_buff_1, i20 %453
  store i32 %455, ptr %456, align 4
  %457 = or disjoint i20 %453, 1
  %458 = getelementptr i32, ptr @in1to2_buff_1, i20 %457
  %459 = load i32, ptr %458, align 4
  %460 = getelementptr i32, ptr @in2to3_buff_1, i20 %457
  store i32 %459, ptr %460, align 4
  %461 = trunc i64 %452 to i20
  %462 = or disjoint i20 %461, 2
  %463 = getelementptr i32, ptr @in1to2_buff_1, i20 %462
  %464 = load i32, ptr %463, align 4
  %465 = getelementptr i32, ptr @in2to3_buff_1, i20 %462
  store i32 %464, ptr %465, align 4
  %466 = or disjoint i20 %461, 3
  %467 = getelementptr i32, ptr @in1to2_buff_1, i20 %466
  %468 = load i32, ptr %467, align 4
  %469 = getelementptr i32, ptr @in2to3_buff_1, i20 %466
  store i32 %468, ptr %469, align 4
  %470 = trunc i64 %452 to i20
  %471 = or disjoint i20 %470, 4
  %472 = getelementptr i32, ptr @in1to2_buff_1, i20 %471
  %473 = load i32, ptr %472, align 4
  %474 = getelementptr i32, ptr @in2to3_buff_1, i20 %471
  store i32 %473, ptr %474, align 4
  %475 = or disjoint i20 %470, 5
  %476 = getelementptr i32, ptr @in1to2_buff_1, i20 %475
  %477 = load i32, ptr %476, align 4
  %478 = getelementptr i32, ptr @in2to3_buff_1, i20 %475
  store i32 %477, ptr %478, align 4
  %479 = or disjoint i64 %452, 6
  %480 = trunc nuw i64 %479 to i20
  %481 = getelementptr i32, ptr @in1to2_buff_1, i20 %480
  %482 = load i32, ptr %481, align 4
  %483 = getelementptr i32, ptr @in2to3_buff_1, i20 %480
  store i32 %482, ptr %483, align 4
  %484 = or disjoint i20 %480, 1
  %485 = getelementptr i32, ptr @in1to2_buff_1, i20 %484
  %486 = load i32, ptr %485, align 4
  %487 = getelementptr i32, ptr @in2to3_buff_1, i20 %484
  store i32 %486, ptr %487, align 4
  %488 = add nuw nsw i64 %452, 8
  %489 = icmp ult i64 %479, 1022
  br i1 %489, label %451, label %490

490:                                              ; preds = %451
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in1to2_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %491

491:                                              ; preds = %491, %490
  %492 = phi i64 [ 0, %490 ], [ %528, %491 ]
  %493 = trunc nuw i64 %492 to i20
  %494 = getelementptr i32, ptr @in1to2_buff_1, i20 %493
  %495 = load i32, ptr %494, align 4
  %496 = getelementptr i32, ptr @in2to3_buff_1, i20 %493
  store i32 %495, ptr %496, align 4
  %497 = or disjoint i20 %493, 1
  %498 = getelementptr i32, ptr @in1to2_buff_1, i20 %497
  %499 = load i32, ptr %498, align 4
  %500 = getelementptr i32, ptr @in2to3_buff_1, i20 %497
  store i32 %499, ptr %500, align 4
  %501 = trunc i64 %492 to i20
  %502 = or disjoint i20 %501, 2
  %503 = getelementptr i32, ptr @in1to2_buff_1, i20 %502
  %504 = load i32, ptr %503, align 4
  %505 = getelementptr i32, ptr @in2to3_buff_1, i20 %502
  store i32 %504, ptr %505, align 4
  %506 = or disjoint i20 %501, 3
  %507 = getelementptr i32, ptr @in1to2_buff_1, i20 %506
  %508 = load i32, ptr %507, align 4
  %509 = getelementptr i32, ptr @in2to3_buff_1, i20 %506
  store i32 %508, ptr %509, align 4
  %510 = trunc i64 %492 to i20
  %511 = or disjoint i20 %510, 4
  %512 = getelementptr i32, ptr @in1to2_buff_1, i20 %511
  %513 = load i32, ptr %512, align 4
  %514 = getelementptr i32, ptr @in2to3_buff_1, i20 %511
  store i32 %513, ptr %514, align 4
  %515 = or disjoint i20 %510, 5
  %516 = getelementptr i32, ptr @in1to2_buff_1, i20 %515
  %517 = load i32, ptr %516, align 4
  %518 = getelementptr i32, ptr @in2to3_buff_1, i20 %515
  store i32 %517, ptr %518, align 4
  %519 = or disjoint i64 %492, 6
  %520 = trunc nuw i64 %519 to i20
  %521 = getelementptr i32, ptr @in1to2_buff_1, i20 %520
  %522 = load i32, ptr %521, align 4
  %523 = getelementptr i32, ptr @in2to3_buff_1, i20 %520
  store i32 %522, ptr %523, align 4
  %524 = or disjoint i20 %520, 1
  %525 = getelementptr i32, ptr @in1to2_buff_1, i20 %524
  %526 = load i32, ptr %525, align 4
  %527 = getelementptr i32, ptr @in2to3_buff_1, i20 %524
  store i32 %526, ptr %527, align 4
  %528 = add nuw nsw i64 %492, 8
  %529 = icmp ult i64 %519, 1022
  br i1 %529, label %491, label %530

530:                                              ; preds = %491
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 4 dereferenceable(4096) @in2to3_buff_0, ptr noundef nonnull align 4 dereferenceable(4096) @in1to2_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %531

531:                                              ; preds = %531, %530
  %532 = phi i64 [ 0, %530 ], [ %568, %531 ]
  %533 = trunc nuw i64 %532 to i20
  %534 = getelementptr i32, ptr @in1to2_buff_1, i20 %533
  %535 = load i32, ptr %534, align 4
  %536 = getelementptr i32, ptr @in2to3_buff_1, i20 %533
  store i32 %535, ptr %536, align 4
  %537 = or disjoint i20 %533, 1
  %538 = getelementptr i32, ptr @in1to2_buff_1, i20 %537
  %539 = load i32, ptr %538, align 4
  %540 = getelementptr i32, ptr @in2to3_buff_1, i20 %537
  store i32 %539, ptr %540, align 4
  %541 = trunc i64 %532 to i20
  %542 = or disjoint i20 %541, 2
  %543 = getelementptr i32, ptr @in1to2_buff_1, i20 %542
  %544 = load i32, ptr %543, align 4
  %545 = getelementptr i32, ptr @in2to3_buff_1, i20 %542
  store i32 %544, ptr %545, align 4
  %546 = or disjoint i20 %541, 3
  %547 = getelementptr i32, ptr @in1to2_buff_1, i20 %546
  %548 = load i32, ptr %547, align 4
  %549 = getelementptr i32, ptr @in2to3_buff_1, i20 %546
  store i32 %548, ptr %549, align 4
  %550 = trunc i64 %532 to i20
  %551 = or disjoint i20 %550, 4
  %552 = getelementptr i32, ptr @in1to2_buff_1, i20 %551
  %553 = load i32, ptr %552, align 4
  %554 = getelementptr i32, ptr @in2to3_buff_1, i20 %551
  store i32 %553, ptr %554, align 4
  %555 = or disjoint i20 %550, 5
  %556 = getelementptr i32, ptr @in1to2_buff_1, i20 %555
  %557 = load i32, ptr %556, align 4
  %558 = getelementptr i32, ptr @in2to3_buff_1, i20 %555
  store i32 %557, ptr %558, align 4
  %559 = or disjoint i64 %532, 6
  %560 = trunc nuw i64 %559 to i20
  %561 = getelementptr i32, ptr @in1to2_buff_1, i20 %560
  %562 = load i32, ptr %561, align 4
  %563 = getelementptr i32, ptr @in2to3_buff_1, i20 %560
  store i32 %562, ptr %563, align 4
  %564 = or disjoint i20 %560, 1
  %565 = getelementptr i32, ptr @in1to2_buff_1, i20 %564
  %566 = load i32, ptr %565, align 4
  %567 = getelementptr i32, ptr @in2to3_buff_1, i20 %564
  store i32 %566, ptr %567, align 4
  %568 = add nuw nsw i64 %532, 8
  %569 = icmp ult i64 %559, 1022
  br i1 %569, label %531, label %570

570:                                              ; preds = %531
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 1, i32 -1)
  br label %571

571:                                              ; preds = %571, %570
  %572 = phi i64 [ 0, %570 ], [ %608, %571 ]
  %573 = trunc nuw i64 %572 to i20
  %574 = getelementptr i32, ptr @in1to2_buff_0, i20 %573
  %575 = load i32, ptr %574, align 4
  %576 = getelementptr i32, ptr @in2to3_buff_0, i20 %573
  store i32 %575, ptr %576, align 4
  %577 = or disjoint i20 %573, 1
  %578 = getelementptr i32, ptr @in1to2_buff_0, i20 %577
  %579 = load i32, ptr %578, align 4
  %580 = getelementptr i32, ptr @in2to3_buff_0, i20 %577
  store i32 %579, ptr %580, align 4
  %581 = trunc i64 %572 to i20
  %582 = or disjoint i20 %581, 2
  %583 = getelementptr i32, ptr @in1to2_buff_0, i20 %582
  %584 = load i32, ptr %583, align 4
  %585 = getelementptr i32, ptr @in2to3_buff_0, i20 %582
  store i32 %584, ptr %585, align 4
  %586 = or disjoint i20 %581, 3
  %587 = getelementptr i32, ptr @in1to2_buff_0, i20 %586
  %588 = load i32, ptr %587, align 4
  %589 = getelementptr i32, ptr @in2to3_buff_0, i20 %586
  store i32 %588, ptr %589, align 4
  %590 = trunc i64 %572 to i20
  %591 = or disjoint i20 %590, 4
  %592 = getelementptr i32, ptr @in1to2_buff_0, i20 %591
  %593 = load i32, ptr %592, align 4
  %594 = getelementptr i32, ptr @in2to3_buff_0, i20 %591
  store i32 %593, ptr %594, align 4
  %595 = or disjoint i20 %590, 5
  %596 = getelementptr i32, ptr @in1to2_buff_0, i20 %595
  %597 = load i32, ptr %596, align 4
  %598 = getelementptr i32, ptr @in2to3_buff_0, i20 %595
  store i32 %597, ptr %598, align 4
  %599 = or disjoint i64 %572, 6
  %600 = trunc nuw i64 %599 to i20
  %601 = getelementptr i32, ptr @in1to2_buff_0, i20 %600
  %602 = load i32, ptr %601, align 4
  %603 = getelementptr i32, ptr @in2to3_buff_0, i20 %600
  store i32 %602, ptr %603, align 4
  %604 = or disjoint i20 %600, 1
  %605 = getelementptr i32, ptr @in1to2_buff_0, i20 %604
  %606 = load i32, ptr %605, align 4
  %607 = getelementptr i32, ptr @in2to3_buff_0, i20 %604
  store i32 %606, ptr %607, align 4
  %608 = add nuw nsw i64 %572, 8
  %609 = icmp ult i64 %599, 1022
  br i1 %609, label %571, label %610

610:                                              ; preds = %571
  tail call void @llvm.aie2.release(i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  ret void
}

define void @core_0_3() local_unnamed_addr {
  %1 = and i64 ptrtoint (ptr @in1to2_buff_0 to i64), 28
  %2 = icmp eq i64 %1, 0
  %3 = and i64 ptrtoint (ptr @in0to1_buff_0 to i64), 28
  %4 = icmp eq i64 %3, 0
  %5 = and i64 ptrtoint (ptr @in1to2_buff_1 to i64), 28
  %6 = icmp eq i64 %5, 0
  %7 = and i64 ptrtoint (ptr @in0to1_buff_1 to i64), 28
  %8 = icmp eq i64 %7, 0
  br label %.preheader3

.preheader3:                                      ; preds = %0, %.preheader3
  %9 = phi i64 [ 0, %0 ], [ %10, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.assume(i1 %2)
  tail call void @llvm.assume(i1 %4)
  tail call void @passthrough(ptr nonnull @in0to1_buff_0, ptr nonnull @in1to2_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.assume(i1 %6)
  tail call void @llvm.assume(i1 %8)
  tail call void @passthrough(ptr nonnull @in0to1_buff_1, ptr nonnull @in1to2_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_0, ptr nonnull @in1to2_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_1, ptr nonnull @in1to2_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_0, ptr nonnull @in1to2_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_1, ptr nonnull @in1to2_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_0, ptr nonnull @in1to2_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_1, ptr nonnull @in1to2_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_0, ptr nonnull @in1to2_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_1, ptr nonnull @in1to2_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_0, ptr nonnull @in1to2_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_1, ptr nonnull @in1to2_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_0, ptr nonnull @in1to2_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_1, ptr nonnull @in1to2_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_0, ptr nonnull @in1to2_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_1, ptr nonnull @in1to2_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_0, ptr nonnull @in1to2_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_1, ptr nonnull @in1to2_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %10 = add nuw nsw i64 %9, 2
  %.not = icmp eq i64 %10, 9223372036854775806
  br i1 %.not, label %.preheader, label %.preheader3

.preheader:                                       ; preds = %.preheader3
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_0, ptr nonnull @in1to2_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_1, ptr nonnull @in1to2_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_0, ptr nonnull @in1to2_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_1, ptr nonnull @in1to2_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_0, ptr nonnull @in1to2_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_1, ptr nonnull @in1to2_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_0, ptr nonnull @in1to2_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_1, ptr nonnull @in1to2_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @passthrough(ptr nonnull @in0to1_buff_0, ptr nonnull @in1to2_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  ret void
}

define void @core_0_2() local_unnamed_addr {
  %1 = and i64 ptrtoint (ptr @in0to1_buff_0 to i64), 28
  %2 = icmp eq i64 %1, 0
  %3 = and i64 ptrtoint (ptr @infactor_cons_buff_0 to i64), 28
  %4 = icmp eq i64 %3, 0
  %5 = and i64 ptrtoint (ptr @in0_cons_buff_0 to i64), 28
  %6 = icmp eq i64 %5, 0
  %7 = and i64 ptrtoint (ptr @in0to1_buff_1 to i64), 28
  %8 = icmp eq i64 %7, 0
  %9 = and i64 ptrtoint (ptr @in0_cons_buff_1 to i64), 28
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
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_0, ptr nonnull @in0to1_buff_0, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.assume(i1 %8)
  tail call void @llvm.assume(i1 %10)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_1, ptr nonnull @in0to1_buff_1, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_0, ptr nonnull @in0to1_buff_0, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_1, ptr nonnull @in0to1_buff_1, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_0, ptr nonnull @in0to1_buff_0, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_1, ptr nonnull @in0to1_buff_1, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_0, ptr nonnull @in0to1_buff_0, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_1, ptr nonnull @in0to1_buff_1, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_0, ptr nonnull @in0to1_buff_0, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.assume(i1 %12)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_1, ptr nonnull @in0to1_buff_1, ptr nonnull @infactor_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_0, ptr nonnull @in0to1_buff_0, ptr nonnull @infactor_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_1, ptr nonnull @in0to1_buff_1, ptr nonnull @infactor_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_0, ptr nonnull @in0to1_buff_0, ptr nonnull @infactor_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_1, ptr nonnull @in0to1_buff_1, ptr nonnull @infactor_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_0, ptr nonnull @in0to1_buff_0, ptr nonnull @infactor_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_1, ptr nonnull @in0to1_buff_1, ptr nonnull @infactor_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_0, ptr nonnull @in0to1_buff_0, ptr nonnull @infactor_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_1, ptr nonnull @in0to1_buff_1, ptr nonnull @infactor_cons_buff_1, i32 1024)
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
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_0, ptr nonnull @in0to1_buff_0, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_1, ptr nonnull @in0to1_buff_1, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_0, ptr nonnull @in0to1_buff_0, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_1, ptr nonnull @in0to1_buff_1, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_0, ptr nonnull @in0to1_buff_0, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_1, ptr nonnull @in0to1_buff_1, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_0, ptr nonnull @in0to1_buff_0, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_1, ptr nonnull @in0to1_buff_1, ptr nonnull @infactor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in0_cons_buff_0, ptr nonnull @in0to1_buff_0, ptr nonnull @infactor_cons_buff_0, i32 1024)
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
