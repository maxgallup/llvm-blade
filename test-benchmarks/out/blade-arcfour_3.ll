; ModuleID = 'arcfour_3.ll'
source_filename = "arcfour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.rc4_test.key = private unnamed_addr constant [3 x [10 x i8]] [[10 x i8] c"Key\00\00\00\00\00\00\00", [10 x i8] c"Wiki\00\00\00\00\00\00", [10 x i8] c"Secret\00\00\00\00"], align 16
@__const.rc4_test.stream = private unnamed_addr constant [3 x [10 x i8]] [[10 x i8] c"\EB\9Fw\81\B74\CAr\A7\19", [10 x i8] c"`D\DBmA\B7\00\00\00\00", [10 x i8] c"\04\D4k\05<\A8{Y\00\00"], align 16
@.str = private unnamed_addr constant [19 x i8] c"ARCFOUR tests: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SUCCEEDED\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @arcfour_key_setup(ptr nocapture noundef %state, ptr nocapture noundef readonly %key, i32 noundef %len) local_unnamed_addr #0 {
iter.check:
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %state, align 1, !tbaa !7, !BLADE-T !10
  %0 = getelementptr inbounds i8, ptr %state, i64 16, !BLADE-T !10
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %0, align 1, !tbaa !7
  %1 = getelementptr inbounds i8, ptr %state, i64 32, !BLADE-T !10
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %1, align 1, !tbaa !7
  %2 = getelementptr inbounds i8, ptr %state, i64 48, !BLADE-T !10
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %2, align 1, !tbaa !7
  %3 = getelementptr inbounds i8, ptr %state, i64 64, !BLADE-T !10
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %3, align 1, !tbaa !7
  %4 = getelementptr inbounds i8, ptr %state, i64 80, !BLADE-T !10
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %4, align 1, !tbaa !7
  %5 = getelementptr inbounds i8, ptr %state, i64 96, !BLADE-T !10
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %5, align 1, !tbaa !7
  %6 = getelementptr inbounds i8, ptr %state, i64 112, !BLADE-T !10
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %6, align 1, !tbaa !7
  %7 = getelementptr inbounds i8, ptr %state, i64 128, !BLADE-T !10
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %7, align 1, !tbaa !7
  %8 = getelementptr inbounds i8, ptr %state, i64 144, !BLADE-T !10
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %8, align 1, !tbaa !7
  %9 = getelementptr inbounds i8, ptr %state, i64 160, !BLADE-T !10
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %9, align 1, !tbaa !7
  %10 = getelementptr inbounds i8, ptr %state, i64 176, !BLADE-T !10
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %10, align 1, !tbaa !7
  %11 = getelementptr inbounds i8, ptr %state, i64 192, !BLADE-T !10
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %11, align 1, !tbaa !7
  %12 = getelementptr inbounds i8, ptr %state, i64 208, !BLADE-T !10
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %12, align 1, !tbaa !7
  %13 = getelementptr inbounds i8, ptr %state, i64 224, !BLADE-T !10
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %13, align 1, !tbaa !7
  %14 = getelementptr inbounds i8, ptr %state, i64 240, !BLADE-T !10
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %14, align 1, !tbaa !7
  br label %for.body4

for.body4:                                        ; preds = %for.body4, %iter.check
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.body4 ], [ 0, %iter.check ]
  %j.041 = phi i8 [ %add11.narrow, %for.body4 ], [ 0, %iter.check ]
  %arrayidx6 = getelementptr inbounds i8, ptr %state, i64 %indvars.iv44, !BLADE-S !11, !BLADE-T !10
  %15 = load i8, ptr %arrayidx6, align 1, !tbaa !7, !BLADE-T !10
  %add = add i8 %15, %j.041
  %16 = trunc i64 %indvars.iv44 to i32
  %rem = srem i32 %16, %len, !BLADE-T !10
  %idxprom8 = zext i32 %rem to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %key, i64 %idxprom8, !BLADE-S !11, !BLADE-T !10
  %17 = load i8, ptr %arrayidx9, align 1, !tbaa !7, !BLADE-T !10
  %add11.narrow = add i8 %add, %17
  %idxprom15 = zext i8 %add11.narrow to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %state, i64 %idxprom15, !BLADE-S !11, !BLADE-T !10
  %18 = load i8, ptr %arrayidx16, align 1, !tbaa !7, !BLADE-T !10
  store i8 %18, ptr %arrayidx6, align 1, !tbaa !7
  store i8 %15, ptr %arrayidx16, align 1, !tbaa !7
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond46.not = icmp eq i64 %indvars.iv.next45, 256
  br i1 %exitcond46.not, label %for.end23, label %for.body4, !llvm.loop !12

