; ModuleID = 'md2_3.ll'
source_filename = "md2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MD2_CTX = type { [16 x i8], [48 x i8], [16 x i8], i32 }

@s = internal unnamed_addr constant [256 x i8] c").C\C9\A2\D8|\01=6T\A1\EC\F0\06\13b\A7\05\F3\C0\C7s\8C\98\93+\D9\BCL\82\CA\1E\9BW<\FD\D4\E0\16gBo\18\8A\17\E5\12\BEN\C4\D6\DA\9E\DEI\A0\FB\F5\8E\BB/\EEz\A9hy\91\15\B2\07?\94\C2\10\89\0B\22_!\80\7F]\9AZ\902'5>\CC\E7\BF\F7\97\03\FF\190\B3H\A5\B5\D1\D7^\92*\ACV\AA\C6O\B88\D2\96\A4}\B6v\FCk\E2\9Ct\04\F1E\9DpYdq\87 \86[\CFe\E6-\A8\02\1B`%\AD\AE\B0\B9\F6\1CFai4@~\0FUG\A3#\DDQ\AF:\C3\\\F9\CE\BA\C5\EA&,S\0Dn\85(\84\09\D3\DF\CD\F4A\81MRj\DC7\C8l\C1\AB\FA$\E1{\08\0C\BD\B1Jx\88\95\8B\E3c\E8m\E9\CB\D5\FE;\00\1D9\F2\EF\B7\0EfX\D0\E4\A6wr\F8\EBuK\0A1DP\B4\8F\ED\1F\1A\DB\99\8D3\9F\11\83\14", align 16
@__const.md2_test.text2 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 16
@__const.md2_test.text3_1 = private unnamed_addr constant [32 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcde\00", align 16
@__const.md2_test.text3_2 = private unnamed_addr constant [32 x i8] c"fghijklmnopqrstuvwxyz0123456789\00", align 16
@__const.md2_test.hash1 = private unnamed_addr constant [16 x i8] c"\DA\85;\0D?\88\D9\9B0(:i\E6\DE\D6\BB", align 16
@__const.md2_test.hash2 = private unnamed_addr constant [16 x i8] c"N\8D\DF\F3e\02\92\ABZA\08\C3\AAG\94\0B", align 16
@__const.md2_test.hash3 = private unnamed_addr constant [16 x i8] c"\DA3\DE\F2\A4-\F19u5(F\C3\038\CD", align 16
@.str = private unnamed_addr constant [15 x i8] c"MD2 tests: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SUCCEEDED\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @md2_transform(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %data) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %data, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 16, !BLADE-T !10
  store i8 %0, ptr %arrayidx2, align 1, !tbaa !7
  %arrayidx9 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 0, !BLADE-T !10, !BLADE-S !11
  %1 = load i8, ptr %arrayidx9, align 1, !tbaa !7, !BLADE-T !10
  %xor101 = xor i8 %1, %0
  %arrayidx15 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 32, !BLADE-T !10
  store i8 %xor101, ptr %arrayidx15, align 1, !tbaa !7
  %arrayidx.1 = getelementptr inbounds i8, ptr %data, i64 1, !BLADE-T !10, !BLADE-S !11
  %2 = load i8, ptr %arrayidx.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx2.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 17, !BLADE-T !10
  store i8 %2, ptr %arrayidx2.1, align 1, !tbaa !7
  %arrayidx9.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 1, !BLADE-T !10, !BLADE-S !11
  %3 = load i8, ptr %arrayidx9.1, align 1, !tbaa !7, !BLADE-T !10
  %xor101.1 = xor i8 %3, %2
  %arrayidx15.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 33, !BLADE-T !10
  store i8 %xor101.1, ptr %arrayidx15.1, align 1, !tbaa !7
  %arrayidx.2 = getelementptr inbounds i8, ptr %data, i64 2, !BLADE-T !10, !BLADE-S !11
  %4 = load i8, ptr %arrayidx.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx2.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 18, !BLADE-T !10
  store i8 %4, ptr %arrayidx2.2, align 1, !tbaa !7
  %arrayidx9.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 2, !BLADE-T !10, !BLADE-S !11
  %5 = load i8, ptr %arrayidx9.2, align 1, !tbaa !7, !BLADE-T !10
  %xor101.2 = xor i8 %5, %4
  %arrayidx15.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 34, !BLADE-T !10
  store i8 %xor101.2, ptr %arrayidx15.2, align 1, !tbaa !7
  %arrayidx.3 = getelementptr inbounds i8, ptr %data, i64 3, !BLADE-T !10, !BLADE-S !11
  %6 = load i8, ptr %arrayidx.3, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx2.3 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 19, !BLADE-T !10
  store i8 %6, ptr %arrayidx2.3, align 1, !tbaa !7
  %arrayidx9.3 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 3, !BLADE-T !10, !BLADE-S !11
  %7 = load i8, ptr %arrayidx9.3, align 1, !tbaa !7, !BLADE-T !10
  %xor101.3 = xor i8 %7, %6
  %arrayidx15.3 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 35, !BLADE-T !10
  store i8 %xor101.3, ptr %arrayidx15.3, align 1, !tbaa !7
  %arrayidx.4 = getelementptr inbounds i8, ptr %data, i64 4, !BLADE-T !10, !BLADE-S !11
  %8 = load i8, ptr %arrayidx.4, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx2.4 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 20, !BLADE-T !10
  store i8 %8, ptr %arrayidx2.4, align 1, !tbaa !7
  %arrayidx9.4 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 4, !BLADE-T !10, !BLADE-S !11
  %9 = load i8, ptr %arrayidx9.4, align 1, !tbaa !7, !BLADE-T !10
  %xor101.4 = xor i8 %9, %8
  %arrayidx15.4 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 36, !BLADE-T !10
  store i8 %xor101.4, ptr %arrayidx15.4, align 1, !tbaa !7
  %arrayidx.5 = getelementptr inbounds i8, ptr %data, i64 5, !BLADE-T !10, !BLADE-S !11
  %10 = load i8, ptr %arrayidx.5, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx2.5 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 21, !BLADE-T !10
  store i8 %10, ptr %arrayidx2.5, align 1, !tbaa !7
  %arrayidx9.5 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 5, !BLADE-T !10, !BLADE-S !11
  %11 = load i8, ptr %arrayidx9.5, align 1, !tbaa !7, !BLADE-T !10
  %xor101.5 = xor i8 %11, %10
  %arrayidx15.5 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 37, !BLADE-T !10
  store i8 %xor101.5, ptr %arrayidx15.5, align 1, !tbaa !7
  %arrayidx.6 = getelementptr inbounds i8, ptr %data, i64 6, !BLADE-T !10, !BLADE-S !11
  %12 = load i8, ptr %arrayidx.6, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx2.6 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 22, !BLADE-T !10
  store i8 %12, ptr %arrayidx2.6, align 1, !tbaa !7
  %arrayidx9.6 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 6, !BLADE-T !10, !BLADE-S !11
  %13 = load i8, ptr %arrayidx9.6, align 1, !tbaa !7, !BLADE-T !10
  %xor101.6 = xor i8 %13, %12
  %arrayidx15.6 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 38, !BLADE-T !10
  store i8 %xor101.6, ptr %arrayidx15.6, align 1, !tbaa !7
  %arrayidx.7 = getelementptr inbounds i8, ptr %data, i64 7, !BLADE-T !10, !BLADE-S !11
  %14 = load i8, ptr %arrayidx.7, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx2.7 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 23, !BLADE-T !10
  store i8 %14, ptr %arrayidx2.7, align 1, !tbaa !7
  %arrayidx9.7 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 7, !BLADE-T !10, !BLADE-S !11
  %15 = load i8, ptr %arrayidx9.7, align 1, !tbaa !7, !BLADE-T !10
  %xor101.7 = xor i8 %15, %14
  %arrayidx15.7 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 39, !BLADE-T !10
  store i8 %xor101.7, ptr %arrayidx15.7, align 1, !tbaa !7
  %arrayidx.8 = getelementptr inbounds i8, ptr %data, i64 8, !BLADE-T !10, !BLADE-S !11
  %16 = load i8, ptr %arrayidx.8, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx2.8 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 24, !BLADE-T !10
  store i8 %16, ptr %arrayidx2.8, align 1, !tbaa !7
  %arrayidx9.8 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 8, !BLADE-T !10, !BLADE-S !11
  %17 = load i8, ptr %arrayidx9.8, align 1, !tbaa !7, !BLADE-T !10
  %xor101.8 = xor i8 %17, %16
  %arrayidx15.8 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 40, !BLADE-T !10
  store i8 %xor101.8, ptr %arrayidx15.8, align 1, !tbaa !7
  %arrayidx.9 = getelementptr inbounds i8, ptr %data, i64 9, !BLADE-T !10, !BLADE-S !11
  %18 = load i8, ptr %arrayidx.9, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx2.9 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 25, !BLADE-T !10
  store i8 %18, ptr %arrayidx2.9, align 1, !tbaa !7
  %arrayidx9.9 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 9, !BLADE-T !10, !BLADE-S !11
  %19 = load i8, ptr %arrayidx9.9, align 1, !tbaa !7, !BLADE-T !10
  %xor101.9 = xor i8 %19, %18
  %arrayidx15.9 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 41, !BLADE-T !10
  store i8 %xor101.9, ptr %arrayidx15.9, align 1, !tbaa !7
  %arrayidx.10 = getelementptr inbounds i8, ptr %data, i64 10, !BLADE-T !10, !BLADE-S !11
  %20 = load i8, ptr %arrayidx.10, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx2.10 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 26, !BLADE-T !10
  store i8 %20, ptr %arrayidx2.10, align 1, !tbaa !7
  %arrayidx9.10 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 10, !BLADE-T !10, !BLADE-S !11
  %21 = load i8, ptr %arrayidx9.10, align 1, !tbaa !7, !BLADE-T !10
  %xor101.10 = xor i8 %21, %20
  %arrayidx15.10 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 42, !BLADE-T !10
  store i8 %xor101.10, ptr %arrayidx15.10, align 1, !tbaa !7
  %arrayidx.11 = getelementptr inbounds i8, ptr %data, i64 11, !BLADE-T !10, !BLADE-S !11
  %22 = load i8, ptr %arrayidx.11, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx2.11 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 27, !BLADE-T !10
  store i8 %22, ptr %arrayidx2.11, align 1, !tbaa !7
  %arrayidx9.11 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 11, !BLADE-T !10, !BLADE-S !11
  %23 = load i8, ptr %arrayidx9.11, align 1, !tbaa !7, !BLADE-T !10
  %xor101.11 = xor i8 %23, %22
  %arrayidx15.11 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 43, !BLADE-T !10
  store i8 %xor101.11, ptr %arrayidx15.11, align 1, !tbaa !7
  %arrayidx.12 = getelementptr inbounds i8, ptr %data, i64 12, !BLADE-T !10, !BLADE-S !11
  %24 = load i8, ptr %arrayidx.12, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx2.12 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 28, !BLADE-T !10
  store i8 %24, ptr %arrayidx2.12, align 1, !tbaa !7
  %arrayidx9.12 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 12, !BLADE-T !10, !BLADE-S !11
  %25 = load i8, ptr %arrayidx9.12, align 1, !tbaa !7, !BLADE-T !10
  %xor101.12 = xor i8 %25, %24
  %arrayidx15.12 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 44, !BLADE-T !10
  store i8 %xor101.12, ptr %arrayidx15.12, align 1, !tbaa !7
  %arrayidx.13 = getelementptr inbounds i8, ptr %data, i64 13, !BLADE-T !10, !BLADE-S !11
  %26 = load i8, ptr %arrayidx.13, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx2.13 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 29, !BLADE-T !10
  store i8 %26, ptr %arrayidx2.13, align 1, !tbaa !7
  %arrayidx9.13 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 13, !BLADE-T !10, !BLADE-S !11
  %27 = load i8, ptr %arrayidx9.13, align 1, !tbaa !7, !BLADE-T !10
  %xor101.13 = xor i8 %27, %26
  %arrayidx15.13 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 45, !BLADE-T !10
  store i8 %xor101.13, ptr %arrayidx15.13, align 1, !tbaa !7
  %arrayidx.14 = getelementptr inbounds i8, ptr %data, i64 14, !BLADE-T !10, !BLADE-S !11
  %28 = load i8, ptr %arrayidx.14, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx2.14 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 30, !BLADE-T !10
  store i8 %28, ptr %arrayidx2.14, align 1, !tbaa !7
  %arrayidx9.14 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 14, !BLADE-T !10, !BLADE-S !11
  %29 = load i8, ptr %arrayidx9.14, align 1, !tbaa !7, !BLADE-T !10
  %xor101.14 = xor i8 %29, %28
  %arrayidx15.14 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 46, !BLADE-T !10
  store i8 %xor101.14, ptr %arrayidx15.14, align 1, !tbaa !7
  %arrayidx.15 = getelementptr inbounds i8, ptr %data, i64 15, !BLADE-T !10, !BLADE-S !11
  %30 = load i8, ptr %arrayidx.15, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx2.15 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 31, !BLADE-T !10
  store i8 %30, ptr %arrayidx2.15, align 1, !tbaa !7
  %arrayidx9.15 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 15, !BLADE-T !10, !BLADE-S !11
  %31 = load i8, ptr %arrayidx9.15, align 1, !tbaa !7, !BLADE-T !10
  %xor101.15 = xor i8 %31, %30
  %arrayidx15.15 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 47, !BLADE-T !10
  store i8 %xor101.15, ptr %arrayidx15.15, align 1, !tbaa !7
  br label %for.body23

for.body23:                                       ; preds = %for.body23, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.2133, %for.body23 ]
  %t.1104 = phi i32 [ 0, %entry ], [ %conv36.2132, %for.body23 ]
  %idxprom24 = zext i32 %t.1104 to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24, !BLADE-S !11
  %32 = load i8, ptr %arrayidx25, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv, !BLADE-T !10, !BLADE-S !11
  %33 = load i8, ptr %arrayidx29, align 1, !tbaa !7, !BLADE-T !10
  %xor31100 = xor i8 %33, %32
  store i8 %xor31100, ptr %arrayidx29, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %idxprom24.1119 = zext i8 %xor31100 to i64
  %arrayidx25.1120 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.1119, !BLADE-S !11
  %34 = load i8, ptr %arrayidx25.1120, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.1121 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next, !BLADE-T !10, !BLADE-S !11
  %35 = load i8, ptr %arrayidx29.1121, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.1122 = xor i8 %35, %34
  store i8 %xor31100.1122, ptr %arrayidx29.1121, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.1124 = add nuw nsw i64 %indvars.iv, 2
  %idxprom24.2128 = zext i8 %xor31100.1122 to i64
  %arrayidx25.2129 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.2128, !BLADE-S !11
  %36 = load i8, ptr %arrayidx25.2129, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.2130 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.1124, !BLADE-T !10, !BLADE-S !11
  %37 = load i8, ptr %arrayidx29.2130, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.2131 = xor i8 %37, %36
  store i8 %xor31100.2131, ptr %arrayidx29.2130, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %conv36.2132 = zext i8 %xor31100.2131 to i32
  %indvars.iv.next.2133 = add nuw nsw i64 %indvars.iv, 3
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2133, 48
  br i1 %exitcond.not.2, label %for.body23.1, label %for.body23, !llvm.loop !12

