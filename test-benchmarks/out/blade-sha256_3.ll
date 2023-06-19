; ModuleID = 'sha256_3.ll'
source_filename = "sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA256_CTX = type { [64 x i8], i32, i64, [8 x i32] }

@k = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16
@__const.sha256_test.text2 = private unnamed_addr constant [57 x i8] c"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq\00", align 16
@__const.sha256_test.hash1 = private unnamed_addr constant [32 x i8] c"\BAx\16\BF\8F\01\CF\EAAA@\DE]\AE\22#\B0\03a\A3\96\17z\9C\B4\10\FFa\F2\00\15\AD", align 16
@__const.sha256_test.hash2 = private unnamed_addr constant [32 x i8] c"$\8Dja\D2\068\B8\E5\C0&\93\0C>`9\A3<\E4Yd\FF!g\F6\EC\ED\D4\19\DB\06\C1", align 16
@__const.sha256_test.hash3 = private unnamed_addr constant [32 x i8] c"\CD\C7n\\\99\14\FB\92\81\A1\C7\E2\84\D7>g\F1\80\9AH\A4\97 \0E\04m9\CC\C7\11,\D0", align 16
@.str = private unnamed_addr constant [19 x i8] c"SHA-256 tests: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SUCCEEDED\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_transform(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %data) local_unnamed_addr #0 {
for.body22.preheader:
  %m = alloca [64 x i32], align 16, !BLADE-S !7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %m) #10, !BLADE-T !8
  %0 = load i8, ptr %data, align 1, !tbaa !9, !BLADE-T !8
  %conv = zext i8 %0 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx2 = getelementptr inbounds i8, ptr %data, i64 1, !BLADE-S !7, !BLADE-T !8
  %1 = load i8, ptr %arrayidx2, align 1, !tbaa !9, !BLADE-T !8
  %conv3 = zext i8 %1 to i32
  %shl4 = shl nuw nsw i32 %conv3, 16
  %or = or i32 %shl4, %shl
  %arrayidx7 = getelementptr inbounds i8, ptr %data, i64 2, !BLADE-S !7, !BLADE-T !8
  %2 = load i8, ptr %arrayidx7, align 1, !tbaa !9, !BLADE-T !8
  %conv8 = zext i8 %2 to i32
  %shl9 = shl nuw nsw i32 %conv8, 8
  %or10 = or i32 %or, %shl9
  %arrayidx13 = getelementptr inbounds i8, ptr %data, i64 3, !BLADE-S !7, !BLADE-T !8
  %3 = load i8, ptr %arrayidx13, align 1, !tbaa !9, !BLADE-T !8
  %conv14 = zext i8 %3 to i32
  %or15 = or i32 %or10, %conv14
  store i32 %or15, ptr %m, align 16, !tbaa !12
  %arrayidx.1 = getelementptr inbounds i8, ptr %data, i64 4, !BLADE-S !7, !BLADE-T !8
  %4 = load i8, ptr %arrayidx.1, align 1, !tbaa !9, !BLADE-T !8
  %conv.1 = zext i8 %4 to i32
  %shl.1 = shl nuw i32 %conv.1, 24
  %arrayidx2.1 = getelementptr inbounds i8, ptr %data, i64 5, !BLADE-S !7, !BLADE-T !8
  %5 = load i8, ptr %arrayidx2.1, align 1, !tbaa !9, !BLADE-T !8
  %conv3.1 = zext i8 %5 to i32
  %shl4.1 = shl nuw nsw i32 %conv3.1, 16
  %or.1 = or i32 %shl4.1, %shl.1
  %arrayidx7.1 = getelementptr inbounds i8, ptr %data, i64 6, !BLADE-S !7, !BLADE-T !8
  %6 = load i8, ptr %arrayidx7.1, align 1, !tbaa !9, !BLADE-T !8
  %conv8.1 = zext i8 %6 to i32
  %shl9.1 = shl nuw nsw i32 %conv8.1, 8
  %or10.1 = or i32 %or.1, %shl9.1
  %arrayidx13.1 = getelementptr inbounds i8, ptr %data, i64 7, !BLADE-S !7, !BLADE-T !8
  %7 = load i8, ptr %arrayidx13.1, align 1, !tbaa !9, !BLADE-T !8
  %conv14.1 = zext i8 %7 to i32
  %or15.1 = or i32 %or10.1, %conv14.1
  %arrayidx17.1 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 1
  store i32 %or15.1, ptr %arrayidx17.1, align 4, !tbaa !12
  %arrayidx.2 = getelementptr inbounds i8, ptr %data, i64 8, !BLADE-S !7, !BLADE-T !8
  %8 = load i8, ptr %arrayidx.2, align 1, !tbaa !9, !BLADE-T !8
  %conv.2 = zext i8 %8 to i32
  %shl.2 = shl nuw i32 %conv.2, 24
  %arrayidx2.2 = getelementptr inbounds i8, ptr %data, i64 9, !BLADE-S !7, !BLADE-T !8
  %9 = load i8, ptr %arrayidx2.2, align 1, !tbaa !9, !BLADE-T !8
  %conv3.2 = zext i8 %9 to i32
  %shl4.2 = shl nuw nsw i32 %conv3.2, 16
  %or.2 = or i32 %shl4.2, %shl.2
  %arrayidx7.2 = getelementptr inbounds i8, ptr %data, i64 10, !BLADE-S !7, !BLADE-T !8
  %10 = load i8, ptr %arrayidx7.2, align 1, !tbaa !9, !BLADE-T !8
  %conv8.2 = zext i8 %10 to i32
  %shl9.2 = shl nuw nsw i32 %conv8.2, 8
  %or10.2 = or i32 %or.2, %shl9.2
  %arrayidx13.2 = getelementptr inbounds i8, ptr %data, i64 11, !BLADE-S !7, !BLADE-T !8
  %11 = load i8, ptr %arrayidx13.2, align 1, !tbaa !9, !BLADE-T !8
  %conv14.2 = zext i8 %11 to i32
  %or15.2 = or i32 %or10.2, %conv14.2
  %arrayidx17.2 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 2
  store i32 %or15.2, ptr %arrayidx17.2, align 8, !tbaa !12
  %arrayidx.3 = getelementptr inbounds i8, ptr %data, i64 12, !BLADE-S !7, !BLADE-T !8
  %12 = load i8, ptr %arrayidx.3, align 1, !tbaa !9, !BLADE-T !8
  %conv.3 = zext i8 %12 to i32
  %shl.3 = shl nuw i32 %conv.3, 24
  %arrayidx2.3 = getelementptr inbounds i8, ptr %data, i64 13, !BLADE-S !7, !BLADE-T !8
  %13 = load i8, ptr %arrayidx2.3, align 1, !tbaa !9, !BLADE-T !8
  %conv3.3 = zext i8 %13 to i32
  %shl4.3 = shl nuw nsw i32 %conv3.3, 16
  %or.3 = or i32 %shl4.3, %shl.3
  %arrayidx7.3 = getelementptr inbounds i8, ptr %data, i64 14, !BLADE-S !7, !BLADE-T !8
  %14 = load i8, ptr %arrayidx7.3, align 1, !tbaa !9, !BLADE-T !8
  %conv8.3 = zext i8 %14 to i32
  %shl9.3 = shl nuw nsw i32 %conv8.3, 8
  %or10.3 = or i32 %or.3, %shl9.3
  %arrayidx13.3 = getelementptr inbounds i8, ptr %data, i64 15, !BLADE-S !7, !BLADE-T !8
  %15 = load i8, ptr %arrayidx13.3, align 1, !tbaa !9, !BLADE-T !8
  %conv14.3 = zext i8 %15 to i32
  %or15.3 = or i32 %or10.3, %conv14.3
  %arrayidx17.3 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 3
  store i32 %or15.3, ptr %arrayidx17.3, align 4, !tbaa !12
  %arrayidx.4 = getelementptr inbounds i8, ptr %data, i64 16, !BLADE-S !7, !BLADE-T !8
  %16 = load i8, ptr %arrayidx.4, align 1, !tbaa !9, !BLADE-T !8
  %conv.4 = zext i8 %16 to i32
  %shl.4 = shl nuw i32 %conv.4, 24
  %arrayidx2.4 = getelementptr inbounds i8, ptr %data, i64 17, !BLADE-S !7, !BLADE-T !8
  %17 = load i8, ptr %arrayidx2.4, align 1, !tbaa !9, !BLADE-T !8
  %conv3.4 = zext i8 %17 to i32
  %shl4.4 = shl nuw nsw i32 %conv3.4, 16
  %or.4 = or i32 %shl4.4, %shl.4
  %arrayidx7.4 = getelementptr inbounds i8, ptr %data, i64 18, !BLADE-S !7, !BLADE-T !8
  %18 = load i8, ptr %arrayidx7.4, align 1, !tbaa !9, !BLADE-T !8
  %conv8.4 = zext i8 %18 to i32
  %shl9.4 = shl nuw nsw i32 %conv8.4, 8
  %or10.4 = or i32 %or.4, %shl9.4
  %arrayidx13.4 = getelementptr inbounds i8, ptr %data, i64 19, !BLADE-S !7, !BLADE-T !8
  %19 = load i8, ptr %arrayidx13.4, align 1, !tbaa !9, !BLADE-T !8
  %conv14.4 = zext i8 %19 to i32
  %or15.4 = or i32 %or10.4, %conv14.4
  %arrayidx17.4 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 4
  store i32 %or15.4, ptr %arrayidx17.4, align 16, !tbaa !12
  %arrayidx.5 = getelementptr inbounds i8, ptr %data, i64 20, !BLADE-S !7, !BLADE-T !8
  %20 = load i8, ptr %arrayidx.5, align 1, !tbaa !9, !BLADE-T !8
  %conv.5 = zext i8 %20 to i32
  %shl.5 = shl nuw i32 %conv.5, 24
  %arrayidx2.5 = getelementptr inbounds i8, ptr %data, i64 21, !BLADE-S !7, !BLADE-T !8
  %21 = load i8, ptr %arrayidx2.5, align 1, !tbaa !9, !BLADE-T !8
  %conv3.5 = zext i8 %21 to i32
  %shl4.5 = shl nuw nsw i32 %conv3.5, 16
  %or.5 = or i32 %shl4.5, %shl.5
  %arrayidx7.5 = getelementptr inbounds i8, ptr %data, i64 22, !BLADE-S !7, !BLADE-T !8
  %22 = load i8, ptr %arrayidx7.5, align 1, !tbaa !9, !BLADE-T !8
  %conv8.5 = zext i8 %22 to i32
  %shl9.5 = shl nuw nsw i32 %conv8.5, 8
  %or10.5 = or i32 %or.5, %shl9.5
  %arrayidx13.5 = getelementptr inbounds i8, ptr %data, i64 23, !BLADE-S !7, !BLADE-T !8
  %23 = load i8, ptr %arrayidx13.5, align 1, !tbaa !9, !BLADE-T !8
  %conv14.5 = zext i8 %23 to i32
  %or15.5 = or i32 %or10.5, %conv14.5
  %arrayidx17.5 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 5
  store i32 %or15.5, ptr %arrayidx17.5, align 4, !tbaa !12
  %arrayidx.6 = getelementptr inbounds i8, ptr %data, i64 24, !BLADE-S !7, !BLADE-T !8
  %24 = load i8, ptr %arrayidx.6, align 1, !tbaa !9, !BLADE-T !8
  %conv.6 = zext i8 %24 to i32
  %shl.6 = shl nuw i32 %conv.6, 24
  %arrayidx2.6 = getelementptr inbounds i8, ptr %data, i64 25, !BLADE-S !7, !BLADE-T !8
  %25 = load i8, ptr %arrayidx2.6, align 1, !tbaa !9, !BLADE-T !8
  %conv3.6 = zext i8 %25 to i32
  %shl4.6 = shl nuw nsw i32 %conv3.6, 16
  %or.6 = or i32 %shl4.6, %shl.6
  %arrayidx7.6 = getelementptr inbounds i8, ptr %data, i64 26, !BLADE-S !7, !BLADE-T !8
  %26 = load i8, ptr %arrayidx7.6, align 1, !tbaa !9, !BLADE-T !8
  %conv8.6 = zext i8 %26 to i32
  %shl9.6 = shl nuw nsw i32 %conv8.6, 8
  %or10.6 = or i32 %or.6, %shl9.6
  %arrayidx13.6 = getelementptr inbounds i8, ptr %data, i64 27, !BLADE-S !7, !BLADE-T !8
  %27 = load i8, ptr %arrayidx13.6, align 1, !tbaa !9, !BLADE-T !8
  %conv14.6 = zext i8 %27 to i32
  %or15.6 = or i32 %or10.6, %conv14.6
  %arrayidx17.6 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 6
  store i32 %or15.6, ptr %arrayidx17.6, align 8, !tbaa !12
  %arrayidx.7 = getelementptr inbounds i8, ptr %data, i64 28, !BLADE-S !7, !BLADE-T !8
  %28 = load i8, ptr %arrayidx.7, align 1, !tbaa !9, !BLADE-T !8
  %conv.7 = zext i8 %28 to i32
  %shl.7 = shl nuw i32 %conv.7, 24
  %arrayidx2.7 = getelementptr inbounds i8, ptr %data, i64 29, !BLADE-S !7, !BLADE-T !8
  %29 = load i8, ptr %arrayidx2.7, align 1, !tbaa !9, !BLADE-T !8
  %conv3.7 = zext i8 %29 to i32
  %shl4.7 = shl nuw nsw i32 %conv3.7, 16
  %or.7 = or i32 %shl4.7, %shl.7
  %arrayidx7.7 = getelementptr inbounds i8, ptr %data, i64 30, !BLADE-S !7, !BLADE-T !8
  %30 = load i8, ptr %arrayidx7.7, align 1, !tbaa !9, !BLADE-T !8
  %conv8.7 = zext i8 %30 to i32
  %shl9.7 = shl nuw nsw i32 %conv8.7, 8
  %or10.7 = or i32 %or.7, %shl9.7
  %arrayidx13.7 = getelementptr inbounds i8, ptr %data, i64 31, !BLADE-S !7, !BLADE-T !8
  %31 = load i8, ptr %arrayidx13.7, align 1, !tbaa !9, !BLADE-T !8
  %conv14.7 = zext i8 %31 to i32
  %or15.7 = or i32 %or10.7, %conv14.7
  %arrayidx17.7 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 7
  store i32 %or15.7, ptr %arrayidx17.7, align 4, !tbaa !12
  %arrayidx.8 = getelementptr inbounds i8, ptr %data, i64 32, !BLADE-S !7, !BLADE-T !8
  %32 = load i8, ptr %arrayidx.8, align 1, !tbaa !9, !BLADE-T !8
  %conv.8 = zext i8 %32 to i32
  %shl.8 = shl nuw i32 %conv.8, 24
  %arrayidx2.8 = getelementptr inbounds i8, ptr %data, i64 33, !BLADE-S !7, !BLADE-T !8
  %33 = load i8, ptr %arrayidx2.8, align 1, !tbaa !9, !BLADE-T !8
  %conv3.8 = zext i8 %33 to i32
  %shl4.8 = shl nuw nsw i32 %conv3.8, 16
  %or.8 = or i32 %shl4.8, %shl.8
  %arrayidx7.8 = getelementptr inbounds i8, ptr %data, i64 34, !BLADE-S !7, !BLADE-T !8
  %34 = load i8, ptr %arrayidx7.8, align 1, !tbaa !9, !BLADE-T !8
  %conv8.8 = zext i8 %34 to i32
  %shl9.8 = shl nuw nsw i32 %conv8.8, 8
  %or10.8 = or i32 %or.8, %shl9.8
  %arrayidx13.8 = getelementptr inbounds i8, ptr %data, i64 35, !BLADE-S !7, !BLADE-T !8
  %35 = load i8, ptr %arrayidx13.8, align 1, !tbaa !9, !BLADE-T !8
  %conv14.8 = zext i8 %35 to i32
  %or15.8 = or i32 %or10.8, %conv14.8
  %arrayidx17.8 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 8
  store i32 %or15.8, ptr %arrayidx17.8, align 16, !tbaa !12
  %arrayidx.9 = getelementptr inbounds i8, ptr %data, i64 36, !BLADE-S !7, !BLADE-T !8
  %36 = load i8, ptr %arrayidx.9, align 1, !tbaa !9, !BLADE-T !8
  %conv.9 = zext i8 %36 to i32
  %shl.9 = shl nuw i32 %conv.9, 24
  %arrayidx2.9 = getelementptr inbounds i8, ptr %data, i64 37, !BLADE-S !7, !BLADE-T !8
  %37 = load i8, ptr %arrayidx2.9, align 1, !tbaa !9, !BLADE-T !8
  %conv3.9 = zext i8 %37 to i32
  %shl4.9 = shl nuw nsw i32 %conv3.9, 16
  %or.9 = or i32 %shl4.9, %shl.9
  %arrayidx7.9 = getelementptr inbounds i8, ptr %data, i64 38, !BLADE-S !7, !BLADE-T !8
  %38 = load i8, ptr %arrayidx7.9, align 1, !tbaa !9, !BLADE-T !8
  %conv8.9 = zext i8 %38 to i32
  %shl9.9 = shl nuw nsw i32 %conv8.9, 8
  %or10.9 = or i32 %or.9, %shl9.9
  %arrayidx13.9 = getelementptr inbounds i8, ptr %data, i64 39, !BLADE-S !7, !BLADE-T !8
  %39 = load i8, ptr %arrayidx13.9, align 1, !tbaa !9, !BLADE-T !8
  %conv14.9 = zext i8 %39 to i32
  %or15.9 = or i32 %or10.9, %conv14.9
  %arrayidx17.9 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 9
  store i32 %or15.9, ptr %arrayidx17.9, align 4, !tbaa !12
  %arrayidx.10 = getelementptr inbounds i8, ptr %data, i64 40, !BLADE-S !7, !BLADE-T !8
  %40 = load i8, ptr %arrayidx.10, align 1, !tbaa !9, !BLADE-T !8
  %conv.10 = zext i8 %40 to i32
  %shl.10 = shl nuw i32 %conv.10, 24
  %arrayidx2.10 = getelementptr inbounds i8, ptr %data, i64 41, !BLADE-S !7, !BLADE-T !8
  %41 = load i8, ptr %arrayidx2.10, align 1, !tbaa !9, !BLADE-T !8
  %conv3.10 = zext i8 %41 to i32
  %shl4.10 = shl nuw nsw i32 %conv3.10, 16
  %or.10 = or i32 %shl4.10, %shl.10
  %arrayidx7.10 = getelementptr inbounds i8, ptr %data, i64 42, !BLADE-S !7, !BLADE-T !8
  %42 = load i8, ptr %arrayidx7.10, align 1, !tbaa !9, !BLADE-T !8
  %conv8.10 = zext i8 %42 to i32
  %shl9.10 = shl nuw nsw i32 %conv8.10, 8
  %or10.10 = or i32 %or.10, %shl9.10
  %arrayidx13.10 = getelementptr inbounds i8, ptr %data, i64 43, !BLADE-S !7, !BLADE-T !8
  %43 = load i8, ptr %arrayidx13.10, align 1, !tbaa !9, !BLADE-T !8
  %conv14.10 = zext i8 %43 to i32
  %or15.10 = or i32 %or10.10, %conv14.10
  %arrayidx17.10 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 10
  store i32 %or15.10, ptr %arrayidx17.10, align 8, !tbaa !12
  %arrayidx.11 = getelementptr inbounds i8, ptr %data, i64 44, !BLADE-S !7, !BLADE-T !8
  %44 = load i8, ptr %arrayidx.11, align 1, !tbaa !9, !BLADE-T !8
  %conv.11 = zext i8 %44 to i32
  %shl.11 = shl nuw i32 %conv.11, 24
  %arrayidx2.11 = getelementptr inbounds i8, ptr %data, i64 45, !BLADE-S !7, !BLADE-T !8
  %45 = load i8, ptr %arrayidx2.11, align 1, !tbaa !9, !BLADE-T !8
  %conv3.11 = zext i8 %45 to i32
  %shl4.11 = shl nuw nsw i32 %conv3.11, 16
  %or.11 = or i32 %shl4.11, %shl.11
  %arrayidx7.11 = getelementptr inbounds i8, ptr %data, i64 46, !BLADE-S !7, !BLADE-T !8
  %46 = load i8, ptr %arrayidx7.11, align 1, !tbaa !9, !BLADE-T !8
  %conv8.11 = zext i8 %46 to i32
  %shl9.11 = shl nuw nsw i32 %conv8.11, 8
  %or10.11 = or i32 %or.11, %shl9.11
  %arrayidx13.11 = getelementptr inbounds i8, ptr %data, i64 47, !BLADE-S !7, !BLADE-T !8
  %47 = load i8, ptr %arrayidx13.11, align 1, !tbaa !9, !BLADE-T !8
  %conv14.11 = zext i8 %47 to i32
  %or15.11 = or i32 %or10.11, %conv14.11
  %arrayidx17.11 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 11
  store i32 %or15.11, ptr %arrayidx17.11, align 4, !tbaa !12
  %arrayidx.12 = getelementptr inbounds i8, ptr %data, i64 48, !BLADE-S !7, !BLADE-T !8
  %48 = load i8, ptr %arrayidx.12, align 1, !tbaa !9, !BLADE-T !8
  %conv.12 = zext i8 %48 to i32
  %shl.12 = shl nuw i32 %conv.12, 24
  %arrayidx2.12 = getelementptr inbounds i8, ptr %data, i64 49, !BLADE-S !7, !BLADE-T !8
  %49 = load i8, ptr %arrayidx2.12, align 1, !tbaa !9, !BLADE-T !8
  %conv3.12 = zext i8 %49 to i32
  %shl4.12 = shl nuw nsw i32 %conv3.12, 16
  %or.12 = or i32 %shl4.12, %shl.12
  %arrayidx7.12 = getelementptr inbounds i8, ptr %data, i64 50, !BLADE-S !7, !BLADE-T !8
  %50 = load i8, ptr %arrayidx7.12, align 1, !tbaa !9, !BLADE-T !8
  %conv8.12 = zext i8 %50 to i32
  %shl9.12 = shl nuw nsw i32 %conv8.12, 8
  %or10.12 = or i32 %or.12, %shl9.12
  %arrayidx13.12 = getelementptr inbounds i8, ptr %data, i64 51, !BLADE-S !7, !BLADE-T !8
  %51 = load i8, ptr %arrayidx13.12, align 1, !tbaa !9, !BLADE-T !8
  %conv14.12 = zext i8 %51 to i32
  %or15.12 = or i32 %or10.12, %conv14.12
  %arrayidx17.12 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 12
  store i32 %or15.12, ptr %arrayidx17.12, align 16, !tbaa !12
  %arrayidx.13 = getelementptr inbounds i8, ptr %data, i64 52, !BLADE-S !7, !BLADE-T !8
  %52 = load i8, ptr %arrayidx.13, align 1, !tbaa !9, !BLADE-T !8
  %conv.13 = zext i8 %52 to i32
  %shl.13 = shl nuw i32 %conv.13, 24
  %arrayidx2.13 = getelementptr inbounds i8, ptr %data, i64 53, !BLADE-S !7, !BLADE-T !8
  %53 = load i8, ptr %arrayidx2.13, align 1, !tbaa !9, !BLADE-T !8
  %conv3.13 = zext i8 %53 to i32
  %shl4.13 = shl nuw nsw i32 %conv3.13, 16
  %or.13 = or i32 %shl4.13, %shl.13
  %arrayidx7.13 = getelementptr inbounds i8, ptr %data, i64 54, !BLADE-S !7, !BLADE-T !8
  %54 = load i8, ptr %arrayidx7.13, align 1, !tbaa !9, !BLADE-T !8
  %conv8.13 = zext i8 %54 to i32
  %shl9.13 = shl nuw nsw i32 %conv8.13, 8
  %or10.13 = or i32 %or.13, %shl9.13
  %arrayidx13.13 = getelementptr inbounds i8, ptr %data, i64 55, !BLADE-S !7, !BLADE-T !8
  %55 = load i8, ptr %arrayidx13.13, align 1, !tbaa !9, !BLADE-T !8
  %conv14.13 = zext i8 %55 to i32
  %or15.13 = or i32 %or10.13, %conv14.13
  %arrayidx17.13 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 13
  store i32 %or15.13, ptr %arrayidx17.13, align 4, !tbaa !12
  %arrayidx.14 = getelementptr inbounds i8, ptr %data, i64 56, !BLADE-S !7, !BLADE-T !8
  %56 = load i8, ptr %arrayidx.14, align 1, !tbaa !9, !BLADE-T !8
  %conv.14 = zext i8 %56 to i32
  %shl.14 = shl nuw i32 %conv.14, 24
  %arrayidx2.14 = getelementptr inbounds i8, ptr %data, i64 57, !BLADE-S !7, !BLADE-T !8
  %57 = load i8, ptr %arrayidx2.14, align 1, !tbaa !9, !BLADE-T !8
  %conv3.14 = zext i8 %57 to i32
  %shl4.14 = shl nuw nsw i32 %conv3.14, 16
  %or.14 = or i32 %shl4.14, %shl.14
  %arrayidx7.14 = getelementptr inbounds i8, ptr %data, i64 58, !BLADE-S !7, !BLADE-T !8
  %58 = load i8, ptr %arrayidx7.14, align 1, !tbaa !9, !BLADE-T !8
  %conv8.14 = zext i8 %58 to i32
  %shl9.14 = shl nuw nsw i32 %conv8.14, 8
  %or10.14 = or i32 %or.14, %shl9.14
  %arrayidx13.14 = getelementptr inbounds i8, ptr %data, i64 59, !BLADE-S !7, !BLADE-T !8
  %59 = load i8, ptr %arrayidx13.14, align 1, !tbaa !9, !BLADE-T !8
  %conv14.14 = zext i8 %59 to i32
  %or15.14 = or i32 %or10.14, %conv14.14
  %arrayidx17.14 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 14
  store i32 %or15.14, ptr %arrayidx17.14, align 8, !tbaa !12
  %arrayidx.15 = getelementptr inbounds i8, ptr %data, i64 60, !BLADE-S !7, !BLADE-T !8
  %60 = load i8, ptr %arrayidx.15, align 1, !tbaa !9, !BLADE-T !8
  %conv.15 = zext i8 %60 to i32
  %shl.15 = shl nuw i32 %conv.15, 24
  %arrayidx2.15 = getelementptr inbounds i8, ptr %data, i64 61, !BLADE-S !7, !BLADE-T !8
  %61 = load i8, ptr %arrayidx2.15, align 1, !tbaa !9, !BLADE-T !8
  %conv3.15 = zext i8 %61 to i32
  %shl4.15 = shl nuw nsw i32 %conv3.15, 16
  %or.15 = or i32 %shl4.15, %shl.15
  %arrayidx7.15 = getelementptr inbounds i8, ptr %data, i64 62, !BLADE-S !7, !BLADE-T !8
  %62 = load i8, ptr %arrayidx7.15, align 1, !tbaa !9, !BLADE-T !8
  %conv8.15 = zext i8 %62 to i32
  %shl9.15 = shl nuw nsw i32 %conv8.15, 8
  %or10.15 = or i32 %or.15, %shl9.15
  %arrayidx13.15 = getelementptr inbounds i8, ptr %data, i64 63, !BLADE-S !7, !BLADE-T !8
  %63 = load i8, ptr %arrayidx13.15, align 1, !tbaa !9, !BLADE-T !8
  %conv14.15 = zext i8 %63 to i32
  %or15.15 = or i32 %or10.15, %conv14.15
  %arrayidx17.15 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 15
  store i32 %or15.15, ptr %arrayidx17.15, align 4, !tbaa !12
  %.pre = load i32, ptr %m, align 16, !tbaa !12, !BLADE-T !8
  br label %for.body22

