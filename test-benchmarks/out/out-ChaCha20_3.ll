; ModuleID = 'ChaCha20_3.ll'
source_filename = "ChaCha20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.ChaCha20_Ctx = type { [16 x i32] }

@.str.1 = private unnamed_addr constant [20 x i8] c"ctx->state[13] != 0\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"./ChaCha20.h\00", align 1
@__PRETTY_FUNCTION__.ChaCha20_xor = private unnamed_addr constant [53 x i8] c"void ChaCha20_xor(ChaCha20_Ctx *, uint8_t *, size_t)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"ChaCha20: Initialization\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"ChaCha20: Encryption (16-byte blocks)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"ChaCha20: Encryption (64-byte blocks)\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"ChaCha20: Encryption (256-byte blocks)\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"\1B[1m%s\1B[0m: min %4.2fns / avg %4.2fns / max %4.2fns\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ChaCha20_init(ptr nocapture noundef writeonly %ctx, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %nonce, i32 noundef %count) local_unnamed_addr #0 {
entry:
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, ptr %ctx, align 4, !tbaa !7
  %0 = load i32, ptr %key, align 1, !BLADE-T !11
  %arrayidx12 = getelementptr inbounds [16 x i32], ptr %ctx, i64 0, i64 4
  store i32 %0, ptr %arrayidx12, align 4, !tbaa !7
  %add.ptr13 = getelementptr inbounds i8, ptr %key, i64 4, !BLADE-S !12
  %1 = load i32, ptr %add.ptr13, align 1, !BLADE-T !11
  %arrayidx16 = getelementptr inbounds [16 x i32], ptr %ctx, i64 0, i64 5
  store i32 %1, ptr %arrayidx16, align 4, !tbaa !7
  %add.ptr17 = getelementptr inbounds i8, ptr %key, i64 8, !BLADE-S !12
  %2 = load i32, ptr %add.ptr17, align 1, !BLADE-T !11
  %arrayidx20 = getelementptr inbounds [16 x i32], ptr %ctx, i64 0, i64 6
  store i32 %2, ptr %arrayidx20, align 4, !tbaa !7
  %add.ptr21 = getelementptr inbounds i8, ptr %key, i64 12, !BLADE-S !12
  %3 = load i32, ptr %add.ptr21, align 1, !BLADE-T !11
  %arrayidx24 = getelementptr inbounds [16 x i32], ptr %ctx, i64 0, i64 7
  store i32 %3, ptr %arrayidx24, align 4, !tbaa !7
  %add.ptr25 = getelementptr inbounds i8, ptr %key, i64 16, !BLADE-S !12
  %4 = load i32, ptr %add.ptr25, align 1, !BLADE-T !11
  %arrayidx28 = getelementptr inbounds [16 x i32], ptr %ctx, i64 0, i64 8
  store i32 %4, ptr %arrayidx28, align 4, !tbaa !7
  %add.ptr29 = getelementptr inbounds i8, ptr %key, i64 20, !BLADE-S !12
  %5 = load i32, ptr %add.ptr29, align 1, !BLADE-T !11
  %arrayidx32 = getelementptr inbounds [16 x i32], ptr %ctx, i64 0, i64 9
  store i32 %5, ptr %arrayidx32, align 4, !tbaa !7
  %add.ptr33 = getelementptr inbounds i8, ptr %key, i64 24, !BLADE-S !12
  %6 = load i32, ptr %add.ptr33, align 1, !BLADE-T !11
  %arrayidx36 = getelementptr inbounds [16 x i32], ptr %ctx, i64 0, i64 10
  store i32 %6, ptr %arrayidx36, align 4, !tbaa !7
  %add.ptr37 = getelementptr inbounds i8, ptr %key, i64 28, !BLADE-S !12
  %7 = load i32, ptr %add.ptr37, align 1, !BLADE-T !11
  %arrayidx40 = getelementptr inbounds [16 x i32], ptr %ctx, i64 0, i64 11
  store i32 %7, ptr %arrayidx40, align 4, !tbaa !7
  %arrayidx42 = getelementptr inbounds [16 x i32], ptr %ctx, i64 0, i64 12
  store i32 %count, ptr %arrayidx42, align 4, !tbaa !7
  %8 = load i32, ptr %nonce, align 1, !BLADE-T !11
  %arrayidx46 = getelementptr inbounds [16 x i32], ptr %ctx, i64 0, i64 13
  store i32 %8, ptr %arrayidx46, align 4, !tbaa !7
  %add.ptr47 = getelementptr inbounds i8, ptr %nonce, i64 4, !BLADE-S !12
  %9 = load i32, ptr %add.ptr47, align 1, !BLADE-T !11
  %arrayidx50 = getelementptr inbounds [16 x i32], ptr %ctx, i64 0, i64 14
  store i32 %9, ptr %arrayidx50, align 4, !tbaa !7
  %add.ptr51 = getelementptr inbounds i8, ptr %nonce, i64 8, !BLADE-S !12
  %10 = load i32, ptr %add.ptr51, align 1, !BLADE-T !11
  %arrayidx54 = getelementptr inbounds [16 x i32], ptr %ctx, i64 0, i64 15
  store i32 %10, ptr %arrayidx54, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ChaCha20_xor(ptr nocapture noundef %ctx, ptr nocapture noundef %buffer, i64 noundef %bufflen) local_unnamed_addr #1 {
entry:
  %tmp = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp) #7, !BLADE-T !11
  %cmp51.not = icmp eq i64 %bufflen, 0
  br i1 %cmp51.not, label %for.cond.cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx.1.i = getelementptr inbounds i32, ptr %ctx, i64 1, !BLADE-S !12
  %arrayidx2.1.i = getelementptr inbounds i32, ptr %tmp, i64 1
  %arrayidx.2.i = getelementptr inbounds i32, ptr %ctx, i64 2, !BLADE-S !12
  %arrayidx2.2.i = getelementptr inbounds i32, ptr %tmp, i64 2
  %arrayidx.3.i = getelementptr inbounds i32, ptr %ctx, i64 3, !BLADE-S !12
  %arrayidx2.3.i = getelementptr inbounds i32, ptr %tmp, i64 3
  %arrayidx.4.i = getelementptr inbounds i32, ptr %ctx, i64 4, !BLADE-S !12
  %arrayidx2.4.i = getelementptr inbounds i32, ptr %tmp, i64 4
  %arrayidx.5.i = getelementptr inbounds i32, ptr %ctx, i64 5, !BLADE-S !12
  %arrayidx2.5.i = getelementptr inbounds i32, ptr %tmp, i64 5
  %arrayidx.6.i = getelementptr inbounds i32, ptr %ctx, i64 6, !BLADE-S !12
  %arrayidx2.6.i = getelementptr inbounds i32, ptr %tmp, i64 6
  %arrayidx.7.i = getelementptr inbounds i32, ptr %ctx, i64 7, !BLADE-S !12
  %arrayidx2.7.i = getelementptr inbounds i32, ptr %tmp, i64 7
  %arrayidx.8.i = getelementptr inbounds i32, ptr %ctx, i64 8, !BLADE-S !12
  %arrayidx2.8.i = getelementptr inbounds i32, ptr %tmp, i64 8
  %arrayidx.9.i = getelementptr inbounds i32, ptr %ctx, i64 9, !BLADE-S !12
  %arrayidx2.9.i = getelementptr inbounds i32, ptr %tmp, i64 9
  %arrayidx.10.i = getelementptr inbounds i32, ptr %ctx, i64 10, !BLADE-S !12
  %arrayidx2.10.i = getelementptr inbounds i32, ptr %tmp, i64 10
  %arrayidx.11.i = getelementptr inbounds i32, ptr %ctx, i64 11, !BLADE-S !12
  %arrayidx2.11.i = getelementptr inbounds i32, ptr %tmp, i64 11
  %arrayidx.12.i = getelementptr inbounds i32, ptr %ctx, i64 12, !BLADE-S !12
  %arrayidx2.12.i = getelementptr inbounds i32, ptr %tmp, i64 12
  %arrayidx.13.i = getelementptr inbounds i32, ptr %ctx, i64 13, !BLADE-S !12
  %arrayidx2.13.i = getelementptr inbounds i32, ptr %tmp, i64 13
  %arrayidx.14.i = getelementptr inbounds i32, ptr %ctx, i64 14, !BLADE-S !12
  %arrayidx2.14.i = getelementptr inbounds i32, ptr %tmp, i64 14
  %arrayidx.15.i = getelementptr inbounds i32, ptr %ctx, i64 15, !BLADE-S !12
  %arrayidx2.15.i = getelementptr inbounds i32, ptr %tmp, i64 15
  br label %for.body

for.cond.loopexit:                                ; preds = %if.end20, %vec.epilog.middle.block, %middle.block, %if.end13
  %cmp = icmp ult i64 %add, %bufflen
  %indvar.next = add i64 %indvar, 1
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !13

for.cond.cleanup:                                 ; preds = %for.cond.loopexit, %entry
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp) #7, !BLADE-T !11
  ret void