for.end23:                                        ; preds = %for.body4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @arcfour_generate_stream(ptr nocapture noundef %state, ptr nocapture noundef writeonly %out, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp38.not = icmp eq i64 %len, 0
  br i1 %cmp38.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.041 = phi i32 [ %rem, %for.body ], [ 0, %entry ]
  %idx.040 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  %j.039 = phi i8 [ %add1.narrow, %for.body ], [ 0, %entry ]
  %add = add nsw i32 %i.041, 1
  %rem = srem i32 %add, 256
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, ptr %state, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !7
  %add1.narrow = add i8 %0, %j.039
  %idxprom5 = zext i8 %add1.narrow to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %state, i64 %idxprom5
  %1 = load i8, ptr %arrayidx6, align 1, !tbaa !7
  store i8 %1, ptr %arrayidx, align 1, !tbaa !7
  store i8 %0, ptr %arrayidx6, align 1, !tbaa !7
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !7
  %add17.narrow = add i8 %2, %0
  %idxprom19 = zext i8 %add17.narrow to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %state, i64 %idxprom19
  %3 = load i8, ptr %arrayidx20, align 1, !tbaa !7
  %arrayidx21 = getelementptr inbounds i8, ptr %out, i64 %idx.040
  store i8 %3, ptr %arrayidx21, align 1, !tbaa !7
  %inc = add nuw i64 %idx.040, 1
  %exitcond.not = icmp eq i64 %inc, %len
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !14

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @rc4_test() local_unnamed_addr #2 {
iter.check:
  %state = alloca [256 x i8], align 16
  %buf = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %state) #6
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %buf) #6
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %state, align 16, !tbaa !7
  %0 = getelementptr inbounds i8, ptr %state, i64 16
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %0, align 16, !tbaa !7
  %1 = getelementptr inbounds i8, ptr %state, i64 32
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %1, align 16, !tbaa !7
  %2 = getelementptr inbounds i8, ptr %state, i64 48
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %2, align 16, !tbaa !7
  %3 = getelementptr inbounds i8, ptr %state, i64 64
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %3, align 16, !tbaa !7
  %4 = getelementptr inbounds i8, ptr %state, i64 80
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %4, align 16, !tbaa !7
  %5 = getelementptr inbounds i8, ptr %state, i64 96
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %5, align 16, !tbaa !7
  %6 = getelementptr inbounds i8, ptr %state, i64 112
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %6, align 16, !tbaa !7
  %7 = getelementptr inbounds i8, ptr %state, i64 128
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %7, align 16, !tbaa !7
  %8 = getelementptr inbounds i8, ptr %state, i64 144
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %8, align 16, !tbaa !7
  %9 = getelementptr inbounds i8, ptr %state, i64 160
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %9, align 16, !tbaa !7
  %10 = getelementptr inbounds i8, ptr %state, i64 176
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %10, align 16, !tbaa !7
  %11 = getelementptr inbounds i8, ptr %state, i64 192
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %11, align 16, !tbaa !7
  %12 = getelementptr inbounds i8, ptr %state, i64 208
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %12, align 16, !tbaa !7
  %13 = getelementptr inbounds i8, ptr %state, i64 224
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %13, align 16, !tbaa !7
  %14 = getelementptr inbounds i8, ptr %state, i64 240
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %14, align 16, !tbaa !7
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i, %iter.check
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %for.body4.i ], [ 0, %iter.check ]
  %j.041.i = phi i8 [ %add11.narrow.i, %for.body4.i ], [ 0, %iter.check ]
  %arrayidx6.i = getelementptr inbounds i8, ptr %state, i64 %indvars.iv44.i
  %15 = load i8, ptr %arrayidx6.i, align 1, !tbaa !7
  %add.i = add i8 %15, %j.041.i
  %16 = trunc i64 %indvars.iv44.i to i32
  %rem.i = srem i32 %16, 3
  %idxprom8.i = zext i32 %rem.i to i64
  %arrayidx9.i = getelementptr inbounds i8, ptr @__const.rc4_test.key, i64 %idxprom8.i
  %17 = load i8, ptr %arrayidx9.i, align 1, !tbaa !7
  %add11.narrow.i = add i8 %add.i, %17
  %idxprom15.i = zext i8 %add11.narrow.i to i64
  %arrayidx16.i = getelementptr inbounds i8, ptr %state, i64 %idxprom15.i
  %18 = load i8, ptr %arrayidx16.i, align 1, !tbaa !7
  store i8 %18, ptr %arrayidx6.i, align 1, !tbaa !7
  store i8 %15, ptr %arrayidx16.i, align 1, !tbaa !7
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next45.i, 256
  br i1 %exitcond46.not.i, label %iter.check57, label %for.body4.i, !llvm.loop !12

