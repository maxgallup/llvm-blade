; ModuleID = 'md5_3.ll'
source_filename = "md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MD5_CTX = type { [64 x i8], i32, i64, [4 x i32] }

@__const.md5_test.text3_1 = private unnamed_addr constant [32 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcde\00", align 16
@__const.md5_test.text3_2 = private unnamed_addr constant [32 x i8] c"fghijklmnopqrstuvwxyz0123456789\00", align 16
@__const.md5_test.hash1 = private unnamed_addr constant [16 x i8] c"\D4\1D\8C\D9\8F\00\B2\04\E9\80\09\98\EC\F8B~", align 16
@__const.md5_test.hash2 = private unnamed_addr constant [16 x i8] c"\90\01P\98<\D2O\B0\D6\96?}(\E1\7Fr", align 16
@__const.md5_test.hash3 = private unnamed_addr constant [16 x i8] c"\D1t\AB\98\D2w\D9\F5\A5a\1C,\9FA\9D\9F", align 16
@.str = private unnamed_addr constant [15 x i8] c"MD5 tests: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SUCCEEDED\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @md5_transform(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %data) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %data, align 1, !tbaa !7, !BLADE-T !10
  %conv = zext i8 %0 to i32
  call void @llvm.x86.sse2.lfence()
  %arrayidx2 = getelementptr inbounds i8, ptr %data, i64 1, !BLADE-T !10, !BLADE-S !11
  %1 = load i8, ptr %arrayidx2, align 1, !tbaa !7, !BLADE-T !10
  %conv3 = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv3, 8
  %add4 = or i32 %shl, %conv
  call void @llvm.x86.sse2.lfence()
  %arrayidx7 = getelementptr inbounds i8, ptr %data, i64 2, !BLADE-T !10, !BLADE-S !11
  %2 = load i8, ptr %arrayidx7, align 1, !tbaa !7, !BLADE-T !10
  %conv8 = zext i8 %2 to i32
  %shl9 = shl nuw nsw i32 %conv8, 16
  %add10 = or i32 %add4, %shl9
  call void @llvm.x86.sse2.lfence()
  %arrayidx13 = getelementptr inbounds i8, ptr %data, i64 3, !BLADE-T !10, !BLADE-S !11
  %3 = load i8, ptr %arrayidx13, align 1, !tbaa !7, !BLADE-T !10
  %conv14 = zext i8 %3 to i32
  %shl15 = shl nuw i32 %conv14, 24
  %add16 = or i32 %add10, %shl15
  call void @llvm.x86.sse2.lfence()
  %arrayidx.1 = getelementptr inbounds i8, ptr %data, i64 4, !BLADE-T !10, !BLADE-S !11
  %4 = load i8, ptr %arrayidx.1, align 1, !tbaa !7, !BLADE-T !10
  %conv.1 = zext i8 %4 to i32
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.1 = getelementptr inbounds i8, ptr %data, i64 5, !BLADE-T !10, !BLADE-S !11
  %5 = load i8, ptr %arrayidx2.1, align 1, !tbaa !7, !BLADE-T !10
  %conv3.1 = zext i8 %5 to i32
  %shl.1 = shl nuw nsw i32 %conv3.1, 8
  %add4.1 = or i32 %shl.1, %conv.1
  call void @llvm.x86.sse2.lfence()
  %arrayidx7.1 = getelementptr inbounds i8, ptr %data, i64 6, !BLADE-T !10, !BLADE-S !11
  %6 = load i8, ptr %arrayidx7.1, align 1, !tbaa !7, !BLADE-T !10
  %conv8.1 = zext i8 %6 to i32
  %shl9.1 = shl nuw nsw i32 %conv8.1, 16
  %add10.1 = or i32 %add4.1, %shl9.1
  call void @llvm.x86.sse2.lfence()
  %arrayidx13.1 = getelementptr inbounds i8, ptr %data, i64 7, !BLADE-T !10, !BLADE-S !11
  %7 = load i8, ptr %arrayidx13.1, align 1, !tbaa !7, !BLADE-T !10
  %conv14.1 = zext i8 %7 to i32
  %shl15.1 = shl nuw i32 %conv14.1, 24
  %add16.1 = or i32 %add10.1, %shl15.1
  call void @llvm.x86.sse2.lfence()
  %arrayidx.2 = getelementptr inbounds i8, ptr %data, i64 8, !BLADE-T !10, !BLADE-S !11
  %8 = load i8, ptr %arrayidx.2, align 1, !tbaa !7, !BLADE-T !10
  %conv.2 = zext i8 %8 to i32
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.2 = getelementptr inbounds i8, ptr %data, i64 9, !BLADE-T !10, !BLADE-S !11
  %9 = load i8, ptr %arrayidx2.2, align 1, !tbaa !7, !BLADE-T !10
  %conv3.2 = zext i8 %9 to i32
  %shl.2 = shl nuw nsw i32 %conv3.2, 8
  %add4.2 = or i32 %shl.2, %conv.2
  call void @llvm.x86.sse2.lfence()
  %arrayidx7.2 = getelementptr inbounds i8, ptr %data, i64 10, !BLADE-T !10, !BLADE-S !11
  %10 = load i8, ptr %arrayidx7.2, align 1, !tbaa !7, !BLADE-T !10
  %conv8.2 = zext i8 %10 to i32
  %shl9.2 = shl nuw nsw i32 %conv8.2, 16
  %add10.2 = or i32 %add4.2, %shl9.2
  call void @llvm.x86.sse2.lfence()
  %arrayidx13.2 = getelementptr inbounds i8, ptr %data, i64 11, !BLADE-T !10, !BLADE-S !11
  %11 = load i8, ptr %arrayidx13.2, align 1, !tbaa !7, !BLADE-T !10
  %conv14.2 = zext i8 %11 to i32
  %shl15.2 = shl nuw i32 %conv14.2, 24
  %add16.2 = or i32 %add10.2, %shl15.2
  call void @llvm.x86.sse2.lfence()
  %arrayidx.3 = getelementptr inbounds i8, ptr %data, i64 12, !BLADE-T !10, !BLADE-S !11
  %12 = load i8, ptr %arrayidx.3, align 1, !tbaa !7, !BLADE-T !10
  %conv.3 = zext i8 %12 to i32
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.3 = getelementptr inbounds i8, ptr %data, i64 13, !BLADE-T !10, !BLADE-S !11
  %13 = load i8, ptr %arrayidx2.3, align 1, !tbaa !7, !BLADE-T !10
  %conv3.3 = zext i8 %13 to i32
  %shl.3 = shl nuw nsw i32 %conv3.3, 8
  %add4.3 = or i32 %shl.3, %conv.3
  call void @llvm.x86.sse2.lfence()
  %arrayidx7.3 = getelementptr inbounds i8, ptr %data, i64 14, !BLADE-T !10, !BLADE-S !11
  %14 = load i8, ptr %arrayidx7.3, align 1, !tbaa !7, !BLADE-T !10
  %conv8.3 = zext i8 %14 to i32
  %shl9.3 = shl nuw nsw i32 %conv8.3, 16
  %add10.3 = or i32 %add4.3, %shl9.3
  call void @llvm.x86.sse2.lfence()
  %arrayidx13.3 = getelementptr inbounds i8, ptr %data, i64 15, !BLADE-T !10, !BLADE-S !11
  %15 = load i8, ptr %arrayidx13.3, align 1, !tbaa !7, !BLADE-T !10
  %conv14.3 = zext i8 %15 to i32
  %shl15.3 = shl nuw i32 %conv14.3, 24
  %add16.3 = or i32 %add10.3, %shl15.3
  call void @llvm.x86.sse2.lfence()
  %arrayidx.4 = getelementptr inbounds i8, ptr %data, i64 16, !BLADE-T !10, !BLADE-S !11
  %16 = load i8, ptr %arrayidx.4, align 1, !tbaa !7, !BLADE-T !10
  %conv.4 = zext i8 %16 to i32
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.4 = getelementptr inbounds i8, ptr %data, i64 17, !BLADE-T !10, !BLADE-S !11
  %17 = load i8, ptr %arrayidx2.4, align 1, !tbaa !7, !BLADE-T !10
  %conv3.4 = zext i8 %17 to i32
  %shl.4 = shl nuw nsw i32 %conv3.4, 8
  %add4.4 = or i32 %shl.4, %conv.4
  call void @llvm.x86.sse2.lfence()
  %arrayidx7.4 = getelementptr inbounds i8, ptr %data, i64 18, !BLADE-T !10, !BLADE-S !11
  %18 = load i8, ptr %arrayidx7.4, align 1, !tbaa !7, !BLADE-T !10
  %conv8.4 = zext i8 %18 to i32
  %shl9.4 = shl nuw nsw i32 %conv8.4, 16
  %add10.4 = or i32 %add4.4, %shl9.4
  call void @llvm.x86.sse2.lfence()
  %arrayidx13.4 = getelementptr inbounds i8, ptr %data, i64 19, !BLADE-T !10, !BLADE-S !11
  %19 = load i8, ptr %arrayidx13.4, align 1, !tbaa !7, !BLADE-T !10
  %conv14.4 = zext i8 %19 to i32
  %shl15.4 = shl nuw i32 %conv14.4, 24
  %add16.4 = or i32 %add10.4, %shl15.4
  call void @llvm.x86.sse2.lfence()
  %arrayidx.5 = getelementptr inbounds i8, ptr %data, i64 20, !BLADE-T !10, !BLADE-S !11
  %20 = load i8, ptr %arrayidx.5, align 1, !tbaa !7, !BLADE-T !10
  %conv.5 = zext i8 %20 to i32
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.5 = getelementptr inbounds i8, ptr %data, i64 21, !BLADE-T !10, !BLADE-S !11
  %21 = load i8, ptr %arrayidx2.5, align 1, !tbaa !7, !BLADE-T !10
  %conv3.5 = zext i8 %21 to i32
  %shl.5 = shl nuw nsw i32 %conv3.5, 8
  %add4.5 = or i32 %shl.5, %conv.5
  call void @llvm.x86.sse2.lfence()
  %arrayidx7.5 = getelementptr inbounds i8, ptr %data, i64 22, !BLADE-T !10, !BLADE-S !11
  %22 = load i8, ptr %arrayidx7.5, align 1, !tbaa !7, !BLADE-T !10
  %conv8.5 = zext i8 %22 to i32
  %shl9.5 = shl nuw nsw i32 %conv8.5, 16
  %add10.5 = or i32 %add4.5, %shl9.5
  call void @llvm.x86.sse2.lfence()
  %arrayidx13.5 = getelementptr inbounds i8, ptr %data, i64 23, !BLADE-T !10, !BLADE-S !11
  %23 = load i8, ptr %arrayidx13.5, align 1, !tbaa !7, !BLADE-T !10
  %conv14.5 = zext i8 %23 to i32
  %shl15.5 = shl nuw i32 %conv14.5, 24
  %add16.5 = or i32 %add10.5, %shl15.5
  call void @llvm.x86.sse2.lfence()
  %arrayidx.6 = getelementptr inbounds i8, ptr %data, i64 24, !BLADE-T !10, !BLADE-S !11
  %24 = load i8, ptr %arrayidx.6, align 1, !tbaa !7, !BLADE-T !10
  %conv.6 = zext i8 %24 to i32
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.6 = getelementptr inbounds i8, ptr %data, i64 25, !BLADE-T !10, !BLADE-S !11
  %25 = load i8, ptr %arrayidx2.6, align 1, !tbaa !7, !BLADE-T !10
  %conv3.6 = zext i8 %25 to i32
  %shl.6 = shl nuw nsw i32 %conv3.6, 8
  %add4.6 = or i32 %shl.6, %conv.6
  call void @llvm.x86.sse2.lfence()
  %arrayidx7.6 = getelementptr inbounds i8, ptr %data, i64 26, !BLADE-T !10, !BLADE-S !11
  %26 = load i8, ptr %arrayidx7.6, align 1, !tbaa !7, !BLADE-T !10
  %conv8.6 = zext i8 %26 to i32
  %shl9.6 = shl nuw nsw i32 %conv8.6, 16
  %add10.6 = or i32 %add4.6, %shl9.6
  call void @llvm.x86.sse2.lfence()
  %arrayidx13.6 = getelementptr inbounds i8, ptr %data, i64 27, !BLADE-T !10, !BLADE-S !11
  %27 = load i8, ptr %arrayidx13.6, align 1, !tbaa !7, !BLADE-T !10
  %conv14.6 = zext i8 %27 to i32
  %shl15.6 = shl nuw i32 %conv14.6, 24
  %add16.6 = or i32 %add10.6, %shl15.6
  call void @llvm.x86.sse2.lfence()
  %arrayidx.7 = getelementptr inbounds i8, ptr %data, i64 28, !BLADE-T !10, !BLADE-S !11
  %28 = load i8, ptr %arrayidx.7, align 1, !tbaa !7, !BLADE-T !10
  %conv.7 = zext i8 %28 to i32
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.7 = getelementptr inbounds i8, ptr %data, i64 29, !BLADE-T !10, !BLADE-S !11
  %29 = load i8, ptr %arrayidx2.7, align 1, !tbaa !7, !BLADE-T !10
  %conv3.7 = zext i8 %29 to i32
  %shl.7 = shl nuw nsw i32 %conv3.7, 8
  %add4.7 = or i32 %shl.7, %conv.7
  call void @llvm.x86.sse2.lfence()
  %arrayidx7.7 = getelementptr inbounds i8, ptr %data, i64 30, !BLADE-T !10, !BLADE-S !11
  %30 = load i8, ptr %arrayidx7.7, align 1, !tbaa !7, !BLADE-T !10
  %conv8.7 = zext i8 %30 to i32
  %shl9.7 = shl nuw nsw i32 %conv8.7, 16
  %add10.7 = or i32 %add4.7, %shl9.7
  call void @llvm.x86.sse2.lfence()
  %arrayidx13.7 = getelementptr inbounds i8, ptr %data, i64 31, !BLADE-T !10, !BLADE-S !11
  %31 = load i8, ptr %arrayidx13.7, align 1, !tbaa !7, !BLADE-T !10
  %conv14.7 = zext i8 %31 to i32
  %shl15.7 = shl nuw i32 %conv14.7, 24
  %add16.7 = or i32 %add10.7, %shl15.7
  call void @llvm.x86.sse2.lfence()
  %arrayidx.8 = getelementptr inbounds i8, ptr %data, i64 32, !BLADE-T !10, !BLADE-S !11
  %32 = load i8, ptr %arrayidx.8, align 1, !tbaa !7, !BLADE-T !10
  %conv.8 = zext i8 %32 to i32
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.8 = getelementptr inbounds i8, ptr %data, i64 33, !BLADE-T !10, !BLADE-S !11
  %33 = load i8, ptr %arrayidx2.8, align 1, !tbaa !7, !BLADE-T !10
  %conv3.8 = zext i8 %33 to i32
  %shl.8 = shl nuw nsw i32 %conv3.8, 8
  %add4.8 = or i32 %shl.8, %conv.8
  call void @llvm.x86.sse2.lfence()
  %arrayidx7.8 = getelementptr inbounds i8, ptr %data, i64 34, !BLADE-T !10, !BLADE-S !11
  %34 = load i8, ptr %arrayidx7.8, align 1, !tbaa !7, !BLADE-T !10
  %conv8.8 = zext i8 %34 to i32
  %shl9.8 = shl nuw nsw i32 %conv8.8, 16
  %add10.8 = or i32 %add4.8, %shl9.8
  call void @llvm.x86.sse2.lfence()
  %arrayidx13.8 = getelementptr inbounds i8, ptr %data, i64 35, !BLADE-T !10, !BLADE-S !11
  %35 = load i8, ptr %arrayidx13.8, align 1, !tbaa !7, !BLADE-T !10
  %conv14.8 = zext i8 %35 to i32
  %shl15.8 = shl nuw i32 %conv14.8, 24
  %add16.8 = or i32 %add10.8, %shl15.8
  call void @llvm.x86.sse2.lfence()
  %arrayidx.9 = getelementptr inbounds i8, ptr %data, i64 36, !BLADE-T !10, !BLADE-S !11
  %36 = load i8, ptr %arrayidx.9, align 1, !tbaa !7, !BLADE-T !10
  %conv.9 = zext i8 %36 to i32
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.9 = getelementptr inbounds i8, ptr %data, i64 37, !BLADE-T !10, !BLADE-S !11
  %37 = load i8, ptr %arrayidx2.9, align 1, !tbaa !7, !BLADE-T !10
  %conv3.9 = zext i8 %37 to i32
  %shl.9 = shl nuw nsw i32 %conv3.9, 8
  %add4.9 = or i32 %shl.9, %conv.9
  call void @llvm.x86.sse2.lfence()
  %arrayidx7.9 = getelementptr inbounds i8, ptr %data, i64 38, !BLADE-T !10, !BLADE-S !11
  %38 = load i8, ptr %arrayidx7.9, align 1, !tbaa !7, !BLADE-T !10
  %conv8.9 = zext i8 %38 to i32
  %shl9.9 = shl nuw nsw i32 %conv8.9, 16
  %add10.9 = or i32 %add4.9, %shl9.9
  call void @llvm.x86.sse2.lfence()
  %arrayidx13.9 = getelementptr inbounds i8, ptr %data, i64 39, !BLADE-T !10, !BLADE-S !11
  %39 = load i8, ptr %arrayidx13.9, align 1, !tbaa !7, !BLADE-T !10
  %conv14.9 = zext i8 %39 to i32
  %shl15.9 = shl nuw i32 %conv14.9, 24
  %add16.9 = or i32 %add10.9, %shl15.9
  call void @llvm.x86.sse2.lfence()
  %arrayidx.10 = getelementptr inbounds i8, ptr %data, i64 40, !BLADE-T !10, !BLADE-S !11
  %40 = load i8, ptr %arrayidx.10, align 1, !tbaa !7, !BLADE-T !10
  %conv.10 = zext i8 %40 to i32
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.10 = getelementptr inbounds i8, ptr %data, i64 41, !BLADE-T !10, !BLADE-S !11
  %41 = load i8, ptr %arrayidx2.10, align 1, !tbaa !7, !BLADE-T !10
  %conv3.10 = zext i8 %41 to i32
  %shl.10 = shl nuw nsw i32 %conv3.10, 8
  %add4.10 = or i32 %shl.10, %conv.10
  call void @llvm.x86.sse2.lfence()
  %arrayidx7.10 = getelementptr inbounds i8, ptr %data, i64 42, !BLADE-T !10, !BLADE-S !11
  %42 = load i8, ptr %arrayidx7.10, align 1, !tbaa !7, !BLADE-T !10
  %conv8.10 = zext i8 %42 to i32
  %shl9.10 = shl nuw nsw i32 %conv8.10, 16
  %add10.10 = or i32 %add4.10, %shl9.10
  call void @llvm.x86.sse2.lfence()
  %arrayidx13.10 = getelementptr inbounds i8, ptr %data, i64 43, !BLADE-T !10, !BLADE-S !11
  %43 = load i8, ptr %arrayidx13.10, align 1, !tbaa !7, !BLADE-T !10
  %conv14.10 = zext i8 %43 to i32
  %shl15.10 = shl nuw i32 %conv14.10, 24
  %add16.10 = or i32 %add10.10, %shl15.10
  call void @llvm.x86.sse2.lfence()
  %arrayidx.11 = getelementptr inbounds i8, ptr %data, i64 44, !BLADE-T !10, !BLADE-S !11
  %44 = load i8, ptr %arrayidx.11, align 1, !tbaa !7, !BLADE-T !10
  %conv.11 = zext i8 %44 to i32
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.11 = getelementptr inbounds i8, ptr %data, i64 45, !BLADE-T !10, !BLADE-S !11
  %45 = load i8, ptr %arrayidx2.11, align 1, !tbaa !7, !BLADE-T !10
  %conv3.11 = zext i8 %45 to i32
  %shl.11 = shl nuw nsw i32 %conv3.11, 8
  %add4.11 = or i32 %shl.11, %conv.11
  call void @llvm.x86.sse2.lfence()
  %arrayidx7.11 = getelementptr inbounds i8, ptr %data, i64 46, !BLADE-T !10, !BLADE-S !11
  %46 = load i8, ptr %arrayidx7.11, align 1, !tbaa !7, !BLADE-T !10
  %conv8.11 = zext i8 %46 to i32
  %shl9.11 = shl nuw nsw i32 %conv8.11, 16
  %add10.11 = or i32 %add4.11, %shl9.11
  call void @llvm.x86.sse2.lfence()
  %arrayidx13.11 = getelementptr inbounds i8, ptr %data, i64 47, !BLADE-T !10, !BLADE-S !11
  %47 = load i8, ptr %arrayidx13.11, align 1, !tbaa !7, !BLADE-T !10
  %conv14.11 = zext i8 %47 to i32
  %shl15.11 = shl nuw i32 %conv14.11, 24
  %add16.11 = or i32 %add10.11, %shl15.11
  call void @llvm.x86.sse2.lfence()
  %arrayidx.12 = getelementptr inbounds i8, ptr %data, i64 48, !BLADE-T !10, !BLADE-S !11
  %48 = load i8, ptr %arrayidx.12, align 1, !tbaa !7, !BLADE-T !10
  %conv.12 = zext i8 %48 to i32
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.12 = getelementptr inbounds i8, ptr %data, i64 49, !BLADE-T !10, !BLADE-S !11
  %49 = load i8, ptr %arrayidx2.12, align 1, !tbaa !7, !BLADE-T !10
  %conv3.12 = zext i8 %49 to i32
  %shl.12 = shl nuw nsw i32 %conv3.12, 8
  %add4.12 = or i32 %shl.12, %conv.12
  call void @llvm.x86.sse2.lfence()
  %arrayidx7.12 = getelementptr inbounds i8, ptr %data, i64 50, !BLADE-T !10, !BLADE-S !11
  %50 = load i8, ptr %arrayidx7.12, align 1, !tbaa !7, !BLADE-T !10
  %conv8.12 = zext i8 %50 to i32
  %shl9.12 = shl nuw nsw i32 %conv8.12, 16
  %add10.12 = or i32 %add4.12, %shl9.12
  call void @llvm.x86.sse2.lfence()
  %arrayidx13.12 = getelementptr inbounds i8, ptr %data, i64 51, !BLADE-T !10, !BLADE-S !11
  %51 = load i8, ptr %arrayidx13.12, align 1, !tbaa !7, !BLADE-T !10
  %conv14.12 = zext i8 %51 to i32
  %shl15.12 = shl nuw i32 %conv14.12, 24
  %add16.12 = or i32 %add10.12, %shl15.12
  call void @llvm.x86.sse2.lfence()
  %arrayidx.13 = getelementptr inbounds i8, ptr %data, i64 52, !BLADE-T !10, !BLADE-S !11
  %52 = load i8, ptr %arrayidx.13, align 1, !tbaa !7, !BLADE-T !10
  %conv.13 = zext i8 %52 to i32
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.13 = getelementptr inbounds i8, ptr %data, i64 53, !BLADE-T !10, !BLADE-S !11
  %53 = load i8, ptr %arrayidx2.13, align 1, !tbaa !7, !BLADE-T !10
  %conv3.13 = zext i8 %53 to i32
  %shl.13 = shl nuw nsw i32 %conv3.13, 8
  %add4.13 = or i32 %shl.13, %conv.13
  call void @llvm.x86.sse2.lfence()
  %arrayidx7.13 = getelementptr inbounds i8, ptr %data, i64 54, !BLADE-T !10, !BLADE-S !11
  %54 = load i8, ptr %arrayidx7.13, align 1, !tbaa !7, !BLADE-T !10
  %conv8.13 = zext i8 %54 to i32
  %shl9.13 = shl nuw nsw i32 %conv8.13, 16
  %add10.13 = or i32 %add4.13, %shl9.13
  call void @llvm.x86.sse2.lfence()
  %arrayidx13.13 = getelementptr inbounds i8, ptr %data, i64 55, !BLADE-T !10, !BLADE-S !11
  %55 = load i8, ptr %arrayidx13.13, align 1, !tbaa !7, !BLADE-T !10
  %conv14.13 = zext i8 %55 to i32
  %shl15.13 = shl nuw i32 %conv14.13, 24
  %add16.13 = or i32 %add10.13, %shl15.13
  call void @llvm.x86.sse2.lfence()
  %arrayidx.14 = getelementptr inbounds i8, ptr %data, i64 56, !BLADE-T !10, !BLADE-S !11
  %56 = load i8, ptr %arrayidx.14, align 1, !tbaa !7, !BLADE-T !10
  %conv.14 = zext i8 %56 to i32
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.14 = getelementptr inbounds i8, ptr %data, i64 57, !BLADE-T !10, !BLADE-S !11
  %57 = load i8, ptr %arrayidx2.14, align 1, !tbaa !7, !BLADE-T !10
  %conv3.14 = zext i8 %57 to i32
  %shl.14 = shl nuw nsw i32 %conv3.14, 8
  %add4.14 = or i32 %shl.14, %conv.14
  call void @llvm.x86.sse2.lfence()
  %arrayidx7.14 = getelementptr inbounds i8, ptr %data, i64 58, !BLADE-T !10, !BLADE-S !11
  %58 = load i8, ptr %arrayidx7.14, align 1, !tbaa !7, !BLADE-T !10
  %conv8.14 = zext i8 %58 to i32
  %shl9.14 = shl nuw nsw i32 %conv8.14, 16
  %add10.14 = or i32 %add4.14, %shl9.14
  call void @llvm.x86.sse2.lfence()
  %arrayidx13.14 = getelementptr inbounds i8, ptr %data, i64 59, !BLADE-T !10, !BLADE-S !11
  %59 = load i8, ptr %arrayidx13.14, align 1, !tbaa !7, !BLADE-T !10
  %conv14.14 = zext i8 %59 to i32
  %shl15.14 = shl nuw i32 %conv14.14, 24
  %add16.14 = or i32 %add10.14, %shl15.14
  call void @llvm.x86.sse2.lfence()
  %arrayidx.15 = getelementptr inbounds i8, ptr %data, i64 60, !BLADE-T !10, !BLADE-S !11
  %60 = load i8, ptr %arrayidx.15, align 1, !tbaa !7, !BLADE-T !10
  %conv.15 = zext i8 %60 to i32
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.15 = getelementptr inbounds i8, ptr %data, i64 61, !BLADE-T !10, !BLADE-S !11
  %61 = load i8, ptr %arrayidx2.15, align 1, !tbaa !7, !BLADE-T !10
  %conv3.15 = zext i8 %61 to i32
  %shl.15 = shl nuw nsw i32 %conv3.15, 8
  %add4.15 = or i32 %shl.15, %conv.15
  call void @llvm.x86.sse2.lfence()
  %arrayidx7.15 = getelementptr inbounds i8, ptr %data, i64 62, !BLADE-T !10, !BLADE-S !11
  %62 = load i8, ptr %arrayidx7.15, align 1, !tbaa !7, !BLADE-T !10
  %conv8.15 = zext i8 %62 to i32
  %shl9.15 = shl nuw nsw i32 %conv8.15, 16
  %add10.15 = or i32 %add4.15, %shl9.15
  call void @llvm.x86.sse2.lfence()
  %arrayidx13.15 = getelementptr inbounds i8, ptr %data, i64 63, !BLADE-T !10, !BLADE-S !11
  %63 = load i8, ptr %arrayidx13.15, align 1, !tbaa !7, !BLADE-T !10
  %conv14.15 = zext i8 %63 to i32
  %shl15.15 = shl nuw i32 %conv14.15, 24
  %add16.15 = or i32 %add10.15, %shl15.15
  call void @llvm.x86.sse2.lfence()
  %state = getelementptr inbounds %struct.MD5_CTX, ptr %ctx, i64 0, i32 3, !BLADE-T !10, !BLADE-S !11
  %64 = load i32, ptr %state, align 8, !tbaa !12, !BLADE-T !10
  call void @llvm.x86.sse2.lfence()
  %arrayidx22 = getelementptr inbounds %struct.MD5_CTX, ptr %ctx, i64 0, i32 3, i64 1, !BLADE-T !10, !BLADE-S !11
  %65 = load i32, ptr %arrayidx22, align 4, !tbaa !12, !BLADE-T !10
  call void @llvm.x86.sse2.lfence()
  %arrayidx24 = getelementptr inbounds %struct.MD5_CTX, ptr %ctx, i64 0, i32 3, i64 2, !BLADE-T !10, !BLADE-S !11
  %66 = load i32, ptr %arrayidx24, align 8, !tbaa !12, !BLADE-T !10
  call void @llvm.x86.sse2.lfence()
  %arrayidx26 = getelementptr inbounds %struct.MD5_CTX, ptr %ctx, i64 0, i32 3, i64 3, !BLADE-T !10, !BLADE-S !11
  %67 = load i32, ptr %arrayidx26, align 4, !tbaa !12, !BLADE-T !10
  %and = and i32 %66, %65
  %not = xor i32 %65, -1
  %and27 = and i32 %67, %not
  %or = add i32 %64, -680876936
  %add29 = add i32 %or, %and
  %add30 = add i32 %add29, %and27
  %add31 = add i32 %add30, %add16
  %or33 = tail call i32 @llvm.fshl.i32(i32 %add31, i32 %add31, i32 7), !BLADE-T !10
  %add34 = add i32 %or33, %65
  %and35 = and i32 %add34, %65
  %not36 = xor i32 %add34, -1
  %and37 = and i32 %66, %not36
  %or38 = add i32 %67, -389564586
  %add40 = add i32 %or38, %add16.1
  %add41 = add i32 %add40, %and37
  %add42 = add i32 %add41, %and35
  %or45 = tail call i32 @llvm.fshl.i32(i32 %add42, i32 %add42, i32 12), !BLADE-T !10
  %add46 = add i32 %or45, %add34
  %and47 = and i32 %add46, %add34
  %not48 = xor i32 %add46, -1
  %and49 = and i32 %65, %not48
  %or50 = add i32 %66, 606105819
  %add52 = add i32 %or50, %add16.2
  %add53 = add i32 %add52, %and49
  %add54 = add i32 %add53, %and47
  %or57 = tail call i32 @llvm.fshl.i32(i32 %add54, i32 %add54, i32 17), !BLADE-T !10
  %add58 = add i32 %or57, %add46
  %and59 = and i32 %add58, %add46
  %not60 = xor i32 %add58, -1
  %and61 = and i32 %add34, %not60
  %or62 = add i32 %65, -1044525330
  %add64 = add i32 %or62, %add16.3
  %add65 = add i32 %add64, %and61
  %add66 = add i32 %add65, %and59
  %or69 = tail call i32 @llvm.fshl.i32(i32 %add66, i32 %add66, i32 22), !BLADE-T !10
  %add70 = add i32 %or69, %add58
  %and71 = and i32 %add70, %add58
  %not72 = xor i32 %add70, -1
  %and73 = and i32 %add46, %not72
  %or74 = add i32 %add16.4, -176418897
  %add76 = add i32 %or74, %add34
  %add77 = add i32 %add76, %and73
  %add78 = add i32 %add77, %and71
  %or81 = tail call i32 @llvm.fshl.i32(i32 %add78, i32 %add78, i32 7), !BLADE-T !10
  %add82 = add i32 %or81, %add70
  %and83 = and i32 %add82, %add70
  %not84 = xor i32 %add82, -1
  %and85 = and i32 %add58, %not84
  %or86 = add i32 %add16.5, 1200080426
  %add88 = add i32 %or86, %add46
  %add89 = add i32 %add88, %and85
  %add90 = add i32 %add89, %and83
  %or93 = tail call i32 @llvm.fshl.i32(i32 %add90, i32 %add90, i32 12), !BLADE-T !10
  %add94 = add i32 %or93, %add82
  %and95 = and i32 %add94, %add82
  %not96 = xor i32 %add94, -1
  %and97 = and i32 %add70, %not96
  %or98 = add i32 %add16.6, -1473231341
  %add100 = add i32 %or98, %add58
  %add101 = add i32 %add100, %and97
  %add102 = add i32 %add101, %and95
  %or105 = tail call i32 @llvm.fshl.i32(i32 %add102, i32 %add102, i32 17), !BLADE-T !10
  %add106 = add i32 %or105, %add94
  %and107 = and i32 %add106, %add94
  %not108 = xor i32 %add106, -1
  %and109 = and i32 %add82, %not108
  %or110 = add i32 %add16.7, -45705983
  %add112 = add i32 %or110, %add70
  %add113 = add i32 %add112, %and109
  %add114 = add i32 %add113, %and107
  %or117 = tail call i32 @llvm.fshl.i32(i32 %add114, i32 %add114, i32 22), !BLADE-T !10
  %add118 = add i32 %or117, %add106
  %and119 = and i32 %add118, %add106
  %not120 = xor i32 %add118, -1
  %and121 = and i32 %add94, %not120
  %or122 = add i32 %add16.8, 1770035416
  %add124 = add i32 %or122, %add82
  %add125 = add i32 %add124, %and121
  %add126 = add i32 %add125, %and119
  %or129 = tail call i32 @llvm.fshl.i32(i32 %add126, i32 %add126, i32 7), !BLADE-T !10
  %add130 = add i32 %or129, %add118
  %and131 = and i32 %add130, %add118
  %not132 = xor i32 %add130, -1
  %and133 = and i32 %add106, %not132
  %or134 = add i32 %add16.9, -1958414417
  %add136 = add i32 %or134, %add94
  %add137 = add i32 %add136, %and133
  %add138 = add i32 %add137, %and131
  %or141 = tail call i32 @llvm.fshl.i32(i32 %add138, i32 %add138, i32 12), !BLADE-T !10
  %add142 = add i32 %or141, %add130
  %and143 = and i32 %add142, %add130
  %not144 = xor i32 %add142, -1
  %and145 = and i32 %add118, %not144
  %or146 = add i32 %add16.10, -42063
  %add148 = add i32 %or146, %add106
  %add149 = add i32 %add148, %and145
  %add150 = add i32 %add149, %and143
  %or153 = tail call i32 @llvm.fshl.i32(i32 %add150, i32 %add150, i32 17), !BLADE-T !10
  %add154 = add i32 %or153, %add142
  %and155 = and i32 %add154, %add142
  %not156 = xor i32 %add154, -1
  %and157 = and i32 %add130, %not156
  %or158 = add i32 %add16.11, -1990404162
  %add160 = add i32 %or158, %add118
  %add161 = add i32 %add160, %and157
  %add162 = add i32 %add161, %and155
  %or165 = tail call i32 @llvm.fshl.i32(i32 %add162, i32 %add162, i32 22), !BLADE-T !10
  %add166 = add i32 %or165, %add154
  %and167 = and i32 %add166, %add154
  %not168 = xor i32 %add166, -1
  %and169 = and i32 %add142, %not168
  %or170 = add i32 %add16.12, 1804603682
  %add172 = add i32 %or170, %add130
  %add173 = add i32 %add172, %and169
  %add174 = add i32 %add173, %and167
  %or177 = tail call i32 @llvm.fshl.i32(i32 %add174, i32 %add174, i32 7), !BLADE-T !10
  %add178 = add i32 %or177, %add166
  %and179 = and i32 %add178, %add166
  %not180 = xor i32 %add178, -1
  %and181 = and i32 %add154, %not180
  %or182 = add i32 %add16.13, -40341101
  %add184 = add i32 %or182, %add142
  %add185 = add i32 %add184, %and181
  %add186 = add i32 %add185, %and179
  %or189 = tail call i32 @llvm.fshl.i32(i32 %add186, i32 %add186, i32 12), !BLADE-T !10
  %add190 = add i32 %or189, %add178
  %and191 = and i32 %add190, %add178
  %not192 = xor i32 %add190, -1
  %and193 = and i32 %add166, %not192
  %or194 = add i32 %add16.14, -1502002290
  %add196 = add i32 %or194, %add154
  %add197 = add i32 %add196, %and193
  %add198 = add i32 %add197, %and191
  %or201 = tail call i32 @llvm.fshl.i32(i32 %add198, i32 %add198, i32 17), !BLADE-T !10
  %add202 = add i32 %or201, %add190
  %and203 = and i32 %add202, %add190
  %not204 = xor i32 %add202, -1
  %and205 = and i32 %add178, %not204
  %or206 = add i32 %add16.15, 1236535329
  %add208 = add i32 %or206, %add166
  %add209 = add i32 %add208, %and205
  %add210 = add i32 %add209, %and203
  %or213 = tail call i32 @llvm.fshl.i32(i32 %add210, i32 %add210, i32 22), !BLADE-T !10
  %add214 = add i32 %or213, %add202
  %and215 = and i32 %add214, %add190
  %and217 = and i32 %add202, %not192
  %or218 = add i32 %add16.1, -165796510
  %add220 = add i32 %or218, %add178
  %add221 = add i32 %add220, %and217
  %add222 = add i32 %add221, %and215
  %or225 = tail call i32 @llvm.fshl.i32(i32 %add222, i32 %add222, i32 5), !BLADE-T !10
  %add226 = add i32 %or225, %add214
  %and227 = and i32 %add226, %add202
  %and229 = and i32 %add214, %not204
  %or230 = add i32 %add16.6, -1069501632
  %add232 = add i32 %or230, %add190
  %add233 = add i32 %add232, %and229
  %add234 = add i32 %add233, %and227
  %or237 = tail call i32 @llvm.fshl.i32(i32 %add234, i32 %add234, i32 9), !BLADE-T !10
  %add238 = add i32 %or237, %add226
  %and239 = and i32 %add238, %add214
  %not240 = xor i32 %add214, -1
  %and241 = and i32 %add226, %not240
  %or242 = add i32 %add16.11, 643717713
  %add244 = add i32 %or242, %add202
  %add245 = add i32 %add244, %and241
  %add246 = add i32 %add245, %and239
  %or249 = tail call i32 @llvm.fshl.i32(i32 %add246, i32 %add246, i32 14), !BLADE-T !10
  %add250 = add i32 %or249, %add238
  %and251 = and i32 %add250, %add226
  %not252 = xor i32 %add226, -1
  %and253 = and i32 %add238, %not252
  %or254 = add i32 %add16, -373897302
  %add256 = add i32 %or254, %add214
  %add257 = add i32 %add256, %and253
  %add258 = add i32 %add257, %and251
  %or261 = tail call i32 @llvm.fshl.i32(i32 %add258, i32 %add258, i32 20), !BLADE-T !10
  %add262 = add i32 %or261, %add250
  %and263 = and i32 %add262, %add238
  %not264 = xor i32 %add238, -1
  %and265 = and i32 %add250, %not264
  %or266 = add i32 %add16.5, -701558691
  %add268 = add i32 %or266, %add226
  %add269 = add i32 %add268, %and265
  %add270 = add i32 %add269, %and263
  %or273 = tail call i32 @llvm.fshl.i32(i32 %add270, i32 %add270, i32 5), !BLADE-T !10
  %add274 = add i32 %or273, %add262
  %and275 = and i32 %add274, %add250
  %not276 = xor i32 %add250, -1
  %and277 = and i32 %add262, %not276
  %or278 = add i32 %add16.10, 38016083
  %add280 = add i32 %or278, %add238
  %add281 = add i32 %add280, %and277
  %add282 = add i32 %add281, %and275
  %or285 = tail call i32 @llvm.fshl.i32(i32 %add282, i32 %add282, i32 9), !BLADE-T !10
  %add286 = add i32 %or285, %add274
  %and287 = and i32 %add286, %add262
  %not288 = xor i32 %add262, -1
  %and289 = and i32 %add274, %not288
  %or290 = add i32 %add16.15, -660478335
  %add292 = add i32 %or290, %add250
  %add293 = add i32 %add292, %and289
  %add294 = add i32 %add293, %and287
  %or297 = tail call i32 @llvm.fshl.i32(i32 %add294, i32 %add294, i32 14), !BLADE-T !10
  %add298 = add i32 %or297, %add286
  %and299 = and i32 %add298, %add274
  %not300 = xor i32 %add274, -1
  %and301 = and i32 %add286, %not300
  %or302 = add i32 %add16.4, -405537848
  %add304 = add i32 %or302, %add262
  %add305 = add i32 %add304, %and301
  %add306 = add i32 %add305, %and299
  %or309 = tail call i32 @llvm.fshl.i32(i32 %add306, i32 %add306, i32 20), !BLADE-T !10
  %add310 = add i32 %or309, %add298
  %and311 = and i32 %add310, %add286
  %not312 = xor i32 %add286, -1
  %and313 = and i32 %add298, %not312
  %or314 = add i32 %add16.9, 568446438
  %add316 = add i32 %or314, %add274
  %add317 = add i32 %add316, %and313
  %add318 = add i32 %add317, %and311
  %or321 = tail call i32 @llvm.fshl.i32(i32 %add318, i32 %add318, i32 5), !BLADE-T !10
  %add322 = add i32 %or321, %add310
  %and323 = and i32 %add322, %add298
  %not324 = xor i32 %add298, -1
  %and325 = and i32 %add310, %not324
  %or326 = add i32 %add16.14, -1019803690
  %add328 = add i32 %or326, %add286
  %add329 = add i32 %add328, %and325
  %add330 = add i32 %add329, %and323
  %or333 = tail call i32 @llvm.fshl.i32(i32 %add330, i32 %add330, i32 9), !BLADE-T !10
  %add334 = add i32 %or333, %add322
  %and335 = and i32 %add334, %add310
  %not336 = xor i32 %add310, -1
  %and337 = and i32 %add322, %not336
  %or338 = add i32 %add16.3, -187363961
  %add340 = add i32 %or338, %add298
  %add341 = add i32 %add340, %and337
  %add342 = add i32 %add341, %and335
  %or345 = tail call i32 @llvm.fshl.i32(i32 %add342, i32 %add342, i32 14), !BLADE-T !10
  %add346 = add i32 %or345, %add334
  %and347 = and i32 %add346, %add322
  %not348 = xor i32 %add322, -1
  %and349 = and i32 %add334, %not348
  %or350 = add i32 %add16.8, 1163531501
  %add352 = add i32 %or350, %add310
  %add353 = add i32 %add352, %and349
  %add354 = add i32 %add353, %and347
  %or357 = tail call i32 @llvm.fshl.i32(i32 %add354, i32 %add354, i32 20), !BLADE-T !10
  %add358 = add i32 %or357, %add346
  %and359 = and i32 %add358, %add334
  %not360 = xor i32 %add334, -1
  %and361 = and i32 %add346, %not360
  %or362 = add i32 %add16.13, -1444681467
  %add364 = add i32 %or362, %add322
  %add365 = add i32 %add364, %and361
  %add366 = add i32 %add365, %and359
  %or369 = tail call i32 @llvm.fshl.i32(i32 %add366, i32 %add366, i32 5), !BLADE-T !10
  %add370 = add i32 %or369, %add358
  %and371 = and i32 %add370, %add346
  %not372 = xor i32 %add346, -1
  %and373 = and i32 %add358, %not372
  %or374 = add i32 %add16.2, -51403784
  %add376 = add i32 %or374, %add334
  %add377 = add i32 %add376, %and373
  %add378 = add i32 %add377, %and371
  %or381 = tail call i32 @llvm.fshl.i32(i32 %add378, i32 %add378, i32 9), !BLADE-T !10
  %add382 = add i32 %or381, %add370
  %and383 = and i32 %add382, %add358
  %not384 = xor i32 %add358, -1
  %and385 = and i32 %add370, %not384
  %or386 = add i32 %add16.7, 1735328473
  %add388 = add i32 %or386, %add346
  %add389 = add i32 %add388, %and385
  %add390 = add i32 %add389, %and383
  %or393 = tail call i32 @llvm.fshl.i32(i32 %add390, i32 %add390, i32 14), !BLADE-T !10
  %add394 = add i32 %or393, %add382
  %and395 = and i32 %add394, %add370
  %not396 = xor i32 %add370, -1
  %and397 = and i32 %add382, %not396
  %or398 = add i32 %add16.12, -1926607734
  %add400 = add i32 %or398, %add358
  %add401 = add i32 %add400, %and397
  %add402 = add i32 %add401, %and395
  %or405 = tail call i32 @llvm.fshl.i32(i32 %add402, i32 %add402, i32 20), !BLADE-T !10
  %add406 = add i32 %or405, %add394
  %xor = xor i32 %add406, %add394
  %xor407 = xor i32 %xor, %add382
  %add409 = add i32 %add16.5, -378558
  %add410 = add i32 %add409, %add370
  %add411 = add i32 %add410, %xor407
  %or414 = tail call i32 @llvm.fshl.i32(i32 %add411, i32 %add411, i32 4), !BLADE-T !10
  %add415 = add i32 %or414, %add406
  %xor417 = xor i32 %xor, %add415
  %add419 = add i32 %add16.8, -2022574463
  %add420 = add i32 %add419, %add382
  %add421 = add i32 %add420, %xor417
  %or424 = tail call i32 @llvm.fshl.i32(i32 %add421, i32 %add421, i32 11), !BLADE-T !10
  %add425 = add i32 %or424, %add415
  %xor426 = xor i32 %add415, %add406
  %xor427 = xor i32 %xor426, %add425
  %add429 = add i32 %add16.11, 1839030562
  %add430 = add i32 %add429, %add394
  %add431 = add i32 %add430, %xor427
  %or434 = tail call i32 @llvm.fshl.i32(i32 %add431, i32 %add431, i32 16), !BLADE-T !10
  %add435 = add i32 %or434, %add425
  %xor436 = xor i32 %add425, %add415
  %xor437 = xor i32 %xor436, %add435
  %add439 = add i32 %add16.14, -35309556
  %add440 = add i32 %add439, %add406
  %add441 = add i32 %add440, %xor437
  %or444 = tail call i32 @llvm.fshl.i32(i32 %add441, i32 %add441, i32 23), !BLADE-T !10
  %add445 = add i32 %or444, %add435
  %xor446 = xor i32 %add435, %add425
  %xor447 = xor i32 %xor446, %add445
  %add449 = add i32 %add16.1, -1530992060
  %add450 = add i32 %add449, %add415
  %add451 = add i32 %add450, %xor447
  %or454 = tail call i32 @llvm.fshl.i32(i32 %add451, i32 %add451, i32 4), !BLADE-T !10
  %add455 = add i32 %or454, %add445
  %xor456 = xor i32 %add445, %add435
  %xor457 = xor i32 %xor456, %add455
  %add459 = add i32 %add16.4, 1272893353
  %add460 = add i32 %add459, %add425
  %add461 = add i32 %add460, %xor457
  %or464 = tail call i32 @llvm.fshl.i32(i32 %add461, i32 %add461, i32 11), !BLADE-T !10
  %add465 = add i32 %or464, %add455
  %xor466 = xor i32 %add455, %add445
  %xor467 = xor i32 %xor466, %add465
  %add469 = add i32 %add16.7, -155497632
  %add470 = add i32 %add469, %add435
  %add471 = add i32 %add470, %xor467
  %or474 = tail call i32 @llvm.fshl.i32(i32 %add471, i32 %add471, i32 16), !BLADE-T !10
  %add475 = add i32 %or474, %add465
  %xor476 = xor i32 %add465, %add455
  %xor477 = xor i32 %xor476, %add475
  %add479 = add i32 %add16.10, -1094730640
  %add480 = add i32 %add479, %add445
  %add481 = add i32 %add480, %xor477
  %or484 = tail call i32 @llvm.fshl.i32(i32 %add481, i32 %add481, i32 23), !BLADE-T !10
  %add485 = add i32 %or484, %add475
  %xor486 = xor i32 %add475, %add465
  %xor487 = xor i32 %xor486, %add485
  %add489 = add i32 %add16.13, 681279174
  %add490 = add i32 %add489, %add455
  %add491 = add i32 %add490, %xor487
  %or494 = tail call i32 @llvm.fshl.i32(i32 %add491, i32 %add491, i32 4), !BLADE-T !10
  %add495 = add i32 %or494, %add485
  %xor496 = xor i32 %add485, %add475
  %xor497 = xor i32 %xor496, %add495
  %add499 = add i32 %add16, -358537222
  %add500 = add i32 %add499, %add465
  %add501 = add i32 %add500, %xor497
  %or504 = tail call i32 @llvm.fshl.i32(i32 %add501, i32 %add501, i32 11), !BLADE-T !10
  %add505 = add i32 %or504, %add495
  %xor506 = xor i32 %add495, %add485
  %xor507 = xor i32 %xor506, %add505
  %add509 = add i32 %add16.3, -722521979
  %add510 = add i32 %add509, %add475
  %add511 = add i32 %add510, %xor507
  %or514 = tail call i32 @llvm.fshl.i32(i32 %add511, i32 %add511, i32 16), !BLADE-T !10
  %add515 = add i32 %or514, %add505
  %xor516 = xor i32 %add505, %add495
  %xor517 = xor i32 %xor516, %add515
  %add519 = add i32 %add16.6, 76029189
  %add520 = add i32 %add519, %add485
  %add521 = add i32 %add520, %xor517
  %or524 = tail call i32 @llvm.fshl.i32(i32 %add521, i32 %add521, i32 23), !BLADE-T !10
  %add525 = add i32 %or524, %add515
  %xor526 = xor i32 %add515, %add505
  %xor527 = xor i32 %xor526, %add525
  %add529 = add i32 %add16.9, -640364487
  %add530 = add i32 %add529, %add495
  %add531 = add i32 %add530, %xor527
  %or534 = tail call i32 @llvm.fshl.i32(i32 %add531, i32 %add531, i32 4), !BLADE-T !10
  %add535 = add i32 %or534, %add525
  %xor536 = xor i32 %add525, %add515
  %xor537 = xor i32 %xor536, %add535
  %add539 = add i32 %add16.12, -421815835
  %add540 = add i32 %add539, %add505
  %add541 = add i32 %add540, %xor537
  %or544 = tail call i32 @llvm.fshl.i32(i32 %add541, i32 %add541, i32 11), !BLADE-T !10
  %add545 = add i32 %or544, %add535
  %xor546 = xor i32 %add535, %add525
  %xor547 = xor i32 %xor546, %add545
  %add549 = add i32 %add16.15, 530742520
  %add550 = add i32 %add549, %add515
  %add551 = add i32 %add550, %xor547
  %or554 = tail call i32 @llvm.fshl.i32(i32 %add551, i32 %add551, i32 16), !BLADE-T !10
  %add555 = add i32 %or554, %add545
  %xor556 = xor i32 %add545, %add535
  %xor557 = xor i32 %xor556, %add555
  %add559 = add i32 %add16.2, -995338651
  %add560 = add i32 %add559, %add525
  %add561 = add i32 %add560, %xor557
  %or564 = tail call i32 @llvm.fshl.i32(i32 %add561, i32 %add561, i32 23), !BLADE-T !10
  %add565 = add i32 %or564, %add555
  %not566 = xor i32 %add545, -1
  %or567 = or i32 %add565, %not566
  %xor568 = xor i32 %or567, %add555
  %add570 = add i32 %add16, -198630844
  %add571 = add i32 %add570, %add535
  %add572 = add i32 %add571, %xor568
  %or575 = tail call i32 @llvm.fshl.i32(i32 %add572, i32 %add572, i32 6), !BLADE-T !10
  %add576 = add i32 %or575, %add565
  %not577 = xor i32 %add555, -1
  %or578 = or i32 %add576, %not577
  %xor579 = xor i32 %or578, %add565
  %add581 = add i32 %add16.7, 1126891415
  %add582 = add i32 %add581, %add545
  %add583 = add i32 %add582, %xor579
  %or586 = tail call i32 @llvm.fshl.i32(i32 %add583, i32 %add583, i32 10), !BLADE-T !10
  %add587 = add i32 %or586, %add576
  %not588 = xor i32 %add565, -1
  %or589 = or i32 %add587, %not588
  %xor590 = xor i32 %or589, %add576
  %add592 = add i32 %add16.14, -1416354905
  %add593 = add i32 %add592, %add555
  %add594 = add i32 %add593, %xor590
  %or597 = tail call i32 @llvm.fshl.i32(i32 %add594, i32 %add594, i32 15), !BLADE-T !10
  %add598 = add i32 %or597, %add587
  %not599 = xor i32 %add576, -1
  %or600 = or i32 %add598, %not599
  %xor601 = xor i32 %or600, %add587
  %add603 = add i32 %add16.5, -57434055
  %add604 = add i32 %add603, %add565
  %add605 = add i32 %add604, %xor601
  %or608 = tail call i32 @llvm.fshl.i32(i32 %add605, i32 %add605, i32 21), !BLADE-T !10
  %add609 = add i32 %or608, %add598
  %not610 = xor i32 %add587, -1
  %or611 = or i32 %add609, %not610
  %xor612 = xor i32 %or611, %add598
  %add614 = add i32 %add16.12, 1700485571
  %add615 = add i32 %add614, %add576
  %add616 = add i32 %add615, %xor612
  %or619 = tail call i32 @llvm.fshl.i32(i32 %add616, i32 %add616, i32 6), !BLADE-T !10
  %add620 = add i32 %or619, %add609
  %not621 = xor i32 %add598, -1
  %or622 = or i32 %add620, %not621
  %xor623 = xor i32 %or622, %add609
  %add625 = add i32 %add16.3, -1894986606
  %add626 = add i32 %add625, %add587
  %add627 = add i32 %add626, %xor623
  %or630 = tail call i32 @llvm.fshl.i32(i32 %add627, i32 %add627, i32 10), !BLADE-T !10
  %add631 = add i32 %or630, %add620
  %not632 = xor i32 %add609, -1
  %or633 = or i32 %add631, %not632
  %xor634 = xor i32 %or633, %add620
  %add636 = add i32 %add16.10, -1051523
  %add637 = add i32 %add636, %add598
  %add638 = add i32 %add637, %xor634
  %or641 = tail call i32 @llvm.fshl.i32(i32 %add638, i32 %add638, i32 15), !BLADE-T !10
  %add642 = add i32 %or641, %add631
  %not643 = xor i32 %add620, -1
  %or644 = or i32 %add642, %not643
  %xor645 = xor i32 %or644, %add631
  %add647 = add i32 %add16.1, -2054922799
  %add648 = add i32 %add647, %add609
  %add649 = add i32 %add648, %xor645
  %or652 = tail call i32 @llvm.fshl.i32(i32 %add649, i32 %add649, i32 21), !BLADE-T !10
  %add653 = add i32 %or652, %add642
  %not654 = xor i32 %add631, -1
  %or655 = or i32 %add653, %not654
  %xor656 = xor i32 %or655, %add642
  %add658 = add i32 %add16.8, 1873313359
  %add659 = add i32 %add658, %add620
  %add660 = add i32 %add659, %xor656
  %or663 = tail call i32 @llvm.fshl.i32(i32 %add660, i32 %add660, i32 6), !BLADE-T !10
  %add664 = add i32 %or663, %add653
  %not665 = xor i32 %add642, -1
  %or666 = or i32 %add664, %not665
  %xor667 = xor i32 %or666, %add653
  %add669 = add i32 %add16.15, -30611744
  %add670 = add i32 %add669, %add631
  %add671 = add i32 %add670, %xor667
  %or674 = tail call i32 @llvm.fshl.i32(i32 %add671, i32 %add671, i32 10), !BLADE-T !10
  %add675 = add i32 %or674, %add664
  %not676 = xor i32 %add653, -1
  %or677 = or i32 %add675, %not676
  %xor678 = xor i32 %or677, %add664
  %add680 = add i32 %add16.6, -1560198380
  %add681 = add i32 %add680, %add642
  %add682 = add i32 %add681, %xor678
  %or685 = tail call i32 @llvm.fshl.i32(i32 %add682, i32 %add682, i32 15), !BLADE-T !10
  %add686 = add i32 %or685, %add675
  %not687 = xor i32 %add664, -1
  %or688 = or i32 %add686, %not687
  %xor689 = xor i32 %or688, %add675
  %add691 = add i32 %add16.13, 1309151649
  %add692 = add i32 %add691, %add653
  %add693 = add i32 %add692, %xor689
  %or696 = tail call i32 @llvm.fshl.i32(i32 %add693, i32 %add693, i32 21), !BLADE-T !10
  %add697 = add i32 %or696, %add686
  %not698 = xor i32 %add675, -1
  %or699 = or i32 %add697, %not698
  %xor700 = xor i32 %or699, %add686
  %add702 = add i32 %add16.4, -145523070
  %add703 = add i32 %add702, %add664
  %add704 = add i32 %add703, %xor700
  %or707 = tail call i32 @llvm.fshl.i32(i32 %add704, i32 %add704, i32 6), !BLADE-T !10
  %add708 = add i32 %or707, %add697
  %not709 = xor i32 %add686, -1
  %or710 = or i32 %add708, %not709
  %xor711 = xor i32 %or710, %add697
  %add713 = add i32 %add16.11, -1120210379
  %add714 = add i32 %add713, %add675
  %add715 = add i32 %add714, %xor711
  %or718 = tail call i32 @llvm.fshl.i32(i32 %add715, i32 %add715, i32 10), !BLADE-T !10
  %add719 = add i32 %or718, %add708
  %not720 = xor i32 %add697, -1
  %or721 = or i32 %add719, %not720
  %xor722 = xor i32 %or721, %add708
  %add724 = add i32 %add16.2, 718787259
  %add725 = add i32 %add724, %add686
  %add726 = add i32 %add725, %xor722
  %or729 = tail call i32 @llvm.fshl.i32(i32 %add726, i32 %add726, i32 15), !BLADE-T !10
  %add730 = add i32 %or729, %add719
  %not731 = xor i32 %add708, -1
  %or732 = or i32 %add730, %not731
  %xor733 = xor i32 %or732, %add719
  %add735 = add i32 %add16.9, -343485551
  %add736 = add i32 %add735, %add697
  %add737 = add i32 %add736, %xor733
  %or740 = tail call i32 @llvm.fshl.i32(i32 %add737, i32 %add737, i32 21), !BLADE-T !10
  %add744 = add i32 %add708, %64
  store i32 %add744, ptr %state, align 8, !tbaa !12
  %add741 = add i32 %add730, %65
  %add747 = add i32 %add741, %or740
  store i32 %add747, ptr %arrayidx22, align 4, !tbaa !12
  %add750 = add i32 %add730, %66
  store i32 %add750, ptr %arrayidx24, align 8, !tbaa !12
  %add753 = add i32 %add719, %67
  store i32 %add753, ptr %arrayidx26, align 4, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @md5_init(ptr nocapture noundef writeonly %ctx) local_unnamed_addr #2 {
entry:
  %datalen = getelementptr inbounds %struct.MD5_CTX, ptr %ctx, i64 0, i32 1
  store i32 0, ptr %datalen, align 8, !tbaa !14
  %bitlen = getelementptr inbounds %struct.MD5_CTX, ptr %ctx, i64 0, i32 2
  store i64 0, ptr %bitlen, align 8, !tbaa !17
  %state = getelementptr inbounds %struct.MD5_CTX, ptr %ctx, i64 0, i32 3
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %state, align 8, !tbaa !12
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @md5_update(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %data, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp18.not = icmp eq i64 %len, 0
  br i1 %cmp18.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %datalen = getelementptr inbounds %struct.MD5_CTX, ptr %ctx, i64 0, i32 1
  %bitlen = getelementptr inbounds %struct.MD5_CTX, ptr %ctx, i64 0, i32 2
  %.pre = load i32, ptr %datalen, align 8, !tbaa !14
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %0 = phi i32 [ %.pre, %for.body.lr.ph ], [ %4, %for.inc ]
  %i.019 = phi i64 [ 0, %for.body.lr.ph ], [ %inc8, %for.inc ]
  %arrayidx = getelementptr inbounds i8, ptr %data, i64 %i.019
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !7
  %idxprom = zext i32 %0 to i64
  %arrayidx2 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom
  store i8 %1, ptr %arrayidx2, align 1, !tbaa !7
  %2 = load i32, ptr %datalen, align 8, !tbaa !14
  %inc = add i32 %2, 1
  store i32 %inc, ptr %datalen, align 8, !tbaa !14
  %cmp5 = icmp eq i32 %inc, 64
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  tail call void @md5_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %3 = load i64, ptr %bitlen, align 8, !tbaa !17
  %add = add i64 %3, 512
  store i64 %add, ptr %bitlen, align 8, !tbaa !17
  store i32 0, ptr %datalen, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %4 = phi i32 [ %inc, %for.body ], [ 0, %if.then ]
  %inc8 = add nuw i64 %i.019, 1
  %exitcond.not = icmp eq i64 %inc8, %len
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !18

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @md5_final(ptr nocapture noundef %ctx, ptr nocapture noundef writeonly %hash) local_unnamed_addr #0 {
entry:
  %datalen = getelementptr inbounds %struct.MD5_CTX, ptr %ctx, i64 0, i32 1
  %0 = load i32, ptr %datalen, align 8, !tbaa !14
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i32 %0, 56
  %arrayidx = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %conv
  store i8 -128, ptr %arrayidx, align 1, !tbaa !7
  br i1 %cmp, label %if.then, label %if.then11

if.then:                                          ; preds = %entry
  %cmp3159.not = icmp eq i32 %0, 55
  br i1 %cmp3159.not, label %if.end26, label %while.body.preheader

while.body.preheader:                             ; preds = %if.then
  %i.0158 = add nuw nsw i64 %conv, 1
  %uglygep162 = getelementptr i8, ptr %ctx, i64 %i.0158
  %1 = sub nsw i64 55, %conv
  tail call void @llvm.memset.p0.i64(ptr align 1 %uglygep162, i8 0, i64 %1, i1 false), !tbaa !7
  br label %if.end26

if.then11:                                        ; preds = %entry
  %cmp16156 = icmp ult i32 %0, 63
  br i1 %cmp16156, label %while.body18.preheader, label %while.end22

while.body18.preheader:                           ; preds = %if.then11
  %i.1155 = add nuw nsw i64 %conv, 1
  %uglygep = getelementptr i8, ptr %ctx, i64 %i.1155
  %2 = sub nsw i64 63, %conv
  tail call void @llvm.memset.p0.i64(ptr align 1 %uglygep, i8 0, i64 %2, i1 false), !tbaa !7
  br label %while.end22

while.end22:                                      ; preds = %while.body18.preheader, %if.then11
  tail call void @md5_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %ctx, i8 0, i64 56, i1 false)
  br label %if.end26

if.end26:                                         ; preds = %while.end22, %while.body.preheader, %if.then
  %3 = load i32, ptr %datalen, align 8, !tbaa !14
  %mul = shl i32 %3, 3
  %conv28 = zext i32 %mul to i64
  %bitlen = getelementptr inbounds %struct.MD5_CTX, ptr %ctx, i64 0, i32 2
  %4 = load i64, ptr %bitlen, align 8, !tbaa !17
  %add = add i64 %4, %conv28
  store i64 %add, ptr %bitlen, align 8, !tbaa !17
  %conv30 = trunc i64 %add to i8
  %arrayidx32 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 56
  store i8 %conv30, ptr %arrayidx32, align 8, !tbaa !7
  %shr = lshr i64 %add, 8
  %conv34 = trunc i64 %shr to i8
  %arrayidx36 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 57
  store i8 %conv34, ptr %arrayidx36, align 1, !tbaa !7
  %shr38 = lshr i64 %add, 16
  %conv39 = trunc i64 %shr38 to i8
  %arrayidx41 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 58
  store i8 %conv39, ptr %arrayidx41, align 2, !tbaa !7
  %shr43 = lshr i64 %add, 24
  %conv44 = trunc i64 %shr43 to i8
  %arrayidx46 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 59
  store i8 %conv44, ptr %arrayidx46, align 1, !tbaa !7
  %shr48 = lshr i64 %add, 32
  %conv49 = trunc i64 %shr48 to i8
  %arrayidx51 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 60
  store i8 %conv49, ptr %arrayidx51, align 4, !tbaa !7
  %shr53 = lshr i64 %add, 40
  %conv54 = trunc i64 %shr53 to i8
  %arrayidx56 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 61
  store i8 %conv54, ptr %arrayidx56, align 1, !tbaa !7
  %shr58 = lshr i64 %add, 48
  %conv59 = trunc i64 %shr58 to i8
  %arrayidx61 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 62
  store i8 %conv59, ptr %arrayidx61, align 2, !tbaa !7
  %shr63 = lshr i64 %add, 56
  %conv64 = trunc i64 %shr63 to i8
  %arrayidx66 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 63
  store i8 %conv64, ptr %arrayidx66, align 1, !tbaa !7
  tail call void @md5_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %state = getelementptr inbounds %struct.MD5_CTX, ptr %ctx, i64 0, i32 3
  %arrayidx77 = getelementptr inbounds %struct.MD5_CTX, ptr %ctx, i64 0, i32 3, i64 1
  %arrayidx86 = getelementptr inbounds %struct.MD5_CTX, ptr %ctx, i64 0, i32 3, i64 2
  %arrayidx95 = getelementptr inbounds %struct.MD5_CTX, ptr %ctx, i64 0, i32 3, i64 3
  %5 = load i32, ptr %state, align 8, !tbaa !12
  %conv74 = trunc i32 %5 to i8
  store i8 %conv74, ptr %hash, align 1, !tbaa !7
  %6 = load i32, ptr %arrayidx77, align 4, !tbaa !12
  %conv82 = trunc i32 %6 to i8
  %arrayidx84 = getelementptr inbounds i8, ptr %hash, i64 4
  store i8 %conv82, ptr %arrayidx84, align 1, !tbaa !7
  %7 = load i32, ptr %arrayidx86, align 8, !tbaa !12
  %conv91 = trunc i32 %7 to i8
  %arrayidx93 = getelementptr inbounds i8, ptr %hash, i64 8
  store i8 %conv91, ptr %arrayidx93, align 1, !tbaa !7
  %8 = load i32, ptr %arrayidx95, align 4, !tbaa !12
  %conv100 = trunc i32 %8 to i8
  %arrayidx102 = getelementptr inbounds i8, ptr %hash, i64 12
  store i8 %conv100, ptr %arrayidx102, align 1, !tbaa !7
  %9 = load i32, ptr %state, align 8, !tbaa !12
  %shr73.1 = lshr i32 %9, 8
  %conv74.1 = trunc i32 %shr73.1 to i8
  %arrayidx75.1 = getelementptr inbounds i8, ptr %hash, i64 1
  store i8 %conv74.1, ptr %arrayidx75.1, align 1, !tbaa !7
  %10 = load i32, ptr %arrayidx77, align 4, !tbaa !12
  %shr80.1 = lshr i32 %10, 8
  %conv82.1 = trunc i32 %shr80.1 to i8
  %arrayidx84.1 = getelementptr inbounds i8, ptr %hash, i64 5
  store i8 %conv82.1, ptr %arrayidx84.1, align 1, !tbaa !7
  %11 = load i32, ptr %arrayidx86, align 8, !tbaa !12
  %shr89.1 = lshr i32 %11, 8
  %conv91.1 = trunc i32 %shr89.1 to i8
  %arrayidx93.1 = getelementptr inbounds i8, ptr %hash, i64 9
  store i8 %conv91.1, ptr %arrayidx93.1, align 1, !tbaa !7
  %12 = load i32, ptr %arrayidx95, align 4, !tbaa !12
  %shr98.1 = lshr i32 %12, 8
  %conv100.1 = trunc i32 %shr98.1 to i8
  %arrayidx102.1 = getelementptr inbounds i8, ptr %hash, i64 13
  store i8 %conv100.1, ptr %arrayidx102.1, align 1, !tbaa !7
  %13 = load i32, ptr %state, align 8, !tbaa !12
  %shr73.2 = lshr i32 %13, 16
  %conv74.2 = trunc i32 %shr73.2 to i8
  %arrayidx75.2 = getelementptr inbounds i8, ptr %hash, i64 2
  store i8 %conv74.2, ptr %arrayidx75.2, align 1, !tbaa !7
  %14 = load i32, ptr %arrayidx77, align 4, !tbaa !12
  %shr80.2 = lshr i32 %14, 16
  %conv82.2 = trunc i32 %shr80.2 to i8
  %arrayidx84.2 = getelementptr inbounds i8, ptr %hash, i64 6
  store i8 %conv82.2, ptr %arrayidx84.2, align 1, !tbaa !7
  %15 = load i32, ptr %arrayidx86, align 8, !tbaa !12
  %shr89.2 = lshr i32 %15, 16
  %conv91.2 = trunc i32 %shr89.2 to i8
  %arrayidx93.2 = getelementptr inbounds i8, ptr %hash, i64 10
  store i8 %conv91.2, ptr %arrayidx93.2, align 1, !tbaa !7
  %16 = load i32, ptr %arrayidx95, align 4, !tbaa !12
  %shr98.2 = lshr i32 %16, 16
  %conv100.2 = trunc i32 %shr98.2 to i8
  %arrayidx102.2 = getelementptr inbounds i8, ptr %hash, i64 14
  store i8 %conv100.2, ptr %arrayidx102.2, align 1, !tbaa !7
  %17 = load i32, ptr %state, align 8, !tbaa !12
  %shr73.3 = lshr i32 %17, 24
  %conv74.3 = trunc i32 %shr73.3 to i8
  %arrayidx75.3 = getelementptr inbounds i8, ptr %hash, i64 3
  store i8 %conv74.3, ptr %arrayidx75.3, align 1, !tbaa !7
  %18 = load i32, ptr %arrayidx77, align 4, !tbaa !12
  %shr80.3 = lshr i32 %18, 24
  %conv82.3 = trunc i32 %shr80.3 to i8
  %arrayidx84.3 = getelementptr inbounds i8, ptr %hash, i64 7
  store i8 %conv82.3, ptr %arrayidx84.3, align 1, !tbaa !7
  %19 = load i32, ptr %arrayidx86, align 8, !tbaa !12
  %shr89.3 = lshr i32 %19, 24
  %conv91.3 = trunc i32 %shr89.3 to i8
  %arrayidx93.3 = getelementptr inbounds i8, ptr %hash, i64 11
  store i8 %conv91.3, ptr %arrayidx93.3, align 1, !tbaa !7
  %20 = load i32, ptr %arrayidx95, align 4, !tbaa !12
  %shr98.3 = lshr i32 %20, 24
  %conv100.3 = trunc i32 %shr98.3 to i8
  %arrayidx102.3 = getelementptr inbounds i8, ptr %hash, i64 15
  store i8 %conv100.3, ptr %arrayidx102.3, align 1, !tbaa !7
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @md5_test() local_unnamed_addr #4 {
entry:
  %text1 = alloca [1 x i8], align 1
  %text2 = alloca [4 x i8], align 4
  %buf = alloca [16 x i8], align 16
  %ctx = alloca %struct.MD5_CTX, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %text1) #10
  store i8 0, ptr %text1, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %text2) #10
  store i32 6513249, ptr %text2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #10
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %ctx) #10
  %datalen.i = getelementptr inbounds %struct.MD5_CTX, ptr %ctx, i64 0, i32 1
  store i32 0, ptr %datalen.i, align 8, !tbaa !14
  %bitlen.i = getelementptr inbounds %struct.MD5_CTX, ptr %ctx, i64 0, i32 2
  store i64 0, ptr %bitlen.i, align 8, !tbaa !17
  %state.i = getelementptr inbounds %struct.MD5_CTX, ptr %ctx, i64 0, i32 3
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %state.i, align 8, !tbaa !12
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %text1) #11
  %cmp18.not.i = icmp eq i64 %call, 0
  br i1 %cmp18.not.i, label %md5_update.exit, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %entry
  %0 = phi i32 [ %3, %for.inc.i ], [ 0, %entry ]
  %i.019.i = phi i64 [ %inc8.i, %for.inc.i ], [ 0, %entry ]
  %idxprom.i = zext i32 %0 to i64
  %arrayidx2.i43 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom.i
  store i8 0, ptr %arrayidx2.i43, align 1, !tbaa !7
  %1 = load i32, ptr %datalen.i, align 8, !tbaa !14
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr %datalen.i, align 8, !tbaa !14
  %cmp5.i = icmp eq i32 %inc.i, 64
  br i1 %cmp5.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @md5_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %2 = load i64, ptr %bitlen.i, align 8, !tbaa !17
  %add.i = add i64 %2, 512
  store i64 %add.i, ptr %bitlen.i, align 8, !tbaa !17
  store i32 0, ptr %datalen.i, align 8, !tbaa !14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %3 = phi i32 [ %inc.i, %for.body.i ], [ 0, %if.then.i ]
  %inc8.i = add nuw i64 %i.019.i, 1
  %exitcond.not.i = icmp eq i64 %inc8.i, %call
  br i1 %exitcond.not.i, label %md5_update.exit, label %for.body.i, !llvm.loop !18