for.body22:                                       ; preds = %for.body22, %for.body22.preheader
  %64 = phi i32 [ %.pre, %for.body22.preheader ], [ %70, %for.body22 ]
  %indvars.iv = phi i64 [ 16, %for.body22.preheader ], [ %indvars.iv.next, %for.body22 ]
  %65 = add nsw i64 %indvars.iv, -2
  %arrayidx24 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %65, !BLADE-S !7
  %66 = load i32, ptr %arrayidx24, align 4, !tbaa !12, !BLADE-T !8
  %or29 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 15), !BLADE-T !8
  %or38 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 13), !BLADE-T !8
  %xor = xor i32 %or29, %or38
  %shr42 = lshr i32 %66, 10
  %xor43 = xor i32 %xor, %shr42
  %67 = add nsw i64 %indvars.iv, -7
  %arrayidx46 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %67, !BLADE-S !7
  %68 = load i32, ptr %arrayidx46, align 4, !tbaa !12, !BLADE-T !8
  %add47 = add i32 %xor43, %68
  %69 = add nsw i64 %indvars.iv, -15
  %arrayidx50 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %69, !BLADE-S !7
  %70 = load i32, ptr %arrayidx50, align 4, !tbaa !12, !BLADE-T !8
  %or56 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 25), !BLADE-T !8
  %or65 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 14), !BLADE-T !8
  %xor66 = xor i32 %or56, %or65
  %shr70 = lshr i32 %70, 3
  %xor71 = xor i32 %xor66, %shr70
  %add72 = add i32 %add47, %64
  %add76 = add i32 %add72, %xor71
  %arrayidx78 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %indvars.iv
  store i32 %add76, ptr %arrayidx78, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.end81, label %for.body22, !llvm.loop !14