iter.check57:                                     ; preds = %for.body4.i
  %arrayidx.i28 = getelementptr inbounds i8, ptr %state, i64 1
  %19 = load i8, ptr %arrayidx.i28, align 1, !tbaa !7
  %idxprom5.i = zext i8 %19 to i64
  %arrayidx6.i29 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i
  %20 = load i8, ptr %arrayidx6.i29, align 1, !tbaa !7
  store i8 %20, ptr %arrayidx.i28, align 1, !tbaa !7
  store i8 %19, ptr %arrayidx6.i29, align 1, !tbaa !7
  %21 = load i8, ptr %arrayidx.i28, align 1, !tbaa !7
  %add17.narrow.i = add i8 %21, %19
  %idxprom19.i = zext i8 %add17.narrow.i to i64
  %arrayidx20.i = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i
  %22 = load i8, ptr %arrayidx20.i, align 1, !tbaa !7
  store i8 %22, ptr %buf, align 16, !tbaa !7
  %arrayidx.i28.135 = getelementptr inbounds i8, ptr %state, i64 2
  %23 = load i8, ptr %arrayidx.i28.135, align 2, !tbaa !7
  %add1.narrow.i.1 = add i8 %23, %19
  %idxprom5.i.136 = zext i8 %add1.narrow.i.1 to i64
  %arrayidx6.i29.137 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.136
  %24 = load i8, ptr %arrayidx6.i29.137, align 1, !tbaa !7
  store i8 %24, ptr %arrayidx.i28.135, align 2, !tbaa !7
  store i8 %23, ptr %arrayidx6.i29.137, align 1, !tbaa !7
  %25 = load i8, ptr %arrayidx.i28.135, align 2, !tbaa !7
  %add17.narrow.i.138 = add i8 %25, %23
  %idxprom19.i.139 = zext i8 %add17.narrow.i.138 to i64
  %arrayidx20.i.140 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.139
  %26 = load i8, ptr %arrayidx20.i.140, align 1, !tbaa !7
  %arrayidx21.i.1 = getelementptr inbounds i8, ptr %buf, i64 1
  store i8 %26, ptr %arrayidx21.i.1, align 1, !tbaa !7
  %arrayidx.i28.242 = getelementptr inbounds i8, ptr %state, i64 3
  %27 = load i8, ptr %arrayidx.i28.242, align 1, !tbaa !7
  %add1.narrow.i.2 = add i8 %27, %add1.narrow.i.1
  %idxprom5.i.243 = zext i8 %add1.narrow.i.2 to i64
  %arrayidx6.i29.244 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.243
  %28 = load i8, ptr %arrayidx6.i29.244, align 1, !tbaa !7
  store i8 %28, ptr %arrayidx.i28.242, align 1, !tbaa !7
  store i8 %27, ptr %arrayidx6.i29.244, align 1, !tbaa !7
  %29 = load i8, ptr %arrayidx.i28.242, align 1, !tbaa !7
  %add17.narrow.i.245 = add i8 %29, %27
  %idxprom19.i.246 = zext i8 %add17.narrow.i.245 to i64
  %arrayidx20.i.247 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.246
  %30 = load i8, ptr %arrayidx20.i.247, align 1, !tbaa !7
  %arrayidx21.i.2 = getelementptr inbounds i8, ptr %buf, i64 2
  store i8 %30, ptr %arrayidx21.i.2, align 2, !tbaa !7
  %arrayidx.i28.3 = getelementptr inbounds i8, ptr %state, i64 4
  %31 = load i8, ptr %arrayidx.i28.3, align 4, !tbaa !7
  %add1.narrow.i.3 = add i8 %31, %add1.narrow.i.2
  %idxprom5.i.3 = zext i8 %add1.narrow.i.3 to i64
  %arrayidx6.i29.3 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.3
  %32 = load i8, ptr %arrayidx6.i29.3, align 1, !tbaa !7
  store i8 %32, ptr %arrayidx.i28.3, align 4, !tbaa !7
  store i8 %31, ptr %arrayidx6.i29.3, align 1, !tbaa !7
  %33 = load i8, ptr %arrayidx.i28.3, align 4, !tbaa !7
  %add17.narrow.i.3 = add i8 %33, %31
  %idxprom19.i.3 = zext i8 %add17.narrow.i.3 to i64
  %arrayidx20.i.3 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.3
  %34 = load i8, ptr %arrayidx20.i.3, align 1, !tbaa !7
  %arrayidx21.i.3 = getelementptr inbounds i8, ptr %buf, i64 3
  store i8 %34, ptr %arrayidx21.i.3, align 1, !tbaa !7
  %arrayidx.i28.4 = getelementptr inbounds i8, ptr %state, i64 5
  %35 = load i8, ptr %arrayidx.i28.4, align 1, !tbaa !7
  %add1.narrow.i.4 = add i8 %35, %add1.narrow.i.3
  %idxprom5.i.4 = zext i8 %add1.narrow.i.4 to i64
  %arrayidx6.i29.4 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.4
  %36 = load i8, ptr %arrayidx6.i29.4, align 1, !tbaa !7
  store i8 %36, ptr %arrayidx.i28.4, align 1, !tbaa !7
  store i8 %35, ptr %arrayidx6.i29.4, align 1, !tbaa !7
  %37 = load i8, ptr %arrayidx.i28.4, align 1, !tbaa !7
  %add17.narrow.i.4 = add i8 %37, %35
  %idxprom19.i.4 = zext i8 %add17.narrow.i.4 to i64
  %arrayidx20.i.4 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.4
  %38 = load i8, ptr %arrayidx20.i.4, align 1, !tbaa !7
  %arrayidx21.i.4 = getelementptr inbounds i8, ptr %buf, i64 4
  store i8 %38, ptr %arrayidx21.i.4, align 4, !tbaa !7
  %arrayidx.i28.5 = getelementptr inbounds i8, ptr %state, i64 6
  %39 = load i8, ptr %arrayidx.i28.5, align 2, !tbaa !7
  %add1.narrow.i.5 = add i8 %39, %add1.narrow.i.4
  %idxprom5.i.5 = zext i8 %add1.narrow.i.5 to i64
  %arrayidx6.i29.5 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.5
  %40 = load i8, ptr %arrayidx6.i29.5, align 1, !tbaa !7
  store i8 %40, ptr %arrayidx.i28.5, align 2, !tbaa !7
  store i8 %39, ptr %arrayidx6.i29.5, align 1, !tbaa !7
  %41 = load i8, ptr %arrayidx.i28.5, align 2, !tbaa !7
  %add17.narrow.i.5 = add i8 %41, %39
  %idxprom19.i.5 = zext i8 %add17.narrow.i.5 to i64
  %arrayidx20.i.5 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.5
  %42 = load i8, ptr %arrayidx20.i.5, align 1, !tbaa !7
  %arrayidx21.i.5 = getelementptr inbounds i8, ptr %buf, i64 5
  store i8 %42, ptr %arrayidx21.i.5, align 1, !tbaa !7
  %arrayidx.i28.6 = getelementptr inbounds i8, ptr %state, i64 7
  %43 = load i8, ptr %arrayidx.i28.6, align 1, !tbaa !7
  %add1.narrow.i.6 = add i8 %43, %add1.narrow.i.5
  %idxprom5.i.6 = zext i8 %add1.narrow.i.6 to i64
  %arrayidx6.i29.6 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.6
  %44 = load i8, ptr %arrayidx6.i29.6, align 1, !tbaa !7
  store i8 %44, ptr %arrayidx.i28.6, align 1, !tbaa !7
  store i8 %43, ptr %arrayidx6.i29.6, align 1, !tbaa !7
  %45 = load i8, ptr %arrayidx.i28.6, align 1, !tbaa !7
  %add17.narrow.i.6 = add i8 %45, %43
  %idxprom19.i.6 = zext i8 %add17.narrow.i.6 to i64
  %arrayidx20.i.6 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.6
  %46 = load i8, ptr %arrayidx20.i.6, align 1, !tbaa !7
  %arrayidx21.i.6 = getelementptr inbounds i8, ptr %buf, i64 6
  store i8 %46, ptr %arrayidx21.i.6, align 2, !tbaa !7
  %arrayidx.i28.7 = getelementptr inbounds i8, ptr %state, i64 8
  %47 = load i8, ptr %arrayidx.i28.7, align 8, !tbaa !7
  %add1.narrow.i.7 = add i8 %47, %add1.narrow.i.6
  %idxprom5.i.7 = zext i8 %add1.narrow.i.7 to i64
  %arrayidx6.i29.7 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.7
  %48 = load i8, ptr %arrayidx6.i29.7, align 1, !tbaa !7
  store i8 %48, ptr %arrayidx.i28.7, align 8, !tbaa !7
  store i8 %47, ptr %arrayidx6.i29.7, align 1, !tbaa !7
  %49 = load i8, ptr %arrayidx.i28.7, align 8, !tbaa !7
  %add17.narrow.i.7 = add i8 %49, %47
  %idxprom19.i.7 = zext i8 %add17.narrow.i.7 to i64
  %arrayidx20.i.7 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.7
  %50 = load i8, ptr %arrayidx20.i.7, align 1, !tbaa !7
  %arrayidx21.i.7 = getelementptr inbounds i8, ptr %buf, i64 7
  store i8 %50, ptr %arrayidx21.i.7, align 1, !tbaa !7
  %arrayidx.i28.8 = getelementptr inbounds i8, ptr %state, i64 9
  %51 = load i8, ptr %arrayidx.i28.8, align 1, !tbaa !7
  %add1.narrow.i.8 = add i8 %51, %add1.narrow.i.7
  %idxprom5.i.8 = zext i8 %add1.narrow.i.8 to i64
  %arrayidx6.i29.8 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.8
  %52 = load i8, ptr %arrayidx6.i29.8, align 1, !tbaa !7
  store i8 %52, ptr %arrayidx.i28.8, align 1, !tbaa !7
  store i8 %51, ptr %arrayidx6.i29.8, align 1, !tbaa !7
  %53 = load i8, ptr %arrayidx.i28.8, align 1, !tbaa !7
  %add17.narrow.i.8 = add i8 %53, %51
  %idxprom19.i.8 = zext i8 %add17.narrow.i.8 to i64
  %arrayidx20.i.8 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.8
  %54 = load i8, ptr %arrayidx20.i.8, align 1, !tbaa !7
  %arrayidx21.i.8 = getelementptr inbounds i8, ptr %buf, i64 8
  store i8 %54, ptr %arrayidx21.i.8, align 8, !tbaa !7
  %arrayidx.i28.9 = getelementptr inbounds i8, ptr %state, i64 10
  %55 = load i8, ptr %arrayidx.i28.9, align 2, !tbaa !7
  %add1.narrow.i.9 = add i8 %55, %add1.narrow.i.8
  %idxprom5.i.9 = zext i8 %add1.narrow.i.9 to i64
  %arrayidx6.i29.9 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.9
  %56 = load i8, ptr %arrayidx6.i29.9, align 1, !tbaa !7
  store i8 %56, ptr %arrayidx.i28.9, align 2, !tbaa !7
  store i8 %55, ptr %arrayidx6.i29.9, align 1, !tbaa !7
  %57 = load i8, ptr %arrayidx.i28.9, align 2, !tbaa !7
  %add17.narrow.i.9 = add i8 %57, %55
  %idxprom19.i.9 = zext i8 %add17.narrow.i.9 to i64
  %arrayidx20.i.9 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.9
  %58 = load i8, ptr %arrayidx20.i.9, align 1, !tbaa !7
  %arrayidx21.i.9 = getelementptr inbounds i8, ptr %buf, i64 9
  store i8 %58, ptr %arrayidx21.i.9, align 1, !tbaa !7
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @__const.rc4_test.stream, ptr noundef nonnull dereferenceable(10) %buf, i64 10)
  %tobool18.not.not = icmp eq i32 %bcmp, 0
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %state, align 16, !tbaa !7
  %59 = getelementptr inbounds i8, ptr %state, i64 16
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %59, align 16, !tbaa !7
  %60 = getelementptr inbounds i8, ptr %state, i64 32
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %60, align 16, !tbaa !7
  %61 = getelementptr inbounds i8, ptr %state, i64 48
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %61, align 16, !tbaa !7
  %62 = getelementptr inbounds i8, ptr %state, i64 64
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %62, align 16, !tbaa !7
  %63 = getelementptr inbounds i8, ptr %state, i64 80
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %63, align 16, !tbaa !7
  %64 = getelementptr inbounds i8, ptr %state, i64 96
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %64, align 16, !tbaa !7
  %65 = getelementptr inbounds i8, ptr %state, i64 112
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %65, align 16, !tbaa !7
  %66 = getelementptr inbounds i8, ptr %state, i64 128
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %66, align 16, !tbaa !7
  %67 = getelementptr inbounds i8, ptr %state, i64 144
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %67, align 16, !tbaa !7
  %68 = getelementptr inbounds i8, ptr %state, i64 160
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %68, align 16, !tbaa !7
  %69 = getelementptr inbounds i8, ptr %state, i64 176
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %69, align 16, !tbaa !7
  %70 = getelementptr inbounds i8, ptr %state, i64 192
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %70, align 16, !tbaa !7
  %71 = getelementptr inbounds i8, ptr %state, i64 208
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %71, align 16, !tbaa !7
  %72 = getelementptr inbounds i8, ptr %state, i64 224
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %72, align 16, !tbaa !7
  %73 = getelementptr inbounds i8, ptr %state, i64 240
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %73, align 16, !tbaa !7
  br label %for.body4.i.1