for.body:                                         ; preds = %for.cond.loopexit, %for.body.lr.ph
  %indvar = phi i64 [ 0, %for.body.lr.ph ], [ %indvar.next, %for.cond.loopexit ]
  %i.052 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.cond.loopexit ]
  %0 = or i64 %i.052, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %bufflen, i64 %0), !BLADE-T !11
  %1 = shl i64 %indvar, 6
  %2 = xor i64 %1, -1
  %3 = add i64 %umax, %2
  %4 = add i64 %i.052, 64
  %umax53 = tail call i64 @llvm.umax.i64(i64 %4, i64 %0), !BLADE-T !11
  %5 = add i64 %umax53, %2
  %umin = tail call i64 @llvm.umin.i64(i64 %3, i64 %5), !BLADE-T !11
  %6 = add i64 %umin, 1
  call void @llvm.x86.sse2.lfence()
  %7 = load i32, ptr %ctx, align 4, !tbaa !7, !BLADE-T !11
  %8 = load i32, ptr %arrayidx.1.i, align 4, !tbaa !7, !BLADE-T !11
  %9 = load i32, ptr %arrayidx.2.i, align 4, !tbaa !7, !BLADE-T !11
  %10 = load i32, ptr %arrayidx.3.i, align 4, !tbaa !7, !BLADE-T !11
  %11 = load i32, ptr %arrayidx.4.i, align 4, !tbaa !7, !BLADE-T !11
  %12 = load i32, ptr %arrayidx.5.i, align 4, !tbaa !7, !BLADE-T !11
  %13 = load i32, ptr %arrayidx.6.i, align 4, !tbaa !7, !BLADE-T !11
  %14 = load i32, ptr %arrayidx.7.i, align 4, !tbaa !7, !BLADE-T !11
  %15 = load i32, ptr %arrayidx.8.i, align 4, !tbaa !7, !BLADE-T !11
  %16 = load i32, ptr %arrayidx.9.i, align 4, !tbaa !7, !BLADE-T !11
  %17 = load i32, ptr %arrayidx.10.i, align 4, !tbaa !7, !BLADE-T !11
  %18 = load i32, ptr %arrayidx.11.i, align 4, !tbaa !7, !BLADE-T !11
  %19 = load i32, ptr %arrayidx.12.i, align 4, !tbaa !7, !BLADE-T !11
  %20 = load i32, ptr %arrayidx.13.i, align 4, !tbaa !7, !BLADE-T !11
  %21 = load i32, ptr %arrayidx.14.i, align 4, !tbaa !7, !BLADE-T !11
  %22 = load i32, ptr %arrayidx.15.i, align 4, !tbaa !7, !BLADE-T !11
  %add.i = add i32 %11, %7
  %xor.i = xor i32 %19, %add.i
  %or.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 16), !BLADE-T !11
  %add12.i = add i32 %or.i, %15
  %xor15.i = xor i32 %add12.i, %11
  %or20.i = tail call i32 @llvm.fshl.i32(i32 %xor15.i, i32 %xor15.i, i32 12), !BLADE-T !11
  %add24.i = add i32 %or20.i, %add.i
  %xor27.i = xor i32 %add24.i, %or.i
  %or32.i = tail call i32 @llvm.fshl.i32(i32 %xor27.i, i32 %xor27.i, i32 8), !BLADE-T !11
  %add36.i = add i32 %or32.i, %add12.i
  %xor39.i = xor i32 %add36.i, %or20.i
  %or44.i = tail call i32 @llvm.fshl.i32(i32 %xor39.i, i32 %xor39.i, i32 7), !BLADE-T !11
  %add48.i = add i32 %12, %8
  %xor51.i = xor i32 %20, %add48.i
  %or56.i = tail call i32 @llvm.fshl.i32(i32 %xor51.i, i32 %xor51.i, i32 16), !BLADE-T !11
  %add60.i = add i32 %or56.i, %16
  %xor63.i = xor i32 %add60.i, %12
  %or68.i = tail call i32 @llvm.fshl.i32(i32 %xor63.i, i32 %xor63.i, i32 12), !BLADE-T !11
  %add72.i = add i32 %or68.i, %add48.i
  %xor75.i = xor i32 %add72.i, %or56.i
  %or80.i = tail call i32 @llvm.fshl.i32(i32 %xor75.i, i32 %xor75.i, i32 8), !BLADE-T !11
  %add84.i = add i32 %or80.i, %add60.i
  %xor87.i = xor i32 %add84.i, %or68.i
  %or92.i = tail call i32 @llvm.fshl.i32(i32 %xor87.i, i32 %xor87.i, i32 7), !BLADE-T !11
  %add96.i = add i32 %13, %9
  %xor99.i = xor i32 %21, %add96.i
  %or104.i = tail call i32 @llvm.fshl.i32(i32 %xor99.i, i32 %xor99.i, i32 16), !BLADE-T !11
  %add108.i = add i32 %or104.i, %17
  %xor111.i = xor i32 %add108.i, %13
  %or116.i = tail call i32 @llvm.fshl.i32(i32 %xor111.i, i32 %xor111.i, i32 12), !BLADE-T !11
  %add120.i = add i32 %or116.i, %add96.i
  %xor123.i = xor i32 %add120.i, %or104.i
  %or128.i = tail call i32 @llvm.fshl.i32(i32 %xor123.i, i32 %xor123.i, i32 8), !BLADE-T !11
  %add132.i = add i32 %or128.i, %add108.i
  %xor135.i = xor i32 %add132.i, %or116.i
  %or140.i = tail call i32 @llvm.fshl.i32(i32 %xor135.i, i32 %xor135.i, i32 7), !BLADE-T !11
  %add144.i = add i32 %14, %10
  %xor147.i = xor i32 %22, %add144.i
  %or152.i = tail call i32 @llvm.fshl.i32(i32 %xor147.i, i32 %xor147.i, i32 16), !BLADE-T !11
  %add156.i = add i32 %or152.i, %18
  %xor159.i = xor i32 %add156.i, %14
  %or164.i = tail call i32 @llvm.fshl.i32(i32 %xor159.i, i32 %xor159.i, i32 12), !BLADE-T !11
  %add168.i = add i32 %or164.i, %add144.i
  %xor171.i = xor i32 %add168.i, %or152.i
  %or176.i = tail call i32 @llvm.fshl.i32(i32 %xor171.i, i32 %xor171.i, i32 8), !BLADE-T !11
  %add180.i = add i32 %or176.i, %add156.i
  %xor183.i = xor i32 %add180.i, %or164.i
  %or188.i = tail call i32 @llvm.fshl.i32(i32 %xor183.i, i32 %xor183.i, i32 7), !BLADE-T !11
  %add192.i = add i32 %or92.i, %add24.i
  %xor195.i = xor i32 %or176.i, %add192.i
  %or200.i = tail call i32 @llvm.fshl.i32(i32 %xor195.i, i32 %xor195.i, i32 16), !BLADE-T !11
  %add204.i = add i32 %or200.i, %add132.i
  %xor207.i = xor i32 %add204.i, %or92.i
  %or212.i = tail call i32 @llvm.fshl.i32(i32 %xor207.i, i32 %xor207.i, i32 12), !BLADE-T !11
  %add216.i = add i32 %or212.i, %add192.i
  %xor219.i = xor i32 %add216.i, %or200.i
  %or224.i = tail call i32 @llvm.fshl.i32(i32 %xor219.i, i32 %xor219.i, i32 8), !BLADE-T !11
  %add228.i = add i32 %or224.i, %add204.i
  %xor231.i = xor i32 %add228.i, %or212.i
  %or236.i = tail call i32 @llvm.fshl.i32(i32 %xor231.i, i32 %xor231.i, i32 7), !BLADE-T !11
  %add240.i = add i32 %or140.i, %add72.i
  %xor243.i = xor i32 %add240.i, %or32.i
  %or248.i = tail call i32 @llvm.fshl.i32(i32 %xor243.i, i32 %xor243.i, i32 16), !BLADE-T !11
  %add252.i = add i32 %or248.i, %add180.i
  %xor255.i = xor i32 %add252.i, %or140.i
  %or260.i = tail call i32 @llvm.fshl.i32(i32 %xor255.i, i32 %xor255.i, i32 12), !BLADE-T !11
  %add264.i = add i32 %or260.i, %add240.i
  %xor267.i = xor i32 %add264.i, %or248.i
  %or272.i = tail call i32 @llvm.fshl.i32(i32 %xor267.i, i32 %xor267.i, i32 8), !BLADE-T !11
  %add276.i = add i32 %or272.i, %add252.i
  %xor279.i = xor i32 %add276.i, %or260.i
  %or284.i = tail call i32 @llvm.fshl.i32(i32 %xor279.i, i32 %xor279.i, i32 7), !BLADE-T !11
  %add288.i = add i32 %or188.i, %add120.i
  %xor291.i = xor i32 %add288.i, %or80.i
  %or296.i = tail call i32 @llvm.fshl.i32(i32 %xor291.i, i32 %xor291.i, i32 16), !BLADE-T !11
  %add300.i = add i32 %or296.i, %add36.i
  %xor303.i = xor i32 %add300.i, %or188.i
  %or308.i = tail call i32 @llvm.fshl.i32(i32 %xor303.i, i32 %xor303.i, i32 12), !BLADE-T !11
  %add312.i = add i32 %or308.i, %add288.i
  %xor315.i = xor i32 %add312.i, %or296.i
  %or320.i = tail call i32 @llvm.fshl.i32(i32 %xor315.i, i32 %xor315.i, i32 8), !BLADE-T !11
  %add324.i = add i32 %or320.i, %add300.i
  %xor327.i = xor i32 %add324.i, %or308.i
  %or332.i = tail call i32 @llvm.fshl.i32(i32 %xor327.i, i32 %xor327.i, i32 7), !BLADE-T !11
  %add336.i = add i32 %add168.i, %or44.i
  %xor339.i = xor i32 %add336.i, %or128.i
  %or344.i = tail call i32 @llvm.fshl.i32(i32 %xor339.i, i32 %xor339.i, i32 16), !BLADE-T !11
  %add348.i = add i32 %or344.i, %add84.i
  %xor351.i = xor i32 %add348.i, %or44.i
  %or356.i = tail call i32 @llvm.fshl.i32(i32 %xor351.i, i32 %xor351.i, i32 12), !BLADE-T !11
  %add360.i = add i32 %or356.i, %add336.i
  %xor363.i = xor i32 %add360.i, %or344.i
  %or368.i = tail call i32 @llvm.fshl.i32(i32 %xor363.i, i32 %xor363.i, i32 8), !BLADE-T !11
  %add372.i = add i32 %or368.i, %add348.i
  %xor375.i = xor i32 %add372.i, %or356.i
  %or380.i = tail call i32 @llvm.fshl.i32(i32 %xor375.i, i32 %xor375.i, i32 7), !BLADE-T !11
  %add384.i = add i32 %or380.i, %add216.i
  %xor387.i = xor i32 %add384.i, %or272.i
  %or392.i = tail call i32 @llvm.fshl.i32(i32 %xor387.i, i32 %xor387.i, i32 16), !BLADE-T !11
  %add396.i = add i32 %add324.i, %or392.i
  %xor399.i = xor i32 %add396.i, %or380.i
  %or404.i = tail call i32 @llvm.fshl.i32(i32 %xor399.i, i32 %xor399.i, i32 12), !BLADE-T !11
  %add408.i = add i32 %or404.i, %add384.i
  %xor411.i = xor i32 %add408.i, %or392.i
  %or416.i = tail call i32 @llvm.fshl.i32(i32 %xor411.i, i32 %xor411.i, i32 8), !BLADE-T !11
  %add420.i = add i32 %or416.i, %add396.i
  %xor423.i = xor i32 %add420.i, %or404.i
  %or428.i = tail call i32 @llvm.fshl.i32(i32 %xor423.i, i32 %xor423.i, i32 7), !BLADE-T !11
  %add432.i = add i32 %or236.i, %add264.i
  %xor435.i = xor i32 %or320.i, %add432.i
  %or440.i = tail call i32 @llvm.fshl.i32(i32 %xor435.i, i32 %xor435.i, i32 16), !BLADE-T !11
  %add444.i = add i32 %or440.i, %add372.i
  %xor447.i = xor i32 %add444.i, %or236.i
  %or452.i = tail call i32 @llvm.fshl.i32(i32 %xor447.i, i32 %xor447.i, i32 12), !BLADE-T !11
  %add456.i = add i32 %or452.i, %add432.i
  %xor459.i = xor i32 %add456.i, %or440.i
  %or464.i = tail call i32 @llvm.fshl.i32(i32 %xor459.i, i32 %xor459.i, i32 8), !BLADE-T !11
  %add468.i = add i32 %or464.i, %add444.i
  %xor471.i = xor i32 %add468.i, %or452.i
  %or476.i = tail call i32 @llvm.fshl.i32(i32 %xor471.i, i32 %xor471.i, i32 7), !BLADE-T !11
  %add480.i = add i32 %or284.i, %add312.i
  %xor483.i = xor i32 %add480.i, %or368.i
  %or488.i = tail call i32 @llvm.fshl.i32(i32 %xor483.i, i32 %xor483.i, i32 16), !BLADE-T !11
  %add492.i = add i32 %or488.i, %add228.i
  %xor495.i = xor i32 %add492.i, %or284.i
  %or500.i = tail call i32 @llvm.fshl.i32(i32 %xor495.i, i32 %xor495.i, i32 12), !BLADE-T !11
  %add504.i = add i32 %or500.i, %add480.i
  %xor507.i = xor i32 %add504.i, %or488.i
  %or512.i = tail call i32 @llvm.fshl.i32(i32 %xor507.i, i32 %xor507.i, i32 8), !BLADE-T !11
  %add516.i = add i32 %or512.i, %add492.i
  %xor519.i = xor i32 %add516.i, %or500.i
  %or524.i = tail call i32 @llvm.fshl.i32(i32 %xor519.i, i32 %xor519.i, i32 7), !BLADE-T !11
  %add528.i = add i32 %or332.i, %add360.i
  %xor531.i = xor i32 %add528.i, %or224.i
  %or536.i = tail call i32 @llvm.fshl.i32(i32 %xor531.i, i32 %xor531.i, i32 16), !BLADE-T !11
  %add540.i = add i32 %or536.i, %add276.i
  %xor543.i = xor i32 %add540.i, %or332.i
  %or548.i = tail call i32 @llvm.fshl.i32(i32 %xor543.i, i32 %xor543.i, i32 12), !BLADE-T !11
  %add552.i = add i32 %or548.i, %add528.i
  %xor555.i = xor i32 %add552.i, %or536.i
  %or560.i = tail call i32 @llvm.fshl.i32(i32 %xor555.i, i32 %xor555.i, i32 8), !BLADE-T !11
  %add564.i = add i32 %or560.i, %add540.i
  %xor567.i = xor i32 %add564.i, %or548.i
  %or572.i = tail call i32 @llvm.fshl.i32(i32 %xor567.i, i32 %xor567.i, i32 7), !BLADE-T !11
  %add576.i = add i32 %or476.i, %add408.i
  %xor579.i = xor i32 %or560.i, %add576.i
  %or584.i = tail call i32 @llvm.fshl.i32(i32 %xor579.i, i32 %xor579.i, i32 16), !BLADE-T !11
  %add588.i = add i32 %or584.i, %add516.i
  %xor591.i = xor i32 %add588.i, %or476.i
  %or596.i = tail call i32 @llvm.fshl.i32(i32 %xor591.i, i32 %xor591.i, i32 12), !BLADE-T !11
  %add600.i = add i32 %or596.i, %add576.i
  %xor603.i = xor i32 %add600.i, %or584.i
  %or608.i = tail call i32 @llvm.fshl.i32(i32 %xor603.i, i32 %xor603.i, i32 8), !BLADE-T !11
  %add612.i = add i32 %or608.i, %add588.i
  %xor615.i = xor i32 %add612.i, %or596.i
  %or620.i = tail call i32 @llvm.fshl.i32(i32 %xor615.i, i32 %xor615.i, i32 7), !BLADE-T !11
  %add624.i = add i32 %or524.i, %add456.i
  %xor627.i = xor i32 %add624.i, %or416.i
  %or632.i = tail call i32 @llvm.fshl.i32(i32 %xor627.i, i32 %xor627.i, i32 16), !BLADE-T !11
  %add636.i = add i32 %or632.i, %add564.i
  %xor639.i = xor i32 %add636.i, %or524.i
  %or644.i = tail call i32 @llvm.fshl.i32(i32 %xor639.i, i32 %xor639.i, i32 12), !BLADE-T !11
  %add648.i = add i32 %or644.i, %add624.i
  %xor651.i = xor i32 %add648.i, %or632.i
  %or656.i = tail call i32 @llvm.fshl.i32(i32 %xor651.i, i32 %xor651.i, i32 8), !BLADE-T !11
  %add660.i = add i32 %or656.i, %add636.i
  %xor663.i = xor i32 %add660.i, %or644.i
  %or668.i = tail call i32 @llvm.fshl.i32(i32 %xor663.i, i32 %xor663.i, i32 7), !BLADE-T !11
  %add672.i = add i32 %or572.i, %add504.i
  %xor675.i = xor i32 %add672.i, %or464.i
  %or680.i = tail call i32 @llvm.fshl.i32(i32 %xor675.i, i32 %xor675.i, i32 16), !BLADE-T !11
  %add684.i = add i32 %or680.i, %add420.i
  %xor687.i = xor i32 %add684.i, %or572.i
  %or692.i = tail call i32 @llvm.fshl.i32(i32 %xor687.i, i32 %xor687.i, i32 12), !BLADE-T !11
  %add696.i = add i32 %or692.i, %add672.i
  %xor699.i = xor i32 %add696.i, %or680.i
  %or704.i = tail call i32 @llvm.fshl.i32(i32 %xor699.i, i32 %xor699.i, i32 8), !BLADE-T !11
  %add708.i = add i32 %or704.i, %add684.i
  %xor711.i = xor i32 %add708.i, %or692.i
  %or716.i = tail call i32 @llvm.fshl.i32(i32 %xor711.i, i32 %xor711.i, i32 7), !BLADE-T !11
  %add720.i = add i32 %add552.i, %or428.i
  %xor723.i = xor i32 %add720.i, %or512.i
  %or728.i = tail call i32 @llvm.fshl.i32(i32 %xor723.i, i32 %xor723.i, i32 16), !BLADE-T !11
  %add732.i = add i32 %or728.i, %add468.i
  %xor735.i = xor i32 %add732.i, %or428.i
  %or740.i = tail call i32 @llvm.fshl.i32(i32 %xor735.i, i32 %xor735.i, i32 12), !BLADE-T !11
  %add744.i = add i32 %or740.i, %add720.i
  %xor747.i = xor i32 %add744.i, %or728.i
  %or752.i = tail call i32 @llvm.fshl.i32(i32 %xor747.i, i32 %xor747.i, i32 8), !BLADE-T !11
  %add756.i = add i32 %or752.i, %add732.i
  %xor759.i = xor i32 %add756.i, %or740.i
  %or764.i = tail call i32 @llvm.fshl.i32(i32 %xor759.i, i32 %xor759.i, i32 7), !BLADE-T !11
  %add768.i = add i32 %or764.i, %add600.i
  %xor771.i = xor i32 %add768.i, %or656.i
  %or776.i = tail call i32 @llvm.fshl.i32(i32 %xor771.i, i32 %xor771.i, i32 16), !BLADE-T !11
  %add780.i = add i32 %add708.i, %or776.i
  %xor783.i = xor i32 %add780.i, %or764.i
  %or788.i = tail call i32 @llvm.fshl.i32(i32 %xor783.i, i32 %xor783.i, i32 12), !BLADE-T !11
  %add792.i = add i32 %or788.i, %add768.i
  %xor795.i = xor i32 %add792.i, %or776.i
  %or800.i = tail call i32 @llvm.fshl.i32(i32 %xor795.i, i32 %xor795.i, i32 8), !BLADE-T !11
  %add804.i = add i32 %or800.i, %add780.i
  %xor807.i = xor i32 %add804.i, %or788.i
  %or812.i = tail call i32 @llvm.fshl.i32(i32 %xor807.i, i32 %xor807.i, i32 7), !BLADE-T !11
  %add816.i = add i32 %or620.i, %add648.i
  %xor819.i = xor i32 %or704.i, %add816.i
  %or824.i = tail call i32 @llvm.fshl.i32(i32 %xor819.i, i32 %xor819.i, i32 16), !BLADE-T !11
  %add828.i = add i32 %or824.i, %add756.i
  %xor831.i = xor i32 %add828.i, %or620.i
  %or836.i = tail call i32 @llvm.fshl.i32(i32 %xor831.i, i32 %xor831.i, i32 12), !BLADE-T !11
  %add840.i = add i32 %or836.i, %add816.i
  %xor843.i = xor i32 %add840.i, %or824.i
  %or848.i = tail call i32 @llvm.fshl.i32(i32 %xor843.i, i32 %xor843.i, i32 8), !BLADE-T !11
  %add852.i = add i32 %or848.i, %add828.i
  %xor855.i = xor i32 %add852.i, %or836.i
  %or860.i = tail call i32 @llvm.fshl.i32(i32 %xor855.i, i32 %xor855.i, i32 7), !BLADE-T !11
  %add864.i = add i32 %or668.i, %add696.i
  %xor867.i = xor i32 %add864.i, %or752.i
  %or872.i = tail call i32 @llvm.fshl.i32(i32 %xor867.i, i32 %xor867.i, i32 16), !BLADE-T !11
  %add876.i = add i32 %or872.i, %add612.i
  %xor879.i = xor i32 %add876.i, %or668.i
  %or884.i = tail call i32 @llvm.fshl.i32(i32 %xor879.i, i32 %xor879.i, i32 12), !BLADE-T !11
  %add888.i = add i32 %or884.i, %add864.i
  %xor891.i = xor i32 %add888.i, %or872.i
  %or896.i = tail call i32 @llvm.fshl.i32(i32 %xor891.i, i32 %xor891.i, i32 8), !BLADE-T !11
  %add900.i = add i32 %or896.i, %add876.i
  %xor903.i = xor i32 %add900.i, %or884.i
  %or908.i = tail call i32 @llvm.fshl.i32(i32 %xor903.i, i32 %xor903.i, i32 7), !BLADE-T !11
  %add912.i = add i32 %or716.i, %add744.i
  %xor915.i = xor i32 %add912.i, %or608.i
  %or920.i = tail call i32 @llvm.fshl.i32(i32 %xor915.i, i32 %xor915.i, i32 16), !BLADE-T !11
  %add924.i = add i32 %or920.i, %add660.i
  %xor927.i = xor i32 %add924.i, %or716.i
  %or932.i = tail call i32 @llvm.fshl.i32(i32 %xor927.i, i32 %xor927.i, i32 12), !BLADE-T !11
  %add936.i = add i32 %or932.i, %add912.i
  %xor939.i = xor i32 %add936.i, %or920.i
  %or944.i = tail call i32 @llvm.fshl.i32(i32 %xor939.i, i32 %xor939.i, i32 8), !BLADE-T !11
  %add948.i = add i32 %or944.i, %add924.i
  %xor951.i = xor i32 %add948.i, %or932.i
  %or956.i = tail call i32 @llvm.fshl.i32(i32 %xor951.i, i32 %xor951.i, i32 7), !BLADE-T !11
  %add960.i = add i32 %or860.i, %add792.i
  %xor963.i = xor i32 %or944.i, %add960.i
  %or968.i = tail call i32 @llvm.fshl.i32(i32 %xor963.i, i32 %xor963.i, i32 16), !BLADE-T !11
  %add972.i = add i32 %or968.i, %add900.i
  %xor975.i = xor i32 %add972.i, %or860.i
  %or980.i = tail call i32 @llvm.fshl.i32(i32 %xor975.i, i32 %xor975.i, i32 12), !BLADE-T !11
  %add984.i = add i32 %or980.i, %add960.i
  %xor987.i = xor i32 %add984.i, %or968.i
  %or992.i = tail call i32 @llvm.fshl.i32(i32 %xor987.i, i32 %xor987.i, i32 8), !BLADE-T !11
  %add996.i = add i32 %or992.i, %add972.i
  %xor999.i = xor i32 %add996.i, %or980.i
  %or1004.i = tail call i32 @llvm.fshl.i32(i32 %xor999.i, i32 %xor999.i, i32 7), !BLADE-T !11
  %add1008.i = add i32 %or908.i, %add840.i
  %xor1011.i = xor i32 %add1008.i, %or800.i
  %or1016.i = tail call i32 @llvm.fshl.i32(i32 %xor1011.i, i32 %xor1011.i, i32 16), !BLADE-T !11
  %add1020.i = add i32 %or1016.i, %add948.i
  %xor1023.i = xor i32 %add1020.i, %or908.i
  %or1028.i = tail call i32 @llvm.fshl.i32(i32 %xor1023.i, i32 %xor1023.i, i32 12), !BLADE-T !11
  %add1032.i = add i32 %or1028.i, %add1008.i
  %xor1035.i = xor i32 %add1032.i, %or1016.i
  %or1040.i = tail call i32 @llvm.fshl.i32(i32 %xor1035.i, i32 %xor1035.i, i32 8), !BLADE-T !11
  %add1044.i = add i32 %or1040.i, %add1020.i
  %xor1047.i = xor i32 %add1044.i, %or1028.i
  %or1052.i = tail call i32 @llvm.fshl.i32(i32 %xor1047.i, i32 %xor1047.i, i32 7), !BLADE-T !11
  %add1056.i = add i32 %or956.i, %add888.i
  %xor1059.i = xor i32 %add1056.i, %or848.i
  %or1064.i = tail call i32 @llvm.fshl.i32(i32 %xor1059.i, i32 %xor1059.i, i32 16), !BLADE-T !11
  %add1068.i = add i32 %or1064.i, %add804.i
  %xor1071.i = xor i32 %add1068.i, %or956.i
  %or1076.i = tail call i32 @llvm.fshl.i32(i32 %xor1071.i, i32 %xor1071.i, i32 12), !BLADE-T !11
  %add1080.i = add i32 %or1076.i, %add1056.i
  %xor1083.i = xor i32 %add1080.i, %or1064.i
  %or1088.i = tail call i32 @llvm.fshl.i32(i32 %xor1083.i, i32 %xor1083.i, i32 8), !BLADE-T !11
  %add1092.i = add i32 %or1088.i, %add1068.i
  %xor1095.i = xor i32 %add1092.i, %or1076.i
  %or1100.i = tail call i32 @llvm.fshl.i32(i32 %xor1095.i, i32 %xor1095.i, i32 7), !BLADE-T !11
  %add1104.i = add i32 %add936.i, %or812.i
  %xor1107.i = xor i32 %add1104.i, %or896.i
  %or1112.i = tail call i32 @llvm.fshl.i32(i32 %xor1107.i, i32 %xor1107.i, i32 16), !BLADE-T !11
  %add1116.i = add i32 %or1112.i, %add852.i
  %xor1119.i = xor i32 %add1116.i, %or812.i
  %or1124.i = tail call i32 @llvm.fshl.i32(i32 %xor1119.i, i32 %xor1119.i, i32 12), !BLADE-T !11
  %add1128.i = add i32 %or1124.i, %add1104.i
  %xor1131.i = xor i32 %add1128.i, %or1112.i
  %or1136.i = tail call i32 @llvm.fshl.i32(i32 %xor1131.i, i32 %xor1131.i, i32 8), !BLADE-T !11
  %add1140.i = add i32 %or1136.i, %add1116.i
  %xor1143.i = xor i32 %add1140.i, %or1124.i
  %or1148.i = tail call i32 @llvm.fshl.i32(i32 %xor1143.i, i32 %xor1143.i, i32 7), !BLADE-T !11
  %add1152.i = add i32 %or1148.i, %add984.i
  %xor1155.i = xor i32 %add1152.i, %or1040.i
  %or1160.i = tail call i32 @llvm.fshl.i32(i32 %xor1155.i, i32 %xor1155.i, i32 16), !BLADE-T !11
  %add1164.i = add i32 %add1092.i, %or1160.i
  %xor1167.i = xor i32 %add1164.i, %or1148.i
  %or1172.i = tail call i32 @llvm.fshl.i32(i32 %xor1167.i, i32 %xor1167.i, i32 12), !BLADE-T !11
  %add1176.i = add i32 %or1172.i, %add1152.i
  %xor1179.i = xor i32 %add1176.i, %or1160.i
  %or1184.i = tail call i32 @llvm.fshl.i32(i32 %xor1179.i, i32 %xor1179.i, i32 8), !BLADE-T !11
  %add1188.i = add i32 %or1184.i, %add1164.i
  %xor1191.i = xor i32 %add1188.i, %or1172.i
  %or1196.i = tail call i32 @llvm.fshl.i32(i32 %xor1191.i, i32 %xor1191.i, i32 7), !BLADE-T !11
  %add1200.i = add i32 %or1004.i, %add1032.i
  %xor1203.i = xor i32 %or1088.i, %add1200.i
  %or1208.i = tail call i32 @llvm.fshl.i32(i32 %xor1203.i, i32 %xor1203.i, i32 16), !BLADE-T !11
  %add1212.i = add i32 %or1208.i, %add1140.i
  %xor1215.i = xor i32 %add1212.i, %or1004.i
  %or1220.i = tail call i32 @llvm.fshl.i32(i32 %xor1215.i, i32 %xor1215.i, i32 12), !BLADE-T !11
  %add1224.i = add i32 %or1220.i, %add1200.i
  %xor1227.i = xor i32 %add1224.i, %or1208.i
  %or1232.i = tail call i32 @llvm.fshl.i32(i32 %xor1227.i, i32 %xor1227.i, i32 8), !BLADE-T !11
  %add1236.i = add i32 %or1232.i, %add1212.i
  %xor1239.i = xor i32 %add1236.i, %or1220.i
  %or1244.i = tail call i32 @llvm.fshl.i32(i32 %xor1239.i, i32 %xor1239.i, i32 7), !BLADE-T !11
  %add1248.i = add i32 %or1052.i, %add1080.i
  %xor1251.i = xor i32 %add1248.i, %or1136.i
  %or1256.i = tail call i32 @llvm.fshl.i32(i32 %xor1251.i, i32 %xor1251.i, i32 16), !BLADE-T !11
  %add1260.i = add i32 %or1256.i, %add996.i
  %xor1263.i = xor i32 %add1260.i, %or1052.i
  %or1268.i = tail call i32 @llvm.fshl.i32(i32 %xor1263.i, i32 %xor1263.i, i32 12), !BLADE-T !11
  %add1272.i = add i32 %or1268.i, %add1248.i
  %xor1275.i = xor i32 %add1272.i, %or1256.i
  %or1280.i = tail call i32 @llvm.fshl.i32(i32 %xor1275.i, i32 %xor1275.i, i32 8), !BLADE-T !11
  %add1284.i = add i32 %or1280.i, %add1260.i
  %xor1287.i = xor i32 %add1284.i, %or1268.i
  %or1292.i = tail call i32 @llvm.fshl.i32(i32 %xor1287.i, i32 %xor1287.i, i32 7), !BLADE-T !11
  %add1296.i = add i32 %or1100.i, %add1128.i
  %xor1299.i = xor i32 %add1296.i, %or992.i
  %or1304.i = tail call i32 @llvm.fshl.i32(i32 %xor1299.i, i32 %xor1299.i, i32 16), !BLADE-T !11
  %add1308.i = add i32 %or1304.i, %add1044.i
  %xor1311.i = xor i32 %add1308.i, %or1100.i
  %or1316.i = tail call i32 @llvm.fshl.i32(i32 %xor1311.i, i32 %xor1311.i, i32 12), !BLADE-T !11
  %add1320.i = add i32 %or1316.i, %add1296.i
  %xor1323.i = xor i32 %add1320.i, %or1304.i
  %or1328.i = tail call i32 @llvm.fshl.i32(i32 %xor1323.i, i32 %xor1323.i, i32 8), !BLADE-T !11
  %add1332.i = add i32 %or1328.i, %add1308.i
  %xor1335.i = xor i32 %add1332.i, %or1316.i
  %or1340.i = tail call i32 @llvm.fshl.i32(i32 %xor1335.i, i32 %xor1335.i, i32 7), !BLADE-T !11
  %add1344.i = add i32 %or1244.i, %add1176.i
  %xor1347.i = xor i32 %or1328.i, %add1344.i
  %or1352.i = tail call i32 @llvm.fshl.i32(i32 %xor1347.i, i32 %xor1347.i, i32 16), !BLADE-T !11
  %add1356.i = add i32 %or1352.i, %add1284.i
  %xor1359.i = xor i32 %add1356.i, %or1244.i
  %or1364.i = tail call i32 @llvm.fshl.i32(i32 %xor1359.i, i32 %xor1359.i, i32 12), !BLADE-T !11
  %add1368.i = add i32 %or1364.i, %add1344.i
  %xor1371.i = xor i32 %add1368.i, %or1352.i
  %or1376.i = tail call i32 @llvm.fshl.i32(i32 %xor1371.i, i32 %xor1371.i, i32 8), !BLADE-T !11
  %add1380.i = add i32 %or1376.i, %add1356.i
  %xor1383.i = xor i32 %add1380.i, %or1364.i
  %or1388.i = tail call i32 @llvm.fshl.i32(i32 %xor1383.i, i32 %xor1383.i, i32 7), !BLADE-T !11
  %add1392.i = add i32 %or1292.i, %add1224.i
  %xor1395.i = xor i32 %add1392.i, %or1184.i
  %or1400.i = tail call i32 @llvm.fshl.i32(i32 %xor1395.i, i32 %xor1395.i, i32 16), !BLADE-T !11
  %add1404.i = add i32 %or1400.i, %add1332.i
  %xor1407.i = xor i32 %add1404.i, %or1292.i
  %or1412.i = tail call i32 @llvm.fshl.i32(i32 %xor1407.i, i32 %xor1407.i, i32 12), !BLADE-T !11
  %add1416.i = add i32 %or1412.i, %add1392.i
  %xor1419.i = xor i32 %add1416.i, %or1400.i
  %or1424.i = tail call i32 @llvm.fshl.i32(i32 %xor1419.i, i32 %xor1419.i, i32 8), !BLADE-T !11
  %add1428.i = add i32 %or1424.i, %add1404.i
  %xor1431.i = xor i32 %add1428.i, %or1412.i
  %or1436.i = tail call i32 @llvm.fshl.i32(i32 %xor1431.i, i32 %xor1431.i, i32 7), !BLADE-T !11
  %add1440.i = add i32 %or1340.i, %add1272.i
  %xor1443.i = xor i32 %add1440.i, %or1232.i
  %or1448.i = tail call i32 @llvm.fshl.i32(i32 %xor1443.i, i32 %xor1443.i, i32 16), !BLADE-T !11
  %add1452.i = add i32 %or1448.i, %add1188.i
  %xor1455.i = xor i32 %add1452.i, %or1340.i
  %or1460.i = tail call i32 @llvm.fshl.i32(i32 %xor1455.i, i32 %xor1455.i, i32 12), !BLADE-T !11
  %add1464.i = add i32 %or1460.i, %add1440.i
  %xor1467.i = xor i32 %add1464.i, %or1448.i
  %or1472.i = tail call i32 @llvm.fshl.i32(i32 %xor1467.i, i32 %xor1467.i, i32 8), !BLADE-T !11
  %add1476.i = add i32 %or1472.i, %add1452.i
  %xor1479.i = xor i32 %add1476.i, %or1460.i
  %or1484.i = tail call i32 @llvm.fshl.i32(i32 %xor1479.i, i32 %xor1479.i, i32 7), !BLADE-T !11
  %add1488.i = add i32 %add1320.i, %or1196.i
  %xor1491.i = xor i32 %add1488.i, %or1280.i
  %or1496.i = tail call i32 @llvm.fshl.i32(i32 %xor1491.i, i32 %xor1491.i, i32 16), !BLADE-T !11
  %add1500.i = add i32 %or1496.i, %add1236.i
  %xor1503.i = xor i32 %add1500.i, %or1196.i
  %or1508.i = tail call i32 @llvm.fshl.i32(i32 %xor1503.i, i32 %xor1503.i, i32 12), !BLADE-T !11
  %add1512.i = add i32 %or1508.i, %add1488.i
  %xor1515.i = xor i32 %add1512.i, %or1496.i
  %or1520.i = tail call i32 @llvm.fshl.i32(i32 %xor1515.i, i32 %xor1515.i, i32 8), !BLADE-T !11
  %add1524.i = add i32 %or1520.i, %add1500.i
  %xor1527.i = xor i32 %add1524.i, %or1508.i
  %or1532.i = tail call i32 @llvm.fshl.i32(i32 %xor1527.i, i32 %xor1527.i, i32 7), !BLADE-T !11
  %add1536.i = add i32 %or1532.i, %add1368.i
  %xor1539.i = xor i32 %add1536.i, %or1424.i
  %or1544.i = tail call i32 @llvm.fshl.i32(i32 %xor1539.i, i32 %xor1539.i, i32 16), !BLADE-T !11
  %add1548.i = add i32 %add1476.i, %or1544.i
  %xor1551.i = xor i32 %add1548.i, %or1532.i
  %or1556.i = tail call i32 @llvm.fshl.i32(i32 %xor1551.i, i32 %xor1551.i, i32 12), !BLADE-T !11
  %add1560.i = add i32 %or1556.i, %add1536.i
  %xor1563.i = xor i32 %add1560.i, %or1544.i
  %or1568.i = tail call i32 @llvm.fshl.i32(i32 %xor1563.i, i32 %xor1563.i, i32 8), !BLADE-T !11
  %add1572.i = add i32 %or1568.i, %add1548.i
  %xor1575.i = xor i32 %add1572.i, %or1556.i
  %or1580.i = tail call i32 @llvm.fshl.i32(i32 %xor1575.i, i32 %xor1575.i, i32 7), !BLADE-T !11
  %add1584.i = add i32 %or1388.i, %add1416.i
  %xor1587.i = xor i32 %or1472.i, %add1584.i
  %or1592.i = tail call i32 @llvm.fshl.i32(i32 %xor1587.i, i32 %xor1587.i, i32 16), !BLADE-T !11
  %add1596.i = add i32 %or1592.i, %add1524.i
  %xor1599.i = xor i32 %add1596.i, %or1388.i
  %or1604.i = tail call i32 @llvm.fshl.i32(i32 %xor1599.i, i32 %xor1599.i, i32 12), !BLADE-T !11
  %add1608.i = add i32 %or1604.i, %add1584.i
  %xor1611.i = xor i32 %add1608.i, %or1592.i
  %or1616.i = tail call i32 @llvm.fshl.i32(i32 %xor1611.i, i32 %xor1611.i, i32 8), !BLADE-T !11
  %add1620.i = add i32 %or1616.i, %add1596.i
  %xor1623.i = xor i32 %add1620.i, %or1604.i
  %or1628.i = tail call i32 @llvm.fshl.i32(i32 %xor1623.i, i32 %xor1623.i, i32 7), !BLADE-T !11
  %add1632.i = add i32 %or1436.i, %add1464.i
  %xor1635.i = xor i32 %add1632.i, %or1520.i
  %or1640.i = tail call i32 @llvm.fshl.i32(i32 %xor1635.i, i32 %xor1635.i, i32 16), !BLADE-T !11
  %add1644.i = add i32 %or1640.i, %add1380.i
  %xor1647.i = xor i32 %add1644.i, %or1436.i
  %or1652.i = tail call i32 @llvm.fshl.i32(i32 %xor1647.i, i32 %xor1647.i, i32 12), !BLADE-T !11
  %add1656.i = add i32 %or1652.i, %add1632.i
  %xor1659.i = xor i32 %add1656.i, %or1640.i
  %or1664.i = tail call i32 @llvm.fshl.i32(i32 %xor1659.i, i32 %xor1659.i, i32 8), !BLADE-T !11
  %add1668.i = add i32 %or1664.i, %add1644.i
  %xor1671.i = xor i32 %add1668.i, %or1652.i
  %or1676.i = tail call i32 @llvm.fshl.i32(i32 %xor1671.i, i32 %xor1671.i, i32 7), !BLADE-T !11
  %add1680.i = add i32 %or1484.i, %add1512.i
  %xor1683.i = xor i32 %add1680.i, %or1376.i
  %or1688.i = tail call i32 @llvm.fshl.i32(i32 %xor1683.i, i32 %xor1683.i, i32 16), !BLADE-T !11
  %add1692.i = add i32 %or1688.i, %add1428.i
  %xor1695.i = xor i32 %add1692.i, %or1484.i
  %or1700.i = tail call i32 @llvm.fshl.i32(i32 %xor1695.i, i32 %xor1695.i, i32 12), !BLADE-T !11
  %add1704.i = add i32 %or1700.i, %add1680.i
  %xor1707.i = xor i32 %add1704.i, %or1688.i
  %or1712.i = tail call i32 @llvm.fshl.i32(i32 %xor1707.i, i32 %xor1707.i, i32 8), !BLADE-T !11
  %add1716.i = add i32 %or1712.i, %add1692.i
  %xor1719.i = xor i32 %add1716.i, %or1700.i
  %or1724.i = tail call i32 @llvm.fshl.i32(i32 %xor1719.i, i32 %xor1719.i, i32 7), !BLADE-T !11
  %add1728.i = add i32 %or1628.i, %add1560.i
  %xor1731.i = xor i32 %or1712.i, %add1728.i
  %or1736.i = tail call i32 @llvm.fshl.i32(i32 %xor1731.i, i32 %xor1731.i, i32 16), !BLADE-T !11
  %add1740.i = add i32 %or1736.i, %add1668.i
  %xor1743.i = xor i32 %add1740.i, %or1628.i
  %or1748.i = tail call i32 @llvm.fshl.i32(i32 %xor1743.i, i32 %xor1743.i, i32 12), !BLADE-T !11
  %add1752.i = add i32 %or1748.i, %add1728.i
  %xor1755.i = xor i32 %add1752.i, %or1736.i
  %or1760.i = tail call i32 @llvm.fshl.i32(i32 %xor1755.i, i32 %xor1755.i, i32 8), !BLADE-T !11
  %add1764.i = add i32 %or1760.i, %add1740.i
  %xor1767.i = xor i32 %add1764.i, %or1748.i
  %or1772.i = tail call i32 @llvm.fshl.i32(i32 %xor1767.i, i32 %xor1767.i, i32 7), !BLADE-T !11
  %add1776.i = add i32 %or1676.i, %add1608.i
  %xor1779.i = xor i32 %add1776.i, %or1568.i
  %or1784.i = tail call i32 @llvm.fshl.i32(i32 %xor1779.i, i32 %xor1779.i, i32 16), !BLADE-T !11
  %add1788.i = add i32 %or1784.i, %add1716.i
  %xor1791.i = xor i32 %add1788.i, %or1676.i
  %or1796.i = tail call i32 @llvm.fshl.i32(i32 %xor1791.i, i32 %xor1791.i, i32 12), !BLADE-T !11
  %add1800.i = add i32 %or1796.i, %add1776.i
  %xor1803.i = xor i32 %add1800.i, %or1784.i
  %or1808.i = tail call i32 @llvm.fshl.i32(i32 %xor1803.i, i32 %xor1803.i, i32 8), !BLADE-T !11
  %add1812.i = add i32 %or1808.i, %add1788.i
  %xor1815.i = xor i32 %add1812.i, %or1796.i
  %or1820.i = tail call i32 @llvm.fshl.i32(i32 %xor1815.i, i32 %xor1815.i, i32 7), !BLADE-T !11
  %add1824.i = add i32 %or1724.i, %add1656.i
  %xor1827.i = xor i32 %add1824.i, %or1616.i
  %or1832.i = tail call i32 @llvm.fshl.i32(i32 %xor1827.i, i32 %xor1827.i, i32 16), !BLADE-T !11
  %add1836.i = add i32 %or1832.i, %add1572.i
  %xor1839.i = xor i32 %add1836.i, %or1724.i
  %or1844.i = tail call i32 @llvm.fshl.i32(i32 %xor1839.i, i32 %xor1839.i, i32 12), !BLADE-T !11
  %add1848.i = add i32 %or1844.i, %add1824.i
  %xor1851.i = xor i32 %add1848.i, %or1832.i
  %or1856.i = tail call i32 @llvm.fshl.i32(i32 %xor1851.i, i32 %xor1851.i, i32 8), !BLADE-T !11
  %add1860.i = add i32 %or1856.i, %add1836.i
  %xor1863.i = xor i32 %add1860.i, %or1844.i
  %or1868.i = tail call i32 @llvm.fshl.i32(i32 %xor1863.i, i32 %xor1863.i, i32 7), !BLADE-T !11
  %add1872.i = add i32 %add1704.i, %or1580.i
  %xor1875.i = xor i32 %add1872.i, %or1664.i
  %or1880.i = tail call i32 @llvm.fshl.i32(i32 %xor1875.i, i32 %xor1875.i, i32 16), !BLADE-T !11
  %add1884.i = add i32 %or1880.i, %add1620.i
  %xor1887.i = xor i32 %add1884.i, %or1580.i
  %or1892.i = tail call i32 @llvm.fshl.i32(i32 %xor1887.i, i32 %xor1887.i, i32 12), !BLADE-T !11
  %add1896.i = add i32 %or1892.i, %add1872.i
  %xor1899.i = xor i32 %add1896.i, %or1880.i
  %or1904.i = tail call i32 @llvm.fshl.i32(i32 %xor1899.i, i32 %xor1899.i, i32 8), !BLADE-T !11
  %add1908.i = add i32 %or1904.i, %add1884.i
  %xor1911.i = xor i32 %add1908.i, %or1892.i
  %or1916.i = tail call i32 @llvm.fshl.i32(i32 %xor1911.i, i32 %xor1911.i, i32 7), !BLADE-T !11
  %add1920.i = add i32 %or1916.i, %add1752.i
  %xor1923.i = xor i32 %add1920.i, %or1808.i
  %or1928.i = tail call i32 @llvm.fshl.i32(i32 %xor1923.i, i32 %xor1923.i, i32 16), !BLADE-T !11
  %add1932.i = add i32 %add1860.i, %or1928.i
  %xor1935.i = xor i32 %add1932.i, %or1916.i
  %or1940.i = tail call i32 @llvm.fshl.i32(i32 %xor1935.i, i32 %xor1935.i, i32 12), !BLADE-T !11
  %add1944.i = add i32 %or1940.i, %add1920.i
  %xor1947.i = xor i32 %add1944.i, %or1928.i
  %or1952.i = tail call i32 @llvm.fshl.i32(i32 %xor1947.i, i32 %xor1947.i, i32 8), !BLADE-T !11
  %add1956.i = add i32 %or1952.i, %add1932.i
  %xor1959.i = xor i32 %add1956.i, %or1940.i
  %or1964.i = tail call i32 @llvm.fshl.i32(i32 %xor1959.i, i32 %xor1959.i, i32 7), !BLADE-T !11
  %add1968.i = add i32 %or1772.i, %add1800.i
  %xor1971.i = xor i32 %or1856.i, %add1968.i
  %or1976.i = tail call i32 @llvm.fshl.i32(i32 %xor1971.i, i32 %xor1971.i, i32 16), !BLADE-T !11
  %add1980.i = add i32 %or1976.i, %add1908.i
  %xor1983.i = xor i32 %add1980.i, %or1772.i
  %or1988.i = tail call i32 @llvm.fshl.i32(i32 %xor1983.i, i32 %xor1983.i, i32 12), !BLADE-T !11
  %add1992.i = add i32 %or1988.i, %add1968.i
  %xor1995.i = xor i32 %add1992.i, %or1976.i
  %or2000.i = tail call i32 @llvm.fshl.i32(i32 %xor1995.i, i32 %xor1995.i, i32 8), !BLADE-T !11
  %add2004.i = add i32 %or2000.i, %add1980.i
  %xor2007.i = xor i32 %add2004.i, %or1988.i
  %or2012.i = tail call i32 @llvm.fshl.i32(i32 %xor2007.i, i32 %xor2007.i, i32 7), !BLADE-T !11
  %add2016.i = add i32 %or1820.i, %add1848.i
  %xor2019.i = xor i32 %add2016.i, %or1904.i
  %or2024.i = tail call i32 @llvm.fshl.i32(i32 %xor2019.i, i32 %xor2019.i, i32 16), !BLADE-T !11
  %add2028.i = add i32 %or2024.i, %add1764.i
  %xor2031.i = xor i32 %add2028.i, %or1820.i
  %or2036.i = tail call i32 @llvm.fshl.i32(i32 %xor2031.i, i32 %xor2031.i, i32 12), !BLADE-T !11
  %add2040.i = add i32 %or2036.i, %add2016.i
  %xor2043.i = xor i32 %add2040.i, %or2024.i
  %or2048.i = tail call i32 @llvm.fshl.i32(i32 %xor2043.i, i32 %xor2043.i, i32 8), !BLADE-T !11
  %add2052.i = add i32 %or2048.i, %add2028.i
  %xor2055.i = xor i32 %add2052.i, %or2036.i
  %or2060.i = tail call i32 @llvm.fshl.i32(i32 %xor2055.i, i32 %xor2055.i, i32 7), !BLADE-T !11
  %add2064.i = add i32 %or1868.i, %add1896.i
  %xor2067.i = xor i32 %add2064.i, %or1760.i
  %or2072.i = tail call i32 @llvm.fshl.i32(i32 %xor2067.i, i32 %xor2067.i, i32 16), !BLADE-T !11
  %add2076.i = add i32 %or2072.i, %add1812.i
  %xor2079.i = xor i32 %add2076.i, %or1868.i
  %or2084.i = tail call i32 @llvm.fshl.i32(i32 %xor2079.i, i32 %xor2079.i, i32 12), !BLADE-T !11
  %add2088.i = add i32 %or2084.i, %add2064.i
  %xor2091.i = xor i32 %add2088.i, %or2072.i
  %or2096.i = tail call i32 @llvm.fshl.i32(i32 %xor2091.i, i32 %xor2091.i, i32 8), !BLADE-T !11
  %add2100.i = add i32 %or2096.i, %add2076.i
  %xor2103.i = xor i32 %add2100.i, %or2084.i
  %or2108.i = tail call i32 @llvm.fshl.i32(i32 %xor2103.i, i32 %xor2103.i, i32 7), !BLADE-T !11
  %add2112.i = add i32 %or2012.i, %add1944.i
  %xor2115.i = xor i32 %or2096.i, %add2112.i
  %or2120.i = tail call i32 @llvm.fshl.i32(i32 %xor2115.i, i32 %xor2115.i, i32 16), !BLADE-T !11
  %add2124.i = add i32 %or2120.i, %add2052.i
  %xor2127.i = xor i32 %add2124.i, %or2012.i
  %or2132.i = tail call i32 @llvm.fshl.i32(i32 %xor2127.i, i32 %xor2127.i, i32 12), !BLADE-T !11
  %add2136.i = add i32 %or2132.i, %add2112.i
  %xor2139.i = xor i32 %add2136.i, %or2120.i
  %or2144.i = tail call i32 @llvm.fshl.i32(i32 %xor2139.i, i32 %xor2139.i, i32 8), !BLADE-T !11
  %add2148.i = add i32 %or2144.i, %add2124.i
  %xor2151.i = xor i32 %add2148.i, %or2132.i
  %or2156.i = tail call i32 @llvm.fshl.i32(i32 %xor2151.i, i32 %xor2151.i, i32 7), !BLADE-T !11
  %add2160.i = add i32 %or2060.i, %add1992.i
  %xor2163.i = xor i32 %add2160.i, %or1952.i
  %or2168.i = tail call i32 @llvm.fshl.i32(i32 %xor2163.i, i32 %xor2163.i, i32 16), !BLADE-T !11
  %add2172.i = add i32 %or2168.i, %add2100.i
  %xor2175.i = xor i32 %add2172.i, %or2060.i
  %or2180.i = tail call i32 @llvm.fshl.i32(i32 %xor2175.i, i32 %xor2175.i, i32 12), !BLADE-T !11
  %add2184.i = add i32 %or2180.i, %add2160.i
  %xor2187.i = xor i32 %add2184.i, %or2168.i
  %or2192.i = tail call i32 @llvm.fshl.i32(i32 %xor2187.i, i32 %xor2187.i, i32 8), !BLADE-T !11
  %add2196.i = add i32 %or2192.i, %add2172.i
  %xor2199.i = xor i32 %add2196.i, %or2180.i
  %or2204.i = tail call i32 @llvm.fshl.i32(i32 %xor2199.i, i32 %xor2199.i, i32 7), !BLADE-T !11
  %add2208.i = add i32 %or2108.i, %add2040.i
  %xor2211.i = xor i32 %add2208.i, %or2000.i
  %or2216.i = tail call i32 @llvm.fshl.i32(i32 %xor2211.i, i32 %xor2211.i, i32 16), !BLADE-T !11
  %add2220.i = add i32 %or2216.i, %add1956.i
  %xor2223.i = xor i32 %add2220.i, %or2108.i
  %or2228.i = tail call i32 @llvm.fshl.i32(i32 %xor2223.i, i32 %xor2223.i, i32 12), !BLADE-T !11
  %add2232.i = add i32 %or2228.i, %add2208.i
  %xor2235.i = xor i32 %add2232.i, %or2216.i
  %or2240.i = tail call i32 @llvm.fshl.i32(i32 %xor2235.i, i32 %xor2235.i, i32 8), !BLADE-T !11
  %add2244.i = add i32 %or2240.i, %add2220.i
  %xor2247.i = xor i32 %add2244.i, %or2228.i
  %or2252.i = tail call i32 @llvm.fshl.i32(i32 %xor2247.i, i32 %xor2247.i, i32 7), !BLADE-T !11
  %add2256.i = add i32 %add2088.i, %or1964.i
  %xor2259.i = xor i32 %add2256.i, %or2048.i
  %or2264.i = tail call i32 @llvm.fshl.i32(i32 %xor2259.i, i32 %xor2259.i, i32 16), !BLADE-T !11
  %add2268.i = add i32 %or2264.i, %add2004.i
  %xor2271.i = xor i32 %add2268.i, %or1964.i
  %or2276.i = tail call i32 @llvm.fshl.i32(i32 %xor2271.i, i32 %xor2271.i, i32 12), !BLADE-T !11
  %add2280.i = add i32 %or2276.i, %add2256.i
  %xor2283.i = xor i32 %add2280.i, %or2264.i
  %or2288.i = tail call i32 @llvm.fshl.i32(i32 %xor2283.i, i32 %xor2283.i, i32 8), !BLADE-T !11
  %add2292.i = add i32 %or2288.i, %add2268.i
  %xor2295.i = xor i32 %add2292.i, %or2276.i
  %or2300.i = tail call i32 @llvm.fshl.i32(i32 %xor2295.i, i32 %xor2295.i, i32 7), !BLADE-T !11
  %add2304.i = add i32 %or2300.i, %add2136.i
  %xor2307.i = xor i32 %add2304.i, %or2192.i
  %or2312.i = tail call i32 @llvm.fshl.i32(i32 %xor2307.i, i32 %xor2307.i, i32 16), !BLADE-T !11
  %add2316.i = add i32 %add2244.i, %or2312.i
  %xor2319.i = xor i32 %add2316.i, %or2300.i
  %or2324.i = tail call i32 @llvm.fshl.i32(i32 %xor2319.i, i32 %xor2319.i, i32 12), !BLADE-T !11
  %add2328.i = add i32 %or2324.i, %add2304.i
  %xor2331.i = xor i32 %add2328.i, %or2312.i
  %or2336.i = tail call i32 @llvm.fshl.i32(i32 %xor2331.i, i32 %xor2331.i, i32 8), !BLADE-T !11
  %add2340.i = add i32 %or2336.i, %add2316.i
  %xor2343.i = xor i32 %add2340.i, %or2324.i
  %or2348.i = tail call i32 @llvm.fshl.i32(i32 %xor2343.i, i32 %xor2343.i, i32 7), !BLADE-T !11
  %add2352.i = add i32 %or2156.i, %add2184.i
  %xor2355.i = xor i32 %or2240.i, %add2352.i
  %or2360.i = tail call i32 @llvm.fshl.i32(i32 %xor2355.i, i32 %xor2355.i, i32 16), !BLADE-T !11
  %add2364.i = add i32 %or2360.i, %add2292.i
  %xor2367.i = xor i32 %add2364.i, %or2156.i
  %or2372.i = tail call i32 @llvm.fshl.i32(i32 %xor2367.i, i32 %xor2367.i, i32 12), !BLADE-T !11
  %add2376.i = add i32 %or2372.i, %add2352.i
  %xor2379.i = xor i32 %add2376.i, %or2360.i
  %or2384.i = tail call i32 @llvm.fshl.i32(i32 %xor2379.i, i32 %xor2379.i, i32 8), !BLADE-T !11
  %add2388.i = add i32 %or2384.i, %add2364.i
  %xor2391.i = xor i32 %add2388.i, %or2372.i
  %or2396.i = tail call i32 @llvm.fshl.i32(i32 %xor2391.i, i32 %xor2391.i, i32 7), !BLADE-T !11
  %add2400.i = add i32 %or2204.i, %add2232.i
  %xor2403.i = xor i32 %add2400.i, %or2288.i
  %or2408.i = tail call i32 @llvm.fshl.i32(i32 %xor2403.i, i32 %xor2403.i, i32 16), !BLADE-T !11
  %add2412.i = add i32 %or2408.i, %add2148.i
  %xor2415.i = xor i32 %add2412.i, %or2204.i
  %or2420.i = tail call i32 @llvm.fshl.i32(i32 %xor2415.i, i32 %xor2415.i, i32 12), !BLADE-T !11
  %add2424.i = add i32 %or2420.i, %add2400.i
  %xor2427.i = xor i32 %add2424.i, %or2408.i
  %or2432.i = tail call i32 @llvm.fshl.i32(i32 %xor2427.i, i32 %xor2427.i, i32 8), !BLADE-T !11
  %add2436.i = add i32 %or2432.i, %add2412.i
  %xor2439.i = xor i32 %add2436.i, %or2420.i
  %or2444.i = tail call i32 @llvm.fshl.i32(i32 %xor2439.i, i32 %xor2439.i, i32 7), !BLADE-T !11
  %add2448.i = add i32 %or2252.i, %add2280.i
  %xor2451.i = xor i32 %add2448.i, %or2144.i
  %or2456.i = tail call i32 @llvm.fshl.i32(i32 %xor2451.i, i32 %xor2451.i, i32 16), !BLADE-T !11
  %add2460.i = add i32 %or2456.i, %add2196.i
  %xor2463.i = xor i32 %add2460.i, %or2252.i
  %or2468.i = tail call i32 @llvm.fshl.i32(i32 %xor2463.i, i32 %xor2463.i, i32 12), !BLADE-T !11
  %add2472.i = add i32 %or2468.i, %add2448.i
  %xor2475.i = xor i32 %add2472.i, %or2456.i
  %or2480.i = tail call i32 @llvm.fshl.i32(i32 %xor2475.i, i32 %xor2475.i, i32 8), !BLADE-T !11
  %add2484.i = add i32 %or2480.i, %add2460.i
  %xor2487.i = xor i32 %add2484.i, %or2468.i
  %or2492.i = tail call i32 @llvm.fshl.i32(i32 %xor2487.i, i32 %xor2487.i, i32 7), !BLADE-T !11
  %add2496.i = add i32 %or2396.i, %add2328.i
  %xor2499.i = xor i32 %or2480.i, %add2496.i
  %or2504.i = tail call i32 @llvm.fshl.i32(i32 %xor2499.i, i32 %xor2499.i, i32 16), !BLADE-T !11
  %add2508.i = add i32 %or2504.i, %add2436.i
  %xor2511.i = xor i32 %add2508.i, %or2396.i
  %or2516.i = tail call i32 @llvm.fshl.i32(i32 %xor2511.i, i32 %xor2511.i, i32 12), !BLADE-T !11
  %add2520.i = add i32 %or2516.i, %add2496.i
  %xor2523.i = xor i32 %add2520.i, %or2504.i
  %or2528.i = tail call i32 @llvm.fshl.i32(i32 %xor2523.i, i32 %xor2523.i, i32 8), !BLADE-T !11
  %add2532.i = add i32 %or2528.i, %add2508.i
  %xor2535.i = xor i32 %add2532.i, %or2516.i
  %or2540.i = tail call i32 @llvm.fshl.i32(i32 %xor2535.i, i32 %xor2535.i, i32 7), !BLADE-T !11
  %add2544.i = add i32 %or2444.i, %add2376.i
  %xor2547.i = xor i32 %add2544.i, %or2336.i
  %or2552.i = tail call i32 @llvm.fshl.i32(i32 %xor2547.i, i32 %xor2547.i, i32 16), !BLADE-T !11
  %add2556.i = add i32 %or2552.i, %add2484.i
  %xor2559.i = xor i32 %add2556.i, %or2444.i
  %or2564.i = tail call i32 @llvm.fshl.i32(i32 %xor2559.i, i32 %xor2559.i, i32 12), !BLADE-T !11
  %add2568.i = add i32 %or2564.i, %add2544.i
  %xor2571.i = xor i32 %add2568.i, %or2552.i
  %or2576.i = tail call i32 @llvm.fshl.i32(i32 %xor2571.i, i32 %xor2571.i, i32 8), !BLADE-T !11
  %add2580.i = add i32 %or2576.i, %add2556.i
  %xor2583.i = xor i32 %add2580.i, %or2564.i
  %or2588.i = tail call i32 @llvm.fshl.i32(i32 %xor2583.i, i32 %xor2583.i, i32 7), !BLADE-T !11
  %add2592.i = add i32 %or2492.i, %add2424.i
  %xor2595.i = xor i32 %add2592.i, %or2384.i
  %or2600.i = tail call i32 @llvm.fshl.i32(i32 %xor2595.i, i32 %xor2595.i, i32 16), !BLADE-T !11
  %add2604.i = add i32 %or2600.i, %add2340.i
  %xor2607.i = xor i32 %add2604.i, %or2492.i
  %or2612.i = tail call i32 @llvm.fshl.i32(i32 %xor2607.i, i32 %xor2607.i, i32 12), !BLADE-T !11
  %add2616.i = add i32 %or2612.i, %add2592.i
  %xor2619.i = xor i32 %add2616.i, %or2600.i
  %or2624.i = tail call i32 @llvm.fshl.i32(i32 %xor2619.i, i32 %xor2619.i, i32 8), !BLADE-T !11
  %add2628.i = add i32 %or2624.i, %add2604.i
  %xor2631.i = xor i32 %add2628.i, %or2612.i
  %or2636.i = tail call i32 @llvm.fshl.i32(i32 %xor2631.i, i32 %xor2631.i, i32 7), !BLADE-T !11
  %add2640.i = add i32 %add2472.i, %or2348.i
  %xor2643.i = xor i32 %add2640.i, %or2432.i
  %or2648.i = tail call i32 @llvm.fshl.i32(i32 %xor2643.i, i32 %xor2643.i, i32 16), !BLADE-T !11
  %add2652.i = add i32 %or2648.i, %add2388.i
  %xor2655.i = xor i32 %add2652.i, %or2348.i
  %or2660.i = tail call i32 @llvm.fshl.i32(i32 %xor2655.i, i32 %xor2655.i, i32 12), !BLADE-T !11
  %add2664.i = add i32 %or2660.i, %add2640.i
  %xor2667.i = xor i32 %add2664.i, %or2648.i
  %or2672.i = tail call i32 @llvm.fshl.i32(i32 %xor2667.i, i32 %xor2667.i, i32 8), !BLADE-T !11
  %add2676.i = add i32 %or2672.i, %add2652.i
  %xor2679.i = xor i32 %add2676.i, %or2660.i
  %or2684.i = tail call i32 @llvm.fshl.i32(i32 %xor2679.i, i32 %xor2679.i, i32 7), !BLADE-T !11
  %add2688.i = add i32 %or2684.i, %add2520.i
  %xor2691.i = xor i32 %add2688.i, %or2576.i
  %or2696.i = tail call i32 @llvm.fshl.i32(i32 %xor2691.i, i32 %xor2691.i, i32 16), !BLADE-T !11
  %add2700.i = add i32 %add2628.i, %or2696.i
  %xor2703.i = xor i32 %add2700.i, %or2684.i
  %or2708.i = tail call i32 @llvm.fshl.i32(i32 %xor2703.i, i32 %xor2703.i, i32 12), !BLADE-T !11
  %add2712.i = add i32 %or2708.i, %add2688.i
  %xor2715.i = xor i32 %add2712.i, %or2696.i
  %or2720.i = tail call i32 @llvm.fshl.i32(i32 %xor2715.i, i32 %xor2715.i, i32 8), !BLADE-T !11
  %add2724.i = add i32 %or2720.i, %add2700.i
  %xor2727.i = xor i32 %add2724.i, %or2708.i
  %or2732.i = tail call i32 @llvm.fshl.i32(i32 %xor2727.i, i32 %xor2727.i, i32 7), !BLADE-T !11
  %add2736.i = add i32 %or2540.i, %add2568.i
  %xor2739.i = xor i32 %or2624.i, %add2736.i
  %or2744.i = tail call i32 @llvm.fshl.i32(i32 %xor2739.i, i32 %xor2739.i, i32 16), !BLADE-T !11
  %add2748.i = add i32 %or2744.i, %add2676.i
  %xor2751.i = xor i32 %add2748.i, %or2540.i
  %or2756.i = tail call i32 @llvm.fshl.i32(i32 %xor2751.i, i32 %xor2751.i, i32 12), !BLADE-T !11
  %add2760.i = add i32 %or2756.i, %add2736.i
  %xor2763.i = xor i32 %add2760.i, %or2744.i
  %or2768.i = tail call i32 @llvm.fshl.i32(i32 %xor2763.i, i32 %xor2763.i, i32 8), !BLADE-T !11
  %add2772.i = add i32 %or2768.i, %add2748.i
  %xor2775.i = xor i32 %add2772.i, %or2756.i
  %or2780.i = tail call i32 @llvm.fshl.i32(i32 %xor2775.i, i32 %xor2775.i, i32 7), !BLADE-T !11
  %add2784.i = add i32 %or2588.i, %add2616.i
  %xor2787.i = xor i32 %add2784.i, %or2672.i
  %or2792.i = tail call i32 @llvm.fshl.i32(i32 %xor2787.i, i32 %xor2787.i, i32 16), !BLADE-T !11
  %add2796.i = add i32 %or2792.i, %add2532.i
  %xor2799.i = xor i32 %add2796.i, %or2588.i
  %or2804.i = tail call i32 @llvm.fshl.i32(i32 %xor2799.i, i32 %xor2799.i, i32 12), !BLADE-T !11
  %add2808.i = add i32 %or2804.i, %add2784.i
  %xor2811.i = xor i32 %add2808.i, %or2792.i
  %or2816.i = tail call i32 @llvm.fshl.i32(i32 %xor2811.i, i32 %xor2811.i, i32 8), !BLADE-T !11
  %add2820.i = add i32 %or2816.i, %add2796.i
  %xor2823.i = xor i32 %add2820.i, %or2804.i
  %or2828.i = tail call i32 @llvm.fshl.i32(i32 %xor2823.i, i32 %xor2823.i, i32 7), !BLADE-T !11
  %add2832.i = add i32 %or2636.i, %add2664.i
  %xor2835.i = xor i32 %add2832.i, %or2528.i
  %or2840.i = tail call i32 @llvm.fshl.i32(i32 %xor2835.i, i32 %xor2835.i, i32 16), !BLADE-T !11
  %add2844.i = add i32 %or2840.i, %add2580.i
  %xor2847.i = xor i32 %add2844.i, %or2636.i
  %or2852.i = tail call i32 @llvm.fshl.i32(i32 %xor2847.i, i32 %xor2847.i, i32 12), !BLADE-T !11
  %add2856.i = add i32 %or2852.i, %add2832.i
  %xor2859.i = xor i32 %add2856.i, %or2840.i
  %or2864.i = tail call i32 @llvm.fshl.i32(i32 %xor2859.i, i32 %xor2859.i, i32 8), !BLADE-T !11
  %add2868.i = add i32 %or2864.i, %add2844.i
  %xor2871.i = xor i32 %add2868.i, %or2852.i
  %or2876.i = tail call i32 @llvm.fshl.i32(i32 %xor2871.i, i32 %xor2871.i, i32 7), !BLADE-T !11
  %add2880.i = add i32 %or2780.i, %add2712.i
  %xor2883.i = xor i32 %or2864.i, %add2880.i
  %or2888.i = tail call i32 @llvm.fshl.i32(i32 %xor2883.i, i32 %xor2883.i, i32 16), !BLADE-T !11
  %add2892.i = add i32 %or2888.i, %add2820.i
  %xor2895.i = xor i32 %add2892.i, %or2780.i
  %or2900.i = tail call i32 @llvm.fshl.i32(i32 %xor2895.i, i32 %xor2895.i, i32 12), !BLADE-T !11
  %add2904.i = add i32 %or2900.i, %add2880.i
  %xor2907.i = xor i32 %add2904.i, %or2888.i
  %or2912.i = tail call i32 @llvm.fshl.i32(i32 %xor2907.i, i32 %xor2907.i, i32 8), !BLADE-T !11
  %add2916.i = add i32 %or2912.i, %add2892.i
  %xor2919.i = xor i32 %add2916.i, %or2900.i
  %or2924.i = tail call i32 @llvm.fshl.i32(i32 %xor2919.i, i32 %xor2919.i, i32 7), !BLADE-T !11
  %add2928.i = add i32 %or2828.i, %add2760.i
  %xor2931.i = xor i32 %add2928.i, %or2720.i
  %or2936.i = tail call i32 @llvm.fshl.i32(i32 %xor2931.i, i32 %xor2931.i, i32 16), !BLADE-T !11
  %add2940.i = add i32 %or2936.i, %add2868.i
  %xor2943.i = xor i32 %add2940.i, %or2828.i
  %or2948.i = tail call i32 @llvm.fshl.i32(i32 %xor2943.i, i32 %xor2943.i, i32 12), !BLADE-T !11
  %add2952.i = add i32 %or2948.i, %add2928.i
  %xor2955.i = xor i32 %add2952.i, %or2936.i
  %or2960.i = tail call i32 @llvm.fshl.i32(i32 %xor2955.i, i32 %xor2955.i, i32 8), !BLADE-T !11
  %add2964.i = add i32 %or2960.i, %add2940.i
  %xor2967.i = xor i32 %add2964.i, %or2948.i
  %or2972.i = tail call i32 @llvm.fshl.i32(i32 %xor2967.i, i32 %xor2967.i, i32 7), !BLADE-T !11
  %add2976.i = add i32 %or2876.i, %add2808.i
  %xor2979.i = xor i32 %add2976.i, %or2768.i
  %or2984.i = tail call i32 @llvm.fshl.i32(i32 %xor2979.i, i32 %xor2979.i, i32 16), !BLADE-T !11
  %add2988.i = add i32 %or2984.i, %add2724.i
  %xor2991.i = xor i32 %add2988.i, %or2876.i
  %or2996.i = tail call i32 @llvm.fshl.i32(i32 %xor2991.i, i32 %xor2991.i, i32 12), !BLADE-T !11
  %add3000.i = add i32 %or2996.i, %add2976.i
  %xor3003.i = xor i32 %add3000.i, %or2984.i
  %or3008.i = tail call i32 @llvm.fshl.i32(i32 %xor3003.i, i32 %xor3003.i, i32 8), !BLADE-T !11
  %add3012.i = add i32 %or3008.i, %add2988.i
  %xor3015.i = xor i32 %add3012.i, %or2996.i
  %or3020.i = tail call i32 @llvm.fshl.i32(i32 %xor3015.i, i32 %xor3015.i, i32 7), !BLADE-T !11
  %add3024.i = add i32 %add2856.i, %or2732.i
  %xor3027.i = xor i32 %add3024.i, %or2816.i
  %or3032.i = tail call i32 @llvm.fshl.i32(i32 %xor3027.i, i32 %xor3027.i, i32 16), !BLADE-T !11
  %add3036.i = add i32 %or3032.i, %add2772.i
  %xor3039.i = xor i32 %add3036.i, %or2732.i
  %or3044.i = tail call i32 @llvm.fshl.i32(i32 %xor3039.i, i32 %xor3039.i, i32 12), !BLADE-T !11
  %add3048.i = add i32 %or3044.i, %add3024.i
  %xor3051.i = xor i32 %add3048.i, %or3032.i
  %or3056.i = tail call i32 @llvm.fshl.i32(i32 %xor3051.i, i32 %xor3051.i, i32 8), !BLADE-T !11
  %add3060.i = add i32 %or3056.i, %add3036.i
  %xor3063.i = xor i32 %add3060.i, %or3044.i
  %or3068.i = tail call i32 @llvm.fshl.i32(i32 %xor3063.i, i32 %xor3063.i, i32 7), !BLADE-T !11
  %add3072.i = add i32 %or3068.i, %add2904.i
  %xor3075.i = xor i32 %add3072.i, %or2960.i
  %or3080.i = tail call i32 @llvm.fshl.i32(i32 %xor3075.i, i32 %xor3075.i, i32 16), !BLADE-T !11
  %add3084.i = add i32 %add3012.i, %or3080.i
  %xor3087.i = xor i32 %add3084.i, %or3068.i
  %or3092.i = tail call i32 @llvm.fshl.i32(i32 %xor3087.i, i32 %xor3087.i, i32 12), !BLADE-T !11
  %add3096.i = add i32 %or3092.i, %add3072.i
  %xor3099.i = xor i32 %add3096.i, %or3080.i
  %or3104.i = tail call i32 @llvm.fshl.i32(i32 %xor3099.i, i32 %xor3099.i, i32 8), !BLADE-T !11
  %add3108.i = add i32 %or3104.i, %add3084.i
  %xor3111.i = xor i32 %add3108.i, %or3092.i
  %or3116.i = tail call i32 @llvm.fshl.i32(i32 %xor3111.i, i32 %xor3111.i, i32 7), !BLADE-T !11
  %add3120.i = add i32 %or2924.i, %add2952.i
  %xor3123.i = xor i32 %or3008.i, %add3120.i
  %or3128.i = tail call i32 @llvm.fshl.i32(i32 %xor3123.i, i32 %xor3123.i, i32 16), !BLADE-T !11
  %add3132.i = add i32 %or3128.i, %add3060.i
  %xor3135.i = xor i32 %add3132.i, %or2924.i
  %or3140.i = tail call i32 @llvm.fshl.i32(i32 %xor3135.i, i32 %xor3135.i, i32 12), !BLADE-T !11
  %add3144.i = add i32 %or3140.i, %add3120.i
  %xor3147.i = xor i32 %add3144.i, %or3128.i
  %or3152.i = tail call i32 @llvm.fshl.i32(i32 %xor3147.i, i32 %xor3147.i, i32 8), !BLADE-T !11
  %add3156.i = add i32 %or3152.i, %add3132.i
  %xor3159.i = xor i32 %add3156.i, %or3140.i
  %or3164.i = tail call i32 @llvm.fshl.i32(i32 %xor3159.i, i32 %xor3159.i, i32 7), !BLADE-T !11
  %add3168.i = add i32 %or2972.i, %add3000.i
  %xor3171.i = xor i32 %add3168.i, %or3056.i
  %or3176.i = tail call i32 @llvm.fshl.i32(i32 %xor3171.i, i32 %xor3171.i, i32 16), !BLADE-T !11
  %add3180.i = add i32 %or3176.i, %add2916.i
  %xor3183.i = xor i32 %add3180.i, %or2972.i
  %or3188.i = tail call i32 @llvm.fshl.i32(i32 %xor3183.i, i32 %xor3183.i, i32 12), !BLADE-T !11
  %add3192.i = add i32 %or3188.i, %add3168.i
  %xor3195.i = xor i32 %add3192.i, %or3176.i
  %or3200.i = tail call i32 @llvm.fshl.i32(i32 %xor3195.i, i32 %xor3195.i, i32 8), !BLADE-T !11
  %add3204.i = add i32 %or3200.i, %add3180.i
  %xor3207.i = xor i32 %add3204.i, %or3188.i
  %or3212.i = tail call i32 @llvm.fshl.i32(i32 %xor3207.i, i32 %xor3207.i, i32 7), !BLADE-T !11
  %add3216.i = add i32 %or3020.i, %add3048.i
  %xor3219.i = xor i32 %add3216.i, %or2912.i
  %or3224.i = tail call i32 @llvm.fshl.i32(i32 %xor3219.i, i32 %xor3219.i, i32 16), !BLADE-T !11
  %add3228.i = add i32 %or3224.i, %add2964.i
  %xor3231.i = xor i32 %add3228.i, %or3020.i
  %or3236.i = tail call i32 @llvm.fshl.i32(i32 %xor3231.i, i32 %xor3231.i, i32 12), !BLADE-T !11
  %add3240.i = add i32 %or3236.i, %add3216.i
  %xor3243.i = xor i32 %add3240.i, %or3224.i
  %or3248.i = tail call i32 @llvm.fshl.i32(i32 %xor3243.i, i32 %xor3243.i, i32 8), !BLADE-T !11
  %add3252.i = add i32 %or3248.i, %add3228.i
  %xor3255.i = xor i32 %add3252.i, %or3236.i
  %or3260.i = tail call i32 @llvm.fshl.i32(i32 %xor3255.i, i32 %xor3255.i, i32 7), !BLADE-T !11
  %add3264.i = add i32 %or3164.i, %add3096.i
  %xor3267.i = xor i32 %or3248.i, %add3264.i
  %or3272.i = tail call i32 @llvm.fshl.i32(i32 %xor3267.i, i32 %xor3267.i, i32 16), !BLADE-T !11
  %add3276.i = add i32 %or3272.i, %add3204.i
  %xor3279.i = xor i32 %add3276.i, %or3164.i
  %or3284.i = tail call i32 @llvm.fshl.i32(i32 %xor3279.i, i32 %xor3279.i, i32 12), !BLADE-T !11
  %add3288.i = add i32 %or3284.i, %add3264.i
  %xor3291.i = xor i32 %add3288.i, %or3272.i
  %or3296.i = tail call i32 @llvm.fshl.i32(i32 %xor3291.i, i32 %xor3291.i, i32 8), !BLADE-T !11
  %add3300.i = add i32 %or3296.i, %add3276.i
  %xor3303.i = xor i32 %add3300.i, %or3284.i
  %or3308.i = tail call i32 @llvm.fshl.i32(i32 %xor3303.i, i32 %xor3303.i, i32 7), !BLADE-T !11
  %add3312.i = add i32 %or3212.i, %add3144.i
  %xor3315.i = xor i32 %add3312.i, %or3104.i
  %or3320.i = tail call i32 @llvm.fshl.i32(i32 %xor3315.i, i32 %xor3315.i, i32 16), !BLADE-T !11
  %add3324.i = add i32 %or3320.i, %add3252.i
  %xor3327.i = xor i32 %add3324.i, %or3212.i
  %or3332.i = tail call i32 @llvm.fshl.i32(i32 %xor3327.i, i32 %xor3327.i, i32 12), !BLADE-T !11
  %add3336.i = add i32 %or3332.i, %add3312.i
  %xor3339.i = xor i32 %add3336.i, %or3320.i
  %or3344.i = tail call i32 @llvm.fshl.i32(i32 %xor3339.i, i32 %xor3339.i, i32 8), !BLADE-T !11
  %add3348.i = add i32 %or3344.i, %add3324.i
  %xor3351.i = xor i32 %add3348.i, %or3332.i
  %or3356.i = tail call i32 @llvm.fshl.i32(i32 %xor3351.i, i32 %xor3351.i, i32 7), !BLADE-T !11
  %add3360.i = add i32 %or3260.i, %add3192.i
  %xor3363.i = xor i32 %add3360.i, %or3152.i
  %or3368.i = tail call i32 @llvm.fshl.i32(i32 %xor3363.i, i32 %xor3363.i, i32 16), !BLADE-T !11
  %add3372.i = add i32 %or3368.i, %add3108.i
  %xor3375.i = xor i32 %add3372.i, %or3260.i
  %or3380.i = tail call i32 @llvm.fshl.i32(i32 %xor3375.i, i32 %xor3375.i, i32 12), !BLADE-T !11
  %add3384.i = add i32 %or3380.i, %add3360.i
  %xor3387.i = xor i32 %add3384.i, %or3368.i
  %or3392.i = tail call i32 @llvm.fshl.i32(i32 %xor3387.i, i32 %xor3387.i, i32 8), !BLADE-T !11
  %add3396.i = add i32 %or3392.i, %add3372.i
  %xor3399.i = xor i32 %add3396.i, %or3380.i
  %or3404.i = tail call i32 @llvm.fshl.i32(i32 %xor3399.i, i32 %xor3399.i, i32 7), !BLADE-T !11
  %add3408.i = add i32 %add3240.i, %or3116.i
  %xor3411.i = xor i32 %add3408.i, %or3200.i
  %or3416.i = tail call i32 @llvm.fshl.i32(i32 %xor3411.i, i32 %xor3411.i, i32 16), !BLADE-T !11
  %add3420.i = add i32 %or3416.i, %add3156.i
  %xor3423.i = xor i32 %add3420.i, %or3116.i
  %or3428.i = tail call i32 @llvm.fshl.i32(i32 %xor3423.i, i32 %xor3423.i, i32 12), !BLADE-T !11
  %add3432.i = add i32 %or3428.i, %add3408.i
  %xor3435.i = xor i32 %add3432.i, %or3416.i
  %or3440.i = tail call i32 @llvm.fshl.i32(i32 %xor3435.i, i32 %xor3435.i, i32 8), !BLADE-T !11
  %add3444.i = add i32 %or3440.i, %add3420.i
  %xor3447.i = xor i32 %add3444.i, %or3428.i
  %or3452.i = tail call i32 @llvm.fshl.i32(i32 %xor3447.i, i32 %xor3447.i, i32 7), !BLADE-T !11
  %add3456.i = add i32 %or3452.i, %add3288.i
  %xor3459.i = xor i32 %add3456.i, %or3344.i
  %or3464.i = tail call i32 @llvm.fshl.i32(i32 %xor3459.i, i32 %xor3459.i, i32 16), !BLADE-T !11
  %add3468.i = add i32 %add3396.i, %or3464.i
  %xor3471.i = xor i32 %add3468.i, %or3452.i
  %or3476.i = tail call i32 @llvm.fshl.i32(i32 %xor3471.i, i32 %xor3471.i, i32 12), !BLADE-T !11
  %add3480.i = add i32 %or3476.i, %add3456.i
  %xor3483.i = xor i32 %add3480.i, %or3464.i
  %or3488.i = tail call i32 @llvm.fshl.i32(i32 %xor3483.i, i32 %xor3483.i, i32 8), !BLADE-T !11
  %add3492.i = add i32 %or3488.i, %add3468.i
  %xor3495.i = xor i32 %add3492.i, %or3476.i
  %or3500.i = tail call i32 @llvm.fshl.i32(i32 %xor3495.i, i32 %xor3495.i, i32 7), !BLADE-T !11
  %add3504.i = add i32 %or3308.i, %add3336.i
  %xor3507.i = xor i32 %or3392.i, %add3504.i
  %or3512.i = tail call i32 @llvm.fshl.i32(i32 %xor3507.i, i32 %xor3507.i, i32 16), !BLADE-T !11
  %add3516.i = add i32 %or3512.i, %add3444.i
  %xor3519.i = xor i32 %add3516.i, %or3308.i
  %or3524.i = tail call i32 @llvm.fshl.i32(i32 %xor3519.i, i32 %xor3519.i, i32 12), !BLADE-T !11
  %add3528.i = add i32 %or3524.i, %add3504.i
  %xor3531.i = xor i32 %add3528.i, %or3512.i
  %or3536.i = tail call i32 @llvm.fshl.i32(i32 %xor3531.i, i32 %xor3531.i, i32 8), !BLADE-T !11
  %add3540.i = add i32 %or3536.i, %add3516.i
  %xor3543.i = xor i32 %add3540.i, %or3524.i
  %or3548.i = tail call i32 @llvm.fshl.i32(i32 %xor3543.i, i32 %xor3543.i, i32 7), !BLADE-T !11
  %add3552.i = add i32 %or3356.i, %add3384.i
  %xor3555.i = xor i32 %add3552.i, %or3440.i
  %or3560.i = tail call i32 @llvm.fshl.i32(i32 %xor3555.i, i32 %xor3555.i, i32 16), !BLADE-T !11
  %add3564.i = add i32 %or3560.i, %add3300.i
  %xor3567.i = xor i32 %add3564.i, %or3356.i
  %or3572.i = tail call i32 @llvm.fshl.i32(i32 %xor3567.i, i32 %xor3567.i, i32 12), !BLADE-T !11
  %add3576.i = add i32 %or3572.i, %add3552.i
  %xor3579.i = xor i32 %add3576.i, %or3560.i
  %or3584.i = tail call i32 @llvm.fshl.i32(i32 %xor3579.i, i32 %xor3579.i, i32 8), !BLADE-T !11
  %add3588.i = add i32 %or3584.i, %add3564.i
  %xor3591.i = xor i32 %add3588.i, %or3572.i
  %or3596.i = tail call i32 @llvm.fshl.i32(i32 %xor3591.i, i32 %xor3591.i, i32 7), !BLADE-T !11
  %add3600.i = add i32 %or3404.i, %add3432.i
  %xor3603.i = xor i32 %add3600.i, %or3296.i
  %or3608.i = tail call i32 @llvm.fshl.i32(i32 %xor3603.i, i32 %xor3603.i, i32 16), !BLADE-T !11
  %add3612.i = add i32 %or3608.i, %add3348.i
  %xor3615.i = xor i32 %add3612.i, %or3404.i
  %or3620.i = tail call i32 @llvm.fshl.i32(i32 %xor3615.i, i32 %xor3615.i, i32 12), !BLADE-T !11
  %add3624.i = add i32 %or3620.i, %add3600.i
  %xor3627.i = xor i32 %add3624.i, %or3608.i
  %or3632.i = tail call i32 @llvm.fshl.i32(i32 %xor3627.i, i32 %xor3627.i, i32 8), !BLADE-T !11
  %add3636.i = add i32 %or3632.i, %add3612.i
  %xor3639.i = xor i32 %add3636.i, %or3620.i
  %or3644.i = tail call i32 @llvm.fshl.i32(i32 %xor3639.i, i32 %xor3639.i, i32 7), !BLADE-T !11
  %add3648.i = add i32 %or3548.i, %add3480.i
  %xor3651.i = xor i32 %or3632.i, %add3648.i
  %or3656.i = tail call i32 @llvm.fshl.i32(i32 %xor3651.i, i32 %xor3651.i, i32 16), !BLADE-T !11
  %add3660.i = add i32 %or3656.i, %add3588.i
  %xor3663.i = xor i32 %add3660.i, %or3548.i
  %or3668.i = tail call i32 @llvm.fshl.i32(i32 %xor3663.i, i32 %xor3663.i, i32 12), !BLADE-T !11
  %add3672.i = add i32 %or3668.i, %add3648.i
  %xor3675.i = xor i32 %add3672.i, %or3656.i
  %or3680.i = tail call i32 @llvm.fshl.i32(i32 %xor3675.i, i32 %xor3675.i, i32 8), !BLADE-T !11
  %add3684.i = add i32 %or3680.i, %add3660.i
  %xor3687.i = xor i32 %add3684.i, %or3668.i
  %or3692.i = tail call i32 @llvm.fshl.i32(i32 %xor3687.i, i32 %xor3687.i, i32 7), !BLADE-T !11
  %add3696.i = add i32 %or3596.i, %add3528.i
  %xor3699.i = xor i32 %add3696.i, %or3488.i
  %or3704.i = tail call i32 @llvm.fshl.i32(i32 %xor3699.i, i32 %xor3699.i, i32 16), !BLADE-T !11
  %add3708.i = add i32 %or3704.i, %add3636.i
  %xor3711.i = xor i32 %add3708.i, %or3596.i
  %or3716.i = tail call i32 @llvm.fshl.i32(i32 %xor3711.i, i32 %xor3711.i, i32 12), !BLADE-T !11
  %add3720.i = add i32 %or3716.i, %add3696.i
  %xor3723.i = xor i32 %add3720.i, %or3704.i
  %or3728.i = tail call i32 @llvm.fshl.i32(i32 %xor3723.i, i32 %xor3723.i, i32 8), !BLADE-T !11
  %add3732.i = add i32 %or3728.i, %add3708.i
  %xor3735.i = xor i32 %add3732.i, %or3716.i
  %or3740.i = tail call i32 @llvm.fshl.i32(i32 %xor3735.i, i32 %xor3735.i, i32 7), !BLADE-T !11
  %add3744.i = add i32 %or3644.i, %add3576.i
  %xor3747.i = xor i32 %add3744.i, %or3536.i
  %or3752.i = tail call i32 @llvm.fshl.i32(i32 %xor3747.i, i32 %xor3747.i, i32 16), !BLADE-T !11
  %add3756.i = add i32 %or3752.i, %add3492.i
  %xor3759.i = xor i32 %add3756.i, %or3644.i
  %or3764.i = tail call i32 @llvm.fshl.i32(i32 %xor3759.i, i32 %xor3759.i, i32 12), !BLADE-T !11
  %add3768.i = add i32 %or3764.i, %add3744.i
  %xor3771.i = xor i32 %add3768.i, %or3752.i
  %or3776.i = tail call i32 @llvm.fshl.i32(i32 %xor3771.i, i32 %xor3771.i, i32 8), !BLADE-T !11
  %add3780.i = add i32 %or3776.i, %add3756.i
  %xor3783.i = xor i32 %add3780.i, %or3764.i
  %or3788.i = tail call i32 @llvm.fshl.i32(i32 %xor3783.i, i32 %xor3783.i, i32 7), !BLADE-T !11
  %add3792.i = add i32 %add3624.i, %or3500.i
  %xor3795.i = xor i32 %add3792.i, %or3584.i
  %or3800.i = tail call i32 @llvm.fshl.i32(i32 %xor3795.i, i32 %xor3795.i, i32 16), !BLADE-T !11
  %add3804.i = add i32 %or3800.i, %add3540.i
  %xor3807.i = xor i32 %add3804.i, %or3500.i
  %or3812.i = tail call i32 @llvm.fshl.i32(i32 %xor3807.i, i32 %xor3807.i, i32 12), !BLADE-T !11
  %add3816.i = add i32 %or3812.i, %add3792.i
  %xor3819.i = xor i32 %add3816.i, %or3800.i
  %or3824.i = tail call i32 @llvm.fshl.i32(i32 %xor3819.i, i32 %xor3819.i, i32 8), !BLADE-T !11
  %add3828.i = add i32 %or3824.i, %add3804.i
  %xor3831.i = xor i32 %add3828.i, %or3812.i
  %or3836.i = tail call i32 @llvm.fshl.i32(i32 %xor3831.i, i32 %xor3831.i, i32 7), !BLADE-T !11
  %add3847.i = add i32 %add3672.i, %7
  store i32 %add3847.i, ptr %tmp, align 16, !tbaa !7
  %add3847.1.i = add i32 %add3720.i, %8
  store i32 %add3847.1.i, ptr %arrayidx2.1.i, align 4, !tbaa !7
  %add3847.2.i = add i32 %add3768.i, %9
  store i32 %add3847.2.i, ptr %arrayidx2.2.i, align 8, !tbaa !7
  %add3847.3.i = add i32 %add3816.i, %10
  store i32 %add3847.3.i, ptr %arrayidx2.3.i, align 4, !tbaa !7
  %add3847.4.i = add i32 %or3836.i, %11
  store i32 %add3847.4.i, ptr %arrayidx2.4.i, align 16, !tbaa !7
  %add3847.5.i = add i32 %or3692.i, %12
  store i32 %add3847.5.i, ptr %arrayidx2.5.i, align 4, !tbaa !7
  %add3847.6.i = add i32 %or3740.i, %13
  store i32 %add3847.6.i, ptr %arrayidx2.6.i, align 8, !tbaa !7
  %add3847.7.i = add i32 %or3788.i, %14
  store i32 %add3847.7.i, ptr %arrayidx2.7.i, align 4, !tbaa !7
  %add3847.8.i = add i32 %add3780.i, %15
  store i32 %add3847.8.i, ptr %arrayidx2.8.i, align 16, !tbaa !7
  %add3847.9.i = add i32 %add3828.i, %16
  store i32 %add3847.9.i, ptr %arrayidx2.9.i, align 4, !tbaa !7
  %add3847.10.i = add i32 %add3684.i, %17
  store i32 %add3847.10.i, ptr %arrayidx2.10.i, align 8, !tbaa !7
  %add3847.11.i = add i32 %add3732.i, %18
  store i32 %add3847.11.i, ptr %arrayidx2.11.i, align 4, !tbaa !7
  %add3847.12.i = add i32 %or3728.i, %19
  store i32 %add3847.12.i, ptr %arrayidx2.12.i, align 16, !tbaa !7
  %add3847.13.i = add i32 %or3776.i, %20
  store i32 %add3847.13.i, ptr %arrayidx2.13.i, align 4, !tbaa !7
  %add3847.14.i = add i32 %or3824.i, %21
  store i32 %add3847.14.i, ptr %arrayidx2.14.i, align 8, !tbaa !7
  %add3847.15.i = add i32 %or3680.i, %22
  store i32 %add3847.15.i, ptr %arrayidx2.15.i, align 4, !tbaa !7
  %23 = load i32, ptr %arrayidx.12.i, align 4, !tbaa !7, !BLADE-T !11
  %inc = add i32 %23, 1
  store i32 %inc, ptr %arrayidx.12.i, align 4, !tbaa !7
  %cmp5 = icmp eq i32 %inc, 0
  br i1 %cmp5, label %if.then, label %if.end13