for.end81:                                        ; preds = %for.body22
  %state = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3, !BLADE-S !7, !BLADE-T !8
  %71 = load i32, ptr %state, align 8, !tbaa !12, !BLADE-T !8
  %arrayidx84 = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3, i64 1, !BLADE-S !7, !BLADE-T !8
  %72 = load i32, ptr %arrayidx84, align 4, !tbaa !12, !BLADE-T !8
  %arrayidx86 = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3, i64 2, !BLADE-S !7, !BLADE-T !8
  %73 = load i32, ptr %arrayidx86, align 8, !tbaa !12, !BLADE-T !8
  %arrayidx88 = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3, i64 3, !BLADE-S !7, !BLADE-T !8
  %74 = load i32, ptr %arrayidx88, align 4, !tbaa !12, !BLADE-T !8
  %arrayidx90 = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3, i64 4, !BLADE-S !7, !BLADE-T !8
  %75 = load i32, ptr %arrayidx90, align 8, !tbaa !12, !BLADE-T !8
  %arrayidx92 = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3, i64 5, !BLADE-S !7, !BLADE-T !8
  %76 = load i32, ptr %arrayidx92, align 4, !tbaa !12, !BLADE-T !8
  %arrayidx94 = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3, i64 6, !BLADE-S !7, !BLADE-T !8
  %77 = load i32, ptr %arrayidx94, align 8, !tbaa !12, !BLADE-T !8
  %arrayidx96 = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3, i64 7, !BLADE-S !7, !BLADE-T !8
  %78 = load i32, ptr %arrayidx96, align 4, !tbaa !12, !BLADE-T !8
  br label %for.body100