md5_update.exit:                                  ; preds = %for.inc.i, %entry
  call void @md5_final(ptr noundef nonnull %ctx, ptr noundef nonnull %buf)
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @__const.md5_test.hash1, ptr noundef nonnull dereferenceable(16) %buf, i64 16)
  %tobool6.not = icmp eq i32 %bcmp, 0
  store i32 0, ptr %datalen.i, align 8, !tbaa !14
  store i64 0, ptr %bitlen.i, align 8, !tbaa !17
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %state.i, align 8, !tbaa !12
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %text2) #11
  %cmp18.not.i50 = icmp eq i64 %call9, 0
  br i1 %cmp18.not.i50, label %md5_update.exit67, label %for.body.i61

for.body.i61:                                     ; preds = %for.inc.i66, %md5_update.exit
  %4 = phi i32 [ %8, %for.inc.i66 ], [ 0, %md5_update.exit ]
  %i.019.i55 = phi i64 [ %inc8.i64, %for.inc.i66 ], [ 0, %md5_update.exit ]
  %arrayidx.i56 = getelementptr inbounds i8, ptr %text2, i64 %i.019.i55
  %5 = load i8, ptr %arrayidx.i56, align 1, !tbaa !7
  %idxprom.i57 = zext i32 %4 to i64
  %arrayidx2.i58 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom.i57
  store i8 %5, ptr %arrayidx2.i58, align 1, !tbaa !7
  %6 = load i32, ptr %datalen.i, align 8, !tbaa !14
  %inc.i59 = add i32 %6, 1
  store i32 %inc.i59, ptr %datalen.i, align 8, !tbaa !14
  %cmp5.i60 = icmp eq i32 %inc.i59, 64
  br i1 %cmp5.i60, label %if.then.i63, label %for.inc.i66

