; ModuleID = 'sha1_3.ll'
source_filename = "sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA1_CTX = type { [64 x i8], i32, i64, [5 x i32], [4 x i32] }

@__const.sha1_test.text2 = private unnamed_addr constant [57 x i8] c"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq\00", align 16
@__const.sha1_test.hash1 = private unnamed_addr constant [20 x i8] c"\A9\99>6G\06\81j\BA>%qxP\C2l\9C\D0\D8\9D", align 16
@__const.sha1_test.hash2 = private unnamed_addr constant [20 x i8] c"\84\98>D\1C;\D2n\BA\AEJ\A1\F9Q)\E5\E5Fp\F1", align 16
@__const.sha1_test.hash3 = private unnamed_addr constant [20 x i8] c"4\AA\97<\D4\C4\DA\A4\F6\1E\EB+\DB\AD'1e4\01o", align 16
@.str = private unnamed_addr constant [16 x i8] c"SHA1 tests: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SUCCEEDED\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha1_transform(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %data) local_unnamed_addr #0 {
for.body23.preheader:
  call void @llvm.x86.sse2.lfence()
  %m = alloca [80 x i32], align 16, !BLADE-S !7
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %m) #10, !BLADE-T !8
  %0 = load i8, ptr %data, align 1, !tbaa !9, !BLADE-T !8
  %conv = zext i8 %0 to i32
  %shl = shl nuw i32 %conv, 24
  call void @llvm.x86.sse2.lfence()
  %arrayidx2 = getelementptr inbounds i8, ptr %data, i64 1, !BLADE-S !7, !BLADE-T !8
  %1 = load i8, ptr %arrayidx2, align 1, !tbaa !9, !BLADE-T !8
  %conv3 = zext i8 %1 to i32
  %shl4 = shl nuw nsw i32 %conv3, 16
  %add5 = or i32 %shl4, %shl
  call void @llvm.x86.sse2.lfence()
  %arrayidx8 = getelementptr inbounds i8, ptr %data, i64 2, !BLADE-S !7, !BLADE-T !8
  %2 = load i8, ptr %arrayidx8, align 1, !tbaa !9, !BLADE-T !8
  %conv9 = zext i8 %2 to i32
  %shl10 = shl nuw nsw i32 %conv9, 8
  %add11 = or i32 %add5, %shl10
  call void @llvm.x86.sse2.lfence()
  %arrayidx14 = getelementptr inbounds i8, ptr %data, i64 3, !BLADE-S !7, !BLADE-T !8
  %3 = load i8, ptr %arrayidx14, align 1, !tbaa !9, !BLADE-T !8
  %conv15 = zext i8 %3 to i32
  %add16 = or i32 %add11, %conv15
  store i32 %add16, ptr %m, align 16, !tbaa !12
  call void @llvm.x86.sse2.lfence()
  %arrayidx.1 = getelementptr inbounds i8, ptr %data, i64 4, !BLADE-S !7, !BLADE-T !8
  %4 = load i8, ptr %arrayidx.1, align 1, !tbaa !9, !BLADE-T !8
  %conv.1 = zext i8 %4 to i32
  %shl.1 = shl nuw i32 %conv.1, 24
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.1 = getelementptr inbounds i8, ptr %data, i64 5, !BLADE-S !7, !BLADE-T !8
  %5 = load i8, ptr %arrayidx2.1, align 1, !tbaa !9, !BLADE-T !8
  %conv3.1 = zext i8 %5 to i32
  %shl4.1 = shl nuw nsw i32 %conv3.1, 16
  %add5.1 = or i32 %shl4.1, %shl.1
  call void @llvm.x86.sse2.lfence()
  %arrayidx8.1 = getelementptr inbounds i8, ptr %data, i64 6, !BLADE-S !7, !BLADE-T !8
  %6 = load i8, ptr %arrayidx8.1, align 1, !tbaa !9, !BLADE-T !8
  %conv9.1 = zext i8 %6 to i32
  %shl10.1 = shl nuw nsw i32 %conv9.1, 8
  %add11.1 = or i32 %add5.1, %shl10.1
  call void @llvm.x86.sse2.lfence()
  %arrayidx14.1 = getelementptr inbounds i8, ptr %data, i64 7, !BLADE-S !7, !BLADE-T !8
  %7 = load i8, ptr %arrayidx14.1, align 1, !tbaa !9, !BLADE-T !8
  %conv15.1 = zext i8 %7 to i32
  %add16.1 = or i32 %add11.1, %conv15.1
  call void @llvm.x86.sse2.lfence()
  %arrayidx18.1 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 1, !BLADE-S !7
  store i32 %add16.1, ptr %arrayidx18.1, align 4, !tbaa !12
  call void @llvm.x86.sse2.lfence()
  %arrayidx.2 = getelementptr inbounds i8, ptr %data, i64 8, !BLADE-S !7, !BLADE-T !8
  %8 = load i8, ptr %arrayidx.2, align 1, !tbaa !9, !BLADE-T !8
  %conv.2 = zext i8 %8 to i32
  %shl.2 = shl nuw i32 %conv.2, 24
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.2 = getelementptr inbounds i8, ptr %data, i64 9, !BLADE-S !7, !BLADE-T !8
  %9 = load i8, ptr %arrayidx2.2, align 1, !tbaa !9, !BLADE-T !8
  %conv3.2 = zext i8 %9 to i32
  %shl4.2 = shl nuw nsw i32 %conv3.2, 16
  %add5.2 = or i32 %shl4.2, %shl.2
  call void @llvm.x86.sse2.lfence()
  %arrayidx8.2 = getelementptr inbounds i8, ptr %data, i64 10, !BLADE-S !7, !BLADE-T !8
  %10 = load i8, ptr %arrayidx8.2, align 1, !tbaa !9, !BLADE-T !8
  %conv9.2 = zext i8 %10 to i32
  %shl10.2 = shl nuw nsw i32 %conv9.2, 8
  %add11.2 = or i32 %add5.2, %shl10.2
  call void @llvm.x86.sse2.lfence()
  %arrayidx14.2 = getelementptr inbounds i8, ptr %data, i64 11, !BLADE-S !7, !BLADE-T !8
  %11 = load i8, ptr %arrayidx14.2, align 1, !tbaa !9, !BLADE-T !8
  %conv15.2 = zext i8 %11 to i32
  %add16.2 = or i32 %add11.2, %conv15.2
  call void @llvm.x86.sse2.lfence()
  %arrayidx18.2 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 2, !BLADE-S !7
  store i32 %add16.2, ptr %arrayidx18.2, align 8, !tbaa !12
  call void @llvm.x86.sse2.lfence()
  %arrayidx.3 = getelementptr inbounds i8, ptr %data, i64 12, !BLADE-S !7, !BLADE-T !8
  %12 = load i8, ptr %arrayidx.3, align 1, !tbaa !9, !BLADE-T !8
  %conv.3 = zext i8 %12 to i32
  %shl.3 = shl nuw i32 %conv.3, 24
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.3 = getelementptr inbounds i8, ptr %data, i64 13, !BLADE-S !7, !BLADE-T !8
  %13 = load i8, ptr %arrayidx2.3, align 1, !tbaa !9, !BLADE-T !8
  %conv3.3 = zext i8 %13 to i32
  %shl4.3 = shl nuw nsw i32 %conv3.3, 16
  %add5.3 = or i32 %shl4.3, %shl.3
  call void @llvm.x86.sse2.lfence()
  %arrayidx8.3 = getelementptr inbounds i8, ptr %data, i64 14, !BLADE-S !7, !BLADE-T !8
  %14 = load i8, ptr %arrayidx8.3, align 1, !tbaa !9, !BLADE-T !8
  %conv9.3 = zext i8 %14 to i32
  %shl10.3 = shl nuw nsw i32 %conv9.3, 8
  %add11.3 = or i32 %add5.3, %shl10.3
  call void @llvm.x86.sse2.lfence()
  %arrayidx14.3 = getelementptr inbounds i8, ptr %data, i64 15, !BLADE-S !7, !BLADE-T !8
  %15 = load i8, ptr %arrayidx14.3, align 1, !tbaa !9, !BLADE-T !8
  %conv15.3 = zext i8 %15 to i32
  %add16.3 = or i32 %add11.3, %conv15.3
  call void @llvm.x86.sse2.lfence()
  %arrayidx18.3 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 3, !BLADE-S !7
  store i32 %add16.3, ptr %arrayidx18.3, align 4, !tbaa !12
  call void @llvm.x86.sse2.lfence()
  %arrayidx.4 = getelementptr inbounds i8, ptr %data, i64 16, !BLADE-S !7, !BLADE-T !8
  %16 = load i8, ptr %arrayidx.4, align 1, !tbaa !9, !BLADE-T !8
  %conv.4 = zext i8 %16 to i32
  %shl.4 = shl nuw i32 %conv.4, 24
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.4 = getelementptr inbounds i8, ptr %data, i64 17, !BLADE-S !7, !BLADE-T !8
  %17 = load i8, ptr %arrayidx2.4, align 1, !tbaa !9, !BLADE-T !8
  %conv3.4 = zext i8 %17 to i32
  %shl4.4 = shl nuw nsw i32 %conv3.4, 16
  %add5.4 = or i32 %shl4.4, %shl.4
  call void @llvm.x86.sse2.lfence()
  %arrayidx8.4 = getelementptr inbounds i8, ptr %data, i64 18, !BLADE-S !7, !BLADE-T !8
  %18 = load i8, ptr %arrayidx8.4, align 1, !tbaa !9, !BLADE-T !8
  %conv9.4 = zext i8 %18 to i32
  %shl10.4 = shl nuw nsw i32 %conv9.4, 8
  %add11.4 = or i32 %add5.4, %shl10.4
  call void @llvm.x86.sse2.lfence()
  %arrayidx14.4 = getelementptr inbounds i8, ptr %data, i64 19, !BLADE-S !7, !BLADE-T !8
  %19 = load i8, ptr %arrayidx14.4, align 1, !tbaa !9, !BLADE-T !8
  %conv15.4 = zext i8 %19 to i32
  %add16.4 = or i32 %add11.4, %conv15.4
  call void @llvm.x86.sse2.lfence()
  %arrayidx18.4 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 4, !BLADE-S !7
  store i32 %add16.4, ptr %arrayidx18.4, align 16, !tbaa !12
  call void @llvm.x86.sse2.lfence()
  %arrayidx.5 = getelementptr inbounds i8, ptr %data, i64 20, !BLADE-S !7, !BLADE-T !8
  %20 = load i8, ptr %arrayidx.5, align 1, !tbaa !9, !BLADE-T !8
  %conv.5 = zext i8 %20 to i32
  %shl.5 = shl nuw i32 %conv.5, 24
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.5 = getelementptr inbounds i8, ptr %data, i64 21, !BLADE-S !7, !BLADE-T !8
  %21 = load i8, ptr %arrayidx2.5, align 1, !tbaa !9, !BLADE-T !8
  %conv3.5 = zext i8 %21 to i32
  %shl4.5 = shl nuw nsw i32 %conv3.5, 16
  %add5.5 = or i32 %shl4.5, %shl.5
  call void @llvm.x86.sse2.lfence()
  %arrayidx8.5 = getelementptr inbounds i8, ptr %data, i64 22, !BLADE-S !7, !BLADE-T !8
  %22 = load i8, ptr %arrayidx8.5, align 1, !tbaa !9, !BLADE-T !8
  %conv9.5 = zext i8 %22 to i32
  %shl10.5 = shl nuw nsw i32 %conv9.5, 8
  %add11.5 = or i32 %add5.5, %shl10.5
  call void @llvm.x86.sse2.lfence()
  %arrayidx14.5 = getelementptr inbounds i8, ptr %data, i64 23, !BLADE-S !7, !BLADE-T !8
  %23 = load i8, ptr %arrayidx14.5, align 1, !tbaa !9, !BLADE-T !8
  %conv15.5 = zext i8 %23 to i32
  %add16.5 = or i32 %add11.5, %conv15.5
  call void @llvm.x86.sse2.lfence()
  %arrayidx18.5 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 5, !BLADE-S !7
  store i32 %add16.5, ptr %arrayidx18.5, align 4, !tbaa !12
  call void @llvm.x86.sse2.lfence()
  %arrayidx.6 = getelementptr inbounds i8, ptr %data, i64 24, !BLADE-S !7, !BLADE-T !8
  %24 = load i8, ptr %arrayidx.6, align 1, !tbaa !9, !BLADE-T !8
  %conv.6 = zext i8 %24 to i32
  %shl.6 = shl nuw i32 %conv.6, 24
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.6 = getelementptr inbounds i8, ptr %data, i64 25, !BLADE-S !7, !BLADE-T !8
  %25 = load i8, ptr %arrayidx2.6, align 1, !tbaa !9, !BLADE-T !8
  %conv3.6 = zext i8 %25 to i32
  %shl4.6 = shl nuw nsw i32 %conv3.6, 16
  %add5.6 = or i32 %shl4.6, %shl.6
  call void @llvm.x86.sse2.lfence()
  %arrayidx8.6 = getelementptr inbounds i8, ptr %data, i64 26, !BLADE-S !7, !BLADE-T !8
  %26 = load i8, ptr %arrayidx8.6, align 1, !tbaa !9, !BLADE-T !8
  %conv9.6 = zext i8 %26 to i32
  %shl10.6 = shl nuw nsw i32 %conv9.6, 8
  %add11.6 = or i32 %add5.6, %shl10.6
  call void @llvm.x86.sse2.lfence()
  %arrayidx14.6 = getelementptr inbounds i8, ptr %data, i64 27, !BLADE-S !7, !BLADE-T !8
  %27 = load i8, ptr %arrayidx14.6, align 1, !tbaa !9, !BLADE-T !8
  %conv15.6 = zext i8 %27 to i32
  %add16.6 = or i32 %add11.6, %conv15.6
  call void @llvm.x86.sse2.lfence()
  %arrayidx18.6 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 6, !BLADE-S !7
  store i32 %add16.6, ptr %arrayidx18.6, align 8, !tbaa !12
  call void @llvm.x86.sse2.lfence()
  %arrayidx.7 = getelementptr inbounds i8, ptr %data, i64 28, !BLADE-S !7, !BLADE-T !8
  %28 = load i8, ptr %arrayidx.7, align 1, !tbaa !9, !BLADE-T !8
  %conv.7 = zext i8 %28 to i32
  %shl.7 = shl nuw i32 %conv.7, 24
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.7 = getelementptr inbounds i8, ptr %data, i64 29, !BLADE-S !7, !BLADE-T !8
  %29 = load i8, ptr %arrayidx2.7, align 1, !tbaa !9, !BLADE-T !8
  %conv3.7 = zext i8 %29 to i32
  %shl4.7 = shl nuw nsw i32 %conv3.7, 16
  %add5.7 = or i32 %shl4.7, %shl.7
  call void @llvm.x86.sse2.lfence()
  %arrayidx8.7 = getelementptr inbounds i8, ptr %data, i64 30, !BLADE-S !7, !BLADE-T !8
  %30 = load i8, ptr %arrayidx8.7, align 1, !tbaa !9, !BLADE-T !8
  %conv9.7 = zext i8 %30 to i32
  %shl10.7 = shl nuw nsw i32 %conv9.7, 8
  %add11.7 = or i32 %add5.7, %shl10.7
  call void @llvm.x86.sse2.lfence()
  %arrayidx14.7 = getelementptr inbounds i8, ptr %data, i64 31, !BLADE-S !7, !BLADE-T !8
  %31 = load i8, ptr %arrayidx14.7, align 1, !tbaa !9, !BLADE-T !8
  %conv15.7 = zext i8 %31 to i32
  %add16.7 = or i32 %add11.7, %conv15.7
  call void @llvm.x86.sse2.lfence()
  %arrayidx18.7 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 7, !BLADE-S !7
  store i32 %add16.7, ptr %arrayidx18.7, align 4, !tbaa !12
  call void @llvm.x86.sse2.lfence()
  %arrayidx.8 = getelementptr inbounds i8, ptr %data, i64 32, !BLADE-S !7, !BLADE-T !8
  %32 = load i8, ptr %arrayidx.8, align 1, !tbaa !9, !BLADE-T !8
  %conv.8 = zext i8 %32 to i32
  %shl.8 = shl nuw i32 %conv.8, 24
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.8 = getelementptr inbounds i8, ptr %data, i64 33, !BLADE-S !7, !BLADE-T !8
  %33 = load i8, ptr %arrayidx2.8, align 1, !tbaa !9, !BLADE-T !8
  %conv3.8 = zext i8 %33 to i32
  %shl4.8 = shl nuw nsw i32 %conv3.8, 16
  %add5.8 = or i32 %shl4.8, %shl.8
  call void @llvm.x86.sse2.lfence()
  %arrayidx8.8 = getelementptr inbounds i8, ptr %data, i64 34, !BLADE-S !7, !BLADE-T !8
  %34 = load i8, ptr %arrayidx8.8, align 1, !tbaa !9, !BLADE-T !8
  %conv9.8 = zext i8 %34 to i32
  %shl10.8 = shl nuw nsw i32 %conv9.8, 8
  %add11.8 = or i32 %add5.8, %shl10.8
  call void @llvm.x86.sse2.lfence()
  %arrayidx14.8 = getelementptr inbounds i8, ptr %data, i64 35, !BLADE-S !7, !BLADE-T !8
  %35 = load i8, ptr %arrayidx14.8, align 1, !tbaa !9, !BLADE-T !8
  %conv15.8 = zext i8 %35 to i32
  %add16.8 = or i32 %add11.8, %conv15.8
  call void @llvm.x86.sse2.lfence()
  %arrayidx18.8 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 8, !BLADE-S !7
  store i32 %add16.8, ptr %arrayidx18.8, align 16, !tbaa !12
  call void @llvm.x86.sse2.lfence()
  %arrayidx.9 = getelementptr inbounds i8, ptr %data, i64 36, !BLADE-S !7, !BLADE-T !8
  %36 = load i8, ptr %arrayidx.9, align 1, !tbaa !9, !BLADE-T !8
  %conv.9 = zext i8 %36 to i32
  %shl.9 = shl nuw i32 %conv.9, 24
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.9 = getelementptr inbounds i8, ptr %data, i64 37, !BLADE-S !7, !BLADE-T !8
  %37 = load i8, ptr %arrayidx2.9, align 1, !tbaa !9, !BLADE-T !8
  %conv3.9 = zext i8 %37 to i32
  %shl4.9 = shl nuw nsw i32 %conv3.9, 16
  %add5.9 = or i32 %shl4.9, %shl.9
  call void @llvm.x86.sse2.lfence()
  %arrayidx8.9 = getelementptr inbounds i8, ptr %data, i64 38, !BLADE-S !7, !BLADE-T !8
  %38 = load i8, ptr %arrayidx8.9, align 1, !tbaa !9, !BLADE-T !8
  %conv9.9 = zext i8 %38 to i32
  %shl10.9 = shl nuw nsw i32 %conv9.9, 8
  %add11.9 = or i32 %add5.9, %shl10.9
  call void @llvm.x86.sse2.lfence()
  %arrayidx14.9 = getelementptr inbounds i8, ptr %data, i64 39, !BLADE-S !7, !BLADE-T !8
  %39 = load i8, ptr %arrayidx14.9, align 1, !tbaa !9, !BLADE-T !8
  %conv15.9 = zext i8 %39 to i32
  %add16.9 = or i32 %add11.9, %conv15.9
  call void @llvm.x86.sse2.lfence()
  %arrayidx18.9 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 9, !BLADE-S !7
  store i32 %add16.9, ptr %arrayidx18.9, align 4, !tbaa !12
  call void @llvm.x86.sse2.lfence()
  %arrayidx.10 = getelementptr inbounds i8, ptr %data, i64 40, !BLADE-S !7, !BLADE-T !8
  %40 = load i8, ptr %arrayidx.10, align 1, !tbaa !9, !BLADE-T !8
  %conv.10 = zext i8 %40 to i32
  %shl.10 = shl nuw i32 %conv.10, 24
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.10 = getelementptr inbounds i8, ptr %data, i64 41, !BLADE-S !7, !BLADE-T !8
  %41 = load i8, ptr %arrayidx2.10, align 1, !tbaa !9, !BLADE-T !8
  %conv3.10 = zext i8 %41 to i32
  %shl4.10 = shl nuw nsw i32 %conv3.10, 16
  %add5.10 = or i32 %shl4.10, %shl.10
  call void @llvm.x86.sse2.lfence()
  %arrayidx8.10 = getelementptr inbounds i8, ptr %data, i64 42, !BLADE-S !7, !BLADE-T !8
  %42 = load i8, ptr %arrayidx8.10, align 1, !tbaa !9, !BLADE-T !8
  %conv9.10 = zext i8 %42 to i32
  %shl10.10 = shl nuw nsw i32 %conv9.10, 8
  %add11.10 = or i32 %add5.10, %shl10.10
  call void @llvm.x86.sse2.lfence()
  %arrayidx14.10 = getelementptr inbounds i8, ptr %data, i64 43, !BLADE-S !7, !BLADE-T !8
  %43 = load i8, ptr %arrayidx14.10, align 1, !tbaa !9, !BLADE-T !8
  %conv15.10 = zext i8 %43 to i32
  %add16.10 = or i32 %add11.10, %conv15.10
  call void @llvm.x86.sse2.lfence()
  %arrayidx18.10 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 10, !BLADE-S !7
  store i32 %add16.10, ptr %arrayidx18.10, align 8, !tbaa !12
  call void @llvm.x86.sse2.lfence()
  %arrayidx.11 = getelementptr inbounds i8, ptr %data, i64 44, !BLADE-S !7, !BLADE-T !8
  %44 = load i8, ptr %arrayidx.11, align 1, !tbaa !9, !BLADE-T !8
  %conv.11 = zext i8 %44 to i32
  %shl.11 = shl nuw i32 %conv.11, 24
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.11 = getelementptr inbounds i8, ptr %data, i64 45, !BLADE-S !7, !BLADE-T !8
  %45 = load i8, ptr %arrayidx2.11, align 1, !tbaa !9, !BLADE-T !8
  %conv3.11 = zext i8 %45 to i32
  %shl4.11 = shl nuw nsw i32 %conv3.11, 16
  %add5.11 = or i32 %shl4.11, %shl.11
  call void @llvm.x86.sse2.lfence()
  %arrayidx8.11 = getelementptr inbounds i8, ptr %data, i64 46, !BLADE-S !7, !BLADE-T !8
  %46 = load i8, ptr %arrayidx8.11, align 1, !tbaa !9, !BLADE-T !8
  %conv9.11 = zext i8 %46 to i32
  %shl10.11 = shl nuw nsw i32 %conv9.11, 8
  %add11.11 = or i32 %add5.11, %shl10.11
  call void @llvm.x86.sse2.lfence()
  %arrayidx14.11 = getelementptr inbounds i8, ptr %data, i64 47, !BLADE-S !7, !BLADE-T !8
  %47 = load i8, ptr %arrayidx14.11, align 1, !tbaa !9, !BLADE-T !8
  %conv15.11 = zext i8 %47 to i32
  %add16.11 = or i32 %add11.11, %conv15.11
  call void @llvm.x86.sse2.lfence()
  %arrayidx18.11 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 11, !BLADE-S !7
  store i32 %add16.11, ptr %arrayidx18.11, align 4, !tbaa !12
  call void @llvm.x86.sse2.lfence()
  %arrayidx.12 = getelementptr inbounds i8, ptr %data, i64 48, !BLADE-S !7, !BLADE-T !8
  %48 = load i8, ptr %arrayidx.12, align 1, !tbaa !9, !BLADE-T !8
  %conv.12 = zext i8 %48 to i32
  %shl.12 = shl nuw i32 %conv.12, 24
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.12 = getelementptr inbounds i8, ptr %data, i64 49, !BLADE-S !7, !BLADE-T !8
  %49 = load i8, ptr %arrayidx2.12, align 1, !tbaa !9, !BLADE-T !8
  %conv3.12 = zext i8 %49 to i32
  %shl4.12 = shl nuw nsw i32 %conv3.12, 16
  %add5.12 = or i32 %shl4.12, %shl.12
  call void @llvm.x86.sse2.lfence()
  %arrayidx8.12 = getelementptr inbounds i8, ptr %data, i64 50, !BLADE-S !7, !BLADE-T !8
  %50 = load i8, ptr %arrayidx8.12, align 1, !tbaa !9, !BLADE-T !8
  %conv9.12 = zext i8 %50 to i32
  %shl10.12 = shl nuw nsw i32 %conv9.12, 8
  %add11.12 = or i32 %add5.12, %shl10.12
  call void @llvm.x86.sse2.lfence()
  %arrayidx14.12 = getelementptr inbounds i8, ptr %data, i64 51, !BLADE-S !7, !BLADE-T !8
  %51 = load i8, ptr %arrayidx14.12, align 1, !tbaa !9, !BLADE-T !8
  %conv15.12 = zext i8 %51 to i32
  %add16.12 = or i32 %add11.12, %conv15.12
  call void @llvm.x86.sse2.lfence()
  %arrayidx18.12 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 12, !BLADE-S !7
  store i32 %add16.12, ptr %arrayidx18.12, align 16, !tbaa !12
  call void @llvm.x86.sse2.lfence()
  %arrayidx.13 = getelementptr inbounds i8, ptr %data, i64 52, !BLADE-S !7, !BLADE-T !8
  %52 = load i8, ptr %arrayidx.13, align 1, !tbaa !9, !BLADE-T !8
  %conv.13 = zext i8 %52 to i32
  %shl.13 = shl nuw i32 %conv.13, 24
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.13 = getelementptr inbounds i8, ptr %data, i64 53, !BLADE-S !7, !BLADE-T !8
  %53 = load i8, ptr %arrayidx2.13, align 1, !tbaa !9, !BLADE-T !8
  %conv3.13 = zext i8 %53 to i32
  %shl4.13 = shl nuw nsw i32 %conv3.13, 16
  %add5.13 = or i32 %shl4.13, %shl.13
  call void @llvm.x86.sse2.lfence()
  %arrayidx8.13 = getelementptr inbounds i8, ptr %data, i64 54, !BLADE-S !7, !BLADE-T !8
  %54 = load i8, ptr %arrayidx8.13, align 1, !tbaa !9, !BLADE-T !8
  %conv9.13 = zext i8 %54 to i32
  %shl10.13 = shl nuw nsw i32 %conv9.13, 8
  %add11.13 = or i32 %add5.13, %shl10.13
  call void @llvm.x86.sse2.lfence()
  %arrayidx14.13 = getelementptr inbounds i8, ptr %data, i64 55, !BLADE-S !7, !BLADE-T !8
  %55 = load i8, ptr %arrayidx14.13, align 1, !tbaa !9, !BLADE-T !8
  %conv15.13 = zext i8 %55 to i32
  %add16.13 = or i32 %add11.13, %conv15.13
  call void @llvm.x86.sse2.lfence()
  %arrayidx18.13 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 13, !BLADE-S !7
  store i32 %add16.13, ptr %arrayidx18.13, align 4, !tbaa !12
  call void @llvm.x86.sse2.lfence()
  %arrayidx.14 = getelementptr inbounds i8, ptr %data, i64 56, !BLADE-S !7, !BLADE-T !8
  %56 = load i8, ptr %arrayidx.14, align 1, !tbaa !9, !BLADE-T !8
  %conv.14 = zext i8 %56 to i32
  %shl.14 = shl nuw i32 %conv.14, 24
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.14 = getelementptr inbounds i8, ptr %data, i64 57, !BLADE-S !7, !BLADE-T !8
  %57 = load i8, ptr %arrayidx2.14, align 1, !tbaa !9, !BLADE-T !8
  %conv3.14 = zext i8 %57 to i32
  %shl4.14 = shl nuw nsw i32 %conv3.14, 16
  %add5.14 = or i32 %shl4.14, %shl.14
  call void @llvm.x86.sse2.lfence()
  %arrayidx8.14 = getelementptr inbounds i8, ptr %data, i64 58, !BLADE-S !7, !BLADE-T !8
  %58 = load i8, ptr %arrayidx8.14, align 1, !tbaa !9, !BLADE-T !8
  %conv9.14 = zext i8 %58 to i32
  %shl10.14 = shl nuw nsw i32 %conv9.14, 8
  %add11.14 = or i32 %add5.14, %shl10.14
  call void @llvm.x86.sse2.lfence()
  %arrayidx14.14 = getelementptr inbounds i8, ptr %data, i64 59, !BLADE-S !7, !BLADE-T !8
  %59 = load i8, ptr %arrayidx14.14, align 1, !tbaa !9, !BLADE-T !8
  %conv15.14 = zext i8 %59 to i32
  %add16.14 = or i32 %add11.14, %conv15.14
  call void @llvm.x86.sse2.lfence()
  %arrayidx18.14 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 14, !BLADE-S !7
  store i32 %add16.14, ptr %arrayidx18.14, align 8, !tbaa !12
  call void @llvm.x86.sse2.lfence()
  %arrayidx.15 = getelementptr inbounds i8, ptr %data, i64 60, !BLADE-S !7, !BLADE-T !8
  %60 = load i8, ptr %arrayidx.15, align 1, !tbaa !9, !BLADE-T !8
  %conv.15 = zext i8 %60 to i32
  %shl.15 = shl nuw i32 %conv.15, 24
  call void @llvm.x86.sse2.lfence()
  %arrayidx2.15 = getelementptr inbounds i8, ptr %data, i64 61, !BLADE-S !7, !BLADE-T !8
  %61 = load i8, ptr %arrayidx2.15, align 1, !tbaa !9, !BLADE-T !8
  %conv3.15 = zext i8 %61 to i32
  %shl4.15 = shl nuw nsw i32 %conv3.15, 16
  %add5.15 = or i32 %shl4.15, %shl.15
  call void @llvm.x86.sse2.lfence()
  %arrayidx8.15 = getelementptr inbounds i8, ptr %data, i64 62, !BLADE-S !7, !BLADE-T !8
  %62 = load i8, ptr %arrayidx8.15, align 1, !tbaa !9, !BLADE-T !8
  %conv9.15 = zext i8 %62 to i32
  %shl10.15 = shl nuw nsw i32 %conv9.15, 8
  %add11.15 = or i32 %add5.15, %shl10.15
  call void @llvm.x86.sse2.lfence()
  %arrayidx14.15 = getelementptr inbounds i8, ptr %data, i64 63, !BLADE-S !7, !BLADE-T !8
  %63 = load i8, ptr %arrayidx14.15, align 1, !tbaa !9, !BLADE-T !8
  %conv15.15 = zext i8 %63 to i32
  %add16.15 = or i32 %add11.15, %conv15.15
  call void @llvm.x86.sse2.lfence()
  %arrayidx18.15 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 15, !BLADE-S !7
  store i32 %add16.15, ptr %arrayidx18.15, align 4, !tbaa !12
  br label %for.body23