for.body100:                                      ; preds = %for.body100, %for.end81
  %indvars.iv269 = phi i64 [ 0, %for.end81 ], [ %indvars.iv.next270, %for.body100 ]
  %a.0255 = phi i32 [ %71, %for.end81 ], [ %add140, %for.body100 ]
  %b.0254 = phi i32 [ %72, %for.end81 ], [ %a.0255, %for.body100 ]
  %h.0252 = phi i32 [ %78, %for.end81 ], [ %g.0251, %for.body100 ]
  %g.0251 = phi i32 [ %77, %for.end81 ], [ %f.0250, %for.body100 ]
  %f.0250 = phi i32 [ %76, %for.end81 ], [ %e.0249, %for.body100 ]
  %e.0249 = phi i32 [ %75, %for.end81 ], [ %add139, %for.body100 ]
  %d.0248 = phi i32 [ %74, %for.end81 ], [ %c.0247, %for.body100 ]
  %c.0247 = phi i32 [ %73, %for.end81 ], [ %b.0254, %for.body100 ]
  %or103 = tail call i32 @llvm.fshl.i32(i32 %e.0249, i32 %e.0249, i32 26), !BLADE-T !8
  %or106 = tail call i32 @llvm.fshl.i32(i32 %e.0249, i32 %e.0249, i32 21), !BLADE-T !8
  %xor107 = xor i32 %or103, %or106
  %or110 = tail call i32 @llvm.fshl.i32(i32 %e.0249, i32 %e.0249, i32 7), !BLADE-T !8
  %xor111 = xor i32 %xor107, %or110
  %and = and i32 %f.0250, %e.0249
  %not = xor i32 %e.0249, -1
  %and113 = and i32 %g.0251, %not
  %arrayidx117 = getelementptr inbounds [64 x i32], ptr @k, i64 0, i64 %indvars.iv269, !BLADE-S !7
  %79 = load i32, ptr %arrayidx117, align 4, !tbaa !12, !BLADE-T !8
  %arrayidx120 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %indvars.iv269, !BLADE-S !7
  %80 = load i32, ptr %arrayidx120, align 4, !tbaa !12, !BLADE-T !8
  %xor114 = add i32 %xor111, %and
  %add112 = add i32 %xor114, %h.0252
  %add115 = add i32 %add112, %and113
  %add118 = add i32 %add115, %79
  %add121 = add i32 %add118, %80
  %or124 = tail call i32 @llvm.fshl.i32(i32 %a.0255, i32 %a.0255, i32 30), !BLADE-T !8
  %or127 = tail call i32 @llvm.fshl.i32(i32 %a.0255, i32 %a.0255, i32 19), !BLADE-T !8
  %xor128 = xor i32 %or124, %or127
  %or131 = tail call i32 @llvm.fshl.i32(i32 %a.0255, i32 %a.0255, i32 10), !BLADE-T !8
  %xor132 = xor i32 %xor128, %or131
  %and134242 = xor i32 %b.0254, %c.0247
  %xor135 = and i32 %a.0255, %and134242
  %and136 = and i32 %b.0254, %c.0247
  %xor137 = xor i32 %xor135, %and136
  %add138 = add i32 %xor132, %xor137
  %add139 = add i32 %add121, %d.0248
  %add140 = add i32 %add138, %add121
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1
  %exitcond272.not = icmp eq i64 %indvars.iv.next270, 64
  br i1 %exitcond272.not, label %for.end143, label %for.body100, !llvm.loop !16