for.body4.i.1:                                    ; preds = %for.body4.i.1, %iter.check57
  %indvars.iv44.i.1 = phi i64 [ %indvars.iv.next45.i.1, %for.body4.i.1 ], [ 0, %iter.check57 ]
  %j.041.i.1 = phi i8 [ %add11.narrow.i.1, %for.body4.i.1 ], [ 0, %iter.check57 ]
  %arrayidx6.i.1 = getelementptr inbounds i8, ptr %state, i64 %indvars.iv44.i.1
  %74 = load i8, ptr %arrayidx6.i.1, align 1, !tbaa !7
  %add.i.1 = add i8 %74, %j.041.i.1
  %75 = trunc i64 %indvars.iv44.i.1 to i32
  %rem.i.1 = srem i32 %75, 4
  %idxprom8.i.1 = zext i32 %rem.i.1 to i64
  %arrayidx9.i.1 = getelementptr inbounds i8, ptr getelementptr inbounds ([3 x [10 x i8]], ptr @__const.rc4_test.key, i64 0, i64 1), i64 %idxprom8.i.1
  %76 = load i8, ptr %arrayidx9.i.1, align 1, !tbaa !7
  %add11.narrow.i.1 = add i8 %add.i.1, %76
  %idxprom15.i.1 = zext i8 %add11.narrow.i.1 to i64
  %arrayidx16.i.1 = getelementptr inbounds i8, ptr %state, i64 %idxprom15.i.1
  %77 = load i8, ptr %arrayidx16.i.1, align 1, !tbaa !7
  store i8 %77, ptr %arrayidx6.i.1, align 1, !tbaa !7
  store i8 %74, ptr %arrayidx16.i.1, align 1, !tbaa !7
  %indvars.iv.next45.i.1 = add nuw nsw i64 %indvars.iv44.i.1, 1
  %exitcond46.not.i.1 = icmp eq i64 %indvars.iv.next45.i.1, 256
  br i1 %exitcond46.not.i.1, label %arcfour_key_setup.exit.1, label %for.body4.i.1, !llvm.loop !12