for.body23:                                       ; preds = %for.body23, %for.body23.preheader
  %indvars.iv = phi i64 [ 16, %for.body23.preheader ], [ %indvars.iv.next, %for.body23 ]
  %64 = add nsw i64 %indvars.iv, -3
  call void @llvm.x86.sse2.lfence()
  %arrayidx25 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 %64, !BLADE-S !7
  %65 = load i32, ptr %arrayidx25, align 4, !tbaa !12, !BLADE-T !8
  %66 = add nsw i64 %indvars.iv, -8
  call void @llvm.x86.sse2.lfence()
  %arrayidx28 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 %66, !BLADE-S !7
  %67 = load i32, ptr %arrayidx28, align 4, !tbaa !12, !BLADE-T !8
  %xor = xor i32 %67, %65
  %68 = add nsw i64 %indvars.iv, -14
  call void @llvm.x86.sse2.lfence()
  %arrayidx31 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 %68, !BLADE-S !7
  %69 = load i32, ptr %arrayidx31, align 4, !tbaa !12, !BLADE-T !8
  %xor32 = xor i32 %xor, %69
  %70 = add nsw i64 %indvars.iv, -16
  call void @llvm.x86.sse2.lfence()
  %arrayidx35 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 %70, !BLADE-S !7
  %71 = load i32, ptr %arrayidx35, align 4, !tbaa !12, !BLADE-T !8
  %xor36 = xor i32 %xor32, %71
  %arrayidx38 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 %indvars.iv
  %or = tail call i32 @llvm.fshl.i32(i32 %xor36, i32 %xor36, i32 1), !BLADE-T !8
  store i32 %or, ptr %arrayidx38, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond.not, label %for.end151, label %for.body23, !llvm.loop !14