for.end143:                                       ; preds = %for.body100
  %add146 = add i32 %add140, %71
  store i32 %add146, ptr %state, align 8, !tbaa !12
  %add149 = add i32 %a.0255, %72
  store i32 %add149, ptr %arrayidx84, align 4, !tbaa !12
  %add152 = add i32 %b.0254, %73
  store i32 %add152, ptr %arrayidx86, align 8, !tbaa !12
  %add155 = add i32 %c.0247, %74
  store i32 %add155, ptr %arrayidx88, align 4, !tbaa !12
  %add158 = add i32 %add139, %75
  store i32 %add158, ptr %arrayidx90, align 8, !tbaa !12
  %add161 = add i32 %e.0249, %76
  store i32 %add161, ptr %arrayidx92, align 4, !tbaa !12
  %add164 = add i32 %f.0250, %77
  store i32 %add164, ptr %arrayidx94, align 8, !tbaa !12
  %add167 = add i32 %g.0251, %78
  store i32 %add167, ptr %arrayidx96, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %m) #10, !BLADE-T !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha256_init(ptr nocapture noundef writeonly %ctx) local_unnamed_addr #2 {
entry:
  %datalen = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 1
  store i32 0, ptr %datalen, align 8, !tbaa !17
  %bitlen = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 2
  store i64 0, ptr %bitlen, align 8, !tbaa !20
  %state = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %state, align 8, !tbaa !12
  %arrayidx8 = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3, i64 4
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %arrayidx8, align 8, !tbaa !12
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_update(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %data, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp21.not = icmp eq i64 %len, 0
  br i1 %cmp21.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %datalen = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 1
  %bitlen = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 2
  %.pre = load i32, ptr %datalen, align 8, !tbaa !17
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %0 = phi i32 [ %.pre, %for.body.lr.ph ], [ %4, %for.inc ]
  %conv23 = phi i64 [ 0, %for.body.lr.ph ], [ %conv, %for.inc ]
  %arrayidx = getelementptr inbounds i8, ptr %data, i64 %conv23
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %idxprom3 = zext i32 %0 to i64
  %arrayidx4 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom3
  store i8 %1, ptr %arrayidx4, align 1, !tbaa !9
  %2 = load i32, ptr %datalen, align 8, !tbaa !17
  %inc = add i32 %2, 1
  store i32 %inc, ptr %datalen, align 8, !tbaa !17
  %cmp7 = icmp eq i32 %inc, 64
  br i1 %cmp7, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  tail call void @sha256_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %3 = load i64, ptr %bitlen, align 8, !tbaa !20
  %add = add i64 %3, 512
  store i64 %add, ptr %bitlen, align 8, !tbaa !20
  store i32 0, ptr %datalen, align 8, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %4 = phi i32 [ %inc, %for.body ], [ 0, %if.then ]
  %inc11 = add nuw nsw i64 %conv23, 1
  %conv = and i64 %inc11, 4294967295
  %cmp = icmp ult i64 %conv, %len
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !21

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_final(ptr nocapture noundef %ctx, ptr nocapture noundef writeonly %hash) local_unnamed_addr #0 {
entry:
  %datalen = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 1
  %0 = load i32, ptr %datalen, align 8, !tbaa !17
  %cmp = icmp ult i32 %0, 56
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom
  store i8 -128, ptr %arrayidx, align 1, !tbaa !9
  %i.0211 = add i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp2212 = icmp ult i32 %i.0211, 56
  br i1 %cmp2212, label %while.body.preheader, label %if.end

while.body.preheader:                             ; preds = %if.then
  %1 = add nuw nsw i64 %idxprom, 1
  %uglygep216 = getelementptr i8, ptr %ctx, i64 %1
  %2 = sub nuw nsw i32 54, %0
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %uglygep216, i8 0, i64 %4, i1 false), !tbaa !9
  br label %if.end

if.else:                                          ; preds = %entry
  %cmp12209 = icmp ult i32 %i.0211, 64
  br i1 %cmp12209, label %while.body13.preheader, label %while.end18

while.body13.preheader:                           ; preds = %if.else
  %5 = zext i32 %i.0211 to i64
  %uglygep = getelementptr i8, ptr %ctx, i64 %5
  %6 = sub nsw i32 62, %0
  %7 = zext i32 %6 to i64
  %8 = add nuw nsw i64 %7, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %uglygep, i8 0, i64 %8, i1 false), !tbaa !9
  br label %while.end18

while.end18:                                      ; preds = %while.body13.preheader, %if.else
  tail call void @sha256_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %ctx, i8 0, i64 56, i1 false)
  br label %if.end