arcfour_key_setup.exit.1:                         ; preds = %for.body4.i.1
  %78 = load i8, ptr %arrayidx.i28, align 1, !tbaa !7
  %idxprom5.i.1 = zext i8 %78 to i64
  %arrayidx6.i29.1 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.1
  %79 = load i8, ptr %arrayidx6.i29.1, align 1, !tbaa !7
  store i8 %79, ptr %arrayidx.i28, align 1, !tbaa !7
  store i8 %78, ptr %arrayidx6.i29.1, align 1, !tbaa !7
  %80 = load i8, ptr %arrayidx.i28, align 1, !tbaa !7
  %add17.narrow.i.1 = add i8 %80, %78
  %idxprom19.i.1 = zext i8 %add17.narrow.i.1 to i64
  %arrayidx20.i.1 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.1
  %81 = load i8, ptr %arrayidx20.i.1, align 1, !tbaa !7
  store i8 %81, ptr %buf, align 16, !tbaa !7
  %82 = load i8, ptr %arrayidx.i28.135, align 2, !tbaa !7
  %add1.narrow.i.1.1 = add i8 %82, %78
  %idxprom5.i.1.1 = zext i8 %add1.narrow.i.1.1 to i64
  %arrayidx6.i29.1.1 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.1.1
  %83 = load i8, ptr %arrayidx6.i29.1.1, align 1, !tbaa !7
  store i8 %83, ptr %arrayidx.i28.135, align 2, !tbaa !7
  store i8 %82, ptr %arrayidx6.i29.1.1, align 1, !tbaa !7
  %84 = load i8, ptr %arrayidx.i28.135, align 2, !tbaa !7
  %add17.narrow.i.1.1 = add i8 %84, %82
  %idxprom19.i.1.1 = zext i8 %add17.narrow.i.1.1 to i64
  %arrayidx20.i.1.1 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.1.1
  %85 = load i8, ptr %arrayidx20.i.1.1, align 1, !tbaa !7
  store i8 %85, ptr %arrayidx21.i.1, align 1, !tbaa !7
  %86 = load i8, ptr %arrayidx.i28.242, align 1, !tbaa !7
  %add1.narrow.i.1.2 = add i8 %86, %add1.narrow.i.1.1
  %idxprom5.i.1.2 = zext i8 %add1.narrow.i.1.2 to i64
  %arrayidx6.i29.1.2 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.1.2
  %87 = load i8, ptr %arrayidx6.i29.1.2, align 1, !tbaa !7
  store i8 %87, ptr %arrayidx.i28.242, align 1, !tbaa !7
  store i8 %86, ptr %arrayidx6.i29.1.2, align 1, !tbaa !7
  %88 = load i8, ptr %arrayidx.i28.242, align 1, !tbaa !7
  %add17.narrow.i.1.2 = add i8 %88, %86
  %idxprom19.i.1.2 = zext i8 %add17.narrow.i.1.2 to i64
  %arrayidx20.i.1.2 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.1.2
  %89 = load i8, ptr %arrayidx20.i.1.2, align 1, !tbaa !7
  store i8 %89, ptr %arrayidx21.i.2, align 2, !tbaa !7
  %90 = load i8, ptr %arrayidx.i28.3, align 4, !tbaa !7
  %add1.narrow.i.1.3 = add i8 %90, %add1.narrow.i.1.2
  %idxprom5.i.1.3 = zext i8 %add1.narrow.i.1.3 to i64
  %arrayidx6.i29.1.3 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.1.3
  %91 = load i8, ptr %arrayidx6.i29.1.3, align 1, !tbaa !7
  store i8 %91, ptr %arrayidx.i28.3, align 4, !tbaa !7
  store i8 %90, ptr %arrayidx6.i29.1.3, align 1, !tbaa !7
  %92 = load i8, ptr %arrayidx.i28.3, align 4, !tbaa !7
  %add17.narrow.i.1.3 = add i8 %92, %90
  %idxprom19.i.1.3 = zext i8 %add17.narrow.i.1.3 to i64
  %arrayidx20.i.1.3 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.1.3
  %93 = load i8, ptr %arrayidx20.i.1.3, align 1, !tbaa !7
  store i8 %93, ptr %arrayidx21.i.3, align 1, !tbaa !7
  %94 = load i8, ptr %arrayidx.i28.4, align 1, !tbaa !7
  %add1.narrow.i.1.4 = add i8 %94, %add1.narrow.i.1.3
  %idxprom5.i.1.4 = zext i8 %add1.narrow.i.1.4 to i64
  %arrayidx6.i29.1.4 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.1.4
  %95 = load i8, ptr %arrayidx6.i29.1.4, align 1, !tbaa !7
  store i8 %95, ptr %arrayidx.i28.4, align 1, !tbaa !7
  store i8 %94, ptr %arrayidx6.i29.1.4, align 1, !tbaa !7
  %96 = load i8, ptr %arrayidx.i28.4, align 1, !tbaa !7
  %add17.narrow.i.1.4 = add i8 %96, %94
  %idxprom19.i.1.4 = zext i8 %add17.narrow.i.1.4 to i64
  %arrayidx20.i.1.4 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.1.4
  %97 = load i8, ptr %arrayidx20.i.1.4, align 1, !tbaa !7
  store i8 %97, ptr %arrayidx21.i.4, align 4, !tbaa !7
  %98 = load i8, ptr %arrayidx.i28.5, align 2, !tbaa !7
  %add1.narrow.i.1.5 = add i8 %98, %add1.narrow.i.1.4
  %idxprom5.i.1.5 = zext i8 %add1.narrow.i.1.5 to i64
  %arrayidx6.i29.1.5 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.1.5
  %99 = load i8, ptr %arrayidx6.i29.1.5, align 1, !tbaa !7
  store i8 %99, ptr %arrayidx.i28.5, align 2, !tbaa !7
  store i8 %98, ptr %arrayidx6.i29.1.5, align 1, !tbaa !7
  %100 = load i8, ptr %arrayidx.i28.5, align 2, !tbaa !7
  %add17.narrow.i.1.5 = add i8 %100, %98
  %idxprom19.i.1.5 = zext i8 %add17.narrow.i.1.5 to i64
  %arrayidx20.i.1.5 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.1.5
  %101 = load i8, ptr %arrayidx20.i.1.5, align 1, !tbaa !7
  store i8 %101, ptr %arrayidx21.i.5, align 1, !tbaa !7
  br i1 %tobool18.not.not, label %land.rhs.1, label %vector.body88