for.end151:                                       ; preds = %for.body23
  call void @llvm.x86.sse2.lfence()
  %state = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 3, !BLADE-S !7, !BLADE-T !8
  %72 = load i32, ptr %state, align 8, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx51 = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 3, i64 1, !BLADE-S !7, !BLADE-T !8
  %73 = load i32, ptr %arrayidx51, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx53 = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 3, i64 2, !BLADE-S !7, !BLADE-T !8
  %74 = load i32, ptr %arrayidx53, align 8, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx55 = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 3, i64 3, !BLADE-S !7, !BLADE-T !8
  %75 = load i32, ptr %arrayidx55, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx57 = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 3, i64 4, !BLADE-S !7, !BLADE-T !8
  %76 = load i32, ptr %arrayidx57, align 8, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %k = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 4, !BLADE-S !7, !BLADE-T !8
  %77 = load i32, ptr %k, align 4, !tbaa !12, !BLADE-T !8
  %78 = load i32, ptr %m, align 16, !tbaa !12, !BLADE-T !8
  %79 = load i32, ptr %arrayidx18.1, align 4, !tbaa !12, !BLADE-T !8
  %80 = load i32, ptr %arrayidx18.2, align 8, !tbaa !12, !BLADE-T !8
  %81 = load i32, ptr %arrayidx18.3, align 4, !tbaa !12, !BLADE-T !8
  %82 = load i32, ptr %arrayidx18.4, align 16, !tbaa !12, !BLADE-T !8
  %83 = load i32, ptr %arrayidx18.5, align 4, !tbaa !12, !BLADE-T !8
  %84 = load i32, ptr %arrayidx18.6, align 8, !tbaa !12, !BLADE-T !8
  %85 = load i32, ptr %arrayidx18.7, align 4, !tbaa !12, !BLADE-T !8
  %86 = load i32, ptr %arrayidx18.8, align 16, !tbaa !12, !BLADE-T !8
  %87 = load i32, ptr %arrayidx18.9, align 4, !tbaa !12, !BLADE-T !8
  %88 = load i32, ptr %arrayidx18.10, align 8, !tbaa !12, !BLADE-T !8
  %89 = load i32, ptr %arrayidx18.11, align 4, !tbaa !12, !BLADE-T !8
  %90 = load i32, ptr %arrayidx18.12, align 16, !tbaa !12, !BLADE-T !8
  %91 = load i32, ptr %arrayidx18.13, align 4, !tbaa !12, !BLADE-T !8
  %92 = load i32, ptr %arrayidx18.14, align 8, !tbaa !12, !BLADE-T !8
  %93 = load i32, ptr %arrayidx18.15, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx72.16 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 16, !BLADE-S !7
  %94 = load i32, ptr %arrayidx72.16, align 16, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx72.17 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 17, !BLADE-S !7
  %95 = load i32, ptr %arrayidx72.17, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx72.18 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 18, !BLADE-S !7
  %96 = load i32, ptr %arrayidx72.18, align 8, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx72.19 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 19, !BLADE-S !7
  %97 = load i32, ptr %arrayidx72.19, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx92 = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 4, i64 1, !BLADE-S !7, !BLADE-T !8
  %98 = load i32, ptr %arrayidx92, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 20, !BLADE-S !7
  %99 = load i32, ptr %arrayidx95, align 16, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.1 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 21, !BLADE-S !7
  %100 = load i32, ptr %arrayidx95.1, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.2 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 22, !BLADE-S !7
  %101 = load i32, ptr %arrayidx95.2, align 8, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.3 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 23, !BLADE-S !7
  %102 = load i32, ptr %arrayidx95.3, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.4 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 24, !BLADE-S !7
  %103 = load i32, ptr %arrayidx95.4, align 16, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.5 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 25, !BLADE-S !7
  %104 = load i32, ptr %arrayidx95.5, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.6 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 26, !BLADE-S !7
  %105 = load i32, ptr %arrayidx95.6, align 8, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.7 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 27, !BLADE-S !7
  %106 = load i32, ptr %arrayidx95.7, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.8 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 28, !BLADE-S !7
  %107 = load i32, ptr %arrayidx95.8, align 16, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.9 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 29, !BLADE-S !7
  %108 = load i32, ptr %arrayidx95.9, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.10 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 30, !BLADE-S !7
  %109 = load i32, ptr %arrayidx95.10, align 8, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.11 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 31, !BLADE-S !7
  %110 = load i32, ptr %arrayidx95.11, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.12 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 32, !BLADE-S !7
  %111 = load i32, ptr %arrayidx95.12, align 16, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.13 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 33, !BLADE-S !7
  %112 = load i32, ptr %arrayidx95.13, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.14 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 34, !BLADE-S !7
  %113 = load i32, ptr %arrayidx95.14, align 8, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.15 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 35, !BLADE-S !7
  %114 = load i32, ptr %arrayidx95.15, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.16 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 36, !BLADE-S !7
  %115 = load i32, ptr %arrayidx95.16, align 16, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.17 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 37, !BLADE-S !7
  %116 = load i32, ptr %arrayidx95.17, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.18 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 38, !BLADE-S !7
  %117 = load i32, ptr %arrayidx95.18, align 8, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx95.19 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 39, !BLADE-S !7
  %118 = load i32, ptr %arrayidx95.19, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx118 = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 4, i64 2, !BLADE-S !7, !BLADE-T !8
  %119 = load i32, ptr %arrayidx118, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 40, !BLADE-S !7
  %120 = load i32, ptr %arrayidx121, align 16, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.1 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 41, !BLADE-S !7
  %121 = load i32, ptr %arrayidx121.1, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.2 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 42, !BLADE-S !7
  %122 = load i32, ptr %arrayidx121.2, align 8, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.3 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 43, !BLADE-S !7
  %123 = load i32, ptr %arrayidx121.3, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.4 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 44, !BLADE-S !7
  %124 = load i32, ptr %arrayidx121.4, align 16, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.5 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 45, !BLADE-S !7
  %125 = load i32, ptr %arrayidx121.5, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.6 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 46, !BLADE-S !7
  %126 = load i32, ptr %arrayidx121.6, align 8, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.7 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 47, !BLADE-S !7
  %127 = load i32, ptr %arrayidx121.7, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.8 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 48, !BLADE-S !7
  %128 = load i32, ptr %arrayidx121.8, align 16, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.9 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 49, !BLADE-S !7
  %129 = load i32, ptr %arrayidx121.9, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.10 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 50, !BLADE-S !7
  %130 = load i32, ptr %arrayidx121.10, align 8, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.11 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 51, !BLADE-S !7
  %131 = load i32, ptr %arrayidx121.11, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.12 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 52, !BLADE-S !7
  %132 = load i32, ptr %arrayidx121.12, align 16, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.13 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 53, !BLADE-S !7
  %133 = load i32, ptr %arrayidx121.13, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.14 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 54, !BLADE-S !7
  %134 = load i32, ptr %arrayidx121.14, align 8, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.15 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 55, !BLADE-S !7
  %135 = load i32, ptr %arrayidx121.15, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.16 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 56, !BLADE-S !7
  %136 = load i32, ptr %arrayidx121.16, align 16, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.17 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 57, !BLADE-S !7
  %137 = load i32, ptr %arrayidx121.17, align 4, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.18 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 58, !BLADE-S !7
  %138 = load i32, ptr %arrayidx121.18, align 8, !tbaa !12, !BLADE-T !8
  call void @llvm.x86.sse2.lfence()
  %arrayidx121.19 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 59, !BLADE-S !7
  %139 = load i32, ptr %arrayidx121.19, align 4, !tbaa !12, !BLADE-T !8
  %and = and i32 %74, %73
  %or64 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 5), !BLADE-T !8
  %xor66 = add i32 %and, %or64
  %not = xor i32 %73, -1
  %and65 = and i32 %75, %not
  %add67 = add i32 %xor66, %and65
  %add68 = add i32 %add67, %76
  %add70 = add i32 %add68, %77
  %add73 = add i32 %add70, %78
  %or76.2 = tail call i32 @llvm.fshl.i32(i32 %add73, i32 %add73, i32 30), !BLADE-T !8
  %or76 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 30), !BLADE-T !8
  %and.1 = and i32 %or76, %72
  %or64.1 = tail call i32 @llvm.fshl.i32(i32 %add73, i32 %add73, i32 5), !BLADE-T !8
  %xor66.1 = add i32 %and.1, %or64.1
  %not.1 = xor i32 %72, -1
  %and65.1 = and i32 %74, %not.1
  %add67.1 = add i32 %xor66.1, %and65.1
  %add68.1 = add i32 %add67.1, %75
  %add70.1 = add i32 %add68.1, %77
  %add73.1 = add i32 %add70.1, %79
  %and.3 = and i32 %or76.2, %add73.1
  %or76.1 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 30), !BLADE-T !8
  %and.2 = and i32 %or76.1, %add73
  %or64.2 = tail call i32 @llvm.fshl.i32(i32 %add73.1, i32 %add73.1, i32 5), !BLADE-T !8
  %xor66.2 = add i32 %and.2, %or64.2
  %not.2 = xor i32 %add73, -1
  %and65.2 = and i32 %or76, %not.2
  %add67.2 = add i32 %xor66.2, %and65.2
  %add68.2 = add i32 %add67.2, %74
  %add70.2 = add i32 %add68.2, %77
  %add73.2 = add i32 %add70.2, %80
  %or64.3 = tail call i32 @llvm.fshl.i32(i32 %add73.2, i32 %add73.2, i32 5), !BLADE-T !8
  %xor66.3 = add i32 %and.3, %or64.3
  %not.3 = xor i32 %add73.1, -1
  %and65.3 = and i32 %or76.1, %not.3
  %add67.3 = add i32 %xor66.3, %and65.3
  %add68.3 = add i32 %add67.3, %or76
  %add70.3 = add i32 %add68.3, %77
  %add73.3 = add i32 %add70.3, %81
  %or76.5 = tail call i32 @llvm.fshl.i32(i32 %add73.3, i32 %add73.3, i32 30), !BLADE-T !8
  %or76.3 = tail call i32 @llvm.fshl.i32(i32 %add73.1, i32 %add73.1, i32 30), !BLADE-T !8
  %and.4 = and i32 %or76.3, %add73.2
  %or64.4 = tail call i32 @llvm.fshl.i32(i32 %add73.3, i32 %add73.3, i32 5), !BLADE-T !8
  %xor66.4 = add i32 %and.4, %or64.4
  %not.4 = xor i32 %add73.2, -1
  %and65.4 = and i32 %or76.2, %not.4
  %add67.4 = add i32 %xor66.4, %and65.4
  %add68.4 = add i32 %add67.4, %or76.1
  %add70.4 = add i32 %add68.4, %77
  %add73.4 = add i32 %add70.4, %82
  %and.6 = and i32 %or76.5, %add73.4
  %or76.4 = tail call i32 @llvm.fshl.i32(i32 %add73.2, i32 %add73.2, i32 30), !BLADE-T !8
  %and.5 = and i32 %or76.4, %add73.3
  %or64.5 = tail call i32 @llvm.fshl.i32(i32 %add73.4, i32 %add73.4, i32 5), !BLADE-T !8
  %xor66.5 = add i32 %and.5, %or64.5
  %not.5 = xor i32 %add73.3, -1
  %and65.5 = and i32 %or76.3, %not.5
  %add67.5 = add i32 %xor66.5, %and65.5
  %add68.5 = add i32 %add67.5, %or76.2
  %add70.5 = add i32 %add68.5, %77
  %add73.5 = add i32 %add70.5, %83
  %or64.6 = tail call i32 @llvm.fshl.i32(i32 %add73.5, i32 %add73.5, i32 5), !BLADE-T !8
  %xor66.6 = add i32 %and.6, %or64.6
  %not.6 = xor i32 %add73.4, -1
  %and65.6 = and i32 %or76.4, %not.6
  %add67.6 = add i32 %xor66.6, %and65.6
  %add68.6 = add i32 %add67.6, %or76.3
  %add70.6 = add i32 %add68.6, %77
  %add73.6 = add i32 %add70.6, %84
  %or76.8 = tail call i32 @llvm.fshl.i32(i32 %add73.6, i32 %add73.6, i32 30), !BLADE-T !8
  %or76.6 = tail call i32 @llvm.fshl.i32(i32 %add73.4, i32 %add73.4, i32 30), !BLADE-T !8
  %and.7 = and i32 %or76.6, %add73.5
  %or64.7 = tail call i32 @llvm.fshl.i32(i32 %add73.6, i32 %add73.6, i32 5), !BLADE-T !8
  %xor66.7 = add i32 %and.7, %or64.7
  %not.7 = xor i32 %add73.5, -1
  %and65.7 = and i32 %or76.5, %not.7
  %add67.7 = add i32 %xor66.7, %and65.7
  %add68.7 = add i32 %add67.7, %or76.4
  %add70.7 = add i32 %add68.7, %77
  %add73.7 = add i32 %add70.7, %85
  %and.9 = and i32 %or76.8, %add73.7
  %or76.7 = tail call i32 @llvm.fshl.i32(i32 %add73.5, i32 %add73.5, i32 30), !BLADE-T !8
  %and.8 = and i32 %or76.7, %add73.6
  %or64.8 = tail call i32 @llvm.fshl.i32(i32 %add73.7, i32 %add73.7, i32 5), !BLADE-T !8
  %xor66.8 = add i32 %and.8, %or64.8
  %not.8 = xor i32 %add73.6, -1
  %and65.8 = and i32 %or76.6, %not.8
  %add67.8 = add i32 %xor66.8, %and65.8
  %add68.8 = add i32 %add67.8, %or76.5
  %add70.8 = add i32 %add68.8, %77
  %add73.8 = add i32 %add70.8, %86
  %or64.9 = tail call i32 @llvm.fshl.i32(i32 %add73.8, i32 %add73.8, i32 5), !BLADE-T !8
  %xor66.9 = add i32 %and.9, %or64.9
  %not.9 = xor i32 %add73.7, -1
  %and65.9 = and i32 %or76.7, %not.9
  %add67.9 = add i32 %xor66.9, %and65.9
  %add68.9 = add i32 %add67.9, %or76.6
  %add70.9 = add i32 %add68.9, %77
  %add73.9 = add i32 %add70.9, %87
  %or76.11 = tail call i32 @llvm.fshl.i32(i32 %add73.9, i32 %add73.9, i32 30), !BLADE-T !8
  %or76.9 = tail call i32 @llvm.fshl.i32(i32 %add73.7, i32 %add73.7, i32 30), !BLADE-T !8
  %and.10 = and i32 %or76.9, %add73.8
  %or64.10 = tail call i32 @llvm.fshl.i32(i32 %add73.9, i32 %add73.9, i32 5), !BLADE-T !8
  %xor66.10 = add i32 %and.10, %or64.10
  %not.10 = xor i32 %add73.8, -1
  %and65.10 = and i32 %or76.8, %not.10
  %add67.10 = add i32 %xor66.10, %and65.10
  %add68.10 = add i32 %add67.10, %or76.7
  %add70.10 = add i32 %add68.10, %77
  %add73.10 = add i32 %add70.10, %88
  %and.12 = and i32 %or76.11, %add73.10
  %or76.10 = tail call i32 @llvm.fshl.i32(i32 %add73.8, i32 %add73.8, i32 30), !BLADE-T !8
  %and.11 = and i32 %or76.10, %add73.9
  %or64.11 = tail call i32 @llvm.fshl.i32(i32 %add73.10, i32 %add73.10, i32 5), !BLADE-T !8
  %xor66.11 = add i32 %and.11, %or64.11
  %not.11 = xor i32 %add73.9, -1
  %and65.11 = and i32 %or76.9, %not.11
  %add67.11 = add i32 %xor66.11, %and65.11
  %add68.11 = add i32 %add67.11, %or76.8
  %add70.11 = add i32 %add68.11, %77
  %add73.11 = add i32 %add70.11, %89
  %or64.12 = tail call i32 @llvm.fshl.i32(i32 %add73.11, i32 %add73.11, i32 5), !BLADE-T !8
  %xor66.12 = add i32 %and.12, %or64.12
  %not.12 = xor i32 %add73.10, -1
  %and65.12 = and i32 %or76.10, %not.12
  %add67.12 = add i32 %xor66.12, %and65.12
  %add68.12 = add i32 %add67.12, %or76.9
  %add70.12 = add i32 %add68.12, %77
  %add73.12 = add i32 %add70.12, %90
  %or76.14 = tail call i32 @llvm.fshl.i32(i32 %add73.12, i32 %add73.12, i32 30), !BLADE-T !8
  %or76.12 = tail call i32 @llvm.fshl.i32(i32 %add73.10, i32 %add73.10, i32 30), !BLADE-T !8
  %and.13 = and i32 %or76.12, %add73.11
  %or64.13 = tail call i32 @llvm.fshl.i32(i32 %add73.12, i32 %add73.12, i32 5), !BLADE-T !8
  %xor66.13 = add i32 %and.13, %or64.13
  %not.13 = xor i32 %add73.11, -1
  %and65.13 = and i32 %or76.11, %not.13
  %add67.13 = add i32 %xor66.13, %and65.13
  %add68.13 = add i32 %add67.13, %or76.10
  %add70.13 = add i32 %add68.13, %77
  %add73.13 = add i32 %add70.13, %91
  %and.15 = and i32 %or76.14, %add73.13
  %or76.13 = tail call i32 @llvm.fshl.i32(i32 %add73.11, i32 %add73.11, i32 30), !BLADE-T !8
  %and.14 = and i32 %or76.13, %add73.12
  %or64.14 = tail call i32 @llvm.fshl.i32(i32 %add73.13, i32 %add73.13, i32 5), !BLADE-T !8
  %xor66.14 = add i32 %and.14, %or64.14
  %not.14 = xor i32 %add73.12, -1
  %and65.14 = and i32 %or76.12, %not.14
  %add67.14 = add i32 %xor66.14, %and65.14
  %add68.14 = add i32 %add67.14, %or76.11
  %add70.14 = add i32 %add68.14, %77
  %add73.14 = add i32 %add70.14, %92
  %or64.15 = tail call i32 @llvm.fshl.i32(i32 %add73.14, i32 %add73.14, i32 5), !BLADE-T !8
  %xor66.15 = add i32 %and.15, %or64.15
  %not.15 = xor i32 %add73.13, -1
  %and65.15 = and i32 %or76.13, %not.15
  %add67.15 = add i32 %xor66.15, %and65.15
  %add68.15 = add i32 %add67.15, %or76.12
  %add70.15 = add i32 %add68.15, %77
  %add73.15 = add i32 %add70.15, %93
  %or76.17 = tail call i32 @llvm.fshl.i32(i32 %add73.15, i32 %add73.15, i32 30), !BLADE-T !8
  %or76.15 = tail call i32 @llvm.fshl.i32(i32 %add73.13, i32 %add73.13, i32 30), !BLADE-T !8
  %and.16 = and i32 %or76.15, %add73.14
  %or64.16 = tail call i32 @llvm.fshl.i32(i32 %add73.15, i32 %add73.15, i32 5), !BLADE-T !8
  %xor66.16 = add i32 %and.16, %or64.16
  %not.16 = xor i32 %add73.14, -1
  %and65.16 = and i32 %or76.14, %not.16
  %add67.16 = add i32 %xor66.16, %and65.16
  %add68.16 = add i32 %add67.16, %or76.13
  %add70.16 = add i32 %add68.16, %77
  %add73.16 = add i32 %add70.16, %94
  %and.18 = and i32 %or76.17, %add73.16
  %or76.16 = tail call i32 @llvm.fshl.i32(i32 %add73.14, i32 %add73.14, i32 30), !BLADE-T !8
  %and.17 = and i32 %or76.16, %add73.15
  %or64.17 = tail call i32 @llvm.fshl.i32(i32 %add73.16, i32 %add73.16, i32 5), !BLADE-T !8
  %xor66.17 = add i32 %and.17, %or64.17
  %not.17 = xor i32 %add73.15, -1
  %and65.17 = and i32 %or76.15, %not.17
  %add67.17 = add i32 %xor66.17, %and65.17
  %add68.17 = add i32 %add67.17, %or76.14
  %add70.17 = add i32 %add68.17, %77
  %add73.17 = add i32 %add70.17, %95
  %or64.18 = tail call i32 @llvm.fshl.i32(i32 %add73.17, i32 %add73.17, i32 5), !BLADE-T !8
  %xor66.18 = add i32 %and.18, %or64.18
  %not.18 = xor i32 %add73.16, -1
  %and65.18 = and i32 %or76.16, %not.18
  %add67.18 = add i32 %xor66.18, %and65.18
  %add68.18 = add i32 %add67.18, %or76.15
  %add70.18 = add i32 %add68.18, %77
  %add73.18 = add i32 %add70.18, %96
  %or99 = tail call i32 @llvm.fshl.i32(i32 %add73.18, i32 %add73.18, i32 30), !BLADE-T !8
  %or76.18 = tail call i32 @llvm.fshl.i32(i32 %add73.16, i32 %add73.16, i32 30), !BLADE-T !8
  %and.19 = and i32 %or76.18, %add73.17
  %or64.19 = tail call i32 @llvm.fshl.i32(i32 %add73.18, i32 %add73.18, i32 5), !BLADE-T !8
  %xor66.19 = add i32 %and.19, %or64.19
  %not.19 = xor i32 %add73.17, -1
  %and65.19 = and i32 %or76.17, %not.19
  %add67.19 = add i32 %xor66.19, %and65.19
  %add68.19 = add i32 %add67.19, %or76.16
  %add70.19 = add i32 %add68.19, %77
  %add73.19 = add i32 %add70.19, %97
  %xor87.1 = xor i32 %or99, %add73.19
  %or76.19 = tail call i32 @llvm.fshl.i32(i32 %add73.17, i32 %add73.17, i32 30), !BLADE-T !8
  %xor88.1 = xor i32 %xor87.1, %or76.19
  %xor87 = xor i32 %or76.19, %add73.18
  %xor88 = xor i32 %xor87, %or76.18
  %or86 = tail call i32 @llvm.fshl.i32(i32 %add73.19, i32 %add73.19, i32 5), !BLADE-T !8
  %add89 = add i32 %xor88, %or86
  %add90 = add i32 %add89, %or76.17
  %add93 = add i32 %add90, %98
  %add96 = add i32 %add93, %99
  %or86.1 = tail call i32 @llvm.fshl.i32(i32 %add96, i32 %add96, i32 5), !BLADE-T !8
  %add89.1 = add i32 %xor88.1, %or86.1
  %add90.1 = add i32 %add89.1, %or76.18
  %add93.1 = add i32 %add90.1, %98
  %add96.1 = add i32 %add93.1, %100
  %or99.3 = tail call i32 @llvm.fshl.i32(i32 %add96.1, i32 %add96.1, i32 30), !BLADE-T !8
  %or99.1 = tail call i32 @llvm.fshl.i32(i32 %add73.19, i32 %add73.19, i32 30), !BLADE-T !8
  %xor87.2 = xor i32 %or99.1, %add96
  %xor88.2 = xor i32 %xor87.2, %or99
  %or86.2 = tail call i32 @llvm.fshl.i32(i32 %add96.1, i32 %add96.1, i32 5), !BLADE-T !8
  %add89.2 = add i32 %xor88.2, %or86.2
  %add90.2 = add i32 %add89.2, %or76.19
  %add93.2 = add i32 %add90.2, %98
  %add96.2 = add i32 %add93.2, %101
  %xor87.4 = xor i32 %or99.3, %add96.2
  %or99.2 = tail call i32 @llvm.fshl.i32(i32 %add96, i32 %add96, i32 30), !BLADE-T !8
  %xor88.4 = xor i32 %xor87.4, %or99.2
  %xor87.3 = xor i32 %or99.2, %add96.1
  %xor88.3 = xor i32 %xor87.3, %or99.1
  %or86.3 = tail call i32 @llvm.fshl.i32(i32 %add96.2, i32 %add96.2, i32 5), !BLADE-T !8
  %add89.3 = add i32 %xor88.3, %or86.3
  %add90.3 = add i32 %add89.3, %or99
  %add93.3 = add i32 %add90.3, %98
  %add96.3 = add i32 %add93.3, %102
  %or86.4 = tail call i32 @llvm.fshl.i32(i32 %add96.3, i32 %add96.3, i32 5), !BLADE-T !8
  %add89.4 = add i32 %xor88.4, %or86.4
  %add90.4 = add i32 %add89.4, %or99.1
  %add93.4 = add i32 %add90.4, %98
  %add96.4 = add i32 %add93.4, %103
  %or99.6 = tail call i32 @llvm.fshl.i32(i32 %add96.4, i32 %add96.4, i32 30), !BLADE-T !8
  %or99.4 = tail call i32 @llvm.fshl.i32(i32 %add96.2, i32 %add96.2, i32 30), !BLADE-T !8
  %xor87.5 = xor i32 %or99.4, %add96.3
  %xor88.5 = xor i32 %xor87.5, %or99.3
  %or86.5 = tail call i32 @llvm.fshl.i32(i32 %add96.4, i32 %add96.4, i32 5), !BLADE-T !8
  %add89.5 = add i32 %xor88.5, %or86.5
  %add90.5 = add i32 %add89.5, %or99.2
  %add93.5 = add i32 %add90.5, %98
  %add96.5 = add i32 %add93.5, %104
  %xor87.7 = xor i32 %or99.6, %add96.5
  %or99.5 = tail call i32 @llvm.fshl.i32(i32 %add96.3, i32 %add96.3, i32 30), !BLADE-T !8
  %xor88.7 = xor i32 %xor87.7, %or99.5
  %xor87.6 = xor i32 %or99.5, %add96.4
  %xor88.6 = xor i32 %xor87.6, %or99.4
  %or86.6 = tail call i32 @llvm.fshl.i32(i32 %add96.5, i32 %add96.5, i32 5), !BLADE-T !8
  %add89.6 = add i32 %xor88.6, %or86.6
  %add90.6 = add i32 %add89.6, %or99.3
  %add93.6 = add i32 %add90.6, %98
  %add96.6 = add i32 %add93.6, %105
  %or86.7 = tail call i32 @llvm.fshl.i32(i32 %add96.6, i32 %add96.6, i32 5), !BLADE-T !8
  %add89.7 = add i32 %xor88.7, %or86.7
  %add90.7 = add i32 %add89.7, %or99.4
  %add93.7 = add i32 %add90.7, %98
  %add96.7 = add i32 %add93.7, %106
  %or99.9 = tail call i32 @llvm.fshl.i32(i32 %add96.7, i32 %add96.7, i32 30), !BLADE-T !8
  %or99.7 = tail call i32 @llvm.fshl.i32(i32 %add96.5, i32 %add96.5, i32 30), !BLADE-T !8
  %xor87.8 = xor i32 %or99.7, %add96.6
  %xor88.8 = xor i32 %xor87.8, %or99.6
  %or86.8 = tail call i32 @llvm.fshl.i32(i32 %add96.7, i32 %add96.7, i32 5), !BLADE-T !8
  %add89.8 = add i32 %xor88.8, %or86.8
  %add90.8 = add i32 %add89.8, %or99.5
  %add93.8 = add i32 %add90.8, %98
  %add96.8 = add i32 %add93.8, %107
  %xor87.10 = xor i32 %or99.9, %add96.8
  %or99.8 = tail call i32 @llvm.fshl.i32(i32 %add96.6, i32 %add96.6, i32 30), !BLADE-T !8
  %xor88.10 = xor i32 %xor87.10, %or99.8
  %xor87.9 = xor i32 %or99.8, %add96.7
  %xor88.9 = xor i32 %xor87.9, %or99.7
  %or86.9 = tail call i32 @llvm.fshl.i32(i32 %add96.8, i32 %add96.8, i32 5), !BLADE-T !8
  %add89.9 = add i32 %xor88.9, %or86.9
  %add90.9 = add i32 %add89.9, %or99.6
  %add93.9 = add i32 %add90.9, %98
  %add96.9 = add i32 %add93.9, %108
  %or86.10 = tail call i32 @llvm.fshl.i32(i32 %add96.9, i32 %add96.9, i32 5), !BLADE-T !8
  %add89.10 = add i32 %xor88.10, %or86.10
  %add90.10 = add i32 %add89.10, %or99.7
  %add93.10 = add i32 %add90.10, %98
  %add96.10 = add i32 %add93.10, %109
  %or99.12 = tail call i32 @llvm.fshl.i32(i32 %add96.10, i32 %add96.10, i32 30), !BLADE-T !8
  %or99.10 = tail call i32 @llvm.fshl.i32(i32 %add96.8, i32 %add96.8, i32 30), !BLADE-T !8
  %xor87.11 = xor i32 %or99.10, %add96.9
  %xor88.11 = xor i32 %xor87.11, %or99.9
  %or86.11 = tail call i32 @llvm.fshl.i32(i32 %add96.10, i32 %add96.10, i32 5), !BLADE-T !8
  %add89.11 = add i32 %xor88.11, %or86.11
  %add90.11 = add i32 %add89.11, %or99.8
  %add93.11 = add i32 %add90.11, %98
  %add96.11 = add i32 %add93.11, %110
  %xor87.13 = xor i32 %or99.12, %add96.11
  %or99.11 = tail call i32 @llvm.fshl.i32(i32 %add96.9, i32 %add96.9, i32 30), !BLADE-T !8
  %xor88.13 = xor i32 %xor87.13, %or99.11
  %xor87.12 = xor i32 %or99.11, %add96.10
  %xor88.12 = xor i32 %xor87.12, %or99.10
  %or86.12 = tail call i32 @llvm.fshl.i32(i32 %add96.11, i32 %add96.11, i32 5), !BLADE-T !8
  %add89.12 = add i32 %xor88.12, %or86.12
  %add90.12 = add i32 %add89.12, %or99.9
  %add93.12 = add i32 %add90.12, %98
  %add96.12 = add i32 %add93.12, %111
  %or86.13 = tail call i32 @llvm.fshl.i32(i32 %add96.12, i32 %add96.12, i32 5), !BLADE-T !8
  %add89.13 = add i32 %xor88.13, %or86.13
  %add90.13 = add i32 %add89.13, %or99.10
  %add93.13 = add i32 %add90.13, %98
  %add96.13 = add i32 %add93.13, %112
  %or99.15 = tail call i32 @llvm.fshl.i32(i32 %add96.13, i32 %add96.13, i32 30), !BLADE-T !8
  %or99.13 = tail call i32 @llvm.fshl.i32(i32 %add96.11, i32 %add96.11, i32 30), !BLADE-T !8
  %xor87.14 = xor i32 %or99.13, %add96.12
  %xor88.14 = xor i32 %xor87.14, %or99.12
  %or86.14 = tail call i32 @llvm.fshl.i32(i32 %add96.13, i32 %add96.13, i32 5), !BLADE-T !8
  %add89.14 = add i32 %xor88.14, %or86.14
  %add90.14 = add i32 %add89.14, %or99.11
  %add93.14 = add i32 %add90.14, %98
  %add96.14 = add i32 %add93.14, %113
  %xor87.16 = xor i32 %or99.15, %add96.14
  %or99.14 = tail call i32 @llvm.fshl.i32(i32 %add96.12, i32 %add96.12, i32 30), !BLADE-T !8
  %xor88.16 = xor i32 %xor87.16, %or99.14
  %xor87.15 = xor i32 %or99.14, %add96.13
  %xor88.15 = xor i32 %xor87.15, %or99.13
  %or86.15 = tail call i32 @llvm.fshl.i32(i32 %add96.14, i32 %add96.14, i32 5), !BLADE-T !8
  %add89.15 = add i32 %xor88.15, %or86.15
  %add90.15 = add i32 %add89.15, %or99.12
  %add93.15 = add i32 %add90.15, %98
  %add96.15 = add i32 %add93.15, %114
  %or86.16 = tail call i32 @llvm.fshl.i32(i32 %add96.15, i32 %add96.15, i32 5), !BLADE-T !8
  %add89.16 = add i32 %xor88.16, %or86.16
  %add90.16 = add i32 %add89.16, %or99.13
  %add93.16 = add i32 %add90.16, %98
  %add96.16 = add i32 %add93.16, %115
  %or99.18 = tail call i32 @llvm.fshl.i32(i32 %add96.16, i32 %add96.16, i32 30), !BLADE-T !8
  %or99.16 = tail call i32 @llvm.fshl.i32(i32 %add96.14, i32 %add96.14, i32 30), !BLADE-T !8
  %xor87.17 = xor i32 %or99.16, %add96.15
  %xor88.17 = xor i32 %xor87.17, %or99.15
  %or86.17 = tail call i32 @llvm.fshl.i32(i32 %add96.16, i32 %add96.16, i32 5), !BLADE-T !8
  %add89.17 = add i32 %xor88.17, %or86.17
  %add90.17 = add i32 %add89.17, %or99.14
  %add93.17 = add i32 %add90.17, %98
  %add96.17 = add i32 %add93.17, %116
  %xor87.19 = xor i32 %or99.18, %add96.17
  %or99.17 = tail call i32 @llvm.fshl.i32(i32 %add96.15, i32 %add96.15, i32 30), !BLADE-T !8
  %xor88.19 = xor i32 %xor87.19, %or99.17
  %xor87.18 = xor i32 %or99.17, %add96.16
  %xor88.18 = xor i32 %xor87.18, %or99.16
  %or86.18 = tail call i32 @llvm.fshl.i32(i32 %add96.17, i32 %add96.17, i32 5), !BLADE-T !8
  %add89.18 = add i32 %xor88.18, %or86.18
  %add90.18 = add i32 %add89.18, %or99.15
  %add93.18 = add i32 %add90.18, %98
  %add96.18 = add i32 %add93.18, %117
  %or86.19 = tail call i32 @llvm.fshl.i32(i32 %add96.18, i32 %add96.18, i32 5), !BLADE-T !8
  %add89.19 = add i32 %xor88.19, %or86.19
  %add90.19 = add i32 %add89.19, %or99.16
  %add93.19 = add i32 %add90.19, %98
  %add96.19 = add i32 %add93.19, %118
  %or125.1 = tail call i32 @llvm.fshl.i32(i32 %add96.19, i32 %add96.19, i32 30), !BLADE-T !8
  %or125 = tail call i32 @llvm.fshl.i32(i32 %add96.18, i32 %add96.18, i32 30), !BLADE-T !8
  %or99.19 = tail call i32 @llvm.fshl.i32(i32 %add96.17, i32 %add96.17, i32 30), !BLADE-T !8
  %or109 = tail call i32 @llvm.fshl.i32(i32 %add96.19, i32 %add96.19, i32 5), !BLADE-T !8
  %add115 = add i32 %or99.17, %or109
  %and111262 = xor i32 %or99.18, %or99.19
  %xor112 = and i32 %and111262, %add96.18
  %and113 = and i32 %or99.18, %or99.19
  %xor114 = xor i32 %xor112, %and113
  %add116 = add i32 %add115, %xor114
  %add119 = add i32 %add116, %119
  %add122 = add i32 %add119, %120
  %or109.1 = tail call i32 @llvm.fshl.i32(i32 %add122, i32 %add122, i32 5), !BLADE-T !8
  %add115.1 = add i32 %or99.18, %or109.1
  %and111262.1 = xor i32 %or99.19, %or125
  %xor112.1 = and i32 %and111262.1, %add96.19
  %and113.1 = and i32 %or99.19, %or125
  %xor114.1 = xor i32 %xor112.1, %and113.1
  %add116.1 = add i32 %add115.1, %xor114.1
  %add119.1 = add i32 %add116.1, %119
  %add122.1 = add i32 %add119.1, %121
  %or109.2 = tail call i32 @llvm.fshl.i32(i32 %add122.1, i32 %add122.1, i32 5), !BLADE-T !8
  %add115.2 = add i32 %or99.19, %or109.2
  %and111262.2 = xor i32 %or125, %or125.1
  %xor112.2 = and i32 %and111262.2, %add122
  %and113.2 = and i32 %or125, %or125.1
  %xor114.2 = xor i32 %xor112.2, %and113.2
  %add116.2 = add i32 %add115.2, %xor114.2
  %add119.2 = add i32 %add116.2, %119
  %add122.2 = add i32 %add119.2, %122
  %or109.3 = tail call i32 @llvm.fshl.i32(i32 %add122.2, i32 %add122.2, i32 5), !BLADE-T !8
  %add115.3 = add i32 %or125, %or109.3
  %or125.2 = tail call i32 @llvm.fshl.i32(i32 %add122, i32 %add122, i32 30), !BLADE-T !8
  %and111262.3 = xor i32 %or125.1, %or125.2
  %xor112.3 = and i32 %and111262.3, %add122.1
  %and113.3 = and i32 %or125.1, %or125.2
  %xor114.3 = xor i32 %xor112.3, %and113.3
  %add116.3 = add i32 %add115.3, %xor114.3
  %add119.3 = add i32 %add116.3, %119
  %add122.3 = add i32 %add119.3, %123
  %or109.4 = tail call i32 @llvm.fshl.i32(i32 %add122.3, i32 %add122.3, i32 5), !BLADE-T !8
  %add115.4 = add i32 %or125.1, %or109.4
  %or125.3 = tail call i32 @llvm.fshl.i32(i32 %add122.1, i32 %add122.1, i32 30), !BLADE-T !8
  %and111262.4 = xor i32 %or125.2, %or125.3
  %xor112.4 = and i32 %and111262.4, %add122.2
  %and113.4 = and i32 %or125.2, %or125.3
  %xor114.4 = xor i32 %xor112.4, %and113.4
  %add116.4 = add i32 %add115.4, %xor114.4
  %add119.4 = add i32 %add116.4, %119
  %add122.4 = add i32 %add119.4, %124
  %or125.6 = tail call i32 @llvm.fshl.i32(i32 %add122.4, i32 %add122.4, i32 30), !BLADE-T !8
  %or125.5 = tail call i32 @llvm.fshl.i32(i32 %add122.3, i32 %add122.3, i32 30), !BLADE-T !8
  %or125.4 = tail call i32 @llvm.fshl.i32(i32 %add122.2, i32 %add122.2, i32 30), !BLADE-T !8
  %or109.5 = tail call i32 @llvm.fshl.i32(i32 %add122.4, i32 %add122.4, i32 5), !BLADE-T !8
  %add115.5 = add i32 %or125.2, %or109.5
  %and111262.5 = xor i32 %or125.3, %or125.4
  %xor112.5 = and i32 %and111262.5, %add122.3
  %and113.5 = and i32 %or125.3, %or125.4
  %xor114.5 = xor i32 %xor112.5, %and113.5
  %add116.5 = add i32 %add115.5, %xor114.5
  %add119.5 = add i32 %add116.5, %119
  %add122.5 = add i32 %add119.5, %125
  %or109.6 = tail call i32 @llvm.fshl.i32(i32 %add122.5, i32 %add122.5, i32 5), !BLADE-T !8
  %add115.6 = add i32 %or125.3, %or109.6
  %and111262.6 = xor i32 %or125.4, %or125.5
  %xor112.6 = and i32 %and111262.6, %add122.4
  %and113.6 = and i32 %or125.4, %or125.5
  %xor114.6 = xor i32 %xor112.6, %and113.6
  %add116.6 = add i32 %add115.6, %xor114.6
  %add119.6 = add i32 %add116.6, %119
  %add122.6 = add i32 %add119.6, %126
  %or109.7 = tail call i32 @llvm.fshl.i32(i32 %add122.6, i32 %add122.6, i32 5), !BLADE-T !8
  %add115.7 = add i32 %or125.4, %or109.7
  %and111262.7 = xor i32 %or125.5, %or125.6
  %xor112.7 = and i32 %and111262.7, %add122.5
  %and113.7 = and i32 %or125.5, %or125.6
  %xor114.7 = xor i32 %xor112.7, %and113.7
  %add116.7 = add i32 %add115.7, %xor114.7
  %add119.7 = add i32 %add116.7, %119
  %add122.7 = add i32 %add119.7, %127
  %or109.8 = tail call i32 @llvm.fshl.i32(i32 %add122.7, i32 %add122.7, i32 5), !BLADE-T !8
  %add115.8 = add i32 %or125.5, %or109.8
  %or125.7 = tail call i32 @llvm.fshl.i32(i32 %add122.5, i32 %add122.5, i32 30), !BLADE-T !8
  %and111262.8 = xor i32 %or125.6, %or125.7
  %xor112.8 = and i32 %and111262.8, %add122.6
  %and113.8 = and i32 %or125.6, %or125.7
  %xor114.8 = xor i32 %xor112.8, %and113.8
  %add116.8 = add i32 %add115.8, %xor114.8
  %add119.8 = add i32 %add116.8, %119
  %add122.8 = add i32 %add119.8, %128
  %or109.9 = tail call i32 @llvm.fshl.i32(i32 %add122.8, i32 %add122.8, i32 5), !BLADE-T !8
  %add115.9 = add i32 %or125.6, %or109.9
  %or125.8 = tail call i32 @llvm.fshl.i32(i32 %add122.6, i32 %add122.6, i32 30), !BLADE-T !8
  %and111262.9 = xor i32 %or125.7, %or125.8
  %xor112.9 = and i32 %and111262.9, %add122.7
  %and113.9 = and i32 %or125.7, %or125.8
  %xor114.9 = xor i32 %xor112.9, %and113.9
  %add116.9 = add i32 %add115.9, %xor114.9
  %add119.9 = add i32 %add116.9, %119
  %add122.9 = add i32 %add119.9, %129
  %or125.11 = tail call i32 @llvm.fshl.i32(i32 %add122.9, i32 %add122.9, i32 30), !BLADE-T !8
  %or125.10 = tail call i32 @llvm.fshl.i32(i32 %add122.8, i32 %add122.8, i32 30), !BLADE-T !8
  %or125.9 = tail call i32 @llvm.fshl.i32(i32 %add122.7, i32 %add122.7, i32 30), !BLADE-T !8
  %or109.10 = tail call i32 @llvm.fshl.i32(i32 %add122.9, i32 %add122.9, i32 5), !BLADE-T !8
  %add115.10 = add i32 %or125.7, %or109.10
  %and111262.10 = xor i32 %or125.8, %or125.9
  %xor112.10 = and i32 %and111262.10, %add122.8
  %and113.10 = and i32 %or125.8, %or125.9
  %xor114.10 = xor i32 %xor112.10, %and113.10
  %add116.10 = add i32 %add115.10, %xor114.10
  %add119.10 = add i32 %add116.10, %119
  %add122.10 = add i32 %add119.10, %130
  %or109.11 = tail call i32 @llvm.fshl.i32(i32 %add122.10, i32 %add122.10, i32 5), !BLADE-T !8
  %add115.11 = add i32 %or125.8, %or109.11
  %and111262.11 = xor i32 %or125.9, %or125.10
  %xor112.11 = and i32 %and111262.11, %add122.9
  %and113.11 = and i32 %or125.9, %or125.10
  %xor114.11 = xor i32 %xor112.11, %and113.11
  %add116.11 = add i32 %add115.11, %xor114.11
  %add119.11 = add i32 %add116.11, %119
  %add122.11 = add i32 %add119.11, %131
  %or109.12 = tail call i32 @llvm.fshl.i32(i32 %add122.11, i32 %add122.11, i32 5), !BLADE-T !8
  %add115.12 = add i32 %or125.9, %or109.12
  %and111262.12 = xor i32 %or125.10, %or125.11
  %xor112.12 = and i32 %and111262.12, %add122.10
  %and113.12 = and i32 %or125.10, %or125.11
  %xor114.12 = xor i32 %xor112.12, %and113.12
  %add116.12 = add i32 %add115.12, %xor114.12
  %add119.12 = add i32 %add116.12, %119
  %add122.12 = add i32 %add119.12, %132
  %or109.13 = tail call i32 @llvm.fshl.i32(i32 %add122.12, i32 %add122.12, i32 5), !BLADE-T !8
  %add115.13 = add i32 %or125.10, %or109.13
  %or125.12 = tail call i32 @llvm.fshl.i32(i32 %add122.10, i32 %add122.10, i32 30), !BLADE-T !8
  %and111262.13 = xor i32 %or125.11, %or125.12
  %xor112.13 = and i32 %and111262.13, %add122.11
  %and113.13 = and i32 %or125.11, %or125.12
  %xor114.13 = xor i32 %xor112.13, %and113.13
  %add116.13 = add i32 %add115.13, %xor114.13
  %add119.13 = add i32 %add116.13, %119
  %add122.13 = add i32 %add119.13, %133
  %or109.14 = tail call i32 @llvm.fshl.i32(i32 %add122.13, i32 %add122.13, i32 5), !BLADE-T !8
  %add115.14 = add i32 %or125.11, %or109.14
  %or125.13 = tail call i32 @llvm.fshl.i32(i32 %add122.11, i32 %add122.11, i32 30), !BLADE-T !8
  %and111262.14 = xor i32 %or125.12, %or125.13
  %xor112.14 = and i32 %and111262.14, %add122.12
  %and113.14 = and i32 %or125.12, %or125.13
  %xor114.14 = xor i32 %xor112.14, %and113.14
  %add116.14 = add i32 %add115.14, %xor114.14
  %add119.14 = add i32 %add116.14, %119
  %add122.14 = add i32 %add119.14, %134
  %or125.16 = tail call i32 @llvm.fshl.i32(i32 %add122.14, i32 %add122.14, i32 30), !BLADE-T !8
  %or125.15 = tail call i32 @llvm.fshl.i32(i32 %add122.13, i32 %add122.13, i32 30), !BLADE-T !8
  %or125.14 = tail call i32 @llvm.fshl.i32(i32 %add122.12, i32 %add122.12, i32 30), !BLADE-T !8
  %or109.15 = tail call i32 @llvm.fshl.i32(i32 %add122.14, i32 %add122.14, i32 5), !BLADE-T !8
  %add115.15 = add i32 %or125.12, %or109.15
  %and111262.15 = xor i32 %or125.13, %or125.14
  %xor112.15 = and i32 %and111262.15, %add122.13
  %and113.15 = and i32 %or125.13, %or125.14
  %xor114.15 = xor i32 %xor112.15, %and113.15
  %add116.15 = add i32 %add115.15, %xor114.15
  %add119.15 = add i32 %add116.15, %119
  %add122.15 = add i32 %add119.15, %135
  %or109.16 = tail call i32 @llvm.fshl.i32(i32 %add122.15, i32 %add122.15, i32 5), !BLADE-T !8
  %add115.16 = add i32 %or125.13, %or109.16
  %and111262.16 = xor i32 %or125.14, %or125.15
  %xor112.16 = and i32 %and111262.16, %add122.14
  %and113.16 = and i32 %or125.14, %or125.15
  %xor114.16 = xor i32 %xor112.16, %and113.16
  %add116.16 = add i32 %add115.16, %xor114.16
  %add119.16 = add i32 %add116.16, %119
  %add122.16 = add i32 %add119.16, %136
  %or109.17 = tail call i32 @llvm.fshl.i32(i32 %add122.16, i32 %add122.16, i32 5), !BLADE-T !8
  %add115.17 = add i32 %or125.14, %or109.17
  %and111262.17 = xor i32 %or125.15, %or125.16
  %xor112.17 = and i32 %and111262.17, %add122.15
  %and113.17 = and i32 %or125.15, %or125.16
  %xor114.17 = xor i32 %xor112.17, %and113.17
  %add116.17 = add i32 %add115.17, %xor114.17
  %add119.17 = add i32 %add116.17, %119
  %add122.17 = add i32 %add119.17, %137
  %or109.18 = tail call i32 @llvm.fshl.i32(i32 %add122.17, i32 %add122.17, i32 5), !BLADE-T !8
  %add115.18 = add i32 %or125.15, %or109.18
  %or125.17 = tail call i32 @llvm.fshl.i32(i32 %add122.15, i32 %add122.15, i32 30), !BLADE-T !8
  %and111262.18 = xor i32 %or125.16, %or125.17
  %xor112.18 = and i32 %and111262.18, %add122.16
  %and113.18 = and i32 %or125.16, %or125.17
  %xor114.18 = xor i32 %xor112.18, %and113.18
  %add116.18 = add i32 %add115.18, %xor114.18
  %add119.18 = add i32 %add116.18, %119
  %add122.18 = add i32 %add119.18, %138
  %or109.19 = tail call i32 @llvm.fshl.i32(i32 %add122.18, i32 %add122.18, i32 5), !BLADE-T !8
  %add115.19 = add i32 %or125.16, %or109.19
  %or125.18 = tail call i32 @llvm.fshl.i32(i32 %add122.16, i32 %add122.16, i32 30), !BLADE-T !8
  %and111262.19 = xor i32 %or125.17, %or125.18
  %xor112.19 = and i32 %and111262.19, %add122.17
  %and113.19 = and i32 %or125.17, %or125.18
  %xor114.19 = xor i32 %xor112.19, %and113.19
  %add116.19 = add i32 %add115.19, %xor114.19
  %add119.19 = add i32 %add116.19, %119
  %add122.19 = add i32 %add119.19, %139
  %or148.1 = tail call i32 @llvm.fshl.i32(i32 %add122.19, i32 %add122.19, i32 30), !BLADE-T !8
  %or125.19 = tail call i32 @llvm.fshl.i32(i32 %add122.17, i32 %add122.17, i32 30), !BLADE-T !8
  %xor136 = xor i32 %or125.19, %add122.18
  %xor137 = xor i32 %xor136, %or125.18
  %or135 = tail call i32 @llvm.fshl.i32(i32 %add122.19, i32 %add122.19, i32 5), !BLADE-T !8
  %add138 = add i32 %xor137, %or135
  %add139 = add i32 %add138, %or125.17
  call void @llvm.x86.sse2.lfence()
  %arrayidx141 = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 4, i64 3, !BLADE-S !7, !BLADE-T !8
  %140 = load i32, ptr %arrayidx141, align 4, !tbaa !12, !BLADE-T !8
  %add142 = add i32 %add139, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 60, !BLADE-S !7
  %141 = load i32, ptr %arrayidx144, align 16, !tbaa !12, !BLADE-T !8
  %add145 = add i32 %add142, %141
  %xor136.2 = xor i32 %or148.1, %add145
  %or148 = tail call i32 @llvm.fshl.i32(i32 %add122.18, i32 %add122.18, i32 30), !BLADE-T !8
  %xor137.2 = xor i32 %xor136.2, %or148
  %xor136.1 = xor i32 %or148, %add122.19
  %xor137.1 = xor i32 %xor136.1, %or125.19
  %or135.1 = tail call i32 @llvm.fshl.i32(i32 %add145, i32 %add145, i32 5), !BLADE-T !8
  %add138.1 = add i32 %xor137.1, %or135.1
  %add139.1 = add i32 %add138.1, %or125.18
  %add142.1 = add i32 %add139.1, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.1 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 61, !BLADE-S !7
  %142 = load i32, ptr %arrayidx144.1, align 4, !tbaa !12, !BLADE-T !8
  %add145.1 = add i32 %add142.1, %142
  %or135.2 = tail call i32 @llvm.fshl.i32(i32 %add145.1, i32 %add145.1, i32 5), !BLADE-T !8
  %add138.2 = add i32 %xor137.2, %or135.2
  %add139.2 = add i32 %add138.2, %or125.19
  %add142.2 = add i32 %add139.2, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.2 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 62, !BLADE-S !7
  %143 = load i32, ptr %arrayidx144.2, align 8, !tbaa !12, !BLADE-T !8
  %add145.2 = add i32 %add142.2, %143
  %or148.4 = tail call i32 @llvm.fshl.i32(i32 %add145.2, i32 %add145.2, i32 30), !BLADE-T !8
  %or148.2 = tail call i32 @llvm.fshl.i32(i32 %add145, i32 %add145, i32 30), !BLADE-T !8
  %xor136.3 = xor i32 %or148.2, %add145.1
  %xor137.3 = xor i32 %xor136.3, %or148.1
  %or135.3 = tail call i32 @llvm.fshl.i32(i32 %add145.2, i32 %add145.2, i32 5), !BLADE-T !8
  %add138.3 = add i32 %xor137.3, %or135.3
  %add139.3 = add i32 %add138.3, %or148
  %add142.3 = add i32 %add139.3, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.3 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 63, !BLADE-S !7
  %144 = load i32, ptr %arrayidx144.3, align 4, !tbaa !12, !BLADE-T !8
  %add145.3 = add i32 %add142.3, %144
  %xor136.5 = xor i32 %or148.4, %add145.3
  %or148.3 = tail call i32 @llvm.fshl.i32(i32 %add145.1, i32 %add145.1, i32 30), !BLADE-T !8
  %xor137.5 = xor i32 %xor136.5, %or148.3
  %xor136.4 = xor i32 %or148.3, %add145.2
  %xor137.4 = xor i32 %xor136.4, %or148.2
  %or135.4 = tail call i32 @llvm.fshl.i32(i32 %add145.3, i32 %add145.3, i32 5), !BLADE-T !8
  %add138.4 = add i32 %xor137.4, %or135.4
  %add139.4 = add i32 %add138.4, %or148.1
  %add142.4 = add i32 %add139.4, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.4 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 64, !BLADE-S !7
  %145 = load i32, ptr %arrayidx144.4, align 16, !tbaa !12, !BLADE-T !8
  %add145.4 = add i32 %add142.4, %145
  %or135.5 = tail call i32 @llvm.fshl.i32(i32 %add145.4, i32 %add145.4, i32 5), !BLADE-T !8
  %add138.5 = add i32 %xor137.5, %or135.5
  %add139.5 = add i32 %add138.5, %or148.2
  %add142.5 = add i32 %add139.5, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.5 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 65, !BLADE-S !7
  %146 = load i32, ptr %arrayidx144.5, align 4, !tbaa !12, !BLADE-T !8
  %add145.5 = add i32 %add142.5, %146
  %or148.7 = tail call i32 @llvm.fshl.i32(i32 %add145.5, i32 %add145.5, i32 30), !BLADE-T !8
  %or148.5 = tail call i32 @llvm.fshl.i32(i32 %add145.3, i32 %add145.3, i32 30), !BLADE-T !8
  %xor136.6 = xor i32 %or148.5, %add145.4
  %xor137.6 = xor i32 %xor136.6, %or148.4
  %or135.6 = tail call i32 @llvm.fshl.i32(i32 %add145.5, i32 %add145.5, i32 5), !BLADE-T !8
  %add138.6 = add i32 %xor137.6, %or135.6
  %add139.6 = add i32 %add138.6, %or148.3
  %add142.6 = add i32 %add139.6, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.6 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 66, !BLADE-S !7
  %147 = load i32, ptr %arrayidx144.6, align 8, !tbaa !12, !BLADE-T !8
  %add145.6 = add i32 %add142.6, %147
  %xor136.8 = xor i32 %or148.7, %add145.6
  %or148.6 = tail call i32 @llvm.fshl.i32(i32 %add145.4, i32 %add145.4, i32 30), !BLADE-T !8
  %xor137.8 = xor i32 %xor136.8, %or148.6
  %xor136.7 = xor i32 %or148.6, %add145.5
  %xor137.7 = xor i32 %xor136.7, %or148.5
  %or135.7 = tail call i32 @llvm.fshl.i32(i32 %add145.6, i32 %add145.6, i32 5), !BLADE-T !8
  %add138.7 = add i32 %xor137.7, %or135.7
  %add139.7 = add i32 %add138.7, %or148.4
  %add142.7 = add i32 %add139.7, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.7 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 67, !BLADE-S !7
  %148 = load i32, ptr %arrayidx144.7, align 4, !tbaa !12, !BLADE-T !8
  %add145.7 = add i32 %add142.7, %148
  %or135.8 = tail call i32 @llvm.fshl.i32(i32 %add145.7, i32 %add145.7, i32 5), !BLADE-T !8
  %add138.8 = add i32 %xor137.8, %or135.8
  %add139.8 = add i32 %add138.8, %or148.5
  %add142.8 = add i32 %add139.8, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.8 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 68, !BLADE-S !7
  %149 = load i32, ptr %arrayidx144.8, align 16, !tbaa !12, !BLADE-T !8
  %add145.8 = add i32 %add142.8, %149
  %or148.10 = tail call i32 @llvm.fshl.i32(i32 %add145.8, i32 %add145.8, i32 30), !BLADE-T !8
  %or148.8 = tail call i32 @llvm.fshl.i32(i32 %add145.6, i32 %add145.6, i32 30), !BLADE-T !8
  %xor136.9 = xor i32 %or148.8, %add145.7
  %xor137.9 = xor i32 %xor136.9, %or148.7
  %or135.9 = tail call i32 @llvm.fshl.i32(i32 %add145.8, i32 %add145.8, i32 5), !BLADE-T !8
  %add138.9 = add i32 %xor137.9, %or135.9
  %add139.9 = add i32 %add138.9, %or148.6
  %add142.9 = add i32 %add139.9, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.9 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 69, !BLADE-S !7
  %150 = load i32, ptr %arrayidx144.9, align 4, !tbaa !12, !BLADE-T !8
  %add145.9 = add i32 %add142.9, %150
  %xor136.11 = xor i32 %or148.10, %add145.9
  %or148.9 = tail call i32 @llvm.fshl.i32(i32 %add145.7, i32 %add145.7, i32 30), !BLADE-T !8
  %xor137.11 = xor i32 %xor136.11, %or148.9
  %xor136.10 = xor i32 %or148.9, %add145.8
  %xor137.10 = xor i32 %xor136.10, %or148.8
  %or135.10 = tail call i32 @llvm.fshl.i32(i32 %add145.9, i32 %add145.9, i32 5), !BLADE-T !8
  %add138.10 = add i32 %xor137.10, %or135.10
  %add139.10 = add i32 %add138.10, %or148.7
  %add142.10 = add i32 %add139.10, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.10 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 70, !BLADE-S !7
  %151 = load i32, ptr %arrayidx144.10, align 8, !tbaa !12, !BLADE-T !8
  %add145.10 = add i32 %add142.10, %151
  %or135.11 = tail call i32 @llvm.fshl.i32(i32 %add145.10, i32 %add145.10, i32 5), !BLADE-T !8
  %add138.11 = add i32 %xor137.11, %or135.11
  %add139.11 = add i32 %add138.11, %or148.8
  %add142.11 = add i32 %add139.11, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.11 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 71, !BLADE-S !7
  %152 = load i32, ptr %arrayidx144.11, align 4, !tbaa !12, !BLADE-T !8
  %add145.11 = add i32 %add142.11, %152
  %or148.13 = tail call i32 @llvm.fshl.i32(i32 %add145.11, i32 %add145.11, i32 30), !BLADE-T !8
  %or148.11 = tail call i32 @llvm.fshl.i32(i32 %add145.9, i32 %add145.9, i32 30), !BLADE-T !8
  %xor136.12 = xor i32 %or148.11, %add145.10
  %xor137.12 = xor i32 %xor136.12, %or148.10
  %or135.12 = tail call i32 @llvm.fshl.i32(i32 %add145.11, i32 %add145.11, i32 5), !BLADE-T !8
  %add138.12 = add i32 %xor137.12, %or135.12
  %add139.12 = add i32 %add138.12, %or148.9
  %add142.12 = add i32 %add139.12, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.12 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 72, !BLADE-S !7
  %153 = load i32, ptr %arrayidx144.12, align 16, !tbaa !12, !BLADE-T !8
  %add145.12 = add i32 %add142.12, %153
  %xor136.14 = xor i32 %or148.13, %add145.12
  %or148.12 = tail call i32 @llvm.fshl.i32(i32 %add145.10, i32 %add145.10, i32 30), !BLADE-T !8
  %xor137.14 = xor i32 %xor136.14, %or148.12
  %xor136.13 = xor i32 %or148.12, %add145.11
  %xor137.13 = xor i32 %xor136.13, %or148.11
  %or135.13 = tail call i32 @llvm.fshl.i32(i32 %add145.12, i32 %add145.12, i32 5), !BLADE-T !8
  %add138.13 = add i32 %xor137.13, %or135.13
  %add139.13 = add i32 %add138.13, %or148.10
  %add142.13 = add i32 %add139.13, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.13 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 73, !BLADE-S !7
  %154 = load i32, ptr %arrayidx144.13, align 4, !tbaa !12, !BLADE-T !8
  %add145.13 = add i32 %add142.13, %154
  %or135.14 = tail call i32 @llvm.fshl.i32(i32 %add145.13, i32 %add145.13, i32 5), !BLADE-T !8
  %add138.14 = add i32 %xor137.14, %or135.14
  %add139.14 = add i32 %add138.14, %or148.11
  %add142.14 = add i32 %add139.14, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.14 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 74, !BLADE-S !7
  %155 = load i32, ptr %arrayidx144.14, align 8, !tbaa !12, !BLADE-T !8
  %add145.14 = add i32 %add142.14, %155
  %or148.16 = tail call i32 @llvm.fshl.i32(i32 %add145.14, i32 %add145.14, i32 30), !BLADE-T !8
  %or148.14 = tail call i32 @llvm.fshl.i32(i32 %add145.12, i32 %add145.12, i32 30), !BLADE-T !8
  %xor136.15 = xor i32 %or148.14, %add145.13
  %xor137.15 = xor i32 %xor136.15, %or148.13
  %or135.15 = tail call i32 @llvm.fshl.i32(i32 %add145.14, i32 %add145.14, i32 5), !BLADE-T !8
  %add138.15 = add i32 %xor137.15, %or135.15
  %add139.15 = add i32 %add138.15, %or148.12
  %add142.15 = add i32 %add139.15, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.15 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 75, !BLADE-S !7
  %156 = load i32, ptr %arrayidx144.15, align 4, !tbaa !12, !BLADE-T !8
  %add145.15 = add i32 %add142.15, %156
  %xor136.17 = xor i32 %or148.16, %add145.15
  %or148.15 = tail call i32 @llvm.fshl.i32(i32 %add145.13, i32 %add145.13, i32 30), !BLADE-T !8
  %xor137.17 = xor i32 %xor136.17, %or148.15
  %xor136.16 = xor i32 %or148.15, %add145.14
  %xor137.16 = xor i32 %xor136.16, %or148.14
  %or135.16 = tail call i32 @llvm.fshl.i32(i32 %add145.15, i32 %add145.15, i32 5), !BLADE-T !8
  %add138.16 = add i32 %xor137.16, %or135.16
  %add139.16 = add i32 %add138.16, %or148.13
  %add142.16 = add i32 %add139.16, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.16 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 76, !BLADE-S !7
  %157 = load i32, ptr %arrayidx144.16, align 16, !tbaa !12, !BLADE-T !8
  %add145.16 = add i32 %add142.16, %157
  %or135.17 = tail call i32 @llvm.fshl.i32(i32 %add145.16, i32 %add145.16, i32 5), !BLADE-T !8
  %add138.17 = add i32 %xor137.17, %or135.17
  %add139.17 = add i32 %add138.17, %or148.14
  %add142.17 = add i32 %add139.17, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.17 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 77, !BLADE-S !7
  %158 = load i32, ptr %arrayidx144.17, align 4, !tbaa !12, !BLADE-T !8
  %add145.17 = add i32 %add142.17, %158
  %or148.19 = tail call i32 @llvm.fshl.i32(i32 %add145.17, i32 %add145.17, i32 30), !BLADE-T !8
  %or148.18 = tail call i32 @llvm.fshl.i32(i32 %add145.16, i32 %add145.16, i32 30), !BLADE-T !8
  %xor136.19 = xor i32 %or148.18, %add145.17
  %or148.17 = tail call i32 @llvm.fshl.i32(i32 %add145.15, i32 %add145.15, i32 30), !BLADE-T !8
  %xor137.19 = xor i32 %xor136.19, %or148.17
  %xor136.18 = xor i32 %or148.17, %add145.16
  %xor137.18 = xor i32 %xor136.18, %or148.16
  %or135.18 = tail call i32 @llvm.fshl.i32(i32 %add145.17, i32 %add145.17, i32 5), !BLADE-T !8
  %add138.18 = add i32 %xor137.18, %or135.18
  %add139.18 = add i32 %add138.18, %or148.15
  %add142.18 = add i32 %add139.18, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.18 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 78, !BLADE-S !7
  %159 = load i32, ptr %arrayidx144.18, align 8, !tbaa !12, !BLADE-T !8
  %add145.18 = add i32 %add142.18, %159
  %or135.19 = tail call i32 @llvm.fshl.i32(i32 %add145.18, i32 %add145.18, i32 5), !BLADE-T !8
  %add138.19 = add i32 %xor137.19, %or135.19
  %add139.19 = add i32 %add138.19, %or148.16
  %add142.19 = add i32 %add139.19, %140
  call void @llvm.x86.sse2.lfence()
  %arrayidx144.19 = getelementptr inbounds [80 x i32], ptr %m, i64 0, i64 79, !BLADE-S !7
  %160 = load i32, ptr %arrayidx144.19, align 4, !tbaa !12, !BLADE-T !8
  %add145.19 = add i32 %add142.19, %160
  %add154 = add i32 %add145.19, %72
  store i32 %add154, ptr %state, align 8, !tbaa !12
  %add157 = add i32 %add145.18, %73
  store i32 %add157, ptr %arrayidx51, align 4, !tbaa !12
  %add160 = add i32 %or148.19, %74
  store i32 %add160, ptr %arrayidx53, align 8, !tbaa !12
  %add163 = add i32 %or148.18, %75
  store i32 %add163, ptr %arrayidx55, align 4, !tbaa !12
  %add166 = add i32 %or148.17, %76
  store i32 %add166, ptr %arrayidx57, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %m) #10, !BLADE-T !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha1_init(ptr nocapture noundef writeonly %ctx) local_unnamed_addr #2 {