if.end:                                           ; preds = %while.end18, %while.body.preheader, %if.then
  %9 = load i32, ptr %datalen, align 8, !tbaa !17
  %mul = shl i32 %9, 3
  %conv = zext i32 %mul to i64
  %bitlen = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 2
  %10 = load i64, ptr %bitlen, align 8, !tbaa !20
  %add = add i64 %10, %conv
  store i64 %add, ptr %bitlen, align 8, !tbaa !20
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
  tail call void @sha256_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %state = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3
  %arrayidx72 = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3, i64 1
  %arrayidx82 = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3, i64 2
  %arrayidx92 = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3, i64 3
  %arrayidx102 = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3, i64 4
  %arrayidx112 = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3, i64 5
  %arrayidx122 = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3, i64 6
  %arrayidx132 = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3, i64 7
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
  %16 = load i32, ptr %arrayidx112, align 4, !tbaa !12
  %shr115 = lshr i32 %16, 24
  %conv117 = trunc i32 %shr115 to i8
  %arrayidx120 = getelementptr inbounds i8, ptr %hash, i64 20
  store i8 %conv117, ptr %arrayidx120, align 1, !tbaa !9
  %17 = load i32, ptr %arrayidx122, align 8, !tbaa !12
  %shr125 = lshr i32 %17, 24
  %conv127 = trunc i32 %shr125 to i8
  %arrayidx130 = getelementptr inbounds i8, ptr %hash, i64 24
  store i8 %conv127, ptr %arrayidx130, align 1, !tbaa !9
  %18 = load i32, ptr %arrayidx132, align 4, !tbaa !12
  %shr135 = lshr i32 %18, 24
  %conv137 = trunc i32 %shr135 to i8
  %arrayidx140 = getelementptr inbounds i8, ptr %hash, i64 28
  store i8 %conv137, ptr %arrayidx140, align 1, !tbaa !9
  %19 = load i32, ptr %state, align 8, !tbaa !12
  %shr67.1 = lshr i32 %19, 16
  %conv68.1 = trunc i32 %shr67.1 to i8
  %arrayidx70.1 = getelementptr inbounds i8, ptr %hash, i64 1
  store i8 %conv68.1, ptr %arrayidx70.1, align 1, !tbaa !9
  %20 = load i32, ptr %arrayidx72, align 4, !tbaa !12
  %shr75.1 = lshr i32 %20, 16
  %conv77.1 = trunc i32 %shr75.1 to i8
  %arrayidx80.1 = getelementptr inbounds i8, ptr %hash, i64 5
  store i8 %conv77.1, ptr %arrayidx80.1, align 1, !tbaa !9
  %21 = load i32, ptr %arrayidx82, align 8, !tbaa !12
  %shr85.1 = lshr i32 %21, 16
  %conv87.1 = trunc i32 %shr85.1 to i8
  %arrayidx90.1 = getelementptr inbounds i8, ptr %hash, i64 9
  store i8 %conv87.1, ptr %arrayidx90.1, align 1, !tbaa !9
  %22 = load i32, ptr %arrayidx92, align 4, !tbaa !12
  %shr95.1 = lshr i32 %22, 16
  %conv97.1 = trunc i32 %shr95.1 to i8
  %arrayidx100.1 = getelementptr inbounds i8, ptr %hash, i64 13
  store i8 %conv97.1, ptr %arrayidx100.1, align 1, !tbaa !9
  %23 = load i32, ptr %arrayidx102, align 8, !tbaa !12
  %shr105.1 = lshr i32 %23, 16
  %conv107.1 = trunc i32 %shr105.1 to i8
  %arrayidx110.1 = getelementptr inbounds i8, ptr %hash, i64 17
  store i8 %conv107.1, ptr %arrayidx110.1, align 1, !tbaa !9
  %24 = load i32, ptr %arrayidx112, align 4, !tbaa !12
  %shr115.1 = lshr i32 %24, 16
  %conv117.1 = trunc i32 %shr115.1 to i8
  %arrayidx120.1 = getelementptr inbounds i8, ptr %hash, i64 21
  store i8 %conv117.1, ptr %arrayidx120.1, align 1, !tbaa !9
  %25 = load i32, ptr %arrayidx122, align 8, !tbaa !12
  %shr125.1 = lshr i32 %25, 16
  %conv127.1 = trunc i32 %shr125.1 to i8
  %arrayidx130.1 = getelementptr inbounds i8, ptr %hash, i64 25
  store i8 %conv127.1, ptr %arrayidx130.1, align 1, !tbaa !9
  %26 = load i32, ptr %arrayidx132, align 4, !tbaa !12
  %shr135.1 = lshr i32 %26, 16
  %conv137.1 = trunc i32 %shr135.1 to i8
  %arrayidx140.1 = getelementptr inbounds i8, ptr %hash, i64 29
  store i8 %conv137.1, ptr %arrayidx140.1, align 1, !tbaa !9
  %27 = load i32, ptr %state, align 8, !tbaa !12
  %shr67.2 = lshr i32 %27, 8
  %conv68.2 = trunc i32 %shr67.2 to i8
  %arrayidx70.2 = getelementptr inbounds i8, ptr %hash, i64 2
  store i8 %conv68.2, ptr %arrayidx70.2, align 1, !tbaa !9
  %28 = load i32, ptr %arrayidx72, align 4, !tbaa !12
  %shr75.2 = lshr i32 %28, 8
  %conv77.2 = trunc i32 %shr75.2 to i8
  %arrayidx80.2 = getelementptr inbounds i8, ptr %hash, i64 6
  store i8 %conv77.2, ptr %arrayidx80.2, align 1, !tbaa !9
  %29 = load i32, ptr %arrayidx82, align 8, !tbaa !12
  %shr85.2 = lshr i32 %29, 8
  %conv87.2 = trunc i32 %shr85.2 to i8
  %arrayidx90.2 = getelementptr inbounds i8, ptr %hash, i64 10
  store i8 %conv87.2, ptr %arrayidx90.2, align 1, !tbaa !9
  %30 = load i32, ptr %arrayidx92, align 4, !tbaa !12
  %shr95.2 = lshr i32 %30, 8
  %conv97.2 = trunc i32 %shr95.2 to i8
  %arrayidx100.2 = getelementptr inbounds i8, ptr %hash, i64 14
  store i8 %conv97.2, ptr %arrayidx100.2, align 1, !tbaa !9
  %31 = load i32, ptr %arrayidx102, align 8, !tbaa !12
  %shr105.2 = lshr i32 %31, 8
  %conv107.2 = trunc i32 %shr105.2 to i8
  %arrayidx110.2 = getelementptr inbounds i8, ptr %hash, i64 18
  store i8 %conv107.2, ptr %arrayidx110.2, align 1, !tbaa !9
  %32 = load i32, ptr %arrayidx112, align 4, !tbaa !12
  %shr115.2 = lshr i32 %32, 8
  %conv117.2 = trunc i32 %shr115.2 to i8
  %arrayidx120.2 = getelementptr inbounds i8, ptr %hash, i64 22
  store i8 %conv117.2, ptr %arrayidx120.2, align 1, !tbaa !9
  %33 = load i32, ptr %arrayidx122, align 8, !tbaa !12
  %shr125.2 = lshr i32 %33, 8
  %conv127.2 = trunc i32 %shr125.2 to i8
  %arrayidx130.2 = getelementptr inbounds i8, ptr %hash, i64 26
  store i8 %conv127.2, ptr %arrayidx130.2, align 1, !tbaa !9
  %34 = load i32, ptr %arrayidx132, align 4, !tbaa !12
  %shr135.2 = lshr i32 %34, 8
  %conv137.2 = trunc i32 %shr135.2 to i8
  %arrayidx140.2 = getelementptr inbounds i8, ptr %hash, i64 30
  store i8 %conv137.2, ptr %arrayidx140.2, align 1, !tbaa !9
  %35 = load i32, ptr %state, align 8, !tbaa !12
  %conv68.3 = trunc i32 %35 to i8
  %arrayidx70.3 = getelementptr inbounds i8, ptr %hash, i64 3
  store i8 %conv68.3, ptr %arrayidx70.3, align 1, !tbaa !9
  %36 = load i32, ptr %arrayidx72, align 4, !tbaa !12
  %conv77.3 = trunc i32 %36 to i8
  %arrayidx80.3 = getelementptr inbounds i8, ptr %hash, i64 7
  store i8 %conv77.3, ptr %arrayidx80.3, align 1, !tbaa !9
  %37 = load i32, ptr %arrayidx82, align 8, !tbaa !12
  %conv87.3 = trunc i32 %37 to i8
  %arrayidx90.3 = getelementptr inbounds i8, ptr %hash, i64 11
  store i8 %conv87.3, ptr %arrayidx90.3, align 1, !tbaa !9
  %38 = load i32, ptr %arrayidx92, align 4, !tbaa !12
  %conv97.3 = trunc i32 %38 to i8
  %arrayidx100.3 = getelementptr inbounds i8, ptr %hash, i64 15
  store i8 %conv97.3, ptr %arrayidx100.3, align 1, !tbaa !9
  %39 = load i32, ptr %arrayidx102, align 8, !tbaa !12
  %conv107.3 = trunc i32 %39 to i8
  %arrayidx110.3 = getelementptr inbounds i8, ptr %hash, i64 19
  store i8 %conv107.3, ptr %arrayidx110.3, align 1, !tbaa !9
  %40 = load i32, ptr %arrayidx112, align 4, !tbaa !12
  %conv117.3 = trunc i32 %40 to i8
  %arrayidx120.3 = getelementptr inbounds i8, ptr %hash, i64 23
  store i8 %conv117.3, ptr %arrayidx120.3, align 1, !tbaa !9
  %41 = load i32, ptr %arrayidx122, align 8, !tbaa !12
  %conv127.3 = trunc i32 %41 to i8
  %arrayidx130.3 = getelementptr inbounds i8, ptr %hash, i64 27
  store i8 %conv127.3, ptr %arrayidx130.3, align 1, !tbaa !9
  %42 = load i32, ptr %arrayidx132, align 4, !tbaa !12
  %conv137.3 = trunc i32 %42 to i8
  %arrayidx140.3 = getelementptr inbounds i8, ptr %hash, i64 31
  store i8 %conv137.3, ptr %arrayidx140.3, align 1, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @sha256_test() local_unnamed_addr #4 {
entry:
  %text1 = alloca [4 x i8], align 4
  %buf = alloca [32 x i8], align 16
  %ctx = alloca %struct.SHA256_CTX, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %text1) #10
  store i32 6513249, ptr %text1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #10
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %ctx) #10
  %datalen.i = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 1
  store i32 0, ptr %datalen.i, align 8, !tbaa !17
  %bitlen.i = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 2
  store i64 0, ptr %bitlen.i, align 8, !tbaa !20
  %state.i = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %state.i, align 8, !tbaa !12
  %arrayidx8.i = getelementptr inbounds %struct.SHA256_CTX, ptr %ctx, i64 0, i32 3, i64 4
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %arrayidx8.i, align 8, !tbaa !12
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %text1) #11
  %cmp21.not.i = icmp eq i64 %call, 0
  br i1 %cmp21.not.i, label %sha256_update.exit, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %entry
  %0 = phi i32 [ %4, %for.inc.i ], [ 0, %entry ]
  %conv23.i = phi i64 [ %conv.i, %for.inc.i ], [ 0, %entry ]
  %arrayidx.i = getelementptr inbounds i8, ptr %text1, i64 %conv23.i
  %1 = load i8, ptr %arrayidx.i, align 1, !tbaa !9
  %idxprom3.i = zext i32 %0 to i64
  %arrayidx4.i41 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom3.i
  store i8 %1, ptr %arrayidx4.i41, align 1, !tbaa !9
  %2 = load i32, ptr %datalen.i, align 8, !tbaa !17
  %inc.i = add i32 %2, 1
  store i32 %inc.i, ptr %datalen.i, align 8, !tbaa !17
  %cmp7.i = icmp eq i32 %inc.i, 64
  br i1 %cmp7.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @sha256_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %3 = load i64, ptr %bitlen.i, align 8, !tbaa !20
  %add.i = add i64 %3, 512
  store i64 %add.i, ptr %bitlen.i, align 8, !tbaa !20
  store i32 0, ptr %datalen.i, align 8, !tbaa !17
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %4 = phi i32 [ %inc.i, %for.body.i ], [ 0, %if.then.i ]
  %inc11.i = add nuw nsw i64 %conv23.i, 1
  %conv.i = and i64 %inc11.i, 4294967295
  %cmp.i = icmp ult i64 %conv.i, %call
  br i1 %cmp.i, label %for.body.i, label %sha256_update.exit, !llvm.loop !21

sha256_update.exit:                               ; preds = %for.inc.i, %entry
  call void @sha256_final(ptr noundef nonnull %ctx, ptr noundef nonnull %buf)
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(32) @__const.sha256_test.hash1, ptr noundef nonnull dereferenceable(32) %buf, i64 32)
  store i32 0, ptr %datalen.i, align 8, !tbaa !17
  store i64 0, ptr %bitlen.i, align 8, !tbaa !20
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %state.i, align 8, !tbaa !12
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %arrayidx8.i, align 8, !tbaa !12
  br label %for.body.i63