for.body23.1:                                     ; preds = %for.body23.1, %for.body23
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.2, %for.body23.1 ], [ 0, %for.body23 ]
  %t.1104.1 = phi i32 [ %conv36.1.2, %for.body23.1 ], [ %conv36.2132, %for.body23 ]
  %idxprom24.1 = zext i32 %t.1104.1 to i64
  %arrayidx25.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.1, !BLADE-S !11
  %38 = load i8, ptr %arrayidx25.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.1, !BLADE-T !10, !BLADE-S !11
  %39 = load i8, ptr %arrayidx29.1, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.1 = xor i8 %39, %38
  store i8 %xor31100.1, ptr %arrayidx29.1, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %idxprom24.1.1 = zext i8 %xor31100.1 to i64
  %arrayidx25.1.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.1.1, !BLADE-S !11
  %40 = load i8, ptr %arrayidx25.1.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.1.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.1, !BLADE-T !10, !BLADE-S !11
  %41 = load i8, ptr %arrayidx29.1.1, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.1.1 = xor i8 %41, %40
  store i8 %xor31100.1.1, ptr %arrayidx29.1.1, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2
  %idxprom24.1.2 = zext i8 %xor31100.1.1 to i64
  %arrayidx25.1.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.1.2, !BLADE-S !11
  %42 = load i8, ptr %arrayidx25.1.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.1.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.1.1, !BLADE-T !10, !BLADE-S !11
  %43 = load i8, ptr %arrayidx29.1.2, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.1.2 = xor i8 %43, %42
  store i8 %xor31100.1.2, ptr %arrayidx29.1.2, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %conv36.1.2 = zext i8 %xor31100.1.2 to i32
  %indvars.iv.next.1.2 = add nuw nsw i64 %indvars.iv.1, 3
  %exitcond.1.not.2 = icmp eq i64 %indvars.iv.next.1.2, 48
  br i1 %exitcond.1.not.2, label %for.end39.1, label %for.body23.1, !llvm.loop !12

for.end39.1:                                      ; preds = %for.body23.1
  %add40.1 = add nuw nsw i32 %conv36.1.2, 1
  %and.1 = and i32 %add40.1, 255
  br label %for.body23.2

for.body23.2:                                     ; preds = %for.body23.2, %for.end39.1
  %indvars.iv.2 = phi i64 [ 0, %for.end39.1 ], [ %indvars.iv.next.2.2, %for.body23.2 ]
  %t.1104.2 = phi i32 [ %and.1, %for.end39.1 ], [ %conv36.2.2, %for.body23.2 ]
  %idxprom24.2 = zext i32 %t.1104.2 to i64
  %arrayidx25.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.2, !BLADE-S !11
  %44 = load i8, ptr %arrayidx25.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.2, !BLADE-T !10, !BLADE-S !11
  %45 = load i8, ptr %arrayidx29.2, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.2 = xor i8 %45, %44
  store i8 %xor31100.2, ptr %arrayidx29.2, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %idxprom24.2.1 = zext i8 %xor31100.2 to i64
  %arrayidx25.2.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.2.1, !BLADE-S !11
  %46 = load i8, ptr %arrayidx25.2.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.2.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.2, !BLADE-T !10, !BLADE-S !11
  %47 = load i8, ptr %arrayidx29.2.1, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.2.1 = xor i8 %47, %46
  store i8 %xor31100.2.1, ptr %arrayidx29.2.1, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2
  %idxprom24.2.2 = zext i8 %xor31100.2.1 to i64
  %arrayidx25.2.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.2.2, !BLADE-S !11
  %48 = load i8, ptr %arrayidx25.2.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.2.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.2.1, !BLADE-T !10, !BLADE-S !11
  %49 = load i8, ptr %arrayidx29.2.2, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.2.2 = xor i8 %49, %48
  store i8 %xor31100.2.2, ptr %arrayidx29.2.2, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %conv36.2.2 = zext i8 %xor31100.2.2 to i32
  %indvars.iv.next.2.2 = add nuw nsw i64 %indvars.iv.2, 3
  %exitcond.2.not.2 = icmp eq i64 %indvars.iv.next.2.2, 48
  br i1 %exitcond.2.not.2, label %for.end39.2, label %for.body23.2, !llvm.loop !12

for.end39.2:                                      ; preds = %for.body23.2
  %add40.2 = add nuw nsw i32 %conv36.2.2, 2
  %and.2 = and i32 %add40.2, 255
  br label %for.body23.3

for.body23.3:                                     ; preds = %for.body23.3, %for.end39.2
  %indvars.iv.3 = phi i64 [ 0, %for.end39.2 ], [ %indvars.iv.next.3.2, %for.body23.3 ]
  %t.1104.3 = phi i32 [ %and.2, %for.end39.2 ], [ %conv36.3.2, %for.body23.3 ]
  %idxprom24.3 = zext i32 %t.1104.3 to i64
  %arrayidx25.3 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.3, !BLADE-S !11
  %50 = load i8, ptr %arrayidx25.3, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.3 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.3, !BLADE-T !10, !BLADE-S !11
  %51 = load i8, ptr %arrayidx29.3, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.3 = xor i8 %51, %50
  store i8 %xor31100.3, ptr %arrayidx29.3, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %idxprom24.3.1 = zext i8 %xor31100.3 to i64
  %arrayidx25.3.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.3.1, !BLADE-S !11
  %52 = load i8, ptr %arrayidx25.3.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.3.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.3, !BLADE-T !10, !BLADE-S !11
  %53 = load i8, ptr %arrayidx29.3.1, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.3.1 = xor i8 %53, %52
  store i8 %xor31100.3.1, ptr %arrayidx29.3.1, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.3.1 = add nuw nsw i64 %indvars.iv.3, 2
  %idxprom24.3.2 = zext i8 %xor31100.3.1 to i64
  %arrayidx25.3.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.3.2, !BLADE-S !11
  %54 = load i8, ptr %arrayidx25.3.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.3.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.3.1, !BLADE-T !10, !BLADE-S !11
  %55 = load i8, ptr %arrayidx29.3.2, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.3.2 = xor i8 %55, %54
  store i8 %xor31100.3.2, ptr %arrayidx29.3.2, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %conv36.3.2 = zext i8 %xor31100.3.2 to i32
  %indvars.iv.next.3.2 = add nuw nsw i64 %indvars.iv.3, 3
  %exitcond.3.not.2 = icmp eq i64 %indvars.iv.next.3.2, 48
  br i1 %exitcond.3.not.2, label %for.end39.3, label %for.body23.3, !llvm.loop !12

for.end39.3:                                      ; preds = %for.body23.3
  %add40.3 = add nuw nsw i32 %conv36.3.2, 3
  %and.3 = and i32 %add40.3, 255
  br label %for.body23.4