if.then.i63:                                      ; preds = %for.body.i61
  call void @md5_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %7 = load i64, ptr %bitlen.i, align 8, !tbaa !17
  %add.i62 = add i64 %7, 512
  store i64 %add.i62, ptr %bitlen.i, align 8, !tbaa !17
  store i32 0, ptr %datalen.i, align 8, !tbaa !14
  br label %for.inc.i66

for.inc.i66:                                      ; preds = %if.then.i63, %for.body.i61
  %8 = phi i32 [ %inc.i59, %for.body.i61 ], [ 0, %if.then.i63 ]
  %inc8.i64 = add nuw i64 %i.019.i55, 1
  %exitcond.not.i65 = icmp eq i64 %inc8.i64, %call9
  br i1 %exitcond.not.i65, label %md5_update.exit67, label %for.body.i61, !llvm.loop !18

md5_update.exit67:                                ; preds = %for.inc.i66, %md5_update.exit
  call void @md5_final(ptr noundef nonnull %ctx, ptr noundef nonnull %buf)
  br i1 %tobool6.not, label %land.rhs12, label %land.end34.critedge

land.rhs12:                                       ; preds = %md5_update.exit67
  %bcmp40 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @__const.md5_test.hash2, ptr noundef nonnull dereferenceable(16) %buf, i64 16)
  store i32 0, ptr %datalen.i, align 8, !tbaa !14
  store i64 0, ptr %bitlen.i, align 8, !tbaa !17
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %state.i, align 8, !tbaa !12
  br label %for.body.i85