entry:
  %datalen = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 1
  store i32 0, ptr %datalen, align 8, !tbaa !16
  %bitlen = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 2
  store i64 0, ptr %bitlen, align 8, !tbaa !19
  %state = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 3
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %state, align 8, !tbaa !12
  %arrayidx8 = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 3, i64 4
  store <4 x i32> <i32 -1009589776, i32 1518500249, i32 1859775393, i32 -1894007588>, ptr %arrayidx8, align 8, !tbaa !12
  %arrayidx15 = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 4, i64 3
  store i32 -899497514, ptr %arrayidx15, align 4, !tbaa !12
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha1_update(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %data, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp18.not = icmp eq i64 %len, 0
  br i1 %cmp18.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %datalen = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 1
  %bitlen = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 2
  %.pre = load i32, ptr %datalen, align 8, !tbaa !16
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %0 = phi i32 [ %.pre, %for.body.lr.ph ], [ %4, %for.inc ]
  %i.019 = phi i64 [ 0, %for.body.lr.ph ], [ %inc8, %for.inc ]
  %arrayidx = getelementptr inbounds i8, ptr %data, i64 %i.019
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %idxprom = zext i32 %0 to i64
  %arrayidx2 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom
  store i8 %1, ptr %arrayidx2, align 1, !tbaa !9
  %2 = load i32, ptr %datalen, align 8, !tbaa !16
  %inc = add i32 %2, 1
  store i32 %inc, ptr %datalen, align 8, !tbaa !16
  %cmp5 = icmp eq i32 %inc, 64
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  tail call void @sha1_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %3 = load i64, ptr %bitlen, align 8, !tbaa !19
  %add = add i64 %3, 512
  store i64 %add, ptr %bitlen, align 8, !tbaa !19
  store i32 0, ptr %datalen, align 8, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %4 = phi i32 [ %inc, %for.body ], [ 0, %if.then ]
  %inc8 = add nuw i64 %i.019, 1
  %exitcond.not = icmp eq i64 %inc8, %len
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !20

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha1_final(ptr nocapture noundef %ctx, ptr nocapture noundef writeonly %hash) local_unnamed_addr #0 {
entry:
  %datalen = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 1
  %0 = load i32, ptr %datalen, align 8, !tbaa !16
  %cmp = icmp ult i32 %0, 56
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom
  store i8 -128, ptr %arrayidx, align 1, !tbaa !9
  %i.0169 = add i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp2170 = icmp ult i32 %i.0169, 56
  br i1 %cmp2170, label %while.body.preheader, label %if.end

while.body.preheader:                             ; preds = %if.then
  %1 = add nuw nsw i64 %idxprom, 1
  %uglygep174 = getelementptr i8, ptr %ctx, i64 %1
  %2 = sub nuw nsw i32 54, %0
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %uglygep174, i8 0, i64 %4, i1 false), !tbaa !9
  br label %if.end