for.body23.4:                                     ; preds = %for.body23.4, %for.end39.3
  %indvars.iv.4 = phi i64 [ 0, %for.end39.3 ], [ %indvars.iv.next.4.2, %for.body23.4 ]
  %t.1104.4 = phi i32 [ %and.3, %for.end39.3 ], [ %conv36.4.2, %for.body23.4 ]
  %idxprom24.4 = zext i32 %t.1104.4 to i64
  %arrayidx25.4 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.4, !BLADE-S !11
  %56 = load i8, ptr %arrayidx25.4, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.4 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.4, !BLADE-T !10, !BLADE-S !11
  %57 = load i8, ptr %arrayidx29.4, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.4 = xor i8 %57, %56
  store i8 %xor31100.4, ptr %arrayidx29.4, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1
  %idxprom24.4.1 = zext i8 %xor31100.4 to i64
  %arrayidx25.4.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.4.1, !BLADE-S !11
  %58 = load i8, ptr %arrayidx25.4.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.4.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.4, !BLADE-T !10, !BLADE-S !11
  %59 = load i8, ptr %arrayidx29.4.1, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.4.1 = xor i8 %59, %58
  store i8 %xor31100.4.1, ptr %arrayidx29.4.1, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.4.1 = add nuw nsw i64 %indvars.iv.4, 2
  %idxprom24.4.2 = zext i8 %xor31100.4.1 to i64
  %arrayidx25.4.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.4.2, !BLADE-S !11
  %60 = load i8, ptr %arrayidx25.4.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.4.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.4.1, !BLADE-T !10, !BLADE-S !11
  %61 = load i8, ptr %arrayidx29.4.2, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.4.2 = xor i8 %61, %60
  store i8 %xor31100.4.2, ptr %arrayidx29.4.2, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %conv36.4.2 = zext i8 %xor31100.4.2 to i32
  %indvars.iv.next.4.2 = add nuw nsw i64 %indvars.iv.4, 3
  %exitcond.4.not.2 = icmp eq i64 %indvars.iv.next.4.2, 48
  br i1 %exitcond.4.not.2, label %for.end39.4, label %for.body23.4, !llvm.loop !12

for.end39.4:                                      ; preds = %for.body23.4
  %add40.4 = add nuw nsw i32 %conv36.4.2, 4
  %and.4 = and i32 %add40.4, 255
  br label %for.body23.5

for.body23.5:                                     ; preds = %for.body23.5, %for.end39.4
  %indvars.iv.5 = phi i64 [ 0, %for.end39.4 ], [ %indvars.iv.next.5.2, %for.body23.5 ]
  %t.1104.5 = phi i32 [ %and.4, %for.end39.4 ], [ %conv36.5.2, %for.body23.5 ]
  %idxprom24.5 = zext i32 %t.1104.5 to i64
  %arrayidx25.5 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.5, !BLADE-S !11
  %62 = load i8, ptr %arrayidx25.5, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.5 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.5, !BLADE-T !10, !BLADE-S !11
  %63 = load i8, ptr %arrayidx29.5, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.5 = xor i8 %63, %62
  store i8 %xor31100.5, ptr %arrayidx29.5, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1
  %idxprom24.5.1 = zext i8 %xor31100.5 to i64
  %arrayidx25.5.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.5.1, !BLADE-S !11
  %64 = load i8, ptr %arrayidx25.5.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.5.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.5, !BLADE-T !10, !BLADE-S !11
  %65 = load i8, ptr %arrayidx29.5.1, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.5.1 = xor i8 %65, %64
  store i8 %xor31100.5.1, ptr %arrayidx29.5.1, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.5.1 = add nuw nsw i64 %indvars.iv.5, 2
  %idxprom24.5.2 = zext i8 %xor31100.5.1 to i64
  %arrayidx25.5.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.5.2, !BLADE-S !11
  %66 = load i8, ptr %arrayidx25.5.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.5.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.5.1, !BLADE-T !10, !BLADE-S !11
  %67 = load i8, ptr %arrayidx29.5.2, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.5.2 = xor i8 %67, %66
  store i8 %xor31100.5.2, ptr %arrayidx29.5.2, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %conv36.5.2 = zext i8 %xor31100.5.2 to i32
  %indvars.iv.next.5.2 = add nuw nsw i64 %indvars.iv.5, 3
  %exitcond.5.not.2 = icmp eq i64 %indvars.iv.next.5.2, 48
  br i1 %exitcond.5.not.2, label %for.end39.5, label %for.body23.5, !llvm.loop !12

for.end39.5:                                      ; preds = %for.body23.5
  %add40.5 = add nuw nsw i32 %conv36.5.2, 5
  %and.5 = and i32 %add40.5, 255
  br label %for.body23.6

for.body23.6:                                     ; preds = %for.body23.6, %for.end39.5
  %indvars.iv.6 = phi i64 [ 0, %for.end39.5 ], [ %indvars.iv.next.6.2, %for.body23.6 ]
  %t.1104.6 = phi i32 [ %and.5, %for.end39.5 ], [ %conv36.6.2, %for.body23.6 ]
  %idxprom24.6 = zext i32 %t.1104.6 to i64
  %arrayidx25.6 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.6, !BLADE-S !11
  %68 = load i8, ptr %arrayidx25.6, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.6 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.6, !BLADE-T !10, !BLADE-S !11
  %69 = load i8, ptr %arrayidx29.6, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.6 = xor i8 %69, %68
  store i8 %xor31100.6, ptr %arrayidx29.6, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.6, 1
  %idxprom24.6.1 = zext i8 %xor31100.6 to i64
  %arrayidx25.6.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.6.1, !BLADE-S !11
  %70 = load i8, ptr %arrayidx25.6.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.6.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.6, !BLADE-T !10, !BLADE-S !11
  %71 = load i8, ptr %arrayidx29.6.1, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.6.1 = xor i8 %71, %70
  store i8 %xor31100.6.1, ptr %arrayidx29.6.1, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.6.1 = add nuw nsw i64 %indvars.iv.6, 2
  %idxprom24.6.2 = zext i8 %xor31100.6.1 to i64
  %arrayidx25.6.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.6.2, !BLADE-S !11
  %72 = load i8, ptr %arrayidx25.6.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.6.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.6.1, !BLADE-T !10, !BLADE-S !11
  %73 = load i8, ptr %arrayidx29.6.2, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.6.2 = xor i8 %73, %72
  store i8 %xor31100.6.2, ptr %arrayidx29.6.2, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %conv36.6.2 = zext i8 %xor31100.6.2 to i32
  %indvars.iv.next.6.2 = add nuw nsw i64 %indvars.iv.6, 3
  %exitcond.6.not.2 = icmp eq i64 %indvars.iv.next.6.2, 48
  br i1 %exitcond.6.not.2, label %for.end39.6, label %for.body23.6, !llvm.loop !12

for.end39.6:                                      ; preds = %for.body23.6
  %add40.6 = add nuw nsw i32 %conv36.6.2, 6
  %and.6 = and i32 %add40.6, 255
  br label %for.body23.7

for.body23.7:                                     ; preds = %for.body23.7, %for.end39.6
  %indvars.iv.7 = phi i64 [ 0, %for.end39.6 ], [ %indvars.iv.next.7.2, %for.body23.7 ]
  %t.1104.7 = phi i32 [ %and.6, %for.end39.6 ], [ %conv36.7.2, %for.body23.7 ]
  %idxprom24.7 = zext i32 %t.1104.7 to i64
  %arrayidx25.7 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.7, !BLADE-S !11
  %74 = load i8, ptr %arrayidx25.7, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.7 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.7, !BLADE-T !10, !BLADE-S !11
  %75 = load i8, ptr %arrayidx29.7, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.7 = xor i8 %75, %74
  store i8 %xor31100.7, ptr %arrayidx29.7, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.7, 1
  %idxprom24.7.1 = zext i8 %xor31100.7 to i64
  %arrayidx25.7.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.7.1, !BLADE-S !11
  %76 = load i8, ptr %arrayidx25.7.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.7.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.7, !BLADE-T !10, !BLADE-S !11
  %77 = load i8, ptr %arrayidx29.7.1, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.7.1 = xor i8 %77, %76
  store i8 %xor31100.7.1, ptr %arrayidx29.7.1, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.7.1 = add nuw nsw i64 %indvars.iv.7, 2
  %idxprom24.7.2 = zext i8 %xor31100.7.1 to i64
  %arrayidx25.7.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.7.2, !BLADE-S !11
  %78 = load i8, ptr %arrayidx25.7.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.7.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.7.1, !BLADE-T !10, !BLADE-S !11
  %79 = load i8, ptr %arrayidx29.7.2, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.7.2 = xor i8 %79, %78
  store i8 %xor31100.7.2, ptr %arrayidx29.7.2, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %conv36.7.2 = zext i8 %xor31100.7.2 to i32
  %indvars.iv.next.7.2 = add nuw nsw i64 %indvars.iv.7, 3
  %exitcond.7.not.2 = icmp eq i64 %indvars.iv.next.7.2, 48
  br i1 %exitcond.7.not.2, label %for.end39.7, label %for.body23.7, !llvm.loop !12

for.end39.7:                                      ; preds = %for.body23.7
  %add40.7 = add nuw nsw i32 %conv36.7.2, 7
  %and.7 = and i32 %add40.7, 255
  br label %for.body23.8

for.body23.8:                                     ; preds = %for.body23.8, %for.end39.7
  %indvars.iv.8 = phi i64 [ 0, %for.end39.7 ], [ %indvars.iv.next.8.2, %for.body23.8 ]
  %t.1104.8 = phi i32 [ %and.7, %for.end39.7 ], [ %conv36.8.2, %for.body23.8 ]
  %idxprom24.8 = zext i32 %t.1104.8 to i64
  %arrayidx25.8 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.8, !BLADE-S !11
  %80 = load i8, ptr %arrayidx25.8, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.8 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.8, !BLADE-T !10, !BLADE-S !11
  %81 = load i8, ptr %arrayidx29.8, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.8 = xor i8 %81, %80
  store i8 %xor31100.8, ptr %arrayidx29.8, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.8, 1
  %idxprom24.8.1 = zext i8 %xor31100.8 to i64
  %arrayidx25.8.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.8.1, !BLADE-S !11
  %82 = load i8, ptr %arrayidx25.8.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.8.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.8, !BLADE-T !10, !BLADE-S !11
  %83 = load i8, ptr %arrayidx29.8.1, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.8.1 = xor i8 %83, %82
  store i8 %xor31100.8.1, ptr %arrayidx29.8.1, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.8.1 = add nuw nsw i64 %indvars.iv.8, 2
  %idxprom24.8.2 = zext i8 %xor31100.8.1 to i64
  %arrayidx25.8.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.8.2, !BLADE-S !11
  %84 = load i8, ptr %arrayidx25.8.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.8.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.8.1, !BLADE-T !10, !BLADE-S !11
  %85 = load i8, ptr %arrayidx29.8.2, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.8.2 = xor i8 %85, %84
  store i8 %xor31100.8.2, ptr %arrayidx29.8.2, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %conv36.8.2 = zext i8 %xor31100.8.2 to i32
  %indvars.iv.next.8.2 = add nuw nsw i64 %indvars.iv.8, 3
  %exitcond.8.not.2 = icmp eq i64 %indvars.iv.next.8.2, 48
  br i1 %exitcond.8.not.2, label %for.end39.8, label %for.body23.8, !llvm.loop !12

for.end39.8:                                      ; preds = %for.body23.8
  %add40.8 = add nuw nsw i32 %conv36.8.2, 8
  %and.8 = and i32 %add40.8, 255
  br label %for.body23.9