for.body.i63:                                     ; preds = %for.inc.i69, %sha256_update.exit
  %5 = phi i32 [ %9, %for.inc.i69 ], [ 0, %sha256_update.exit ]
  %conv23.i57 = phi i64 [ %conv.i67, %for.inc.i69 ], [ 0, %sha256_update.exit ]
  %arrayidx.i58 = getelementptr inbounds i8, ptr @__const.sha256_test.text2, i64 %conv23.i57
  %6 = load i8, ptr %arrayidx.i58, align 1, !tbaa !9
  %idxprom3.i59 = zext i32 %5 to i64
  %arrayidx4.i60 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom3.i59
  store i8 %6, ptr %arrayidx4.i60, align 1, !tbaa !9
  %7 = load i32, ptr %datalen.i, align 8, !tbaa !17
  %inc.i61 = add i32 %7, 1
  store i32 %inc.i61, ptr %datalen.i, align 8, !tbaa !17
  %cmp7.i62 = icmp eq i32 %inc.i61, 64
  br i1 %cmp7.i62, label %if.then.i65, label %for.inc.i69

if.then.i65:                                      ; preds = %for.body.i63
  call void @sha256_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %8 = load i64, ptr %bitlen.i, align 8, !tbaa !20
  %add.i64 = add i64 %8, 512
  store i64 %add.i64, ptr %bitlen.i, align 8, !tbaa !20
  store i32 0, ptr %datalen.i, align 8, !tbaa !17
  br label %for.inc.i69

for.inc.i69:                                      ; preds = %if.then.i65, %for.body.i63
  %9 = phi i32 [ %inc.i61, %for.body.i63 ], [ 0, %if.then.i65 ]
  %inc11.i66 = add nuw nsw i64 %conv23.i57, 1
  %conv.i67 = and i64 %inc11.i66, 4294967295
  %cmp.i68 = icmp ult i64 %conv.i67, 56
  br i1 %cmp.i68, label %for.body.i63, label %sha256_update.exit70, !llvm.loop !21

sha256_update.exit70:                             ; preds = %for.inc.i69
  %tobool6.not = icmp eq i32 %bcmp, 0
  call void @sha256_final(ptr noundef nonnull %ctx, ptr noundef nonnull %buf)
  br i1 %tobool6.not, label %land.rhs12, label %land.end18

land.rhs12:                                       ; preds = %sha256_update.exit70
  %bcmp38 = call i32 @bcmp(ptr noundef nonnull dereferenceable(32) @__const.sha256_test.hash2, ptr noundef nonnull dereferenceable(32) %buf, i64 32)
  %tobool16.not = icmp eq i32 %bcmp38, 0
  br label %land.end18

land.end18:                                       ; preds = %land.rhs12, %sha256_update.exit70
  %10 = phi i1 [ false, %sha256_update.exit70 ], [ %tobool16.not, %land.rhs12 ]
  store i32 0, ptr %datalen.i, align 8, !tbaa !17
  store i64 0, ptr %bitlen.i, align 8, !tbaa !20
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %state.i, align 8, !tbaa !12
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %arrayidx8.i, align 8, !tbaa !12
  br label %for.body.lr.ph.i85

for.body.lr.ph.i85:                               ; preds = %for.inc.i98.9, %land.end18
  %.pre.i84 = phi i32 [ 0, %land.end18 ], [ %.pre.i84102, %for.inc.i98.9 ]
  %idx.0100 = phi i32 [ 0, %land.end18 ], [ %inc, %for.inc.i98.9 ]
  %idxprom3.i88 = zext i32 %.pre.i84 to i64
  %arrayidx4.i89 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom3.i88
  store i8 97, ptr %arrayidx4.i89, align 1, !tbaa !9
  %11 = load i32, ptr %datalen.i, align 8, !tbaa !17
  %inc.i90 = add i32 %11, 1
  store i32 %inc.i90, ptr %datalen.i, align 8, !tbaa !17
  %cmp7.i91 = icmp eq i32 %inc.i90, 64
  br i1 %cmp7.i91, label %if.then.i94, label %for.inc.i98

if.then.i94:                                      ; preds = %for.body.lr.ph.i85
  call void @sha256_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %12 = load i64, ptr %bitlen.i, align 8, !tbaa !20
  %add.i93 = add i64 %12, 512
  store i64 %add.i93, ptr %bitlen.i, align 8, !tbaa !20
  store i32 0, ptr %datalen.i, align 8, !tbaa !17
  br label %for.inc.i98

for.inc.i98:                                      ; preds = %if.then.i94, %for.body.lr.ph.i85
  %13 = phi i32 [ %inc.i90, %for.body.lr.ph.i85 ], [ 0, %if.then.i94 ]
  %idxprom3.i88.1 = zext i32 %13 to i64
  %arrayidx4.i89.1 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom3.i88.1
  store i8 97, ptr %arrayidx4.i89.1, align 1, !tbaa !9
  %14 = load i32, ptr %datalen.i, align 8, !tbaa !17
  %inc.i90.1 = add i32 %14, 1
  store i32 %inc.i90.1, ptr %datalen.i, align 8, !tbaa !17
  %cmp7.i91.1 = icmp eq i32 %inc.i90.1, 64
  br i1 %cmp7.i91.1, label %if.then.i94.1, label %for.inc.i98.1

if.then.i94.1:                                    ; preds = %for.inc.i98
  call void @sha256_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %15 = load i64, ptr %bitlen.i, align 8, !tbaa !20
  %add.i93.1 = add i64 %15, 512
  store i64 %add.i93.1, ptr %bitlen.i, align 8, !tbaa !20
  store i32 0, ptr %datalen.i, align 8, !tbaa !17
  br label %for.inc.i98.1

for.inc.i98.1:                                    ; preds = %if.then.i94.1, %for.inc.i98
  %16 = phi i32 [ %inc.i90.1, %for.inc.i98 ], [ 0, %if.then.i94.1 ]
  %idxprom3.i88.2 = zext i32 %16 to i64
  %arrayidx4.i89.2 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom3.i88.2
  store i8 97, ptr %arrayidx4.i89.2, align 1, !tbaa !9
  %17 = load i32, ptr %datalen.i, align 8, !tbaa !17
  %inc.i90.2 = add i32 %17, 1
  store i32 %inc.i90.2, ptr %datalen.i, align 8, !tbaa !17
  %cmp7.i91.2 = icmp eq i32 %inc.i90.2, 64
  br i1 %cmp7.i91.2, label %if.then.i94.2, label %for.inc.i98.2

if.then.i94.2:                                    ; preds = %for.inc.i98.1
  call void @sha256_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %18 = load i64, ptr %bitlen.i, align 8, !tbaa !20
  %add.i93.2 = add i64 %18, 512
  store i64 %add.i93.2, ptr %bitlen.i, align 8, !tbaa !20
  store i32 0, ptr %datalen.i, align 8, !tbaa !17
  br label %for.inc.i98.2

for.inc.i98.2:                                    ; preds = %if.then.i94.2, %for.inc.i98.1
  %19 = phi i32 [ %inc.i90.2, %for.inc.i98.1 ], [ 0, %if.then.i94.2 ]
  %idxprom3.i88.3 = zext i32 %19 to i64
  %arrayidx4.i89.3 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom3.i88.3
  store i8 97, ptr %arrayidx4.i89.3, align 1, !tbaa !9
  %20 = load i32, ptr %datalen.i, align 8, !tbaa !17
  %inc.i90.3 = add i32 %20, 1
  store i32 %inc.i90.3, ptr %datalen.i, align 8, !tbaa !17
  %cmp7.i91.3 = icmp eq i32 %inc.i90.3, 64
  br i1 %cmp7.i91.3, label %if.then.i94.3, label %for.inc.i98.3

if.then.i94.3:                                    ; preds = %for.inc.i98.2
  call void @sha256_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %21 = load i64, ptr %bitlen.i, align 8, !tbaa !20
  %add.i93.3 = add i64 %21, 512
  store i64 %add.i93.3, ptr %bitlen.i, align 8, !tbaa !20
  store i32 0, ptr %datalen.i, align 8, !tbaa !17
  br label %for.inc.i98.3

for.inc.i98.3:                                    ; preds = %if.then.i94.3, %for.inc.i98.2
  %22 = phi i32 [ %inc.i90.3, %for.inc.i98.2 ], [ 0, %if.then.i94.3 ]
  %idxprom3.i88.4 = zext i32 %22 to i64
  %arrayidx4.i89.4 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom3.i88.4
  store i8 97, ptr %arrayidx4.i89.4, align 1, !tbaa !9
  %23 = load i32, ptr %datalen.i, align 8, !tbaa !17
  %inc.i90.4 = add i32 %23, 1
  store i32 %inc.i90.4, ptr %datalen.i, align 8, !tbaa !17
  %cmp7.i91.4 = icmp eq i32 %inc.i90.4, 64
  br i1 %cmp7.i91.4, label %if.then.i94.4, label %for.inc.i98.4