if.else:                                          ; preds = %entry
  %cmp12167 = icmp ult i32 %i.0169, 64
  br i1 %cmp12167, label %while.body13.preheader, label %while.end18

while.body13.preheader:                           ; preds = %if.else
  %5 = zext i32 %i.0169 to i64
  %uglygep = getelementptr i8, ptr %ctx, i64 %5
  %6 = sub nsw i32 62, %0
  %7 = zext i32 %6 to i64
  %8 = add nuw nsw i64 %7, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %uglygep, i8 0, i64 %8, i1 false), !tbaa !9
  br label %while.end18

while.end18:                                      ; preds = %while.body13.preheader, %if.else
  tail call void @sha1_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %ctx, i8 0, i64 56, i1 false)
  br label %if.end

if.end:                                           ; preds = %while.end18, %while.body.preheader, %if.then
  %9 = load i32, ptr %datalen, align 8, !tbaa !16
  %mul = shl i32 %9, 3
  %conv = zext i32 %mul to i64
  %bitlen = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 2
  %10 = load i64, ptr %bitlen, align 8, !tbaa !19
  %add = add i64 %10, %conv
  store i64 %add, ptr %bitlen, align 8, !tbaa !19
  %conv24 = trunc i64 %add to i8
  %arrayidx26 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 63
  store i8 %conv24, ptr %arrayidx26, align 1, !tbaa !9
  %shr = lshr i64 %add, 8
  %conv28 = trunc i64 %shr to i8
  %arrayidx30 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 62
  store i8 %conv28, ptr %arrayidx30, align 2, !tbaa !9
  %shr32 = lshr i64 %add, 16
  %conv33 = trunc i64 %shr32 to i8
  %arrayidx35 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 61
  store i8 %conv33, ptr %arrayidx35, align 1, !tbaa !9
  %shr37 = lshr i64 %add, 24
  %conv38 = trunc i64 %shr37 to i8
  %arrayidx40 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 60
  store i8 %conv38, ptr %arrayidx40, align 4, !tbaa !9
  %shr42 = lshr i64 %add, 32
  %conv43 = trunc i64 %shr42 to i8
  %arrayidx45 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 59
  store i8 %conv43, ptr %arrayidx45, align 1, !tbaa !9
  %shr47 = lshr i64 %add, 40
  %conv48 = trunc i64 %shr47 to i8
  %arrayidx50 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 58
  store i8 %conv48, ptr %arrayidx50, align 2, !tbaa !9
  %shr52 = lshr i64 %add, 48
  %conv53 = trunc i64 %shr52 to i8
  %arrayidx55 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 57
  store i8 %conv53, ptr %arrayidx55, align 1, !tbaa !9
  %shr57 = lshr i64 %add, 56
  %conv58 = trunc i64 %shr57 to i8
  %arrayidx60 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 56
  store i8 %conv58, ptr %arrayidx60, align 8, !tbaa !9
  tail call void @sha1_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %state = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 3
  %arrayidx72 = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 3, i64 1
  %arrayidx82 = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 3, i64 2
  %arrayidx92 = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 3, i64 3
  %arrayidx102 = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 3, i64 4
  %11 = load i32, ptr %state, align 8, !tbaa !12
  %shr67 = lshr i32 %11, 24
  %conv68 = trunc i32 %shr67 to i8
  store i8 %conv68, ptr %hash, align 1, !tbaa !9
  %12 = load i32, ptr %arrayidx72, align 4, !tbaa !12
  %shr75 = lshr i32 %12, 24
  %conv77 = trunc i32 %shr75 to i8
  %arrayidx80 = getelementptr inbounds i8, ptr %hash, i64 4
  store i8 %conv77, ptr %arrayidx80, align 1, !tbaa !9
  %13 = load i32, ptr %arrayidx82, align 8, !tbaa !12
  %shr85 = lshr i32 %13, 24
  %conv87 = trunc i32 %shr85 to i8
  %arrayidx90 = getelementptr inbounds i8, ptr %hash, i64 8
  store i8 %conv87, ptr %arrayidx90, align 1, !tbaa !9
  %14 = load i32, ptr %arrayidx92, align 4, !tbaa !12
  %shr95 = lshr i32 %14, 24
  %conv97 = trunc i32 %shr95 to i8
  %arrayidx100 = getelementptr inbounds i8, ptr %hash, i64 12
  store i8 %conv97, ptr %arrayidx100, align 1, !tbaa !9
  %15 = load i32, ptr %arrayidx102, align 8, !tbaa !12
  %shr105 = lshr i32 %15, 24
  %conv107 = trunc i32 %shr105 to i8
  %arrayidx110 = getelementptr inbounds i8, ptr %hash, i64 16
  store i8 %conv107, ptr %arrayidx110, align 1, !tbaa !9
  %16 = load i32, ptr %state, align 8, !tbaa !12
  %shr67.1 = lshr i32 %16, 16
  %conv68.1 = trunc i32 %shr67.1 to i8
  %arrayidx70.1 = getelementptr inbounds i8, ptr %hash, i64 1
  store i8 %conv68.1, ptr %arrayidx70.1, align 1, !tbaa !9
  %17 = load i32, ptr %arrayidx72, align 4, !tbaa !12
  %shr75.1 = lshr i32 %17, 16
  %conv77.1 = trunc i32 %shr75.1 to i8
  %arrayidx80.1 = getelementptr inbounds i8, ptr %hash, i64 5
  store i8 %conv77.1, ptr %arrayidx80.1, align 1, !tbaa !9
  %18 = load i32, ptr %arrayidx82, align 8, !tbaa !12
  %shr85.1 = lshr i32 %18, 16
  %conv87.1 = trunc i32 %shr85.1 to i8
  %arrayidx90.1 = getelementptr inbounds i8, ptr %hash, i64 9
  store i8 %conv87.1, ptr %arrayidx90.1, align 1, !tbaa !9
  %19 = load i32, ptr %arrayidx92, align 4, !tbaa !12
  %shr95.1 = lshr i32 %19, 16
  %conv97.1 = trunc i32 %shr95.1 to i8
  %arrayidx100.1 = getelementptr inbounds i8, ptr %hash, i64 13
  store i8 %conv97.1, ptr %arrayidx100.1, align 1, !tbaa !9
  %20 = load i32, ptr %arrayidx102, align 8, !tbaa !12
  %shr105.1 = lshr i32 %20, 16
  %conv107.1 = trunc i32 %shr105.1 to i8
  %arrayidx110.1 = getelementptr inbounds i8, ptr %hash, i64 17
  store i8 %conv107.1, ptr %arrayidx110.1, align 1, !tbaa !9
  %21 = load i32, ptr %state, align 8, !tbaa !12
  %shr67.2 = lshr i32 %21, 8
  %conv68.2 = trunc i32 %shr67.2 to i8
  %arrayidx70.2 = getelementptr inbounds i8, ptr %hash, i64 2
  store i8 %conv68.2, ptr %arrayidx70.2, align 1, !tbaa !9
  %22 = load i32, ptr %arrayidx72, align 4, !tbaa !12
  %shr75.2 = lshr i32 %22, 8
  %conv77.2 = trunc i32 %shr75.2 to i8
  %arrayidx80.2 = getelementptr inbounds i8, ptr %hash, i64 6
  store i8 %conv77.2, ptr %arrayidx80.2, align 1, !tbaa !9
  %23 = load i32, ptr %arrayidx82, align 8, !tbaa !12
  %shr85.2 = lshr i32 %23, 8
  %conv87.2 = trunc i32 %shr85.2 to i8
  %arrayidx90.2 = getelementptr inbounds i8, ptr %hash, i64 10
  store i8 %conv87.2, ptr %arrayidx90.2, align 1, !tbaa !9
  %24 = load i32, ptr %arrayidx92, align 4, !tbaa !12
  %shr95.2 = lshr i32 %24, 8
  %conv97.2 = trunc i32 %shr95.2 to i8
  %arrayidx100.2 = getelementptr inbounds i8, ptr %hash, i64 14
  store i8 %conv97.2, ptr %arrayidx100.2, align 1, !tbaa !9
  %25 = load i32, ptr %arrayidx102, align 8, !tbaa !12
  %shr105.2 = lshr i32 %25, 8
  %conv107.2 = trunc i32 %shr105.2 to i8
  %arrayidx110.2 = getelementptr inbounds i8, ptr %hash, i64 18
  store i8 %conv107.2, ptr %arrayidx110.2, align 1, !tbaa !9
  %26 = load i32, ptr %state, align 8, !tbaa !12
  %conv68.3 = trunc i32 %26 to i8
  %arrayidx70.3 = getelementptr inbounds i8, ptr %hash, i64 3
  store i8 %conv68.3, ptr %arrayidx70.3, align 1, !tbaa !9
  %27 = load i32, ptr %arrayidx72, align 4, !tbaa !12
  %conv77.3 = trunc i32 %27 to i8
  %arrayidx80.3 = getelementptr inbounds i8, ptr %hash, i64 7
  store i8 %conv77.3, ptr %arrayidx80.3, align 1, !tbaa !9
  %28 = load i32, ptr %arrayidx82, align 8, !tbaa !12
  %conv87.3 = trunc i32 %28 to i8
  %arrayidx90.3 = getelementptr inbounds i8, ptr %hash, i64 11
  store i8 %conv87.3, ptr %arrayidx90.3, align 1, !tbaa !9
  %29 = load i32, ptr %arrayidx92, align 4, !tbaa !12
  %conv97.3 = trunc i32 %29 to i8
  %arrayidx100.3 = getelementptr inbounds i8, ptr %hash, i64 15
  store i8 %conv97.3, ptr %arrayidx100.3, align 1, !tbaa !9
  %30 = load i32, ptr %arrayidx102, align 8, !tbaa !12
  %conv107.3 = trunc i32 %30 to i8
  %arrayidx110.3 = getelementptr inbounds i8, ptr %hash, i64 19
  store i8 %conv107.3, ptr %arrayidx110.3, align 1, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @sha1_test() local_unnamed_addr #4 {