for.body23.9:                                     ; preds = %for.body23.9, %for.end39.8
  %indvars.iv.9 = phi i64 [ 0, %for.end39.8 ], [ %indvars.iv.next.9.2, %for.body23.9 ]
  %t.1104.9 = phi i32 [ %and.8, %for.end39.8 ], [ %conv36.9.2, %for.body23.9 ]
  %idxprom24.9 = zext i32 %t.1104.9 to i64
  %arrayidx25.9 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.9, !BLADE-S !11
  %86 = load i8, ptr %arrayidx25.9, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.9 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.9, !BLADE-T !10, !BLADE-S !11
  %87 = load i8, ptr %arrayidx29.9, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.9 = xor i8 %87, %86
  store i8 %xor31100.9, ptr %arrayidx29.9, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.9, 1
  %idxprom24.9.1 = zext i8 %xor31100.9 to i64
  %arrayidx25.9.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.9.1, !BLADE-S !11
  %88 = load i8, ptr %arrayidx25.9.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.9.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.9, !BLADE-T !10, !BLADE-S !11
  %89 = load i8, ptr %arrayidx29.9.1, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.9.1 = xor i8 %89, %88
  store i8 %xor31100.9.1, ptr %arrayidx29.9.1, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.9.1 = add nuw nsw i64 %indvars.iv.9, 2
  %idxprom24.9.2 = zext i8 %xor31100.9.1 to i64
  %arrayidx25.9.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.9.2, !BLADE-S !11
  %90 = load i8, ptr %arrayidx25.9.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.9.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.9.1, !BLADE-T !10, !BLADE-S !11
  %91 = load i8, ptr %arrayidx29.9.2, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.9.2 = xor i8 %91, %90
  store i8 %xor31100.9.2, ptr %arrayidx29.9.2, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %conv36.9.2 = zext i8 %xor31100.9.2 to i32
  %indvars.iv.next.9.2 = add nuw nsw i64 %indvars.iv.9, 3
  %exitcond.9.not.2 = icmp eq i64 %indvars.iv.next.9.2, 48
  br i1 %exitcond.9.not.2, label %for.end39.9, label %for.body23.9, !llvm.loop !12

for.end39.9:                                      ; preds = %for.body23.9
  %add40.9 = add nuw nsw i32 %conv36.9.2, 9
  %and.9 = and i32 %add40.9, 255
  br label %for.body23.10

for.body23.10:                                    ; preds = %for.body23.10, %for.end39.9
  %indvars.iv.10 = phi i64 [ 0, %for.end39.9 ], [ %indvars.iv.next.10.2, %for.body23.10 ]
  %t.1104.10 = phi i32 [ %and.9, %for.end39.9 ], [ %conv36.10.2, %for.body23.10 ]
  %idxprom24.10 = zext i32 %t.1104.10 to i64
  %arrayidx25.10 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.10, !BLADE-S !11
  %92 = load i8, ptr %arrayidx25.10, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.10 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.10, !BLADE-T !10, !BLADE-S !11
  %93 = load i8, ptr %arrayidx29.10, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.10 = xor i8 %93, %92
  store i8 %xor31100.10, ptr %arrayidx29.10, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.10, 1
  %idxprom24.10.1 = zext i8 %xor31100.10 to i64
  %arrayidx25.10.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.10.1, !BLADE-S !11
  %94 = load i8, ptr %arrayidx25.10.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.10.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.10, !BLADE-T !10, !BLADE-S !11
  %95 = load i8, ptr %arrayidx29.10.1, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.10.1 = xor i8 %95, %94
  store i8 %xor31100.10.1, ptr %arrayidx29.10.1, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.10.1 = add nuw nsw i64 %indvars.iv.10, 2
  %idxprom24.10.2 = zext i8 %xor31100.10.1 to i64
  %arrayidx25.10.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.10.2, !BLADE-S !11
  %96 = load i8, ptr %arrayidx25.10.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.10.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.10.1, !BLADE-T !10, !BLADE-S !11
  %97 = load i8, ptr %arrayidx29.10.2, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.10.2 = xor i8 %97, %96
  store i8 %xor31100.10.2, ptr %arrayidx29.10.2, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %conv36.10.2 = zext i8 %xor31100.10.2 to i32
  %indvars.iv.next.10.2 = add nuw nsw i64 %indvars.iv.10, 3
  %exitcond.10.not.2 = icmp eq i64 %indvars.iv.next.10.2, 48
  br i1 %exitcond.10.not.2, label %for.end39.10, label %for.body23.10, !llvm.loop !12

for.end39.10:                                     ; preds = %for.body23.10
  %add40.10 = add nuw nsw i32 %conv36.10.2, 10
  %and.10 = and i32 %add40.10, 255
  br label %for.body23.11

for.body23.11:                                    ; preds = %for.body23.11, %for.end39.10
  %indvars.iv.11 = phi i64 [ 0, %for.end39.10 ], [ %indvars.iv.next.11.2, %for.body23.11 ]
  %t.1104.11 = phi i32 [ %and.10, %for.end39.10 ], [ %conv36.11.2, %for.body23.11 ]
  %idxprom24.11 = zext i32 %t.1104.11 to i64
  %arrayidx25.11 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.11, !BLADE-S !11
  %98 = load i8, ptr %arrayidx25.11, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.11 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.11, !BLADE-T !10, !BLADE-S !11
  %99 = load i8, ptr %arrayidx29.11, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.11 = xor i8 %99, %98
  store i8 %xor31100.11, ptr %arrayidx29.11, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.11, 1
  %idxprom24.11.1 = zext i8 %xor31100.11 to i64
  %arrayidx25.11.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.11.1, !BLADE-S !11
  %100 = load i8, ptr %arrayidx25.11.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.11.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.11, !BLADE-T !10, !BLADE-S !11
  %101 = load i8, ptr %arrayidx29.11.1, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.11.1 = xor i8 %101, %100
  store i8 %xor31100.11.1, ptr %arrayidx29.11.1, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.11.1 = add nuw nsw i64 %indvars.iv.11, 2
  %idxprom24.11.2 = zext i8 %xor31100.11.1 to i64
  %arrayidx25.11.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.11.2, !BLADE-S !11
  %102 = load i8, ptr %arrayidx25.11.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.11.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.11.1, !BLADE-T !10, !BLADE-S !11
  %103 = load i8, ptr %arrayidx29.11.2, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.11.2 = xor i8 %103, %102
  store i8 %xor31100.11.2, ptr %arrayidx29.11.2, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %conv36.11.2 = zext i8 %xor31100.11.2 to i32
  %indvars.iv.next.11.2 = add nuw nsw i64 %indvars.iv.11, 3
  %exitcond.11.not.2 = icmp eq i64 %indvars.iv.next.11.2, 48
  br i1 %exitcond.11.not.2, label %for.end39.11, label %for.body23.11, !llvm.loop !12

for.end39.11:                                     ; preds = %for.body23.11
  %add40.11 = add nuw nsw i32 %conv36.11.2, 11
  %and.11 = and i32 %add40.11, 255
  br label %for.body23.12

for.body23.12:                                    ; preds = %for.body23.12, %for.end39.11
  %indvars.iv.12 = phi i64 [ 0, %for.end39.11 ], [ %indvars.iv.next.12.2, %for.body23.12 ]
  %t.1104.12 = phi i32 [ %and.11, %for.end39.11 ], [ %conv36.12.2, %for.body23.12 ]
  %idxprom24.12 = zext i32 %t.1104.12 to i64
  %arrayidx25.12 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.12, !BLADE-S !11
  %104 = load i8, ptr %arrayidx25.12, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.12 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.12, !BLADE-T !10, !BLADE-S !11
  %105 = load i8, ptr %arrayidx29.12, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.12 = xor i8 %105, %104
  store i8 %xor31100.12, ptr %arrayidx29.12, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.12, 1
  %idxprom24.12.1 = zext i8 %xor31100.12 to i64
  %arrayidx25.12.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.12.1, !BLADE-S !11
  %106 = load i8, ptr %arrayidx25.12.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.12.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.12, !BLADE-T !10, !BLADE-S !11
  %107 = load i8, ptr %arrayidx29.12.1, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.12.1 = xor i8 %107, %106
  store i8 %xor31100.12.1, ptr %arrayidx29.12.1, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.12.1 = add nuw nsw i64 %indvars.iv.12, 2
  %idxprom24.12.2 = zext i8 %xor31100.12.1 to i64
  %arrayidx25.12.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.12.2, !BLADE-S !11
  %108 = load i8, ptr %arrayidx25.12.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.12.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.12.1, !BLADE-T !10, !BLADE-S !11
  %109 = load i8, ptr %arrayidx29.12.2, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.12.2 = xor i8 %109, %108
  store i8 %xor31100.12.2, ptr %arrayidx29.12.2, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %conv36.12.2 = zext i8 %xor31100.12.2 to i32
  %indvars.iv.next.12.2 = add nuw nsw i64 %indvars.iv.12, 3
  %exitcond.12.not.2 = icmp eq i64 %indvars.iv.next.12.2, 48
  br i1 %exitcond.12.not.2, label %for.end39.12, label %for.body23.12, !llvm.loop !12

for.end39.12:                                     ; preds = %for.body23.12
  %add40.12 = add nuw nsw i32 %conv36.12.2, 12
  %and.12 = and i32 %add40.12, 255
  br label %for.body23.13

for.body23.13:                                    ; preds = %for.body23.13, %for.end39.12
  %indvars.iv.13 = phi i64 [ 0, %for.end39.12 ], [ %indvars.iv.next.13.2, %for.body23.13 ]
  %t.1104.13 = phi i32 [ %and.12, %for.end39.12 ], [ %conv36.13.2, %for.body23.13 ]
  %idxprom24.13 = zext i32 %t.1104.13 to i64
  %arrayidx25.13 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.13, !BLADE-S !11
  %110 = load i8, ptr %arrayidx25.13, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.13 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.13, !BLADE-T !10, !BLADE-S !11
  %111 = load i8, ptr %arrayidx29.13, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.13 = xor i8 %111, %110
  store i8 %xor31100.13, ptr %arrayidx29.13, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.13, 1
  %idxprom24.13.1 = zext i8 %xor31100.13 to i64
  %arrayidx25.13.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.13.1, !BLADE-S !11
  %112 = load i8, ptr %arrayidx25.13.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.13.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.13, !BLADE-T !10, !BLADE-S !11
  %113 = load i8, ptr %arrayidx29.13.1, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.13.1 = xor i8 %113, %112
  store i8 %xor31100.13.1, ptr %arrayidx29.13.1, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.13.1 = add nuw nsw i64 %indvars.iv.13, 2
  %idxprom24.13.2 = zext i8 %xor31100.13.1 to i64
  %arrayidx25.13.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.13.2, !BLADE-S !11
  %114 = load i8, ptr %arrayidx25.13.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.13.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.13.1, !BLADE-T !10, !BLADE-S !11
  %115 = load i8, ptr %arrayidx29.13.2, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.13.2 = xor i8 %115, %114
  store i8 %xor31100.13.2, ptr %arrayidx29.13.2, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %conv36.13.2 = zext i8 %xor31100.13.2 to i32
  %indvars.iv.next.13.2 = add nuw nsw i64 %indvars.iv.13, 3
  %exitcond.13.not.2 = icmp eq i64 %indvars.iv.next.13.2, 48
  br i1 %exitcond.13.not.2, label %for.end39.13, label %for.body23.13, !llvm.loop !12

for.end39.13:                                     ; preds = %for.body23.13
  %add40.13 = add nuw nsw i32 %conv36.13.2, 13
  %and.13 = and i32 %add40.13, 255
  br label %for.body23.14