if.then:                                          ; preds = %for.body
  %24 = load i32, ptr %arrayidx.13.i, align 4, !tbaa !7, !BLADE-T !11
  %inc8 = add i32 %24, 1
  store i32 %inc8, ptr %arrayidx.13.i, align 4, !tbaa !7
  %cmp11.not = icmp eq i32 %inc8, 0
  br i1 %cmp11.not, label %if.else, label %if.end13

if.else:                                          ; preds = %if.then
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 271, ptr noundef nonnull @__PRETTY_FUNCTION__.ChaCha20_xor) #8, !BLADE-T !11
  unreachable

if.end13:                                         ; preds = %if.then, %for.body
  %add = add i64 %i.052, 64
  %cmp1547.not = icmp eq i64 %i.052, -64
  br i1 %cmp1547.not, label %for.cond.loopexit, label %iter.check

iter.check:                                       ; preds = %if.end13
  %min.iters.check = icmp ult i64 %6, 8
  br i1 %min.iters.check, label %if.end20.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check54 = icmp ult i64 %6, 16
  br i1 %min.iters.check54, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %6, -16
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %i.052, %index
  %25 = getelementptr inbounds i8, ptr %buffer, i64 %offset.idx, !BLADE-S !12
  %wide.load = load <16 x i8>, ptr %25, align 1, !tbaa !15, !BLADE-T !11
  %26 = getelementptr inbounds i8, ptr %tmp, i64 %index, !BLADE-S !12
  %wide.load55 = load <16 x i8>, ptr %26, align 16, !tbaa !15, !BLADE-T !11
  %27 = xor <16 x i8> %wide.load55, %wide.load
  store <16 x i8> %27, ptr %25, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 16
  %28 = icmp eq i64 %index.next, %n.vec
  br i1 %28, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %for.cond.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end58 = add i64 %i.052, %n.vec
  %n.vec.remaining = and i64 %6, 8
  %min.epilog.iters.check.not.not = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check.not.not, label %if.end20.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check, %vector.main.loop.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec57 = and i64 %6, -8
  %ind.end = add i64 %i.052, %n.vec57
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ]
  %offset.idx61 = add i64 %i.052, %index60
  %29 = getelementptr inbounds i8, ptr %buffer, i64 %offset.idx61, !BLADE-S !12
  %wide.load62 = load <8 x i8>, ptr %29, align 1, !tbaa !15, !BLADE-T !11
  %30 = getelementptr inbounds i8, ptr %tmp, i64 %index60, !BLADE-S !12
  %wide.load63 = load <8 x i8>, ptr %30, align 8, !tbaa !15, !BLADE-T !11
  %31 = xor <8 x i8> %wide.load63, %wide.load62
  store <8 x i8> %31, ptr %29, align 1, !tbaa !15
  %index.next64 = add nuw i64 %index60, 8
  %32 = icmp eq i64 %index.next64, %n.vec57
  br i1 %32, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %6, %n.vec57
  br i1 %cmp.n59, label %for.cond.loopexit, label %if.end20.preheader