land.rhs.1:                                       ; preds = %arcfour_key_setup.exit.1
  %bcmp.1 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) getelementptr inbounds ([3 x [10 x i8]], ptr @__const.rc4_test.stream, i64 0, i64 1), ptr noundef nonnull dereferenceable(6) %buf, i64 6)
  %tobool18.not.1 = icmp eq i32 %bcmp.1, 0
  %102 = zext i1 %tobool18.not.1 to i32
  br label %vector.body88

vector.body88:                                    ; preds = %land.rhs.1, %arcfour_key_setup.exit.1
  %land.ext.1 = phi i32 [ 0, %arcfour_key_setup.exit.1 ], [ %102, %land.rhs.1 ]
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %state, align 16, !tbaa !7
  %103 = getelementptr inbounds i8, ptr %state, i64 16
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %103, align 16, !tbaa !7
  %104 = getelementptr inbounds i8, ptr %state, i64 32
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %104, align 16, !tbaa !7
  %105 = getelementptr inbounds i8, ptr %state, i64 48
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %105, align 16, !tbaa !7
  %106 = getelementptr inbounds i8, ptr %state, i64 64
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %106, align 16, !tbaa !7
  %107 = getelementptr inbounds i8, ptr %state, i64 80
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %107, align 16, !tbaa !7
  %108 = getelementptr inbounds i8, ptr %state, i64 96
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %108, align 16, !tbaa !7
  %109 = getelementptr inbounds i8, ptr %state, i64 112
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %109, align 16, !tbaa !7
  %110 = getelementptr inbounds i8, ptr %state, i64 128
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %110, align 16, !tbaa !7
  %111 = getelementptr inbounds i8, ptr %state, i64 144
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %111, align 16, !tbaa !7
  %112 = getelementptr inbounds i8, ptr %state, i64 160
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %112, align 16, !tbaa !7
  %113 = getelementptr inbounds i8, ptr %state, i64 176
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %113, align 16, !tbaa !7
  %114 = getelementptr inbounds i8, ptr %state, i64 192
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %114, align 16, !tbaa !7
  %115 = getelementptr inbounds i8, ptr %state, i64 208
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %115, align 16, !tbaa !7
  %116 = getelementptr inbounds i8, ptr %state, i64 224
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %116, align 16, !tbaa !7
  %117 = getelementptr inbounds i8, ptr %state, i64 240
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %117, align 16, !tbaa !7
  br label %for.body4.i.2