for.body23.14:                                    ; preds = %for.body23.14, %for.end39.13
  %indvars.iv.14 = phi i64 [ 0, %for.end39.13 ], [ %indvars.iv.next.14.2, %for.body23.14 ]
  %t.1104.14 = phi i32 [ %and.13, %for.end39.13 ], [ %conv36.14.2, %for.body23.14 ]
  %idxprom24.14 = zext i32 %t.1104.14 to i64
  %arrayidx25.14 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.14, !BLADE-S !11
  %116 = load i8, ptr %arrayidx25.14, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.14 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.14, !BLADE-T !10, !BLADE-S !11
  %117 = load i8, ptr %arrayidx29.14, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.14 = xor i8 %117, %116
  store i8 %xor31100.14, ptr %arrayidx29.14, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.14, 1
  %idxprom24.14.1 = zext i8 %xor31100.14 to i64
  %arrayidx25.14.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.14.1, !BLADE-S !11
  %118 = load i8, ptr %arrayidx25.14.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.14.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.14, !BLADE-T !10, !BLADE-S !11
  %119 = load i8, ptr %arrayidx29.14.1, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.14.1 = xor i8 %119, %118
  store i8 %xor31100.14.1, ptr %arrayidx29.14.1, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.14.1 = add nuw nsw i64 %indvars.iv.14, 2
  %idxprom24.14.2 = zext i8 %xor31100.14.1 to i64
  %arrayidx25.14.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.14.2, !BLADE-S !11
  %120 = load i8, ptr %arrayidx25.14.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.14.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.14.1, !BLADE-T !10, !BLADE-S !11
  %121 = load i8, ptr %arrayidx29.14.2, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.14.2 = xor i8 %121, %120
  store i8 %xor31100.14.2, ptr %arrayidx29.14.2, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %conv36.14.2 = zext i8 %xor31100.14.2 to i32
  %indvars.iv.next.14.2 = add nuw nsw i64 %indvars.iv.14, 3
  %exitcond.14.not.2 = icmp eq i64 %indvars.iv.next.14.2, 48
  br i1 %exitcond.14.not.2, label %for.end39.14, label %for.body23.14, !llvm.loop !12

for.end39.14:                                     ; preds = %for.body23.14
  %add40.14 = add nuw nsw i32 %conv36.14.2, 14
  %and.14 = and i32 %add40.14, 255
  br label %for.body23.15

for.body23.15:                                    ; preds = %for.body23.15, %for.end39.14
  %indvars.iv.15 = phi i64 [ 0, %for.end39.14 ], [ %indvars.iv.next.15.2, %for.body23.15 ]
  %t.1104.15 = phi i32 [ %and.14, %for.end39.14 ], [ %conv36.15.2, %for.body23.15 ]
  %idxprom24.15 = zext i32 %t.1104.15 to i64
  %arrayidx25.15 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.15, !BLADE-S !11
  %122 = load i8, ptr %arrayidx25.15, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.15 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.15, !BLADE-T !10, !BLADE-S !11
  %123 = load i8, ptr %arrayidx29.15, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.15 = xor i8 %123, %122
  store i8 %xor31100.15, ptr %arrayidx29.15, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.15, 1
  %idxprom24.15.1 = zext i8 %xor31100.15 to i64
  %arrayidx25.15.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.15.1, !BLADE-S !11
  %124 = load i8, ptr %arrayidx25.15.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.15.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.15, !BLADE-T !10, !BLADE-S !11
  %125 = load i8, ptr %arrayidx29.15.1, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.15.1 = xor i8 %125, %124
  store i8 %xor31100.15.1, ptr %arrayidx29.15.1, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.15.1 = add nuw nsw i64 %indvars.iv.15, 2
  %idxprom24.15.2 = zext i8 %xor31100.15.1 to i64
  %arrayidx25.15.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.15.2, !BLADE-S !11
  %126 = load i8, ptr %arrayidx25.15.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.15.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.15.1, !BLADE-T !10, !BLADE-S !11
  %127 = load i8, ptr %arrayidx29.15.2, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.15.2 = xor i8 %127, %126
  store i8 %xor31100.15.2, ptr %arrayidx29.15.2, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %conv36.15.2 = zext i8 %xor31100.15.2 to i32
  %indvars.iv.next.15.2 = add nuw nsw i64 %indvars.iv.15, 3
  %exitcond.15.not.2 = icmp eq i64 %indvars.iv.next.15.2, 48
  br i1 %exitcond.15.not.2, label %for.end39.15, label %for.body23.15, !llvm.loop !12

for.end39.15:                                     ; preds = %for.body23.15
  %add40.15 = add nuw nsw i32 %conv36.15.2, 15
  %and.15 = and i32 %add40.15, 255
  br label %for.body23.16

for.body23.16:                                    ; preds = %for.body23.16, %for.end39.15
  %indvars.iv.16 = phi i64 [ 0, %for.end39.15 ], [ %indvars.iv.next.16.2, %for.body23.16 ]
  %t.1104.16 = phi i32 [ %and.15, %for.end39.15 ], [ %conv36.16.2, %for.body23.16 ]
  %idxprom24.16 = zext i32 %t.1104.16 to i64
  %arrayidx25.16 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.16, !BLADE-S !11
  %128 = load i8, ptr %arrayidx25.16, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.16 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.16, !BLADE-T !10, !BLADE-S !11
  %129 = load i8, ptr %arrayidx29.16, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.16 = xor i8 %129, %128
  store i8 %xor31100.16, ptr %arrayidx29.16, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.16 = add nuw nsw i64 %indvars.iv.16, 1
  %idxprom24.16.1 = zext i8 %xor31100.16 to i64
  %arrayidx25.16.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.16.1, !BLADE-S !11
  %130 = load i8, ptr %arrayidx25.16.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.16.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.16, !BLADE-T !10, !BLADE-S !11
  %131 = load i8, ptr %arrayidx29.16.1, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.16.1 = xor i8 %131, %130
  store i8 %xor31100.16.1, ptr %arrayidx29.16.1, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.16.1 = add nuw nsw i64 %indvars.iv.16, 2
  %idxprom24.16.2 = zext i8 %xor31100.16.1 to i64
  %arrayidx25.16.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.16.2, !BLADE-S !11
  %132 = load i8, ptr %arrayidx25.16.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.16.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.16.1, !BLADE-T !10, !BLADE-S !11
  %133 = load i8, ptr %arrayidx29.16.2, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.16.2 = xor i8 %133, %132
  store i8 %xor31100.16.2, ptr %arrayidx29.16.2, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %conv36.16.2 = zext i8 %xor31100.16.2 to i32
  %indvars.iv.next.16.2 = add nuw nsw i64 %indvars.iv.16, 3
  %exitcond.16.not.2 = icmp eq i64 %indvars.iv.next.16.2, 48
  br i1 %exitcond.16.not.2, label %for.end39.16, label %for.body23.16, !llvm.loop !12

for.end39.16:                                     ; preds = %for.body23.16
  %add40.16 = add nuw nsw i32 %conv36.16.2, 16
  %and.16 = and i32 %add40.16, 255
  br label %for.body23.17

for.body23.17:                                    ; preds = %for.body23.17, %for.end39.16
  %indvars.iv.17 = phi i64 [ 0, %for.end39.16 ], [ %indvars.iv.next.17.2, %for.body23.17 ]
  %t.1104.17 = phi i32 [ %and.16, %for.end39.16 ], [ %conv36.17.2, %for.body23.17 ]
  %idxprom24.17 = zext i32 %t.1104.17 to i64
  %arrayidx25.17 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.17, !BLADE-S !11
  %134 = load i8, ptr %arrayidx25.17, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.17 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.17, !BLADE-T !10, !BLADE-S !11
  %135 = load i8, ptr %arrayidx29.17, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.17 = xor i8 %135, %134
  store i8 %xor31100.17, ptr %arrayidx29.17, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.17 = add nuw nsw i64 %indvars.iv.17, 1
  %idxprom24.17.1 = zext i8 %xor31100.17 to i64
  %arrayidx25.17.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.17.1, !BLADE-S !11
  %136 = load i8, ptr %arrayidx25.17.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.17.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.17, !BLADE-T !10, !BLADE-S !11
  %137 = load i8, ptr %arrayidx29.17.1, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.17.1 = xor i8 %137, %136
  store i8 %xor31100.17.1, ptr %arrayidx29.17.1, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %indvars.iv.next.17.1 = add nuw nsw i64 %indvars.iv.17, 2
  %idxprom24.17.2 = zext i8 %xor31100.17.1 to i64
  %arrayidx25.17.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom24.17.2, !BLADE-S !11
  %138 = load i8, ptr %arrayidx25.17.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx29.17.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1, i64 %indvars.iv.next.17.1, !BLADE-T !10, !BLADE-S !11
  %139 = load i8, ptr %arrayidx29.17.2, align 1, !tbaa !7, !BLADE-T !10
  %xor31100.17.2 = xor i8 %139, %138
  store i8 %xor31100.17.2, ptr %arrayidx29.17.2, align 1, !tbaa !7
  call void @llvm.x86.sse2.lfence()
  %conv36.17.2 = zext i8 %xor31100.17.2 to i32
  %indvars.iv.next.17.2 = add nuw nsw i64 %indvars.iv.17, 3
  %exitcond.17.not.2 = icmp eq i64 %indvars.iv.next.17.2, 48
  br i1 %exitcond.17.not.2, label %for.end39.17, label %for.body23.17, !llvm.loop !12