if.end20.preheader:                               ; preds = %vec.epilog.middle.block, %vec.epilog.iter.check, %iter.check
  %j.050.ph = phi i64 [ %i.052, %iter.check ], [ %ind.end58, %vec.epilog.iter.check ], [ %ind.end, %vec.epilog.middle.block ]
  br label %if.end20

if.end20:                                         ; preds = %if.end20, %if.end20.preheader
  %j.050 = phi i64 [ %inc26, %if.end20 ], [ %j.050.ph, %if.end20.preheader ]
  %arrayidx21 = getelementptr inbounds i8, ptr %buffer, i64 %j.050, !BLADE-S !12
  %33 = load i8, ptr %arrayidx21, align 1, !tbaa !15, !BLADE-T !11
  %sub = sub nuw nsw i64 %j.050, %i.052
  %arrayidx22 = getelementptr inbounds i8, ptr %tmp, i64 %sub, !BLADE-S !12
  %34 = load i8, ptr %arrayidx22, align 1, !tbaa !15, !BLADE-T !11
  %xor46 = xor i8 %34, %33
  store i8 %xor46, ptr %arrayidx21, align 1, !tbaa !15
  %inc26 = add nuw i64 %j.050, 1
  %cmp15 = icmp ult i64 %inc26, %add
  %cmp18.not = icmp ult i64 %inc26, %bufflen
  %or.cond = and i1 %cmp15, %cmp18.not
  br i1 %or.cond, label %if.end20, label %for.cond.loopexit, !llvm.loop !20
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
entry:
  %scratch.i99 = alloca [256 x i8], align 16
  %scratch.i94 = alloca [64 x i8], align 16
  %scratch.i = alloca [16 x i8], align 16
  %tv.i33.i59 = alloca %struct.timeval, align 8
  %tv.i.i60 = alloca %struct.timeval, align 8
  %tv.i33.i30 = alloca %struct.timeval, align 8
  %tv.i.i31 = alloca %struct.timeval, align 8
  %tv.i33.i1 = alloca %struct.timeval, align 8
  %tv.i.i2 = alloca %struct.timeval, align 8
  %tv.i33.i = alloca %struct.timeval, align 8
  %tv.i.i = alloca %struct.timeval, align 8
  %ctx = alloca %struct.ChaCha20_Ctx, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ctx) #7
  %tv_usec.i.i = getelementptr inbounds %struct.timeval, ptr %tv.i.i, i64 0, i32 1
  %tv_usec.i35.i = getelementptr inbounds %struct.timeval, ptr %tv.i33.i, i64 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %min.041.i = phi double [ 0x7FF0000000000000, %entry ], [ %cond.i, %for.body.i ]
  %max.040.i = phi double [ 0xFFF0000000000000, %entry ], [ %cond7.i, %for.body.i ]
  %i.039.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  %sum.038.i = phi double [ 0.000000e+00, %entry ], [ %add.i, %for.body.i ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv.i.i) #7
  %call.i.i = call i32 @gettimeofday(ptr noundef nonnull %tv.i.i, ptr noundef null) #7
  %0 = load i64, ptr %tv_usec.i.i, align 8, !tbaa !21
  %1 = load i64, ptr %tv.i.i, align 8, !tbaa !24
  %conv1.i.i = sitofp i64 %1 to double
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv.i.i) #7
  %conv.i.i = sitofp i64 %0 to double
  %2 = tail call double @llvm.fmuladd.f64(double %conv.i.i, double 0x3EB0C6F7A0B5ED8D, double %conv1.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv.i33.i) #7
  %call.i34.i = call i32 @gettimeofday(ptr noundef nonnull %tv.i33.i, ptr noundef null) #7
  %3 = load i64, ptr %tv_usec.i35.i, align 8, !tbaa !21
  %conv.i36.i = sitofp i64 %3 to double
  %4 = load i64, ptr %tv.i33.i, align 8, !tbaa !24
  %conv1.i37.i = sitofp i64 %4 to double
  %5 = tail call double @llvm.fmuladd.f64(double %conv.i36.i, double 0x3EB0C6F7A0B5ED8D, double %conv1.i37.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv.i33.i) #7
  %sub.i = fsub double %5, %2
  %cmp2.i = fcmp olt double %min.041.i, %sub.i
  %cond.i = select i1 %cmp2.i, double %min.041.i, double %sub.i
  %cmp3.i = fcmp ogt double %max.040.i, %sub.i
  %cond7.i = select i1 %cmp3.i, double %max.040.i, double %sub.i
  %add.i = fadd double %sum.038.i, %sub.i
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %run_benchmark.exit, label %for.body.i, !llvm.loop !25