entry:
  %text1 = alloca [4 x i8], align 4
  %buf = alloca [20 x i8], align 16
  %ctx = alloca %struct.SHA1_CTX, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %text1) #10
  store i32 6513249, ptr %text1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #10
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %ctx) #10
  %datalen.i = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 1
  store i32 0, ptr %datalen.i, align 8, !tbaa !16
  %bitlen.i = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 2
  store i64 0, ptr %bitlen.i, align 8, !tbaa !19
  %state.i = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 3
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %state.i, align 8, !tbaa !12
  %arrayidx8.i = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 3, i64 4
  store <4 x i32> <i32 -1009589776, i32 1518500249, i32 1859775393, i32 -1894007588>, ptr %arrayidx8.i, align 8, !tbaa !12
  %arrayidx15.i = getelementptr inbounds %struct.SHA1_CTX, ptr %ctx, i64 0, i32 4, i64 3
  store i32 -899497514, ptr %arrayidx15.i, align 8, !tbaa !12
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %text1) #11
  %cmp18.not.i = icmp eq i64 %call, 0
  br i1 %cmp18.not.i, label %sha1_update.exit, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %entry
  %0 = phi i32 [ %4, %for.inc.i ], [ 0, %entry ]
  %i.019.i = phi i64 [ %inc8.i, %for.inc.i ], [ 0, %entry ]
  %arrayidx.i = getelementptr inbounds i8, ptr %text1, i64 %i.019.i
  %1 = load i8, ptr %arrayidx.i, align 1, !tbaa !9
  %idxprom.i = zext i32 %0 to i64
  %arrayidx2.i41 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom.i
  store i8 %1, ptr %arrayidx2.i41, align 1, !tbaa !9
  %2 = load i32, ptr %datalen.i, align 8, !tbaa !16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, ptr %datalen.i, align 8, !tbaa !16
  %cmp5.i = icmp eq i32 %inc.i, 64
  br i1 %cmp5.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @sha1_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %3 = load i64, ptr %bitlen.i, align 8, !tbaa !19
  %add.i = add i64 %3, 512
  store i64 %add.i, ptr %bitlen.i, align 8, !tbaa !19
  store i32 0, ptr %datalen.i, align 8, !tbaa !16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %4 = phi i32 [ %inc.i, %for.body.i ], [ 0, %if.then.i ]
  %inc8.i = add nuw i64 %i.019.i, 1
  %exitcond.not.i = icmp eq i64 %inc8.i, %call
  br i1 %exitcond.not.i, label %sha1_update.exit, label %for.body.i, !llvm.loop !20