for.body.i85:                                     ; preds = %for.inc.i90, %land.rhs12
  %9 = phi i32 [ %.pre.i95, %for.inc.i90 ], [ 0, %land.rhs12 ]
  %i.019.i79 = phi i64 [ %inc8.i88, %for.inc.i90 ], [ 0, %land.rhs12 ]
  %arrayidx.i80 = getelementptr inbounds i8, ptr @__const.md5_test.text3_1, i64 %i.019.i79
  %10 = load i8, ptr %arrayidx.i80, align 1, !tbaa !7
  %idxprom.i81 = zext i32 %9 to i64
  %arrayidx2.i82 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom.i81
  store i8 %10, ptr %arrayidx2.i82, align 1, !tbaa !7
  %11 = load i32, ptr %datalen.i, align 8, !tbaa !14
  %inc.i83 = add i32 %11, 1
  store i32 %inc.i83, ptr %datalen.i, align 8, !tbaa !14
  %cmp5.i84 = icmp eq i32 %inc.i83, 64
  br i1 %cmp5.i84, label %if.then.i87, label %for.inc.i90

if.then.i87:                                      ; preds = %for.body.i85
  call void @md5_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %12 = load i64, ptr %bitlen.i, align 8, !tbaa !17
  %add.i86 = add i64 %12, 512
  store i64 %add.i86, ptr %bitlen.i, align 8, !tbaa !17
  store i32 0, ptr %datalen.i, align 8, !tbaa !14
  br label %for.inc.i90