run_benchmark.exit:                               ; preds = %for.body.i
  %arrayidx42.i.i = getelementptr inbounds [16 x i32], ptr %ctx, i64 0, i64 12
  %arrayidx28.i.i = getelementptr inbounds [16 x i32], ptr %ctx, i64 0, i64 8
  %arrayidx12.i.i = getelementptr inbounds [16 x i32], ptr %ctx, i64 0, i64 4
  store <4 x i32> <i32 50462976, i32 117835012, i32 185207048, i32 252579084>, ptr %arrayidx12.i.i, align 16, !tbaa !7
  store <4 x i32> <i32 319951120, i32 387323156, i32 454695192, i32 522067228>, ptr %arrayidx28.i.i, align 16, !tbaa !7
  store <4 x i32> <i32 0, i32 150994944, i32 1241513984, i32 0>, ptr %arrayidx42.i.i, align 16, !tbaa !7
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, ptr %ctx, align 16, !tbaa !7
  %mul.i = fmul double %cond.i, 2.000000e+04
  %mul10.i = fmul double %cond7.i, 2.000000e+04
  %mul13.i = fmul double %add.i, 2.000000e+04
  %div15.i = fdiv double %mul13.i, 5.000000e+01
  %call16.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @.str.3, double noundef %mul.i, double noundef %div15.i, double noundef %mul10.i)
  %tv_usec.i.i3 = getelementptr inbounds %struct.timeval, ptr %tv.i.i2, i64 0, i32 1
  %tv_usec.i35.i4 = getelementptr inbounds %struct.timeval, ptr %tv.i33.i1, i64 0, i32 1
  br label %for.body.i28