if.then.i94.4:                                    ; preds = %for.inc.i98.3
  call void @sha256_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %24 = load i64, ptr %bitlen.i, align 8, !tbaa !20
  %add.i93.4 = add i64 %24, 512
  store i64 %add.i93.4, ptr %bitlen.i, align 8, !tbaa !20
  store i32 0, ptr %datalen.i, align 8, !tbaa !17
  br label %for.inc.i98.4

for.inc.i98.4:                                    ; preds = %if.then.i94.4, %for.inc.i98.3
  %25 = phi i32 [ %inc.i90.4, %for.inc.i98.3 ], [ 0, %if.then.i94.4 ]
  %idxprom3.i88.5 = zext i32 %25 to i64
  %arrayidx4.i89.5 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom3.i88.5
  store i8 97, ptr %arrayidx4.i89.5, align 1, !tbaa !9
  %26 = load i32, ptr %datalen.i, align 8, !tbaa !17
  %inc.i90.5 = add i32 %26, 1
  store i32 %inc.i90.5, ptr %datalen.i, align 8, !tbaa !17
  %cmp7.i91.5 = icmp eq i32 %inc.i90.5, 64
  br i1 %cmp7.i91.5, label %if.then.i94.5, label %for.inc.i98.5

if.then.i94.5:                                    ; preds = %for.inc.i98.4
  call void @sha256_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %27 = load i64, ptr %bitlen.i, align 8, !tbaa !20
  %add.i93.5 = add i64 %27, 512
  store i64 %add.i93.5, ptr %bitlen.i, align 8, !tbaa !20
  store i32 0, ptr %datalen.i, align 8, !tbaa !17
  br label %for.inc.i98.5

for.inc.i98.5:                                    ; preds = %if.then.i94.5, %for.inc.i98.4
  %28 = phi i32 [ %inc.i90.5, %for.inc.i98.4 ], [ 0, %if.then.i94.5 ]
  %idxprom3.i88.6 = zext i32 %28 to i64
  %arrayidx4.i89.6 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom3.i88.6
  store i8 97, ptr %arrayidx4.i89.6, align 1, !tbaa !9
  %29 = load i32, ptr %datalen.i, align 8, !tbaa !17
  %inc.i90.6 = add i32 %29, 1
  store i32 %inc.i90.6, ptr %datalen.i, align 8, !tbaa !17
  %cmp7.i91.6 = icmp eq i32 %inc.i90.6, 64
  br i1 %cmp7.i91.6, label %if.then.i94.6, label %for.inc.i98.6

if.then.i94.6:                                    ; preds = %for.inc.i98.5
  call void @sha256_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %30 = load i64, ptr %bitlen.i, align 8, !tbaa !20
  %add.i93.6 = add i64 %30, 512
  store i64 %add.i93.6, ptr %bitlen.i, align 8, !tbaa !20
  store i32 0, ptr %datalen.i, align 8, !tbaa !17
  br label %for.inc.i98.6

for.inc.i98.6:                                    ; preds = %if.then.i94.6, %for.inc.i98.5
  %31 = phi i32 [ %inc.i90.6, %for.inc.i98.5 ], [ 0, %if.then.i94.6 ]
  %idxprom3.i88.7 = zext i32 %31 to i64
  %arrayidx4.i89.7 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom3.i88.7
  store i8 97, ptr %arrayidx4.i89.7, align 1, !tbaa !9
  %32 = load i32, ptr %datalen.i, align 8, !tbaa !17
  %inc.i90.7 = add i32 %32, 1
  store i32 %inc.i90.7, ptr %datalen.i, align 8, !tbaa !17
  %cmp7.i91.7 = icmp eq i32 %inc.i90.7, 64
  br i1 %cmp7.i91.7, label %if.then.i94.7, label %for.inc.i98.7

if.then.i94.7:                                    ; preds = %for.inc.i98.6
  call void @sha256_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %33 = load i64, ptr %bitlen.i, align 8, !tbaa !20
  %add.i93.7 = add i64 %33, 512
  store i64 %add.i93.7, ptr %bitlen.i, align 8, !tbaa !20
  store i32 0, ptr %datalen.i, align 8, !tbaa !17
  br label %for.inc.i98.7

for.inc.i98.7:                                    ; preds = %if.then.i94.7, %for.inc.i98.6
  %34 = phi i32 [ %inc.i90.7, %for.inc.i98.6 ], [ 0, %if.then.i94.7 ]
  %idxprom3.i88.8 = zext i32 %34 to i64
  %arrayidx4.i89.8 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom3.i88.8
  store i8 97, ptr %arrayidx4.i89.8, align 1, !tbaa !9
  %35 = load i32, ptr %datalen.i, align 8, !tbaa !17
  %inc.i90.8 = add i32 %35, 1
  store i32 %inc.i90.8, ptr %datalen.i, align 8, !tbaa !17
  %cmp7.i91.8 = icmp eq i32 %inc.i90.8, 64
  br i1 %cmp7.i91.8, label %if.then.i94.8, label %for.inc.i98.8

if.then.i94.8:                                    ; preds = %for.inc.i98.7
  call void @sha256_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %36 = load i64, ptr %bitlen.i, align 8, !tbaa !20
  %add.i93.8 = add i64 %36, 512
  store i64 %add.i93.8, ptr %bitlen.i, align 8, !tbaa !20
  store i32 0, ptr %datalen.i, align 8, !tbaa !17
  br label %for.inc.i98.8

for.inc.i98.8:                                    ; preds = %if.then.i94.8, %for.inc.i98.7
  %37 = phi i32 [ %inc.i90.8, %for.inc.i98.7 ], [ 0, %if.then.i94.8 ]
  %idxprom3.i88.9 = zext i32 %37 to i64
  %arrayidx4.i89.9 = getelementptr inbounds [64 x i8], ptr %ctx, i64 0, i64 %idxprom3.i88.9
  store i8 97, ptr %arrayidx4.i89.9, align 1, !tbaa !9
  %38 = load i32, ptr %datalen.i, align 8, !tbaa !17
  %inc.i90.9 = add i32 %38, 1
  store i32 %inc.i90.9, ptr %datalen.i, align 8, !tbaa !17
  %cmp7.i91.9 = icmp eq i32 %inc.i90.9, 64
  br i1 %cmp7.i91.9, label %if.then.i94.9, label %for.inc.i98.9

if.then.i94.9:                                    ; preds = %for.inc.i98.8
  call void @sha256_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %39 = load i64, ptr %bitlen.i, align 8, !tbaa !20
  %add.i93.9 = add i64 %39, 512
  store i64 %add.i93.9, ptr %bitlen.i, align 8, !tbaa !20
  store i32 0, ptr %datalen.i, align 8, !tbaa !17
  br label %for.inc.i98.9

for.inc.i98.9:                                    ; preds = %if.then.i94.9, %for.inc.i98.8
  %.pre.i84102 = phi i32 [ 0, %if.then.i94.9 ], [ %inc.i90.9, %for.inc.i98.8 ]
  %inc = add nuw nsw i32 %idx.0100, 1
  %exitcond.not = icmp eq i32 %inc, 100000
  br i1 %exitcond.not, label %for.end, label %for.body.lr.ph.i85, !llvm.loop !22

for.end:                                          ; preds = %for.inc.i98.9
  call void @sha256_final(ptr noundef nonnull %ctx, ptr noundef nonnull %buf)
  br i1 %10, label %land.rhs25, label %land.end31

land.rhs25:                                       ; preds = %for.end
  %bcmp37 = call i32 @bcmp(ptr noundef nonnull dereferenceable(32) @__const.sha256_test.hash3, ptr noundef nonnull dereferenceable(32) %buf, i64 32)
  %tobool29.not = icmp eq i32 %bcmp37, 0
  %40 = zext i1 %tobool29.not to i32
  br label %land.end31

land.end31:                                       ; preds = %land.rhs25, %for.end
  %land.ext32 = phi i32 [ 0, %for.end ], [ %40, %land.rhs25 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %ctx) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %text1) #10
  ret i32 %land.ext32
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #6 {
entry:
  %call = tail call i32 @sha256_test()
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
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !23
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

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
!16 = distinct !{!16, !15}
!17 = !{!18, !13, i64 64}
!18 = !{!"", !10, i64 0, !13, i64 64, !19, i64 72, !10, i64 80}
!19 = !{!"long long", !10, i64 0}
!20 = !{!18, !19, i64 72}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