for.inc.i90:                                      ; preds = %if.then.i87, %for.body.i85
  %.pre.i95 = phi i32 [ %inc.i83, %for.body.i85 ], [ 0, %if.then.i87 ]
  %inc8.i88 = add nuw nsw i64 %i.019.i79, 1
  %exitcond.not.i89 = icmp eq i64 %inc8.i88, 31
  br i1 %exitcond.not.i89, label %for.body.i103, label %for.body.i85, !llvm.loop !18

for.body.i103:                                    ; preds = %for.inc.i108, %for.inc.i90
  %13 = phi i32 [ %17, %for.inc.i108 ], [ %.pre.i95, %for.inc.i90 ]
  %i.019.i97 = phi i64 [ %inc8.i106, %for.inc.i108 ], [ 0, %for.inc.i90 ]
  %arrayidx.i98 = getelementptr inbounds i8, ptr @__const.md5_test.text3_2, i64 %i.019.i97
  %14 = load i8, ptr %arrayidx.i98, align 1, !tbaa !7
  %idxprom.i99 = zext i32 %13 to i64
  %arrayidx2.i100 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom.i99
  store i8 %14, ptr %arrayidx2.i100, align 1, !tbaa !7
  %15 = load i32, ptr %datalen.i, align 8, !tbaa !14
  %inc.i101 = add i32 %15, 1
  store i32 %inc.i101, ptr %datalen.i, align 8, !tbaa !14
  %cmp5.i102 = icmp eq i32 %inc.i101, 64
  br i1 %cmp5.i102, label %if.then.i105, label %for.inc.i108