for.body.i28:                                     ; preds = %bench_chacha_encrypt_16.exit, %run_benchmark.exit
  %min.041.i10 = phi double [ 0x7FF0000000000000, %run_benchmark.exit ], [ %cond.i22, %bench_chacha_encrypt_16.exit ]
  %max.040.i11 = phi double [ 0xFFF0000000000000, %run_benchmark.exit ], [ %cond7.i24, %bench_chacha_encrypt_16.exit ]
  %i.039.i12 = phi i32 [ 0, %run_benchmark.exit ], [ %inc.i26, %bench_chacha_encrypt_16.exit ]
  %sum.038.i13 = phi double [ 0.000000e+00, %run_benchmark.exit ], [ %add.i25, %bench_chacha_encrypt_16.exit ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv.i.i2) #7
  %call.i.i14 = call i32 @gettimeofday(ptr noundef nonnull %tv.i.i2, ptr noundef null) #7
  %6 = load i64, ptr %tv_usec.i.i3, align 8, !tbaa !21
  %7 = load i64, ptr %tv.i.i2, align 8, !tbaa !24
  %conv1.i.i16 = sitofp i64 %7 to double
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv.i.i2) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scratch.i) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %scratch.i, i8 0, i64 16, i1 false)
  br label %for.body.i93