for.end39.17:                                     ; preds = %for.body23.17
  %arrayidx44 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 2, i64 15, !BLADE-T !10, !BLADE-S !11
  %140 = load i8, ptr %arrayidx44, align 1, !tbaa !7, !BLADE-T !10
  %141 = load i8, ptr %data, align 1, !tbaa !7, !BLADE-T !10
  %xor5398 = xor i8 %141, %140
  %idxprom54 = zext i8 %xor5398 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx55 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom54, !BLADE-S !11
  %142 = load i8, ptr %arrayidx55, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx59 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 2, i64 0, !BLADE-T !10, !BLADE-S !11
  %143 = load i8, ptr %arrayidx59, align 1, !tbaa !7, !BLADE-T !10
  %xor6199 = xor i8 %143, %142
  store i8 %xor6199, ptr %arrayidx59, align 1, !tbaa !7
  %144 = load i8, ptr %arrayidx.1, align 1, !tbaa !7, !BLADE-T !10
  %xor5398.1 = xor i8 %144, %xor6199
  %idxprom54.1 = zext i8 %xor5398.1 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx55.1 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom54.1, !BLADE-S !11
  %145 = load i8, ptr %arrayidx55.1, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx59.1 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 2, i64 1, !BLADE-T !10, !BLADE-S !11
  %146 = load i8, ptr %arrayidx59.1, align 1, !tbaa !7, !BLADE-T !10
  %xor6199.1 = xor i8 %146, %145
  store i8 %xor6199.1, ptr %arrayidx59.1, align 1, !tbaa !7
  %147 = load i8, ptr %arrayidx.2, align 1, !tbaa !7, !BLADE-T !10
  %xor5398.2 = xor i8 %147, %xor6199.1
  %idxprom54.2 = zext i8 %xor5398.2 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx55.2 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom54.2, !BLADE-S !11
  %148 = load i8, ptr %arrayidx55.2, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx59.2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 2, i64 2, !BLADE-T !10, !BLADE-S !11
  %149 = load i8, ptr %arrayidx59.2, align 1, !tbaa !7, !BLADE-T !10
  %xor6199.2 = xor i8 %149, %148
  store i8 %xor6199.2, ptr %arrayidx59.2, align 1, !tbaa !7
  %150 = load i8, ptr %arrayidx.3, align 1, !tbaa !7, !BLADE-T !10
  %xor5398.3 = xor i8 %150, %xor6199.2
  %idxprom54.3 = zext i8 %xor5398.3 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx55.3 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom54.3, !BLADE-S !11
  %151 = load i8, ptr %arrayidx55.3, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx59.3 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 2, i64 3, !BLADE-T !10, !BLADE-S !11
  %152 = load i8, ptr %arrayidx59.3, align 1, !tbaa !7, !BLADE-T !10
  %xor6199.3 = xor i8 %152, %151
  store i8 %xor6199.3, ptr %arrayidx59.3, align 1, !tbaa !7
  %153 = load i8, ptr %arrayidx.4, align 1, !tbaa !7, !BLADE-T !10
  %xor5398.4 = xor i8 %153, %xor6199.3
  %idxprom54.4 = zext i8 %xor5398.4 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx55.4 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom54.4, !BLADE-S !11
  %154 = load i8, ptr %arrayidx55.4, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx59.4 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 2, i64 4, !BLADE-T !10, !BLADE-S !11
  %155 = load i8, ptr %arrayidx59.4, align 1, !tbaa !7, !BLADE-T !10
  %xor6199.4 = xor i8 %155, %154
  store i8 %xor6199.4, ptr %arrayidx59.4, align 1, !tbaa !7
  %156 = load i8, ptr %arrayidx.5, align 1, !tbaa !7, !BLADE-T !10
  %xor5398.5 = xor i8 %156, %xor6199.4
  %idxprom54.5 = zext i8 %xor5398.5 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx55.5 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom54.5, !BLADE-S !11
  %157 = load i8, ptr %arrayidx55.5, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx59.5 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 2, i64 5, !BLADE-T !10, !BLADE-S !11
  %158 = load i8, ptr %arrayidx59.5, align 1, !tbaa !7, !BLADE-T !10
  %xor6199.5 = xor i8 %158, %157
  store i8 %xor6199.5, ptr %arrayidx59.5, align 1, !tbaa !7
  %159 = load i8, ptr %arrayidx.6, align 1, !tbaa !7, !BLADE-T !10
  %xor5398.6 = xor i8 %159, %xor6199.5
  %idxprom54.6 = zext i8 %xor5398.6 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx55.6 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom54.6, !BLADE-S !11
  %160 = load i8, ptr %arrayidx55.6, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx59.6 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 2, i64 6, !BLADE-T !10, !BLADE-S !11
  %161 = load i8, ptr %arrayidx59.6, align 1, !tbaa !7, !BLADE-T !10
  %xor6199.6 = xor i8 %161, %160
  store i8 %xor6199.6, ptr %arrayidx59.6, align 1, !tbaa !7
  %162 = load i8, ptr %arrayidx.7, align 1, !tbaa !7, !BLADE-T !10
  %xor5398.7 = xor i8 %162, %xor6199.6
  %idxprom54.7 = zext i8 %xor5398.7 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx55.7 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom54.7, !BLADE-S !11
  %163 = load i8, ptr %arrayidx55.7, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx59.7 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 2, i64 7, !BLADE-T !10, !BLADE-S !11
  %164 = load i8, ptr %arrayidx59.7, align 1, !tbaa !7, !BLADE-T !10
  %xor6199.7 = xor i8 %164, %163
  store i8 %xor6199.7, ptr %arrayidx59.7, align 1, !tbaa !7
  %165 = load i8, ptr %arrayidx.8, align 1, !tbaa !7, !BLADE-T !10
  %xor5398.8 = xor i8 %165, %xor6199.7
  %idxprom54.8 = zext i8 %xor5398.8 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx55.8 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom54.8, !BLADE-S !11
  %166 = load i8, ptr %arrayidx55.8, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx59.8 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 2, i64 8, !BLADE-T !10, !BLADE-S !11
  %167 = load i8, ptr %arrayidx59.8, align 1, !tbaa !7, !BLADE-T !10
  %xor6199.8 = xor i8 %167, %166
  store i8 %xor6199.8, ptr %arrayidx59.8, align 1, !tbaa !7
  %168 = load i8, ptr %arrayidx.9, align 1, !tbaa !7, !BLADE-T !10
  %xor5398.9 = xor i8 %168, %xor6199.8
  %idxprom54.9 = zext i8 %xor5398.9 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx55.9 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom54.9, !BLADE-S !11
  %169 = load i8, ptr %arrayidx55.9, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx59.9 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 2, i64 9, !BLADE-T !10, !BLADE-S !11
  %170 = load i8, ptr %arrayidx59.9, align 1, !tbaa !7, !BLADE-T !10
  %xor6199.9 = xor i8 %170, %169
  store i8 %xor6199.9, ptr %arrayidx59.9, align 1, !tbaa !7
  %171 = load i8, ptr %arrayidx.10, align 1, !tbaa !7, !BLADE-T !10
  %xor5398.10 = xor i8 %171, %xor6199.9
  %idxprom54.10 = zext i8 %xor5398.10 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx55.10 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom54.10, !BLADE-S !11
  %172 = load i8, ptr %arrayidx55.10, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx59.10 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 2, i64 10, !BLADE-T !10, !BLADE-S !11
  %173 = load i8, ptr %arrayidx59.10, align 1, !tbaa !7, !BLADE-T !10
  %xor6199.10 = xor i8 %173, %172
  store i8 %xor6199.10, ptr %arrayidx59.10, align 1, !tbaa !7
  %174 = load i8, ptr %arrayidx.11, align 1, !tbaa !7, !BLADE-T !10
  %xor5398.11 = xor i8 %174, %xor6199.10
  %idxprom54.11 = zext i8 %xor5398.11 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx55.11 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom54.11, !BLADE-S !11
  %175 = load i8, ptr %arrayidx55.11, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx59.11 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 2, i64 11, !BLADE-T !10, !BLADE-S !11
  %176 = load i8, ptr %arrayidx59.11, align 1, !tbaa !7, !BLADE-T !10
  %xor6199.11 = xor i8 %176, %175
  store i8 %xor6199.11, ptr %arrayidx59.11, align 1, !tbaa !7
  %177 = load i8, ptr %arrayidx.12, align 1, !tbaa !7, !BLADE-T !10
  %xor5398.12 = xor i8 %177, %xor6199.11
  %idxprom54.12 = zext i8 %xor5398.12 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx55.12 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom54.12, !BLADE-S !11
  %178 = load i8, ptr %arrayidx55.12, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx59.12 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 2, i64 12, !BLADE-T !10, !BLADE-S !11
  %179 = load i8, ptr %arrayidx59.12, align 1, !tbaa !7, !BLADE-T !10
  %xor6199.12 = xor i8 %179, %178
  store i8 %xor6199.12, ptr %arrayidx59.12, align 1, !tbaa !7
  %180 = load i8, ptr %arrayidx.13, align 1, !tbaa !7, !BLADE-T !10
  %xor5398.13 = xor i8 %180, %xor6199.12
  %idxprom54.13 = zext i8 %xor5398.13 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx55.13 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom54.13, !BLADE-S !11
  %181 = load i8, ptr %arrayidx55.13, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx59.13 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 2, i64 13, !BLADE-T !10, !BLADE-S !11
  %182 = load i8, ptr %arrayidx59.13, align 1, !tbaa !7, !BLADE-T !10
  %xor6199.13 = xor i8 %182, %181
  store i8 %xor6199.13, ptr %arrayidx59.13, align 1, !tbaa !7
  %183 = load i8, ptr %arrayidx.14, align 1, !tbaa !7, !BLADE-T !10
  %xor5398.14 = xor i8 %183, %xor6199.13
  %idxprom54.14 = zext i8 %xor5398.14 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx55.14 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom54.14, !BLADE-S !11
  %184 = load i8, ptr %arrayidx55.14, align 1, !tbaa !7, !BLADE-T !10
  %arrayidx59.14 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 2, i64 14, !BLADE-T !10, !BLADE-S !11
  %185 = load i8, ptr %arrayidx59.14, align 1, !tbaa !7, !BLADE-T !10
  %xor6199.14 = xor i8 %185, %184
  store i8 %xor6199.14, ptr %arrayidx59.14, align 1, !tbaa !7
  %186 = load i8, ptr %arrayidx.15, align 1, !tbaa !7, !BLADE-T !10
  %xor5398.15 = xor i8 %186, %xor6199.14
  %idxprom54.15 = zext i8 %xor5398.15 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx55.15 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %idxprom54.15, !BLADE-S !11
  %187 = load i8, ptr %arrayidx55.15, align 1, !tbaa !7, !BLADE-T !10
  %188 = load i8, ptr %arrayidx44, align 1, !tbaa !7, !BLADE-T !10
  %xor6199.15 = xor i8 %188, %187
  store i8 %xor6199.15, ptr %arrayidx44, align 1, !tbaa !7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @md2_init(ptr nocapture noundef writeonly %ctx) local_unnamed_addr #2 {
entry:
  %uglygep = getelementptr i8, ptr %ctx, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %uglygep, i8 0, i64 68, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @md2_update(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %data, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp18.not = icmp eq i64 %len, 0
  br i1 %cmp18.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %len2 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 3
  %.pre = load i32, ptr %len2, align 4, !tbaa !14
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %0 = phi i32 [ %.pre, %for.body.lr.ph ], [ %3, %for.inc ]
  %i.019 = phi i64 [ 0, %for.body.lr.ph ], [ %inc9, %for.inc ]
  %arrayidx = getelementptr inbounds i8, ptr %data, i64 %i.019
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !7
  %idxprom = sext i32 %0 to i64
  %arrayidx3 = getelementptr inbounds [16 x i8], ptr %ctx, i64 0, i64 %idxprom
  store i8 %1, ptr %arrayidx3, align 1, !tbaa !7
  %2 = load i32, ptr %len2, align 4, !tbaa !14
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %len2, align 4, !tbaa !14
  %cmp6 = icmp eq i32 %inc, 16
  br i1 %cmp6, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  tail call void @md2_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  store i32 0, ptr %len2, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %3 = phi i32 [ %inc, %for.body ], [ 0, %if.then ]
  %inc9 = add nuw i64 %i.019, 1
  %exitcond.not = icmp eq i64 %inc9, %len
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !17

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @md2_final(ptr nocapture noundef %ctx, ptr nocapture noundef writeonly %hash) local_unnamed_addr #3 {
entry:
  %len = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 3
  %0 = load i32, ptr %len, align 4, !tbaa !14
  %cmp14 = icmp slt i32 %0, 16
  br i1 %cmp14, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %1 = trunc i32 %0 to i8
  %conv = sub i8 16, %1
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %2 = phi i32 [ %0, %while.body.lr.ph ], [ %.pr, %while.body ]
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %len, align 4, !tbaa !14
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %ctx, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !7
  %.pr = load i32, ptr %len, align 4, !tbaa !14
  %cmp = icmp slt i32 %.pr, 16
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !18

while.end:                                        ; preds = %while.body, %entry
  tail call void @md2_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %checksum = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 2
  tail call void @md2_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %checksum)
  %state = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %hash, ptr noundef nonnull align 4 dereferenceable(16) %state, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @md2_test() local_unnamed_addr #5 {