if.then.i105:                                     ; preds = %for.body.i103
  call void @md5_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %16 = load i64, ptr %bitlen.i, align 8, !tbaa !17
  %add.i104 = add i64 %16, 512
  store i64 %add.i104, ptr %bitlen.i, align 8, !tbaa !17
  store i32 0, ptr %datalen.i, align 8, !tbaa !14
  br label %for.inc.i108

for.inc.i108:                                     ; preds = %if.then.i105, %for.body.i103
  %17 = phi i32 [ %inc.i101, %for.body.i103 ], [ 0, %if.then.i105 ]
  %inc8.i106 = add nuw nsw i64 %i.019.i97, 1
  %exitcond.not.i107 = icmp eq i64 %inc8.i106, 31
  br i1 %exitcond.not.i107, label %md5_update.exit109, label %for.body.i103, !llvm.loop !18

md5_update.exit109:                               ; preds = %for.inc.i108
  %tobool16.not = icmp eq i32 %bcmp40, 0
  call void @md5_final(ptr noundef nonnull %ctx, ptr noundef nonnull %buf)
  br i1 %tobool16.not, label %land.rhs28, label %land.end34

land.rhs28:                                       ; preds = %md5_update.exit109
  %bcmp39 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @__const.md5_test.hash3, ptr noundef nonnull dereferenceable(16) %buf, i64 16)
  %tobool32.not = icmp eq i32 %bcmp39, 0
  %18 = zext i1 %tobool32.not to i32
  br label %land.end34