sha1_update.exit:                                 ; preds = %for.inc.i, %entry
  call void @sha1_final(ptr noundef nonnull %ctx, ptr noundef nonnull %buf)
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(20) @__const.sha1_test.hash1, ptr noundef nonnull dereferenceable(20) %buf, i64 20)
  store i32 0, ptr %datalen.i, align 8, !tbaa !16
  store i64 0, ptr %bitlen.i, align 8, !tbaa !19
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %state.i, align 8, !tbaa !12
  store <4 x i32> <i32 -1009589776, i32 1518500249, i32 1859775393, i32 -1894007588>, ptr %arrayidx8.i, align 8, !tbaa !12
  store i32 -899497514, ptr %arrayidx15.i, align 8, !tbaa !12
  br label %for.body.i64

for.body.i64:                                     ; preds = %for.inc.i69, %sha1_update.exit
  %5 = phi i32 [ %9, %for.inc.i69 ], [ 0, %sha1_update.exit ]
  %i.019.i58 = phi i64 [ %inc8.i67, %for.inc.i69 ], [ 0, %sha1_update.exit ]
  %arrayidx.i59 = getelementptr inbounds i8, ptr @__const.sha1_test.text2, i64 %i.019.i58
  %6 = load i8, ptr %arrayidx.i59, align 1, !tbaa !9
  %idxprom.i60 = zext i32 %5 to i64
  %arrayidx2.i61 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom.i60
  store i8 %6, ptr %arrayidx2.i61, align 1, !tbaa !9
  %7 = load i32, ptr %datalen.i, align 8, !tbaa !16
  %inc.i62 = add i32 %7, 1
  store i32 %inc.i62, ptr %datalen.i, align 8, !tbaa !16
  %cmp5.i63 = icmp eq i32 %inc.i62, 64
  br i1 %cmp5.i63, label %if.then.i66, label %for.inc.i69