for.body4.i.2:                                    ; preds = %for.body4.i.2, %vector.body88
  %indvars.iv44.i.2 = phi i64 [ %indvars.iv.next45.i.2, %for.body4.i.2 ], [ 0, %vector.body88 ]
  %j.041.i.2 = phi i8 [ %add11.narrow.i.2, %for.body4.i.2 ], [ 0, %vector.body88 ]
  %arrayidx6.i.2 = getelementptr inbounds i8, ptr %state, i64 %indvars.iv44.i.2
  %118 = load i8, ptr %arrayidx6.i.2, align 1, !tbaa !7
  %add.i.2 = add i8 %118, %j.041.i.2
  %119 = trunc i64 %indvars.iv44.i.2 to i32
  %rem.i.2 = srem i32 %119, 6
  %idxprom8.i.2 = zext i32 %rem.i.2 to i64
  %arrayidx9.i.2 = getelementptr inbounds i8, ptr getelementptr inbounds ([3 x [10 x i8]], ptr @__const.rc4_test.key, i64 0, i64 2), i64 %idxprom8.i.2
  %120 = load i8, ptr %arrayidx9.i.2, align 1, !tbaa !7
  %add11.narrow.i.2 = add i8 %add.i.2, %120
  %idxprom15.i.2 = zext i8 %add11.narrow.i.2 to i64
  %arrayidx16.i.2 = getelementptr inbounds i8, ptr %state, i64 %idxprom15.i.2
  %121 = load i8, ptr %arrayidx16.i.2, align 1, !tbaa !7
  store i8 %121, ptr %arrayidx6.i.2, align 1, !tbaa !7
  store i8 %118, ptr %arrayidx16.i.2, align 1, !tbaa !7
  %indvars.iv.next45.i.2 = add nuw nsw i64 %indvars.iv44.i.2, 1
  %exitcond46.not.i.2 = icmp eq i64 %indvars.iv.next45.i.2, 256
  br i1 %exitcond46.not.i.2, label %arcfour_key_setup.exit.2, label %for.body4.i.2, !llvm.loop !12