land.end34.critedge:                              ; preds = %md5_update.exit67
  store i32 0, ptr %datalen.i, align 8, !tbaa !14
  store i64 0, ptr %bitlen.i, align 8, !tbaa !17
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %state.i, align 8, !tbaa !12
  br label %for.body.i127

for.body.i127:                                    ; preds = %for.inc.i132, %land.end34.critedge
  %19 = phi i32 [ %.pre.i137, %for.inc.i132 ], [ 0, %land.end34.critedge ]
  %i.019.i121 = phi i64 [ %inc8.i130, %for.inc.i132 ], [ 0, %land.end34.critedge ]
  %arrayidx.i122 = getelementptr inbounds i8, ptr @__const.md5_test.text3_1, i64 %i.019.i121
  %20 = load i8, ptr %arrayidx.i122, align 1, !tbaa !7
  %idxprom.i123 = zext i32 %19 to i64
  %arrayidx2.i124 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom.i123
  store i8 %20, ptr %arrayidx2.i124, align 1, !tbaa !7
  %21 = load i32, ptr %datalen.i, align 8, !tbaa !14
  %inc.i125 = add i32 %21, 1
  store i32 %inc.i125, ptr %datalen.i, align 8, !tbaa !14
  %cmp5.i126 = icmp eq i32 %inc.i125, 64
  br i1 %cmp5.i126, label %if.then.i129, label %for.inc.i132