if.then.i66:                                      ; preds = %for.body.i64
  call void @sha1_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %8 = load i64, ptr %bitlen.i, align 8, !tbaa !19
  %add.i65 = add i64 %8, 512
  store i64 %add.i65, ptr %bitlen.i, align 8, !tbaa !19
  store i32 0, ptr %datalen.i, align 8, !tbaa !16
  br label %for.inc.i69

for.inc.i69:                                      ; preds = %if.then.i66, %for.body.i64
  %9 = phi i32 [ %inc.i62, %for.body.i64 ], [ 0, %if.then.i66 ]
  %inc8.i67 = add nuw nsw i64 %i.019.i58, 1
  %exitcond.not.i68 = icmp eq i64 %inc8.i67, 56
  br i1 %exitcond.not.i68, label %sha1_update.exit70, label %for.body.i64, !llvm.loop !20

sha1_update.exit70:                               ; preds = %for.inc.i69
  %tobool6.not = icmp eq i32 %bcmp, 0
  call void @sha1_final(ptr noundef nonnull %ctx, ptr noundef nonnull %buf)
  br i1 %tobool6.not, label %land.rhs12, label %land.end18

land.rhs12:                                       ; preds = %sha1_update.exit70
  %bcmp38 = call i32 @bcmp(ptr noundef nonnull dereferenceable(20) @__const.sha1_test.hash2, ptr noundef nonnull dereferenceable(20) %buf, i64 20)
  %tobool16.not = icmp eq i32 %bcmp38, 0
  br label %land.end18

land.end18:                                       ; preds = %land.rhs12, %sha1_update.exit70
  %10 = phi i1 [ false, %sha1_update.exit70 ], [ %tobool16.not, %land.rhs12 ]
  store i32 0, ptr %datalen.i, align 8, !tbaa !16
  store i64 0, ptr %bitlen.i, align 8, !tbaa !19
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %state.i, align 8, !tbaa !12
  store <4 x i32> <i32 -1009589776, i32 1518500249, i32 1859775393, i32 -1894007588>, ptr %arrayidx8.i, align 8, !tbaa !12
  store i32 -899497514, ptr %arrayidx15.i, align 8, !tbaa !12
  br label %for.body.lr.ph.i86

for.body.lr.ph.i86:                               ; preds = %for.inc.i98.9, %land.end18
  %.pre.i85 = phi i32 [ 0, %land.end18 ], [ %.pre.i85102, %for.inc.i98.9 ]
  %idx.0100 = phi i32 [ 0, %land.end18 ], [ %inc, %for.inc.i98.9 ]
  %idxprom.i89 = zext i32 %.pre.i85 to i64
  %arrayidx2.i90 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom.i89
  store i8 97, ptr %arrayidx2.i90, align 1, !tbaa !9
  %11 = load i32, ptr %datalen.i, align 8, !tbaa !16
  %inc.i91 = add i32 %11, 1
  store i32 %inc.i91, ptr %datalen.i, align 8, !tbaa !16
  %cmp5.i92 = icmp eq i32 %inc.i91, 64
  br i1 %cmp5.i92, label %if.then.i95, label %for.inc.i98

if.then.i95:                                      ; preds = %for.body.lr.ph.i86
  call void @sha1_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %12 = load i64, ptr %bitlen.i, align 8, !tbaa !19
  %add.i94 = add i64 %12, 512
  store i64 %add.i94, ptr %bitlen.i, align 8, !tbaa !19
  store i32 0, ptr %datalen.i, align 8, !tbaa !16
  br label %for.inc.i98

for.inc.i98:                                      ; preds = %if.then.i95, %for.body.lr.ph.i86
  %13 = phi i32 [ %inc.i91, %for.body.lr.ph.i86 ], [ 0, %if.then.i95 ]
  %idxprom.i89.1 = zext i32 %13 to i64
  %arrayidx2.i90.1 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom.i89.1
  store i8 97, ptr %arrayidx2.i90.1, align 1, !tbaa !9
  %14 = load i32, ptr %datalen.i, align 8, !tbaa !16
  %inc.i91.1 = add i32 %14, 1
  store i32 %inc.i91.1, ptr %datalen.i, align 8, !tbaa !16
  %cmp5.i92.1 = icmp eq i32 %inc.i91.1, 64
  br i1 %cmp5.i92.1, label %if.then.i95.1, label %for.inc.i98.1

if.then.i95.1:                                    ; preds = %for.inc.i98
  call void @sha1_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %15 = load i64, ptr %bitlen.i, align 8, !tbaa !19
  %add.i94.1 = add i64 %15, 512
  store i64 %add.i94.1, ptr %bitlen.i, align 8, !tbaa !19
  store i32 0, ptr %datalen.i, align 8, !tbaa !16
  br label %for.inc.i98.1

for.inc.i98.1:                                    ; preds = %if.then.i95.1, %for.inc.i98
  %16 = phi i32 [ %inc.i91.1, %for.inc.i98 ], [ 0, %if.then.i95.1 ]
  %idxprom.i89.2 = zext i32 %16 to i64
  %arrayidx2.i90.2 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom.i89.2
  store i8 97, ptr %arrayidx2.i90.2, align 1, !tbaa !9
  %17 = load i32, ptr %datalen.i, align 8, !tbaa !16
  %inc.i91.2 = add i32 %17, 1
  store i32 %inc.i91.2, ptr %datalen.i, align 8, !tbaa !16
  %cmp5.i92.2 = icmp eq i32 %inc.i91.2, 64
  br i1 %cmp5.i92.2, label %if.then.i95.2, label %for.inc.i98.2

if.then.i95.2:                                    ; preds = %for.inc.i98.1
  call void @sha1_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %18 = load i64, ptr %bitlen.i, align 8, !tbaa !19
  %add.i94.2 = add i64 %18, 512
  store i64 %add.i94.2, ptr %bitlen.i, align 8, !tbaa !19
  store i32 0, ptr %datalen.i, align 8, !tbaa !16
  br label %for.inc.i98.2

for.inc.i98.2:                                    ; preds = %if.then.i95.2, %for.inc.i98.1
  %19 = phi i32 [ %inc.i91.2, %for.inc.i98.1 ], [ 0, %if.then.i95.2 ]
  %idxprom.i89.3 = zext i32 %19 to i64
  %arrayidx2.i90.3 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom.i89.3
  store i8 97, ptr %arrayidx2.i90.3, align 1, !tbaa !9
  %20 = load i32, ptr %datalen.i, align 8, !tbaa !16
  %inc.i91.3 = add i32 %20, 1
  store i32 %inc.i91.3, ptr %datalen.i, align 8, !tbaa !16
  %cmp5.i92.3 = icmp eq i32 %inc.i91.3, 64
  br i1 %cmp5.i92.3, label %if.then.i95.3, label %for.inc.i98.3

if.then.i95.3:                                    ; preds = %for.inc.i98.2
  call void @sha1_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %21 = load i64, ptr %bitlen.i, align 8, !tbaa !19
  %add.i94.3 = add i64 %21, 512
  store i64 %add.i94.3, ptr %bitlen.i, align 8, !tbaa !19
  store i32 0, ptr %datalen.i, align 8, !tbaa !16
  br label %for.inc.i98.3

for.inc.i98.3:                                    ; preds = %if.then.i95.3, %for.inc.i98.2
  %22 = phi i32 [ %inc.i91.3, %for.inc.i98.2 ], [ 0, %if.then.i95.3 ]
  %idxprom.i89.4 = zext i32 %22 to i64
  %arrayidx2.i90.4 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom.i89.4
  store i8 97, ptr %arrayidx2.i90.4, align 1, !tbaa !9
  %23 = load i32, ptr %datalen.i, align 8, !tbaa !16
  %inc.i91.4 = add i32 %23, 1
  store i32 %inc.i91.4, ptr %datalen.i, align 8, !tbaa !16
  %cmp5.i92.4 = icmp eq i32 %inc.i91.4, 64
  br i1 %cmp5.i92.4, label %if.then.i95.4, label %for.inc.i98.4

if.then.i95.4:                                    ; preds = %for.inc.i98.3
  call void @sha1_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %24 = load i64, ptr %bitlen.i, align 8, !tbaa !19
  %add.i94.4 = add i64 %24, 512
  store i64 %add.i94.4, ptr %bitlen.i, align 8, !tbaa !19
  store i32 0, ptr %datalen.i, align 8, !tbaa !16
  br label %for.inc.i98.4

for.inc.i98.4:                                    ; preds = %if.then.i95.4, %for.inc.i98.3
  %25 = phi i32 [ %inc.i91.4, %for.inc.i98.3 ], [ 0, %if.then.i95.4 ]
  %idxprom.i89.5 = zext i32 %25 to i64
  %arrayidx2.i90.5 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom.i89.5
  store i8 97, ptr %arrayidx2.i90.5, align 1, !tbaa !9
  %26 = load i32, ptr %datalen.i, align 8, !tbaa !16
  %inc.i91.5 = add i32 %26, 1
  store i32 %inc.i91.5, ptr %datalen.i, align 8, !tbaa !16
  %cmp5.i92.5 = icmp eq i32 %inc.i91.5, 64
  br i1 %cmp5.i92.5, label %if.then.i95.5, label %for.inc.i98.5

if.then.i95.5:                                    ; preds = %for.inc.i98.4
  call void @sha1_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %27 = load i64, ptr %bitlen.i, align 8, !tbaa !19
  %add.i94.5 = add i64 %27, 512
  store i64 %add.i94.5, ptr %bitlen.i, align 8, !tbaa !19
  store i32 0, ptr %datalen.i, align 8, !tbaa !16
  br label %for.inc.i98.5

for.inc.i98.5:                                    ; preds = %if.then.i95.5, %for.inc.i98.4
  %28 = phi i32 [ %inc.i91.5, %for.inc.i98.4 ], [ 0, %if.then.i95.5 ]
  %idxprom.i89.6 = zext i32 %28 to i64
  %arrayidx2.i90.6 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom.i89.6
  store i8 97, ptr %arrayidx2.i90.6, align 1, !tbaa !9
  %29 = load i32, ptr %datalen.i, align 8, !tbaa !16
  %inc.i91.6 = add i32 %29, 1
  store i32 %inc.i91.6, ptr %datalen.i, align 8, !tbaa !16
  %cmp5.i92.6 = icmp eq i32 %inc.i91.6, 64
  br i1 %cmp5.i92.6, label %if.then.i95.6, label %for.inc.i98.6

if.then.i95.6:                                    ; preds = %for.inc.i98.5
  call void @sha1_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %30 = load i64, ptr %bitlen.i, align 8, !tbaa !19
  %add.i94.6 = add i64 %30, 512
  store i64 %add.i94.6, ptr %bitlen.i, align 8, !tbaa !19
  store i32 0, ptr %datalen.i, align 8, !tbaa !16
  br label %for.inc.i98.6

for.inc.i98.6:                                    ; preds = %if.then.i95.6, %for.inc.i98.5
  %31 = phi i32 [ %inc.i91.6, %for.inc.i98.5 ], [ 0, %if.then.i95.6 ]
  %idxprom.i89.7 = zext i32 %31 to i64
  %arrayidx2.i90.7 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom.i89.7
  store i8 97, ptr %arrayidx2.i90.7, align 1, !tbaa !9
  %32 = load i32, ptr %datalen.i, align 8, !tbaa !16
  %inc.i91.7 = add i32 %32, 1
  store i32 %inc.i91.7, ptr %datalen.i, align 8, !tbaa !16
  %cmp5.i92.7 = icmp eq i32 %inc.i91.7, 64
  br i1 %cmp5.i92.7, label %if.then.i95.7, label %for.inc.i98.7

if.then.i95.7:                                    ; preds = %for.inc.i98.6
  call void @sha1_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %33 = load i64, ptr %bitlen.i, align 8, !tbaa !19
  %add.i94.7 = add i64 %33, 512
  store i64 %add.i94.7, ptr %bitlen.i, align 8, !tbaa !19
  store i32 0, ptr %datalen.i, align 8, !tbaa !16
  br label %for.inc.i98.7

for.inc.i98.7:                                    ; preds = %if.then.i95.7, %for.inc.i98.6
  %34 = phi i32 [ %inc.i91.7, %for.inc.i98.6 ], [ 0, %if.then.i95.7 ]
  %idxprom.i89.8 = zext i32 %34 to i64
  %arrayidx2.i90.8 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom.i89.8
  store i8 97, ptr %arrayidx2.i90.8, align 1, !tbaa !9
  %35 = load i32, ptr %datalen.i, align 8, !tbaa !16
  %inc.i91.8 = add i32 %35, 1
  store i32 %inc.i91.8, ptr %datalen.i, align 8, !tbaa !16
  %cmp5.i92.8 = icmp eq i32 %inc.i91.8, 64
  br i1 %cmp5.i92.8, label %if.then.i95.8, label %for.inc.i98.8

if.then.i95.8:                                    ; preds = %for.inc.i98.7
  call void @sha1_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %36 = load i64, ptr %bitlen.i, align 8, !tbaa !19
  %add.i94.8 = add i64 %36, 512
  store i64 %add.i94.8, ptr %bitlen.i, align 8, !tbaa !19
  store i32 0, ptr %datalen.i, align 8, !tbaa !16
  br label %for.inc.i98.8

for.inc.i98.8:                                    ; preds = %if.then.i95.8, %for.inc.i98.7
  %37 = phi i32 [ %inc.i91.8, %for.inc.i98.7 ], [ 0, %if.then.i95.8 ]
  %idxprom.i89.9 = zext i32 %37 to i64
  %arrayidx2.i90.9 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom.i89.9
  store i8 97, ptr %arrayidx2.i90.9, align 1, !tbaa !9
  %38 = load i32, ptr %datalen.i, align 8, !tbaa !16
  %inc.i91.9 = add i32 %38, 1
  store i32 %inc.i91.9, ptr %datalen.i, align 8, !tbaa !16
  %cmp5.i92.9 = icmp eq i32 %inc.i91.9, 64
  br i1 %cmp5.i92.9, label %if.then.i95.9, label %for.inc.i98.9

if.then.i95.9:                                    ; preds = %for.inc.i98.8
  call void @sha1_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %39 = load i64, ptr %bitlen.i, align 8, !tbaa !19
  %add.i94.9 = add i64 %39, 512
  store i64 %add.i94.9, ptr %bitlen.i, align 8, !tbaa !19
  store i32 0, ptr %datalen.i, align 8, !tbaa !16
  br label %for.inc.i98.9

for.inc.i98.9:                                    ; preds = %if.then.i95.9, %for.inc.i98.8
  %.pre.i85102 = phi i32 [ 0, %if.then.i95.9 ], [ %inc.i91.9, %for.inc.i98.8 ]
  %inc = add nuw nsw i32 %idx.0100, 1
  %exitcond.not = icmp eq i32 %inc, 100000
  br i1 %exitcond.not, label %for.end, label %for.body.lr.ph.i86, !llvm.loop !21

for.end:                                          ; preds = %for.inc.i98.9
  call void @sha1_final(ptr noundef nonnull %ctx, ptr noundef nonnull %buf)
  br i1 %10, label %land.rhs25, label %land.end31

land.rhs25:                                       ; preds = %for.end
  %bcmp37 = call i32 @bcmp(ptr noundef nonnull dereferenceable(20) @__const.sha1_test.hash3, ptr noundef nonnull dereferenceable(20) %buf, i64 20)
  %tobool29.not = icmp eq i32 %bcmp37, 0
  %40 = zext i1 %tobool29.not to i32
  br label %land.end31

land.end31:                                       ; preds = %land.rhs25, %for.end
  %land.ext32 = phi i32 [ 0, %for.end ], [ %40, %land.rhs25 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %ctx) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %text1) #10
  ret i32 %land.ext32
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #6 {
entry:
  %call = tail call i32 @sha1_test()
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, ptr @.str.2, ptr @.str.1
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  ret i32 0

for.body:                                         ; preds = %for.body, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %cond)
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !22
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
!7 = !{!"Blade Stable"}
!8 = !{!"Blade Transient"}
!9 = !{!10, !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !10, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !13, i64 64}
!17 = !{!"", !10, i64 0, !13, i64 64, !18, i64 72, !10, i64 80, !10, i64 100}
!18 = !{!"long long", !10, i64 0}
!19 = !{!17, !18, i64 72}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