for.body.i93:                                     ; preds = %for.body.i93, %for.body.i28
  %i.02.i = phi i32 [ 0, %for.body.i28 ], [ %inc.i91, %for.body.i93 ]
  call void @ChaCha20_xor(ptr noundef nonnull %ctx, ptr noundef nonnull %scratch.i, i64 noundef 16)
  %inc.i91 = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i92 = icmp eq i32 %inc.i91, 250000
  br i1 %exitcond.not.i92, label %bench_chacha_encrypt_16.exit, label %for.body.i93, !llvm.loop !26

bench_chacha_encrypt_16.exit:                     ; preds = %for.body.i93
  %conv.i.i15 = sitofp i64 %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %conv.i.i15, double 0x3EB0C6F7A0B5ED8D, double %conv1.i.i16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scratch.i) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv.i33.i1) #7
  %call.i34.i17 = call i32 @gettimeofday(ptr noundef nonnull %tv.i33.i1, ptr noundef null) #7
  %9 = load i64, ptr %tv_usec.i35.i4, align 8, !tbaa !21
  %conv.i36.i18 = sitofp i64 %9 to double
  %10 = load i64, ptr %tv.i33.i1, align 8, !tbaa !24
  %conv1.i37.i19 = sitofp i64 %10 to double
  %11 = tail call double @llvm.fmuladd.f64(double %conv.i36.i18, double 0x3EB0C6F7A0B5ED8D, double %conv1.i37.i19)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv.i33.i1) #7
  %sub.i20 = fsub double %11, %8
  %cmp2.i21 = fcmp olt double %min.041.i10, %sub.i20
  %cond.i22 = select i1 %cmp2.i21, double %min.041.i10, double %sub.i20
  %cmp3.i23 = fcmp ogt double %max.040.i11, %sub.i20
  %cond7.i24 = select i1 %cmp3.i23, double %max.040.i11, double %sub.i20
  %add.i25 = fadd double %sum.038.i13, %sub.i20
  %inc.i26 = add nuw nsw i32 %i.039.i12, 1
  %exitcond.not.i27 = icmp eq i32 %inc.i26, 50
  br i1 %exitcond.not.i27, label %run_benchmark.exit29, label %for.body.i28, !llvm.loop !25