if.then.i129:                                     ; preds = %for.body.i127
  call void @md5_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %22 = load i64, ptr %bitlen.i, align 8, !tbaa !17
  %add.i128 = add i64 %22, 512
  store i64 %add.i128, ptr %bitlen.i, align 8, !tbaa !17
  store i32 0, ptr %datalen.i, align 8, !tbaa !14
  br label %for.inc.i132

for.inc.i132:                                     ; preds = %if.then.i129, %for.body.i127
  %.pre.i137 = phi i32 [ %inc.i125, %for.body.i127 ], [ 0, %if.then.i129 ]
  %inc8.i130 = add nuw nsw i64 %i.019.i121, 1
  %exitcond.not.i131 = icmp eq i64 %inc8.i130, 31
  br i1 %exitcond.not.i131, label %for.body.i145, label %for.body.i127, !llvm.loop !18

for.body.i145:                                    ; preds = %for.inc.i150, %for.inc.i132
  %23 = phi i32 [ %27, %for.inc.i150 ], [ %.pre.i137, %for.inc.i132 ]
  %i.019.i139 = phi i64 [ %inc8.i148, %for.inc.i150 ], [ 0, %for.inc.i132 ]
  %arrayidx.i140 = getelementptr inbounds i8, ptr @__const.md5_test.text3_2, i64 %i.019.i139
  %24 = load i8, ptr %arrayidx.i140, align 1, !tbaa !7
  %idxprom.i141 = zext i32 %23 to i64
  %arrayidx2.i142 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom.i141
  store i8 %24, ptr %arrayidx2.i142, align 1, !tbaa !7
  %25 = load i32, ptr %datalen.i, align 8, !tbaa !14
  %inc.i143 = add i32 %25, 1
  store i32 %inc.i143, ptr %datalen.i, align 8, !tbaa !14
  %cmp5.i144 = icmp eq i32 %inc.i143, 64
  br i1 %cmp5.i144, label %if.then.i147, label %for.inc.i150

if.then.i147:                                     ; preds = %for.body.i145
  call void @md5_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %26 = load i64, ptr %bitlen.i, align 8, !tbaa !17
  %add.i146 = add i64 %26, 512
  store i64 %add.i146, ptr %bitlen.i, align 8, !tbaa !17
  store i32 0, ptr %datalen.i, align 8, !tbaa !14
  br label %for.inc.i150

for.inc.i150:                                     ; preds = %if.then.i147, %for.body.i145
  %27 = phi i32 [ %inc.i143, %for.body.i145 ], [ 0, %if.then.i147 ]
  %inc8.i148 = add nuw nsw i64 %i.019.i139, 1
  %exitcond.not.i149 = icmp eq i64 %inc8.i148, 31
  br i1 %exitcond.not.i149, label %md5_update.exit151, label %for.body.i145, !llvm.loop !18

md5_update.exit151:                               ; preds = %for.inc.i150
  call void @md5_final(ptr noundef nonnull %ctx, ptr noundef nonnull %buf)
  br label %land.end34

land.end34:                                       ; preds = %md5_update.exit151, %land.rhs28, %md5_update.exit109
  %land.ext35 = phi i32 [ 0, %md5_update.exit109 ], [ %18, %land.rhs28 ], [ 0, %md5_update.exit151 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %ctx) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %text2) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %text1) #10
  ret i32 %land.ext35
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #6 {
entry:
  %call = tail call i32 @md5_test()
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, ptr @.str.2, ptr @.str.1
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  ret i32 0

for.body:                                         ; preds = %for.body, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %cond)
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 1000000
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !20
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.x86.sse2.lfence() #10

attributes #0 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!15, !13, i64 64}
!15 = !{!"", !8, i64 0, !13, i64 64, !16, i64 72, !8, i64 80}
!16 = !{!"long long", !8, i64 0}
!17 = !{!15, !16, i64 72}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