arcfour_key_setup.exit.2:                         ; preds = %for.body4.i.2
  %122 = load i8, ptr %arrayidx.i28, align 1, !tbaa !7
  %idxprom5.i.2 = zext i8 %122 to i64
  %arrayidx6.i29.2 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.2
  %123 = load i8, ptr %arrayidx6.i29.2, align 1, !tbaa !7
  store i8 %123, ptr %arrayidx.i28, align 1, !tbaa !7
  store i8 %122, ptr %arrayidx6.i29.2, align 1, !tbaa !7
  %124 = load i8, ptr %arrayidx.i28, align 1, !tbaa !7
  %add17.narrow.i.2 = add i8 %124, %122
  %idxprom19.i.2 = zext i8 %add17.narrow.i.2 to i64
  %arrayidx20.i.2 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.2
  %125 = load i8, ptr %arrayidx20.i.2, align 1, !tbaa !7
  store i8 %125, ptr %buf, align 16, !tbaa !7
  %126 = load i8, ptr %arrayidx.i28.135, align 2, !tbaa !7
  %add1.narrow.i.2.1 = add i8 %126, %122
  %idxprom5.i.2.1 = zext i8 %add1.narrow.i.2.1 to i64
  %arrayidx6.i29.2.1 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.2.1
  %127 = load i8, ptr %arrayidx6.i29.2.1, align 1, !tbaa !7
  store i8 %127, ptr %arrayidx.i28.135, align 2, !tbaa !7
  store i8 %126, ptr %arrayidx6.i29.2.1, align 1, !tbaa !7
  %128 = load i8, ptr %arrayidx.i28.135, align 2, !tbaa !7
  %add17.narrow.i.2.1 = add i8 %128, %126
  %idxprom19.i.2.1 = zext i8 %add17.narrow.i.2.1 to i64
  %arrayidx20.i.2.1 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.2.1
  %129 = load i8, ptr %arrayidx20.i.2.1, align 1, !tbaa !7
  store i8 %129, ptr %arrayidx21.i.1, align 1, !tbaa !7
  %130 = load i8, ptr %arrayidx.i28.242, align 1, !tbaa !7
  %add1.narrow.i.2.2 = add i8 %130, %add1.narrow.i.2.1
  %idxprom5.i.2.2 = zext i8 %add1.narrow.i.2.2 to i64
  %arrayidx6.i29.2.2 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.2.2
  %131 = load i8, ptr %arrayidx6.i29.2.2, align 1, !tbaa !7
  store i8 %131, ptr %arrayidx.i28.242, align 1, !tbaa !7
  store i8 %130, ptr %arrayidx6.i29.2.2, align 1, !tbaa !7
  %132 = load i8, ptr %arrayidx.i28.242, align 1, !tbaa !7
  %add17.narrow.i.2.2 = add i8 %132, %130
  %idxprom19.i.2.2 = zext i8 %add17.narrow.i.2.2 to i64
  %arrayidx20.i.2.2 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.2.2
  %133 = load i8, ptr %arrayidx20.i.2.2, align 1, !tbaa !7
  store i8 %133, ptr %arrayidx21.i.2, align 2, !tbaa !7
  %134 = load i8, ptr %arrayidx.i28.3, align 4, !tbaa !7
  %add1.narrow.i.2.3 = add i8 %134, %add1.narrow.i.2.2
  %idxprom5.i.2.3 = zext i8 %add1.narrow.i.2.3 to i64
  %arrayidx6.i29.2.3 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.2.3
  %135 = load i8, ptr %arrayidx6.i29.2.3, align 1, !tbaa !7
  store i8 %135, ptr %arrayidx.i28.3, align 4, !tbaa !7
  store i8 %134, ptr %arrayidx6.i29.2.3, align 1, !tbaa !7
  %136 = load i8, ptr %arrayidx.i28.3, align 4, !tbaa !7
  %add17.narrow.i.2.3 = add i8 %136, %134
  %idxprom19.i.2.3 = zext i8 %add17.narrow.i.2.3 to i64
  %arrayidx20.i.2.3 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.2.3
  %137 = load i8, ptr %arrayidx20.i.2.3, align 1, !tbaa !7
  store i8 %137, ptr %arrayidx21.i.3, align 1, !tbaa !7
  %138 = load i8, ptr %arrayidx.i28.4, align 1, !tbaa !7
  %add1.narrow.i.2.4 = add i8 %138, %add1.narrow.i.2.3
  %idxprom5.i.2.4 = zext i8 %add1.narrow.i.2.4 to i64
  %arrayidx6.i29.2.4 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.2.4
  %139 = load i8, ptr %arrayidx6.i29.2.4, align 1, !tbaa !7
  store i8 %139, ptr %arrayidx.i28.4, align 1, !tbaa !7
  store i8 %138, ptr %arrayidx6.i29.2.4, align 1, !tbaa !7
  %140 = load i8, ptr %arrayidx.i28.4, align 1, !tbaa !7
  %add17.narrow.i.2.4 = add i8 %140, %138
  %idxprom19.i.2.4 = zext i8 %add17.narrow.i.2.4 to i64
  %arrayidx20.i.2.4 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.2.4
  %141 = load i8, ptr %arrayidx20.i.2.4, align 1, !tbaa !7
  store i8 %141, ptr %arrayidx21.i.4, align 4, !tbaa !7
  %142 = load i8, ptr %arrayidx.i28.5, align 2, !tbaa !7
  %add1.narrow.i.2.5 = add i8 %142, %add1.narrow.i.2.4
  %idxprom5.i.2.5 = zext i8 %add1.narrow.i.2.5 to i64
  %arrayidx6.i29.2.5 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.2.5
  %143 = load i8, ptr %arrayidx6.i29.2.5, align 1, !tbaa !7
  store i8 %143, ptr %arrayidx.i28.5, align 2, !tbaa !7
  store i8 %142, ptr %arrayidx6.i29.2.5, align 1, !tbaa !7
  %144 = load i8, ptr %arrayidx.i28.5, align 2, !tbaa !7
  %add17.narrow.i.2.5 = add i8 %144, %142
  %idxprom19.i.2.5 = zext i8 %add17.narrow.i.2.5 to i64
  %arrayidx20.i.2.5 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.2.5
  %145 = load i8, ptr %arrayidx20.i.2.5, align 1, !tbaa !7
  store i8 %145, ptr %arrayidx21.i.5, align 1, !tbaa !7
  %146 = load i8, ptr %arrayidx.i28.6, align 1, !tbaa !7
  %add1.narrow.i.2.6 = add i8 %146, %add1.narrow.i.2.5
  %idxprom5.i.2.6 = zext i8 %add1.narrow.i.2.6 to i64
  %arrayidx6.i29.2.6 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.2.6
  %147 = load i8, ptr %arrayidx6.i29.2.6, align 1, !tbaa !7
  store i8 %147, ptr %arrayidx.i28.6, align 1, !tbaa !7
  store i8 %146, ptr %arrayidx6.i29.2.6, align 1, !tbaa !7
  %148 = load i8, ptr %arrayidx.i28.6, align 1, !tbaa !7
  %add17.narrow.i.2.6 = add i8 %148, %146
  %idxprom19.i.2.6 = zext i8 %add17.narrow.i.2.6 to i64
  %arrayidx20.i.2.6 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.2.6
  %149 = load i8, ptr %arrayidx20.i.2.6, align 1, !tbaa !7
  store i8 %149, ptr %arrayidx21.i.6, align 2, !tbaa !7
  %150 = load i8, ptr %arrayidx.i28.7, align 8, !tbaa !7
  %add1.narrow.i.2.7 = add i8 %150, %add1.narrow.i.2.6
  %idxprom5.i.2.7 = zext i8 %add1.narrow.i.2.7 to i64
  %arrayidx6.i29.2.7 = getelementptr inbounds i8, ptr %state, i64 %idxprom5.i.2.7
  %151 = load i8, ptr %arrayidx6.i29.2.7, align 1, !tbaa !7
  store i8 %151, ptr %arrayidx.i28.7, align 8, !tbaa !7
  store i8 %150, ptr %arrayidx6.i29.2.7, align 1, !tbaa !7
  %152 = load i8, ptr %arrayidx.i28.7, align 8, !tbaa !7
  %add17.narrow.i.2.7 = add i8 %152, %150
  %idxprom19.i.2.7 = zext i8 %add17.narrow.i.2.7 to i64
  %arrayidx20.i.2.7 = getelementptr inbounds i8, ptr %state, i64 %idxprom19.i.2.7
  %153 = load i8, ptr %arrayidx20.i.2.7, align 1, !tbaa !7
  store i8 %153, ptr %arrayidx21.i.7, align 1, !tbaa !7
  %tobool.not.2 = icmp ne i32 %land.ext.1, 0
  %rhsv = load i64, ptr %buf, align 16
  %.not = icmp eq i64 %rhsv, 6447932267253453828
  %narrow = select i1 %tobool.not.2, i1 %.not, i1 false
  %land.ext.2 = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %buf) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %state) #6
  ret i32 %land.ext.2
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 {
entry:
  %call = tail call i32 @rc4_test()
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, ptr @.str.2, ptr @.str.1
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  ret i32 0

for.body:                                         ; preds = %for.body, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %cond)
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 100000
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !15
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #5

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn memory(argmem: read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ThinLTO", i32 0}
!5 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!6 = !{!"clang version 16.0.1 (git@github.com:maxgallup/llvm-blade.git 46a02438f168e189c789acdc03504ca8ee557a91)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"Blade Transient"}
!11 = !{!"Blade Stable"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