run_benchmark.exit29:                             ; preds = %bench_chacha_encrypt_16.exit
  %mul.i5 = fmul double %cond.i22, 2.500000e+02
  %mul10.i6 = fmul double %cond7.i24, 2.500000e+02
  %mul13.i7 = fmul double %add.i25, 2.500000e+02
  %div15.i8 = fdiv double %mul13.i7, 5.000000e+01
  %call16.i9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @.str.4, double noundef %mul.i5, double noundef %div15.i8, double noundef %mul10.i6)
  %tv_usec.i.i32 = getelementptr inbounds %struct.timeval, ptr %tv.i.i31, i64 0, i32 1
  %tv_usec.i35.i33 = getelementptr inbounds %struct.timeval, ptr %tv.i33.i30, i64 0, i32 1
  br label %for.body.i57

for.body.i57:                                     ; preds = %bench_chacha_encrypt_64.exit, %run_benchmark.exit29
  %min.041.i39 = phi double [ 0x7FF0000000000000, %run_benchmark.exit29 ], [ %cond.i51, %bench_chacha_encrypt_64.exit ]
  %max.040.i40 = phi double [ 0xFFF0000000000000, %run_benchmark.exit29 ], [ %cond7.i53, %bench_chacha_encrypt_64.exit ]
  %i.039.i41 = phi i32 [ 0, %run_benchmark.exit29 ], [ %inc.i55, %bench_chacha_encrypt_64.exit ]
  %sum.038.i42 = phi double [ 0.000000e+00, %run_benchmark.exit29 ], [ %add.i54, %bench_chacha_encrypt_64.exit ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv.i.i31) #7
  %call.i.i43 = call i32 @gettimeofday(ptr noundef nonnull %tv.i.i31, ptr noundef null) #7
  %12 = load i64, ptr %tv_usec.i.i32, align 8, !tbaa !21
  %13 = load i64, ptr %tv.i.i31, align 8, !tbaa !24
  %conv1.i.i45 = sitofp i64 %13 to double
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv.i.i31) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %scratch.i94) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %scratch.i94, i8 0, i64 64, i1 false)
  br label %for.body.i98

for.body.i98:                                     ; preds = %for.body.i98, %for.body.i57
  %i.02.i95 = phi i32 [ 0, %for.body.i57 ], [ %inc.i96, %for.body.i98 ]
  call void @ChaCha20_xor(ptr noundef nonnull %ctx, ptr noundef nonnull %scratch.i94, i64 noundef 64)
  %inc.i96 = add nuw nsw i32 %i.02.i95, 1
  %exitcond.not.i97 = icmp eq i32 %inc.i96, 62500
  br i1 %exitcond.not.i97, label %bench_chacha_encrypt_64.exit, label %for.body.i98, !llvm.loop !27

bench_chacha_encrypt_64.exit:                     ; preds = %for.body.i98
  %conv.i.i44 = sitofp i64 %12 to double
  %14 = tail call double @llvm.fmuladd.f64(double %conv.i.i44, double 0x3EB0C6F7A0B5ED8D, double %conv1.i.i45)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %scratch.i94) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv.i33.i30) #7
  %call.i34.i46 = call i32 @gettimeofday(ptr noundef nonnull %tv.i33.i30, ptr noundef null) #7
  %15 = load i64, ptr %tv_usec.i35.i33, align 8, !tbaa !21
  %conv.i36.i47 = sitofp i64 %15 to double
  %16 = load i64, ptr %tv.i33.i30, align 8, !tbaa !24
  %conv1.i37.i48 = sitofp i64 %16 to double
  %17 = tail call double @llvm.fmuladd.f64(double %conv.i36.i47, double 0x3EB0C6F7A0B5ED8D, double %conv1.i37.i48)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv.i33.i30) #7
  %sub.i49 = fsub double %17, %14
  %cmp2.i50 = fcmp olt double %min.041.i39, %sub.i49
  %cond.i51 = select i1 %cmp2.i50, double %min.041.i39, double %sub.i49
  %cmp3.i52 = fcmp ogt double %max.040.i40, %sub.i49
  %cond7.i53 = select i1 %cmp3.i52, double %max.040.i40, double %sub.i49
  %add.i54 = fadd double %sum.038.i42, %sub.i49
  %inc.i55 = add nuw nsw i32 %i.039.i41, 1
  %exitcond.not.i56 = icmp eq i32 %inc.i55, 50
  br i1 %exitcond.not.i56, label %run_benchmark.exit58, label %for.body.i57, !llvm.loop !25

run_benchmark.exit58:                             ; preds = %bench_chacha_encrypt_64.exit
  %mul.i34 = fmul double %cond.i51, 2.500000e+02
  %mul10.i35 = fmul double %cond7.i53, 2.500000e+02
  %mul13.i36 = fmul double %add.i54, 2.500000e+02
  %div15.i37 = fdiv double %mul13.i36, 5.000000e+01
  %call16.i38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @.str.5, double noundef %mul.i34, double noundef %div15.i37, double noundef %mul10.i35)
  %tv_usec.i.i61 = getelementptr inbounds %struct.timeval, ptr %tv.i.i60, i64 0, i32 1
  %tv_usec.i35.i62 = getelementptr inbounds %struct.timeval, ptr %tv.i33.i59, i64 0, i32 1
  br label %for.body.i86

for.body.i86:                                     ; preds = %bench_chacha_encrypt_256.exit, %run_benchmark.exit58
  %min.041.i68 = phi double [ 0x7FF0000000000000, %run_benchmark.exit58 ], [ %cond.i80, %bench_chacha_encrypt_256.exit ]
  %max.040.i69 = phi double [ 0xFFF0000000000000, %run_benchmark.exit58 ], [ %cond7.i82, %bench_chacha_encrypt_256.exit ]
  %i.039.i70 = phi i32 [ 0, %run_benchmark.exit58 ], [ %inc.i84, %bench_chacha_encrypt_256.exit ]
  %sum.038.i71 = phi double [ 0.000000e+00, %run_benchmark.exit58 ], [ %add.i83, %bench_chacha_encrypt_256.exit ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv.i.i60) #7
  %call.i.i72 = call i32 @gettimeofday(ptr noundef nonnull %tv.i.i60, ptr noundef null) #7
  %18 = load i64, ptr %tv_usec.i.i61, align 8, !tbaa !21
  %19 = load i64, ptr %tv.i.i60, align 8, !tbaa !24
  %conv1.i.i74 = sitofp i64 %19 to double
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv.i.i60) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %scratch.i99) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %scratch.i99, i8 0, i64 256, i1 false)
  br label %for.body.i103

for.body.i103:                                    ; preds = %for.body.i103, %for.body.i86
  %i.02.i100 = phi i32 [ 0, %for.body.i86 ], [ %inc.i101, %for.body.i103 ]
  call void @ChaCha20_xor(ptr noundef nonnull %ctx, ptr noundef nonnull %scratch.i99, i64 noundef 256)
  %inc.i101 = add nuw nsw i32 %i.02.i100, 1
  %exitcond.not.i102 = icmp eq i32 %inc.i101, 15625
  br i1 %exitcond.not.i102, label %bench_chacha_encrypt_256.exit, label %for.body.i103, !llvm.loop !28

bench_chacha_encrypt_256.exit:                    ; preds = %for.body.i103
  %conv.i.i73 = sitofp i64 %18 to double
  %20 = tail call double @llvm.fmuladd.f64(double %conv.i.i73, double 0x3EB0C6F7A0B5ED8D, double %conv1.i.i74)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %scratch.i99) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv.i33.i59) #7
  %call.i34.i75 = call i32 @gettimeofday(ptr noundef nonnull %tv.i33.i59, ptr noundef null) #7
  %21 = load i64, ptr %tv_usec.i35.i62, align 8, !tbaa !21
  %conv.i36.i76 = sitofp i64 %21 to double
  %22 = load i64, ptr %tv.i33.i59, align 8, !tbaa !24
  %conv1.i37.i77 = sitofp i64 %22 to double
  %23 = tail call double @llvm.fmuladd.f64(double %conv.i36.i76, double 0x3EB0C6F7A0B5ED8D, double %conv1.i37.i77)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv.i33.i59) #7
  %sub.i78 = fsub double %23, %20
  %cmp2.i79 = fcmp olt double %min.041.i68, %sub.i78
  %cond.i80 = select i1 %cmp2.i79, double %min.041.i68, double %sub.i78
  %cmp3.i81 = fcmp ogt double %max.040.i69, %sub.i78
  %cond7.i82 = select i1 %cmp3.i81, double %max.040.i69, double %sub.i78
  %add.i83 = fadd double %sum.038.i71, %sub.i78
  %inc.i84 = add nuw nsw i32 %i.039.i70, 1
  %exitcond.not.i85 = icmp eq i32 %inc.i84, 50
  br i1 %exitcond.not.i85, label %run_benchmark.exit87, label %for.body.i86, !llvm.loop !25

run_benchmark.exit87:                             ; preds = %bench_chacha_encrypt_256.exit
  %mul.i63 = fmul double %cond.i80, 2.500000e+02
  %mul10.i64 = fmul double %cond7.i82, 2.500000e+02
  %mul13.i65 = fmul double %add.i83, 2.500000e+02
  %div15.i66 = fdiv double %mul13.i65, 5.000000e+01
  %call16.i67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @.str.6, double noundef %mul.i63, double noundef %div15.i66, double noundef %mul10.i64)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ctx) #7
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.x86.sse2.lfence() #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"Blade Transient"}
!12 = !{!"Blade Stable"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!9, !9, i64 0}
!16 = distinct !{!16, !14, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !14, !17, !18}
!20 = distinct !{!20, !14, !18, !17}
!21 = !{!22, !23, i64 8}
!22 = !{!"timeval", !23, i64 0, !23, i64 8}
!23 = !{!"long", !9, i64 0}
!24 = !{!22, !23, i64 0}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
