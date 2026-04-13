; ModuleID = '/home/xiaorang/Documents/ATOMFLOW/atomflow_controller/.vitis_ws_atomflow_4byqsgtf/atomflow_controller_2024_2/atomflow_controller_2024_2/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.atom_location = type { float, float }
%"class.hls::burst_maxi<ap_uint<512> >" = type { %"struct.ap_uint<512>"* }
%"struct.ap_uint<512>" = type { %"struct.ap_int_base<512, false>" }
%"struct.ap_int_base<512, false>" = type { %"struct.ssdm_int<512, false>" }
%"struct.ssdm_int<512, false>" = type { i512 }
%"class.hls::stream<ap_uint<512>, 0>" = type { %"struct.ap_uint<512>" }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_atomflow_controller_ir(i8 zeroext %mode, float %emission_threshold, i32 %atomLocationsSize, i32 %projShape0, i32 %projShape1, %struct.atom_location* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2000" "maxi" %atomLocations, i32 %psfSupersample, i32 %imageProjectionSize, %"class.hls::burst_maxi<ap_uint<512> >"* nocapture readonly %imageProjs_local, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="100" "maxi" %imageProjs, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="100" "maxi" %imageProjs_local_size, %"class.hls::burst_maxi<ap_uint<512> >"* nocapture readonly %fullImage, i32 %fullImage_rows, i32 %fullImage_cols, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="2000" "maxi" %emissions, i32 %grid_rows, i32 %grid_cols, i8* noalias nonnull "maxi" %targetGeometry_mem, i32 %compZoneRowStart, i32 %compZoneRowEnd, i32 %compZoneColStart, i32 %compZoneColEnd, %"class.hls::stream<ap_uint<512>, 0>"* noalias nonnull dereferenceable(64) %moveStream, i32* noalias nocapture nonnull %moveCount) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.atom_location* %atomLocations to [2000 x %struct.atom_location]*
  %1 = call i8* @malloc(i64 16000)
  %atomLocations_copy = bitcast i8* %1 to [2000 x %struct.atom_location]*
  %2 = getelementptr inbounds %"class.hls::burst_maxi<ap_uint<512> >", %"class.hls::burst_maxi<ap_uint<512> >"* %imageProjs_local, i64 0, i32 0
  %3 = load %"struct.ap_uint<512>"*, %"struct.ap_uint<512>"** %2, align 8
  %4 = bitcast float* %imageProjs to [100 x float]*
  %imageProjs_copy = alloca [100 x float], align 512
  %5 = bitcast i32* %imageProjs_local_size to [100 x i32]*
  %imageProjs_local_size_copy = alloca [100 x i32], align 512
  %6 = getelementptr inbounds %"class.hls::burst_maxi<ap_uint<512> >", %"class.hls::burst_maxi<ap_uint<512> >"* %fullImage, i64 0, i32 0
  %7 = load %"struct.ap_uint<512>"*, %"struct.ap_uint<512>"** %6, align 8
  %8 = bitcast float* %emissions to [2000 x float]*
  %9 = call i8* @malloc(i64 8000)
  %emissions_copy = bitcast i8* %9 to [2000 x float]*
  %targetGeometry_mem_copy = alloca i8, align 512
  %moveStream_copy = alloca i512, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i512* %moveStream_copy, i32 0) ]
  %moveCount_copy = alloca i32, align 512
  call fastcc void @copy_in([2000 x %struct.atom_location]* nonnull %0, [2000 x %struct.atom_location]* %atomLocations_copy, [100 x float]* nonnull %4, [100 x float]* nonnull align 512 %imageProjs_copy, [100 x i32]* nonnull %5, [100 x i32]* nonnull align 512 %imageProjs_local_size_copy, [2000 x float]* nonnull %8, [2000 x float]* %emissions_copy, i8* nonnull %targetGeometry_mem, i8* nonnull align 512 %targetGeometry_mem_copy, %"class.hls::stream<ap_uint<512>, 0>"* nonnull %moveStream, i512* nonnull align 512 %moveStream_copy, i32* nonnull %moveCount, i32* nonnull align 512 %moveCount_copy)
  call void @apatb_atomflow_controller_hw(i8 %mode, float %emission_threshold, i32 %atomLocationsSize, i32 %projShape0, i32 %projShape1, [2000 x %struct.atom_location]* %atomLocations_copy, i32 %psfSupersample, i32 %imageProjectionSize, %"struct.ap_uint<512>"* %3, [100 x float]* %imageProjs_copy, [100 x i32]* %imageProjs_local_size_copy, %"struct.ap_uint<512>"* %7, i32 %fullImage_rows, i32 %fullImage_cols, [2000 x float]* %emissions_copy, i32 %grid_rows, i32 %grid_cols, i8* %targetGeometry_mem_copy, i32 %compZoneRowStart, i32 %compZoneRowEnd, i32 %compZoneColStart, i32 %compZoneColEnd, i512* %moveStream_copy, i32* %moveCount_copy)
  call void @copy_back([2000 x %struct.atom_location]* %0, [2000 x %struct.atom_location]* %atomLocations_copy, [100 x float]* %4, [100 x float]* %imageProjs_copy, [100 x i32]* %5, [100 x i32]* %imageProjs_local_size_copy, [2000 x float]* %8, [2000 x float]* %emissions_copy, i8* %targetGeometry_mem, i8* %targetGeometry_mem_copy, %"class.hls::stream<ap_uint<512>, 0>"* %moveStream, i512* %moveStream_copy, i32* %moveCount, i32* %moveCount_copy)
  tail call void @free(i8* %1)
  tail call void @free(i8* %9)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in([2000 x %struct.atom_location]* readonly "unpacked"="0", [2000 x %struct.atom_location]* "unpacked"="1", [100 x float]* readonly "unpacked"="2", [100 x float]* align 512 "unpacked"="3", [100 x i32]* readonly "unpacked"="4", [100 x i32]* align 512 "unpacked"="5", [2000 x float]* readonly "unpacked"="6", [2000 x float]* "unpacked"="7", i8* readonly "unpacked"="8", i8* align 512 "unpacked"="9", %"class.hls::stream<ap_uint<512>, 0>"* "unpacked"="10", i512* noalias nocapture align 512 "unpacked"="11.0", i32* readonly "unpacked"="12", i32* align 512 "unpacked"="13") unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2000struct.atom_location([2000 x %struct.atom_location]* %1, [2000 x %struct.atom_location]* %0)
  call fastcc void @onebyonecpy_hls.p0a100f32([100 x float]* align 512 %3, [100 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* align 512 %5, [100 x i32]* %4)
  call fastcc void @onebyonecpy_hls.p0a2000f32([2000 x float]* %7, [2000 x float]* %6)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %9, i8* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<512>, 0>"(i512* align 512 %11, %"class.hls::stream<ap_uint<512>, 0>"* %10)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %13, i32* %12)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a2000struct.atom_location([2000 x %struct.atom_location]* %dst, [2000 x %struct.atom_location]* readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [2000 x %struct.atom_location]* %dst, null
  %1 = icmp eq [2000 x %struct.atom_location]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a2000struct.atom_location([2000 x %struct.atom_location]* nonnull %dst, [2000 x %struct.atom_location]* nonnull %src, i64 2000)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a2000struct.atom_location([2000 x %struct.atom_location]* %dst, [2000 x %struct.atom_location]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [2000 x %struct.atom_location]* %src, null
  %1 = icmp eq [2000 x %struct.atom_location]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond5 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond5, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx6 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.01 = getelementptr [2000 x %struct.atom_location], [2000 x %struct.atom_location]* %src, i64 0, i64 %for.loop.idx6, i32 0
  %dst.addr.02 = getelementptr [2000 x %struct.atom_location], [2000 x %struct.atom_location]* %dst, i64 0, i64 %for.loop.idx6, i32 0
  %3 = load float, float* %src.addr.01, align 4
  store float %3, float* %dst.addr.02, align 4
  %src.addr.13 = getelementptr [2000 x %struct.atom_location], [2000 x %struct.atom_location]* %src, i64 0, i64 %for.loop.idx6, i32 1
  %dst.addr.14 = getelementptr [2000 x %struct.atom_location], [2000 x %struct.atom_location]* %dst, i64 0, i64 %for.loop.idx6, i32 1
  %4 = load float, float* %src.addr.13, align 4
  store float %4, float* %dst.addr.14, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx6, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a100f32([100 x float]* align 512 %dst, [100 x float]* readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [100 x float]* %dst, null
  %1 = icmp eq [100 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a100f32([100 x float]* nonnull %dst, [100 x float]* nonnull %src, i64 100)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a100f32([100 x float]* %dst, [100 x float]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [100 x float]* %src, null
  %1 = icmp eq [100 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [100 x float], [100 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [100 x float], [100 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* align 512 %dst, [100 x i32]* readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [100 x i32]* %dst, null
  %1 = icmp eq [100 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a100i32([100 x i32]* nonnull %dst, [100 x i32]* nonnull %src, i64 100)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a100i32([100 x i32]* %dst, [100 x i32]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [100 x i32]* %src, null
  %1 = icmp eq [100 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [100 x i32], [100 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [100 x i32], [100 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a2000f32([2000 x float]* %dst, [2000 x float]* readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [2000 x float]* %dst, null
  %1 = icmp eq [2000 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a2000f32([2000 x float]* nonnull %dst, [2000 x float]* nonnull %src, i64 2000)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a2000f32([2000 x float]* %dst, [2000 x float]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [2000 x float]* %src, null
  %1 = icmp eq [2000 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2000 x float], [2000 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [2000 x float], [2000 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %dst, i8* readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq i8* %dst, null
  %1 = icmp eq i8* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = load i8, i8* %src, align 1
  store i8 %3, i8* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<512>, 0>"(i512* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_uint<512>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<512>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<512>, 0>"(i512* align 512 %dst, %"class.hls::stream<ap_uint<512>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<512>, 0>"(i512* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_uint<512>, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #6 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<512>, 0>"
  %3 = alloca i512
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_uint<512>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_64(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_uint<512>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<512>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_uint<512>, 0>", %"class.hls::stream<ap_uint<512>, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_uint<512>, 0>" %8, 0, 0, 0, 0
  store i512 %.evi, i512* %3
  %9 = bitcast i512* %3 to i8*
  %10 = bitcast i512* %0 to i8*
  call void @fpga_fifo_push_64(i8* %9, i8* %10)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %dst, i32* readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq i32* %dst, null
  %1 = icmp eq i32* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = load i32, i32* %src, align 4
  store i32 %3, i32* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out([2000 x %struct.atom_location]* "unpacked"="0", [2000 x %struct.atom_location]* readonly "unpacked"="1", [100 x float]* "unpacked"="2", [100 x float]* readonly align 512 "unpacked"="3", [100 x i32]* "unpacked"="4", [100 x i32]* readonly align 512 "unpacked"="5", [2000 x float]* "unpacked"="6", [2000 x float]* readonly "unpacked"="7", i8* "unpacked"="8", i8* readonly align 512 "unpacked"="9", %"class.hls::stream<ap_uint<512>, 0>"* "unpacked"="10", i512* noalias nocapture align 512 "unpacked"="11.0", i32* "unpacked"="12", i32* readonly align 512 "unpacked"="13") unnamed_addr #7 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2000struct.atom_location([2000 x %struct.atom_location]* %0, [2000 x %struct.atom_location]* %1)
  call fastcc void @onebyonecpy_hls.p0a100f32([100 x float]* %2, [100 x float]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* %4, [100 x i32]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a2000f32([2000 x float]* %6, [2000 x float]* %7)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %8, i8* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<512>, 0>.267"(%"class.hls::stream<ap_uint<512>, 0>"* %10, i512* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %12, i32* align 512 %13)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<512>, 0>.267"(%"class.hls::stream<ap_uint<512>, 0>"* noalias "unpacked"="0" %dst, i512* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<512>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<512>, 0>.270"(%"class.hls::stream<ap_uint<512>, 0>"* nonnull %dst, i512* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<512>, 0>.270"(%"class.hls::stream<ap_uint<512>, 0>"* noalias nocapture "unpacked"="0", i512* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #6 {
entry:
  %2 = alloca i512
  %3 = alloca %"class.hls::stream<ap_uint<512>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i512* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_64(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i512* %2 to i8*
  %7 = bitcast i512* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %6, i8* %7)
  %8 = load volatile i512, i512* %2
  %.ivi = insertvalue %"class.hls::stream<ap_uint<512>, 0>" undef, i512 %8, 0, 0, 0, 0
  store %"class.hls::stream<ap_uint<512>, 0>" %.ivi, %"class.hls::stream<ap_uint<512>, 0>"* %3
  %9 = bitcast %"class.hls::stream<ap_uint<512>, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<ap_uint<512>, 0>"* %0 to i8*
  call void @fpga_fifo_push_64(i8* %9, i8* %10)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_atomflow_controller_hw(i8, float, i32, i32, i32, [2000 x %struct.atom_location]*, i32, i32, %"struct.ap_uint<512>"*, [100 x float]*, [100 x i32]*, %"struct.ap_uint<512>"*, i32, i32, [2000 x float]*, i32, i32, i8*, i32, i32, i32, i32, i512*, i32*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back([2000 x %struct.atom_location]* "unpacked"="0", [2000 x %struct.atom_location]* readonly "unpacked"="1", [100 x float]* "unpacked"="2", [100 x float]* readonly align 512 "unpacked"="3", [100 x i32]* "unpacked"="4", [100 x i32]* readonly align 512 "unpacked"="5", [2000 x float]* "unpacked"="6", [2000 x float]* readonly "unpacked"="7", i8* "unpacked"="8", i8* readonly align 512 "unpacked"="9", %"class.hls::stream<ap_uint<512>, 0>"* "unpacked"="10", i512* noalias nocapture align 512 "unpacked"="11.0", i32* "unpacked"="12", i32* readonly align 512 "unpacked"="13") unnamed_addr #7 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2000f32([2000 x float]* %6, [2000 x float]* %7)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %8, i8* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<512>, 0>.267"(%"class.hls::stream<ap_uint<512>, 0>"* %10, i512* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %12, i32* align 512 %13)
  ret void
}

declare void @atomflow_controller_hw_stub(i8 zeroext, float, i32, i32, i32, %struct.atom_location* noalias nocapture nonnull readonly, i32, i32, %"class.hls::burst_maxi<ap_uint<512> >"* nocapture readonly, float* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, %"class.hls::burst_maxi<ap_uint<512> >"* nocapture readonly, i32, i32, float* noalias nocapture nonnull, i32, i32, i8* noalias nonnull, i32, i32, i32, i32, %"class.hls::stream<ap_uint<512>, 0>"* noalias nonnull, i32* noalias nocapture nonnull)

define void @atomflow_controller_hw_stub_wrapper(i8, float, i32, i32, i32, [2000 x %struct.atom_location]*, i32, i32, %"struct.ap_uint<512>"*, [100 x float]*, [100 x i32]*, %"struct.ap_uint<512>"*, i32, i32, [2000 x float]*, i32, i32, i8*, i32, i32, i32, i32, i512*, i32*) #8 {
entry:
  %24 = call i8* @malloc(i64 64)
  %25 = bitcast i8* %24 to %"class.hls::stream<ap_uint<512>, 0>"*
  call void @copy_out([2000 x %struct.atom_location]* null, [2000 x %struct.atom_location]* %5, [100 x float]* null, [100 x float]* %9, [100 x i32]* null, [100 x i32]* %10, [2000 x float]* null, [2000 x float]* %14, i8* null, i8* %17, %"class.hls::stream<ap_uint<512>, 0>"* %25, i512* %22, i32* null, i32* %23)
  %26 = bitcast [2000 x %struct.atom_location]* %5 to %struct.atom_location*
  %27 = bitcast %"struct.ap_uint<512>"* %8 to %"class.hls::burst_maxi<ap_uint<512> >"*
  %28 = bitcast [100 x float]* %9 to float*
  %29 = bitcast [100 x i32]* %10 to i32*
  %30 = bitcast %"struct.ap_uint<512>"* %11 to %"class.hls::burst_maxi<ap_uint<512> >"*
  %31 = bitcast [2000 x float]* %14 to float*
  call void @atomflow_controller_hw_stub(i8 %0, float %1, i32 %2, i32 %3, i32 %4, %struct.atom_location* %26, i32 %6, i32 %7, %"class.hls::burst_maxi<ap_uint<512> >"* %27, float* %28, i32* %29, %"class.hls::burst_maxi<ap_uint<512> >"* %30, i32 %12, i32 %13, float* %31, i32 %15, i32 %16, i8* %17, i32 %18, i32 %19, i32 %20, i32 %21, %"class.hls::stream<ap_uint<512>, 0>"* %25, i32* %23)
  call void @copy_in([2000 x %struct.atom_location]* null, [2000 x %struct.atom_location]* %5, [100 x float]* null, [100 x float]* %9, [100 x i32]* null, [100 x i32]* %10, [2000 x float]* null, [2000 x float]* %14, i8* null, i8* %17, %"class.hls::stream<ap_uint<512>, 0>"* %25, i512* %22, i32* null, i32* %23)
  call void @free(i8* %24)
  ret void
}

declare i1 @fpga_fifo_not_empty_64(i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #7 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #8 = { "fpga.wrapper.func"="stub" }
attributes #9 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="512" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