entry:
  %text1 = alloca [4 x i8], align 4
  %buf = alloca [16 x i8], align 16
  %ctx = alloca %struct.MD2_CTX, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %text1) #11
  store i32 6513249, ptr %text1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #11
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx) #11
  %uglygep.i = getelementptr inbounds i8, ptr %ctx, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %uglygep.i, i8 0, i64 68, i1 false)
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %text1) #12
  %cmp18.not.i = icmp eq i64 %call, 0
  %len.i166 = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 3
  br i1 %cmp18.not.i, label %while.body.lr.ph.i, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %entry
  %0 = phi i32 [ %3, %for.inc.i ], [ 0, %entry ]
  %i.019.i = phi i64 [ %inc9.i, %for.inc.i ], [ 0, %entry ]
  %arrayidx.i = getelementptr inbounds i8, ptr %text1, i64 %i.019.i
  %1 = load i8, ptr %arrayidx.i, align 1, !tbaa !7
  %idxprom.i = sext i32 %0 to i64
  %arrayidx3.i = getelementptr inbounds [16 x i8], ptr %ctx, i64 0, i64 %idxprom.i
  store i8 %1, ptr %arrayidx3.i, align 1, !tbaa !7
  %2 = load i32, ptr %len.i166, align 4, !tbaa !14
  %inc.i = add nsw i32 %2, 1
  store i32 %inc.i, ptr %len.i166, align 4, !tbaa !14
  %cmp6.i = icmp eq i32 %inc.i, 16
  br i1 %cmp6.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @md2_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  store i32 0, ptr %len.i166, align 4, !tbaa !14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %3 = phi i32 [ %inc.i, %for.body.i ], [ 0, %if.then.i ]
  %inc9.i = add nuw i64 %i.019.i, 1
  %exitcond.not.i = icmp eq i64 %inc9.i, %call
  br i1 %exitcond.not.i, label %md2_update.exit, label %for.body.i, !llvm.loop !17

md2_update.exit:                                  ; preds = %for.inc.i
  %len.i = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 3
  %cmp14.i = icmp slt i32 %3, 16
  br i1 %cmp14.i, label %while.body.lr.ph.i, label %md2_final.exit

while.body.lr.ph.i:                               ; preds = %md2_update.exit, %entry
  %len.i168 = phi ptr [ %len.i, %md2_update.exit ], [ %len.i166, %entry ]
  %4 = phi i32 [ %3, %md2_update.exit ], [ 0, %entry ]
  %5 = trunc i32 %4 to i8
  %conv.i = sub i8 16, %5
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %6 = phi i32 [ %4, %while.body.lr.ph.i ], [ %.pr.i, %while.body.i ]
  %inc.i41 = add nsw i32 %6, 1
  store i32 %inc.i41, ptr %len.i168, align 4, !tbaa !14
  %idxprom.i42 = sext i32 %6 to i64
  %arrayidx.i43 = getelementptr inbounds [16 x i8], ptr %ctx, i64 0, i64 %idxprom.i42
  store i8 %conv.i, ptr %arrayidx.i43, align 1, !tbaa !7
  %.pr.i = load i32, ptr %len.i168, align 4, !tbaa !14
  %cmp.i = icmp slt i32 %.pr.i, 16
  br i1 %cmp.i, label %while.body.i, label %md2_final.exit, !llvm.loop !18

md2_final.exit:                                   ; preds = %while.body.i, %md2_update.exit
  %len.i169 = phi ptr [ %len.i, %md2_update.exit ], [ %len.i168, %while.body.i ]
  call void @md2_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  %checksum.i = getelementptr inbounds %struct.MD2_CTX, ptr %ctx, i64 0, i32 2
  call void @md2_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %checksum.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %buf, ptr noundef nonnull align 4 dereferenceable(16) %uglygep.i, i64 16, i1 false)
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @__const.md2_test.hash1, ptr noundef nonnull dereferenceable(16) %buf, i64 16)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %uglygep.i, i8 0, i64 68, i1 false)
  br label %for.body.i55

for.body.i55:                                     ; preds = %for.body.i55.backedge, %md2_final.exit
  %7 = phi i32 [ 0, %md2_final.exit ], [ %.be205, %for.body.i55.backedge ]
  %i.019.i49 = phi i64 [ 0, %md2_final.exit ], [ %i.019.i49.be, %for.body.i55.backedge ]
  %arrayidx.i50 = getelementptr inbounds i8, ptr @__const.md2_test.text2, i64 %i.019.i49
  %8 = load i8, ptr %arrayidx.i50, align 1, !tbaa !7
  %idxprom.i51 = sext i32 %7 to i64
  %arrayidx3.i52 = getelementptr inbounds [16 x i8], ptr %ctx, i64 0, i64 %idxprom.i51
  store i8 %8, ptr %arrayidx3.i52, align 1, !tbaa !7
  %9 = load i32, ptr %len.i169, align 4, !tbaa !14
  %inc.i53 = add nsw i32 %9, 1
  store i32 %inc.i53, ptr %len.i169, align 4, !tbaa !14
  %cmp6.i54 = icmp eq i32 %inc.i53, 16
  br i1 %cmp6.i54, label %for.inc.i59.thread, label %for.inc.i59

for.inc.i59:                                      ; preds = %for.body.i55
  %inc9.i57 = add nuw nsw i64 %i.019.i49, 1
  %exitcond.not.i58 = icmp eq i64 %inc9.i57, 26
  br i1 %exitcond.not.i58, label %md2_update.exit60, label %for.body.i55.backedge

for.body.i55.backedge:                            ; preds = %for.inc.i59.thread, %for.inc.i59
  %.be205 = phi i32 [ %inc.i53, %for.inc.i59 ], [ 0, %for.inc.i59.thread ]
  %i.019.i49.be = phi i64 [ %inc9.i57, %for.inc.i59 ], [ %inc9.i57170, %for.inc.i59.thread ]
  br label %for.body.i55, !llvm.loop !17

for.inc.i59.thread:                               ; preds = %for.body.i55
  call void @md2_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  store i32 0, ptr %len.i169, align 4, !tbaa !14
  %inc9.i57170 = add nuw nsw i64 %i.019.i49, 1
  %exitcond.not.i58171 = icmp eq i64 %inc9.i57170, 26
  br i1 %exitcond.not.i58171, label %md2_update.exit60.thread, label %for.body.i55.backedge

md2_update.exit60.thread:                         ; preds = %for.inc.i59.thread
  %tobool6.not172 = icmp eq i32 %bcmp, 0
  br label %while.body.lr.ph.i64

md2_update.exit60:                                ; preds = %for.inc.i59
  %tobool6.not = icmp eq i32 %bcmp, 0
  %cmp14.i62 = icmp slt i32 %9, 15
  br i1 %cmp14.i62, label %while.body.lr.ph.i64, label %md2_final.exit73

while.body.lr.ph.i64:                             ; preds = %md2_update.exit60, %md2_update.exit60.thread
  %tobool6.not175 = phi i1 [ %tobool6.not172, %md2_update.exit60.thread ], [ %tobool6.not, %md2_update.exit60 ]
  %10 = phi i32 [ 0, %md2_update.exit60.thread ], [ %inc.i53, %md2_update.exit60 ]
  %11 = trunc i32 %10 to i8
  %conv.i63 = sub i8 16, %11
  br label %while.body.i70

while.body.i70:                                   ; preds = %while.body.i70, %while.body.lr.ph.i64
  %12 = phi i32 [ %10, %while.body.lr.ph.i64 ], [ %.pr.i68, %while.body.i70 ]
  %inc.i65 = add nsw i32 %12, 1
  store i32 %inc.i65, ptr %len.i169, align 4, !tbaa !14
  %idxprom.i66 = sext i32 %12 to i64
  %arrayidx.i67 = getelementptr inbounds [16 x i8], ptr %ctx, i64 0, i64 %idxprom.i66
  store i8 %conv.i63, ptr %arrayidx.i67, align 1, !tbaa !7
  %.pr.i68 = load i32, ptr %len.i169, align 4, !tbaa !14
  %cmp.i69 = icmp slt i32 %.pr.i68, 16
  br i1 %cmp.i69, label %while.body.i70, label %md2_final.exit73, !llvm.loop !18

md2_final.exit73:                                 ; preds = %while.body.i70, %md2_update.exit60
  %tobool6.not174 = phi i1 [ %tobool6.not, %md2_update.exit60 ], [ %tobool6.not175, %while.body.i70 ]
  call void @md2_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  call void @md2_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %checksum.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %buf, ptr noundef nonnull align 4 dereferenceable(16) %uglygep.i, i64 16, i1 false)
  br i1 %tobool6.not174, label %land.rhs12, label %land.end34.critedge

land.rhs12:                                       ; preds = %md2_final.exit73
  %bcmp40 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @__const.md2_test.hash2, ptr noundef nonnull dereferenceable(16) %buf, i64 16)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %uglygep.i, i8 0, i64 68, i1 false)
  br label %for.body.i85

for.body.i85:                                     ; preds = %for.inc.i89, %land.rhs12
  %13 = phi i32 [ 0, %land.rhs12 ], [ %.pre.i93, %for.inc.i89 ]
  %i.019.i79 = phi i64 [ 0, %land.rhs12 ], [ %inc9.i87, %for.inc.i89 ]
  %arrayidx.i80 = getelementptr inbounds i8, ptr @__const.md2_test.text3_1, i64 %i.019.i79
  %14 = load i8, ptr %arrayidx.i80, align 1, !tbaa !7
  %idxprom.i81 = sext i32 %13 to i64
  %arrayidx3.i82 = getelementptr inbounds [16 x i8], ptr %ctx, i64 0, i64 %idxprom.i81
  store i8 %14, ptr %arrayidx3.i82, align 1, !tbaa !7
  %15 = load i32, ptr %len.i169, align 4, !tbaa !14
  %inc.i83 = add nsw i32 %15, 1
  store i32 %inc.i83, ptr %len.i169, align 4, !tbaa !14
  %cmp6.i84 = icmp eq i32 %inc.i83, 16
  br i1 %cmp6.i84, label %if.then.i86, label %for.inc.i89

if.then.i86:                                      ; preds = %for.body.i85
  call void @md2_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  store i32 0, ptr %len.i169, align 4, !tbaa !14
  br label %for.inc.i89

for.inc.i89:                                      ; preds = %if.then.i86, %for.body.i85
  %.pre.i93 = phi i32 [ %inc.i83, %for.body.i85 ], [ 0, %if.then.i86 ]
  %inc9.i87 = add nuw nsw i64 %i.019.i79, 1
  %exitcond.not.i88 = icmp eq i64 %inc9.i87, 31
  br i1 %exitcond.not.i88, label %for.body.i101, label %for.body.i85, !llvm.loop !17

for.body.i101:                                    ; preds = %for.body.i101.backedge, %for.inc.i89
  %16 = phi i32 [ %.be, %for.body.i101.backedge ], [ %.pre.i93, %for.inc.i89 ]
  %i.019.i95 = phi i64 [ %i.019.i95.be, %for.body.i101.backedge ], [ 0, %for.inc.i89 ]
  %arrayidx.i96 = getelementptr inbounds i8, ptr @__const.md2_test.text3_2, i64 %i.019.i95
  %17 = load i8, ptr %arrayidx.i96, align 1, !tbaa !7
  %idxprom.i97 = sext i32 %16 to i64
  %arrayidx3.i98 = getelementptr inbounds [16 x i8], ptr %ctx, i64 0, i64 %idxprom.i97
  store i8 %17, ptr %arrayidx3.i98, align 1, !tbaa !7
  %18 = load i32, ptr %len.i169, align 4, !tbaa !14
  %inc.i99 = add nsw i32 %18, 1
  store i32 %inc.i99, ptr %len.i169, align 4, !tbaa !14
  %cmp6.i100 = icmp eq i32 %inc.i99, 16
  br i1 %cmp6.i100, label %for.inc.i105.thread, label %for.inc.i105

for.inc.i105:                                     ; preds = %for.body.i101
  %inc9.i103 = add nuw nsw i64 %i.019.i95, 1
  %exitcond.not.i104 = icmp eq i64 %inc9.i103, 31
  br i1 %exitcond.not.i104, label %md2_update.exit106, label %for.body.i101.backedge

for.body.i101.backedge:                           ; preds = %for.inc.i105.thread, %for.inc.i105
  %.be = phi i32 [ %inc.i99, %for.inc.i105 ], [ 0, %for.inc.i105.thread ]
  %i.019.i95.be = phi i64 [ %inc9.i103, %for.inc.i105 ], [ %inc9.i103176, %for.inc.i105.thread ]
  br label %for.body.i101, !llvm.loop !17

for.inc.i105.thread:                              ; preds = %for.body.i101
  call void @md2_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  store i32 0, ptr %len.i169, align 4, !tbaa !14
  %inc9.i103176 = add nuw nsw i64 %i.019.i95, 1
  %exitcond.not.i104177 = icmp eq i64 %inc9.i103176, 31
  br i1 %exitcond.not.i104177, label %md2_update.exit106.thread, label %for.body.i101.backedge

md2_update.exit106.thread:                        ; preds = %for.inc.i105.thread
  %tobool16.not178 = icmp eq i32 %bcmp40, 0
  br label %while.body.lr.ph.i110

md2_update.exit106:                               ; preds = %for.inc.i105
  %tobool16.not = icmp eq i32 %bcmp40, 0
  %cmp14.i108 = icmp slt i32 %18, 15
  br i1 %cmp14.i108, label %while.body.lr.ph.i110, label %md2_final.exit119

while.body.lr.ph.i110:                            ; preds = %md2_update.exit106, %md2_update.exit106.thread
  %tobool16.not181 = phi i1 [ %tobool16.not178, %md2_update.exit106.thread ], [ %tobool16.not, %md2_update.exit106 ]
  %19 = phi i32 [ 0, %md2_update.exit106.thread ], [ %inc.i99, %md2_update.exit106 ]
  %20 = trunc i32 %19 to i8
  %conv.i109 = sub i8 16, %20
  br label %while.body.i116

while.body.i116:                                  ; preds = %while.body.i116, %while.body.lr.ph.i110
  %21 = phi i32 [ %19, %while.body.lr.ph.i110 ], [ %.pr.i114, %while.body.i116 ]
  %inc.i111 = add nsw i32 %21, 1
  store i32 %inc.i111, ptr %len.i169, align 4, !tbaa !14
  %idxprom.i112 = sext i32 %21 to i64
  %arrayidx.i113 = getelementptr inbounds [16 x i8], ptr %ctx, i64 0, i64 %idxprom.i112
  store i8 %conv.i109, ptr %arrayidx.i113, align 1, !tbaa !7
  %.pr.i114 = load i32, ptr %len.i169, align 4, !tbaa !14
  %cmp.i115 = icmp slt i32 %.pr.i114, 16
  br i1 %cmp.i115, label %while.body.i116, label %md2_final.exit119, !llvm.loop !18

md2_final.exit119:                                ; preds = %while.body.i116, %md2_update.exit106
  %tobool16.not180 = phi i1 [ %tobool16.not, %md2_update.exit106 ], [ %tobool16.not181, %while.body.i116 ]
  call void @md2_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  call void @md2_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %checksum.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %buf, ptr noundef nonnull align 4 dereferenceable(16) %uglygep.i, i64 16, i1 false)
  br i1 %tobool16.not180, label %land.rhs28, label %land.end34

land.rhs28:                                       ; preds = %md2_final.exit119
  %bcmp39 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @__const.md2_test.hash3, ptr noundef nonnull dereferenceable(16) %buf, i64 16)
  %tobool32.not = icmp eq i32 %bcmp39, 0
  %22 = zext i1 %tobool32.not to i32
  br label %land.end34

land.end34.critedge:                              ; preds = %md2_final.exit73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %uglygep.i, i8 0, i64 68, i1 false)
  br label %for.body.i131

for.body.i131:                                    ; preds = %for.inc.i135, %land.end34.critedge
  %23 = phi i32 [ 0, %land.end34.critedge ], [ %.pre.i139, %for.inc.i135 ]
  %i.019.i125 = phi i64 [ 0, %land.end34.critedge ], [ %inc9.i133, %for.inc.i135 ]
  %arrayidx.i126 = getelementptr inbounds i8, ptr @__const.md2_test.text3_1, i64 %i.019.i125
  %24 = load i8, ptr %arrayidx.i126, align 1, !tbaa !7
  %idxprom.i127 = sext i32 %23 to i64
  %arrayidx3.i128 = getelementptr inbounds [16 x i8], ptr %ctx, i64 0, i64 %idxprom.i127
  store i8 %24, ptr %arrayidx3.i128, align 1, !tbaa !7
  %25 = load i32, ptr %len.i169, align 4, !tbaa !14
  %inc.i129 = add nsw i32 %25, 1
  store i32 %inc.i129, ptr %len.i169, align 4, !tbaa !14
  %cmp6.i130 = icmp eq i32 %inc.i129, 16
  br i1 %cmp6.i130, label %if.then.i132, label %for.inc.i135

if.then.i132:                                     ; preds = %for.body.i131
  call void @md2_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  store i32 0, ptr %len.i169, align 4, !tbaa !14
  br label %for.inc.i135

for.inc.i135:                                     ; preds = %if.then.i132, %for.body.i131
  %.pre.i139 = phi i32 [ %inc.i129, %for.body.i131 ], [ 0, %if.then.i132 ]
  %inc9.i133 = add nuw nsw i64 %i.019.i125, 1
  %exitcond.not.i134 = icmp eq i64 %inc9.i133, 31
  br i1 %exitcond.not.i134, label %for.body.i147, label %for.body.i131, !llvm.loop !17

for.body.i147:                                    ; preds = %for.body.i147.backedge, %for.inc.i135
  %26 = phi i32 [ %.be201, %for.body.i147.backedge ], [ %.pre.i139, %for.inc.i135 ]
  %i.019.i141 = phi i64 [ %i.019.i141.be, %for.body.i147.backedge ], [ 0, %for.inc.i135 ]
  %arrayidx.i142 = getelementptr inbounds i8, ptr @__const.md2_test.text3_2, i64 %i.019.i141
  %27 = load i8, ptr %arrayidx.i142, align 1, !tbaa !7
  %idxprom.i143 = sext i32 %26 to i64
  %arrayidx3.i144 = getelementptr inbounds [16 x i8], ptr %ctx, i64 0, i64 %idxprom.i143
  store i8 %27, ptr %arrayidx3.i144, align 1, !tbaa !7
  %28 = load i32, ptr %len.i169, align 4, !tbaa !14
  %inc.i145 = add nsw i32 %28, 1
  store i32 %inc.i145, ptr %len.i169, align 4, !tbaa !14
  %cmp6.i146 = icmp eq i32 %inc.i145, 16
  br i1 %cmp6.i146, label %for.inc.i151.thread, label %for.inc.i151

for.inc.i151:                                     ; preds = %for.body.i147
  %inc9.i149 = add nuw nsw i64 %i.019.i141, 1
  %exitcond.not.i150 = icmp eq i64 %inc9.i149, 31
  br i1 %exitcond.not.i150, label %md2_update.exit152, label %for.body.i147.backedge

for.body.i147.backedge:                           ; preds = %for.inc.i151.thread, %for.inc.i151
  %.be201 = phi i32 [ %inc.i145, %for.inc.i151 ], [ 0, %for.inc.i151.thread ]
  %i.019.i141.be = phi i64 [ %inc9.i149, %for.inc.i151 ], [ %inc9.i149182, %for.inc.i151.thread ]
  br label %for.body.i147, !llvm.loop !17

for.inc.i151.thread:                              ; preds = %for.body.i147
  call void @md2_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  store i32 0, ptr %len.i169, align 4, !tbaa !14
  %inc9.i149182 = add nuw nsw i64 %i.019.i141, 1
  %exitcond.not.i150183 = icmp eq i64 %inc9.i149182, 31
  br i1 %exitcond.not.i150183, label %while.body.lr.ph.i156, label %for.body.i147.backedge

md2_update.exit152:                               ; preds = %for.inc.i151
  %cmp14.i154 = icmp slt i32 %28, 15
  br i1 %cmp14.i154, label %while.body.lr.ph.i156, label %md2_final.exit165

while.body.lr.ph.i156:                            ; preds = %md2_update.exit152, %for.inc.i151.thread
  %29 = phi i32 [ %inc.i145, %md2_update.exit152 ], [ 0, %for.inc.i151.thread ]
  %30 = trunc i32 %29 to i8
  %conv.i155 = sub i8 16, %30
  br label %while.body.i162

while.body.i162:                                  ; preds = %while.body.i162, %while.body.lr.ph.i156
  %31 = phi i32 [ %29, %while.body.lr.ph.i156 ], [ %.pr.i160, %while.body.i162 ]
  %inc.i157 = add nsw i32 %31, 1
  store i32 %inc.i157, ptr %len.i169, align 4, !tbaa !14
  %idxprom.i158 = sext i32 %31 to i64
  %arrayidx.i159 = getelementptr inbounds [16 x i8], ptr %ctx, i64 0, i64 %idxprom.i158
  store i8 %conv.i155, ptr %arrayidx.i159, align 1, !tbaa !7
  %.pr.i160 = load i32, ptr %len.i169, align 4, !tbaa !14
  %cmp.i161 = icmp slt i32 %.pr.i160, 16
  br i1 %cmp.i161, label %while.body.i162, label %md2_final.exit165, !llvm.loop !18

md2_final.exit165:                                ; preds = %while.body.i162, %md2_update.exit152
  call void @md2_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %ctx)
  call void @md2_transform(ptr noundef nonnull %ctx, ptr noundef nonnull %checksum.i)
  br label %land.end34

land.end34:                                       ; preds = %md2_final.exit165, %land.rhs28, %md2_final.exit119
  %land.ext35 = phi i32 [ 0, %md2_final.exit119 ], [ %22, %land.rhs28 ], [ 0, %md2_final.exit165 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %text1) #11
  ret i32 %land.ext35
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #7 {
entry:
  %call = tail call i32 @md2_test()
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
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !19
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nounwind
declare void @llvm.x86.sse2.lfence() #11

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

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
!14 = !{!15, !16, i64 80}
!15 = !{!"", !8, i64 0, !8, i64 16, !8, i64 64, !16, i64 80}
!16 = !{!"int", !8, i64 0}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
