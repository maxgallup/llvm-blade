; ModuleID = 'ChaCha20.c'
source_filename = "ChaCha20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ChaCha20_Ctx = type { [16 x i32] }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"expand 32-byte k\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ctx->state[13] != 0\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"./ChaCha20.h\00", align 1
@__PRETTY_FUNCTION__.ChaCha20_xor = private unnamed_addr constant [53 x i8] c"void ChaCha20_xor(ChaCha20_Ctx *, uint8_t *, size_t)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"ChaCha20: Initialization\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"ChaCha20: Encryption (16-byte blocks)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"ChaCha20: Encryption (64-byte blocks)\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"ChaCha20: Encryption (256-byte blocks)\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"\1B[1m%s\1B[0m: min %4.2fns / avg %4.2fns / max %4.2fns\0A\00", align 1
@key = internal global [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", align 16
@nonce = internal global [12 x i8] c"\00\00\00\09\00\00\00J\00\00\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ChaCha20_init(ptr noundef %ctx, ptr noundef %key, ptr noundef %nonce, i32 noundef %count) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %nonce.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  store ptr %nonce, ptr %nonce.addr, align 8
  store i32 %count, ptr %count.addr, align 4
  %call = call i32 @pack4(ptr noundef @.str)
  %0 = load ptr, ptr %ctx.addr, align 8
  %state = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i32], ptr %state, i64 0, i64 0
  store i32 %call, ptr %arrayidx, align 4
  %call1 = call i32 @pack4(ptr noundef getelementptr inbounds (i8, ptr @.str, i64 4))
  %1 = load ptr, ptr %ctx.addr, align 8
  %state2 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %1, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [16 x i32], ptr %state2, i64 0, i64 1
  store i32 %call1, ptr %arrayidx3, align 4
  %call4 = call i32 @pack4(ptr noundef getelementptr inbounds (i8, ptr @.str, i64 8))
  %2 = load ptr, ptr %ctx.addr, align 8
  %state5 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %2, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [16 x i32], ptr %state5, i64 0, i64 2
  store i32 %call4, ptr %arrayidx6, align 4
  %call7 = call i32 @pack4(ptr noundef getelementptr inbounds (i8, ptr @.str, i64 12))
  %3 = load ptr, ptr %ctx.addr, align 8
  %state8 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %3, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [16 x i32], ptr %state8, i64 0, i64 3
  store i32 %call7, ptr %arrayidx9, align 4
  %4 = load ptr, ptr %key.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 0
  %call10 = call i32 @pack4(ptr noundef %add.ptr)
  %5 = load ptr, ptr %ctx.addr, align 8
  %state11 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %5, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [16 x i32], ptr %state11, i64 0, i64 4
  store i32 %call10, ptr %arrayidx12, align 4
  %6 = load ptr, ptr %key.addr, align 8
  %add.ptr13 = getelementptr inbounds i8, ptr %6, i64 4
  %call14 = call i32 @pack4(ptr noundef %add.ptr13)
  %7 = load ptr, ptr %ctx.addr, align 8
  %state15 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %7, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [16 x i32], ptr %state15, i64 0, i64 5
  store i32 %call14, ptr %arrayidx16, align 4
  %8 = load ptr, ptr %key.addr, align 8
  %add.ptr17 = getelementptr inbounds i8, ptr %8, i64 8
  %call18 = call i32 @pack4(ptr noundef %add.ptr17)
  %9 = load ptr, ptr %ctx.addr, align 8
  %state19 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %9, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [16 x i32], ptr %state19, i64 0, i64 6
  store i32 %call18, ptr %arrayidx20, align 4
  %10 = load ptr, ptr %key.addr, align 8
  %add.ptr21 = getelementptr inbounds i8, ptr %10, i64 12
  %call22 = call i32 @pack4(ptr noundef %add.ptr21)
  %11 = load ptr, ptr %ctx.addr, align 8
  %state23 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %11, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [16 x i32], ptr %state23, i64 0, i64 7
  store i32 %call22, ptr %arrayidx24, align 4
  %12 = load ptr, ptr %key.addr, align 8
  %add.ptr25 = getelementptr inbounds i8, ptr %12, i64 16
  %call26 = call i32 @pack4(ptr noundef %add.ptr25)
  %13 = load ptr, ptr %ctx.addr, align 8
  %state27 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %13, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [16 x i32], ptr %state27, i64 0, i64 8
  store i32 %call26, ptr %arrayidx28, align 4
  %14 = load ptr, ptr %key.addr, align 8
  %add.ptr29 = getelementptr inbounds i8, ptr %14, i64 20
  %call30 = call i32 @pack4(ptr noundef %add.ptr29)
  %15 = load ptr, ptr %ctx.addr, align 8
  %state31 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %15, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [16 x i32], ptr %state31, i64 0, i64 9
  store i32 %call30, ptr %arrayidx32, align 4
  %16 = load ptr, ptr %key.addr, align 8
  %add.ptr33 = getelementptr inbounds i8, ptr %16, i64 24
  %call34 = call i32 @pack4(ptr noundef %add.ptr33)
  %17 = load ptr, ptr %ctx.addr, align 8
  %state35 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %17, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [16 x i32], ptr %state35, i64 0, i64 10
  store i32 %call34, ptr %arrayidx36, align 4
  %18 = load ptr, ptr %key.addr, align 8
  %add.ptr37 = getelementptr inbounds i8, ptr %18, i64 28
  %call38 = call i32 @pack4(ptr noundef %add.ptr37)
  %19 = load ptr, ptr %ctx.addr, align 8
  %state39 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %19, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [16 x i32], ptr %state39, i64 0, i64 11
  store i32 %call38, ptr %arrayidx40, align 4
  %20 = load i32, ptr %count.addr, align 4
  %21 = load ptr, ptr %ctx.addr, align 8
  %state41 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %21, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [16 x i32], ptr %state41, i64 0, i64 12
  store i32 %20, ptr %arrayidx42, align 4
  %22 = load ptr, ptr %nonce.addr, align 8
  %add.ptr43 = getelementptr inbounds i8, ptr %22, i64 0
  %call44 = call i32 @pack4(ptr noundef %add.ptr43)
  %23 = load ptr, ptr %ctx.addr, align 8
  %state45 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %23, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [16 x i32], ptr %state45, i64 0, i64 13
  store i32 %call44, ptr %arrayidx46, align 4
  %24 = load ptr, ptr %nonce.addr, align 8
  %add.ptr47 = getelementptr inbounds i8, ptr %24, i64 4
  %call48 = call i32 @pack4(ptr noundef %add.ptr47)
  %25 = load ptr, ptr %ctx.addr, align 8
  %state49 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %25, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [16 x i32], ptr %state49, i64 0, i64 14
  store i32 %call48, ptr %arrayidx50, align 4
  %26 = load ptr, ptr %nonce.addr, align 8
  %add.ptr51 = getelementptr inbounds i8, ptr %26, i64 8
  %call52 = call i32 @pack4(ptr noundef %add.ptr51)
  %27 = load ptr, ptr %ctx.addr, align 8
  %state53 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %27, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [16 x i32], ptr %state53, i64 0, i64 15
  store i32 %call52, ptr %arrayidx54, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack4(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 0
  %2 = load ptr, ptr %a.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 8
  %or = or i32 %shl, %shl3
  %4 = load ptr, ptr %a.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 16
  %or7 = or i32 %or, %shl6
  %6 = load ptr, ptr %a.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %shl10 = shl i32 %conv9, 24
  %or11 = or i32 %or7, %shl10
  store i32 %or11, ptr %res, align 4
  %8 = load i32, ptr %res, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ChaCha20_xor(ptr noundef %ctx, ptr noundef %buffer, i64 noundef %bufflen) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %bufflen.addr = alloca i64, align 8
  %tmp = alloca [16 x i32], align 16
  %keystream = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i64 %bufflen, ptr %bufflen.addr, align 8
  store ptr null, ptr %keystream, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %0 = load i64, ptr %i, align 8
  %1 = load i64, ptr %bufflen.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end28

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %ctx.addr, align 8
  %state = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i32], ptr %state, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [16 x i32], ptr %tmp, i64 0, i64 0
  call void @ChaCha20_block_next(ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %keystream)
  %3 = load ptr, ptr %ctx.addr, align 8
  %state2 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i32], ptr %state2, i64 0, i64 12
  %4 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %arrayidx, align 4
  %5 = load ptr, ptr %ctx.addr, align 8
  %state3 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %5, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [16 x i32], ptr %state3, i64 0, i64 12
  %6 = load i32, ptr %arrayidx4, align 4
  %cmp5 = icmp eq i32 %6, 0
  br i1 %cmp5, label %if.then, label %if.end13

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %ctx.addr, align 8
  %state6 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %7, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [16 x i32], ptr %state6, i64 0, i64 13
  %8 = load i32, ptr %arrayidx7, align 4
  %inc8 = add i32 %8, 1
  store i32 %inc8, ptr %arrayidx7, align 4
  %9 = load ptr, ptr %ctx.addr, align 8
  %state9 = getelementptr inbounds %struct.ChaCha20_Ctx, ptr %9, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [16 x i32], ptr %state9, i64 0, i64 13
  %10 = load i32, ptr %arrayidx10, align 4
  %cmp11 = icmp ne i32 %10, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 271, ptr noundef @__PRETTY_FUNCTION__.ChaCha20_xor) #6
  unreachable

if.end:                                           ; preds = %if.then12
  br label %if.end13

if.end13:                                         ; preds = %if.end, %for.body
  %11 = load i64, ptr %i, align 8
  store i64 %11, ptr %j, align 8
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %if.end13
  %12 = load i64, ptr %j, align 8
  %13 = load i64, ptr %i, align 8
  %add = add i64 %13, 64
  %cmp15 = icmp ult i64 %12, %add
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  %14 = load i64, ptr %j, align 8
  %15 = load i64, ptr %bufflen.addr, align 8
  %cmp17 = icmp uge i64 %14, %15
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.body16
  br label %for.end

if.end19:                                         ; preds = %for.body16
  %16 = load ptr, ptr %buffer.addr, align 8
  %17 = load i64, ptr %j, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %16, i64 %17
  %18 = load i8, ptr %arrayidx20, align 1
  %conv = zext i8 %18 to i32
  %19 = load ptr, ptr %keystream, align 8
  %20 = load i64, ptr %j, align 8
  %21 = load i64, ptr %i, align 8
  %sub = sub i64 %20, %21
  %arrayidx21 = getelementptr inbounds i8, ptr %19, i64 %sub
  %22 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %22 to i32
  %xor = xor i32 %conv, %conv22
  %conv23 = trunc i32 %xor to i8
  %23 = load ptr, ptr %buffer.addr, align 8
  %24 = load i64, ptr %j, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %23, i64 %24
  store i8 %conv23, ptr %arrayidx24, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %25 = load i64, ptr %j, align 8
  %inc25 = add i64 %25, 1
  store i64 %inc25, ptr %j, align 8
  br label %for.cond14, !llvm.loop !8

for.end:                                          ; preds = %if.then18, %for.cond14
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %26 = load i64, ptr %i, align 8
  %add27 = add i64 %26, 64
  store i64 %add27, ptr %i, align 8
  br label %for.cond, !llvm.loop !10

for.end28:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ChaCha20_block_next(ptr noundef %in, ptr noundef %out, ptr noundef %keystream) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %keystream.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %i3838 = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  store ptr %keystream, ptr %keystream.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %in.addr, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %4 = load ptr, ptr %out.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 %idxprom1
  store i32 %3, ptr %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %out.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 4
  %8 = load i32, ptr %arrayidx3, align 4
  %9 = load ptr, ptr %out.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %9, i64 0
  %10 = load i32, ptr %arrayidx4, align 4
  %add = add i32 %10, %8
  store i32 %add, ptr %arrayidx4, align 4
  %11 = load ptr, ptr %out.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %11, i64 0
  %12 = load i32, ptr %arrayidx5, align 4
  %13 = load ptr, ptr %out.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %13, i64 12
  %14 = load i32, ptr %arrayidx6, align 4
  %xor = xor i32 %14, %12
  store i32 %xor, ptr %arrayidx6, align 4
  %15 = load ptr, ptr %out.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %15, i64 12
  %16 = load i32, ptr %arrayidx7, align 4
  %shl = shl i32 %16, 16
  %17 = load ptr, ptr %out.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %17, i64 12
  %18 = load i32, ptr %arrayidx8, align 4
  %shr = lshr i32 %18, 16
  %or = or i32 %shl, %shr
  %19 = load ptr, ptr %out.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %19, i64 12
  store i32 %or, ptr %arrayidx9, align 4
  %20 = load ptr, ptr %out.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %20, i64 12
  %21 = load i32, ptr %arrayidx10, align 4
  %22 = load ptr, ptr %out.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %22, i64 8
  %23 = load i32, ptr %arrayidx11, align 4
  %add12 = add i32 %23, %21
  store i32 %add12, ptr %arrayidx11, align 4
  %24 = load ptr, ptr %out.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %24, i64 8
  %25 = load i32, ptr %arrayidx13, align 4
  %26 = load ptr, ptr %out.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %26, i64 4
  %27 = load i32, ptr %arrayidx14, align 4
  %xor15 = xor i32 %27, %25
  store i32 %xor15, ptr %arrayidx14, align 4
  %28 = load ptr, ptr %out.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %28, i64 4
  %29 = load i32, ptr %arrayidx16, align 4
  %shl17 = shl i32 %29, 12
  %30 = load ptr, ptr %out.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %30, i64 4
  %31 = load i32, ptr %arrayidx18, align 4
  %shr19 = lshr i32 %31, 20
  %or20 = or i32 %shl17, %shr19
  %32 = load ptr, ptr %out.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %32, i64 4
  store i32 %or20, ptr %arrayidx21, align 4
  %33 = load ptr, ptr %out.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %33, i64 4
  %34 = load i32, ptr %arrayidx22, align 4
  %35 = load ptr, ptr %out.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %35, i64 0
  %36 = load i32, ptr %arrayidx23, align 4
  %add24 = add i32 %36, %34
  store i32 %add24, ptr %arrayidx23, align 4
  %37 = load ptr, ptr %out.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %37, i64 0
  %38 = load i32, ptr %arrayidx25, align 4
  %39 = load ptr, ptr %out.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %39, i64 12
  %40 = load i32, ptr %arrayidx26, align 4
  %xor27 = xor i32 %40, %38
  store i32 %xor27, ptr %arrayidx26, align 4
  %41 = load ptr, ptr %out.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %41, i64 12
  %42 = load i32, ptr %arrayidx28, align 4
  %shl29 = shl i32 %42, 8
  %43 = load ptr, ptr %out.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %43, i64 12
  %44 = load i32, ptr %arrayidx30, align 4
  %shr31 = lshr i32 %44, 24
  %or32 = or i32 %shl29, %shr31
  %45 = load ptr, ptr %out.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %45, i64 12
  store i32 %or32, ptr %arrayidx33, align 4
  %46 = load ptr, ptr %out.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %46, i64 12
  %47 = load i32, ptr %arrayidx34, align 4
  %48 = load ptr, ptr %out.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %48, i64 8
  %49 = load i32, ptr %arrayidx35, align 4
  %add36 = add i32 %49, %47
  store i32 %add36, ptr %arrayidx35, align 4
  %50 = load ptr, ptr %out.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %50, i64 8
  %51 = load i32, ptr %arrayidx37, align 4
  %52 = load ptr, ptr %out.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, ptr %52, i64 4
  %53 = load i32, ptr %arrayidx38, align 4
  %xor39 = xor i32 %53, %51
  store i32 %xor39, ptr %arrayidx38, align 4
  %54 = load ptr, ptr %out.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %54, i64 4
  %55 = load i32, ptr %arrayidx40, align 4
  %shl41 = shl i32 %55, 7
  %56 = load ptr, ptr %out.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, ptr %56, i64 4
  %57 = load i32, ptr %arrayidx42, align 4
  %shr43 = lshr i32 %57, 25
  %or44 = or i32 %shl41, %shr43
  %58 = load ptr, ptr %out.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %58, i64 4
  store i32 %or44, ptr %arrayidx45, align 4
  %59 = load ptr, ptr %out.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %59, i64 5
  %60 = load i32, ptr %arrayidx46, align 4
  %61 = load ptr, ptr %out.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %61, i64 1
  %62 = load i32, ptr %arrayidx47, align 4
  %add48 = add i32 %62, %60
  store i32 %add48, ptr %arrayidx47, align 4
  %63 = load ptr, ptr %out.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %63, i64 1
  %64 = load i32, ptr %arrayidx49, align 4
  %65 = load ptr, ptr %out.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %65, i64 13
  %66 = load i32, ptr %arrayidx50, align 4
  %xor51 = xor i32 %66, %64
  store i32 %xor51, ptr %arrayidx50, align 4
  %67 = load ptr, ptr %out.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, ptr %67, i64 13
  %68 = load i32, ptr %arrayidx52, align 4
  %shl53 = shl i32 %68, 16
  %69 = load ptr, ptr %out.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, ptr %69, i64 13
  %70 = load i32, ptr %arrayidx54, align 4
  %shr55 = lshr i32 %70, 16
  %or56 = or i32 %shl53, %shr55
  %71 = load ptr, ptr %out.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, ptr %71, i64 13
  store i32 %or56, ptr %arrayidx57, align 4
  %72 = load ptr, ptr %out.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, ptr %72, i64 13
  %73 = load i32, ptr %arrayidx58, align 4
  %74 = load ptr, ptr %out.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, ptr %74, i64 9
  %75 = load i32, ptr %arrayidx59, align 4
  %add60 = add i32 %75, %73
  store i32 %add60, ptr %arrayidx59, align 4
  %76 = load ptr, ptr %out.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, ptr %76, i64 9
  %77 = load i32, ptr %arrayidx61, align 4
  %78 = load ptr, ptr %out.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, ptr %78, i64 5
  %79 = load i32, ptr %arrayidx62, align 4
  %xor63 = xor i32 %79, %77
  store i32 %xor63, ptr %arrayidx62, align 4
  %80 = load ptr, ptr %out.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, ptr %80, i64 5
  %81 = load i32, ptr %arrayidx64, align 4
  %shl65 = shl i32 %81, 12
  %82 = load ptr, ptr %out.addr, align 8
  %arrayidx66 = getelementptr inbounds i32, ptr %82, i64 5
  %83 = load i32, ptr %arrayidx66, align 4
  %shr67 = lshr i32 %83, 20
  %or68 = or i32 %shl65, %shr67
  %84 = load ptr, ptr %out.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %84, i64 5
  store i32 %or68, ptr %arrayidx69, align 4
  %85 = load ptr, ptr %out.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %85, i64 5
  %86 = load i32, ptr %arrayidx70, align 4
  %87 = load ptr, ptr %out.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %87, i64 1
  %88 = load i32, ptr %arrayidx71, align 4
  %add72 = add i32 %88, %86
  store i32 %add72, ptr %arrayidx71, align 4
  %89 = load ptr, ptr %out.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %89, i64 1
  %90 = load i32, ptr %arrayidx73, align 4
  %91 = load ptr, ptr %out.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %91, i64 13
  %92 = load i32, ptr %arrayidx74, align 4
  %xor75 = xor i32 %92, %90
  store i32 %xor75, ptr %arrayidx74, align 4
  %93 = load ptr, ptr %out.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, ptr %93, i64 13
  %94 = load i32, ptr %arrayidx76, align 4
  %shl77 = shl i32 %94, 8
  %95 = load ptr, ptr %out.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, ptr %95, i64 13
  %96 = load i32, ptr %arrayidx78, align 4
  %shr79 = lshr i32 %96, 24
  %or80 = or i32 %shl77, %shr79
  %97 = load ptr, ptr %out.addr, align 8
  %arrayidx81 = getelementptr inbounds i32, ptr %97, i64 13
  store i32 %or80, ptr %arrayidx81, align 4
  %98 = load ptr, ptr %out.addr, align 8
  %arrayidx82 = getelementptr inbounds i32, ptr %98, i64 13
  %99 = load i32, ptr %arrayidx82, align 4
  %100 = load ptr, ptr %out.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, ptr %100, i64 9
  %101 = load i32, ptr %arrayidx83, align 4
  %add84 = add i32 %101, %99
  store i32 %add84, ptr %arrayidx83, align 4
  %102 = load ptr, ptr %out.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, ptr %102, i64 9
  %103 = load i32, ptr %arrayidx85, align 4
  %104 = load ptr, ptr %out.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, ptr %104, i64 5
  %105 = load i32, ptr %arrayidx86, align 4
  %xor87 = xor i32 %105, %103
  store i32 %xor87, ptr %arrayidx86, align 4
  %106 = load ptr, ptr %out.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, ptr %106, i64 5
  %107 = load i32, ptr %arrayidx88, align 4
  %shl89 = shl i32 %107, 7
  %108 = load ptr, ptr %out.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, ptr %108, i64 5
  %109 = load i32, ptr %arrayidx90, align 4
  %shr91 = lshr i32 %109, 25
  %or92 = or i32 %shl89, %shr91
  %110 = load ptr, ptr %out.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, ptr %110, i64 5
  store i32 %or92, ptr %arrayidx93, align 4
  %111 = load ptr, ptr %out.addr, align 8
  %arrayidx94 = getelementptr inbounds i32, ptr %111, i64 6
  %112 = load i32, ptr %arrayidx94, align 4
  %113 = load ptr, ptr %out.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, ptr %113, i64 2
  %114 = load i32, ptr %arrayidx95, align 4
  %add96 = add i32 %114, %112
  store i32 %add96, ptr %arrayidx95, align 4
  %115 = load ptr, ptr %out.addr, align 8
  %arrayidx97 = getelementptr inbounds i32, ptr %115, i64 2
  %116 = load i32, ptr %arrayidx97, align 4
  %117 = load ptr, ptr %out.addr, align 8
  %arrayidx98 = getelementptr inbounds i32, ptr %117, i64 14
  %118 = load i32, ptr %arrayidx98, align 4
  %xor99 = xor i32 %118, %116
  store i32 %xor99, ptr %arrayidx98, align 4
  %119 = load ptr, ptr %out.addr, align 8
  %arrayidx100 = getelementptr inbounds i32, ptr %119, i64 14
  %120 = load i32, ptr %arrayidx100, align 4
  %shl101 = shl i32 %120, 16
  %121 = load ptr, ptr %out.addr, align 8
  %arrayidx102 = getelementptr inbounds i32, ptr %121, i64 14
  %122 = load i32, ptr %arrayidx102, align 4
  %shr103 = lshr i32 %122, 16
  %or104 = or i32 %shl101, %shr103
  %123 = load ptr, ptr %out.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, ptr %123, i64 14
  store i32 %or104, ptr %arrayidx105, align 4
  %124 = load ptr, ptr %out.addr, align 8
  %arrayidx106 = getelementptr inbounds i32, ptr %124, i64 14
  %125 = load i32, ptr %arrayidx106, align 4
  %126 = load ptr, ptr %out.addr, align 8
  %arrayidx107 = getelementptr inbounds i32, ptr %126, i64 10
  %127 = load i32, ptr %arrayidx107, align 4
  %add108 = add i32 %127, %125
  store i32 %add108, ptr %arrayidx107, align 4
  %128 = load ptr, ptr %out.addr, align 8
  %arrayidx109 = getelementptr inbounds i32, ptr %128, i64 10
  %129 = load i32, ptr %arrayidx109, align 4
  %130 = load ptr, ptr %out.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, ptr %130, i64 6
  %131 = load i32, ptr %arrayidx110, align 4
  %xor111 = xor i32 %131, %129
  store i32 %xor111, ptr %arrayidx110, align 4
  %132 = load ptr, ptr %out.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %132, i64 6
  %133 = load i32, ptr %arrayidx112, align 4
  %shl113 = shl i32 %133, 12
  %134 = load ptr, ptr %out.addr, align 8
  %arrayidx114 = getelementptr inbounds i32, ptr %134, i64 6
  %135 = load i32, ptr %arrayidx114, align 4
  %shr115 = lshr i32 %135, 20
  %or116 = or i32 %shl113, %shr115
  %136 = load ptr, ptr %out.addr, align 8
  %arrayidx117 = getelementptr inbounds i32, ptr %136, i64 6
  store i32 %or116, ptr %arrayidx117, align 4
  %137 = load ptr, ptr %out.addr, align 8
  %arrayidx118 = getelementptr inbounds i32, ptr %137, i64 6
  %138 = load i32, ptr %arrayidx118, align 4
  %139 = load ptr, ptr %out.addr, align 8
  %arrayidx119 = getelementptr inbounds i32, ptr %139, i64 2
  %140 = load i32, ptr %arrayidx119, align 4
  %add120 = add i32 %140, %138
  store i32 %add120, ptr %arrayidx119, align 4
  %141 = load ptr, ptr %out.addr, align 8
  %arrayidx121 = getelementptr inbounds i32, ptr %141, i64 2
  %142 = load i32, ptr %arrayidx121, align 4
  %143 = load ptr, ptr %out.addr, align 8
  %arrayidx122 = getelementptr inbounds i32, ptr %143, i64 14
  %144 = load i32, ptr %arrayidx122, align 4
  %xor123 = xor i32 %144, %142
  store i32 %xor123, ptr %arrayidx122, align 4
  %145 = load ptr, ptr %out.addr, align 8
  %arrayidx124 = getelementptr inbounds i32, ptr %145, i64 14
  %146 = load i32, ptr %arrayidx124, align 4
  %shl125 = shl i32 %146, 8
  %147 = load ptr, ptr %out.addr, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %147, i64 14
  %148 = load i32, ptr %arrayidx126, align 4
  %shr127 = lshr i32 %148, 24
  %or128 = or i32 %shl125, %shr127
  %149 = load ptr, ptr %out.addr, align 8
  %arrayidx129 = getelementptr inbounds i32, ptr %149, i64 14
  store i32 %or128, ptr %arrayidx129, align 4
  %150 = load ptr, ptr %out.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, ptr %150, i64 14
  %151 = load i32, ptr %arrayidx130, align 4
  %152 = load ptr, ptr %out.addr, align 8
  %arrayidx131 = getelementptr inbounds i32, ptr %152, i64 10
  %153 = load i32, ptr %arrayidx131, align 4
  %add132 = add i32 %153, %151
  store i32 %add132, ptr %arrayidx131, align 4
  %154 = load ptr, ptr %out.addr, align 8
  %arrayidx133 = getelementptr inbounds i32, ptr %154, i64 10
  %155 = load i32, ptr %arrayidx133, align 4
  %156 = load ptr, ptr %out.addr, align 8
  %arrayidx134 = getelementptr inbounds i32, ptr %156, i64 6
  %157 = load i32, ptr %arrayidx134, align 4
  %xor135 = xor i32 %157, %155
  store i32 %xor135, ptr %arrayidx134, align 4
  %158 = load ptr, ptr %out.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, ptr %158, i64 6
  %159 = load i32, ptr %arrayidx136, align 4
  %shl137 = shl i32 %159, 7
  %160 = load ptr, ptr %out.addr, align 8
  %arrayidx138 = getelementptr inbounds i32, ptr %160, i64 6
  %161 = load i32, ptr %arrayidx138, align 4
  %shr139 = lshr i32 %161, 25
  %or140 = or i32 %shl137, %shr139
  %162 = load ptr, ptr %out.addr, align 8
  %arrayidx141 = getelementptr inbounds i32, ptr %162, i64 6
  store i32 %or140, ptr %arrayidx141, align 4
  %163 = load ptr, ptr %out.addr, align 8
  %arrayidx142 = getelementptr inbounds i32, ptr %163, i64 7
  %164 = load i32, ptr %arrayidx142, align 4
  %165 = load ptr, ptr %out.addr, align 8
  %arrayidx143 = getelementptr inbounds i32, ptr %165, i64 3
  %166 = load i32, ptr %arrayidx143, align 4
  %add144 = add i32 %166, %164
  store i32 %add144, ptr %arrayidx143, align 4
  %167 = load ptr, ptr %out.addr, align 8
  %arrayidx145 = getelementptr inbounds i32, ptr %167, i64 3
  %168 = load i32, ptr %arrayidx145, align 4
  %169 = load ptr, ptr %out.addr, align 8
  %arrayidx146 = getelementptr inbounds i32, ptr %169, i64 15
  %170 = load i32, ptr %arrayidx146, align 4
  %xor147 = xor i32 %170, %168
  store i32 %xor147, ptr %arrayidx146, align 4
  %171 = load ptr, ptr %out.addr, align 8
  %arrayidx148 = getelementptr inbounds i32, ptr %171, i64 15
  %172 = load i32, ptr %arrayidx148, align 4
  %shl149 = shl i32 %172, 16
  %173 = load ptr, ptr %out.addr, align 8
  %arrayidx150 = getelementptr inbounds i32, ptr %173, i64 15
  %174 = load i32, ptr %arrayidx150, align 4
  %shr151 = lshr i32 %174, 16
  %or152 = or i32 %shl149, %shr151
  %175 = load ptr, ptr %out.addr, align 8
  %arrayidx153 = getelementptr inbounds i32, ptr %175, i64 15
  store i32 %or152, ptr %arrayidx153, align 4
  %176 = load ptr, ptr %out.addr, align 8
  %arrayidx154 = getelementptr inbounds i32, ptr %176, i64 15
  %177 = load i32, ptr %arrayidx154, align 4
  %178 = load ptr, ptr %out.addr, align 8
  %arrayidx155 = getelementptr inbounds i32, ptr %178, i64 11
  %179 = load i32, ptr %arrayidx155, align 4
  %add156 = add i32 %179, %177
  store i32 %add156, ptr %arrayidx155, align 4
  %180 = load ptr, ptr %out.addr, align 8
  %arrayidx157 = getelementptr inbounds i32, ptr %180, i64 11
  %181 = load i32, ptr %arrayidx157, align 4
  %182 = load ptr, ptr %out.addr, align 8
  %arrayidx158 = getelementptr inbounds i32, ptr %182, i64 7
  %183 = load i32, ptr %arrayidx158, align 4
  %xor159 = xor i32 %183, %181
  store i32 %xor159, ptr %arrayidx158, align 4
  %184 = load ptr, ptr %out.addr, align 8
  %arrayidx160 = getelementptr inbounds i32, ptr %184, i64 7
  %185 = load i32, ptr %arrayidx160, align 4
  %shl161 = shl i32 %185, 12
  %186 = load ptr, ptr %out.addr, align 8
  %arrayidx162 = getelementptr inbounds i32, ptr %186, i64 7
  %187 = load i32, ptr %arrayidx162, align 4
  %shr163 = lshr i32 %187, 20
  %or164 = or i32 %shl161, %shr163
  %188 = load ptr, ptr %out.addr, align 8
  %arrayidx165 = getelementptr inbounds i32, ptr %188, i64 7
  store i32 %or164, ptr %arrayidx165, align 4
  %189 = load ptr, ptr %out.addr, align 8
  %arrayidx166 = getelementptr inbounds i32, ptr %189, i64 7
  %190 = load i32, ptr %arrayidx166, align 4
  %191 = load ptr, ptr %out.addr, align 8
  %arrayidx167 = getelementptr inbounds i32, ptr %191, i64 3
  %192 = load i32, ptr %arrayidx167, align 4
  %add168 = add i32 %192, %190
  store i32 %add168, ptr %arrayidx167, align 4
  %193 = load ptr, ptr %out.addr, align 8
  %arrayidx169 = getelementptr inbounds i32, ptr %193, i64 3
  %194 = load i32, ptr %arrayidx169, align 4
  %195 = load ptr, ptr %out.addr, align 8
  %arrayidx170 = getelementptr inbounds i32, ptr %195, i64 15
  %196 = load i32, ptr %arrayidx170, align 4
  %xor171 = xor i32 %196, %194
  store i32 %xor171, ptr %arrayidx170, align 4
  %197 = load ptr, ptr %out.addr, align 8
  %arrayidx172 = getelementptr inbounds i32, ptr %197, i64 15
  %198 = load i32, ptr %arrayidx172, align 4
  %shl173 = shl i32 %198, 8
  %199 = load ptr, ptr %out.addr, align 8
  %arrayidx174 = getelementptr inbounds i32, ptr %199, i64 15
  %200 = load i32, ptr %arrayidx174, align 4
  %shr175 = lshr i32 %200, 24
  %or176 = or i32 %shl173, %shr175
  %201 = load ptr, ptr %out.addr, align 8
  %arrayidx177 = getelementptr inbounds i32, ptr %201, i64 15
  store i32 %or176, ptr %arrayidx177, align 4
  %202 = load ptr, ptr %out.addr, align 8
  %arrayidx178 = getelementptr inbounds i32, ptr %202, i64 15
  %203 = load i32, ptr %arrayidx178, align 4
  %204 = load ptr, ptr %out.addr, align 8
  %arrayidx179 = getelementptr inbounds i32, ptr %204, i64 11
  %205 = load i32, ptr %arrayidx179, align 4
  %add180 = add i32 %205, %203
  store i32 %add180, ptr %arrayidx179, align 4
  %206 = load ptr, ptr %out.addr, align 8
  %arrayidx181 = getelementptr inbounds i32, ptr %206, i64 11
  %207 = load i32, ptr %arrayidx181, align 4
  %208 = load ptr, ptr %out.addr, align 8
  %arrayidx182 = getelementptr inbounds i32, ptr %208, i64 7
  %209 = load i32, ptr %arrayidx182, align 4
  %xor183 = xor i32 %209, %207
  store i32 %xor183, ptr %arrayidx182, align 4
  %210 = load ptr, ptr %out.addr, align 8
  %arrayidx184 = getelementptr inbounds i32, ptr %210, i64 7
  %211 = load i32, ptr %arrayidx184, align 4
  %shl185 = shl i32 %211, 7
  %212 = load ptr, ptr %out.addr, align 8
  %arrayidx186 = getelementptr inbounds i32, ptr %212, i64 7
  %213 = load i32, ptr %arrayidx186, align 4
  %shr187 = lshr i32 %213, 25
  %or188 = or i32 %shl185, %shr187
  %214 = load ptr, ptr %out.addr, align 8
  %arrayidx189 = getelementptr inbounds i32, ptr %214, i64 7
  store i32 %or188, ptr %arrayidx189, align 4
  %215 = load ptr, ptr %out.addr, align 8
  %arrayidx190 = getelementptr inbounds i32, ptr %215, i64 5
  %216 = load i32, ptr %arrayidx190, align 4
  %217 = load ptr, ptr %out.addr, align 8
  %arrayidx191 = getelementptr inbounds i32, ptr %217, i64 0
  %218 = load i32, ptr %arrayidx191, align 4
  %add192 = add i32 %218, %216
  store i32 %add192, ptr %arrayidx191, align 4
  %219 = load ptr, ptr %out.addr, align 8
  %arrayidx193 = getelementptr inbounds i32, ptr %219, i64 0
  %220 = load i32, ptr %arrayidx193, align 4
  %221 = load ptr, ptr %out.addr, align 8
  %arrayidx194 = getelementptr inbounds i32, ptr %221, i64 15
  %222 = load i32, ptr %arrayidx194, align 4
  %xor195 = xor i32 %222, %220
  store i32 %xor195, ptr %arrayidx194, align 4
  %223 = load ptr, ptr %out.addr, align 8
  %arrayidx196 = getelementptr inbounds i32, ptr %223, i64 15
  %224 = load i32, ptr %arrayidx196, align 4
  %shl197 = shl i32 %224, 16
  %225 = load ptr, ptr %out.addr, align 8
  %arrayidx198 = getelementptr inbounds i32, ptr %225, i64 15
  %226 = load i32, ptr %arrayidx198, align 4
  %shr199 = lshr i32 %226, 16
  %or200 = or i32 %shl197, %shr199
  %227 = load ptr, ptr %out.addr, align 8
  %arrayidx201 = getelementptr inbounds i32, ptr %227, i64 15
  store i32 %or200, ptr %arrayidx201, align 4
  %228 = load ptr, ptr %out.addr, align 8
  %arrayidx202 = getelementptr inbounds i32, ptr %228, i64 15
  %229 = load i32, ptr %arrayidx202, align 4
  %230 = load ptr, ptr %out.addr, align 8
  %arrayidx203 = getelementptr inbounds i32, ptr %230, i64 10
  %231 = load i32, ptr %arrayidx203, align 4
  %add204 = add i32 %231, %229
  store i32 %add204, ptr %arrayidx203, align 4
  %232 = load ptr, ptr %out.addr, align 8
  %arrayidx205 = getelementptr inbounds i32, ptr %232, i64 10
  %233 = load i32, ptr %arrayidx205, align 4
  %234 = load ptr, ptr %out.addr, align 8
  %arrayidx206 = getelementptr inbounds i32, ptr %234, i64 5
  %235 = load i32, ptr %arrayidx206, align 4
  %xor207 = xor i32 %235, %233
  store i32 %xor207, ptr %arrayidx206, align 4
  %236 = load ptr, ptr %out.addr, align 8
  %arrayidx208 = getelementptr inbounds i32, ptr %236, i64 5
  %237 = load i32, ptr %arrayidx208, align 4
  %shl209 = shl i32 %237, 12
  %238 = load ptr, ptr %out.addr, align 8
  %arrayidx210 = getelementptr inbounds i32, ptr %238, i64 5
  %239 = load i32, ptr %arrayidx210, align 4
  %shr211 = lshr i32 %239, 20
  %or212 = or i32 %shl209, %shr211
  %240 = load ptr, ptr %out.addr, align 8
  %arrayidx213 = getelementptr inbounds i32, ptr %240, i64 5
  store i32 %or212, ptr %arrayidx213, align 4
  %241 = load ptr, ptr %out.addr, align 8
  %arrayidx214 = getelementptr inbounds i32, ptr %241, i64 5
  %242 = load i32, ptr %arrayidx214, align 4
  %243 = load ptr, ptr %out.addr, align 8
  %arrayidx215 = getelementptr inbounds i32, ptr %243, i64 0
  %244 = load i32, ptr %arrayidx215, align 4
  %add216 = add i32 %244, %242
  store i32 %add216, ptr %arrayidx215, align 4
  %245 = load ptr, ptr %out.addr, align 8
  %arrayidx217 = getelementptr inbounds i32, ptr %245, i64 0
  %246 = load i32, ptr %arrayidx217, align 4
  %247 = load ptr, ptr %out.addr, align 8
  %arrayidx218 = getelementptr inbounds i32, ptr %247, i64 15
  %248 = load i32, ptr %arrayidx218, align 4
  %xor219 = xor i32 %248, %246
  store i32 %xor219, ptr %arrayidx218, align 4
  %249 = load ptr, ptr %out.addr, align 8
  %arrayidx220 = getelementptr inbounds i32, ptr %249, i64 15
  %250 = load i32, ptr %arrayidx220, align 4
  %shl221 = shl i32 %250, 8
  %251 = load ptr, ptr %out.addr, align 8
  %arrayidx222 = getelementptr inbounds i32, ptr %251, i64 15
  %252 = load i32, ptr %arrayidx222, align 4
  %shr223 = lshr i32 %252, 24
  %or224 = or i32 %shl221, %shr223
  %253 = load ptr, ptr %out.addr, align 8
  %arrayidx225 = getelementptr inbounds i32, ptr %253, i64 15
  store i32 %or224, ptr %arrayidx225, align 4
  %254 = load ptr, ptr %out.addr, align 8
  %arrayidx226 = getelementptr inbounds i32, ptr %254, i64 15
  %255 = load i32, ptr %arrayidx226, align 4
  %256 = load ptr, ptr %out.addr, align 8
  %arrayidx227 = getelementptr inbounds i32, ptr %256, i64 10
  %257 = load i32, ptr %arrayidx227, align 4
  %add228 = add i32 %257, %255
  store i32 %add228, ptr %arrayidx227, align 4
  %258 = load ptr, ptr %out.addr, align 8
  %arrayidx229 = getelementptr inbounds i32, ptr %258, i64 10
  %259 = load i32, ptr %arrayidx229, align 4
  %260 = load ptr, ptr %out.addr, align 8
  %arrayidx230 = getelementptr inbounds i32, ptr %260, i64 5
  %261 = load i32, ptr %arrayidx230, align 4
  %xor231 = xor i32 %261, %259
  store i32 %xor231, ptr %arrayidx230, align 4
  %262 = load ptr, ptr %out.addr, align 8
  %arrayidx232 = getelementptr inbounds i32, ptr %262, i64 5
  %263 = load i32, ptr %arrayidx232, align 4
  %shl233 = shl i32 %263, 7
  %264 = load ptr, ptr %out.addr, align 8
  %arrayidx234 = getelementptr inbounds i32, ptr %264, i64 5
  %265 = load i32, ptr %arrayidx234, align 4
  %shr235 = lshr i32 %265, 25
  %or236 = or i32 %shl233, %shr235
  %266 = load ptr, ptr %out.addr, align 8
  %arrayidx237 = getelementptr inbounds i32, ptr %266, i64 5
  store i32 %or236, ptr %arrayidx237, align 4
  %267 = load ptr, ptr %out.addr, align 8
  %arrayidx238 = getelementptr inbounds i32, ptr %267, i64 6
  %268 = load i32, ptr %arrayidx238, align 4
  %269 = load ptr, ptr %out.addr, align 8
  %arrayidx239 = getelementptr inbounds i32, ptr %269, i64 1
  %270 = load i32, ptr %arrayidx239, align 4
  %add240 = add i32 %270, %268
  store i32 %add240, ptr %arrayidx239, align 4
  %271 = load ptr, ptr %out.addr, align 8
  %arrayidx241 = getelementptr inbounds i32, ptr %271, i64 1
  %272 = load i32, ptr %arrayidx241, align 4
  %273 = load ptr, ptr %out.addr, align 8
  %arrayidx242 = getelementptr inbounds i32, ptr %273, i64 12
  %274 = load i32, ptr %arrayidx242, align 4
  %xor243 = xor i32 %274, %272
  store i32 %xor243, ptr %arrayidx242, align 4
  %275 = load ptr, ptr %out.addr, align 8
  %arrayidx244 = getelementptr inbounds i32, ptr %275, i64 12
  %276 = load i32, ptr %arrayidx244, align 4
  %shl245 = shl i32 %276, 16
  %277 = load ptr, ptr %out.addr, align 8
  %arrayidx246 = getelementptr inbounds i32, ptr %277, i64 12
  %278 = load i32, ptr %arrayidx246, align 4
  %shr247 = lshr i32 %278, 16
  %or248 = or i32 %shl245, %shr247
  %279 = load ptr, ptr %out.addr, align 8
  %arrayidx249 = getelementptr inbounds i32, ptr %279, i64 12
  store i32 %or248, ptr %arrayidx249, align 4
  %280 = load ptr, ptr %out.addr, align 8
  %arrayidx250 = getelementptr inbounds i32, ptr %280, i64 12
  %281 = load i32, ptr %arrayidx250, align 4
  %282 = load ptr, ptr %out.addr, align 8
  %arrayidx251 = getelementptr inbounds i32, ptr %282, i64 11
  %283 = load i32, ptr %arrayidx251, align 4
  %add252 = add i32 %283, %281
  store i32 %add252, ptr %arrayidx251, align 4
  %284 = load ptr, ptr %out.addr, align 8
  %arrayidx253 = getelementptr inbounds i32, ptr %284, i64 11
  %285 = load i32, ptr %arrayidx253, align 4
  %286 = load ptr, ptr %out.addr, align 8
  %arrayidx254 = getelementptr inbounds i32, ptr %286, i64 6
  %287 = load i32, ptr %arrayidx254, align 4
  %xor255 = xor i32 %287, %285
  store i32 %xor255, ptr %arrayidx254, align 4
  %288 = load ptr, ptr %out.addr, align 8
  %arrayidx256 = getelementptr inbounds i32, ptr %288, i64 6
  %289 = load i32, ptr %arrayidx256, align 4
  %shl257 = shl i32 %289, 12
  %290 = load ptr, ptr %out.addr, align 8
  %arrayidx258 = getelementptr inbounds i32, ptr %290, i64 6
  %291 = load i32, ptr %arrayidx258, align 4
  %shr259 = lshr i32 %291, 20
  %or260 = or i32 %shl257, %shr259
  %292 = load ptr, ptr %out.addr, align 8
  %arrayidx261 = getelementptr inbounds i32, ptr %292, i64 6
  store i32 %or260, ptr %arrayidx261, align 4
  %293 = load ptr, ptr %out.addr, align 8
  %arrayidx262 = getelementptr inbounds i32, ptr %293, i64 6
  %294 = load i32, ptr %arrayidx262, align 4
  %295 = load ptr, ptr %out.addr, align 8
  %arrayidx263 = getelementptr inbounds i32, ptr %295, i64 1
  %296 = load i32, ptr %arrayidx263, align 4
  %add264 = add i32 %296, %294
  store i32 %add264, ptr %arrayidx263, align 4
  %297 = load ptr, ptr %out.addr, align 8
  %arrayidx265 = getelementptr inbounds i32, ptr %297, i64 1
  %298 = load i32, ptr %arrayidx265, align 4
  %299 = load ptr, ptr %out.addr, align 8
  %arrayidx266 = getelementptr inbounds i32, ptr %299, i64 12
  %300 = load i32, ptr %arrayidx266, align 4
  %xor267 = xor i32 %300, %298
  store i32 %xor267, ptr %arrayidx266, align 4
  %301 = load ptr, ptr %out.addr, align 8
  %arrayidx268 = getelementptr inbounds i32, ptr %301, i64 12
  %302 = load i32, ptr %arrayidx268, align 4
  %shl269 = shl i32 %302, 8
  %303 = load ptr, ptr %out.addr, align 8
  %arrayidx270 = getelementptr inbounds i32, ptr %303, i64 12
  %304 = load i32, ptr %arrayidx270, align 4
  %shr271 = lshr i32 %304, 24
  %or272 = or i32 %shl269, %shr271
  %305 = load ptr, ptr %out.addr, align 8
  %arrayidx273 = getelementptr inbounds i32, ptr %305, i64 12
  store i32 %or272, ptr %arrayidx273, align 4
  %306 = load ptr, ptr %out.addr, align 8
  %arrayidx274 = getelementptr inbounds i32, ptr %306, i64 12
  %307 = load i32, ptr %arrayidx274, align 4
  %308 = load ptr, ptr %out.addr, align 8
  %arrayidx275 = getelementptr inbounds i32, ptr %308, i64 11
  %309 = load i32, ptr %arrayidx275, align 4
  %add276 = add i32 %309, %307
  store i32 %add276, ptr %arrayidx275, align 4
  %310 = load ptr, ptr %out.addr, align 8
  %arrayidx277 = getelementptr inbounds i32, ptr %310, i64 11
  %311 = load i32, ptr %arrayidx277, align 4
  %312 = load ptr, ptr %out.addr, align 8
  %arrayidx278 = getelementptr inbounds i32, ptr %312, i64 6
  %313 = load i32, ptr %arrayidx278, align 4
  %xor279 = xor i32 %313, %311
  store i32 %xor279, ptr %arrayidx278, align 4
  %314 = load ptr, ptr %out.addr, align 8
  %arrayidx280 = getelementptr inbounds i32, ptr %314, i64 6
  %315 = load i32, ptr %arrayidx280, align 4
  %shl281 = shl i32 %315, 7
  %316 = load ptr, ptr %out.addr, align 8
  %arrayidx282 = getelementptr inbounds i32, ptr %316, i64 6
  %317 = load i32, ptr %arrayidx282, align 4
  %shr283 = lshr i32 %317, 25
  %or284 = or i32 %shl281, %shr283
  %318 = load ptr, ptr %out.addr, align 8
  %arrayidx285 = getelementptr inbounds i32, ptr %318, i64 6
  store i32 %or284, ptr %arrayidx285, align 4
  %319 = load ptr, ptr %out.addr, align 8
  %arrayidx286 = getelementptr inbounds i32, ptr %319, i64 7
  %320 = load i32, ptr %arrayidx286, align 4
  %321 = load ptr, ptr %out.addr, align 8
  %arrayidx287 = getelementptr inbounds i32, ptr %321, i64 2
  %322 = load i32, ptr %arrayidx287, align 4
  %add288 = add i32 %322, %320
  store i32 %add288, ptr %arrayidx287, align 4
  %323 = load ptr, ptr %out.addr, align 8
  %arrayidx289 = getelementptr inbounds i32, ptr %323, i64 2
  %324 = load i32, ptr %arrayidx289, align 4
  %325 = load ptr, ptr %out.addr, align 8
  %arrayidx290 = getelementptr inbounds i32, ptr %325, i64 13
  %326 = load i32, ptr %arrayidx290, align 4
  %xor291 = xor i32 %326, %324
  store i32 %xor291, ptr %arrayidx290, align 4
  %327 = load ptr, ptr %out.addr, align 8
  %arrayidx292 = getelementptr inbounds i32, ptr %327, i64 13
  %328 = load i32, ptr %arrayidx292, align 4
  %shl293 = shl i32 %328, 16
  %329 = load ptr, ptr %out.addr, align 8
  %arrayidx294 = getelementptr inbounds i32, ptr %329, i64 13
  %330 = load i32, ptr %arrayidx294, align 4
  %shr295 = lshr i32 %330, 16
  %or296 = or i32 %shl293, %shr295
  %331 = load ptr, ptr %out.addr, align 8
  %arrayidx297 = getelementptr inbounds i32, ptr %331, i64 13
  store i32 %or296, ptr %arrayidx297, align 4
  %332 = load ptr, ptr %out.addr, align 8
  %arrayidx298 = getelementptr inbounds i32, ptr %332, i64 13
  %333 = load i32, ptr %arrayidx298, align 4
  %334 = load ptr, ptr %out.addr, align 8
  %arrayidx299 = getelementptr inbounds i32, ptr %334, i64 8
  %335 = load i32, ptr %arrayidx299, align 4
  %add300 = add i32 %335, %333
  store i32 %add300, ptr %arrayidx299, align 4
  %336 = load ptr, ptr %out.addr, align 8
  %arrayidx301 = getelementptr inbounds i32, ptr %336, i64 8
  %337 = load i32, ptr %arrayidx301, align 4
  %338 = load ptr, ptr %out.addr, align 8
  %arrayidx302 = getelementptr inbounds i32, ptr %338, i64 7
  %339 = load i32, ptr %arrayidx302, align 4
  %xor303 = xor i32 %339, %337
  store i32 %xor303, ptr %arrayidx302, align 4
  %340 = load ptr, ptr %out.addr, align 8
  %arrayidx304 = getelementptr inbounds i32, ptr %340, i64 7
  %341 = load i32, ptr %arrayidx304, align 4
  %shl305 = shl i32 %341, 12
  %342 = load ptr, ptr %out.addr, align 8
  %arrayidx306 = getelementptr inbounds i32, ptr %342, i64 7
  %343 = load i32, ptr %arrayidx306, align 4
  %shr307 = lshr i32 %343, 20
  %or308 = or i32 %shl305, %shr307
  %344 = load ptr, ptr %out.addr, align 8
  %arrayidx309 = getelementptr inbounds i32, ptr %344, i64 7
  store i32 %or308, ptr %arrayidx309, align 4
  %345 = load ptr, ptr %out.addr, align 8
  %arrayidx310 = getelementptr inbounds i32, ptr %345, i64 7
  %346 = load i32, ptr %arrayidx310, align 4
  %347 = load ptr, ptr %out.addr, align 8
  %arrayidx311 = getelementptr inbounds i32, ptr %347, i64 2
  %348 = load i32, ptr %arrayidx311, align 4
  %add312 = add i32 %348, %346
  store i32 %add312, ptr %arrayidx311, align 4
  %349 = load ptr, ptr %out.addr, align 8
  %arrayidx313 = getelementptr inbounds i32, ptr %349, i64 2
  %350 = load i32, ptr %arrayidx313, align 4
  %351 = load ptr, ptr %out.addr, align 8
  %arrayidx314 = getelementptr inbounds i32, ptr %351, i64 13
  %352 = load i32, ptr %arrayidx314, align 4
  %xor315 = xor i32 %352, %350
  store i32 %xor315, ptr %arrayidx314, align 4
  %353 = load ptr, ptr %out.addr, align 8
  %arrayidx316 = getelementptr inbounds i32, ptr %353, i64 13
  %354 = load i32, ptr %arrayidx316, align 4
  %shl317 = shl i32 %354, 8
  %355 = load ptr, ptr %out.addr, align 8
  %arrayidx318 = getelementptr inbounds i32, ptr %355, i64 13
  %356 = load i32, ptr %arrayidx318, align 4
  %shr319 = lshr i32 %356, 24
  %or320 = or i32 %shl317, %shr319
  %357 = load ptr, ptr %out.addr, align 8
  %arrayidx321 = getelementptr inbounds i32, ptr %357, i64 13
  store i32 %or320, ptr %arrayidx321, align 4
  %358 = load ptr, ptr %out.addr, align 8
  %arrayidx322 = getelementptr inbounds i32, ptr %358, i64 13
  %359 = load i32, ptr %arrayidx322, align 4
  %360 = load ptr, ptr %out.addr, align 8
  %arrayidx323 = getelementptr inbounds i32, ptr %360, i64 8
  %361 = load i32, ptr %arrayidx323, align 4
  %add324 = add i32 %361, %359
  store i32 %add324, ptr %arrayidx323, align 4
  %362 = load ptr, ptr %out.addr, align 8
  %arrayidx325 = getelementptr inbounds i32, ptr %362, i64 8
  %363 = load i32, ptr %arrayidx325, align 4
  %364 = load ptr, ptr %out.addr, align 8
  %arrayidx326 = getelementptr inbounds i32, ptr %364, i64 7
  %365 = load i32, ptr %arrayidx326, align 4
  %xor327 = xor i32 %365, %363
  store i32 %xor327, ptr %arrayidx326, align 4
  %366 = load ptr, ptr %out.addr, align 8
  %arrayidx328 = getelementptr inbounds i32, ptr %366, i64 7
  %367 = load i32, ptr %arrayidx328, align 4
  %shl329 = shl i32 %367, 7
  %368 = load ptr, ptr %out.addr, align 8
  %arrayidx330 = getelementptr inbounds i32, ptr %368, i64 7
  %369 = load i32, ptr %arrayidx330, align 4
  %shr331 = lshr i32 %369, 25
  %or332 = or i32 %shl329, %shr331
  %370 = load ptr, ptr %out.addr, align 8
  %arrayidx333 = getelementptr inbounds i32, ptr %370, i64 7
  store i32 %or332, ptr %arrayidx333, align 4
  %371 = load ptr, ptr %out.addr, align 8
  %arrayidx334 = getelementptr inbounds i32, ptr %371, i64 4
  %372 = load i32, ptr %arrayidx334, align 4
  %373 = load ptr, ptr %out.addr, align 8
  %arrayidx335 = getelementptr inbounds i32, ptr %373, i64 3
  %374 = load i32, ptr %arrayidx335, align 4
  %add336 = add i32 %374, %372
  store i32 %add336, ptr %arrayidx335, align 4
  %375 = load ptr, ptr %out.addr, align 8
  %arrayidx337 = getelementptr inbounds i32, ptr %375, i64 3
  %376 = load i32, ptr %arrayidx337, align 4
  %377 = load ptr, ptr %out.addr, align 8
  %arrayidx338 = getelementptr inbounds i32, ptr %377, i64 14
  %378 = load i32, ptr %arrayidx338, align 4
  %xor339 = xor i32 %378, %376
  store i32 %xor339, ptr %arrayidx338, align 4
  %379 = load ptr, ptr %out.addr, align 8
  %arrayidx340 = getelementptr inbounds i32, ptr %379, i64 14
  %380 = load i32, ptr %arrayidx340, align 4
  %shl341 = shl i32 %380, 16
  %381 = load ptr, ptr %out.addr, align 8
  %arrayidx342 = getelementptr inbounds i32, ptr %381, i64 14
  %382 = load i32, ptr %arrayidx342, align 4
  %shr343 = lshr i32 %382, 16
  %or344 = or i32 %shl341, %shr343
  %383 = load ptr, ptr %out.addr, align 8
  %arrayidx345 = getelementptr inbounds i32, ptr %383, i64 14
  store i32 %or344, ptr %arrayidx345, align 4
  %384 = load ptr, ptr %out.addr, align 8
  %arrayidx346 = getelementptr inbounds i32, ptr %384, i64 14
  %385 = load i32, ptr %arrayidx346, align 4
  %386 = load ptr, ptr %out.addr, align 8
  %arrayidx347 = getelementptr inbounds i32, ptr %386, i64 9
  %387 = load i32, ptr %arrayidx347, align 4
  %add348 = add i32 %387, %385
  store i32 %add348, ptr %arrayidx347, align 4
  %388 = load ptr, ptr %out.addr, align 8
  %arrayidx349 = getelementptr inbounds i32, ptr %388, i64 9
  %389 = load i32, ptr %arrayidx349, align 4
  %390 = load ptr, ptr %out.addr, align 8
  %arrayidx350 = getelementptr inbounds i32, ptr %390, i64 4
  %391 = load i32, ptr %arrayidx350, align 4
  %xor351 = xor i32 %391, %389
  store i32 %xor351, ptr %arrayidx350, align 4
  %392 = load ptr, ptr %out.addr, align 8
  %arrayidx352 = getelementptr inbounds i32, ptr %392, i64 4
  %393 = load i32, ptr %arrayidx352, align 4
  %shl353 = shl i32 %393, 12
  %394 = load ptr, ptr %out.addr, align 8
  %arrayidx354 = getelementptr inbounds i32, ptr %394, i64 4
  %395 = load i32, ptr %arrayidx354, align 4
  %shr355 = lshr i32 %395, 20
  %or356 = or i32 %shl353, %shr355
  %396 = load ptr, ptr %out.addr, align 8
  %arrayidx357 = getelementptr inbounds i32, ptr %396, i64 4
  store i32 %or356, ptr %arrayidx357, align 4
  %397 = load ptr, ptr %out.addr, align 8
  %arrayidx358 = getelementptr inbounds i32, ptr %397, i64 4
  %398 = load i32, ptr %arrayidx358, align 4
  %399 = load ptr, ptr %out.addr, align 8
  %arrayidx359 = getelementptr inbounds i32, ptr %399, i64 3
  %400 = load i32, ptr %arrayidx359, align 4
  %add360 = add i32 %400, %398
  store i32 %add360, ptr %arrayidx359, align 4
  %401 = load ptr, ptr %out.addr, align 8
  %arrayidx361 = getelementptr inbounds i32, ptr %401, i64 3
  %402 = load i32, ptr %arrayidx361, align 4
  %403 = load ptr, ptr %out.addr, align 8
  %arrayidx362 = getelementptr inbounds i32, ptr %403, i64 14
  %404 = load i32, ptr %arrayidx362, align 4
  %xor363 = xor i32 %404, %402
  store i32 %xor363, ptr %arrayidx362, align 4
  %405 = load ptr, ptr %out.addr, align 8
  %arrayidx364 = getelementptr inbounds i32, ptr %405, i64 14
  %406 = load i32, ptr %arrayidx364, align 4
  %shl365 = shl i32 %406, 8
  %407 = load ptr, ptr %out.addr, align 8
  %arrayidx366 = getelementptr inbounds i32, ptr %407, i64 14
  %408 = load i32, ptr %arrayidx366, align 4
  %shr367 = lshr i32 %408, 24
  %or368 = or i32 %shl365, %shr367
  %409 = load ptr, ptr %out.addr, align 8
  %arrayidx369 = getelementptr inbounds i32, ptr %409, i64 14
  store i32 %or368, ptr %arrayidx369, align 4
  %410 = load ptr, ptr %out.addr, align 8
  %arrayidx370 = getelementptr inbounds i32, ptr %410, i64 14
  %411 = load i32, ptr %arrayidx370, align 4
  %412 = load ptr, ptr %out.addr, align 8
  %arrayidx371 = getelementptr inbounds i32, ptr %412, i64 9
  %413 = load i32, ptr %arrayidx371, align 4
  %add372 = add i32 %413, %411
  store i32 %add372, ptr %arrayidx371, align 4
  %414 = load ptr, ptr %out.addr, align 8
  %arrayidx373 = getelementptr inbounds i32, ptr %414, i64 9
  %415 = load i32, ptr %arrayidx373, align 4
  %416 = load ptr, ptr %out.addr, align 8
  %arrayidx374 = getelementptr inbounds i32, ptr %416, i64 4
  %417 = load i32, ptr %arrayidx374, align 4
  %xor375 = xor i32 %417, %415
  store i32 %xor375, ptr %arrayidx374, align 4
  %418 = load ptr, ptr %out.addr, align 8
  %arrayidx376 = getelementptr inbounds i32, ptr %418, i64 4
  %419 = load i32, ptr %arrayidx376, align 4
  %shl377 = shl i32 %419, 7
  %420 = load ptr, ptr %out.addr, align 8
  %arrayidx378 = getelementptr inbounds i32, ptr %420, i64 4
  %421 = load i32, ptr %arrayidx378, align 4
  %shr379 = lshr i32 %421, 25
  %or380 = or i32 %shl377, %shr379
  %422 = load ptr, ptr %out.addr, align 8
  %arrayidx381 = getelementptr inbounds i32, ptr %422, i64 4
  store i32 %or380, ptr %arrayidx381, align 4
  %423 = load ptr, ptr %out.addr, align 8
  %arrayidx382 = getelementptr inbounds i32, ptr %423, i64 4
  %424 = load i32, ptr %arrayidx382, align 4
  %425 = load ptr, ptr %out.addr, align 8
  %arrayidx383 = getelementptr inbounds i32, ptr %425, i64 0
  %426 = load i32, ptr %arrayidx383, align 4
  %add384 = add i32 %426, %424
  store i32 %add384, ptr %arrayidx383, align 4
  %427 = load ptr, ptr %out.addr, align 8
  %arrayidx385 = getelementptr inbounds i32, ptr %427, i64 0
  %428 = load i32, ptr %arrayidx385, align 4
  %429 = load ptr, ptr %out.addr, align 8
  %arrayidx386 = getelementptr inbounds i32, ptr %429, i64 12
  %430 = load i32, ptr %arrayidx386, align 4
  %xor387 = xor i32 %430, %428
  store i32 %xor387, ptr %arrayidx386, align 4
  %431 = load ptr, ptr %out.addr, align 8
  %arrayidx388 = getelementptr inbounds i32, ptr %431, i64 12
  %432 = load i32, ptr %arrayidx388, align 4
  %shl389 = shl i32 %432, 16
  %433 = load ptr, ptr %out.addr, align 8
  %arrayidx390 = getelementptr inbounds i32, ptr %433, i64 12
  %434 = load i32, ptr %arrayidx390, align 4
  %shr391 = lshr i32 %434, 16
  %or392 = or i32 %shl389, %shr391
  %435 = load ptr, ptr %out.addr, align 8
  %arrayidx393 = getelementptr inbounds i32, ptr %435, i64 12
  store i32 %or392, ptr %arrayidx393, align 4
  %436 = load ptr, ptr %out.addr, align 8
  %arrayidx394 = getelementptr inbounds i32, ptr %436, i64 12
  %437 = load i32, ptr %arrayidx394, align 4
  %438 = load ptr, ptr %out.addr, align 8
  %arrayidx395 = getelementptr inbounds i32, ptr %438, i64 8
  %439 = load i32, ptr %arrayidx395, align 4
  %add396 = add i32 %439, %437
  store i32 %add396, ptr %arrayidx395, align 4
  %440 = load ptr, ptr %out.addr, align 8
  %arrayidx397 = getelementptr inbounds i32, ptr %440, i64 8
  %441 = load i32, ptr %arrayidx397, align 4
  %442 = load ptr, ptr %out.addr, align 8
  %arrayidx398 = getelementptr inbounds i32, ptr %442, i64 4
  %443 = load i32, ptr %arrayidx398, align 4
  %xor399 = xor i32 %443, %441
  store i32 %xor399, ptr %arrayidx398, align 4
  %444 = load ptr, ptr %out.addr, align 8
  %arrayidx400 = getelementptr inbounds i32, ptr %444, i64 4
  %445 = load i32, ptr %arrayidx400, align 4
  %shl401 = shl i32 %445, 12
  %446 = load ptr, ptr %out.addr, align 8
  %arrayidx402 = getelementptr inbounds i32, ptr %446, i64 4
  %447 = load i32, ptr %arrayidx402, align 4
  %shr403 = lshr i32 %447, 20
  %or404 = or i32 %shl401, %shr403
  %448 = load ptr, ptr %out.addr, align 8
  %arrayidx405 = getelementptr inbounds i32, ptr %448, i64 4
  store i32 %or404, ptr %arrayidx405, align 4
  %449 = load ptr, ptr %out.addr, align 8
  %arrayidx406 = getelementptr inbounds i32, ptr %449, i64 4
  %450 = load i32, ptr %arrayidx406, align 4
  %451 = load ptr, ptr %out.addr, align 8
  %arrayidx407 = getelementptr inbounds i32, ptr %451, i64 0
  %452 = load i32, ptr %arrayidx407, align 4
  %add408 = add i32 %452, %450
  store i32 %add408, ptr %arrayidx407, align 4
  %453 = load ptr, ptr %out.addr, align 8
  %arrayidx409 = getelementptr inbounds i32, ptr %453, i64 0
  %454 = load i32, ptr %arrayidx409, align 4
  %455 = load ptr, ptr %out.addr, align 8
  %arrayidx410 = getelementptr inbounds i32, ptr %455, i64 12
  %456 = load i32, ptr %arrayidx410, align 4
  %xor411 = xor i32 %456, %454
  store i32 %xor411, ptr %arrayidx410, align 4
  %457 = load ptr, ptr %out.addr, align 8
  %arrayidx412 = getelementptr inbounds i32, ptr %457, i64 12
  %458 = load i32, ptr %arrayidx412, align 4
  %shl413 = shl i32 %458, 8
  %459 = load ptr, ptr %out.addr, align 8
  %arrayidx414 = getelementptr inbounds i32, ptr %459, i64 12
  %460 = load i32, ptr %arrayidx414, align 4
  %shr415 = lshr i32 %460, 24
  %or416 = or i32 %shl413, %shr415
  %461 = load ptr, ptr %out.addr, align 8
  %arrayidx417 = getelementptr inbounds i32, ptr %461, i64 12
  store i32 %or416, ptr %arrayidx417, align 4
  %462 = load ptr, ptr %out.addr, align 8
  %arrayidx418 = getelementptr inbounds i32, ptr %462, i64 12
  %463 = load i32, ptr %arrayidx418, align 4
  %464 = load ptr, ptr %out.addr, align 8
  %arrayidx419 = getelementptr inbounds i32, ptr %464, i64 8
  %465 = load i32, ptr %arrayidx419, align 4
  %add420 = add i32 %465, %463
  store i32 %add420, ptr %arrayidx419, align 4
  %466 = load ptr, ptr %out.addr, align 8
  %arrayidx421 = getelementptr inbounds i32, ptr %466, i64 8
  %467 = load i32, ptr %arrayidx421, align 4
  %468 = load ptr, ptr %out.addr, align 8
  %arrayidx422 = getelementptr inbounds i32, ptr %468, i64 4
  %469 = load i32, ptr %arrayidx422, align 4
  %xor423 = xor i32 %469, %467
  store i32 %xor423, ptr %arrayidx422, align 4
  %470 = load ptr, ptr %out.addr, align 8
  %arrayidx424 = getelementptr inbounds i32, ptr %470, i64 4
  %471 = load i32, ptr %arrayidx424, align 4
  %shl425 = shl i32 %471, 7
  %472 = load ptr, ptr %out.addr, align 8
  %arrayidx426 = getelementptr inbounds i32, ptr %472, i64 4
  %473 = load i32, ptr %arrayidx426, align 4
  %shr427 = lshr i32 %473, 25
  %or428 = or i32 %shl425, %shr427
  %474 = load ptr, ptr %out.addr, align 8
  %arrayidx429 = getelementptr inbounds i32, ptr %474, i64 4
  store i32 %or428, ptr %arrayidx429, align 4
  %475 = load ptr, ptr %out.addr, align 8
  %arrayidx430 = getelementptr inbounds i32, ptr %475, i64 5
  %476 = load i32, ptr %arrayidx430, align 4
  %477 = load ptr, ptr %out.addr, align 8
  %arrayidx431 = getelementptr inbounds i32, ptr %477, i64 1
  %478 = load i32, ptr %arrayidx431, align 4
  %add432 = add i32 %478, %476
  store i32 %add432, ptr %arrayidx431, align 4
  %479 = load ptr, ptr %out.addr, align 8
  %arrayidx433 = getelementptr inbounds i32, ptr %479, i64 1
  %480 = load i32, ptr %arrayidx433, align 4
  %481 = load ptr, ptr %out.addr, align 8
  %arrayidx434 = getelementptr inbounds i32, ptr %481, i64 13
  %482 = load i32, ptr %arrayidx434, align 4
  %xor435 = xor i32 %482, %480
  store i32 %xor435, ptr %arrayidx434, align 4
  %483 = load ptr, ptr %out.addr, align 8
  %arrayidx436 = getelementptr inbounds i32, ptr %483, i64 13
  %484 = load i32, ptr %arrayidx436, align 4
  %shl437 = shl i32 %484, 16
  %485 = load ptr, ptr %out.addr, align 8
  %arrayidx438 = getelementptr inbounds i32, ptr %485, i64 13
  %486 = load i32, ptr %arrayidx438, align 4
  %shr439 = lshr i32 %486, 16
  %or440 = or i32 %shl437, %shr439
  %487 = load ptr, ptr %out.addr, align 8
  %arrayidx441 = getelementptr inbounds i32, ptr %487, i64 13
  store i32 %or440, ptr %arrayidx441, align 4
  %488 = load ptr, ptr %out.addr, align 8
  %arrayidx442 = getelementptr inbounds i32, ptr %488, i64 13
  %489 = load i32, ptr %arrayidx442, align 4
  %490 = load ptr, ptr %out.addr, align 8
  %arrayidx443 = getelementptr inbounds i32, ptr %490, i64 9
  %491 = load i32, ptr %arrayidx443, align 4
  %add444 = add i32 %491, %489
  store i32 %add444, ptr %arrayidx443, align 4
  %492 = load ptr, ptr %out.addr, align 8
  %arrayidx445 = getelementptr inbounds i32, ptr %492, i64 9
  %493 = load i32, ptr %arrayidx445, align 4
  %494 = load ptr, ptr %out.addr, align 8
  %arrayidx446 = getelementptr inbounds i32, ptr %494, i64 5
  %495 = load i32, ptr %arrayidx446, align 4
  %xor447 = xor i32 %495, %493
  store i32 %xor447, ptr %arrayidx446, align 4
  %496 = load ptr, ptr %out.addr, align 8
  %arrayidx448 = getelementptr inbounds i32, ptr %496, i64 5
  %497 = load i32, ptr %arrayidx448, align 4
  %shl449 = shl i32 %497, 12
  %498 = load ptr, ptr %out.addr, align 8
  %arrayidx450 = getelementptr inbounds i32, ptr %498, i64 5
  %499 = load i32, ptr %arrayidx450, align 4
  %shr451 = lshr i32 %499, 20
  %or452 = or i32 %shl449, %shr451
  %500 = load ptr, ptr %out.addr, align 8
  %arrayidx453 = getelementptr inbounds i32, ptr %500, i64 5
  store i32 %or452, ptr %arrayidx453, align 4
  %501 = load ptr, ptr %out.addr, align 8
  %arrayidx454 = getelementptr inbounds i32, ptr %501, i64 5
  %502 = load i32, ptr %arrayidx454, align 4
  %503 = load ptr, ptr %out.addr, align 8
  %arrayidx455 = getelementptr inbounds i32, ptr %503, i64 1
  %504 = load i32, ptr %arrayidx455, align 4
  %add456 = add i32 %504, %502
  store i32 %add456, ptr %arrayidx455, align 4
  %505 = load ptr, ptr %out.addr, align 8
  %arrayidx457 = getelementptr inbounds i32, ptr %505, i64 1
  %506 = load i32, ptr %arrayidx457, align 4
  %507 = load ptr, ptr %out.addr, align 8
  %arrayidx458 = getelementptr inbounds i32, ptr %507, i64 13
  %508 = load i32, ptr %arrayidx458, align 4
  %xor459 = xor i32 %508, %506
  store i32 %xor459, ptr %arrayidx458, align 4
  %509 = load ptr, ptr %out.addr, align 8
  %arrayidx460 = getelementptr inbounds i32, ptr %509, i64 13
  %510 = load i32, ptr %arrayidx460, align 4
  %shl461 = shl i32 %510, 8
  %511 = load ptr, ptr %out.addr, align 8
  %arrayidx462 = getelementptr inbounds i32, ptr %511, i64 13
  %512 = load i32, ptr %arrayidx462, align 4
  %shr463 = lshr i32 %512, 24
  %or464 = or i32 %shl461, %shr463
  %513 = load ptr, ptr %out.addr, align 8
  %arrayidx465 = getelementptr inbounds i32, ptr %513, i64 13
  store i32 %or464, ptr %arrayidx465, align 4
  %514 = load ptr, ptr %out.addr, align 8
  %arrayidx466 = getelementptr inbounds i32, ptr %514, i64 13
  %515 = load i32, ptr %arrayidx466, align 4
  %516 = load ptr, ptr %out.addr, align 8
  %arrayidx467 = getelementptr inbounds i32, ptr %516, i64 9
  %517 = load i32, ptr %arrayidx467, align 4
  %add468 = add i32 %517, %515
  store i32 %add468, ptr %arrayidx467, align 4
  %518 = load ptr, ptr %out.addr, align 8
  %arrayidx469 = getelementptr inbounds i32, ptr %518, i64 9
  %519 = load i32, ptr %arrayidx469, align 4
  %520 = load ptr, ptr %out.addr, align 8
  %arrayidx470 = getelementptr inbounds i32, ptr %520, i64 5
  %521 = load i32, ptr %arrayidx470, align 4
  %xor471 = xor i32 %521, %519
  store i32 %xor471, ptr %arrayidx470, align 4
  %522 = load ptr, ptr %out.addr, align 8
  %arrayidx472 = getelementptr inbounds i32, ptr %522, i64 5
  %523 = load i32, ptr %arrayidx472, align 4
  %shl473 = shl i32 %523, 7
  %524 = load ptr, ptr %out.addr, align 8
  %arrayidx474 = getelementptr inbounds i32, ptr %524, i64 5
  %525 = load i32, ptr %arrayidx474, align 4
  %shr475 = lshr i32 %525, 25
  %or476 = or i32 %shl473, %shr475
  %526 = load ptr, ptr %out.addr, align 8
  %arrayidx477 = getelementptr inbounds i32, ptr %526, i64 5
  store i32 %or476, ptr %arrayidx477, align 4
  %527 = load ptr, ptr %out.addr, align 8
  %arrayidx478 = getelementptr inbounds i32, ptr %527, i64 6
  %528 = load i32, ptr %arrayidx478, align 4
  %529 = load ptr, ptr %out.addr, align 8
  %arrayidx479 = getelementptr inbounds i32, ptr %529, i64 2
  %530 = load i32, ptr %arrayidx479, align 4
  %add480 = add i32 %530, %528
  store i32 %add480, ptr %arrayidx479, align 4
  %531 = load ptr, ptr %out.addr, align 8
  %arrayidx481 = getelementptr inbounds i32, ptr %531, i64 2
  %532 = load i32, ptr %arrayidx481, align 4
  %533 = load ptr, ptr %out.addr, align 8
  %arrayidx482 = getelementptr inbounds i32, ptr %533, i64 14
  %534 = load i32, ptr %arrayidx482, align 4
  %xor483 = xor i32 %534, %532
  store i32 %xor483, ptr %arrayidx482, align 4
  %535 = load ptr, ptr %out.addr, align 8
  %arrayidx484 = getelementptr inbounds i32, ptr %535, i64 14
  %536 = load i32, ptr %arrayidx484, align 4
  %shl485 = shl i32 %536, 16
  %537 = load ptr, ptr %out.addr, align 8
  %arrayidx486 = getelementptr inbounds i32, ptr %537, i64 14
  %538 = load i32, ptr %arrayidx486, align 4
  %shr487 = lshr i32 %538, 16
  %or488 = or i32 %shl485, %shr487
  %539 = load ptr, ptr %out.addr, align 8
  %arrayidx489 = getelementptr inbounds i32, ptr %539, i64 14
  store i32 %or488, ptr %arrayidx489, align 4
  %540 = load ptr, ptr %out.addr, align 8
  %arrayidx490 = getelementptr inbounds i32, ptr %540, i64 14
  %541 = load i32, ptr %arrayidx490, align 4
  %542 = load ptr, ptr %out.addr, align 8
  %arrayidx491 = getelementptr inbounds i32, ptr %542, i64 10
  %543 = load i32, ptr %arrayidx491, align 4
  %add492 = add i32 %543, %541
  store i32 %add492, ptr %arrayidx491, align 4
  %544 = load ptr, ptr %out.addr, align 8
  %arrayidx493 = getelementptr inbounds i32, ptr %544, i64 10
  %545 = load i32, ptr %arrayidx493, align 4
  %546 = load ptr, ptr %out.addr, align 8
  %arrayidx494 = getelementptr inbounds i32, ptr %546, i64 6
  %547 = load i32, ptr %arrayidx494, align 4
  %xor495 = xor i32 %547, %545
  store i32 %xor495, ptr %arrayidx494, align 4
  %548 = load ptr, ptr %out.addr, align 8
  %arrayidx496 = getelementptr inbounds i32, ptr %548, i64 6
  %549 = load i32, ptr %arrayidx496, align 4
  %shl497 = shl i32 %549, 12
  %550 = load ptr, ptr %out.addr, align 8
  %arrayidx498 = getelementptr inbounds i32, ptr %550, i64 6
  %551 = load i32, ptr %arrayidx498, align 4
  %shr499 = lshr i32 %551, 20
  %or500 = or i32 %shl497, %shr499
  %552 = load ptr, ptr %out.addr, align 8
  %arrayidx501 = getelementptr inbounds i32, ptr %552, i64 6
  store i32 %or500, ptr %arrayidx501, align 4
  %553 = load ptr, ptr %out.addr, align 8
  %arrayidx502 = getelementptr inbounds i32, ptr %553, i64 6
  %554 = load i32, ptr %arrayidx502, align 4
  %555 = load ptr, ptr %out.addr, align 8
  %arrayidx503 = getelementptr inbounds i32, ptr %555, i64 2
  %556 = load i32, ptr %arrayidx503, align 4
  %add504 = add i32 %556, %554
  store i32 %add504, ptr %arrayidx503, align 4
  %557 = load ptr, ptr %out.addr, align 8
  %arrayidx505 = getelementptr inbounds i32, ptr %557, i64 2
  %558 = load i32, ptr %arrayidx505, align 4
  %559 = load ptr, ptr %out.addr, align 8
  %arrayidx506 = getelementptr inbounds i32, ptr %559, i64 14
  %560 = load i32, ptr %arrayidx506, align 4
  %xor507 = xor i32 %560, %558
  store i32 %xor507, ptr %arrayidx506, align 4
  %561 = load ptr, ptr %out.addr, align 8
  %arrayidx508 = getelementptr inbounds i32, ptr %561, i64 14
  %562 = load i32, ptr %arrayidx508, align 4
  %shl509 = shl i32 %562, 8
  %563 = load ptr, ptr %out.addr, align 8
  %arrayidx510 = getelementptr inbounds i32, ptr %563, i64 14
  %564 = load i32, ptr %arrayidx510, align 4
  %shr511 = lshr i32 %564, 24
  %or512 = or i32 %shl509, %shr511
  %565 = load ptr, ptr %out.addr, align 8
  %arrayidx513 = getelementptr inbounds i32, ptr %565, i64 14
  store i32 %or512, ptr %arrayidx513, align 4
  %566 = load ptr, ptr %out.addr, align 8
  %arrayidx514 = getelementptr inbounds i32, ptr %566, i64 14
  %567 = load i32, ptr %arrayidx514, align 4
  %568 = load ptr, ptr %out.addr, align 8
  %arrayidx515 = getelementptr inbounds i32, ptr %568, i64 10
  %569 = load i32, ptr %arrayidx515, align 4
  %add516 = add i32 %569, %567
  store i32 %add516, ptr %arrayidx515, align 4
  %570 = load ptr, ptr %out.addr, align 8
  %arrayidx517 = getelementptr inbounds i32, ptr %570, i64 10
  %571 = load i32, ptr %arrayidx517, align 4
  %572 = load ptr, ptr %out.addr, align 8
  %arrayidx518 = getelementptr inbounds i32, ptr %572, i64 6
  %573 = load i32, ptr %arrayidx518, align 4
  %xor519 = xor i32 %573, %571
  store i32 %xor519, ptr %arrayidx518, align 4
  %574 = load ptr, ptr %out.addr, align 8
  %arrayidx520 = getelementptr inbounds i32, ptr %574, i64 6
  %575 = load i32, ptr %arrayidx520, align 4
  %shl521 = shl i32 %575, 7
  %576 = load ptr, ptr %out.addr, align 8
  %arrayidx522 = getelementptr inbounds i32, ptr %576, i64 6
  %577 = load i32, ptr %arrayidx522, align 4
  %shr523 = lshr i32 %577, 25
  %or524 = or i32 %shl521, %shr523
  %578 = load ptr, ptr %out.addr, align 8
  %arrayidx525 = getelementptr inbounds i32, ptr %578, i64 6
  store i32 %or524, ptr %arrayidx525, align 4
  %579 = load ptr, ptr %out.addr, align 8
  %arrayidx526 = getelementptr inbounds i32, ptr %579, i64 7
  %580 = load i32, ptr %arrayidx526, align 4
  %581 = load ptr, ptr %out.addr, align 8
  %arrayidx527 = getelementptr inbounds i32, ptr %581, i64 3
  %582 = load i32, ptr %arrayidx527, align 4
  %add528 = add i32 %582, %580
  store i32 %add528, ptr %arrayidx527, align 4
  %583 = load ptr, ptr %out.addr, align 8
  %arrayidx529 = getelementptr inbounds i32, ptr %583, i64 3
  %584 = load i32, ptr %arrayidx529, align 4
  %585 = load ptr, ptr %out.addr, align 8
  %arrayidx530 = getelementptr inbounds i32, ptr %585, i64 15
  %586 = load i32, ptr %arrayidx530, align 4
  %xor531 = xor i32 %586, %584
  store i32 %xor531, ptr %arrayidx530, align 4
  %587 = load ptr, ptr %out.addr, align 8
  %arrayidx532 = getelementptr inbounds i32, ptr %587, i64 15
  %588 = load i32, ptr %arrayidx532, align 4
  %shl533 = shl i32 %588, 16
  %589 = load ptr, ptr %out.addr, align 8
  %arrayidx534 = getelementptr inbounds i32, ptr %589, i64 15
  %590 = load i32, ptr %arrayidx534, align 4
  %shr535 = lshr i32 %590, 16
  %or536 = or i32 %shl533, %shr535
  %591 = load ptr, ptr %out.addr, align 8
  %arrayidx537 = getelementptr inbounds i32, ptr %591, i64 15
  store i32 %or536, ptr %arrayidx537, align 4
  %592 = load ptr, ptr %out.addr, align 8
  %arrayidx538 = getelementptr inbounds i32, ptr %592, i64 15
  %593 = load i32, ptr %arrayidx538, align 4
  %594 = load ptr, ptr %out.addr, align 8
  %arrayidx539 = getelementptr inbounds i32, ptr %594, i64 11
  %595 = load i32, ptr %arrayidx539, align 4
  %add540 = add i32 %595, %593
  store i32 %add540, ptr %arrayidx539, align 4
  %596 = load ptr, ptr %out.addr, align 8
  %arrayidx541 = getelementptr inbounds i32, ptr %596, i64 11
  %597 = load i32, ptr %arrayidx541, align 4
  %598 = load ptr, ptr %out.addr, align 8
  %arrayidx542 = getelementptr inbounds i32, ptr %598, i64 7
  %599 = load i32, ptr %arrayidx542, align 4
  %xor543 = xor i32 %599, %597
  store i32 %xor543, ptr %arrayidx542, align 4
  %600 = load ptr, ptr %out.addr, align 8
  %arrayidx544 = getelementptr inbounds i32, ptr %600, i64 7
  %601 = load i32, ptr %arrayidx544, align 4
  %shl545 = shl i32 %601, 12
  %602 = load ptr, ptr %out.addr, align 8
  %arrayidx546 = getelementptr inbounds i32, ptr %602, i64 7
  %603 = load i32, ptr %arrayidx546, align 4
  %shr547 = lshr i32 %603, 20
  %or548 = or i32 %shl545, %shr547
  %604 = load ptr, ptr %out.addr, align 8
  %arrayidx549 = getelementptr inbounds i32, ptr %604, i64 7
  store i32 %or548, ptr %arrayidx549, align 4
  %605 = load ptr, ptr %out.addr, align 8
  %arrayidx550 = getelementptr inbounds i32, ptr %605, i64 7
  %606 = load i32, ptr %arrayidx550, align 4
  %607 = load ptr, ptr %out.addr, align 8
  %arrayidx551 = getelementptr inbounds i32, ptr %607, i64 3
  %608 = load i32, ptr %arrayidx551, align 4
  %add552 = add i32 %608, %606
  store i32 %add552, ptr %arrayidx551, align 4
  %609 = load ptr, ptr %out.addr, align 8
  %arrayidx553 = getelementptr inbounds i32, ptr %609, i64 3
  %610 = load i32, ptr %arrayidx553, align 4
  %611 = load ptr, ptr %out.addr, align 8
  %arrayidx554 = getelementptr inbounds i32, ptr %611, i64 15
  %612 = load i32, ptr %arrayidx554, align 4
  %xor555 = xor i32 %612, %610
  store i32 %xor555, ptr %arrayidx554, align 4
  %613 = load ptr, ptr %out.addr, align 8
  %arrayidx556 = getelementptr inbounds i32, ptr %613, i64 15
  %614 = load i32, ptr %arrayidx556, align 4
  %shl557 = shl i32 %614, 8
  %615 = load ptr, ptr %out.addr, align 8
  %arrayidx558 = getelementptr inbounds i32, ptr %615, i64 15
  %616 = load i32, ptr %arrayidx558, align 4
  %shr559 = lshr i32 %616, 24
  %or560 = or i32 %shl557, %shr559
  %617 = load ptr, ptr %out.addr, align 8
  %arrayidx561 = getelementptr inbounds i32, ptr %617, i64 15
  store i32 %or560, ptr %arrayidx561, align 4
  %618 = load ptr, ptr %out.addr, align 8
  %arrayidx562 = getelementptr inbounds i32, ptr %618, i64 15
  %619 = load i32, ptr %arrayidx562, align 4
  %620 = load ptr, ptr %out.addr, align 8
  %arrayidx563 = getelementptr inbounds i32, ptr %620, i64 11
  %621 = load i32, ptr %arrayidx563, align 4
  %add564 = add i32 %621, %619
  store i32 %add564, ptr %arrayidx563, align 4
  %622 = load ptr, ptr %out.addr, align 8
  %arrayidx565 = getelementptr inbounds i32, ptr %622, i64 11
  %623 = load i32, ptr %arrayidx565, align 4
  %624 = load ptr, ptr %out.addr, align 8
  %arrayidx566 = getelementptr inbounds i32, ptr %624, i64 7
  %625 = load i32, ptr %arrayidx566, align 4
  %xor567 = xor i32 %625, %623
  store i32 %xor567, ptr %arrayidx566, align 4
  %626 = load ptr, ptr %out.addr, align 8
  %arrayidx568 = getelementptr inbounds i32, ptr %626, i64 7
  %627 = load i32, ptr %arrayidx568, align 4
  %shl569 = shl i32 %627, 7
  %628 = load ptr, ptr %out.addr, align 8
  %arrayidx570 = getelementptr inbounds i32, ptr %628, i64 7
  %629 = load i32, ptr %arrayidx570, align 4
  %shr571 = lshr i32 %629, 25
  %or572 = or i32 %shl569, %shr571
  %630 = load ptr, ptr %out.addr, align 8
  %arrayidx573 = getelementptr inbounds i32, ptr %630, i64 7
  store i32 %or572, ptr %arrayidx573, align 4
  %631 = load ptr, ptr %out.addr, align 8
  %arrayidx574 = getelementptr inbounds i32, ptr %631, i64 5
  %632 = load i32, ptr %arrayidx574, align 4
  %633 = load ptr, ptr %out.addr, align 8
  %arrayidx575 = getelementptr inbounds i32, ptr %633, i64 0
  %634 = load i32, ptr %arrayidx575, align 4
  %add576 = add i32 %634, %632
  store i32 %add576, ptr %arrayidx575, align 4
  %635 = load ptr, ptr %out.addr, align 8
  %arrayidx577 = getelementptr inbounds i32, ptr %635, i64 0
  %636 = load i32, ptr %arrayidx577, align 4
  %637 = load ptr, ptr %out.addr, align 8
  %arrayidx578 = getelementptr inbounds i32, ptr %637, i64 15
  %638 = load i32, ptr %arrayidx578, align 4
  %xor579 = xor i32 %638, %636
  store i32 %xor579, ptr %arrayidx578, align 4
  %639 = load ptr, ptr %out.addr, align 8
  %arrayidx580 = getelementptr inbounds i32, ptr %639, i64 15
  %640 = load i32, ptr %arrayidx580, align 4
  %shl581 = shl i32 %640, 16
  %641 = load ptr, ptr %out.addr, align 8
  %arrayidx582 = getelementptr inbounds i32, ptr %641, i64 15
  %642 = load i32, ptr %arrayidx582, align 4
  %shr583 = lshr i32 %642, 16
  %or584 = or i32 %shl581, %shr583
  %643 = load ptr, ptr %out.addr, align 8
  %arrayidx585 = getelementptr inbounds i32, ptr %643, i64 15
  store i32 %or584, ptr %arrayidx585, align 4
  %644 = load ptr, ptr %out.addr, align 8
  %arrayidx586 = getelementptr inbounds i32, ptr %644, i64 15
  %645 = load i32, ptr %arrayidx586, align 4
  %646 = load ptr, ptr %out.addr, align 8
  %arrayidx587 = getelementptr inbounds i32, ptr %646, i64 10
  %647 = load i32, ptr %arrayidx587, align 4
  %add588 = add i32 %647, %645
  store i32 %add588, ptr %arrayidx587, align 4
  %648 = load ptr, ptr %out.addr, align 8
  %arrayidx589 = getelementptr inbounds i32, ptr %648, i64 10
  %649 = load i32, ptr %arrayidx589, align 4
  %650 = load ptr, ptr %out.addr, align 8
  %arrayidx590 = getelementptr inbounds i32, ptr %650, i64 5
  %651 = load i32, ptr %arrayidx590, align 4
  %xor591 = xor i32 %651, %649
  store i32 %xor591, ptr %arrayidx590, align 4
  %652 = load ptr, ptr %out.addr, align 8
  %arrayidx592 = getelementptr inbounds i32, ptr %652, i64 5
  %653 = load i32, ptr %arrayidx592, align 4
  %shl593 = shl i32 %653, 12
  %654 = load ptr, ptr %out.addr, align 8
  %arrayidx594 = getelementptr inbounds i32, ptr %654, i64 5
  %655 = load i32, ptr %arrayidx594, align 4
  %shr595 = lshr i32 %655, 20
  %or596 = or i32 %shl593, %shr595
  %656 = load ptr, ptr %out.addr, align 8
  %arrayidx597 = getelementptr inbounds i32, ptr %656, i64 5
  store i32 %or596, ptr %arrayidx597, align 4
  %657 = load ptr, ptr %out.addr, align 8
  %arrayidx598 = getelementptr inbounds i32, ptr %657, i64 5
  %658 = load i32, ptr %arrayidx598, align 4
  %659 = load ptr, ptr %out.addr, align 8
  %arrayidx599 = getelementptr inbounds i32, ptr %659, i64 0
  %660 = load i32, ptr %arrayidx599, align 4
  %add600 = add i32 %660, %658
  store i32 %add600, ptr %arrayidx599, align 4
  %661 = load ptr, ptr %out.addr, align 8
  %arrayidx601 = getelementptr inbounds i32, ptr %661, i64 0
  %662 = load i32, ptr %arrayidx601, align 4
  %663 = load ptr, ptr %out.addr, align 8
  %arrayidx602 = getelementptr inbounds i32, ptr %663, i64 15
  %664 = load i32, ptr %arrayidx602, align 4
  %xor603 = xor i32 %664, %662
  store i32 %xor603, ptr %arrayidx602, align 4
  %665 = load ptr, ptr %out.addr, align 8
  %arrayidx604 = getelementptr inbounds i32, ptr %665, i64 15
  %666 = load i32, ptr %arrayidx604, align 4
  %shl605 = shl i32 %666, 8
  %667 = load ptr, ptr %out.addr, align 8
  %arrayidx606 = getelementptr inbounds i32, ptr %667, i64 15
  %668 = load i32, ptr %arrayidx606, align 4
  %shr607 = lshr i32 %668, 24
  %or608 = or i32 %shl605, %shr607
  %669 = load ptr, ptr %out.addr, align 8
  %arrayidx609 = getelementptr inbounds i32, ptr %669, i64 15
  store i32 %or608, ptr %arrayidx609, align 4
  %670 = load ptr, ptr %out.addr, align 8
  %arrayidx610 = getelementptr inbounds i32, ptr %670, i64 15
  %671 = load i32, ptr %arrayidx610, align 4
  %672 = load ptr, ptr %out.addr, align 8
  %arrayidx611 = getelementptr inbounds i32, ptr %672, i64 10
  %673 = load i32, ptr %arrayidx611, align 4
  %add612 = add i32 %673, %671
  store i32 %add612, ptr %arrayidx611, align 4
  %674 = load ptr, ptr %out.addr, align 8
  %arrayidx613 = getelementptr inbounds i32, ptr %674, i64 10
  %675 = load i32, ptr %arrayidx613, align 4
  %676 = load ptr, ptr %out.addr, align 8
  %arrayidx614 = getelementptr inbounds i32, ptr %676, i64 5
  %677 = load i32, ptr %arrayidx614, align 4
  %xor615 = xor i32 %677, %675
  store i32 %xor615, ptr %arrayidx614, align 4
  %678 = load ptr, ptr %out.addr, align 8
  %arrayidx616 = getelementptr inbounds i32, ptr %678, i64 5
  %679 = load i32, ptr %arrayidx616, align 4
  %shl617 = shl i32 %679, 7
  %680 = load ptr, ptr %out.addr, align 8
  %arrayidx618 = getelementptr inbounds i32, ptr %680, i64 5
  %681 = load i32, ptr %arrayidx618, align 4
  %shr619 = lshr i32 %681, 25
  %or620 = or i32 %shl617, %shr619
  %682 = load ptr, ptr %out.addr, align 8
  %arrayidx621 = getelementptr inbounds i32, ptr %682, i64 5
  store i32 %or620, ptr %arrayidx621, align 4
  %683 = load ptr, ptr %out.addr, align 8
  %arrayidx622 = getelementptr inbounds i32, ptr %683, i64 6
  %684 = load i32, ptr %arrayidx622, align 4
  %685 = load ptr, ptr %out.addr, align 8
  %arrayidx623 = getelementptr inbounds i32, ptr %685, i64 1
  %686 = load i32, ptr %arrayidx623, align 4
  %add624 = add i32 %686, %684
  store i32 %add624, ptr %arrayidx623, align 4
  %687 = load ptr, ptr %out.addr, align 8
  %arrayidx625 = getelementptr inbounds i32, ptr %687, i64 1
  %688 = load i32, ptr %arrayidx625, align 4
  %689 = load ptr, ptr %out.addr, align 8
  %arrayidx626 = getelementptr inbounds i32, ptr %689, i64 12
  %690 = load i32, ptr %arrayidx626, align 4
  %xor627 = xor i32 %690, %688
  store i32 %xor627, ptr %arrayidx626, align 4
  %691 = load ptr, ptr %out.addr, align 8
  %arrayidx628 = getelementptr inbounds i32, ptr %691, i64 12
  %692 = load i32, ptr %arrayidx628, align 4
  %shl629 = shl i32 %692, 16
  %693 = load ptr, ptr %out.addr, align 8
  %arrayidx630 = getelementptr inbounds i32, ptr %693, i64 12
  %694 = load i32, ptr %arrayidx630, align 4
  %shr631 = lshr i32 %694, 16
  %or632 = or i32 %shl629, %shr631
  %695 = load ptr, ptr %out.addr, align 8
  %arrayidx633 = getelementptr inbounds i32, ptr %695, i64 12
  store i32 %or632, ptr %arrayidx633, align 4
  %696 = load ptr, ptr %out.addr, align 8
  %arrayidx634 = getelementptr inbounds i32, ptr %696, i64 12
  %697 = load i32, ptr %arrayidx634, align 4
  %698 = load ptr, ptr %out.addr, align 8
  %arrayidx635 = getelementptr inbounds i32, ptr %698, i64 11
  %699 = load i32, ptr %arrayidx635, align 4
  %add636 = add i32 %699, %697
  store i32 %add636, ptr %arrayidx635, align 4
  %700 = load ptr, ptr %out.addr, align 8
  %arrayidx637 = getelementptr inbounds i32, ptr %700, i64 11
  %701 = load i32, ptr %arrayidx637, align 4
  %702 = load ptr, ptr %out.addr, align 8
  %arrayidx638 = getelementptr inbounds i32, ptr %702, i64 6
  %703 = load i32, ptr %arrayidx638, align 4
  %xor639 = xor i32 %703, %701
  store i32 %xor639, ptr %arrayidx638, align 4
  %704 = load ptr, ptr %out.addr, align 8
  %arrayidx640 = getelementptr inbounds i32, ptr %704, i64 6
  %705 = load i32, ptr %arrayidx640, align 4
  %shl641 = shl i32 %705, 12
  %706 = load ptr, ptr %out.addr, align 8
  %arrayidx642 = getelementptr inbounds i32, ptr %706, i64 6
  %707 = load i32, ptr %arrayidx642, align 4
  %shr643 = lshr i32 %707, 20
  %or644 = or i32 %shl641, %shr643
  %708 = load ptr, ptr %out.addr, align 8
  %arrayidx645 = getelementptr inbounds i32, ptr %708, i64 6
  store i32 %or644, ptr %arrayidx645, align 4
  %709 = load ptr, ptr %out.addr, align 8
  %arrayidx646 = getelementptr inbounds i32, ptr %709, i64 6
  %710 = load i32, ptr %arrayidx646, align 4
  %711 = load ptr, ptr %out.addr, align 8
  %arrayidx647 = getelementptr inbounds i32, ptr %711, i64 1
  %712 = load i32, ptr %arrayidx647, align 4
  %add648 = add i32 %712, %710
  store i32 %add648, ptr %arrayidx647, align 4
  %713 = load ptr, ptr %out.addr, align 8
  %arrayidx649 = getelementptr inbounds i32, ptr %713, i64 1
  %714 = load i32, ptr %arrayidx649, align 4
  %715 = load ptr, ptr %out.addr, align 8
  %arrayidx650 = getelementptr inbounds i32, ptr %715, i64 12
  %716 = load i32, ptr %arrayidx650, align 4
  %xor651 = xor i32 %716, %714
  store i32 %xor651, ptr %arrayidx650, align 4
  %717 = load ptr, ptr %out.addr, align 8
  %arrayidx652 = getelementptr inbounds i32, ptr %717, i64 12
  %718 = load i32, ptr %arrayidx652, align 4
  %shl653 = shl i32 %718, 8
  %719 = load ptr, ptr %out.addr, align 8
  %arrayidx654 = getelementptr inbounds i32, ptr %719, i64 12
  %720 = load i32, ptr %arrayidx654, align 4
  %shr655 = lshr i32 %720, 24
  %or656 = or i32 %shl653, %shr655
  %721 = load ptr, ptr %out.addr, align 8
  %arrayidx657 = getelementptr inbounds i32, ptr %721, i64 12
  store i32 %or656, ptr %arrayidx657, align 4
  %722 = load ptr, ptr %out.addr, align 8
  %arrayidx658 = getelementptr inbounds i32, ptr %722, i64 12
  %723 = load i32, ptr %arrayidx658, align 4
  %724 = load ptr, ptr %out.addr, align 8
  %arrayidx659 = getelementptr inbounds i32, ptr %724, i64 11
  %725 = load i32, ptr %arrayidx659, align 4
  %add660 = add i32 %725, %723
  store i32 %add660, ptr %arrayidx659, align 4
  %726 = load ptr, ptr %out.addr, align 8
  %arrayidx661 = getelementptr inbounds i32, ptr %726, i64 11
  %727 = load i32, ptr %arrayidx661, align 4
  %728 = load ptr, ptr %out.addr, align 8
  %arrayidx662 = getelementptr inbounds i32, ptr %728, i64 6
  %729 = load i32, ptr %arrayidx662, align 4
  %xor663 = xor i32 %729, %727
  store i32 %xor663, ptr %arrayidx662, align 4
  %730 = load ptr, ptr %out.addr, align 8
  %arrayidx664 = getelementptr inbounds i32, ptr %730, i64 6
  %731 = load i32, ptr %arrayidx664, align 4
  %shl665 = shl i32 %731, 7
  %732 = load ptr, ptr %out.addr, align 8
  %arrayidx666 = getelementptr inbounds i32, ptr %732, i64 6
  %733 = load i32, ptr %arrayidx666, align 4
  %shr667 = lshr i32 %733, 25
  %or668 = or i32 %shl665, %shr667
  %734 = load ptr, ptr %out.addr, align 8
  %arrayidx669 = getelementptr inbounds i32, ptr %734, i64 6
  store i32 %or668, ptr %arrayidx669, align 4
  %735 = load ptr, ptr %out.addr, align 8
  %arrayidx670 = getelementptr inbounds i32, ptr %735, i64 7
  %736 = load i32, ptr %arrayidx670, align 4
  %737 = load ptr, ptr %out.addr, align 8
  %arrayidx671 = getelementptr inbounds i32, ptr %737, i64 2
  %738 = load i32, ptr %arrayidx671, align 4
  %add672 = add i32 %738, %736
  store i32 %add672, ptr %arrayidx671, align 4
  %739 = load ptr, ptr %out.addr, align 8
  %arrayidx673 = getelementptr inbounds i32, ptr %739, i64 2
  %740 = load i32, ptr %arrayidx673, align 4
  %741 = load ptr, ptr %out.addr, align 8
  %arrayidx674 = getelementptr inbounds i32, ptr %741, i64 13
  %742 = load i32, ptr %arrayidx674, align 4
  %xor675 = xor i32 %742, %740
  store i32 %xor675, ptr %arrayidx674, align 4
  %743 = load ptr, ptr %out.addr, align 8
  %arrayidx676 = getelementptr inbounds i32, ptr %743, i64 13
  %744 = load i32, ptr %arrayidx676, align 4
  %shl677 = shl i32 %744, 16
  %745 = load ptr, ptr %out.addr, align 8
  %arrayidx678 = getelementptr inbounds i32, ptr %745, i64 13
  %746 = load i32, ptr %arrayidx678, align 4
  %shr679 = lshr i32 %746, 16
  %or680 = or i32 %shl677, %shr679
  %747 = load ptr, ptr %out.addr, align 8
  %arrayidx681 = getelementptr inbounds i32, ptr %747, i64 13
  store i32 %or680, ptr %arrayidx681, align 4
  %748 = load ptr, ptr %out.addr, align 8
  %arrayidx682 = getelementptr inbounds i32, ptr %748, i64 13
  %749 = load i32, ptr %arrayidx682, align 4
  %750 = load ptr, ptr %out.addr, align 8
  %arrayidx683 = getelementptr inbounds i32, ptr %750, i64 8
  %751 = load i32, ptr %arrayidx683, align 4
  %add684 = add i32 %751, %749
  store i32 %add684, ptr %arrayidx683, align 4
  %752 = load ptr, ptr %out.addr, align 8
  %arrayidx685 = getelementptr inbounds i32, ptr %752, i64 8
  %753 = load i32, ptr %arrayidx685, align 4
  %754 = load ptr, ptr %out.addr, align 8
  %arrayidx686 = getelementptr inbounds i32, ptr %754, i64 7
  %755 = load i32, ptr %arrayidx686, align 4
  %xor687 = xor i32 %755, %753
  store i32 %xor687, ptr %arrayidx686, align 4
  %756 = load ptr, ptr %out.addr, align 8
  %arrayidx688 = getelementptr inbounds i32, ptr %756, i64 7
  %757 = load i32, ptr %arrayidx688, align 4
  %shl689 = shl i32 %757, 12
  %758 = load ptr, ptr %out.addr, align 8
  %arrayidx690 = getelementptr inbounds i32, ptr %758, i64 7
  %759 = load i32, ptr %arrayidx690, align 4
  %shr691 = lshr i32 %759, 20
  %or692 = or i32 %shl689, %shr691
  %760 = load ptr, ptr %out.addr, align 8
  %arrayidx693 = getelementptr inbounds i32, ptr %760, i64 7
  store i32 %or692, ptr %arrayidx693, align 4
  %761 = load ptr, ptr %out.addr, align 8
  %arrayidx694 = getelementptr inbounds i32, ptr %761, i64 7
  %762 = load i32, ptr %arrayidx694, align 4
  %763 = load ptr, ptr %out.addr, align 8
  %arrayidx695 = getelementptr inbounds i32, ptr %763, i64 2
  %764 = load i32, ptr %arrayidx695, align 4
  %add696 = add i32 %764, %762
  store i32 %add696, ptr %arrayidx695, align 4
  %765 = load ptr, ptr %out.addr, align 8
  %arrayidx697 = getelementptr inbounds i32, ptr %765, i64 2
  %766 = load i32, ptr %arrayidx697, align 4
  %767 = load ptr, ptr %out.addr, align 8
  %arrayidx698 = getelementptr inbounds i32, ptr %767, i64 13
  %768 = load i32, ptr %arrayidx698, align 4
  %xor699 = xor i32 %768, %766
  store i32 %xor699, ptr %arrayidx698, align 4
  %769 = load ptr, ptr %out.addr, align 8
  %arrayidx700 = getelementptr inbounds i32, ptr %769, i64 13
  %770 = load i32, ptr %arrayidx700, align 4
  %shl701 = shl i32 %770, 8
  %771 = load ptr, ptr %out.addr, align 8
  %arrayidx702 = getelementptr inbounds i32, ptr %771, i64 13
  %772 = load i32, ptr %arrayidx702, align 4
  %shr703 = lshr i32 %772, 24
  %or704 = or i32 %shl701, %shr703
  %773 = load ptr, ptr %out.addr, align 8
  %arrayidx705 = getelementptr inbounds i32, ptr %773, i64 13
  store i32 %or704, ptr %arrayidx705, align 4
  %774 = load ptr, ptr %out.addr, align 8
  %arrayidx706 = getelementptr inbounds i32, ptr %774, i64 13
  %775 = load i32, ptr %arrayidx706, align 4
  %776 = load ptr, ptr %out.addr, align 8
  %arrayidx707 = getelementptr inbounds i32, ptr %776, i64 8
  %777 = load i32, ptr %arrayidx707, align 4
  %add708 = add i32 %777, %775
  store i32 %add708, ptr %arrayidx707, align 4
  %778 = load ptr, ptr %out.addr, align 8
  %arrayidx709 = getelementptr inbounds i32, ptr %778, i64 8
  %779 = load i32, ptr %arrayidx709, align 4
  %780 = load ptr, ptr %out.addr, align 8
  %arrayidx710 = getelementptr inbounds i32, ptr %780, i64 7
  %781 = load i32, ptr %arrayidx710, align 4
  %xor711 = xor i32 %781, %779
  store i32 %xor711, ptr %arrayidx710, align 4
  %782 = load ptr, ptr %out.addr, align 8
  %arrayidx712 = getelementptr inbounds i32, ptr %782, i64 7
  %783 = load i32, ptr %arrayidx712, align 4
  %shl713 = shl i32 %783, 7
  %784 = load ptr, ptr %out.addr, align 8
  %arrayidx714 = getelementptr inbounds i32, ptr %784, i64 7
  %785 = load i32, ptr %arrayidx714, align 4
  %shr715 = lshr i32 %785, 25
  %or716 = or i32 %shl713, %shr715
  %786 = load ptr, ptr %out.addr, align 8
  %arrayidx717 = getelementptr inbounds i32, ptr %786, i64 7
  store i32 %or716, ptr %arrayidx717, align 4
  %787 = load ptr, ptr %out.addr, align 8
  %arrayidx718 = getelementptr inbounds i32, ptr %787, i64 4
  %788 = load i32, ptr %arrayidx718, align 4
  %789 = load ptr, ptr %out.addr, align 8
  %arrayidx719 = getelementptr inbounds i32, ptr %789, i64 3
  %790 = load i32, ptr %arrayidx719, align 4
  %add720 = add i32 %790, %788
  store i32 %add720, ptr %arrayidx719, align 4
  %791 = load ptr, ptr %out.addr, align 8
  %arrayidx721 = getelementptr inbounds i32, ptr %791, i64 3
  %792 = load i32, ptr %arrayidx721, align 4
  %793 = load ptr, ptr %out.addr, align 8
  %arrayidx722 = getelementptr inbounds i32, ptr %793, i64 14
  %794 = load i32, ptr %arrayidx722, align 4
  %xor723 = xor i32 %794, %792
  store i32 %xor723, ptr %arrayidx722, align 4
  %795 = load ptr, ptr %out.addr, align 8
  %arrayidx724 = getelementptr inbounds i32, ptr %795, i64 14
  %796 = load i32, ptr %arrayidx724, align 4
  %shl725 = shl i32 %796, 16
  %797 = load ptr, ptr %out.addr, align 8
  %arrayidx726 = getelementptr inbounds i32, ptr %797, i64 14
  %798 = load i32, ptr %arrayidx726, align 4
  %shr727 = lshr i32 %798, 16
  %or728 = or i32 %shl725, %shr727
  %799 = load ptr, ptr %out.addr, align 8
  %arrayidx729 = getelementptr inbounds i32, ptr %799, i64 14
  store i32 %or728, ptr %arrayidx729, align 4
  %800 = load ptr, ptr %out.addr, align 8
  %arrayidx730 = getelementptr inbounds i32, ptr %800, i64 14
  %801 = load i32, ptr %arrayidx730, align 4
  %802 = load ptr, ptr %out.addr, align 8
  %arrayidx731 = getelementptr inbounds i32, ptr %802, i64 9
  %803 = load i32, ptr %arrayidx731, align 4
  %add732 = add i32 %803, %801
  store i32 %add732, ptr %arrayidx731, align 4
  %804 = load ptr, ptr %out.addr, align 8
  %arrayidx733 = getelementptr inbounds i32, ptr %804, i64 9
  %805 = load i32, ptr %arrayidx733, align 4
  %806 = load ptr, ptr %out.addr, align 8
  %arrayidx734 = getelementptr inbounds i32, ptr %806, i64 4
  %807 = load i32, ptr %arrayidx734, align 4
  %xor735 = xor i32 %807, %805
  store i32 %xor735, ptr %arrayidx734, align 4
  %808 = load ptr, ptr %out.addr, align 8
  %arrayidx736 = getelementptr inbounds i32, ptr %808, i64 4
  %809 = load i32, ptr %arrayidx736, align 4
  %shl737 = shl i32 %809, 12
  %810 = load ptr, ptr %out.addr, align 8
  %arrayidx738 = getelementptr inbounds i32, ptr %810, i64 4
  %811 = load i32, ptr %arrayidx738, align 4
  %shr739 = lshr i32 %811, 20
  %or740 = or i32 %shl737, %shr739
  %812 = load ptr, ptr %out.addr, align 8
  %arrayidx741 = getelementptr inbounds i32, ptr %812, i64 4
  store i32 %or740, ptr %arrayidx741, align 4
  %813 = load ptr, ptr %out.addr, align 8
  %arrayidx742 = getelementptr inbounds i32, ptr %813, i64 4
  %814 = load i32, ptr %arrayidx742, align 4
  %815 = load ptr, ptr %out.addr, align 8
  %arrayidx743 = getelementptr inbounds i32, ptr %815, i64 3
  %816 = load i32, ptr %arrayidx743, align 4
  %add744 = add i32 %816, %814
  store i32 %add744, ptr %arrayidx743, align 4
  %817 = load ptr, ptr %out.addr, align 8
  %arrayidx745 = getelementptr inbounds i32, ptr %817, i64 3
  %818 = load i32, ptr %arrayidx745, align 4
  %819 = load ptr, ptr %out.addr, align 8
  %arrayidx746 = getelementptr inbounds i32, ptr %819, i64 14
  %820 = load i32, ptr %arrayidx746, align 4
  %xor747 = xor i32 %820, %818
  store i32 %xor747, ptr %arrayidx746, align 4
  %821 = load ptr, ptr %out.addr, align 8
  %arrayidx748 = getelementptr inbounds i32, ptr %821, i64 14
  %822 = load i32, ptr %arrayidx748, align 4
  %shl749 = shl i32 %822, 8
  %823 = load ptr, ptr %out.addr, align 8
  %arrayidx750 = getelementptr inbounds i32, ptr %823, i64 14
  %824 = load i32, ptr %arrayidx750, align 4
  %shr751 = lshr i32 %824, 24
  %or752 = or i32 %shl749, %shr751
  %825 = load ptr, ptr %out.addr, align 8
  %arrayidx753 = getelementptr inbounds i32, ptr %825, i64 14
  store i32 %or752, ptr %arrayidx753, align 4
  %826 = load ptr, ptr %out.addr, align 8
  %arrayidx754 = getelementptr inbounds i32, ptr %826, i64 14
  %827 = load i32, ptr %arrayidx754, align 4
  %828 = load ptr, ptr %out.addr, align 8
  %arrayidx755 = getelementptr inbounds i32, ptr %828, i64 9
  %829 = load i32, ptr %arrayidx755, align 4
  %add756 = add i32 %829, %827
  store i32 %add756, ptr %arrayidx755, align 4
  %830 = load ptr, ptr %out.addr, align 8
  %arrayidx757 = getelementptr inbounds i32, ptr %830, i64 9
  %831 = load i32, ptr %arrayidx757, align 4
  %832 = load ptr, ptr %out.addr, align 8
  %arrayidx758 = getelementptr inbounds i32, ptr %832, i64 4
  %833 = load i32, ptr %arrayidx758, align 4
  %xor759 = xor i32 %833, %831
  store i32 %xor759, ptr %arrayidx758, align 4
  %834 = load ptr, ptr %out.addr, align 8
  %arrayidx760 = getelementptr inbounds i32, ptr %834, i64 4
  %835 = load i32, ptr %arrayidx760, align 4
  %shl761 = shl i32 %835, 7
  %836 = load ptr, ptr %out.addr, align 8
  %arrayidx762 = getelementptr inbounds i32, ptr %836, i64 4
  %837 = load i32, ptr %arrayidx762, align 4
  %shr763 = lshr i32 %837, 25
  %or764 = or i32 %shl761, %shr763
  %838 = load ptr, ptr %out.addr, align 8
  %arrayidx765 = getelementptr inbounds i32, ptr %838, i64 4
  store i32 %or764, ptr %arrayidx765, align 4
  %839 = load ptr, ptr %out.addr, align 8
  %arrayidx766 = getelementptr inbounds i32, ptr %839, i64 4
  %840 = load i32, ptr %arrayidx766, align 4
  %841 = load ptr, ptr %out.addr, align 8
  %arrayidx767 = getelementptr inbounds i32, ptr %841, i64 0
  %842 = load i32, ptr %arrayidx767, align 4
  %add768 = add i32 %842, %840
  store i32 %add768, ptr %arrayidx767, align 4
  %843 = load ptr, ptr %out.addr, align 8
  %arrayidx769 = getelementptr inbounds i32, ptr %843, i64 0
  %844 = load i32, ptr %arrayidx769, align 4
  %845 = load ptr, ptr %out.addr, align 8
  %arrayidx770 = getelementptr inbounds i32, ptr %845, i64 12
  %846 = load i32, ptr %arrayidx770, align 4
  %xor771 = xor i32 %846, %844
  store i32 %xor771, ptr %arrayidx770, align 4
  %847 = load ptr, ptr %out.addr, align 8
  %arrayidx772 = getelementptr inbounds i32, ptr %847, i64 12
  %848 = load i32, ptr %arrayidx772, align 4
  %shl773 = shl i32 %848, 16
  %849 = load ptr, ptr %out.addr, align 8
  %arrayidx774 = getelementptr inbounds i32, ptr %849, i64 12
  %850 = load i32, ptr %arrayidx774, align 4
  %shr775 = lshr i32 %850, 16
  %or776 = or i32 %shl773, %shr775
  %851 = load ptr, ptr %out.addr, align 8
  %arrayidx777 = getelementptr inbounds i32, ptr %851, i64 12
  store i32 %or776, ptr %arrayidx777, align 4
  %852 = load ptr, ptr %out.addr, align 8
  %arrayidx778 = getelementptr inbounds i32, ptr %852, i64 12
  %853 = load i32, ptr %arrayidx778, align 4
  %854 = load ptr, ptr %out.addr, align 8
  %arrayidx779 = getelementptr inbounds i32, ptr %854, i64 8
  %855 = load i32, ptr %arrayidx779, align 4
  %add780 = add i32 %855, %853
  store i32 %add780, ptr %arrayidx779, align 4
  %856 = load ptr, ptr %out.addr, align 8
  %arrayidx781 = getelementptr inbounds i32, ptr %856, i64 8
  %857 = load i32, ptr %arrayidx781, align 4
  %858 = load ptr, ptr %out.addr, align 8
  %arrayidx782 = getelementptr inbounds i32, ptr %858, i64 4
  %859 = load i32, ptr %arrayidx782, align 4
  %xor783 = xor i32 %859, %857
  store i32 %xor783, ptr %arrayidx782, align 4
  %860 = load ptr, ptr %out.addr, align 8
  %arrayidx784 = getelementptr inbounds i32, ptr %860, i64 4
  %861 = load i32, ptr %arrayidx784, align 4
  %shl785 = shl i32 %861, 12
  %862 = load ptr, ptr %out.addr, align 8
  %arrayidx786 = getelementptr inbounds i32, ptr %862, i64 4
  %863 = load i32, ptr %arrayidx786, align 4
  %shr787 = lshr i32 %863, 20
  %or788 = or i32 %shl785, %shr787
  %864 = load ptr, ptr %out.addr, align 8
  %arrayidx789 = getelementptr inbounds i32, ptr %864, i64 4
  store i32 %or788, ptr %arrayidx789, align 4
  %865 = load ptr, ptr %out.addr, align 8
  %arrayidx790 = getelementptr inbounds i32, ptr %865, i64 4
  %866 = load i32, ptr %arrayidx790, align 4
  %867 = load ptr, ptr %out.addr, align 8
  %arrayidx791 = getelementptr inbounds i32, ptr %867, i64 0
  %868 = load i32, ptr %arrayidx791, align 4
  %add792 = add i32 %868, %866
  store i32 %add792, ptr %arrayidx791, align 4
  %869 = load ptr, ptr %out.addr, align 8
  %arrayidx793 = getelementptr inbounds i32, ptr %869, i64 0
  %870 = load i32, ptr %arrayidx793, align 4
  %871 = load ptr, ptr %out.addr, align 8
  %arrayidx794 = getelementptr inbounds i32, ptr %871, i64 12
  %872 = load i32, ptr %arrayidx794, align 4
  %xor795 = xor i32 %872, %870
  store i32 %xor795, ptr %arrayidx794, align 4
  %873 = load ptr, ptr %out.addr, align 8
  %arrayidx796 = getelementptr inbounds i32, ptr %873, i64 12
  %874 = load i32, ptr %arrayidx796, align 4
  %shl797 = shl i32 %874, 8
  %875 = load ptr, ptr %out.addr, align 8
  %arrayidx798 = getelementptr inbounds i32, ptr %875, i64 12
  %876 = load i32, ptr %arrayidx798, align 4
  %shr799 = lshr i32 %876, 24
  %or800 = or i32 %shl797, %shr799
  %877 = load ptr, ptr %out.addr, align 8
  %arrayidx801 = getelementptr inbounds i32, ptr %877, i64 12
  store i32 %or800, ptr %arrayidx801, align 4
  %878 = load ptr, ptr %out.addr, align 8
  %arrayidx802 = getelementptr inbounds i32, ptr %878, i64 12
  %879 = load i32, ptr %arrayidx802, align 4
  %880 = load ptr, ptr %out.addr, align 8
  %arrayidx803 = getelementptr inbounds i32, ptr %880, i64 8
  %881 = load i32, ptr %arrayidx803, align 4
  %add804 = add i32 %881, %879
  store i32 %add804, ptr %arrayidx803, align 4
  %882 = load ptr, ptr %out.addr, align 8
  %arrayidx805 = getelementptr inbounds i32, ptr %882, i64 8
  %883 = load i32, ptr %arrayidx805, align 4
  %884 = load ptr, ptr %out.addr, align 8
  %arrayidx806 = getelementptr inbounds i32, ptr %884, i64 4
  %885 = load i32, ptr %arrayidx806, align 4
  %xor807 = xor i32 %885, %883
  store i32 %xor807, ptr %arrayidx806, align 4
  %886 = load ptr, ptr %out.addr, align 8
  %arrayidx808 = getelementptr inbounds i32, ptr %886, i64 4
  %887 = load i32, ptr %arrayidx808, align 4
  %shl809 = shl i32 %887, 7
  %888 = load ptr, ptr %out.addr, align 8
  %arrayidx810 = getelementptr inbounds i32, ptr %888, i64 4
  %889 = load i32, ptr %arrayidx810, align 4
  %shr811 = lshr i32 %889, 25
  %or812 = or i32 %shl809, %shr811
  %890 = load ptr, ptr %out.addr, align 8
  %arrayidx813 = getelementptr inbounds i32, ptr %890, i64 4
  store i32 %or812, ptr %arrayidx813, align 4
  %891 = load ptr, ptr %out.addr, align 8
  %arrayidx814 = getelementptr inbounds i32, ptr %891, i64 5
  %892 = load i32, ptr %arrayidx814, align 4
  %893 = load ptr, ptr %out.addr, align 8
  %arrayidx815 = getelementptr inbounds i32, ptr %893, i64 1
  %894 = load i32, ptr %arrayidx815, align 4
  %add816 = add i32 %894, %892
  store i32 %add816, ptr %arrayidx815, align 4
  %895 = load ptr, ptr %out.addr, align 8
  %arrayidx817 = getelementptr inbounds i32, ptr %895, i64 1
  %896 = load i32, ptr %arrayidx817, align 4
  %897 = load ptr, ptr %out.addr, align 8
  %arrayidx818 = getelementptr inbounds i32, ptr %897, i64 13
  %898 = load i32, ptr %arrayidx818, align 4
  %xor819 = xor i32 %898, %896
  store i32 %xor819, ptr %arrayidx818, align 4
  %899 = load ptr, ptr %out.addr, align 8
  %arrayidx820 = getelementptr inbounds i32, ptr %899, i64 13
  %900 = load i32, ptr %arrayidx820, align 4
  %shl821 = shl i32 %900, 16
  %901 = load ptr, ptr %out.addr, align 8
  %arrayidx822 = getelementptr inbounds i32, ptr %901, i64 13
  %902 = load i32, ptr %arrayidx822, align 4
  %shr823 = lshr i32 %902, 16
  %or824 = or i32 %shl821, %shr823
  %903 = load ptr, ptr %out.addr, align 8
  %arrayidx825 = getelementptr inbounds i32, ptr %903, i64 13
  store i32 %or824, ptr %arrayidx825, align 4
  %904 = load ptr, ptr %out.addr, align 8
  %arrayidx826 = getelementptr inbounds i32, ptr %904, i64 13
  %905 = load i32, ptr %arrayidx826, align 4
  %906 = load ptr, ptr %out.addr, align 8
  %arrayidx827 = getelementptr inbounds i32, ptr %906, i64 9
  %907 = load i32, ptr %arrayidx827, align 4
  %add828 = add i32 %907, %905
  store i32 %add828, ptr %arrayidx827, align 4
  %908 = load ptr, ptr %out.addr, align 8
  %arrayidx829 = getelementptr inbounds i32, ptr %908, i64 9
  %909 = load i32, ptr %arrayidx829, align 4
  %910 = load ptr, ptr %out.addr, align 8
  %arrayidx830 = getelementptr inbounds i32, ptr %910, i64 5
  %911 = load i32, ptr %arrayidx830, align 4
  %xor831 = xor i32 %911, %909
  store i32 %xor831, ptr %arrayidx830, align 4
  %912 = load ptr, ptr %out.addr, align 8
  %arrayidx832 = getelementptr inbounds i32, ptr %912, i64 5
  %913 = load i32, ptr %arrayidx832, align 4
  %shl833 = shl i32 %913, 12
  %914 = load ptr, ptr %out.addr, align 8
  %arrayidx834 = getelementptr inbounds i32, ptr %914, i64 5
  %915 = load i32, ptr %arrayidx834, align 4
  %shr835 = lshr i32 %915, 20
  %or836 = or i32 %shl833, %shr835
  %916 = load ptr, ptr %out.addr, align 8
  %arrayidx837 = getelementptr inbounds i32, ptr %916, i64 5
  store i32 %or836, ptr %arrayidx837, align 4
  %917 = load ptr, ptr %out.addr, align 8
  %arrayidx838 = getelementptr inbounds i32, ptr %917, i64 5
  %918 = load i32, ptr %arrayidx838, align 4
  %919 = load ptr, ptr %out.addr, align 8
  %arrayidx839 = getelementptr inbounds i32, ptr %919, i64 1
  %920 = load i32, ptr %arrayidx839, align 4
  %add840 = add i32 %920, %918
  store i32 %add840, ptr %arrayidx839, align 4
  %921 = load ptr, ptr %out.addr, align 8
  %arrayidx841 = getelementptr inbounds i32, ptr %921, i64 1
  %922 = load i32, ptr %arrayidx841, align 4
  %923 = load ptr, ptr %out.addr, align 8
  %arrayidx842 = getelementptr inbounds i32, ptr %923, i64 13
  %924 = load i32, ptr %arrayidx842, align 4
  %xor843 = xor i32 %924, %922
  store i32 %xor843, ptr %arrayidx842, align 4
  %925 = load ptr, ptr %out.addr, align 8
  %arrayidx844 = getelementptr inbounds i32, ptr %925, i64 13
  %926 = load i32, ptr %arrayidx844, align 4
  %shl845 = shl i32 %926, 8
  %927 = load ptr, ptr %out.addr, align 8
  %arrayidx846 = getelementptr inbounds i32, ptr %927, i64 13
  %928 = load i32, ptr %arrayidx846, align 4
  %shr847 = lshr i32 %928, 24
  %or848 = or i32 %shl845, %shr847
  %929 = load ptr, ptr %out.addr, align 8
  %arrayidx849 = getelementptr inbounds i32, ptr %929, i64 13
  store i32 %or848, ptr %arrayidx849, align 4
  %930 = load ptr, ptr %out.addr, align 8
  %arrayidx850 = getelementptr inbounds i32, ptr %930, i64 13
  %931 = load i32, ptr %arrayidx850, align 4
  %932 = load ptr, ptr %out.addr, align 8
  %arrayidx851 = getelementptr inbounds i32, ptr %932, i64 9
  %933 = load i32, ptr %arrayidx851, align 4
  %add852 = add i32 %933, %931
  store i32 %add852, ptr %arrayidx851, align 4
  %934 = load ptr, ptr %out.addr, align 8
  %arrayidx853 = getelementptr inbounds i32, ptr %934, i64 9
  %935 = load i32, ptr %arrayidx853, align 4
  %936 = load ptr, ptr %out.addr, align 8
  %arrayidx854 = getelementptr inbounds i32, ptr %936, i64 5
  %937 = load i32, ptr %arrayidx854, align 4
  %xor855 = xor i32 %937, %935
  store i32 %xor855, ptr %arrayidx854, align 4
  %938 = load ptr, ptr %out.addr, align 8
  %arrayidx856 = getelementptr inbounds i32, ptr %938, i64 5
  %939 = load i32, ptr %arrayidx856, align 4
  %shl857 = shl i32 %939, 7
  %940 = load ptr, ptr %out.addr, align 8
  %arrayidx858 = getelementptr inbounds i32, ptr %940, i64 5
  %941 = load i32, ptr %arrayidx858, align 4
  %shr859 = lshr i32 %941, 25
  %or860 = or i32 %shl857, %shr859
  %942 = load ptr, ptr %out.addr, align 8
  %arrayidx861 = getelementptr inbounds i32, ptr %942, i64 5
  store i32 %or860, ptr %arrayidx861, align 4
  %943 = load ptr, ptr %out.addr, align 8
  %arrayidx862 = getelementptr inbounds i32, ptr %943, i64 6
  %944 = load i32, ptr %arrayidx862, align 4
  %945 = load ptr, ptr %out.addr, align 8
  %arrayidx863 = getelementptr inbounds i32, ptr %945, i64 2
  %946 = load i32, ptr %arrayidx863, align 4
  %add864 = add i32 %946, %944
  store i32 %add864, ptr %arrayidx863, align 4
  %947 = load ptr, ptr %out.addr, align 8
  %arrayidx865 = getelementptr inbounds i32, ptr %947, i64 2
  %948 = load i32, ptr %arrayidx865, align 4
  %949 = load ptr, ptr %out.addr, align 8
  %arrayidx866 = getelementptr inbounds i32, ptr %949, i64 14
  %950 = load i32, ptr %arrayidx866, align 4
  %xor867 = xor i32 %950, %948
  store i32 %xor867, ptr %arrayidx866, align 4
  %951 = load ptr, ptr %out.addr, align 8
  %arrayidx868 = getelementptr inbounds i32, ptr %951, i64 14
  %952 = load i32, ptr %arrayidx868, align 4
  %shl869 = shl i32 %952, 16
  %953 = load ptr, ptr %out.addr, align 8
  %arrayidx870 = getelementptr inbounds i32, ptr %953, i64 14
  %954 = load i32, ptr %arrayidx870, align 4
  %shr871 = lshr i32 %954, 16
  %or872 = or i32 %shl869, %shr871
  %955 = load ptr, ptr %out.addr, align 8
  %arrayidx873 = getelementptr inbounds i32, ptr %955, i64 14
  store i32 %or872, ptr %arrayidx873, align 4
  %956 = load ptr, ptr %out.addr, align 8
  %arrayidx874 = getelementptr inbounds i32, ptr %956, i64 14
  %957 = load i32, ptr %arrayidx874, align 4
  %958 = load ptr, ptr %out.addr, align 8
  %arrayidx875 = getelementptr inbounds i32, ptr %958, i64 10
  %959 = load i32, ptr %arrayidx875, align 4
  %add876 = add i32 %959, %957
  store i32 %add876, ptr %arrayidx875, align 4
  %960 = load ptr, ptr %out.addr, align 8
  %arrayidx877 = getelementptr inbounds i32, ptr %960, i64 10
  %961 = load i32, ptr %arrayidx877, align 4
  %962 = load ptr, ptr %out.addr, align 8
  %arrayidx878 = getelementptr inbounds i32, ptr %962, i64 6
  %963 = load i32, ptr %arrayidx878, align 4
  %xor879 = xor i32 %963, %961
  store i32 %xor879, ptr %arrayidx878, align 4
  %964 = load ptr, ptr %out.addr, align 8
  %arrayidx880 = getelementptr inbounds i32, ptr %964, i64 6
  %965 = load i32, ptr %arrayidx880, align 4
  %shl881 = shl i32 %965, 12
  %966 = load ptr, ptr %out.addr, align 8
  %arrayidx882 = getelementptr inbounds i32, ptr %966, i64 6
  %967 = load i32, ptr %arrayidx882, align 4
  %shr883 = lshr i32 %967, 20
  %or884 = or i32 %shl881, %shr883
  %968 = load ptr, ptr %out.addr, align 8
  %arrayidx885 = getelementptr inbounds i32, ptr %968, i64 6
  store i32 %or884, ptr %arrayidx885, align 4
  %969 = load ptr, ptr %out.addr, align 8
  %arrayidx886 = getelementptr inbounds i32, ptr %969, i64 6
  %970 = load i32, ptr %arrayidx886, align 4
  %971 = load ptr, ptr %out.addr, align 8
  %arrayidx887 = getelementptr inbounds i32, ptr %971, i64 2
  %972 = load i32, ptr %arrayidx887, align 4
  %add888 = add i32 %972, %970
  store i32 %add888, ptr %arrayidx887, align 4
  %973 = load ptr, ptr %out.addr, align 8
  %arrayidx889 = getelementptr inbounds i32, ptr %973, i64 2
  %974 = load i32, ptr %arrayidx889, align 4
  %975 = load ptr, ptr %out.addr, align 8
  %arrayidx890 = getelementptr inbounds i32, ptr %975, i64 14
  %976 = load i32, ptr %arrayidx890, align 4
  %xor891 = xor i32 %976, %974
  store i32 %xor891, ptr %arrayidx890, align 4
  %977 = load ptr, ptr %out.addr, align 8
  %arrayidx892 = getelementptr inbounds i32, ptr %977, i64 14
  %978 = load i32, ptr %arrayidx892, align 4
  %shl893 = shl i32 %978, 8
  %979 = load ptr, ptr %out.addr, align 8
  %arrayidx894 = getelementptr inbounds i32, ptr %979, i64 14
  %980 = load i32, ptr %arrayidx894, align 4
  %shr895 = lshr i32 %980, 24
  %or896 = or i32 %shl893, %shr895
  %981 = load ptr, ptr %out.addr, align 8
  %arrayidx897 = getelementptr inbounds i32, ptr %981, i64 14
  store i32 %or896, ptr %arrayidx897, align 4
  %982 = load ptr, ptr %out.addr, align 8
  %arrayidx898 = getelementptr inbounds i32, ptr %982, i64 14
  %983 = load i32, ptr %arrayidx898, align 4
  %984 = load ptr, ptr %out.addr, align 8
  %arrayidx899 = getelementptr inbounds i32, ptr %984, i64 10
  %985 = load i32, ptr %arrayidx899, align 4
  %add900 = add i32 %985, %983
  store i32 %add900, ptr %arrayidx899, align 4
  %986 = load ptr, ptr %out.addr, align 8
  %arrayidx901 = getelementptr inbounds i32, ptr %986, i64 10
  %987 = load i32, ptr %arrayidx901, align 4
  %988 = load ptr, ptr %out.addr, align 8
  %arrayidx902 = getelementptr inbounds i32, ptr %988, i64 6
  %989 = load i32, ptr %arrayidx902, align 4
  %xor903 = xor i32 %989, %987
  store i32 %xor903, ptr %arrayidx902, align 4
  %990 = load ptr, ptr %out.addr, align 8
  %arrayidx904 = getelementptr inbounds i32, ptr %990, i64 6
  %991 = load i32, ptr %arrayidx904, align 4
  %shl905 = shl i32 %991, 7
  %992 = load ptr, ptr %out.addr, align 8
  %arrayidx906 = getelementptr inbounds i32, ptr %992, i64 6
  %993 = load i32, ptr %arrayidx906, align 4
  %shr907 = lshr i32 %993, 25
  %or908 = or i32 %shl905, %shr907
  %994 = load ptr, ptr %out.addr, align 8
  %arrayidx909 = getelementptr inbounds i32, ptr %994, i64 6
  store i32 %or908, ptr %arrayidx909, align 4
  %995 = load ptr, ptr %out.addr, align 8
  %arrayidx910 = getelementptr inbounds i32, ptr %995, i64 7
  %996 = load i32, ptr %arrayidx910, align 4
  %997 = load ptr, ptr %out.addr, align 8
  %arrayidx911 = getelementptr inbounds i32, ptr %997, i64 3
  %998 = load i32, ptr %arrayidx911, align 4
  %add912 = add i32 %998, %996
  store i32 %add912, ptr %arrayidx911, align 4
  %999 = load ptr, ptr %out.addr, align 8
  %arrayidx913 = getelementptr inbounds i32, ptr %999, i64 3
  %1000 = load i32, ptr %arrayidx913, align 4
  %1001 = load ptr, ptr %out.addr, align 8
  %arrayidx914 = getelementptr inbounds i32, ptr %1001, i64 15
  %1002 = load i32, ptr %arrayidx914, align 4
  %xor915 = xor i32 %1002, %1000
  store i32 %xor915, ptr %arrayidx914, align 4
  %1003 = load ptr, ptr %out.addr, align 8
  %arrayidx916 = getelementptr inbounds i32, ptr %1003, i64 15
  %1004 = load i32, ptr %arrayidx916, align 4
  %shl917 = shl i32 %1004, 16
  %1005 = load ptr, ptr %out.addr, align 8
  %arrayidx918 = getelementptr inbounds i32, ptr %1005, i64 15
  %1006 = load i32, ptr %arrayidx918, align 4
  %shr919 = lshr i32 %1006, 16
  %or920 = or i32 %shl917, %shr919
  %1007 = load ptr, ptr %out.addr, align 8
  %arrayidx921 = getelementptr inbounds i32, ptr %1007, i64 15
  store i32 %or920, ptr %arrayidx921, align 4
  %1008 = load ptr, ptr %out.addr, align 8
  %arrayidx922 = getelementptr inbounds i32, ptr %1008, i64 15
  %1009 = load i32, ptr %arrayidx922, align 4
  %1010 = load ptr, ptr %out.addr, align 8
  %arrayidx923 = getelementptr inbounds i32, ptr %1010, i64 11
  %1011 = load i32, ptr %arrayidx923, align 4
  %add924 = add i32 %1011, %1009
  store i32 %add924, ptr %arrayidx923, align 4
  %1012 = load ptr, ptr %out.addr, align 8
  %arrayidx925 = getelementptr inbounds i32, ptr %1012, i64 11
  %1013 = load i32, ptr %arrayidx925, align 4
  %1014 = load ptr, ptr %out.addr, align 8
  %arrayidx926 = getelementptr inbounds i32, ptr %1014, i64 7
  %1015 = load i32, ptr %arrayidx926, align 4
  %xor927 = xor i32 %1015, %1013
  store i32 %xor927, ptr %arrayidx926, align 4
  %1016 = load ptr, ptr %out.addr, align 8
  %arrayidx928 = getelementptr inbounds i32, ptr %1016, i64 7
  %1017 = load i32, ptr %arrayidx928, align 4
  %shl929 = shl i32 %1017, 12
  %1018 = load ptr, ptr %out.addr, align 8
  %arrayidx930 = getelementptr inbounds i32, ptr %1018, i64 7
  %1019 = load i32, ptr %arrayidx930, align 4
  %shr931 = lshr i32 %1019, 20
  %or932 = or i32 %shl929, %shr931
  %1020 = load ptr, ptr %out.addr, align 8
  %arrayidx933 = getelementptr inbounds i32, ptr %1020, i64 7
  store i32 %or932, ptr %arrayidx933, align 4
  %1021 = load ptr, ptr %out.addr, align 8
  %arrayidx934 = getelementptr inbounds i32, ptr %1021, i64 7
  %1022 = load i32, ptr %arrayidx934, align 4
  %1023 = load ptr, ptr %out.addr, align 8
  %arrayidx935 = getelementptr inbounds i32, ptr %1023, i64 3
  %1024 = load i32, ptr %arrayidx935, align 4
  %add936 = add i32 %1024, %1022
  store i32 %add936, ptr %arrayidx935, align 4
  %1025 = load ptr, ptr %out.addr, align 8
  %arrayidx937 = getelementptr inbounds i32, ptr %1025, i64 3
  %1026 = load i32, ptr %arrayidx937, align 4
  %1027 = load ptr, ptr %out.addr, align 8
  %arrayidx938 = getelementptr inbounds i32, ptr %1027, i64 15
  %1028 = load i32, ptr %arrayidx938, align 4
  %xor939 = xor i32 %1028, %1026
  store i32 %xor939, ptr %arrayidx938, align 4
  %1029 = load ptr, ptr %out.addr, align 8
  %arrayidx940 = getelementptr inbounds i32, ptr %1029, i64 15
  %1030 = load i32, ptr %arrayidx940, align 4
  %shl941 = shl i32 %1030, 8
  %1031 = load ptr, ptr %out.addr, align 8
  %arrayidx942 = getelementptr inbounds i32, ptr %1031, i64 15
  %1032 = load i32, ptr %arrayidx942, align 4
  %shr943 = lshr i32 %1032, 24
  %or944 = or i32 %shl941, %shr943
  %1033 = load ptr, ptr %out.addr, align 8
  %arrayidx945 = getelementptr inbounds i32, ptr %1033, i64 15
  store i32 %or944, ptr %arrayidx945, align 4
  %1034 = load ptr, ptr %out.addr, align 8
  %arrayidx946 = getelementptr inbounds i32, ptr %1034, i64 15
  %1035 = load i32, ptr %arrayidx946, align 4
  %1036 = load ptr, ptr %out.addr, align 8
  %arrayidx947 = getelementptr inbounds i32, ptr %1036, i64 11
  %1037 = load i32, ptr %arrayidx947, align 4
  %add948 = add i32 %1037, %1035
  store i32 %add948, ptr %arrayidx947, align 4
  %1038 = load ptr, ptr %out.addr, align 8
  %arrayidx949 = getelementptr inbounds i32, ptr %1038, i64 11
  %1039 = load i32, ptr %arrayidx949, align 4
  %1040 = load ptr, ptr %out.addr, align 8
  %arrayidx950 = getelementptr inbounds i32, ptr %1040, i64 7
  %1041 = load i32, ptr %arrayidx950, align 4
  %xor951 = xor i32 %1041, %1039
  store i32 %xor951, ptr %arrayidx950, align 4
  %1042 = load ptr, ptr %out.addr, align 8
  %arrayidx952 = getelementptr inbounds i32, ptr %1042, i64 7
  %1043 = load i32, ptr %arrayidx952, align 4
  %shl953 = shl i32 %1043, 7
  %1044 = load ptr, ptr %out.addr, align 8
  %arrayidx954 = getelementptr inbounds i32, ptr %1044, i64 7
  %1045 = load i32, ptr %arrayidx954, align 4
  %shr955 = lshr i32 %1045, 25
  %or956 = or i32 %shl953, %shr955
  %1046 = load ptr, ptr %out.addr, align 8
  %arrayidx957 = getelementptr inbounds i32, ptr %1046, i64 7
  store i32 %or956, ptr %arrayidx957, align 4
  %1047 = load ptr, ptr %out.addr, align 8
  %arrayidx958 = getelementptr inbounds i32, ptr %1047, i64 5
  %1048 = load i32, ptr %arrayidx958, align 4
  %1049 = load ptr, ptr %out.addr, align 8
  %arrayidx959 = getelementptr inbounds i32, ptr %1049, i64 0
  %1050 = load i32, ptr %arrayidx959, align 4
  %add960 = add i32 %1050, %1048
  store i32 %add960, ptr %arrayidx959, align 4
  %1051 = load ptr, ptr %out.addr, align 8
  %arrayidx961 = getelementptr inbounds i32, ptr %1051, i64 0
  %1052 = load i32, ptr %arrayidx961, align 4
  %1053 = load ptr, ptr %out.addr, align 8
  %arrayidx962 = getelementptr inbounds i32, ptr %1053, i64 15
  %1054 = load i32, ptr %arrayidx962, align 4
  %xor963 = xor i32 %1054, %1052
  store i32 %xor963, ptr %arrayidx962, align 4
  %1055 = load ptr, ptr %out.addr, align 8
  %arrayidx964 = getelementptr inbounds i32, ptr %1055, i64 15
  %1056 = load i32, ptr %arrayidx964, align 4
  %shl965 = shl i32 %1056, 16
  %1057 = load ptr, ptr %out.addr, align 8
  %arrayidx966 = getelementptr inbounds i32, ptr %1057, i64 15
  %1058 = load i32, ptr %arrayidx966, align 4
  %shr967 = lshr i32 %1058, 16
  %or968 = or i32 %shl965, %shr967
  %1059 = load ptr, ptr %out.addr, align 8
  %arrayidx969 = getelementptr inbounds i32, ptr %1059, i64 15
  store i32 %or968, ptr %arrayidx969, align 4
  %1060 = load ptr, ptr %out.addr, align 8
  %arrayidx970 = getelementptr inbounds i32, ptr %1060, i64 15
  %1061 = load i32, ptr %arrayidx970, align 4
  %1062 = load ptr, ptr %out.addr, align 8
  %arrayidx971 = getelementptr inbounds i32, ptr %1062, i64 10
  %1063 = load i32, ptr %arrayidx971, align 4
  %add972 = add i32 %1063, %1061
  store i32 %add972, ptr %arrayidx971, align 4
  %1064 = load ptr, ptr %out.addr, align 8
  %arrayidx973 = getelementptr inbounds i32, ptr %1064, i64 10
  %1065 = load i32, ptr %arrayidx973, align 4
  %1066 = load ptr, ptr %out.addr, align 8
  %arrayidx974 = getelementptr inbounds i32, ptr %1066, i64 5
  %1067 = load i32, ptr %arrayidx974, align 4
  %xor975 = xor i32 %1067, %1065
  store i32 %xor975, ptr %arrayidx974, align 4
  %1068 = load ptr, ptr %out.addr, align 8
  %arrayidx976 = getelementptr inbounds i32, ptr %1068, i64 5
  %1069 = load i32, ptr %arrayidx976, align 4
  %shl977 = shl i32 %1069, 12
  %1070 = load ptr, ptr %out.addr, align 8
  %arrayidx978 = getelementptr inbounds i32, ptr %1070, i64 5
  %1071 = load i32, ptr %arrayidx978, align 4
  %shr979 = lshr i32 %1071, 20
  %or980 = or i32 %shl977, %shr979
  %1072 = load ptr, ptr %out.addr, align 8
  %arrayidx981 = getelementptr inbounds i32, ptr %1072, i64 5
  store i32 %or980, ptr %arrayidx981, align 4
  %1073 = load ptr, ptr %out.addr, align 8
  %arrayidx982 = getelementptr inbounds i32, ptr %1073, i64 5
  %1074 = load i32, ptr %arrayidx982, align 4
  %1075 = load ptr, ptr %out.addr, align 8
  %arrayidx983 = getelementptr inbounds i32, ptr %1075, i64 0
  %1076 = load i32, ptr %arrayidx983, align 4
  %add984 = add i32 %1076, %1074
  store i32 %add984, ptr %arrayidx983, align 4
  %1077 = load ptr, ptr %out.addr, align 8
  %arrayidx985 = getelementptr inbounds i32, ptr %1077, i64 0
  %1078 = load i32, ptr %arrayidx985, align 4
  %1079 = load ptr, ptr %out.addr, align 8
  %arrayidx986 = getelementptr inbounds i32, ptr %1079, i64 15
  %1080 = load i32, ptr %arrayidx986, align 4
  %xor987 = xor i32 %1080, %1078
  store i32 %xor987, ptr %arrayidx986, align 4
  %1081 = load ptr, ptr %out.addr, align 8
  %arrayidx988 = getelementptr inbounds i32, ptr %1081, i64 15
  %1082 = load i32, ptr %arrayidx988, align 4
  %shl989 = shl i32 %1082, 8
  %1083 = load ptr, ptr %out.addr, align 8
  %arrayidx990 = getelementptr inbounds i32, ptr %1083, i64 15
  %1084 = load i32, ptr %arrayidx990, align 4
  %shr991 = lshr i32 %1084, 24
  %or992 = or i32 %shl989, %shr991
  %1085 = load ptr, ptr %out.addr, align 8
  %arrayidx993 = getelementptr inbounds i32, ptr %1085, i64 15
  store i32 %or992, ptr %arrayidx993, align 4
  %1086 = load ptr, ptr %out.addr, align 8
  %arrayidx994 = getelementptr inbounds i32, ptr %1086, i64 15
  %1087 = load i32, ptr %arrayidx994, align 4
  %1088 = load ptr, ptr %out.addr, align 8
  %arrayidx995 = getelementptr inbounds i32, ptr %1088, i64 10
  %1089 = load i32, ptr %arrayidx995, align 4
  %add996 = add i32 %1089, %1087
  store i32 %add996, ptr %arrayidx995, align 4
  %1090 = load ptr, ptr %out.addr, align 8
  %arrayidx997 = getelementptr inbounds i32, ptr %1090, i64 10
  %1091 = load i32, ptr %arrayidx997, align 4
  %1092 = load ptr, ptr %out.addr, align 8
  %arrayidx998 = getelementptr inbounds i32, ptr %1092, i64 5
  %1093 = load i32, ptr %arrayidx998, align 4
  %xor999 = xor i32 %1093, %1091
  store i32 %xor999, ptr %arrayidx998, align 4
  %1094 = load ptr, ptr %out.addr, align 8
  %arrayidx1000 = getelementptr inbounds i32, ptr %1094, i64 5
  %1095 = load i32, ptr %arrayidx1000, align 4
  %shl1001 = shl i32 %1095, 7
  %1096 = load ptr, ptr %out.addr, align 8
  %arrayidx1002 = getelementptr inbounds i32, ptr %1096, i64 5
  %1097 = load i32, ptr %arrayidx1002, align 4
  %shr1003 = lshr i32 %1097, 25
  %or1004 = or i32 %shl1001, %shr1003
  %1098 = load ptr, ptr %out.addr, align 8
  %arrayidx1005 = getelementptr inbounds i32, ptr %1098, i64 5
  store i32 %or1004, ptr %arrayidx1005, align 4
  %1099 = load ptr, ptr %out.addr, align 8
  %arrayidx1006 = getelementptr inbounds i32, ptr %1099, i64 6
  %1100 = load i32, ptr %arrayidx1006, align 4
  %1101 = load ptr, ptr %out.addr, align 8
  %arrayidx1007 = getelementptr inbounds i32, ptr %1101, i64 1
  %1102 = load i32, ptr %arrayidx1007, align 4
  %add1008 = add i32 %1102, %1100
  store i32 %add1008, ptr %arrayidx1007, align 4
  %1103 = load ptr, ptr %out.addr, align 8
  %arrayidx1009 = getelementptr inbounds i32, ptr %1103, i64 1
  %1104 = load i32, ptr %arrayidx1009, align 4
  %1105 = load ptr, ptr %out.addr, align 8
  %arrayidx1010 = getelementptr inbounds i32, ptr %1105, i64 12
  %1106 = load i32, ptr %arrayidx1010, align 4
  %xor1011 = xor i32 %1106, %1104
  store i32 %xor1011, ptr %arrayidx1010, align 4
  %1107 = load ptr, ptr %out.addr, align 8
  %arrayidx1012 = getelementptr inbounds i32, ptr %1107, i64 12
  %1108 = load i32, ptr %arrayidx1012, align 4
  %shl1013 = shl i32 %1108, 16
  %1109 = load ptr, ptr %out.addr, align 8
  %arrayidx1014 = getelementptr inbounds i32, ptr %1109, i64 12
  %1110 = load i32, ptr %arrayidx1014, align 4
  %shr1015 = lshr i32 %1110, 16
  %or1016 = or i32 %shl1013, %shr1015
  %1111 = load ptr, ptr %out.addr, align 8
  %arrayidx1017 = getelementptr inbounds i32, ptr %1111, i64 12
  store i32 %or1016, ptr %arrayidx1017, align 4
  %1112 = load ptr, ptr %out.addr, align 8
  %arrayidx1018 = getelementptr inbounds i32, ptr %1112, i64 12
  %1113 = load i32, ptr %arrayidx1018, align 4
  %1114 = load ptr, ptr %out.addr, align 8
  %arrayidx1019 = getelementptr inbounds i32, ptr %1114, i64 11
  %1115 = load i32, ptr %arrayidx1019, align 4
  %add1020 = add i32 %1115, %1113
  store i32 %add1020, ptr %arrayidx1019, align 4
  %1116 = load ptr, ptr %out.addr, align 8
  %arrayidx1021 = getelementptr inbounds i32, ptr %1116, i64 11
  %1117 = load i32, ptr %arrayidx1021, align 4
  %1118 = load ptr, ptr %out.addr, align 8
  %arrayidx1022 = getelementptr inbounds i32, ptr %1118, i64 6
  %1119 = load i32, ptr %arrayidx1022, align 4
  %xor1023 = xor i32 %1119, %1117
  store i32 %xor1023, ptr %arrayidx1022, align 4
  %1120 = load ptr, ptr %out.addr, align 8
  %arrayidx1024 = getelementptr inbounds i32, ptr %1120, i64 6
  %1121 = load i32, ptr %arrayidx1024, align 4
  %shl1025 = shl i32 %1121, 12
  %1122 = load ptr, ptr %out.addr, align 8
  %arrayidx1026 = getelementptr inbounds i32, ptr %1122, i64 6
  %1123 = load i32, ptr %arrayidx1026, align 4
  %shr1027 = lshr i32 %1123, 20
  %or1028 = or i32 %shl1025, %shr1027
  %1124 = load ptr, ptr %out.addr, align 8
  %arrayidx1029 = getelementptr inbounds i32, ptr %1124, i64 6
  store i32 %or1028, ptr %arrayidx1029, align 4
  %1125 = load ptr, ptr %out.addr, align 8
  %arrayidx1030 = getelementptr inbounds i32, ptr %1125, i64 6
  %1126 = load i32, ptr %arrayidx1030, align 4
  %1127 = load ptr, ptr %out.addr, align 8
  %arrayidx1031 = getelementptr inbounds i32, ptr %1127, i64 1
  %1128 = load i32, ptr %arrayidx1031, align 4
  %add1032 = add i32 %1128, %1126
  store i32 %add1032, ptr %arrayidx1031, align 4
  %1129 = load ptr, ptr %out.addr, align 8
  %arrayidx1033 = getelementptr inbounds i32, ptr %1129, i64 1
  %1130 = load i32, ptr %arrayidx1033, align 4
  %1131 = load ptr, ptr %out.addr, align 8
  %arrayidx1034 = getelementptr inbounds i32, ptr %1131, i64 12
  %1132 = load i32, ptr %arrayidx1034, align 4
  %xor1035 = xor i32 %1132, %1130
  store i32 %xor1035, ptr %arrayidx1034, align 4
  %1133 = load ptr, ptr %out.addr, align 8
  %arrayidx1036 = getelementptr inbounds i32, ptr %1133, i64 12
  %1134 = load i32, ptr %arrayidx1036, align 4
  %shl1037 = shl i32 %1134, 8
  %1135 = load ptr, ptr %out.addr, align 8
  %arrayidx1038 = getelementptr inbounds i32, ptr %1135, i64 12
  %1136 = load i32, ptr %arrayidx1038, align 4
  %shr1039 = lshr i32 %1136, 24
  %or1040 = or i32 %shl1037, %shr1039
  %1137 = load ptr, ptr %out.addr, align 8
  %arrayidx1041 = getelementptr inbounds i32, ptr %1137, i64 12
  store i32 %or1040, ptr %arrayidx1041, align 4
  %1138 = load ptr, ptr %out.addr, align 8
  %arrayidx1042 = getelementptr inbounds i32, ptr %1138, i64 12
  %1139 = load i32, ptr %arrayidx1042, align 4
  %1140 = load ptr, ptr %out.addr, align 8
  %arrayidx1043 = getelementptr inbounds i32, ptr %1140, i64 11
  %1141 = load i32, ptr %arrayidx1043, align 4
  %add1044 = add i32 %1141, %1139
  store i32 %add1044, ptr %arrayidx1043, align 4
  %1142 = load ptr, ptr %out.addr, align 8
  %arrayidx1045 = getelementptr inbounds i32, ptr %1142, i64 11
  %1143 = load i32, ptr %arrayidx1045, align 4
  %1144 = load ptr, ptr %out.addr, align 8
  %arrayidx1046 = getelementptr inbounds i32, ptr %1144, i64 6
  %1145 = load i32, ptr %arrayidx1046, align 4
  %xor1047 = xor i32 %1145, %1143
  store i32 %xor1047, ptr %arrayidx1046, align 4
  %1146 = load ptr, ptr %out.addr, align 8
  %arrayidx1048 = getelementptr inbounds i32, ptr %1146, i64 6
  %1147 = load i32, ptr %arrayidx1048, align 4
  %shl1049 = shl i32 %1147, 7
  %1148 = load ptr, ptr %out.addr, align 8
  %arrayidx1050 = getelementptr inbounds i32, ptr %1148, i64 6
  %1149 = load i32, ptr %arrayidx1050, align 4
  %shr1051 = lshr i32 %1149, 25
  %or1052 = or i32 %shl1049, %shr1051
  %1150 = load ptr, ptr %out.addr, align 8
  %arrayidx1053 = getelementptr inbounds i32, ptr %1150, i64 6
  store i32 %or1052, ptr %arrayidx1053, align 4
  %1151 = load ptr, ptr %out.addr, align 8
  %arrayidx1054 = getelementptr inbounds i32, ptr %1151, i64 7
  %1152 = load i32, ptr %arrayidx1054, align 4
  %1153 = load ptr, ptr %out.addr, align 8
  %arrayidx1055 = getelementptr inbounds i32, ptr %1153, i64 2
  %1154 = load i32, ptr %arrayidx1055, align 4
  %add1056 = add i32 %1154, %1152
  store i32 %add1056, ptr %arrayidx1055, align 4
  %1155 = load ptr, ptr %out.addr, align 8
  %arrayidx1057 = getelementptr inbounds i32, ptr %1155, i64 2
  %1156 = load i32, ptr %arrayidx1057, align 4
  %1157 = load ptr, ptr %out.addr, align 8
  %arrayidx1058 = getelementptr inbounds i32, ptr %1157, i64 13
  %1158 = load i32, ptr %arrayidx1058, align 4
  %xor1059 = xor i32 %1158, %1156
  store i32 %xor1059, ptr %arrayidx1058, align 4
  %1159 = load ptr, ptr %out.addr, align 8
  %arrayidx1060 = getelementptr inbounds i32, ptr %1159, i64 13
  %1160 = load i32, ptr %arrayidx1060, align 4
  %shl1061 = shl i32 %1160, 16
  %1161 = load ptr, ptr %out.addr, align 8
  %arrayidx1062 = getelementptr inbounds i32, ptr %1161, i64 13
  %1162 = load i32, ptr %arrayidx1062, align 4
  %shr1063 = lshr i32 %1162, 16
  %or1064 = or i32 %shl1061, %shr1063
  %1163 = load ptr, ptr %out.addr, align 8
  %arrayidx1065 = getelementptr inbounds i32, ptr %1163, i64 13
  store i32 %or1064, ptr %arrayidx1065, align 4
  %1164 = load ptr, ptr %out.addr, align 8
  %arrayidx1066 = getelementptr inbounds i32, ptr %1164, i64 13
  %1165 = load i32, ptr %arrayidx1066, align 4
  %1166 = load ptr, ptr %out.addr, align 8
  %arrayidx1067 = getelementptr inbounds i32, ptr %1166, i64 8
  %1167 = load i32, ptr %arrayidx1067, align 4
  %add1068 = add i32 %1167, %1165
  store i32 %add1068, ptr %arrayidx1067, align 4
  %1168 = load ptr, ptr %out.addr, align 8
  %arrayidx1069 = getelementptr inbounds i32, ptr %1168, i64 8
  %1169 = load i32, ptr %arrayidx1069, align 4
  %1170 = load ptr, ptr %out.addr, align 8
  %arrayidx1070 = getelementptr inbounds i32, ptr %1170, i64 7
  %1171 = load i32, ptr %arrayidx1070, align 4
  %xor1071 = xor i32 %1171, %1169
  store i32 %xor1071, ptr %arrayidx1070, align 4
  %1172 = load ptr, ptr %out.addr, align 8
  %arrayidx1072 = getelementptr inbounds i32, ptr %1172, i64 7
  %1173 = load i32, ptr %arrayidx1072, align 4
  %shl1073 = shl i32 %1173, 12
  %1174 = load ptr, ptr %out.addr, align 8
  %arrayidx1074 = getelementptr inbounds i32, ptr %1174, i64 7
  %1175 = load i32, ptr %arrayidx1074, align 4
  %shr1075 = lshr i32 %1175, 20
  %or1076 = or i32 %shl1073, %shr1075
  %1176 = load ptr, ptr %out.addr, align 8
  %arrayidx1077 = getelementptr inbounds i32, ptr %1176, i64 7
  store i32 %or1076, ptr %arrayidx1077, align 4
  %1177 = load ptr, ptr %out.addr, align 8
  %arrayidx1078 = getelementptr inbounds i32, ptr %1177, i64 7
  %1178 = load i32, ptr %arrayidx1078, align 4
  %1179 = load ptr, ptr %out.addr, align 8
  %arrayidx1079 = getelementptr inbounds i32, ptr %1179, i64 2
  %1180 = load i32, ptr %arrayidx1079, align 4
  %add1080 = add i32 %1180, %1178
  store i32 %add1080, ptr %arrayidx1079, align 4
  %1181 = load ptr, ptr %out.addr, align 8
  %arrayidx1081 = getelementptr inbounds i32, ptr %1181, i64 2
  %1182 = load i32, ptr %arrayidx1081, align 4
  %1183 = load ptr, ptr %out.addr, align 8
  %arrayidx1082 = getelementptr inbounds i32, ptr %1183, i64 13
  %1184 = load i32, ptr %arrayidx1082, align 4
  %xor1083 = xor i32 %1184, %1182
  store i32 %xor1083, ptr %arrayidx1082, align 4
  %1185 = load ptr, ptr %out.addr, align 8
  %arrayidx1084 = getelementptr inbounds i32, ptr %1185, i64 13
  %1186 = load i32, ptr %arrayidx1084, align 4
  %shl1085 = shl i32 %1186, 8
  %1187 = load ptr, ptr %out.addr, align 8
  %arrayidx1086 = getelementptr inbounds i32, ptr %1187, i64 13
  %1188 = load i32, ptr %arrayidx1086, align 4
  %shr1087 = lshr i32 %1188, 24
  %or1088 = or i32 %shl1085, %shr1087
  %1189 = load ptr, ptr %out.addr, align 8
  %arrayidx1089 = getelementptr inbounds i32, ptr %1189, i64 13
  store i32 %or1088, ptr %arrayidx1089, align 4
  %1190 = load ptr, ptr %out.addr, align 8
  %arrayidx1090 = getelementptr inbounds i32, ptr %1190, i64 13
  %1191 = load i32, ptr %arrayidx1090, align 4
  %1192 = load ptr, ptr %out.addr, align 8
  %arrayidx1091 = getelementptr inbounds i32, ptr %1192, i64 8
  %1193 = load i32, ptr %arrayidx1091, align 4
  %add1092 = add i32 %1193, %1191
  store i32 %add1092, ptr %arrayidx1091, align 4
  %1194 = load ptr, ptr %out.addr, align 8
  %arrayidx1093 = getelementptr inbounds i32, ptr %1194, i64 8
  %1195 = load i32, ptr %arrayidx1093, align 4
  %1196 = load ptr, ptr %out.addr, align 8
  %arrayidx1094 = getelementptr inbounds i32, ptr %1196, i64 7
  %1197 = load i32, ptr %arrayidx1094, align 4
  %xor1095 = xor i32 %1197, %1195
  store i32 %xor1095, ptr %arrayidx1094, align 4
  %1198 = load ptr, ptr %out.addr, align 8
  %arrayidx1096 = getelementptr inbounds i32, ptr %1198, i64 7
  %1199 = load i32, ptr %arrayidx1096, align 4
  %shl1097 = shl i32 %1199, 7
  %1200 = load ptr, ptr %out.addr, align 8
  %arrayidx1098 = getelementptr inbounds i32, ptr %1200, i64 7
  %1201 = load i32, ptr %arrayidx1098, align 4
  %shr1099 = lshr i32 %1201, 25
  %or1100 = or i32 %shl1097, %shr1099
  %1202 = load ptr, ptr %out.addr, align 8
  %arrayidx1101 = getelementptr inbounds i32, ptr %1202, i64 7
  store i32 %or1100, ptr %arrayidx1101, align 4
  %1203 = load ptr, ptr %out.addr, align 8
  %arrayidx1102 = getelementptr inbounds i32, ptr %1203, i64 4
  %1204 = load i32, ptr %arrayidx1102, align 4
  %1205 = load ptr, ptr %out.addr, align 8
  %arrayidx1103 = getelementptr inbounds i32, ptr %1205, i64 3
  %1206 = load i32, ptr %arrayidx1103, align 4
  %add1104 = add i32 %1206, %1204
  store i32 %add1104, ptr %arrayidx1103, align 4
  %1207 = load ptr, ptr %out.addr, align 8
  %arrayidx1105 = getelementptr inbounds i32, ptr %1207, i64 3
  %1208 = load i32, ptr %arrayidx1105, align 4
  %1209 = load ptr, ptr %out.addr, align 8
  %arrayidx1106 = getelementptr inbounds i32, ptr %1209, i64 14
  %1210 = load i32, ptr %arrayidx1106, align 4
  %xor1107 = xor i32 %1210, %1208
  store i32 %xor1107, ptr %arrayidx1106, align 4
  %1211 = load ptr, ptr %out.addr, align 8
  %arrayidx1108 = getelementptr inbounds i32, ptr %1211, i64 14
  %1212 = load i32, ptr %arrayidx1108, align 4
  %shl1109 = shl i32 %1212, 16
  %1213 = load ptr, ptr %out.addr, align 8
  %arrayidx1110 = getelementptr inbounds i32, ptr %1213, i64 14
  %1214 = load i32, ptr %arrayidx1110, align 4
  %shr1111 = lshr i32 %1214, 16
  %or1112 = or i32 %shl1109, %shr1111
  %1215 = load ptr, ptr %out.addr, align 8
  %arrayidx1113 = getelementptr inbounds i32, ptr %1215, i64 14
  store i32 %or1112, ptr %arrayidx1113, align 4
  %1216 = load ptr, ptr %out.addr, align 8
  %arrayidx1114 = getelementptr inbounds i32, ptr %1216, i64 14
  %1217 = load i32, ptr %arrayidx1114, align 4
  %1218 = load ptr, ptr %out.addr, align 8
  %arrayidx1115 = getelementptr inbounds i32, ptr %1218, i64 9
  %1219 = load i32, ptr %arrayidx1115, align 4
  %add1116 = add i32 %1219, %1217
  store i32 %add1116, ptr %arrayidx1115, align 4
  %1220 = load ptr, ptr %out.addr, align 8
  %arrayidx1117 = getelementptr inbounds i32, ptr %1220, i64 9
  %1221 = load i32, ptr %arrayidx1117, align 4
  %1222 = load ptr, ptr %out.addr, align 8
  %arrayidx1118 = getelementptr inbounds i32, ptr %1222, i64 4
  %1223 = load i32, ptr %arrayidx1118, align 4
  %xor1119 = xor i32 %1223, %1221
  store i32 %xor1119, ptr %arrayidx1118, align 4
  %1224 = load ptr, ptr %out.addr, align 8
  %arrayidx1120 = getelementptr inbounds i32, ptr %1224, i64 4
  %1225 = load i32, ptr %arrayidx1120, align 4
  %shl1121 = shl i32 %1225, 12
  %1226 = load ptr, ptr %out.addr, align 8
  %arrayidx1122 = getelementptr inbounds i32, ptr %1226, i64 4
  %1227 = load i32, ptr %arrayidx1122, align 4
  %shr1123 = lshr i32 %1227, 20
  %or1124 = or i32 %shl1121, %shr1123
  %1228 = load ptr, ptr %out.addr, align 8
  %arrayidx1125 = getelementptr inbounds i32, ptr %1228, i64 4
  store i32 %or1124, ptr %arrayidx1125, align 4
  %1229 = load ptr, ptr %out.addr, align 8
  %arrayidx1126 = getelementptr inbounds i32, ptr %1229, i64 4
  %1230 = load i32, ptr %arrayidx1126, align 4
  %1231 = load ptr, ptr %out.addr, align 8
  %arrayidx1127 = getelementptr inbounds i32, ptr %1231, i64 3
  %1232 = load i32, ptr %arrayidx1127, align 4
  %add1128 = add i32 %1232, %1230
  store i32 %add1128, ptr %arrayidx1127, align 4
  %1233 = load ptr, ptr %out.addr, align 8
  %arrayidx1129 = getelementptr inbounds i32, ptr %1233, i64 3
  %1234 = load i32, ptr %arrayidx1129, align 4
  %1235 = load ptr, ptr %out.addr, align 8
  %arrayidx1130 = getelementptr inbounds i32, ptr %1235, i64 14
  %1236 = load i32, ptr %arrayidx1130, align 4
  %xor1131 = xor i32 %1236, %1234
  store i32 %xor1131, ptr %arrayidx1130, align 4
  %1237 = load ptr, ptr %out.addr, align 8
  %arrayidx1132 = getelementptr inbounds i32, ptr %1237, i64 14
  %1238 = load i32, ptr %arrayidx1132, align 4
  %shl1133 = shl i32 %1238, 8
  %1239 = load ptr, ptr %out.addr, align 8
  %arrayidx1134 = getelementptr inbounds i32, ptr %1239, i64 14
  %1240 = load i32, ptr %arrayidx1134, align 4
  %shr1135 = lshr i32 %1240, 24
  %or1136 = or i32 %shl1133, %shr1135
  %1241 = load ptr, ptr %out.addr, align 8
  %arrayidx1137 = getelementptr inbounds i32, ptr %1241, i64 14
  store i32 %or1136, ptr %arrayidx1137, align 4
  %1242 = load ptr, ptr %out.addr, align 8
  %arrayidx1138 = getelementptr inbounds i32, ptr %1242, i64 14
  %1243 = load i32, ptr %arrayidx1138, align 4
  %1244 = load ptr, ptr %out.addr, align 8
  %arrayidx1139 = getelementptr inbounds i32, ptr %1244, i64 9
  %1245 = load i32, ptr %arrayidx1139, align 4
  %add1140 = add i32 %1245, %1243
  store i32 %add1140, ptr %arrayidx1139, align 4
  %1246 = load ptr, ptr %out.addr, align 8
  %arrayidx1141 = getelementptr inbounds i32, ptr %1246, i64 9
  %1247 = load i32, ptr %arrayidx1141, align 4
  %1248 = load ptr, ptr %out.addr, align 8
  %arrayidx1142 = getelementptr inbounds i32, ptr %1248, i64 4
  %1249 = load i32, ptr %arrayidx1142, align 4
  %xor1143 = xor i32 %1249, %1247
  store i32 %xor1143, ptr %arrayidx1142, align 4
  %1250 = load ptr, ptr %out.addr, align 8
  %arrayidx1144 = getelementptr inbounds i32, ptr %1250, i64 4
  %1251 = load i32, ptr %arrayidx1144, align 4
  %shl1145 = shl i32 %1251, 7
  %1252 = load ptr, ptr %out.addr, align 8
  %arrayidx1146 = getelementptr inbounds i32, ptr %1252, i64 4
  %1253 = load i32, ptr %arrayidx1146, align 4
  %shr1147 = lshr i32 %1253, 25
  %or1148 = or i32 %shl1145, %shr1147
  %1254 = load ptr, ptr %out.addr, align 8
  %arrayidx1149 = getelementptr inbounds i32, ptr %1254, i64 4
  store i32 %or1148, ptr %arrayidx1149, align 4
  %1255 = load ptr, ptr %out.addr, align 8
  %arrayidx1150 = getelementptr inbounds i32, ptr %1255, i64 4
  %1256 = load i32, ptr %arrayidx1150, align 4
  %1257 = load ptr, ptr %out.addr, align 8
  %arrayidx1151 = getelementptr inbounds i32, ptr %1257, i64 0
  %1258 = load i32, ptr %arrayidx1151, align 4
  %add1152 = add i32 %1258, %1256
  store i32 %add1152, ptr %arrayidx1151, align 4
  %1259 = load ptr, ptr %out.addr, align 8
  %arrayidx1153 = getelementptr inbounds i32, ptr %1259, i64 0
  %1260 = load i32, ptr %arrayidx1153, align 4
  %1261 = load ptr, ptr %out.addr, align 8
  %arrayidx1154 = getelementptr inbounds i32, ptr %1261, i64 12
  %1262 = load i32, ptr %arrayidx1154, align 4
  %xor1155 = xor i32 %1262, %1260
  store i32 %xor1155, ptr %arrayidx1154, align 4
  %1263 = load ptr, ptr %out.addr, align 8
  %arrayidx1156 = getelementptr inbounds i32, ptr %1263, i64 12
  %1264 = load i32, ptr %arrayidx1156, align 4
  %shl1157 = shl i32 %1264, 16
  %1265 = load ptr, ptr %out.addr, align 8
  %arrayidx1158 = getelementptr inbounds i32, ptr %1265, i64 12
  %1266 = load i32, ptr %arrayidx1158, align 4
  %shr1159 = lshr i32 %1266, 16
  %or1160 = or i32 %shl1157, %shr1159
  %1267 = load ptr, ptr %out.addr, align 8
  %arrayidx1161 = getelementptr inbounds i32, ptr %1267, i64 12
  store i32 %or1160, ptr %arrayidx1161, align 4
  %1268 = load ptr, ptr %out.addr, align 8
  %arrayidx1162 = getelementptr inbounds i32, ptr %1268, i64 12
  %1269 = load i32, ptr %arrayidx1162, align 4
  %1270 = load ptr, ptr %out.addr, align 8
  %arrayidx1163 = getelementptr inbounds i32, ptr %1270, i64 8
  %1271 = load i32, ptr %arrayidx1163, align 4
  %add1164 = add i32 %1271, %1269
  store i32 %add1164, ptr %arrayidx1163, align 4
  %1272 = load ptr, ptr %out.addr, align 8
  %arrayidx1165 = getelementptr inbounds i32, ptr %1272, i64 8
  %1273 = load i32, ptr %arrayidx1165, align 4
  %1274 = load ptr, ptr %out.addr, align 8
  %arrayidx1166 = getelementptr inbounds i32, ptr %1274, i64 4
  %1275 = load i32, ptr %arrayidx1166, align 4
  %xor1167 = xor i32 %1275, %1273
  store i32 %xor1167, ptr %arrayidx1166, align 4
  %1276 = load ptr, ptr %out.addr, align 8
  %arrayidx1168 = getelementptr inbounds i32, ptr %1276, i64 4
  %1277 = load i32, ptr %arrayidx1168, align 4
  %shl1169 = shl i32 %1277, 12
  %1278 = load ptr, ptr %out.addr, align 8
  %arrayidx1170 = getelementptr inbounds i32, ptr %1278, i64 4
  %1279 = load i32, ptr %arrayidx1170, align 4
  %shr1171 = lshr i32 %1279, 20
  %or1172 = or i32 %shl1169, %shr1171
  %1280 = load ptr, ptr %out.addr, align 8
  %arrayidx1173 = getelementptr inbounds i32, ptr %1280, i64 4
  store i32 %or1172, ptr %arrayidx1173, align 4
  %1281 = load ptr, ptr %out.addr, align 8
  %arrayidx1174 = getelementptr inbounds i32, ptr %1281, i64 4
  %1282 = load i32, ptr %arrayidx1174, align 4
  %1283 = load ptr, ptr %out.addr, align 8
  %arrayidx1175 = getelementptr inbounds i32, ptr %1283, i64 0
  %1284 = load i32, ptr %arrayidx1175, align 4
  %add1176 = add i32 %1284, %1282
  store i32 %add1176, ptr %arrayidx1175, align 4
  %1285 = load ptr, ptr %out.addr, align 8
  %arrayidx1177 = getelementptr inbounds i32, ptr %1285, i64 0
  %1286 = load i32, ptr %arrayidx1177, align 4
  %1287 = load ptr, ptr %out.addr, align 8
  %arrayidx1178 = getelementptr inbounds i32, ptr %1287, i64 12
  %1288 = load i32, ptr %arrayidx1178, align 4
  %xor1179 = xor i32 %1288, %1286
  store i32 %xor1179, ptr %arrayidx1178, align 4
  %1289 = load ptr, ptr %out.addr, align 8
  %arrayidx1180 = getelementptr inbounds i32, ptr %1289, i64 12
  %1290 = load i32, ptr %arrayidx1180, align 4
  %shl1181 = shl i32 %1290, 8
  %1291 = load ptr, ptr %out.addr, align 8
  %arrayidx1182 = getelementptr inbounds i32, ptr %1291, i64 12
  %1292 = load i32, ptr %arrayidx1182, align 4
  %shr1183 = lshr i32 %1292, 24
  %or1184 = or i32 %shl1181, %shr1183
  %1293 = load ptr, ptr %out.addr, align 8
  %arrayidx1185 = getelementptr inbounds i32, ptr %1293, i64 12
  store i32 %or1184, ptr %arrayidx1185, align 4
  %1294 = load ptr, ptr %out.addr, align 8
  %arrayidx1186 = getelementptr inbounds i32, ptr %1294, i64 12
  %1295 = load i32, ptr %arrayidx1186, align 4
  %1296 = load ptr, ptr %out.addr, align 8
  %arrayidx1187 = getelementptr inbounds i32, ptr %1296, i64 8
  %1297 = load i32, ptr %arrayidx1187, align 4
  %add1188 = add i32 %1297, %1295
  store i32 %add1188, ptr %arrayidx1187, align 4
  %1298 = load ptr, ptr %out.addr, align 8
  %arrayidx1189 = getelementptr inbounds i32, ptr %1298, i64 8
  %1299 = load i32, ptr %arrayidx1189, align 4
  %1300 = load ptr, ptr %out.addr, align 8
  %arrayidx1190 = getelementptr inbounds i32, ptr %1300, i64 4
  %1301 = load i32, ptr %arrayidx1190, align 4
  %xor1191 = xor i32 %1301, %1299
  store i32 %xor1191, ptr %arrayidx1190, align 4
  %1302 = load ptr, ptr %out.addr, align 8
  %arrayidx1192 = getelementptr inbounds i32, ptr %1302, i64 4
  %1303 = load i32, ptr %arrayidx1192, align 4
  %shl1193 = shl i32 %1303, 7
  %1304 = load ptr, ptr %out.addr, align 8
  %arrayidx1194 = getelementptr inbounds i32, ptr %1304, i64 4
  %1305 = load i32, ptr %arrayidx1194, align 4
  %shr1195 = lshr i32 %1305, 25
  %or1196 = or i32 %shl1193, %shr1195
  %1306 = load ptr, ptr %out.addr, align 8
  %arrayidx1197 = getelementptr inbounds i32, ptr %1306, i64 4
  store i32 %or1196, ptr %arrayidx1197, align 4
  %1307 = load ptr, ptr %out.addr, align 8
  %arrayidx1198 = getelementptr inbounds i32, ptr %1307, i64 5
  %1308 = load i32, ptr %arrayidx1198, align 4
  %1309 = load ptr, ptr %out.addr, align 8
  %arrayidx1199 = getelementptr inbounds i32, ptr %1309, i64 1
  %1310 = load i32, ptr %arrayidx1199, align 4
  %add1200 = add i32 %1310, %1308
  store i32 %add1200, ptr %arrayidx1199, align 4
  %1311 = load ptr, ptr %out.addr, align 8
  %arrayidx1201 = getelementptr inbounds i32, ptr %1311, i64 1
  %1312 = load i32, ptr %arrayidx1201, align 4
  %1313 = load ptr, ptr %out.addr, align 8
  %arrayidx1202 = getelementptr inbounds i32, ptr %1313, i64 13
  %1314 = load i32, ptr %arrayidx1202, align 4
  %xor1203 = xor i32 %1314, %1312
  store i32 %xor1203, ptr %arrayidx1202, align 4
  %1315 = load ptr, ptr %out.addr, align 8
  %arrayidx1204 = getelementptr inbounds i32, ptr %1315, i64 13
  %1316 = load i32, ptr %arrayidx1204, align 4
  %shl1205 = shl i32 %1316, 16
  %1317 = load ptr, ptr %out.addr, align 8
  %arrayidx1206 = getelementptr inbounds i32, ptr %1317, i64 13
  %1318 = load i32, ptr %arrayidx1206, align 4
  %shr1207 = lshr i32 %1318, 16
  %or1208 = or i32 %shl1205, %shr1207
  %1319 = load ptr, ptr %out.addr, align 8
  %arrayidx1209 = getelementptr inbounds i32, ptr %1319, i64 13
  store i32 %or1208, ptr %arrayidx1209, align 4
  %1320 = load ptr, ptr %out.addr, align 8
  %arrayidx1210 = getelementptr inbounds i32, ptr %1320, i64 13
  %1321 = load i32, ptr %arrayidx1210, align 4
  %1322 = load ptr, ptr %out.addr, align 8
  %arrayidx1211 = getelementptr inbounds i32, ptr %1322, i64 9
  %1323 = load i32, ptr %arrayidx1211, align 4
  %add1212 = add i32 %1323, %1321
  store i32 %add1212, ptr %arrayidx1211, align 4
  %1324 = load ptr, ptr %out.addr, align 8
  %arrayidx1213 = getelementptr inbounds i32, ptr %1324, i64 9
  %1325 = load i32, ptr %arrayidx1213, align 4
  %1326 = load ptr, ptr %out.addr, align 8
  %arrayidx1214 = getelementptr inbounds i32, ptr %1326, i64 5
  %1327 = load i32, ptr %arrayidx1214, align 4
  %xor1215 = xor i32 %1327, %1325
  store i32 %xor1215, ptr %arrayidx1214, align 4
  %1328 = load ptr, ptr %out.addr, align 8
  %arrayidx1216 = getelementptr inbounds i32, ptr %1328, i64 5
  %1329 = load i32, ptr %arrayidx1216, align 4
  %shl1217 = shl i32 %1329, 12
  %1330 = load ptr, ptr %out.addr, align 8
  %arrayidx1218 = getelementptr inbounds i32, ptr %1330, i64 5
  %1331 = load i32, ptr %arrayidx1218, align 4
  %shr1219 = lshr i32 %1331, 20
  %or1220 = or i32 %shl1217, %shr1219
  %1332 = load ptr, ptr %out.addr, align 8
  %arrayidx1221 = getelementptr inbounds i32, ptr %1332, i64 5
  store i32 %or1220, ptr %arrayidx1221, align 4
  %1333 = load ptr, ptr %out.addr, align 8
  %arrayidx1222 = getelementptr inbounds i32, ptr %1333, i64 5
  %1334 = load i32, ptr %arrayidx1222, align 4
  %1335 = load ptr, ptr %out.addr, align 8
  %arrayidx1223 = getelementptr inbounds i32, ptr %1335, i64 1
  %1336 = load i32, ptr %arrayidx1223, align 4
  %add1224 = add i32 %1336, %1334
  store i32 %add1224, ptr %arrayidx1223, align 4
  %1337 = load ptr, ptr %out.addr, align 8
  %arrayidx1225 = getelementptr inbounds i32, ptr %1337, i64 1
  %1338 = load i32, ptr %arrayidx1225, align 4
  %1339 = load ptr, ptr %out.addr, align 8
  %arrayidx1226 = getelementptr inbounds i32, ptr %1339, i64 13
  %1340 = load i32, ptr %arrayidx1226, align 4
  %xor1227 = xor i32 %1340, %1338
  store i32 %xor1227, ptr %arrayidx1226, align 4
  %1341 = load ptr, ptr %out.addr, align 8
  %arrayidx1228 = getelementptr inbounds i32, ptr %1341, i64 13
  %1342 = load i32, ptr %arrayidx1228, align 4
  %shl1229 = shl i32 %1342, 8
  %1343 = load ptr, ptr %out.addr, align 8
  %arrayidx1230 = getelementptr inbounds i32, ptr %1343, i64 13
  %1344 = load i32, ptr %arrayidx1230, align 4
  %shr1231 = lshr i32 %1344, 24
  %or1232 = or i32 %shl1229, %shr1231
  %1345 = load ptr, ptr %out.addr, align 8
  %arrayidx1233 = getelementptr inbounds i32, ptr %1345, i64 13
  store i32 %or1232, ptr %arrayidx1233, align 4
  %1346 = load ptr, ptr %out.addr, align 8
  %arrayidx1234 = getelementptr inbounds i32, ptr %1346, i64 13
  %1347 = load i32, ptr %arrayidx1234, align 4
  %1348 = load ptr, ptr %out.addr, align 8
  %arrayidx1235 = getelementptr inbounds i32, ptr %1348, i64 9
  %1349 = load i32, ptr %arrayidx1235, align 4
  %add1236 = add i32 %1349, %1347
  store i32 %add1236, ptr %arrayidx1235, align 4
  %1350 = load ptr, ptr %out.addr, align 8
  %arrayidx1237 = getelementptr inbounds i32, ptr %1350, i64 9
  %1351 = load i32, ptr %arrayidx1237, align 4
  %1352 = load ptr, ptr %out.addr, align 8
  %arrayidx1238 = getelementptr inbounds i32, ptr %1352, i64 5
  %1353 = load i32, ptr %arrayidx1238, align 4
  %xor1239 = xor i32 %1353, %1351
  store i32 %xor1239, ptr %arrayidx1238, align 4
  %1354 = load ptr, ptr %out.addr, align 8
  %arrayidx1240 = getelementptr inbounds i32, ptr %1354, i64 5
  %1355 = load i32, ptr %arrayidx1240, align 4
  %shl1241 = shl i32 %1355, 7
  %1356 = load ptr, ptr %out.addr, align 8
  %arrayidx1242 = getelementptr inbounds i32, ptr %1356, i64 5
  %1357 = load i32, ptr %arrayidx1242, align 4
  %shr1243 = lshr i32 %1357, 25
  %or1244 = or i32 %shl1241, %shr1243
  %1358 = load ptr, ptr %out.addr, align 8
  %arrayidx1245 = getelementptr inbounds i32, ptr %1358, i64 5
  store i32 %or1244, ptr %arrayidx1245, align 4
  %1359 = load ptr, ptr %out.addr, align 8
  %arrayidx1246 = getelementptr inbounds i32, ptr %1359, i64 6
  %1360 = load i32, ptr %arrayidx1246, align 4
  %1361 = load ptr, ptr %out.addr, align 8
  %arrayidx1247 = getelementptr inbounds i32, ptr %1361, i64 2
  %1362 = load i32, ptr %arrayidx1247, align 4
  %add1248 = add i32 %1362, %1360
  store i32 %add1248, ptr %arrayidx1247, align 4
  %1363 = load ptr, ptr %out.addr, align 8
  %arrayidx1249 = getelementptr inbounds i32, ptr %1363, i64 2
  %1364 = load i32, ptr %arrayidx1249, align 4
  %1365 = load ptr, ptr %out.addr, align 8
  %arrayidx1250 = getelementptr inbounds i32, ptr %1365, i64 14
  %1366 = load i32, ptr %arrayidx1250, align 4
  %xor1251 = xor i32 %1366, %1364
  store i32 %xor1251, ptr %arrayidx1250, align 4
  %1367 = load ptr, ptr %out.addr, align 8
  %arrayidx1252 = getelementptr inbounds i32, ptr %1367, i64 14
  %1368 = load i32, ptr %arrayidx1252, align 4
  %shl1253 = shl i32 %1368, 16
  %1369 = load ptr, ptr %out.addr, align 8
  %arrayidx1254 = getelementptr inbounds i32, ptr %1369, i64 14
  %1370 = load i32, ptr %arrayidx1254, align 4
  %shr1255 = lshr i32 %1370, 16
  %or1256 = or i32 %shl1253, %shr1255
  %1371 = load ptr, ptr %out.addr, align 8
  %arrayidx1257 = getelementptr inbounds i32, ptr %1371, i64 14
  store i32 %or1256, ptr %arrayidx1257, align 4
  %1372 = load ptr, ptr %out.addr, align 8
  %arrayidx1258 = getelementptr inbounds i32, ptr %1372, i64 14
  %1373 = load i32, ptr %arrayidx1258, align 4
  %1374 = load ptr, ptr %out.addr, align 8
  %arrayidx1259 = getelementptr inbounds i32, ptr %1374, i64 10
  %1375 = load i32, ptr %arrayidx1259, align 4
  %add1260 = add i32 %1375, %1373
  store i32 %add1260, ptr %arrayidx1259, align 4
  %1376 = load ptr, ptr %out.addr, align 8
  %arrayidx1261 = getelementptr inbounds i32, ptr %1376, i64 10
  %1377 = load i32, ptr %arrayidx1261, align 4
  %1378 = load ptr, ptr %out.addr, align 8
  %arrayidx1262 = getelementptr inbounds i32, ptr %1378, i64 6
  %1379 = load i32, ptr %arrayidx1262, align 4
  %xor1263 = xor i32 %1379, %1377
  store i32 %xor1263, ptr %arrayidx1262, align 4
  %1380 = load ptr, ptr %out.addr, align 8
  %arrayidx1264 = getelementptr inbounds i32, ptr %1380, i64 6
  %1381 = load i32, ptr %arrayidx1264, align 4
  %shl1265 = shl i32 %1381, 12
  %1382 = load ptr, ptr %out.addr, align 8
  %arrayidx1266 = getelementptr inbounds i32, ptr %1382, i64 6
  %1383 = load i32, ptr %arrayidx1266, align 4
  %shr1267 = lshr i32 %1383, 20
  %or1268 = or i32 %shl1265, %shr1267
  %1384 = load ptr, ptr %out.addr, align 8
  %arrayidx1269 = getelementptr inbounds i32, ptr %1384, i64 6
  store i32 %or1268, ptr %arrayidx1269, align 4
  %1385 = load ptr, ptr %out.addr, align 8
  %arrayidx1270 = getelementptr inbounds i32, ptr %1385, i64 6
  %1386 = load i32, ptr %arrayidx1270, align 4
  %1387 = load ptr, ptr %out.addr, align 8
  %arrayidx1271 = getelementptr inbounds i32, ptr %1387, i64 2
  %1388 = load i32, ptr %arrayidx1271, align 4
  %add1272 = add i32 %1388, %1386
  store i32 %add1272, ptr %arrayidx1271, align 4
  %1389 = load ptr, ptr %out.addr, align 8
  %arrayidx1273 = getelementptr inbounds i32, ptr %1389, i64 2
  %1390 = load i32, ptr %arrayidx1273, align 4
  %1391 = load ptr, ptr %out.addr, align 8
  %arrayidx1274 = getelementptr inbounds i32, ptr %1391, i64 14
  %1392 = load i32, ptr %arrayidx1274, align 4
  %xor1275 = xor i32 %1392, %1390
  store i32 %xor1275, ptr %arrayidx1274, align 4
  %1393 = load ptr, ptr %out.addr, align 8
  %arrayidx1276 = getelementptr inbounds i32, ptr %1393, i64 14
  %1394 = load i32, ptr %arrayidx1276, align 4
  %shl1277 = shl i32 %1394, 8
  %1395 = load ptr, ptr %out.addr, align 8
  %arrayidx1278 = getelementptr inbounds i32, ptr %1395, i64 14
  %1396 = load i32, ptr %arrayidx1278, align 4
  %shr1279 = lshr i32 %1396, 24
  %or1280 = or i32 %shl1277, %shr1279
  %1397 = load ptr, ptr %out.addr, align 8
  %arrayidx1281 = getelementptr inbounds i32, ptr %1397, i64 14
  store i32 %or1280, ptr %arrayidx1281, align 4
  %1398 = load ptr, ptr %out.addr, align 8
  %arrayidx1282 = getelementptr inbounds i32, ptr %1398, i64 14
  %1399 = load i32, ptr %arrayidx1282, align 4
  %1400 = load ptr, ptr %out.addr, align 8
  %arrayidx1283 = getelementptr inbounds i32, ptr %1400, i64 10
  %1401 = load i32, ptr %arrayidx1283, align 4
  %add1284 = add i32 %1401, %1399
  store i32 %add1284, ptr %arrayidx1283, align 4
  %1402 = load ptr, ptr %out.addr, align 8
  %arrayidx1285 = getelementptr inbounds i32, ptr %1402, i64 10
  %1403 = load i32, ptr %arrayidx1285, align 4
  %1404 = load ptr, ptr %out.addr, align 8
  %arrayidx1286 = getelementptr inbounds i32, ptr %1404, i64 6
  %1405 = load i32, ptr %arrayidx1286, align 4
  %xor1287 = xor i32 %1405, %1403
  store i32 %xor1287, ptr %arrayidx1286, align 4
  %1406 = load ptr, ptr %out.addr, align 8
  %arrayidx1288 = getelementptr inbounds i32, ptr %1406, i64 6
  %1407 = load i32, ptr %arrayidx1288, align 4
  %shl1289 = shl i32 %1407, 7
  %1408 = load ptr, ptr %out.addr, align 8
  %arrayidx1290 = getelementptr inbounds i32, ptr %1408, i64 6
  %1409 = load i32, ptr %arrayidx1290, align 4
  %shr1291 = lshr i32 %1409, 25
  %or1292 = or i32 %shl1289, %shr1291
  %1410 = load ptr, ptr %out.addr, align 8
  %arrayidx1293 = getelementptr inbounds i32, ptr %1410, i64 6
  store i32 %or1292, ptr %arrayidx1293, align 4
  %1411 = load ptr, ptr %out.addr, align 8
  %arrayidx1294 = getelementptr inbounds i32, ptr %1411, i64 7
  %1412 = load i32, ptr %arrayidx1294, align 4
  %1413 = load ptr, ptr %out.addr, align 8
  %arrayidx1295 = getelementptr inbounds i32, ptr %1413, i64 3
  %1414 = load i32, ptr %arrayidx1295, align 4
  %add1296 = add i32 %1414, %1412
  store i32 %add1296, ptr %arrayidx1295, align 4
  %1415 = load ptr, ptr %out.addr, align 8
  %arrayidx1297 = getelementptr inbounds i32, ptr %1415, i64 3
  %1416 = load i32, ptr %arrayidx1297, align 4
  %1417 = load ptr, ptr %out.addr, align 8
  %arrayidx1298 = getelementptr inbounds i32, ptr %1417, i64 15
  %1418 = load i32, ptr %arrayidx1298, align 4
  %xor1299 = xor i32 %1418, %1416
  store i32 %xor1299, ptr %arrayidx1298, align 4
  %1419 = load ptr, ptr %out.addr, align 8
  %arrayidx1300 = getelementptr inbounds i32, ptr %1419, i64 15
  %1420 = load i32, ptr %arrayidx1300, align 4
  %shl1301 = shl i32 %1420, 16
  %1421 = load ptr, ptr %out.addr, align 8
  %arrayidx1302 = getelementptr inbounds i32, ptr %1421, i64 15
  %1422 = load i32, ptr %arrayidx1302, align 4
  %shr1303 = lshr i32 %1422, 16
  %or1304 = or i32 %shl1301, %shr1303
  %1423 = load ptr, ptr %out.addr, align 8
  %arrayidx1305 = getelementptr inbounds i32, ptr %1423, i64 15
  store i32 %or1304, ptr %arrayidx1305, align 4
  %1424 = load ptr, ptr %out.addr, align 8
  %arrayidx1306 = getelementptr inbounds i32, ptr %1424, i64 15
  %1425 = load i32, ptr %arrayidx1306, align 4
  %1426 = load ptr, ptr %out.addr, align 8
  %arrayidx1307 = getelementptr inbounds i32, ptr %1426, i64 11
  %1427 = load i32, ptr %arrayidx1307, align 4
  %add1308 = add i32 %1427, %1425
  store i32 %add1308, ptr %arrayidx1307, align 4
  %1428 = load ptr, ptr %out.addr, align 8
  %arrayidx1309 = getelementptr inbounds i32, ptr %1428, i64 11
  %1429 = load i32, ptr %arrayidx1309, align 4
  %1430 = load ptr, ptr %out.addr, align 8
  %arrayidx1310 = getelementptr inbounds i32, ptr %1430, i64 7
  %1431 = load i32, ptr %arrayidx1310, align 4
  %xor1311 = xor i32 %1431, %1429
  store i32 %xor1311, ptr %arrayidx1310, align 4
  %1432 = load ptr, ptr %out.addr, align 8
  %arrayidx1312 = getelementptr inbounds i32, ptr %1432, i64 7
  %1433 = load i32, ptr %arrayidx1312, align 4
  %shl1313 = shl i32 %1433, 12
  %1434 = load ptr, ptr %out.addr, align 8
  %arrayidx1314 = getelementptr inbounds i32, ptr %1434, i64 7
  %1435 = load i32, ptr %arrayidx1314, align 4
  %shr1315 = lshr i32 %1435, 20
  %or1316 = or i32 %shl1313, %shr1315
  %1436 = load ptr, ptr %out.addr, align 8
  %arrayidx1317 = getelementptr inbounds i32, ptr %1436, i64 7
  store i32 %or1316, ptr %arrayidx1317, align 4
  %1437 = load ptr, ptr %out.addr, align 8
  %arrayidx1318 = getelementptr inbounds i32, ptr %1437, i64 7
  %1438 = load i32, ptr %arrayidx1318, align 4
  %1439 = load ptr, ptr %out.addr, align 8
  %arrayidx1319 = getelementptr inbounds i32, ptr %1439, i64 3
  %1440 = load i32, ptr %arrayidx1319, align 4
  %add1320 = add i32 %1440, %1438
  store i32 %add1320, ptr %arrayidx1319, align 4
  %1441 = load ptr, ptr %out.addr, align 8
  %arrayidx1321 = getelementptr inbounds i32, ptr %1441, i64 3
  %1442 = load i32, ptr %arrayidx1321, align 4
  %1443 = load ptr, ptr %out.addr, align 8
  %arrayidx1322 = getelementptr inbounds i32, ptr %1443, i64 15
  %1444 = load i32, ptr %arrayidx1322, align 4
  %xor1323 = xor i32 %1444, %1442
  store i32 %xor1323, ptr %arrayidx1322, align 4
  %1445 = load ptr, ptr %out.addr, align 8
  %arrayidx1324 = getelementptr inbounds i32, ptr %1445, i64 15
  %1446 = load i32, ptr %arrayidx1324, align 4
  %shl1325 = shl i32 %1446, 8
  %1447 = load ptr, ptr %out.addr, align 8
  %arrayidx1326 = getelementptr inbounds i32, ptr %1447, i64 15
  %1448 = load i32, ptr %arrayidx1326, align 4
  %shr1327 = lshr i32 %1448, 24
  %or1328 = or i32 %shl1325, %shr1327
  %1449 = load ptr, ptr %out.addr, align 8
  %arrayidx1329 = getelementptr inbounds i32, ptr %1449, i64 15
  store i32 %or1328, ptr %arrayidx1329, align 4
  %1450 = load ptr, ptr %out.addr, align 8
  %arrayidx1330 = getelementptr inbounds i32, ptr %1450, i64 15
  %1451 = load i32, ptr %arrayidx1330, align 4
  %1452 = load ptr, ptr %out.addr, align 8
  %arrayidx1331 = getelementptr inbounds i32, ptr %1452, i64 11
  %1453 = load i32, ptr %arrayidx1331, align 4
  %add1332 = add i32 %1453, %1451
  store i32 %add1332, ptr %arrayidx1331, align 4
  %1454 = load ptr, ptr %out.addr, align 8
  %arrayidx1333 = getelementptr inbounds i32, ptr %1454, i64 11
  %1455 = load i32, ptr %arrayidx1333, align 4
  %1456 = load ptr, ptr %out.addr, align 8
  %arrayidx1334 = getelementptr inbounds i32, ptr %1456, i64 7
  %1457 = load i32, ptr %arrayidx1334, align 4
  %xor1335 = xor i32 %1457, %1455
  store i32 %xor1335, ptr %arrayidx1334, align 4
  %1458 = load ptr, ptr %out.addr, align 8
  %arrayidx1336 = getelementptr inbounds i32, ptr %1458, i64 7
  %1459 = load i32, ptr %arrayidx1336, align 4
  %shl1337 = shl i32 %1459, 7
  %1460 = load ptr, ptr %out.addr, align 8
  %arrayidx1338 = getelementptr inbounds i32, ptr %1460, i64 7
  %1461 = load i32, ptr %arrayidx1338, align 4
  %shr1339 = lshr i32 %1461, 25
  %or1340 = or i32 %shl1337, %shr1339
  %1462 = load ptr, ptr %out.addr, align 8
  %arrayidx1341 = getelementptr inbounds i32, ptr %1462, i64 7
  store i32 %or1340, ptr %arrayidx1341, align 4
  %1463 = load ptr, ptr %out.addr, align 8
  %arrayidx1342 = getelementptr inbounds i32, ptr %1463, i64 5
  %1464 = load i32, ptr %arrayidx1342, align 4
  %1465 = load ptr, ptr %out.addr, align 8
  %arrayidx1343 = getelementptr inbounds i32, ptr %1465, i64 0
  %1466 = load i32, ptr %arrayidx1343, align 4
  %add1344 = add i32 %1466, %1464
  store i32 %add1344, ptr %arrayidx1343, align 4
  %1467 = load ptr, ptr %out.addr, align 8
  %arrayidx1345 = getelementptr inbounds i32, ptr %1467, i64 0
  %1468 = load i32, ptr %arrayidx1345, align 4
  %1469 = load ptr, ptr %out.addr, align 8
  %arrayidx1346 = getelementptr inbounds i32, ptr %1469, i64 15
  %1470 = load i32, ptr %arrayidx1346, align 4
  %xor1347 = xor i32 %1470, %1468
  store i32 %xor1347, ptr %arrayidx1346, align 4
  %1471 = load ptr, ptr %out.addr, align 8
  %arrayidx1348 = getelementptr inbounds i32, ptr %1471, i64 15
  %1472 = load i32, ptr %arrayidx1348, align 4
  %shl1349 = shl i32 %1472, 16
  %1473 = load ptr, ptr %out.addr, align 8
  %arrayidx1350 = getelementptr inbounds i32, ptr %1473, i64 15
  %1474 = load i32, ptr %arrayidx1350, align 4
  %shr1351 = lshr i32 %1474, 16
  %or1352 = or i32 %shl1349, %shr1351
  %1475 = load ptr, ptr %out.addr, align 8
  %arrayidx1353 = getelementptr inbounds i32, ptr %1475, i64 15
  store i32 %or1352, ptr %arrayidx1353, align 4
  %1476 = load ptr, ptr %out.addr, align 8
  %arrayidx1354 = getelementptr inbounds i32, ptr %1476, i64 15
  %1477 = load i32, ptr %arrayidx1354, align 4
  %1478 = load ptr, ptr %out.addr, align 8
  %arrayidx1355 = getelementptr inbounds i32, ptr %1478, i64 10
  %1479 = load i32, ptr %arrayidx1355, align 4
  %add1356 = add i32 %1479, %1477
  store i32 %add1356, ptr %arrayidx1355, align 4
  %1480 = load ptr, ptr %out.addr, align 8
  %arrayidx1357 = getelementptr inbounds i32, ptr %1480, i64 10
  %1481 = load i32, ptr %arrayidx1357, align 4
  %1482 = load ptr, ptr %out.addr, align 8
  %arrayidx1358 = getelementptr inbounds i32, ptr %1482, i64 5
  %1483 = load i32, ptr %arrayidx1358, align 4
  %xor1359 = xor i32 %1483, %1481
  store i32 %xor1359, ptr %arrayidx1358, align 4
  %1484 = load ptr, ptr %out.addr, align 8
  %arrayidx1360 = getelementptr inbounds i32, ptr %1484, i64 5
  %1485 = load i32, ptr %arrayidx1360, align 4
  %shl1361 = shl i32 %1485, 12
  %1486 = load ptr, ptr %out.addr, align 8
  %arrayidx1362 = getelementptr inbounds i32, ptr %1486, i64 5
  %1487 = load i32, ptr %arrayidx1362, align 4
  %shr1363 = lshr i32 %1487, 20
  %or1364 = or i32 %shl1361, %shr1363
  %1488 = load ptr, ptr %out.addr, align 8
  %arrayidx1365 = getelementptr inbounds i32, ptr %1488, i64 5
  store i32 %or1364, ptr %arrayidx1365, align 4
  %1489 = load ptr, ptr %out.addr, align 8
  %arrayidx1366 = getelementptr inbounds i32, ptr %1489, i64 5
  %1490 = load i32, ptr %arrayidx1366, align 4
  %1491 = load ptr, ptr %out.addr, align 8
  %arrayidx1367 = getelementptr inbounds i32, ptr %1491, i64 0
  %1492 = load i32, ptr %arrayidx1367, align 4
  %add1368 = add i32 %1492, %1490
  store i32 %add1368, ptr %arrayidx1367, align 4
  %1493 = load ptr, ptr %out.addr, align 8
  %arrayidx1369 = getelementptr inbounds i32, ptr %1493, i64 0
  %1494 = load i32, ptr %arrayidx1369, align 4
  %1495 = load ptr, ptr %out.addr, align 8
  %arrayidx1370 = getelementptr inbounds i32, ptr %1495, i64 15
  %1496 = load i32, ptr %arrayidx1370, align 4
  %xor1371 = xor i32 %1496, %1494
  store i32 %xor1371, ptr %arrayidx1370, align 4
  %1497 = load ptr, ptr %out.addr, align 8
  %arrayidx1372 = getelementptr inbounds i32, ptr %1497, i64 15
  %1498 = load i32, ptr %arrayidx1372, align 4
  %shl1373 = shl i32 %1498, 8
  %1499 = load ptr, ptr %out.addr, align 8
  %arrayidx1374 = getelementptr inbounds i32, ptr %1499, i64 15
  %1500 = load i32, ptr %arrayidx1374, align 4
  %shr1375 = lshr i32 %1500, 24
  %or1376 = or i32 %shl1373, %shr1375
  %1501 = load ptr, ptr %out.addr, align 8
  %arrayidx1377 = getelementptr inbounds i32, ptr %1501, i64 15
  store i32 %or1376, ptr %arrayidx1377, align 4
  %1502 = load ptr, ptr %out.addr, align 8
  %arrayidx1378 = getelementptr inbounds i32, ptr %1502, i64 15
  %1503 = load i32, ptr %arrayidx1378, align 4
  %1504 = load ptr, ptr %out.addr, align 8
  %arrayidx1379 = getelementptr inbounds i32, ptr %1504, i64 10
  %1505 = load i32, ptr %arrayidx1379, align 4
  %add1380 = add i32 %1505, %1503
  store i32 %add1380, ptr %arrayidx1379, align 4
  %1506 = load ptr, ptr %out.addr, align 8
  %arrayidx1381 = getelementptr inbounds i32, ptr %1506, i64 10
  %1507 = load i32, ptr %arrayidx1381, align 4
  %1508 = load ptr, ptr %out.addr, align 8
  %arrayidx1382 = getelementptr inbounds i32, ptr %1508, i64 5
  %1509 = load i32, ptr %arrayidx1382, align 4
  %xor1383 = xor i32 %1509, %1507
  store i32 %xor1383, ptr %arrayidx1382, align 4
  %1510 = load ptr, ptr %out.addr, align 8
  %arrayidx1384 = getelementptr inbounds i32, ptr %1510, i64 5
  %1511 = load i32, ptr %arrayidx1384, align 4
  %shl1385 = shl i32 %1511, 7
  %1512 = load ptr, ptr %out.addr, align 8
  %arrayidx1386 = getelementptr inbounds i32, ptr %1512, i64 5
  %1513 = load i32, ptr %arrayidx1386, align 4
  %shr1387 = lshr i32 %1513, 25
  %or1388 = or i32 %shl1385, %shr1387
  %1514 = load ptr, ptr %out.addr, align 8
  %arrayidx1389 = getelementptr inbounds i32, ptr %1514, i64 5
  store i32 %or1388, ptr %arrayidx1389, align 4
  %1515 = load ptr, ptr %out.addr, align 8
  %arrayidx1390 = getelementptr inbounds i32, ptr %1515, i64 6
  %1516 = load i32, ptr %arrayidx1390, align 4
  %1517 = load ptr, ptr %out.addr, align 8
  %arrayidx1391 = getelementptr inbounds i32, ptr %1517, i64 1
  %1518 = load i32, ptr %arrayidx1391, align 4
  %add1392 = add i32 %1518, %1516
  store i32 %add1392, ptr %arrayidx1391, align 4
  %1519 = load ptr, ptr %out.addr, align 8
  %arrayidx1393 = getelementptr inbounds i32, ptr %1519, i64 1
  %1520 = load i32, ptr %arrayidx1393, align 4
  %1521 = load ptr, ptr %out.addr, align 8
  %arrayidx1394 = getelementptr inbounds i32, ptr %1521, i64 12
  %1522 = load i32, ptr %arrayidx1394, align 4
  %xor1395 = xor i32 %1522, %1520
  store i32 %xor1395, ptr %arrayidx1394, align 4
  %1523 = load ptr, ptr %out.addr, align 8
  %arrayidx1396 = getelementptr inbounds i32, ptr %1523, i64 12
  %1524 = load i32, ptr %arrayidx1396, align 4
  %shl1397 = shl i32 %1524, 16
  %1525 = load ptr, ptr %out.addr, align 8
  %arrayidx1398 = getelementptr inbounds i32, ptr %1525, i64 12
  %1526 = load i32, ptr %arrayidx1398, align 4
  %shr1399 = lshr i32 %1526, 16
  %or1400 = or i32 %shl1397, %shr1399
  %1527 = load ptr, ptr %out.addr, align 8
  %arrayidx1401 = getelementptr inbounds i32, ptr %1527, i64 12
  store i32 %or1400, ptr %arrayidx1401, align 4
  %1528 = load ptr, ptr %out.addr, align 8
  %arrayidx1402 = getelementptr inbounds i32, ptr %1528, i64 12
  %1529 = load i32, ptr %arrayidx1402, align 4
  %1530 = load ptr, ptr %out.addr, align 8
  %arrayidx1403 = getelementptr inbounds i32, ptr %1530, i64 11
  %1531 = load i32, ptr %arrayidx1403, align 4
  %add1404 = add i32 %1531, %1529
  store i32 %add1404, ptr %arrayidx1403, align 4
  %1532 = load ptr, ptr %out.addr, align 8
  %arrayidx1405 = getelementptr inbounds i32, ptr %1532, i64 11
  %1533 = load i32, ptr %arrayidx1405, align 4
  %1534 = load ptr, ptr %out.addr, align 8
  %arrayidx1406 = getelementptr inbounds i32, ptr %1534, i64 6
  %1535 = load i32, ptr %arrayidx1406, align 4
  %xor1407 = xor i32 %1535, %1533
  store i32 %xor1407, ptr %arrayidx1406, align 4
  %1536 = load ptr, ptr %out.addr, align 8
  %arrayidx1408 = getelementptr inbounds i32, ptr %1536, i64 6
  %1537 = load i32, ptr %arrayidx1408, align 4
  %shl1409 = shl i32 %1537, 12
  %1538 = load ptr, ptr %out.addr, align 8
  %arrayidx1410 = getelementptr inbounds i32, ptr %1538, i64 6
  %1539 = load i32, ptr %arrayidx1410, align 4
  %shr1411 = lshr i32 %1539, 20
  %or1412 = or i32 %shl1409, %shr1411
  %1540 = load ptr, ptr %out.addr, align 8
  %arrayidx1413 = getelementptr inbounds i32, ptr %1540, i64 6
  store i32 %or1412, ptr %arrayidx1413, align 4
  %1541 = load ptr, ptr %out.addr, align 8
  %arrayidx1414 = getelementptr inbounds i32, ptr %1541, i64 6
  %1542 = load i32, ptr %arrayidx1414, align 4
  %1543 = load ptr, ptr %out.addr, align 8
  %arrayidx1415 = getelementptr inbounds i32, ptr %1543, i64 1
  %1544 = load i32, ptr %arrayidx1415, align 4
  %add1416 = add i32 %1544, %1542
  store i32 %add1416, ptr %arrayidx1415, align 4
  %1545 = load ptr, ptr %out.addr, align 8
  %arrayidx1417 = getelementptr inbounds i32, ptr %1545, i64 1
  %1546 = load i32, ptr %arrayidx1417, align 4
  %1547 = load ptr, ptr %out.addr, align 8
  %arrayidx1418 = getelementptr inbounds i32, ptr %1547, i64 12
  %1548 = load i32, ptr %arrayidx1418, align 4
  %xor1419 = xor i32 %1548, %1546
  store i32 %xor1419, ptr %arrayidx1418, align 4
  %1549 = load ptr, ptr %out.addr, align 8
  %arrayidx1420 = getelementptr inbounds i32, ptr %1549, i64 12
  %1550 = load i32, ptr %arrayidx1420, align 4
  %shl1421 = shl i32 %1550, 8
  %1551 = load ptr, ptr %out.addr, align 8
  %arrayidx1422 = getelementptr inbounds i32, ptr %1551, i64 12
  %1552 = load i32, ptr %arrayidx1422, align 4
  %shr1423 = lshr i32 %1552, 24
  %or1424 = or i32 %shl1421, %shr1423
  %1553 = load ptr, ptr %out.addr, align 8
  %arrayidx1425 = getelementptr inbounds i32, ptr %1553, i64 12
  store i32 %or1424, ptr %arrayidx1425, align 4
  %1554 = load ptr, ptr %out.addr, align 8
  %arrayidx1426 = getelementptr inbounds i32, ptr %1554, i64 12
  %1555 = load i32, ptr %arrayidx1426, align 4
  %1556 = load ptr, ptr %out.addr, align 8
  %arrayidx1427 = getelementptr inbounds i32, ptr %1556, i64 11
  %1557 = load i32, ptr %arrayidx1427, align 4
  %add1428 = add i32 %1557, %1555
  store i32 %add1428, ptr %arrayidx1427, align 4
  %1558 = load ptr, ptr %out.addr, align 8
  %arrayidx1429 = getelementptr inbounds i32, ptr %1558, i64 11
  %1559 = load i32, ptr %arrayidx1429, align 4
  %1560 = load ptr, ptr %out.addr, align 8
  %arrayidx1430 = getelementptr inbounds i32, ptr %1560, i64 6
  %1561 = load i32, ptr %arrayidx1430, align 4
  %xor1431 = xor i32 %1561, %1559
  store i32 %xor1431, ptr %arrayidx1430, align 4
  %1562 = load ptr, ptr %out.addr, align 8
  %arrayidx1432 = getelementptr inbounds i32, ptr %1562, i64 6
  %1563 = load i32, ptr %arrayidx1432, align 4
  %shl1433 = shl i32 %1563, 7
  %1564 = load ptr, ptr %out.addr, align 8
  %arrayidx1434 = getelementptr inbounds i32, ptr %1564, i64 6
  %1565 = load i32, ptr %arrayidx1434, align 4
  %shr1435 = lshr i32 %1565, 25
  %or1436 = or i32 %shl1433, %shr1435
  %1566 = load ptr, ptr %out.addr, align 8
  %arrayidx1437 = getelementptr inbounds i32, ptr %1566, i64 6
  store i32 %or1436, ptr %arrayidx1437, align 4
  %1567 = load ptr, ptr %out.addr, align 8
  %arrayidx1438 = getelementptr inbounds i32, ptr %1567, i64 7
  %1568 = load i32, ptr %arrayidx1438, align 4
  %1569 = load ptr, ptr %out.addr, align 8
  %arrayidx1439 = getelementptr inbounds i32, ptr %1569, i64 2
  %1570 = load i32, ptr %arrayidx1439, align 4
  %add1440 = add i32 %1570, %1568
  store i32 %add1440, ptr %arrayidx1439, align 4
  %1571 = load ptr, ptr %out.addr, align 8
  %arrayidx1441 = getelementptr inbounds i32, ptr %1571, i64 2
  %1572 = load i32, ptr %arrayidx1441, align 4
  %1573 = load ptr, ptr %out.addr, align 8
  %arrayidx1442 = getelementptr inbounds i32, ptr %1573, i64 13
  %1574 = load i32, ptr %arrayidx1442, align 4
  %xor1443 = xor i32 %1574, %1572
  store i32 %xor1443, ptr %arrayidx1442, align 4
  %1575 = load ptr, ptr %out.addr, align 8
  %arrayidx1444 = getelementptr inbounds i32, ptr %1575, i64 13
  %1576 = load i32, ptr %arrayidx1444, align 4
  %shl1445 = shl i32 %1576, 16
  %1577 = load ptr, ptr %out.addr, align 8
  %arrayidx1446 = getelementptr inbounds i32, ptr %1577, i64 13
  %1578 = load i32, ptr %arrayidx1446, align 4
  %shr1447 = lshr i32 %1578, 16
  %or1448 = or i32 %shl1445, %shr1447
  %1579 = load ptr, ptr %out.addr, align 8
  %arrayidx1449 = getelementptr inbounds i32, ptr %1579, i64 13
  store i32 %or1448, ptr %arrayidx1449, align 4
  %1580 = load ptr, ptr %out.addr, align 8
  %arrayidx1450 = getelementptr inbounds i32, ptr %1580, i64 13
  %1581 = load i32, ptr %arrayidx1450, align 4
  %1582 = load ptr, ptr %out.addr, align 8
  %arrayidx1451 = getelementptr inbounds i32, ptr %1582, i64 8
  %1583 = load i32, ptr %arrayidx1451, align 4
  %add1452 = add i32 %1583, %1581
  store i32 %add1452, ptr %arrayidx1451, align 4
  %1584 = load ptr, ptr %out.addr, align 8
  %arrayidx1453 = getelementptr inbounds i32, ptr %1584, i64 8
  %1585 = load i32, ptr %arrayidx1453, align 4
  %1586 = load ptr, ptr %out.addr, align 8
  %arrayidx1454 = getelementptr inbounds i32, ptr %1586, i64 7
  %1587 = load i32, ptr %arrayidx1454, align 4
  %xor1455 = xor i32 %1587, %1585
  store i32 %xor1455, ptr %arrayidx1454, align 4
  %1588 = load ptr, ptr %out.addr, align 8
  %arrayidx1456 = getelementptr inbounds i32, ptr %1588, i64 7
  %1589 = load i32, ptr %arrayidx1456, align 4
  %shl1457 = shl i32 %1589, 12
  %1590 = load ptr, ptr %out.addr, align 8
  %arrayidx1458 = getelementptr inbounds i32, ptr %1590, i64 7
  %1591 = load i32, ptr %arrayidx1458, align 4
  %shr1459 = lshr i32 %1591, 20
  %or1460 = or i32 %shl1457, %shr1459
  %1592 = load ptr, ptr %out.addr, align 8
  %arrayidx1461 = getelementptr inbounds i32, ptr %1592, i64 7
  store i32 %or1460, ptr %arrayidx1461, align 4
  %1593 = load ptr, ptr %out.addr, align 8
  %arrayidx1462 = getelementptr inbounds i32, ptr %1593, i64 7
  %1594 = load i32, ptr %arrayidx1462, align 4
  %1595 = load ptr, ptr %out.addr, align 8
  %arrayidx1463 = getelementptr inbounds i32, ptr %1595, i64 2
  %1596 = load i32, ptr %arrayidx1463, align 4
  %add1464 = add i32 %1596, %1594
  store i32 %add1464, ptr %arrayidx1463, align 4
  %1597 = load ptr, ptr %out.addr, align 8
  %arrayidx1465 = getelementptr inbounds i32, ptr %1597, i64 2
  %1598 = load i32, ptr %arrayidx1465, align 4
  %1599 = load ptr, ptr %out.addr, align 8
  %arrayidx1466 = getelementptr inbounds i32, ptr %1599, i64 13
  %1600 = load i32, ptr %arrayidx1466, align 4
  %xor1467 = xor i32 %1600, %1598
  store i32 %xor1467, ptr %arrayidx1466, align 4
  %1601 = load ptr, ptr %out.addr, align 8
  %arrayidx1468 = getelementptr inbounds i32, ptr %1601, i64 13
  %1602 = load i32, ptr %arrayidx1468, align 4
  %shl1469 = shl i32 %1602, 8
  %1603 = load ptr, ptr %out.addr, align 8
  %arrayidx1470 = getelementptr inbounds i32, ptr %1603, i64 13
  %1604 = load i32, ptr %arrayidx1470, align 4
  %shr1471 = lshr i32 %1604, 24
  %or1472 = or i32 %shl1469, %shr1471
  %1605 = load ptr, ptr %out.addr, align 8
  %arrayidx1473 = getelementptr inbounds i32, ptr %1605, i64 13
  store i32 %or1472, ptr %arrayidx1473, align 4
  %1606 = load ptr, ptr %out.addr, align 8
  %arrayidx1474 = getelementptr inbounds i32, ptr %1606, i64 13
  %1607 = load i32, ptr %arrayidx1474, align 4
  %1608 = load ptr, ptr %out.addr, align 8
  %arrayidx1475 = getelementptr inbounds i32, ptr %1608, i64 8
  %1609 = load i32, ptr %arrayidx1475, align 4
  %add1476 = add i32 %1609, %1607
  store i32 %add1476, ptr %arrayidx1475, align 4
  %1610 = load ptr, ptr %out.addr, align 8
  %arrayidx1477 = getelementptr inbounds i32, ptr %1610, i64 8
  %1611 = load i32, ptr %arrayidx1477, align 4
  %1612 = load ptr, ptr %out.addr, align 8
  %arrayidx1478 = getelementptr inbounds i32, ptr %1612, i64 7
  %1613 = load i32, ptr %arrayidx1478, align 4
  %xor1479 = xor i32 %1613, %1611
  store i32 %xor1479, ptr %arrayidx1478, align 4
  %1614 = load ptr, ptr %out.addr, align 8
  %arrayidx1480 = getelementptr inbounds i32, ptr %1614, i64 7
  %1615 = load i32, ptr %arrayidx1480, align 4
  %shl1481 = shl i32 %1615, 7
  %1616 = load ptr, ptr %out.addr, align 8
  %arrayidx1482 = getelementptr inbounds i32, ptr %1616, i64 7
  %1617 = load i32, ptr %arrayidx1482, align 4
  %shr1483 = lshr i32 %1617, 25
  %or1484 = or i32 %shl1481, %shr1483
  %1618 = load ptr, ptr %out.addr, align 8
  %arrayidx1485 = getelementptr inbounds i32, ptr %1618, i64 7
  store i32 %or1484, ptr %arrayidx1485, align 4
  %1619 = load ptr, ptr %out.addr, align 8
  %arrayidx1486 = getelementptr inbounds i32, ptr %1619, i64 4
  %1620 = load i32, ptr %arrayidx1486, align 4
  %1621 = load ptr, ptr %out.addr, align 8
  %arrayidx1487 = getelementptr inbounds i32, ptr %1621, i64 3
  %1622 = load i32, ptr %arrayidx1487, align 4
  %add1488 = add i32 %1622, %1620
  store i32 %add1488, ptr %arrayidx1487, align 4
  %1623 = load ptr, ptr %out.addr, align 8
  %arrayidx1489 = getelementptr inbounds i32, ptr %1623, i64 3
  %1624 = load i32, ptr %arrayidx1489, align 4
  %1625 = load ptr, ptr %out.addr, align 8
  %arrayidx1490 = getelementptr inbounds i32, ptr %1625, i64 14
  %1626 = load i32, ptr %arrayidx1490, align 4
  %xor1491 = xor i32 %1626, %1624
  store i32 %xor1491, ptr %arrayidx1490, align 4
  %1627 = load ptr, ptr %out.addr, align 8
  %arrayidx1492 = getelementptr inbounds i32, ptr %1627, i64 14
  %1628 = load i32, ptr %arrayidx1492, align 4
  %shl1493 = shl i32 %1628, 16
  %1629 = load ptr, ptr %out.addr, align 8
  %arrayidx1494 = getelementptr inbounds i32, ptr %1629, i64 14
  %1630 = load i32, ptr %arrayidx1494, align 4
  %shr1495 = lshr i32 %1630, 16
  %or1496 = or i32 %shl1493, %shr1495
  %1631 = load ptr, ptr %out.addr, align 8
  %arrayidx1497 = getelementptr inbounds i32, ptr %1631, i64 14
  store i32 %or1496, ptr %arrayidx1497, align 4
  %1632 = load ptr, ptr %out.addr, align 8
  %arrayidx1498 = getelementptr inbounds i32, ptr %1632, i64 14
  %1633 = load i32, ptr %arrayidx1498, align 4
  %1634 = load ptr, ptr %out.addr, align 8
  %arrayidx1499 = getelementptr inbounds i32, ptr %1634, i64 9
  %1635 = load i32, ptr %arrayidx1499, align 4
  %add1500 = add i32 %1635, %1633
  store i32 %add1500, ptr %arrayidx1499, align 4
  %1636 = load ptr, ptr %out.addr, align 8
  %arrayidx1501 = getelementptr inbounds i32, ptr %1636, i64 9
  %1637 = load i32, ptr %arrayidx1501, align 4
  %1638 = load ptr, ptr %out.addr, align 8
  %arrayidx1502 = getelementptr inbounds i32, ptr %1638, i64 4
  %1639 = load i32, ptr %arrayidx1502, align 4
  %xor1503 = xor i32 %1639, %1637
  store i32 %xor1503, ptr %arrayidx1502, align 4
  %1640 = load ptr, ptr %out.addr, align 8
  %arrayidx1504 = getelementptr inbounds i32, ptr %1640, i64 4
  %1641 = load i32, ptr %arrayidx1504, align 4
  %shl1505 = shl i32 %1641, 12
  %1642 = load ptr, ptr %out.addr, align 8
  %arrayidx1506 = getelementptr inbounds i32, ptr %1642, i64 4
  %1643 = load i32, ptr %arrayidx1506, align 4
  %shr1507 = lshr i32 %1643, 20
  %or1508 = or i32 %shl1505, %shr1507
  %1644 = load ptr, ptr %out.addr, align 8
  %arrayidx1509 = getelementptr inbounds i32, ptr %1644, i64 4
  store i32 %or1508, ptr %arrayidx1509, align 4
  %1645 = load ptr, ptr %out.addr, align 8
  %arrayidx1510 = getelementptr inbounds i32, ptr %1645, i64 4
  %1646 = load i32, ptr %arrayidx1510, align 4
  %1647 = load ptr, ptr %out.addr, align 8
  %arrayidx1511 = getelementptr inbounds i32, ptr %1647, i64 3
  %1648 = load i32, ptr %arrayidx1511, align 4
  %add1512 = add i32 %1648, %1646
  store i32 %add1512, ptr %arrayidx1511, align 4
  %1649 = load ptr, ptr %out.addr, align 8
  %arrayidx1513 = getelementptr inbounds i32, ptr %1649, i64 3
  %1650 = load i32, ptr %arrayidx1513, align 4
  %1651 = load ptr, ptr %out.addr, align 8
  %arrayidx1514 = getelementptr inbounds i32, ptr %1651, i64 14
  %1652 = load i32, ptr %arrayidx1514, align 4
  %xor1515 = xor i32 %1652, %1650
  store i32 %xor1515, ptr %arrayidx1514, align 4
  %1653 = load ptr, ptr %out.addr, align 8
  %arrayidx1516 = getelementptr inbounds i32, ptr %1653, i64 14
  %1654 = load i32, ptr %arrayidx1516, align 4
  %shl1517 = shl i32 %1654, 8
  %1655 = load ptr, ptr %out.addr, align 8
  %arrayidx1518 = getelementptr inbounds i32, ptr %1655, i64 14
  %1656 = load i32, ptr %arrayidx1518, align 4
  %shr1519 = lshr i32 %1656, 24
  %or1520 = or i32 %shl1517, %shr1519
  %1657 = load ptr, ptr %out.addr, align 8
  %arrayidx1521 = getelementptr inbounds i32, ptr %1657, i64 14
  store i32 %or1520, ptr %arrayidx1521, align 4
  %1658 = load ptr, ptr %out.addr, align 8
  %arrayidx1522 = getelementptr inbounds i32, ptr %1658, i64 14
  %1659 = load i32, ptr %arrayidx1522, align 4
  %1660 = load ptr, ptr %out.addr, align 8
  %arrayidx1523 = getelementptr inbounds i32, ptr %1660, i64 9
  %1661 = load i32, ptr %arrayidx1523, align 4
  %add1524 = add i32 %1661, %1659
  store i32 %add1524, ptr %arrayidx1523, align 4
  %1662 = load ptr, ptr %out.addr, align 8
  %arrayidx1525 = getelementptr inbounds i32, ptr %1662, i64 9
  %1663 = load i32, ptr %arrayidx1525, align 4
  %1664 = load ptr, ptr %out.addr, align 8
  %arrayidx1526 = getelementptr inbounds i32, ptr %1664, i64 4
  %1665 = load i32, ptr %arrayidx1526, align 4
  %xor1527 = xor i32 %1665, %1663
  store i32 %xor1527, ptr %arrayidx1526, align 4
  %1666 = load ptr, ptr %out.addr, align 8
  %arrayidx1528 = getelementptr inbounds i32, ptr %1666, i64 4
  %1667 = load i32, ptr %arrayidx1528, align 4
  %shl1529 = shl i32 %1667, 7
  %1668 = load ptr, ptr %out.addr, align 8
  %arrayidx1530 = getelementptr inbounds i32, ptr %1668, i64 4
  %1669 = load i32, ptr %arrayidx1530, align 4
  %shr1531 = lshr i32 %1669, 25
  %or1532 = or i32 %shl1529, %shr1531
  %1670 = load ptr, ptr %out.addr, align 8
  %arrayidx1533 = getelementptr inbounds i32, ptr %1670, i64 4
  store i32 %or1532, ptr %arrayidx1533, align 4
  %1671 = load ptr, ptr %out.addr, align 8
  %arrayidx1534 = getelementptr inbounds i32, ptr %1671, i64 4
  %1672 = load i32, ptr %arrayidx1534, align 4
  %1673 = load ptr, ptr %out.addr, align 8
  %arrayidx1535 = getelementptr inbounds i32, ptr %1673, i64 0
  %1674 = load i32, ptr %arrayidx1535, align 4
  %add1536 = add i32 %1674, %1672
  store i32 %add1536, ptr %arrayidx1535, align 4
  %1675 = load ptr, ptr %out.addr, align 8
  %arrayidx1537 = getelementptr inbounds i32, ptr %1675, i64 0
  %1676 = load i32, ptr %arrayidx1537, align 4
  %1677 = load ptr, ptr %out.addr, align 8
  %arrayidx1538 = getelementptr inbounds i32, ptr %1677, i64 12
  %1678 = load i32, ptr %arrayidx1538, align 4
  %xor1539 = xor i32 %1678, %1676
  store i32 %xor1539, ptr %arrayidx1538, align 4
  %1679 = load ptr, ptr %out.addr, align 8
  %arrayidx1540 = getelementptr inbounds i32, ptr %1679, i64 12
  %1680 = load i32, ptr %arrayidx1540, align 4
  %shl1541 = shl i32 %1680, 16
  %1681 = load ptr, ptr %out.addr, align 8
  %arrayidx1542 = getelementptr inbounds i32, ptr %1681, i64 12
  %1682 = load i32, ptr %arrayidx1542, align 4
  %shr1543 = lshr i32 %1682, 16
  %or1544 = or i32 %shl1541, %shr1543
  %1683 = load ptr, ptr %out.addr, align 8
  %arrayidx1545 = getelementptr inbounds i32, ptr %1683, i64 12
  store i32 %or1544, ptr %arrayidx1545, align 4
  %1684 = load ptr, ptr %out.addr, align 8
  %arrayidx1546 = getelementptr inbounds i32, ptr %1684, i64 12
  %1685 = load i32, ptr %arrayidx1546, align 4
  %1686 = load ptr, ptr %out.addr, align 8
  %arrayidx1547 = getelementptr inbounds i32, ptr %1686, i64 8
  %1687 = load i32, ptr %arrayidx1547, align 4
  %add1548 = add i32 %1687, %1685
  store i32 %add1548, ptr %arrayidx1547, align 4
  %1688 = load ptr, ptr %out.addr, align 8
  %arrayidx1549 = getelementptr inbounds i32, ptr %1688, i64 8
  %1689 = load i32, ptr %arrayidx1549, align 4
  %1690 = load ptr, ptr %out.addr, align 8
  %arrayidx1550 = getelementptr inbounds i32, ptr %1690, i64 4
  %1691 = load i32, ptr %arrayidx1550, align 4
  %xor1551 = xor i32 %1691, %1689
  store i32 %xor1551, ptr %arrayidx1550, align 4
  %1692 = load ptr, ptr %out.addr, align 8
  %arrayidx1552 = getelementptr inbounds i32, ptr %1692, i64 4
  %1693 = load i32, ptr %arrayidx1552, align 4
  %shl1553 = shl i32 %1693, 12
  %1694 = load ptr, ptr %out.addr, align 8
  %arrayidx1554 = getelementptr inbounds i32, ptr %1694, i64 4
  %1695 = load i32, ptr %arrayidx1554, align 4
  %shr1555 = lshr i32 %1695, 20
  %or1556 = or i32 %shl1553, %shr1555
  %1696 = load ptr, ptr %out.addr, align 8
  %arrayidx1557 = getelementptr inbounds i32, ptr %1696, i64 4
  store i32 %or1556, ptr %arrayidx1557, align 4
  %1697 = load ptr, ptr %out.addr, align 8
  %arrayidx1558 = getelementptr inbounds i32, ptr %1697, i64 4
  %1698 = load i32, ptr %arrayidx1558, align 4
  %1699 = load ptr, ptr %out.addr, align 8
  %arrayidx1559 = getelementptr inbounds i32, ptr %1699, i64 0
  %1700 = load i32, ptr %arrayidx1559, align 4
  %add1560 = add i32 %1700, %1698
  store i32 %add1560, ptr %arrayidx1559, align 4
  %1701 = load ptr, ptr %out.addr, align 8
  %arrayidx1561 = getelementptr inbounds i32, ptr %1701, i64 0
  %1702 = load i32, ptr %arrayidx1561, align 4
  %1703 = load ptr, ptr %out.addr, align 8
  %arrayidx1562 = getelementptr inbounds i32, ptr %1703, i64 12
  %1704 = load i32, ptr %arrayidx1562, align 4
  %xor1563 = xor i32 %1704, %1702
  store i32 %xor1563, ptr %arrayidx1562, align 4
  %1705 = load ptr, ptr %out.addr, align 8
  %arrayidx1564 = getelementptr inbounds i32, ptr %1705, i64 12
  %1706 = load i32, ptr %arrayidx1564, align 4
  %shl1565 = shl i32 %1706, 8
  %1707 = load ptr, ptr %out.addr, align 8
  %arrayidx1566 = getelementptr inbounds i32, ptr %1707, i64 12
  %1708 = load i32, ptr %arrayidx1566, align 4
  %shr1567 = lshr i32 %1708, 24
  %or1568 = or i32 %shl1565, %shr1567
  %1709 = load ptr, ptr %out.addr, align 8
  %arrayidx1569 = getelementptr inbounds i32, ptr %1709, i64 12
  store i32 %or1568, ptr %arrayidx1569, align 4
  %1710 = load ptr, ptr %out.addr, align 8
  %arrayidx1570 = getelementptr inbounds i32, ptr %1710, i64 12
  %1711 = load i32, ptr %arrayidx1570, align 4
  %1712 = load ptr, ptr %out.addr, align 8
  %arrayidx1571 = getelementptr inbounds i32, ptr %1712, i64 8
  %1713 = load i32, ptr %arrayidx1571, align 4
  %add1572 = add i32 %1713, %1711
  store i32 %add1572, ptr %arrayidx1571, align 4
  %1714 = load ptr, ptr %out.addr, align 8
  %arrayidx1573 = getelementptr inbounds i32, ptr %1714, i64 8
  %1715 = load i32, ptr %arrayidx1573, align 4
  %1716 = load ptr, ptr %out.addr, align 8
  %arrayidx1574 = getelementptr inbounds i32, ptr %1716, i64 4
  %1717 = load i32, ptr %arrayidx1574, align 4
  %xor1575 = xor i32 %1717, %1715
  store i32 %xor1575, ptr %arrayidx1574, align 4
  %1718 = load ptr, ptr %out.addr, align 8
  %arrayidx1576 = getelementptr inbounds i32, ptr %1718, i64 4
  %1719 = load i32, ptr %arrayidx1576, align 4
  %shl1577 = shl i32 %1719, 7
  %1720 = load ptr, ptr %out.addr, align 8
  %arrayidx1578 = getelementptr inbounds i32, ptr %1720, i64 4
  %1721 = load i32, ptr %arrayidx1578, align 4
  %shr1579 = lshr i32 %1721, 25
  %or1580 = or i32 %shl1577, %shr1579
  %1722 = load ptr, ptr %out.addr, align 8
  %arrayidx1581 = getelementptr inbounds i32, ptr %1722, i64 4
  store i32 %or1580, ptr %arrayidx1581, align 4
  %1723 = load ptr, ptr %out.addr, align 8
  %arrayidx1582 = getelementptr inbounds i32, ptr %1723, i64 5
  %1724 = load i32, ptr %arrayidx1582, align 4
  %1725 = load ptr, ptr %out.addr, align 8
  %arrayidx1583 = getelementptr inbounds i32, ptr %1725, i64 1
  %1726 = load i32, ptr %arrayidx1583, align 4
  %add1584 = add i32 %1726, %1724
  store i32 %add1584, ptr %arrayidx1583, align 4
  %1727 = load ptr, ptr %out.addr, align 8
  %arrayidx1585 = getelementptr inbounds i32, ptr %1727, i64 1
  %1728 = load i32, ptr %arrayidx1585, align 4
  %1729 = load ptr, ptr %out.addr, align 8
  %arrayidx1586 = getelementptr inbounds i32, ptr %1729, i64 13
  %1730 = load i32, ptr %arrayidx1586, align 4
  %xor1587 = xor i32 %1730, %1728
  store i32 %xor1587, ptr %arrayidx1586, align 4
  %1731 = load ptr, ptr %out.addr, align 8
  %arrayidx1588 = getelementptr inbounds i32, ptr %1731, i64 13
  %1732 = load i32, ptr %arrayidx1588, align 4
  %shl1589 = shl i32 %1732, 16
  %1733 = load ptr, ptr %out.addr, align 8
  %arrayidx1590 = getelementptr inbounds i32, ptr %1733, i64 13
  %1734 = load i32, ptr %arrayidx1590, align 4
  %shr1591 = lshr i32 %1734, 16
  %or1592 = or i32 %shl1589, %shr1591
  %1735 = load ptr, ptr %out.addr, align 8
  %arrayidx1593 = getelementptr inbounds i32, ptr %1735, i64 13
  store i32 %or1592, ptr %arrayidx1593, align 4
  %1736 = load ptr, ptr %out.addr, align 8
  %arrayidx1594 = getelementptr inbounds i32, ptr %1736, i64 13
  %1737 = load i32, ptr %arrayidx1594, align 4
  %1738 = load ptr, ptr %out.addr, align 8
  %arrayidx1595 = getelementptr inbounds i32, ptr %1738, i64 9
  %1739 = load i32, ptr %arrayidx1595, align 4
  %add1596 = add i32 %1739, %1737
  store i32 %add1596, ptr %arrayidx1595, align 4
  %1740 = load ptr, ptr %out.addr, align 8
  %arrayidx1597 = getelementptr inbounds i32, ptr %1740, i64 9
  %1741 = load i32, ptr %arrayidx1597, align 4
  %1742 = load ptr, ptr %out.addr, align 8
  %arrayidx1598 = getelementptr inbounds i32, ptr %1742, i64 5
  %1743 = load i32, ptr %arrayidx1598, align 4
  %xor1599 = xor i32 %1743, %1741
  store i32 %xor1599, ptr %arrayidx1598, align 4
  %1744 = load ptr, ptr %out.addr, align 8
  %arrayidx1600 = getelementptr inbounds i32, ptr %1744, i64 5
  %1745 = load i32, ptr %arrayidx1600, align 4
  %shl1601 = shl i32 %1745, 12
  %1746 = load ptr, ptr %out.addr, align 8
  %arrayidx1602 = getelementptr inbounds i32, ptr %1746, i64 5
  %1747 = load i32, ptr %arrayidx1602, align 4
  %shr1603 = lshr i32 %1747, 20
  %or1604 = or i32 %shl1601, %shr1603
  %1748 = load ptr, ptr %out.addr, align 8
  %arrayidx1605 = getelementptr inbounds i32, ptr %1748, i64 5
  store i32 %or1604, ptr %arrayidx1605, align 4
  %1749 = load ptr, ptr %out.addr, align 8
  %arrayidx1606 = getelementptr inbounds i32, ptr %1749, i64 5
  %1750 = load i32, ptr %arrayidx1606, align 4
  %1751 = load ptr, ptr %out.addr, align 8
  %arrayidx1607 = getelementptr inbounds i32, ptr %1751, i64 1
  %1752 = load i32, ptr %arrayidx1607, align 4
  %add1608 = add i32 %1752, %1750
  store i32 %add1608, ptr %arrayidx1607, align 4
  %1753 = load ptr, ptr %out.addr, align 8
  %arrayidx1609 = getelementptr inbounds i32, ptr %1753, i64 1
  %1754 = load i32, ptr %arrayidx1609, align 4
  %1755 = load ptr, ptr %out.addr, align 8
  %arrayidx1610 = getelementptr inbounds i32, ptr %1755, i64 13
  %1756 = load i32, ptr %arrayidx1610, align 4
  %xor1611 = xor i32 %1756, %1754
  store i32 %xor1611, ptr %arrayidx1610, align 4
  %1757 = load ptr, ptr %out.addr, align 8
  %arrayidx1612 = getelementptr inbounds i32, ptr %1757, i64 13
  %1758 = load i32, ptr %arrayidx1612, align 4
  %shl1613 = shl i32 %1758, 8
  %1759 = load ptr, ptr %out.addr, align 8
  %arrayidx1614 = getelementptr inbounds i32, ptr %1759, i64 13
  %1760 = load i32, ptr %arrayidx1614, align 4
  %shr1615 = lshr i32 %1760, 24
  %or1616 = or i32 %shl1613, %shr1615
  %1761 = load ptr, ptr %out.addr, align 8
  %arrayidx1617 = getelementptr inbounds i32, ptr %1761, i64 13
  store i32 %or1616, ptr %arrayidx1617, align 4
  %1762 = load ptr, ptr %out.addr, align 8
  %arrayidx1618 = getelementptr inbounds i32, ptr %1762, i64 13
  %1763 = load i32, ptr %arrayidx1618, align 4
  %1764 = load ptr, ptr %out.addr, align 8
  %arrayidx1619 = getelementptr inbounds i32, ptr %1764, i64 9
  %1765 = load i32, ptr %arrayidx1619, align 4
  %add1620 = add i32 %1765, %1763
  store i32 %add1620, ptr %arrayidx1619, align 4
  %1766 = load ptr, ptr %out.addr, align 8
  %arrayidx1621 = getelementptr inbounds i32, ptr %1766, i64 9
  %1767 = load i32, ptr %arrayidx1621, align 4
  %1768 = load ptr, ptr %out.addr, align 8
  %arrayidx1622 = getelementptr inbounds i32, ptr %1768, i64 5
  %1769 = load i32, ptr %arrayidx1622, align 4
  %xor1623 = xor i32 %1769, %1767
  store i32 %xor1623, ptr %arrayidx1622, align 4
  %1770 = load ptr, ptr %out.addr, align 8
  %arrayidx1624 = getelementptr inbounds i32, ptr %1770, i64 5
  %1771 = load i32, ptr %arrayidx1624, align 4
  %shl1625 = shl i32 %1771, 7
  %1772 = load ptr, ptr %out.addr, align 8
  %arrayidx1626 = getelementptr inbounds i32, ptr %1772, i64 5
  %1773 = load i32, ptr %arrayidx1626, align 4
  %shr1627 = lshr i32 %1773, 25
  %or1628 = or i32 %shl1625, %shr1627
  %1774 = load ptr, ptr %out.addr, align 8
  %arrayidx1629 = getelementptr inbounds i32, ptr %1774, i64 5
  store i32 %or1628, ptr %arrayidx1629, align 4
  %1775 = load ptr, ptr %out.addr, align 8
  %arrayidx1630 = getelementptr inbounds i32, ptr %1775, i64 6
  %1776 = load i32, ptr %arrayidx1630, align 4
  %1777 = load ptr, ptr %out.addr, align 8
  %arrayidx1631 = getelementptr inbounds i32, ptr %1777, i64 2
  %1778 = load i32, ptr %arrayidx1631, align 4
  %add1632 = add i32 %1778, %1776
  store i32 %add1632, ptr %arrayidx1631, align 4
  %1779 = load ptr, ptr %out.addr, align 8
  %arrayidx1633 = getelementptr inbounds i32, ptr %1779, i64 2
  %1780 = load i32, ptr %arrayidx1633, align 4
  %1781 = load ptr, ptr %out.addr, align 8
  %arrayidx1634 = getelementptr inbounds i32, ptr %1781, i64 14
  %1782 = load i32, ptr %arrayidx1634, align 4
  %xor1635 = xor i32 %1782, %1780
  store i32 %xor1635, ptr %arrayidx1634, align 4
  %1783 = load ptr, ptr %out.addr, align 8
  %arrayidx1636 = getelementptr inbounds i32, ptr %1783, i64 14
  %1784 = load i32, ptr %arrayidx1636, align 4
  %shl1637 = shl i32 %1784, 16
  %1785 = load ptr, ptr %out.addr, align 8
  %arrayidx1638 = getelementptr inbounds i32, ptr %1785, i64 14
  %1786 = load i32, ptr %arrayidx1638, align 4
  %shr1639 = lshr i32 %1786, 16
  %or1640 = or i32 %shl1637, %shr1639
  %1787 = load ptr, ptr %out.addr, align 8
  %arrayidx1641 = getelementptr inbounds i32, ptr %1787, i64 14
  store i32 %or1640, ptr %arrayidx1641, align 4
  %1788 = load ptr, ptr %out.addr, align 8
  %arrayidx1642 = getelementptr inbounds i32, ptr %1788, i64 14
  %1789 = load i32, ptr %arrayidx1642, align 4
  %1790 = load ptr, ptr %out.addr, align 8
  %arrayidx1643 = getelementptr inbounds i32, ptr %1790, i64 10
  %1791 = load i32, ptr %arrayidx1643, align 4
  %add1644 = add i32 %1791, %1789
  store i32 %add1644, ptr %arrayidx1643, align 4
  %1792 = load ptr, ptr %out.addr, align 8
  %arrayidx1645 = getelementptr inbounds i32, ptr %1792, i64 10
  %1793 = load i32, ptr %arrayidx1645, align 4
  %1794 = load ptr, ptr %out.addr, align 8
  %arrayidx1646 = getelementptr inbounds i32, ptr %1794, i64 6
  %1795 = load i32, ptr %arrayidx1646, align 4
  %xor1647 = xor i32 %1795, %1793
  store i32 %xor1647, ptr %arrayidx1646, align 4
  %1796 = load ptr, ptr %out.addr, align 8
  %arrayidx1648 = getelementptr inbounds i32, ptr %1796, i64 6
  %1797 = load i32, ptr %arrayidx1648, align 4
  %shl1649 = shl i32 %1797, 12
  %1798 = load ptr, ptr %out.addr, align 8
  %arrayidx1650 = getelementptr inbounds i32, ptr %1798, i64 6
  %1799 = load i32, ptr %arrayidx1650, align 4
  %shr1651 = lshr i32 %1799, 20
  %or1652 = or i32 %shl1649, %shr1651
  %1800 = load ptr, ptr %out.addr, align 8
  %arrayidx1653 = getelementptr inbounds i32, ptr %1800, i64 6
  store i32 %or1652, ptr %arrayidx1653, align 4
  %1801 = load ptr, ptr %out.addr, align 8
  %arrayidx1654 = getelementptr inbounds i32, ptr %1801, i64 6
  %1802 = load i32, ptr %arrayidx1654, align 4
  %1803 = load ptr, ptr %out.addr, align 8
  %arrayidx1655 = getelementptr inbounds i32, ptr %1803, i64 2
  %1804 = load i32, ptr %arrayidx1655, align 4
  %add1656 = add i32 %1804, %1802
  store i32 %add1656, ptr %arrayidx1655, align 4
  %1805 = load ptr, ptr %out.addr, align 8
  %arrayidx1657 = getelementptr inbounds i32, ptr %1805, i64 2
  %1806 = load i32, ptr %arrayidx1657, align 4
  %1807 = load ptr, ptr %out.addr, align 8
  %arrayidx1658 = getelementptr inbounds i32, ptr %1807, i64 14
  %1808 = load i32, ptr %arrayidx1658, align 4
  %xor1659 = xor i32 %1808, %1806
  store i32 %xor1659, ptr %arrayidx1658, align 4
  %1809 = load ptr, ptr %out.addr, align 8
  %arrayidx1660 = getelementptr inbounds i32, ptr %1809, i64 14
  %1810 = load i32, ptr %arrayidx1660, align 4
  %shl1661 = shl i32 %1810, 8
  %1811 = load ptr, ptr %out.addr, align 8
  %arrayidx1662 = getelementptr inbounds i32, ptr %1811, i64 14
  %1812 = load i32, ptr %arrayidx1662, align 4
  %shr1663 = lshr i32 %1812, 24
  %or1664 = or i32 %shl1661, %shr1663
  %1813 = load ptr, ptr %out.addr, align 8
  %arrayidx1665 = getelementptr inbounds i32, ptr %1813, i64 14
  store i32 %or1664, ptr %arrayidx1665, align 4
  %1814 = load ptr, ptr %out.addr, align 8
  %arrayidx1666 = getelementptr inbounds i32, ptr %1814, i64 14
  %1815 = load i32, ptr %arrayidx1666, align 4
  %1816 = load ptr, ptr %out.addr, align 8
  %arrayidx1667 = getelementptr inbounds i32, ptr %1816, i64 10
  %1817 = load i32, ptr %arrayidx1667, align 4
  %add1668 = add i32 %1817, %1815
  store i32 %add1668, ptr %arrayidx1667, align 4
  %1818 = load ptr, ptr %out.addr, align 8
  %arrayidx1669 = getelementptr inbounds i32, ptr %1818, i64 10
  %1819 = load i32, ptr %arrayidx1669, align 4
  %1820 = load ptr, ptr %out.addr, align 8
  %arrayidx1670 = getelementptr inbounds i32, ptr %1820, i64 6
  %1821 = load i32, ptr %arrayidx1670, align 4
  %xor1671 = xor i32 %1821, %1819
  store i32 %xor1671, ptr %arrayidx1670, align 4
  %1822 = load ptr, ptr %out.addr, align 8
  %arrayidx1672 = getelementptr inbounds i32, ptr %1822, i64 6
  %1823 = load i32, ptr %arrayidx1672, align 4
  %shl1673 = shl i32 %1823, 7
  %1824 = load ptr, ptr %out.addr, align 8
  %arrayidx1674 = getelementptr inbounds i32, ptr %1824, i64 6
  %1825 = load i32, ptr %arrayidx1674, align 4
  %shr1675 = lshr i32 %1825, 25
  %or1676 = or i32 %shl1673, %shr1675
  %1826 = load ptr, ptr %out.addr, align 8
  %arrayidx1677 = getelementptr inbounds i32, ptr %1826, i64 6
  store i32 %or1676, ptr %arrayidx1677, align 4
  %1827 = load ptr, ptr %out.addr, align 8
  %arrayidx1678 = getelementptr inbounds i32, ptr %1827, i64 7
  %1828 = load i32, ptr %arrayidx1678, align 4
  %1829 = load ptr, ptr %out.addr, align 8
  %arrayidx1679 = getelementptr inbounds i32, ptr %1829, i64 3
  %1830 = load i32, ptr %arrayidx1679, align 4
  %add1680 = add i32 %1830, %1828
  store i32 %add1680, ptr %arrayidx1679, align 4
  %1831 = load ptr, ptr %out.addr, align 8
  %arrayidx1681 = getelementptr inbounds i32, ptr %1831, i64 3
  %1832 = load i32, ptr %arrayidx1681, align 4
  %1833 = load ptr, ptr %out.addr, align 8
  %arrayidx1682 = getelementptr inbounds i32, ptr %1833, i64 15
  %1834 = load i32, ptr %arrayidx1682, align 4
  %xor1683 = xor i32 %1834, %1832
  store i32 %xor1683, ptr %arrayidx1682, align 4
  %1835 = load ptr, ptr %out.addr, align 8
  %arrayidx1684 = getelementptr inbounds i32, ptr %1835, i64 15
  %1836 = load i32, ptr %arrayidx1684, align 4
  %shl1685 = shl i32 %1836, 16
  %1837 = load ptr, ptr %out.addr, align 8
  %arrayidx1686 = getelementptr inbounds i32, ptr %1837, i64 15
  %1838 = load i32, ptr %arrayidx1686, align 4
  %shr1687 = lshr i32 %1838, 16
  %or1688 = or i32 %shl1685, %shr1687
  %1839 = load ptr, ptr %out.addr, align 8
  %arrayidx1689 = getelementptr inbounds i32, ptr %1839, i64 15
  store i32 %or1688, ptr %arrayidx1689, align 4
  %1840 = load ptr, ptr %out.addr, align 8
  %arrayidx1690 = getelementptr inbounds i32, ptr %1840, i64 15
  %1841 = load i32, ptr %arrayidx1690, align 4
  %1842 = load ptr, ptr %out.addr, align 8
  %arrayidx1691 = getelementptr inbounds i32, ptr %1842, i64 11
  %1843 = load i32, ptr %arrayidx1691, align 4
  %add1692 = add i32 %1843, %1841
  store i32 %add1692, ptr %arrayidx1691, align 4
  %1844 = load ptr, ptr %out.addr, align 8
  %arrayidx1693 = getelementptr inbounds i32, ptr %1844, i64 11
  %1845 = load i32, ptr %arrayidx1693, align 4
  %1846 = load ptr, ptr %out.addr, align 8
  %arrayidx1694 = getelementptr inbounds i32, ptr %1846, i64 7
  %1847 = load i32, ptr %arrayidx1694, align 4
  %xor1695 = xor i32 %1847, %1845
  store i32 %xor1695, ptr %arrayidx1694, align 4
  %1848 = load ptr, ptr %out.addr, align 8
  %arrayidx1696 = getelementptr inbounds i32, ptr %1848, i64 7
  %1849 = load i32, ptr %arrayidx1696, align 4
  %shl1697 = shl i32 %1849, 12
  %1850 = load ptr, ptr %out.addr, align 8
  %arrayidx1698 = getelementptr inbounds i32, ptr %1850, i64 7
  %1851 = load i32, ptr %arrayidx1698, align 4
  %shr1699 = lshr i32 %1851, 20
  %or1700 = or i32 %shl1697, %shr1699
  %1852 = load ptr, ptr %out.addr, align 8
  %arrayidx1701 = getelementptr inbounds i32, ptr %1852, i64 7
  store i32 %or1700, ptr %arrayidx1701, align 4
  %1853 = load ptr, ptr %out.addr, align 8
  %arrayidx1702 = getelementptr inbounds i32, ptr %1853, i64 7
  %1854 = load i32, ptr %arrayidx1702, align 4
  %1855 = load ptr, ptr %out.addr, align 8
  %arrayidx1703 = getelementptr inbounds i32, ptr %1855, i64 3
  %1856 = load i32, ptr %arrayidx1703, align 4
  %add1704 = add i32 %1856, %1854
  store i32 %add1704, ptr %arrayidx1703, align 4
  %1857 = load ptr, ptr %out.addr, align 8
  %arrayidx1705 = getelementptr inbounds i32, ptr %1857, i64 3
  %1858 = load i32, ptr %arrayidx1705, align 4
  %1859 = load ptr, ptr %out.addr, align 8
  %arrayidx1706 = getelementptr inbounds i32, ptr %1859, i64 15
  %1860 = load i32, ptr %arrayidx1706, align 4
  %xor1707 = xor i32 %1860, %1858
  store i32 %xor1707, ptr %arrayidx1706, align 4
  %1861 = load ptr, ptr %out.addr, align 8
  %arrayidx1708 = getelementptr inbounds i32, ptr %1861, i64 15
  %1862 = load i32, ptr %arrayidx1708, align 4
  %shl1709 = shl i32 %1862, 8
  %1863 = load ptr, ptr %out.addr, align 8
  %arrayidx1710 = getelementptr inbounds i32, ptr %1863, i64 15
  %1864 = load i32, ptr %arrayidx1710, align 4
  %shr1711 = lshr i32 %1864, 24
  %or1712 = or i32 %shl1709, %shr1711
  %1865 = load ptr, ptr %out.addr, align 8
  %arrayidx1713 = getelementptr inbounds i32, ptr %1865, i64 15
  store i32 %or1712, ptr %arrayidx1713, align 4
  %1866 = load ptr, ptr %out.addr, align 8
  %arrayidx1714 = getelementptr inbounds i32, ptr %1866, i64 15
  %1867 = load i32, ptr %arrayidx1714, align 4
  %1868 = load ptr, ptr %out.addr, align 8
  %arrayidx1715 = getelementptr inbounds i32, ptr %1868, i64 11
  %1869 = load i32, ptr %arrayidx1715, align 4
  %add1716 = add i32 %1869, %1867
  store i32 %add1716, ptr %arrayidx1715, align 4
  %1870 = load ptr, ptr %out.addr, align 8
  %arrayidx1717 = getelementptr inbounds i32, ptr %1870, i64 11
  %1871 = load i32, ptr %arrayidx1717, align 4
  %1872 = load ptr, ptr %out.addr, align 8
  %arrayidx1718 = getelementptr inbounds i32, ptr %1872, i64 7
  %1873 = load i32, ptr %arrayidx1718, align 4
  %xor1719 = xor i32 %1873, %1871
  store i32 %xor1719, ptr %arrayidx1718, align 4
  %1874 = load ptr, ptr %out.addr, align 8
  %arrayidx1720 = getelementptr inbounds i32, ptr %1874, i64 7
  %1875 = load i32, ptr %arrayidx1720, align 4
  %shl1721 = shl i32 %1875, 7
  %1876 = load ptr, ptr %out.addr, align 8
  %arrayidx1722 = getelementptr inbounds i32, ptr %1876, i64 7
  %1877 = load i32, ptr %arrayidx1722, align 4
  %shr1723 = lshr i32 %1877, 25
  %or1724 = or i32 %shl1721, %shr1723
  %1878 = load ptr, ptr %out.addr, align 8
  %arrayidx1725 = getelementptr inbounds i32, ptr %1878, i64 7
  store i32 %or1724, ptr %arrayidx1725, align 4
  %1879 = load ptr, ptr %out.addr, align 8
  %arrayidx1726 = getelementptr inbounds i32, ptr %1879, i64 5
  %1880 = load i32, ptr %arrayidx1726, align 4
  %1881 = load ptr, ptr %out.addr, align 8
  %arrayidx1727 = getelementptr inbounds i32, ptr %1881, i64 0
  %1882 = load i32, ptr %arrayidx1727, align 4
  %add1728 = add i32 %1882, %1880
  store i32 %add1728, ptr %arrayidx1727, align 4
  %1883 = load ptr, ptr %out.addr, align 8
  %arrayidx1729 = getelementptr inbounds i32, ptr %1883, i64 0
  %1884 = load i32, ptr %arrayidx1729, align 4
  %1885 = load ptr, ptr %out.addr, align 8
  %arrayidx1730 = getelementptr inbounds i32, ptr %1885, i64 15
  %1886 = load i32, ptr %arrayidx1730, align 4
  %xor1731 = xor i32 %1886, %1884
  store i32 %xor1731, ptr %arrayidx1730, align 4
  %1887 = load ptr, ptr %out.addr, align 8
  %arrayidx1732 = getelementptr inbounds i32, ptr %1887, i64 15
  %1888 = load i32, ptr %arrayidx1732, align 4
  %shl1733 = shl i32 %1888, 16
  %1889 = load ptr, ptr %out.addr, align 8
  %arrayidx1734 = getelementptr inbounds i32, ptr %1889, i64 15
  %1890 = load i32, ptr %arrayidx1734, align 4
  %shr1735 = lshr i32 %1890, 16
  %or1736 = or i32 %shl1733, %shr1735
  %1891 = load ptr, ptr %out.addr, align 8
  %arrayidx1737 = getelementptr inbounds i32, ptr %1891, i64 15
  store i32 %or1736, ptr %arrayidx1737, align 4
  %1892 = load ptr, ptr %out.addr, align 8
  %arrayidx1738 = getelementptr inbounds i32, ptr %1892, i64 15
  %1893 = load i32, ptr %arrayidx1738, align 4
  %1894 = load ptr, ptr %out.addr, align 8
  %arrayidx1739 = getelementptr inbounds i32, ptr %1894, i64 10
  %1895 = load i32, ptr %arrayidx1739, align 4
  %add1740 = add i32 %1895, %1893
  store i32 %add1740, ptr %arrayidx1739, align 4
  %1896 = load ptr, ptr %out.addr, align 8
  %arrayidx1741 = getelementptr inbounds i32, ptr %1896, i64 10
  %1897 = load i32, ptr %arrayidx1741, align 4
  %1898 = load ptr, ptr %out.addr, align 8
  %arrayidx1742 = getelementptr inbounds i32, ptr %1898, i64 5
  %1899 = load i32, ptr %arrayidx1742, align 4
  %xor1743 = xor i32 %1899, %1897
  store i32 %xor1743, ptr %arrayidx1742, align 4
  %1900 = load ptr, ptr %out.addr, align 8
  %arrayidx1744 = getelementptr inbounds i32, ptr %1900, i64 5
  %1901 = load i32, ptr %arrayidx1744, align 4
  %shl1745 = shl i32 %1901, 12
  %1902 = load ptr, ptr %out.addr, align 8
  %arrayidx1746 = getelementptr inbounds i32, ptr %1902, i64 5
  %1903 = load i32, ptr %arrayidx1746, align 4
  %shr1747 = lshr i32 %1903, 20
  %or1748 = or i32 %shl1745, %shr1747
  %1904 = load ptr, ptr %out.addr, align 8
  %arrayidx1749 = getelementptr inbounds i32, ptr %1904, i64 5
  store i32 %or1748, ptr %arrayidx1749, align 4
  %1905 = load ptr, ptr %out.addr, align 8
  %arrayidx1750 = getelementptr inbounds i32, ptr %1905, i64 5
  %1906 = load i32, ptr %arrayidx1750, align 4
  %1907 = load ptr, ptr %out.addr, align 8
  %arrayidx1751 = getelementptr inbounds i32, ptr %1907, i64 0
  %1908 = load i32, ptr %arrayidx1751, align 4
  %add1752 = add i32 %1908, %1906
  store i32 %add1752, ptr %arrayidx1751, align 4
  %1909 = load ptr, ptr %out.addr, align 8
  %arrayidx1753 = getelementptr inbounds i32, ptr %1909, i64 0
  %1910 = load i32, ptr %arrayidx1753, align 4
  %1911 = load ptr, ptr %out.addr, align 8
  %arrayidx1754 = getelementptr inbounds i32, ptr %1911, i64 15
  %1912 = load i32, ptr %arrayidx1754, align 4
  %xor1755 = xor i32 %1912, %1910
  store i32 %xor1755, ptr %arrayidx1754, align 4
  %1913 = load ptr, ptr %out.addr, align 8
  %arrayidx1756 = getelementptr inbounds i32, ptr %1913, i64 15
  %1914 = load i32, ptr %arrayidx1756, align 4
  %shl1757 = shl i32 %1914, 8
  %1915 = load ptr, ptr %out.addr, align 8
  %arrayidx1758 = getelementptr inbounds i32, ptr %1915, i64 15
  %1916 = load i32, ptr %arrayidx1758, align 4
  %shr1759 = lshr i32 %1916, 24
  %or1760 = or i32 %shl1757, %shr1759
  %1917 = load ptr, ptr %out.addr, align 8
  %arrayidx1761 = getelementptr inbounds i32, ptr %1917, i64 15
  store i32 %or1760, ptr %arrayidx1761, align 4
  %1918 = load ptr, ptr %out.addr, align 8
  %arrayidx1762 = getelementptr inbounds i32, ptr %1918, i64 15
  %1919 = load i32, ptr %arrayidx1762, align 4
  %1920 = load ptr, ptr %out.addr, align 8
  %arrayidx1763 = getelementptr inbounds i32, ptr %1920, i64 10
  %1921 = load i32, ptr %arrayidx1763, align 4
  %add1764 = add i32 %1921, %1919
  store i32 %add1764, ptr %arrayidx1763, align 4
  %1922 = load ptr, ptr %out.addr, align 8
  %arrayidx1765 = getelementptr inbounds i32, ptr %1922, i64 10
  %1923 = load i32, ptr %arrayidx1765, align 4
  %1924 = load ptr, ptr %out.addr, align 8
  %arrayidx1766 = getelementptr inbounds i32, ptr %1924, i64 5
  %1925 = load i32, ptr %arrayidx1766, align 4
  %xor1767 = xor i32 %1925, %1923
  store i32 %xor1767, ptr %arrayidx1766, align 4
  %1926 = load ptr, ptr %out.addr, align 8
  %arrayidx1768 = getelementptr inbounds i32, ptr %1926, i64 5
  %1927 = load i32, ptr %arrayidx1768, align 4
  %shl1769 = shl i32 %1927, 7
  %1928 = load ptr, ptr %out.addr, align 8
  %arrayidx1770 = getelementptr inbounds i32, ptr %1928, i64 5
  %1929 = load i32, ptr %arrayidx1770, align 4
  %shr1771 = lshr i32 %1929, 25
  %or1772 = or i32 %shl1769, %shr1771
  %1930 = load ptr, ptr %out.addr, align 8
  %arrayidx1773 = getelementptr inbounds i32, ptr %1930, i64 5
  store i32 %or1772, ptr %arrayidx1773, align 4
  %1931 = load ptr, ptr %out.addr, align 8
  %arrayidx1774 = getelementptr inbounds i32, ptr %1931, i64 6
  %1932 = load i32, ptr %arrayidx1774, align 4
  %1933 = load ptr, ptr %out.addr, align 8
  %arrayidx1775 = getelementptr inbounds i32, ptr %1933, i64 1
  %1934 = load i32, ptr %arrayidx1775, align 4
  %add1776 = add i32 %1934, %1932
  store i32 %add1776, ptr %arrayidx1775, align 4
  %1935 = load ptr, ptr %out.addr, align 8
  %arrayidx1777 = getelementptr inbounds i32, ptr %1935, i64 1
  %1936 = load i32, ptr %arrayidx1777, align 4
  %1937 = load ptr, ptr %out.addr, align 8
  %arrayidx1778 = getelementptr inbounds i32, ptr %1937, i64 12
  %1938 = load i32, ptr %arrayidx1778, align 4
  %xor1779 = xor i32 %1938, %1936
  store i32 %xor1779, ptr %arrayidx1778, align 4
  %1939 = load ptr, ptr %out.addr, align 8
  %arrayidx1780 = getelementptr inbounds i32, ptr %1939, i64 12
  %1940 = load i32, ptr %arrayidx1780, align 4
  %shl1781 = shl i32 %1940, 16
  %1941 = load ptr, ptr %out.addr, align 8
  %arrayidx1782 = getelementptr inbounds i32, ptr %1941, i64 12
  %1942 = load i32, ptr %arrayidx1782, align 4
  %shr1783 = lshr i32 %1942, 16
  %or1784 = or i32 %shl1781, %shr1783
  %1943 = load ptr, ptr %out.addr, align 8
  %arrayidx1785 = getelementptr inbounds i32, ptr %1943, i64 12
  store i32 %or1784, ptr %arrayidx1785, align 4
  %1944 = load ptr, ptr %out.addr, align 8
  %arrayidx1786 = getelementptr inbounds i32, ptr %1944, i64 12
  %1945 = load i32, ptr %arrayidx1786, align 4
  %1946 = load ptr, ptr %out.addr, align 8
  %arrayidx1787 = getelementptr inbounds i32, ptr %1946, i64 11
  %1947 = load i32, ptr %arrayidx1787, align 4
  %add1788 = add i32 %1947, %1945
  store i32 %add1788, ptr %arrayidx1787, align 4
  %1948 = load ptr, ptr %out.addr, align 8
  %arrayidx1789 = getelementptr inbounds i32, ptr %1948, i64 11
  %1949 = load i32, ptr %arrayidx1789, align 4
  %1950 = load ptr, ptr %out.addr, align 8
  %arrayidx1790 = getelementptr inbounds i32, ptr %1950, i64 6
  %1951 = load i32, ptr %arrayidx1790, align 4
  %xor1791 = xor i32 %1951, %1949
  store i32 %xor1791, ptr %arrayidx1790, align 4
  %1952 = load ptr, ptr %out.addr, align 8
  %arrayidx1792 = getelementptr inbounds i32, ptr %1952, i64 6
  %1953 = load i32, ptr %arrayidx1792, align 4
  %shl1793 = shl i32 %1953, 12
  %1954 = load ptr, ptr %out.addr, align 8
  %arrayidx1794 = getelementptr inbounds i32, ptr %1954, i64 6
  %1955 = load i32, ptr %arrayidx1794, align 4
  %shr1795 = lshr i32 %1955, 20
  %or1796 = or i32 %shl1793, %shr1795
  %1956 = load ptr, ptr %out.addr, align 8
  %arrayidx1797 = getelementptr inbounds i32, ptr %1956, i64 6
  store i32 %or1796, ptr %arrayidx1797, align 4
  %1957 = load ptr, ptr %out.addr, align 8
  %arrayidx1798 = getelementptr inbounds i32, ptr %1957, i64 6
  %1958 = load i32, ptr %arrayidx1798, align 4
  %1959 = load ptr, ptr %out.addr, align 8
  %arrayidx1799 = getelementptr inbounds i32, ptr %1959, i64 1
  %1960 = load i32, ptr %arrayidx1799, align 4
  %add1800 = add i32 %1960, %1958
  store i32 %add1800, ptr %arrayidx1799, align 4
  %1961 = load ptr, ptr %out.addr, align 8
  %arrayidx1801 = getelementptr inbounds i32, ptr %1961, i64 1
  %1962 = load i32, ptr %arrayidx1801, align 4
  %1963 = load ptr, ptr %out.addr, align 8
  %arrayidx1802 = getelementptr inbounds i32, ptr %1963, i64 12
  %1964 = load i32, ptr %arrayidx1802, align 4
  %xor1803 = xor i32 %1964, %1962
  store i32 %xor1803, ptr %arrayidx1802, align 4
  %1965 = load ptr, ptr %out.addr, align 8
  %arrayidx1804 = getelementptr inbounds i32, ptr %1965, i64 12
  %1966 = load i32, ptr %arrayidx1804, align 4
  %shl1805 = shl i32 %1966, 8
  %1967 = load ptr, ptr %out.addr, align 8
  %arrayidx1806 = getelementptr inbounds i32, ptr %1967, i64 12
  %1968 = load i32, ptr %arrayidx1806, align 4
  %shr1807 = lshr i32 %1968, 24
  %or1808 = or i32 %shl1805, %shr1807
  %1969 = load ptr, ptr %out.addr, align 8
  %arrayidx1809 = getelementptr inbounds i32, ptr %1969, i64 12
  store i32 %or1808, ptr %arrayidx1809, align 4
  %1970 = load ptr, ptr %out.addr, align 8
  %arrayidx1810 = getelementptr inbounds i32, ptr %1970, i64 12
  %1971 = load i32, ptr %arrayidx1810, align 4
  %1972 = load ptr, ptr %out.addr, align 8
  %arrayidx1811 = getelementptr inbounds i32, ptr %1972, i64 11
  %1973 = load i32, ptr %arrayidx1811, align 4
  %add1812 = add i32 %1973, %1971
  store i32 %add1812, ptr %arrayidx1811, align 4
  %1974 = load ptr, ptr %out.addr, align 8
  %arrayidx1813 = getelementptr inbounds i32, ptr %1974, i64 11
  %1975 = load i32, ptr %arrayidx1813, align 4
  %1976 = load ptr, ptr %out.addr, align 8
  %arrayidx1814 = getelementptr inbounds i32, ptr %1976, i64 6
  %1977 = load i32, ptr %arrayidx1814, align 4
  %xor1815 = xor i32 %1977, %1975
  store i32 %xor1815, ptr %arrayidx1814, align 4
  %1978 = load ptr, ptr %out.addr, align 8
  %arrayidx1816 = getelementptr inbounds i32, ptr %1978, i64 6
  %1979 = load i32, ptr %arrayidx1816, align 4
  %shl1817 = shl i32 %1979, 7
  %1980 = load ptr, ptr %out.addr, align 8
  %arrayidx1818 = getelementptr inbounds i32, ptr %1980, i64 6
  %1981 = load i32, ptr %arrayidx1818, align 4
  %shr1819 = lshr i32 %1981, 25
  %or1820 = or i32 %shl1817, %shr1819
  %1982 = load ptr, ptr %out.addr, align 8
  %arrayidx1821 = getelementptr inbounds i32, ptr %1982, i64 6
  store i32 %or1820, ptr %arrayidx1821, align 4
  %1983 = load ptr, ptr %out.addr, align 8
  %arrayidx1822 = getelementptr inbounds i32, ptr %1983, i64 7
  %1984 = load i32, ptr %arrayidx1822, align 4
  %1985 = load ptr, ptr %out.addr, align 8
  %arrayidx1823 = getelementptr inbounds i32, ptr %1985, i64 2
  %1986 = load i32, ptr %arrayidx1823, align 4
  %add1824 = add i32 %1986, %1984
  store i32 %add1824, ptr %arrayidx1823, align 4
  %1987 = load ptr, ptr %out.addr, align 8
  %arrayidx1825 = getelementptr inbounds i32, ptr %1987, i64 2
  %1988 = load i32, ptr %arrayidx1825, align 4
  %1989 = load ptr, ptr %out.addr, align 8
  %arrayidx1826 = getelementptr inbounds i32, ptr %1989, i64 13
  %1990 = load i32, ptr %arrayidx1826, align 4
  %xor1827 = xor i32 %1990, %1988
  store i32 %xor1827, ptr %arrayidx1826, align 4
  %1991 = load ptr, ptr %out.addr, align 8
  %arrayidx1828 = getelementptr inbounds i32, ptr %1991, i64 13
  %1992 = load i32, ptr %arrayidx1828, align 4
  %shl1829 = shl i32 %1992, 16
  %1993 = load ptr, ptr %out.addr, align 8
  %arrayidx1830 = getelementptr inbounds i32, ptr %1993, i64 13
  %1994 = load i32, ptr %arrayidx1830, align 4
  %shr1831 = lshr i32 %1994, 16
  %or1832 = or i32 %shl1829, %shr1831
  %1995 = load ptr, ptr %out.addr, align 8
  %arrayidx1833 = getelementptr inbounds i32, ptr %1995, i64 13
  store i32 %or1832, ptr %arrayidx1833, align 4
  %1996 = load ptr, ptr %out.addr, align 8
  %arrayidx1834 = getelementptr inbounds i32, ptr %1996, i64 13
  %1997 = load i32, ptr %arrayidx1834, align 4
  %1998 = load ptr, ptr %out.addr, align 8
  %arrayidx1835 = getelementptr inbounds i32, ptr %1998, i64 8
  %1999 = load i32, ptr %arrayidx1835, align 4
  %add1836 = add i32 %1999, %1997
  store i32 %add1836, ptr %arrayidx1835, align 4
  %2000 = load ptr, ptr %out.addr, align 8
  %arrayidx1837 = getelementptr inbounds i32, ptr %2000, i64 8
  %2001 = load i32, ptr %arrayidx1837, align 4
  %2002 = load ptr, ptr %out.addr, align 8
  %arrayidx1838 = getelementptr inbounds i32, ptr %2002, i64 7
  %2003 = load i32, ptr %arrayidx1838, align 4
  %xor1839 = xor i32 %2003, %2001
  store i32 %xor1839, ptr %arrayidx1838, align 4
  %2004 = load ptr, ptr %out.addr, align 8
  %arrayidx1840 = getelementptr inbounds i32, ptr %2004, i64 7
  %2005 = load i32, ptr %arrayidx1840, align 4
  %shl1841 = shl i32 %2005, 12
  %2006 = load ptr, ptr %out.addr, align 8
  %arrayidx1842 = getelementptr inbounds i32, ptr %2006, i64 7
  %2007 = load i32, ptr %arrayidx1842, align 4
  %shr1843 = lshr i32 %2007, 20
  %or1844 = or i32 %shl1841, %shr1843
  %2008 = load ptr, ptr %out.addr, align 8
  %arrayidx1845 = getelementptr inbounds i32, ptr %2008, i64 7
  store i32 %or1844, ptr %arrayidx1845, align 4
  %2009 = load ptr, ptr %out.addr, align 8
  %arrayidx1846 = getelementptr inbounds i32, ptr %2009, i64 7
  %2010 = load i32, ptr %arrayidx1846, align 4
  %2011 = load ptr, ptr %out.addr, align 8
  %arrayidx1847 = getelementptr inbounds i32, ptr %2011, i64 2
  %2012 = load i32, ptr %arrayidx1847, align 4
  %add1848 = add i32 %2012, %2010
  store i32 %add1848, ptr %arrayidx1847, align 4
  %2013 = load ptr, ptr %out.addr, align 8
  %arrayidx1849 = getelementptr inbounds i32, ptr %2013, i64 2
  %2014 = load i32, ptr %arrayidx1849, align 4
  %2015 = load ptr, ptr %out.addr, align 8
  %arrayidx1850 = getelementptr inbounds i32, ptr %2015, i64 13
  %2016 = load i32, ptr %arrayidx1850, align 4
  %xor1851 = xor i32 %2016, %2014
  store i32 %xor1851, ptr %arrayidx1850, align 4
  %2017 = load ptr, ptr %out.addr, align 8
  %arrayidx1852 = getelementptr inbounds i32, ptr %2017, i64 13
  %2018 = load i32, ptr %arrayidx1852, align 4
  %shl1853 = shl i32 %2018, 8
  %2019 = load ptr, ptr %out.addr, align 8
  %arrayidx1854 = getelementptr inbounds i32, ptr %2019, i64 13
  %2020 = load i32, ptr %arrayidx1854, align 4
  %shr1855 = lshr i32 %2020, 24
  %or1856 = or i32 %shl1853, %shr1855
  %2021 = load ptr, ptr %out.addr, align 8
  %arrayidx1857 = getelementptr inbounds i32, ptr %2021, i64 13
  store i32 %or1856, ptr %arrayidx1857, align 4
  %2022 = load ptr, ptr %out.addr, align 8
  %arrayidx1858 = getelementptr inbounds i32, ptr %2022, i64 13
  %2023 = load i32, ptr %arrayidx1858, align 4
  %2024 = load ptr, ptr %out.addr, align 8
  %arrayidx1859 = getelementptr inbounds i32, ptr %2024, i64 8
  %2025 = load i32, ptr %arrayidx1859, align 4
  %add1860 = add i32 %2025, %2023
  store i32 %add1860, ptr %arrayidx1859, align 4
  %2026 = load ptr, ptr %out.addr, align 8
  %arrayidx1861 = getelementptr inbounds i32, ptr %2026, i64 8
  %2027 = load i32, ptr %arrayidx1861, align 4
  %2028 = load ptr, ptr %out.addr, align 8
  %arrayidx1862 = getelementptr inbounds i32, ptr %2028, i64 7
  %2029 = load i32, ptr %arrayidx1862, align 4
  %xor1863 = xor i32 %2029, %2027
  store i32 %xor1863, ptr %arrayidx1862, align 4
  %2030 = load ptr, ptr %out.addr, align 8
  %arrayidx1864 = getelementptr inbounds i32, ptr %2030, i64 7
  %2031 = load i32, ptr %arrayidx1864, align 4
  %shl1865 = shl i32 %2031, 7
  %2032 = load ptr, ptr %out.addr, align 8
  %arrayidx1866 = getelementptr inbounds i32, ptr %2032, i64 7
  %2033 = load i32, ptr %arrayidx1866, align 4
  %shr1867 = lshr i32 %2033, 25
  %or1868 = or i32 %shl1865, %shr1867
  %2034 = load ptr, ptr %out.addr, align 8
  %arrayidx1869 = getelementptr inbounds i32, ptr %2034, i64 7
  store i32 %or1868, ptr %arrayidx1869, align 4
  %2035 = load ptr, ptr %out.addr, align 8
  %arrayidx1870 = getelementptr inbounds i32, ptr %2035, i64 4
  %2036 = load i32, ptr %arrayidx1870, align 4
  %2037 = load ptr, ptr %out.addr, align 8
  %arrayidx1871 = getelementptr inbounds i32, ptr %2037, i64 3
  %2038 = load i32, ptr %arrayidx1871, align 4
  %add1872 = add i32 %2038, %2036
  store i32 %add1872, ptr %arrayidx1871, align 4
  %2039 = load ptr, ptr %out.addr, align 8
  %arrayidx1873 = getelementptr inbounds i32, ptr %2039, i64 3
  %2040 = load i32, ptr %arrayidx1873, align 4
  %2041 = load ptr, ptr %out.addr, align 8
  %arrayidx1874 = getelementptr inbounds i32, ptr %2041, i64 14
  %2042 = load i32, ptr %arrayidx1874, align 4
  %xor1875 = xor i32 %2042, %2040
  store i32 %xor1875, ptr %arrayidx1874, align 4
  %2043 = load ptr, ptr %out.addr, align 8
  %arrayidx1876 = getelementptr inbounds i32, ptr %2043, i64 14
  %2044 = load i32, ptr %arrayidx1876, align 4
  %shl1877 = shl i32 %2044, 16
  %2045 = load ptr, ptr %out.addr, align 8
  %arrayidx1878 = getelementptr inbounds i32, ptr %2045, i64 14
  %2046 = load i32, ptr %arrayidx1878, align 4
  %shr1879 = lshr i32 %2046, 16
  %or1880 = or i32 %shl1877, %shr1879
  %2047 = load ptr, ptr %out.addr, align 8
  %arrayidx1881 = getelementptr inbounds i32, ptr %2047, i64 14
  store i32 %or1880, ptr %arrayidx1881, align 4
  %2048 = load ptr, ptr %out.addr, align 8
  %arrayidx1882 = getelementptr inbounds i32, ptr %2048, i64 14
  %2049 = load i32, ptr %arrayidx1882, align 4
  %2050 = load ptr, ptr %out.addr, align 8
  %arrayidx1883 = getelementptr inbounds i32, ptr %2050, i64 9
  %2051 = load i32, ptr %arrayidx1883, align 4
  %add1884 = add i32 %2051, %2049
  store i32 %add1884, ptr %arrayidx1883, align 4
  %2052 = load ptr, ptr %out.addr, align 8
  %arrayidx1885 = getelementptr inbounds i32, ptr %2052, i64 9
  %2053 = load i32, ptr %arrayidx1885, align 4
  %2054 = load ptr, ptr %out.addr, align 8
  %arrayidx1886 = getelementptr inbounds i32, ptr %2054, i64 4
  %2055 = load i32, ptr %arrayidx1886, align 4
  %xor1887 = xor i32 %2055, %2053
  store i32 %xor1887, ptr %arrayidx1886, align 4
  %2056 = load ptr, ptr %out.addr, align 8
  %arrayidx1888 = getelementptr inbounds i32, ptr %2056, i64 4
  %2057 = load i32, ptr %arrayidx1888, align 4
  %shl1889 = shl i32 %2057, 12
  %2058 = load ptr, ptr %out.addr, align 8
  %arrayidx1890 = getelementptr inbounds i32, ptr %2058, i64 4
  %2059 = load i32, ptr %arrayidx1890, align 4
  %shr1891 = lshr i32 %2059, 20
  %or1892 = or i32 %shl1889, %shr1891
  %2060 = load ptr, ptr %out.addr, align 8
  %arrayidx1893 = getelementptr inbounds i32, ptr %2060, i64 4
  store i32 %or1892, ptr %arrayidx1893, align 4
  %2061 = load ptr, ptr %out.addr, align 8
  %arrayidx1894 = getelementptr inbounds i32, ptr %2061, i64 4
  %2062 = load i32, ptr %arrayidx1894, align 4
  %2063 = load ptr, ptr %out.addr, align 8
  %arrayidx1895 = getelementptr inbounds i32, ptr %2063, i64 3
  %2064 = load i32, ptr %arrayidx1895, align 4
  %add1896 = add i32 %2064, %2062
  store i32 %add1896, ptr %arrayidx1895, align 4
  %2065 = load ptr, ptr %out.addr, align 8
  %arrayidx1897 = getelementptr inbounds i32, ptr %2065, i64 3
  %2066 = load i32, ptr %arrayidx1897, align 4
  %2067 = load ptr, ptr %out.addr, align 8
  %arrayidx1898 = getelementptr inbounds i32, ptr %2067, i64 14
  %2068 = load i32, ptr %arrayidx1898, align 4
  %xor1899 = xor i32 %2068, %2066
  store i32 %xor1899, ptr %arrayidx1898, align 4
  %2069 = load ptr, ptr %out.addr, align 8
  %arrayidx1900 = getelementptr inbounds i32, ptr %2069, i64 14
  %2070 = load i32, ptr %arrayidx1900, align 4
  %shl1901 = shl i32 %2070, 8
  %2071 = load ptr, ptr %out.addr, align 8
  %arrayidx1902 = getelementptr inbounds i32, ptr %2071, i64 14
  %2072 = load i32, ptr %arrayidx1902, align 4
  %shr1903 = lshr i32 %2072, 24
  %or1904 = or i32 %shl1901, %shr1903
  %2073 = load ptr, ptr %out.addr, align 8
  %arrayidx1905 = getelementptr inbounds i32, ptr %2073, i64 14
  store i32 %or1904, ptr %arrayidx1905, align 4
  %2074 = load ptr, ptr %out.addr, align 8
  %arrayidx1906 = getelementptr inbounds i32, ptr %2074, i64 14
  %2075 = load i32, ptr %arrayidx1906, align 4
  %2076 = load ptr, ptr %out.addr, align 8
  %arrayidx1907 = getelementptr inbounds i32, ptr %2076, i64 9
  %2077 = load i32, ptr %arrayidx1907, align 4
  %add1908 = add i32 %2077, %2075
  store i32 %add1908, ptr %arrayidx1907, align 4
  %2078 = load ptr, ptr %out.addr, align 8
  %arrayidx1909 = getelementptr inbounds i32, ptr %2078, i64 9
  %2079 = load i32, ptr %arrayidx1909, align 4
  %2080 = load ptr, ptr %out.addr, align 8
  %arrayidx1910 = getelementptr inbounds i32, ptr %2080, i64 4
  %2081 = load i32, ptr %arrayidx1910, align 4
  %xor1911 = xor i32 %2081, %2079
  store i32 %xor1911, ptr %arrayidx1910, align 4
  %2082 = load ptr, ptr %out.addr, align 8
  %arrayidx1912 = getelementptr inbounds i32, ptr %2082, i64 4
  %2083 = load i32, ptr %arrayidx1912, align 4
  %shl1913 = shl i32 %2083, 7
  %2084 = load ptr, ptr %out.addr, align 8
  %arrayidx1914 = getelementptr inbounds i32, ptr %2084, i64 4
  %2085 = load i32, ptr %arrayidx1914, align 4
  %shr1915 = lshr i32 %2085, 25
  %or1916 = or i32 %shl1913, %shr1915
  %2086 = load ptr, ptr %out.addr, align 8
  %arrayidx1917 = getelementptr inbounds i32, ptr %2086, i64 4
  store i32 %or1916, ptr %arrayidx1917, align 4
  %2087 = load ptr, ptr %out.addr, align 8
  %arrayidx1918 = getelementptr inbounds i32, ptr %2087, i64 4
  %2088 = load i32, ptr %arrayidx1918, align 4
  %2089 = load ptr, ptr %out.addr, align 8
  %arrayidx1919 = getelementptr inbounds i32, ptr %2089, i64 0
  %2090 = load i32, ptr %arrayidx1919, align 4
  %add1920 = add i32 %2090, %2088
  store i32 %add1920, ptr %arrayidx1919, align 4
  %2091 = load ptr, ptr %out.addr, align 8
  %arrayidx1921 = getelementptr inbounds i32, ptr %2091, i64 0
  %2092 = load i32, ptr %arrayidx1921, align 4
  %2093 = load ptr, ptr %out.addr, align 8
  %arrayidx1922 = getelementptr inbounds i32, ptr %2093, i64 12
  %2094 = load i32, ptr %arrayidx1922, align 4
  %xor1923 = xor i32 %2094, %2092
  store i32 %xor1923, ptr %arrayidx1922, align 4
  %2095 = load ptr, ptr %out.addr, align 8
  %arrayidx1924 = getelementptr inbounds i32, ptr %2095, i64 12
  %2096 = load i32, ptr %arrayidx1924, align 4
  %shl1925 = shl i32 %2096, 16
  %2097 = load ptr, ptr %out.addr, align 8
  %arrayidx1926 = getelementptr inbounds i32, ptr %2097, i64 12
  %2098 = load i32, ptr %arrayidx1926, align 4
  %shr1927 = lshr i32 %2098, 16
  %or1928 = or i32 %shl1925, %shr1927
  %2099 = load ptr, ptr %out.addr, align 8
  %arrayidx1929 = getelementptr inbounds i32, ptr %2099, i64 12
  store i32 %or1928, ptr %arrayidx1929, align 4
  %2100 = load ptr, ptr %out.addr, align 8
  %arrayidx1930 = getelementptr inbounds i32, ptr %2100, i64 12
  %2101 = load i32, ptr %arrayidx1930, align 4
  %2102 = load ptr, ptr %out.addr, align 8
  %arrayidx1931 = getelementptr inbounds i32, ptr %2102, i64 8
  %2103 = load i32, ptr %arrayidx1931, align 4
  %add1932 = add i32 %2103, %2101
  store i32 %add1932, ptr %arrayidx1931, align 4
  %2104 = load ptr, ptr %out.addr, align 8
  %arrayidx1933 = getelementptr inbounds i32, ptr %2104, i64 8
  %2105 = load i32, ptr %arrayidx1933, align 4
  %2106 = load ptr, ptr %out.addr, align 8
  %arrayidx1934 = getelementptr inbounds i32, ptr %2106, i64 4
  %2107 = load i32, ptr %arrayidx1934, align 4
  %xor1935 = xor i32 %2107, %2105
  store i32 %xor1935, ptr %arrayidx1934, align 4
  %2108 = load ptr, ptr %out.addr, align 8
  %arrayidx1936 = getelementptr inbounds i32, ptr %2108, i64 4
  %2109 = load i32, ptr %arrayidx1936, align 4
  %shl1937 = shl i32 %2109, 12
  %2110 = load ptr, ptr %out.addr, align 8
  %arrayidx1938 = getelementptr inbounds i32, ptr %2110, i64 4
  %2111 = load i32, ptr %arrayidx1938, align 4
  %shr1939 = lshr i32 %2111, 20
  %or1940 = or i32 %shl1937, %shr1939
  %2112 = load ptr, ptr %out.addr, align 8
  %arrayidx1941 = getelementptr inbounds i32, ptr %2112, i64 4
  store i32 %or1940, ptr %arrayidx1941, align 4
  %2113 = load ptr, ptr %out.addr, align 8
  %arrayidx1942 = getelementptr inbounds i32, ptr %2113, i64 4
  %2114 = load i32, ptr %arrayidx1942, align 4
  %2115 = load ptr, ptr %out.addr, align 8
  %arrayidx1943 = getelementptr inbounds i32, ptr %2115, i64 0
  %2116 = load i32, ptr %arrayidx1943, align 4
  %add1944 = add i32 %2116, %2114
  store i32 %add1944, ptr %arrayidx1943, align 4
  %2117 = load ptr, ptr %out.addr, align 8
  %arrayidx1945 = getelementptr inbounds i32, ptr %2117, i64 0
  %2118 = load i32, ptr %arrayidx1945, align 4
  %2119 = load ptr, ptr %out.addr, align 8
  %arrayidx1946 = getelementptr inbounds i32, ptr %2119, i64 12
  %2120 = load i32, ptr %arrayidx1946, align 4
  %xor1947 = xor i32 %2120, %2118
  store i32 %xor1947, ptr %arrayidx1946, align 4
  %2121 = load ptr, ptr %out.addr, align 8
  %arrayidx1948 = getelementptr inbounds i32, ptr %2121, i64 12
  %2122 = load i32, ptr %arrayidx1948, align 4
  %shl1949 = shl i32 %2122, 8
  %2123 = load ptr, ptr %out.addr, align 8
  %arrayidx1950 = getelementptr inbounds i32, ptr %2123, i64 12
  %2124 = load i32, ptr %arrayidx1950, align 4
  %shr1951 = lshr i32 %2124, 24
  %or1952 = or i32 %shl1949, %shr1951
  %2125 = load ptr, ptr %out.addr, align 8
  %arrayidx1953 = getelementptr inbounds i32, ptr %2125, i64 12
  store i32 %or1952, ptr %arrayidx1953, align 4
  %2126 = load ptr, ptr %out.addr, align 8
  %arrayidx1954 = getelementptr inbounds i32, ptr %2126, i64 12
  %2127 = load i32, ptr %arrayidx1954, align 4
  %2128 = load ptr, ptr %out.addr, align 8
  %arrayidx1955 = getelementptr inbounds i32, ptr %2128, i64 8
  %2129 = load i32, ptr %arrayidx1955, align 4
  %add1956 = add i32 %2129, %2127
  store i32 %add1956, ptr %arrayidx1955, align 4
  %2130 = load ptr, ptr %out.addr, align 8
  %arrayidx1957 = getelementptr inbounds i32, ptr %2130, i64 8
  %2131 = load i32, ptr %arrayidx1957, align 4
  %2132 = load ptr, ptr %out.addr, align 8
  %arrayidx1958 = getelementptr inbounds i32, ptr %2132, i64 4
  %2133 = load i32, ptr %arrayidx1958, align 4
  %xor1959 = xor i32 %2133, %2131
  store i32 %xor1959, ptr %arrayidx1958, align 4
  %2134 = load ptr, ptr %out.addr, align 8
  %arrayidx1960 = getelementptr inbounds i32, ptr %2134, i64 4
  %2135 = load i32, ptr %arrayidx1960, align 4
  %shl1961 = shl i32 %2135, 7
  %2136 = load ptr, ptr %out.addr, align 8
  %arrayidx1962 = getelementptr inbounds i32, ptr %2136, i64 4
  %2137 = load i32, ptr %arrayidx1962, align 4
  %shr1963 = lshr i32 %2137, 25
  %or1964 = or i32 %shl1961, %shr1963
  %2138 = load ptr, ptr %out.addr, align 8
  %arrayidx1965 = getelementptr inbounds i32, ptr %2138, i64 4
  store i32 %or1964, ptr %arrayidx1965, align 4
  %2139 = load ptr, ptr %out.addr, align 8
  %arrayidx1966 = getelementptr inbounds i32, ptr %2139, i64 5
  %2140 = load i32, ptr %arrayidx1966, align 4
  %2141 = load ptr, ptr %out.addr, align 8
  %arrayidx1967 = getelementptr inbounds i32, ptr %2141, i64 1
  %2142 = load i32, ptr %arrayidx1967, align 4
  %add1968 = add i32 %2142, %2140
  store i32 %add1968, ptr %arrayidx1967, align 4
  %2143 = load ptr, ptr %out.addr, align 8
  %arrayidx1969 = getelementptr inbounds i32, ptr %2143, i64 1
  %2144 = load i32, ptr %arrayidx1969, align 4
  %2145 = load ptr, ptr %out.addr, align 8
  %arrayidx1970 = getelementptr inbounds i32, ptr %2145, i64 13
  %2146 = load i32, ptr %arrayidx1970, align 4
  %xor1971 = xor i32 %2146, %2144
  store i32 %xor1971, ptr %arrayidx1970, align 4
  %2147 = load ptr, ptr %out.addr, align 8
  %arrayidx1972 = getelementptr inbounds i32, ptr %2147, i64 13
  %2148 = load i32, ptr %arrayidx1972, align 4
  %shl1973 = shl i32 %2148, 16
  %2149 = load ptr, ptr %out.addr, align 8
  %arrayidx1974 = getelementptr inbounds i32, ptr %2149, i64 13
  %2150 = load i32, ptr %arrayidx1974, align 4
  %shr1975 = lshr i32 %2150, 16
  %or1976 = or i32 %shl1973, %shr1975
  %2151 = load ptr, ptr %out.addr, align 8
  %arrayidx1977 = getelementptr inbounds i32, ptr %2151, i64 13
  store i32 %or1976, ptr %arrayidx1977, align 4
  %2152 = load ptr, ptr %out.addr, align 8
  %arrayidx1978 = getelementptr inbounds i32, ptr %2152, i64 13
  %2153 = load i32, ptr %arrayidx1978, align 4
  %2154 = load ptr, ptr %out.addr, align 8
  %arrayidx1979 = getelementptr inbounds i32, ptr %2154, i64 9
  %2155 = load i32, ptr %arrayidx1979, align 4
  %add1980 = add i32 %2155, %2153
  store i32 %add1980, ptr %arrayidx1979, align 4
  %2156 = load ptr, ptr %out.addr, align 8
  %arrayidx1981 = getelementptr inbounds i32, ptr %2156, i64 9
  %2157 = load i32, ptr %arrayidx1981, align 4
  %2158 = load ptr, ptr %out.addr, align 8
  %arrayidx1982 = getelementptr inbounds i32, ptr %2158, i64 5
  %2159 = load i32, ptr %arrayidx1982, align 4
  %xor1983 = xor i32 %2159, %2157
  store i32 %xor1983, ptr %arrayidx1982, align 4
  %2160 = load ptr, ptr %out.addr, align 8
  %arrayidx1984 = getelementptr inbounds i32, ptr %2160, i64 5
  %2161 = load i32, ptr %arrayidx1984, align 4
  %shl1985 = shl i32 %2161, 12
  %2162 = load ptr, ptr %out.addr, align 8
  %arrayidx1986 = getelementptr inbounds i32, ptr %2162, i64 5
  %2163 = load i32, ptr %arrayidx1986, align 4
  %shr1987 = lshr i32 %2163, 20
  %or1988 = or i32 %shl1985, %shr1987
  %2164 = load ptr, ptr %out.addr, align 8
  %arrayidx1989 = getelementptr inbounds i32, ptr %2164, i64 5
  store i32 %or1988, ptr %arrayidx1989, align 4
  %2165 = load ptr, ptr %out.addr, align 8
  %arrayidx1990 = getelementptr inbounds i32, ptr %2165, i64 5
  %2166 = load i32, ptr %arrayidx1990, align 4
  %2167 = load ptr, ptr %out.addr, align 8
  %arrayidx1991 = getelementptr inbounds i32, ptr %2167, i64 1
  %2168 = load i32, ptr %arrayidx1991, align 4
  %add1992 = add i32 %2168, %2166
  store i32 %add1992, ptr %arrayidx1991, align 4
  %2169 = load ptr, ptr %out.addr, align 8
  %arrayidx1993 = getelementptr inbounds i32, ptr %2169, i64 1
  %2170 = load i32, ptr %arrayidx1993, align 4
  %2171 = load ptr, ptr %out.addr, align 8
  %arrayidx1994 = getelementptr inbounds i32, ptr %2171, i64 13
  %2172 = load i32, ptr %arrayidx1994, align 4
  %xor1995 = xor i32 %2172, %2170
  store i32 %xor1995, ptr %arrayidx1994, align 4
  %2173 = load ptr, ptr %out.addr, align 8
  %arrayidx1996 = getelementptr inbounds i32, ptr %2173, i64 13
  %2174 = load i32, ptr %arrayidx1996, align 4
  %shl1997 = shl i32 %2174, 8
  %2175 = load ptr, ptr %out.addr, align 8
  %arrayidx1998 = getelementptr inbounds i32, ptr %2175, i64 13
  %2176 = load i32, ptr %arrayidx1998, align 4
  %shr1999 = lshr i32 %2176, 24
  %or2000 = or i32 %shl1997, %shr1999
  %2177 = load ptr, ptr %out.addr, align 8
  %arrayidx2001 = getelementptr inbounds i32, ptr %2177, i64 13
  store i32 %or2000, ptr %arrayidx2001, align 4
  %2178 = load ptr, ptr %out.addr, align 8
  %arrayidx2002 = getelementptr inbounds i32, ptr %2178, i64 13
  %2179 = load i32, ptr %arrayidx2002, align 4
  %2180 = load ptr, ptr %out.addr, align 8
  %arrayidx2003 = getelementptr inbounds i32, ptr %2180, i64 9
  %2181 = load i32, ptr %arrayidx2003, align 4
  %add2004 = add i32 %2181, %2179
  store i32 %add2004, ptr %arrayidx2003, align 4
  %2182 = load ptr, ptr %out.addr, align 8
  %arrayidx2005 = getelementptr inbounds i32, ptr %2182, i64 9
  %2183 = load i32, ptr %arrayidx2005, align 4
  %2184 = load ptr, ptr %out.addr, align 8
  %arrayidx2006 = getelementptr inbounds i32, ptr %2184, i64 5
  %2185 = load i32, ptr %arrayidx2006, align 4
  %xor2007 = xor i32 %2185, %2183
  store i32 %xor2007, ptr %arrayidx2006, align 4
  %2186 = load ptr, ptr %out.addr, align 8
  %arrayidx2008 = getelementptr inbounds i32, ptr %2186, i64 5
  %2187 = load i32, ptr %arrayidx2008, align 4
  %shl2009 = shl i32 %2187, 7
  %2188 = load ptr, ptr %out.addr, align 8
  %arrayidx2010 = getelementptr inbounds i32, ptr %2188, i64 5
  %2189 = load i32, ptr %arrayidx2010, align 4
  %shr2011 = lshr i32 %2189, 25
  %or2012 = or i32 %shl2009, %shr2011
  %2190 = load ptr, ptr %out.addr, align 8
  %arrayidx2013 = getelementptr inbounds i32, ptr %2190, i64 5
  store i32 %or2012, ptr %arrayidx2013, align 4
  %2191 = load ptr, ptr %out.addr, align 8
  %arrayidx2014 = getelementptr inbounds i32, ptr %2191, i64 6
  %2192 = load i32, ptr %arrayidx2014, align 4
  %2193 = load ptr, ptr %out.addr, align 8
  %arrayidx2015 = getelementptr inbounds i32, ptr %2193, i64 2
  %2194 = load i32, ptr %arrayidx2015, align 4
  %add2016 = add i32 %2194, %2192
  store i32 %add2016, ptr %arrayidx2015, align 4
  %2195 = load ptr, ptr %out.addr, align 8
  %arrayidx2017 = getelementptr inbounds i32, ptr %2195, i64 2
  %2196 = load i32, ptr %arrayidx2017, align 4
  %2197 = load ptr, ptr %out.addr, align 8
  %arrayidx2018 = getelementptr inbounds i32, ptr %2197, i64 14
  %2198 = load i32, ptr %arrayidx2018, align 4
  %xor2019 = xor i32 %2198, %2196
  store i32 %xor2019, ptr %arrayidx2018, align 4
  %2199 = load ptr, ptr %out.addr, align 8
  %arrayidx2020 = getelementptr inbounds i32, ptr %2199, i64 14
  %2200 = load i32, ptr %arrayidx2020, align 4
  %shl2021 = shl i32 %2200, 16
  %2201 = load ptr, ptr %out.addr, align 8
  %arrayidx2022 = getelementptr inbounds i32, ptr %2201, i64 14
  %2202 = load i32, ptr %arrayidx2022, align 4
  %shr2023 = lshr i32 %2202, 16
  %or2024 = or i32 %shl2021, %shr2023
  %2203 = load ptr, ptr %out.addr, align 8
  %arrayidx2025 = getelementptr inbounds i32, ptr %2203, i64 14
  store i32 %or2024, ptr %arrayidx2025, align 4
  %2204 = load ptr, ptr %out.addr, align 8
  %arrayidx2026 = getelementptr inbounds i32, ptr %2204, i64 14
  %2205 = load i32, ptr %arrayidx2026, align 4
  %2206 = load ptr, ptr %out.addr, align 8
  %arrayidx2027 = getelementptr inbounds i32, ptr %2206, i64 10
  %2207 = load i32, ptr %arrayidx2027, align 4
  %add2028 = add i32 %2207, %2205
  store i32 %add2028, ptr %arrayidx2027, align 4
  %2208 = load ptr, ptr %out.addr, align 8
  %arrayidx2029 = getelementptr inbounds i32, ptr %2208, i64 10
  %2209 = load i32, ptr %arrayidx2029, align 4
  %2210 = load ptr, ptr %out.addr, align 8
  %arrayidx2030 = getelementptr inbounds i32, ptr %2210, i64 6
  %2211 = load i32, ptr %arrayidx2030, align 4
  %xor2031 = xor i32 %2211, %2209
  store i32 %xor2031, ptr %arrayidx2030, align 4
  %2212 = load ptr, ptr %out.addr, align 8
  %arrayidx2032 = getelementptr inbounds i32, ptr %2212, i64 6
  %2213 = load i32, ptr %arrayidx2032, align 4
  %shl2033 = shl i32 %2213, 12
  %2214 = load ptr, ptr %out.addr, align 8
  %arrayidx2034 = getelementptr inbounds i32, ptr %2214, i64 6
  %2215 = load i32, ptr %arrayidx2034, align 4
  %shr2035 = lshr i32 %2215, 20
  %or2036 = or i32 %shl2033, %shr2035
  %2216 = load ptr, ptr %out.addr, align 8
  %arrayidx2037 = getelementptr inbounds i32, ptr %2216, i64 6
  store i32 %or2036, ptr %arrayidx2037, align 4
  %2217 = load ptr, ptr %out.addr, align 8
  %arrayidx2038 = getelementptr inbounds i32, ptr %2217, i64 6
  %2218 = load i32, ptr %arrayidx2038, align 4
  %2219 = load ptr, ptr %out.addr, align 8
  %arrayidx2039 = getelementptr inbounds i32, ptr %2219, i64 2
  %2220 = load i32, ptr %arrayidx2039, align 4
  %add2040 = add i32 %2220, %2218
  store i32 %add2040, ptr %arrayidx2039, align 4
  %2221 = load ptr, ptr %out.addr, align 8
  %arrayidx2041 = getelementptr inbounds i32, ptr %2221, i64 2
  %2222 = load i32, ptr %arrayidx2041, align 4
  %2223 = load ptr, ptr %out.addr, align 8
  %arrayidx2042 = getelementptr inbounds i32, ptr %2223, i64 14
  %2224 = load i32, ptr %arrayidx2042, align 4
  %xor2043 = xor i32 %2224, %2222
  store i32 %xor2043, ptr %arrayidx2042, align 4
  %2225 = load ptr, ptr %out.addr, align 8
  %arrayidx2044 = getelementptr inbounds i32, ptr %2225, i64 14
  %2226 = load i32, ptr %arrayidx2044, align 4
  %shl2045 = shl i32 %2226, 8
  %2227 = load ptr, ptr %out.addr, align 8
  %arrayidx2046 = getelementptr inbounds i32, ptr %2227, i64 14
  %2228 = load i32, ptr %arrayidx2046, align 4
  %shr2047 = lshr i32 %2228, 24
  %or2048 = or i32 %shl2045, %shr2047
  %2229 = load ptr, ptr %out.addr, align 8
  %arrayidx2049 = getelementptr inbounds i32, ptr %2229, i64 14
  store i32 %or2048, ptr %arrayidx2049, align 4
  %2230 = load ptr, ptr %out.addr, align 8
  %arrayidx2050 = getelementptr inbounds i32, ptr %2230, i64 14
  %2231 = load i32, ptr %arrayidx2050, align 4
  %2232 = load ptr, ptr %out.addr, align 8
  %arrayidx2051 = getelementptr inbounds i32, ptr %2232, i64 10
  %2233 = load i32, ptr %arrayidx2051, align 4
  %add2052 = add i32 %2233, %2231
  store i32 %add2052, ptr %arrayidx2051, align 4
  %2234 = load ptr, ptr %out.addr, align 8
  %arrayidx2053 = getelementptr inbounds i32, ptr %2234, i64 10
  %2235 = load i32, ptr %arrayidx2053, align 4
  %2236 = load ptr, ptr %out.addr, align 8
  %arrayidx2054 = getelementptr inbounds i32, ptr %2236, i64 6
  %2237 = load i32, ptr %arrayidx2054, align 4
  %xor2055 = xor i32 %2237, %2235
  store i32 %xor2055, ptr %arrayidx2054, align 4
  %2238 = load ptr, ptr %out.addr, align 8
  %arrayidx2056 = getelementptr inbounds i32, ptr %2238, i64 6
  %2239 = load i32, ptr %arrayidx2056, align 4
  %shl2057 = shl i32 %2239, 7
  %2240 = load ptr, ptr %out.addr, align 8
  %arrayidx2058 = getelementptr inbounds i32, ptr %2240, i64 6
  %2241 = load i32, ptr %arrayidx2058, align 4
  %shr2059 = lshr i32 %2241, 25
  %or2060 = or i32 %shl2057, %shr2059
  %2242 = load ptr, ptr %out.addr, align 8
  %arrayidx2061 = getelementptr inbounds i32, ptr %2242, i64 6
  store i32 %or2060, ptr %arrayidx2061, align 4
  %2243 = load ptr, ptr %out.addr, align 8
  %arrayidx2062 = getelementptr inbounds i32, ptr %2243, i64 7
  %2244 = load i32, ptr %arrayidx2062, align 4
  %2245 = load ptr, ptr %out.addr, align 8
  %arrayidx2063 = getelementptr inbounds i32, ptr %2245, i64 3
  %2246 = load i32, ptr %arrayidx2063, align 4
  %add2064 = add i32 %2246, %2244
  store i32 %add2064, ptr %arrayidx2063, align 4
  %2247 = load ptr, ptr %out.addr, align 8
  %arrayidx2065 = getelementptr inbounds i32, ptr %2247, i64 3
  %2248 = load i32, ptr %arrayidx2065, align 4
  %2249 = load ptr, ptr %out.addr, align 8
  %arrayidx2066 = getelementptr inbounds i32, ptr %2249, i64 15
  %2250 = load i32, ptr %arrayidx2066, align 4
  %xor2067 = xor i32 %2250, %2248
  store i32 %xor2067, ptr %arrayidx2066, align 4
  %2251 = load ptr, ptr %out.addr, align 8
  %arrayidx2068 = getelementptr inbounds i32, ptr %2251, i64 15
  %2252 = load i32, ptr %arrayidx2068, align 4
  %shl2069 = shl i32 %2252, 16
  %2253 = load ptr, ptr %out.addr, align 8
  %arrayidx2070 = getelementptr inbounds i32, ptr %2253, i64 15
  %2254 = load i32, ptr %arrayidx2070, align 4
  %shr2071 = lshr i32 %2254, 16
  %or2072 = or i32 %shl2069, %shr2071
  %2255 = load ptr, ptr %out.addr, align 8
  %arrayidx2073 = getelementptr inbounds i32, ptr %2255, i64 15
  store i32 %or2072, ptr %arrayidx2073, align 4
  %2256 = load ptr, ptr %out.addr, align 8
  %arrayidx2074 = getelementptr inbounds i32, ptr %2256, i64 15
  %2257 = load i32, ptr %arrayidx2074, align 4
  %2258 = load ptr, ptr %out.addr, align 8
  %arrayidx2075 = getelementptr inbounds i32, ptr %2258, i64 11
  %2259 = load i32, ptr %arrayidx2075, align 4
  %add2076 = add i32 %2259, %2257
  store i32 %add2076, ptr %arrayidx2075, align 4
  %2260 = load ptr, ptr %out.addr, align 8
  %arrayidx2077 = getelementptr inbounds i32, ptr %2260, i64 11
  %2261 = load i32, ptr %arrayidx2077, align 4
  %2262 = load ptr, ptr %out.addr, align 8
  %arrayidx2078 = getelementptr inbounds i32, ptr %2262, i64 7
  %2263 = load i32, ptr %arrayidx2078, align 4
  %xor2079 = xor i32 %2263, %2261
  store i32 %xor2079, ptr %arrayidx2078, align 4
  %2264 = load ptr, ptr %out.addr, align 8
  %arrayidx2080 = getelementptr inbounds i32, ptr %2264, i64 7
  %2265 = load i32, ptr %arrayidx2080, align 4
  %shl2081 = shl i32 %2265, 12
  %2266 = load ptr, ptr %out.addr, align 8
  %arrayidx2082 = getelementptr inbounds i32, ptr %2266, i64 7
  %2267 = load i32, ptr %arrayidx2082, align 4
  %shr2083 = lshr i32 %2267, 20
  %or2084 = or i32 %shl2081, %shr2083
  %2268 = load ptr, ptr %out.addr, align 8
  %arrayidx2085 = getelementptr inbounds i32, ptr %2268, i64 7
  store i32 %or2084, ptr %arrayidx2085, align 4
  %2269 = load ptr, ptr %out.addr, align 8
  %arrayidx2086 = getelementptr inbounds i32, ptr %2269, i64 7
  %2270 = load i32, ptr %arrayidx2086, align 4
  %2271 = load ptr, ptr %out.addr, align 8
  %arrayidx2087 = getelementptr inbounds i32, ptr %2271, i64 3
  %2272 = load i32, ptr %arrayidx2087, align 4
  %add2088 = add i32 %2272, %2270
  store i32 %add2088, ptr %arrayidx2087, align 4
  %2273 = load ptr, ptr %out.addr, align 8
  %arrayidx2089 = getelementptr inbounds i32, ptr %2273, i64 3
  %2274 = load i32, ptr %arrayidx2089, align 4
  %2275 = load ptr, ptr %out.addr, align 8
  %arrayidx2090 = getelementptr inbounds i32, ptr %2275, i64 15
  %2276 = load i32, ptr %arrayidx2090, align 4
  %xor2091 = xor i32 %2276, %2274
  store i32 %xor2091, ptr %arrayidx2090, align 4
  %2277 = load ptr, ptr %out.addr, align 8
  %arrayidx2092 = getelementptr inbounds i32, ptr %2277, i64 15
  %2278 = load i32, ptr %arrayidx2092, align 4
  %shl2093 = shl i32 %2278, 8
  %2279 = load ptr, ptr %out.addr, align 8
  %arrayidx2094 = getelementptr inbounds i32, ptr %2279, i64 15
  %2280 = load i32, ptr %arrayidx2094, align 4
  %shr2095 = lshr i32 %2280, 24
  %or2096 = or i32 %shl2093, %shr2095
  %2281 = load ptr, ptr %out.addr, align 8
  %arrayidx2097 = getelementptr inbounds i32, ptr %2281, i64 15
  store i32 %or2096, ptr %arrayidx2097, align 4
  %2282 = load ptr, ptr %out.addr, align 8
  %arrayidx2098 = getelementptr inbounds i32, ptr %2282, i64 15
  %2283 = load i32, ptr %arrayidx2098, align 4
  %2284 = load ptr, ptr %out.addr, align 8
  %arrayidx2099 = getelementptr inbounds i32, ptr %2284, i64 11
  %2285 = load i32, ptr %arrayidx2099, align 4
  %add2100 = add i32 %2285, %2283
  store i32 %add2100, ptr %arrayidx2099, align 4
  %2286 = load ptr, ptr %out.addr, align 8
  %arrayidx2101 = getelementptr inbounds i32, ptr %2286, i64 11
  %2287 = load i32, ptr %arrayidx2101, align 4
  %2288 = load ptr, ptr %out.addr, align 8
  %arrayidx2102 = getelementptr inbounds i32, ptr %2288, i64 7
  %2289 = load i32, ptr %arrayidx2102, align 4
  %xor2103 = xor i32 %2289, %2287
  store i32 %xor2103, ptr %arrayidx2102, align 4
  %2290 = load ptr, ptr %out.addr, align 8
  %arrayidx2104 = getelementptr inbounds i32, ptr %2290, i64 7
  %2291 = load i32, ptr %arrayidx2104, align 4
  %shl2105 = shl i32 %2291, 7
  %2292 = load ptr, ptr %out.addr, align 8
  %arrayidx2106 = getelementptr inbounds i32, ptr %2292, i64 7
  %2293 = load i32, ptr %arrayidx2106, align 4
  %shr2107 = lshr i32 %2293, 25
  %or2108 = or i32 %shl2105, %shr2107
  %2294 = load ptr, ptr %out.addr, align 8
  %arrayidx2109 = getelementptr inbounds i32, ptr %2294, i64 7
  store i32 %or2108, ptr %arrayidx2109, align 4
  %2295 = load ptr, ptr %out.addr, align 8
  %arrayidx2110 = getelementptr inbounds i32, ptr %2295, i64 5
  %2296 = load i32, ptr %arrayidx2110, align 4
  %2297 = load ptr, ptr %out.addr, align 8
  %arrayidx2111 = getelementptr inbounds i32, ptr %2297, i64 0
  %2298 = load i32, ptr %arrayidx2111, align 4
  %add2112 = add i32 %2298, %2296
  store i32 %add2112, ptr %arrayidx2111, align 4
  %2299 = load ptr, ptr %out.addr, align 8
  %arrayidx2113 = getelementptr inbounds i32, ptr %2299, i64 0
  %2300 = load i32, ptr %arrayidx2113, align 4
  %2301 = load ptr, ptr %out.addr, align 8
  %arrayidx2114 = getelementptr inbounds i32, ptr %2301, i64 15
  %2302 = load i32, ptr %arrayidx2114, align 4
  %xor2115 = xor i32 %2302, %2300
  store i32 %xor2115, ptr %arrayidx2114, align 4
  %2303 = load ptr, ptr %out.addr, align 8
  %arrayidx2116 = getelementptr inbounds i32, ptr %2303, i64 15
  %2304 = load i32, ptr %arrayidx2116, align 4
  %shl2117 = shl i32 %2304, 16
  %2305 = load ptr, ptr %out.addr, align 8
  %arrayidx2118 = getelementptr inbounds i32, ptr %2305, i64 15
  %2306 = load i32, ptr %arrayidx2118, align 4
  %shr2119 = lshr i32 %2306, 16
  %or2120 = or i32 %shl2117, %shr2119
  %2307 = load ptr, ptr %out.addr, align 8
  %arrayidx2121 = getelementptr inbounds i32, ptr %2307, i64 15
  store i32 %or2120, ptr %arrayidx2121, align 4
  %2308 = load ptr, ptr %out.addr, align 8
  %arrayidx2122 = getelementptr inbounds i32, ptr %2308, i64 15
  %2309 = load i32, ptr %arrayidx2122, align 4
  %2310 = load ptr, ptr %out.addr, align 8
  %arrayidx2123 = getelementptr inbounds i32, ptr %2310, i64 10
  %2311 = load i32, ptr %arrayidx2123, align 4
  %add2124 = add i32 %2311, %2309
  store i32 %add2124, ptr %arrayidx2123, align 4
  %2312 = load ptr, ptr %out.addr, align 8
  %arrayidx2125 = getelementptr inbounds i32, ptr %2312, i64 10
  %2313 = load i32, ptr %arrayidx2125, align 4
  %2314 = load ptr, ptr %out.addr, align 8
  %arrayidx2126 = getelementptr inbounds i32, ptr %2314, i64 5
  %2315 = load i32, ptr %arrayidx2126, align 4
  %xor2127 = xor i32 %2315, %2313
  store i32 %xor2127, ptr %arrayidx2126, align 4
  %2316 = load ptr, ptr %out.addr, align 8
  %arrayidx2128 = getelementptr inbounds i32, ptr %2316, i64 5
  %2317 = load i32, ptr %arrayidx2128, align 4
  %shl2129 = shl i32 %2317, 12
  %2318 = load ptr, ptr %out.addr, align 8
  %arrayidx2130 = getelementptr inbounds i32, ptr %2318, i64 5
  %2319 = load i32, ptr %arrayidx2130, align 4
  %shr2131 = lshr i32 %2319, 20
  %or2132 = or i32 %shl2129, %shr2131
  %2320 = load ptr, ptr %out.addr, align 8
  %arrayidx2133 = getelementptr inbounds i32, ptr %2320, i64 5
  store i32 %or2132, ptr %arrayidx2133, align 4
  %2321 = load ptr, ptr %out.addr, align 8
  %arrayidx2134 = getelementptr inbounds i32, ptr %2321, i64 5
  %2322 = load i32, ptr %arrayidx2134, align 4
  %2323 = load ptr, ptr %out.addr, align 8
  %arrayidx2135 = getelementptr inbounds i32, ptr %2323, i64 0
  %2324 = load i32, ptr %arrayidx2135, align 4
  %add2136 = add i32 %2324, %2322
  store i32 %add2136, ptr %arrayidx2135, align 4
  %2325 = load ptr, ptr %out.addr, align 8
  %arrayidx2137 = getelementptr inbounds i32, ptr %2325, i64 0
  %2326 = load i32, ptr %arrayidx2137, align 4
  %2327 = load ptr, ptr %out.addr, align 8
  %arrayidx2138 = getelementptr inbounds i32, ptr %2327, i64 15
  %2328 = load i32, ptr %arrayidx2138, align 4
  %xor2139 = xor i32 %2328, %2326
  store i32 %xor2139, ptr %arrayidx2138, align 4
  %2329 = load ptr, ptr %out.addr, align 8
  %arrayidx2140 = getelementptr inbounds i32, ptr %2329, i64 15
  %2330 = load i32, ptr %arrayidx2140, align 4
  %shl2141 = shl i32 %2330, 8
  %2331 = load ptr, ptr %out.addr, align 8
  %arrayidx2142 = getelementptr inbounds i32, ptr %2331, i64 15
  %2332 = load i32, ptr %arrayidx2142, align 4
  %shr2143 = lshr i32 %2332, 24
  %or2144 = or i32 %shl2141, %shr2143
  %2333 = load ptr, ptr %out.addr, align 8
  %arrayidx2145 = getelementptr inbounds i32, ptr %2333, i64 15
  store i32 %or2144, ptr %arrayidx2145, align 4
  %2334 = load ptr, ptr %out.addr, align 8
  %arrayidx2146 = getelementptr inbounds i32, ptr %2334, i64 15
  %2335 = load i32, ptr %arrayidx2146, align 4
  %2336 = load ptr, ptr %out.addr, align 8
  %arrayidx2147 = getelementptr inbounds i32, ptr %2336, i64 10
  %2337 = load i32, ptr %arrayidx2147, align 4
  %add2148 = add i32 %2337, %2335
  store i32 %add2148, ptr %arrayidx2147, align 4
  %2338 = load ptr, ptr %out.addr, align 8
  %arrayidx2149 = getelementptr inbounds i32, ptr %2338, i64 10
  %2339 = load i32, ptr %arrayidx2149, align 4
  %2340 = load ptr, ptr %out.addr, align 8
  %arrayidx2150 = getelementptr inbounds i32, ptr %2340, i64 5
  %2341 = load i32, ptr %arrayidx2150, align 4
  %xor2151 = xor i32 %2341, %2339
  store i32 %xor2151, ptr %arrayidx2150, align 4
  %2342 = load ptr, ptr %out.addr, align 8
  %arrayidx2152 = getelementptr inbounds i32, ptr %2342, i64 5
  %2343 = load i32, ptr %arrayidx2152, align 4
  %shl2153 = shl i32 %2343, 7
  %2344 = load ptr, ptr %out.addr, align 8
  %arrayidx2154 = getelementptr inbounds i32, ptr %2344, i64 5
  %2345 = load i32, ptr %arrayidx2154, align 4
  %shr2155 = lshr i32 %2345, 25
  %or2156 = or i32 %shl2153, %shr2155
  %2346 = load ptr, ptr %out.addr, align 8
  %arrayidx2157 = getelementptr inbounds i32, ptr %2346, i64 5
  store i32 %or2156, ptr %arrayidx2157, align 4
  %2347 = load ptr, ptr %out.addr, align 8
  %arrayidx2158 = getelementptr inbounds i32, ptr %2347, i64 6
  %2348 = load i32, ptr %arrayidx2158, align 4
  %2349 = load ptr, ptr %out.addr, align 8
  %arrayidx2159 = getelementptr inbounds i32, ptr %2349, i64 1
  %2350 = load i32, ptr %arrayidx2159, align 4
  %add2160 = add i32 %2350, %2348
  store i32 %add2160, ptr %arrayidx2159, align 4
  %2351 = load ptr, ptr %out.addr, align 8
  %arrayidx2161 = getelementptr inbounds i32, ptr %2351, i64 1
  %2352 = load i32, ptr %arrayidx2161, align 4
  %2353 = load ptr, ptr %out.addr, align 8
  %arrayidx2162 = getelementptr inbounds i32, ptr %2353, i64 12
  %2354 = load i32, ptr %arrayidx2162, align 4
  %xor2163 = xor i32 %2354, %2352
  store i32 %xor2163, ptr %arrayidx2162, align 4
  %2355 = load ptr, ptr %out.addr, align 8
  %arrayidx2164 = getelementptr inbounds i32, ptr %2355, i64 12
  %2356 = load i32, ptr %arrayidx2164, align 4
  %shl2165 = shl i32 %2356, 16
  %2357 = load ptr, ptr %out.addr, align 8
  %arrayidx2166 = getelementptr inbounds i32, ptr %2357, i64 12
  %2358 = load i32, ptr %arrayidx2166, align 4
  %shr2167 = lshr i32 %2358, 16
  %or2168 = or i32 %shl2165, %shr2167
  %2359 = load ptr, ptr %out.addr, align 8
  %arrayidx2169 = getelementptr inbounds i32, ptr %2359, i64 12
  store i32 %or2168, ptr %arrayidx2169, align 4
  %2360 = load ptr, ptr %out.addr, align 8
  %arrayidx2170 = getelementptr inbounds i32, ptr %2360, i64 12
  %2361 = load i32, ptr %arrayidx2170, align 4
  %2362 = load ptr, ptr %out.addr, align 8
  %arrayidx2171 = getelementptr inbounds i32, ptr %2362, i64 11
  %2363 = load i32, ptr %arrayidx2171, align 4
  %add2172 = add i32 %2363, %2361
  store i32 %add2172, ptr %arrayidx2171, align 4
  %2364 = load ptr, ptr %out.addr, align 8
  %arrayidx2173 = getelementptr inbounds i32, ptr %2364, i64 11
  %2365 = load i32, ptr %arrayidx2173, align 4
  %2366 = load ptr, ptr %out.addr, align 8
  %arrayidx2174 = getelementptr inbounds i32, ptr %2366, i64 6
  %2367 = load i32, ptr %arrayidx2174, align 4
  %xor2175 = xor i32 %2367, %2365
  store i32 %xor2175, ptr %arrayidx2174, align 4
  %2368 = load ptr, ptr %out.addr, align 8
  %arrayidx2176 = getelementptr inbounds i32, ptr %2368, i64 6
  %2369 = load i32, ptr %arrayidx2176, align 4
  %shl2177 = shl i32 %2369, 12
  %2370 = load ptr, ptr %out.addr, align 8
  %arrayidx2178 = getelementptr inbounds i32, ptr %2370, i64 6
  %2371 = load i32, ptr %arrayidx2178, align 4
  %shr2179 = lshr i32 %2371, 20
  %or2180 = or i32 %shl2177, %shr2179
  %2372 = load ptr, ptr %out.addr, align 8
  %arrayidx2181 = getelementptr inbounds i32, ptr %2372, i64 6
  store i32 %or2180, ptr %arrayidx2181, align 4
  %2373 = load ptr, ptr %out.addr, align 8
  %arrayidx2182 = getelementptr inbounds i32, ptr %2373, i64 6
  %2374 = load i32, ptr %arrayidx2182, align 4
  %2375 = load ptr, ptr %out.addr, align 8
  %arrayidx2183 = getelementptr inbounds i32, ptr %2375, i64 1
  %2376 = load i32, ptr %arrayidx2183, align 4
  %add2184 = add i32 %2376, %2374
  store i32 %add2184, ptr %arrayidx2183, align 4
  %2377 = load ptr, ptr %out.addr, align 8
  %arrayidx2185 = getelementptr inbounds i32, ptr %2377, i64 1
  %2378 = load i32, ptr %arrayidx2185, align 4
  %2379 = load ptr, ptr %out.addr, align 8
  %arrayidx2186 = getelementptr inbounds i32, ptr %2379, i64 12
  %2380 = load i32, ptr %arrayidx2186, align 4
  %xor2187 = xor i32 %2380, %2378
  store i32 %xor2187, ptr %arrayidx2186, align 4
  %2381 = load ptr, ptr %out.addr, align 8
  %arrayidx2188 = getelementptr inbounds i32, ptr %2381, i64 12
  %2382 = load i32, ptr %arrayidx2188, align 4
  %shl2189 = shl i32 %2382, 8
  %2383 = load ptr, ptr %out.addr, align 8
  %arrayidx2190 = getelementptr inbounds i32, ptr %2383, i64 12
  %2384 = load i32, ptr %arrayidx2190, align 4
  %shr2191 = lshr i32 %2384, 24
  %or2192 = or i32 %shl2189, %shr2191
  %2385 = load ptr, ptr %out.addr, align 8
  %arrayidx2193 = getelementptr inbounds i32, ptr %2385, i64 12
  store i32 %or2192, ptr %arrayidx2193, align 4
  %2386 = load ptr, ptr %out.addr, align 8
  %arrayidx2194 = getelementptr inbounds i32, ptr %2386, i64 12
  %2387 = load i32, ptr %arrayidx2194, align 4
  %2388 = load ptr, ptr %out.addr, align 8
  %arrayidx2195 = getelementptr inbounds i32, ptr %2388, i64 11
  %2389 = load i32, ptr %arrayidx2195, align 4
  %add2196 = add i32 %2389, %2387
  store i32 %add2196, ptr %arrayidx2195, align 4
  %2390 = load ptr, ptr %out.addr, align 8
  %arrayidx2197 = getelementptr inbounds i32, ptr %2390, i64 11
  %2391 = load i32, ptr %arrayidx2197, align 4
  %2392 = load ptr, ptr %out.addr, align 8
  %arrayidx2198 = getelementptr inbounds i32, ptr %2392, i64 6
  %2393 = load i32, ptr %arrayidx2198, align 4
  %xor2199 = xor i32 %2393, %2391
  store i32 %xor2199, ptr %arrayidx2198, align 4
  %2394 = load ptr, ptr %out.addr, align 8
  %arrayidx2200 = getelementptr inbounds i32, ptr %2394, i64 6
  %2395 = load i32, ptr %arrayidx2200, align 4
  %shl2201 = shl i32 %2395, 7
  %2396 = load ptr, ptr %out.addr, align 8
  %arrayidx2202 = getelementptr inbounds i32, ptr %2396, i64 6
  %2397 = load i32, ptr %arrayidx2202, align 4
  %shr2203 = lshr i32 %2397, 25
  %or2204 = or i32 %shl2201, %shr2203
  %2398 = load ptr, ptr %out.addr, align 8
  %arrayidx2205 = getelementptr inbounds i32, ptr %2398, i64 6
  store i32 %or2204, ptr %arrayidx2205, align 4
  %2399 = load ptr, ptr %out.addr, align 8
  %arrayidx2206 = getelementptr inbounds i32, ptr %2399, i64 7
  %2400 = load i32, ptr %arrayidx2206, align 4
  %2401 = load ptr, ptr %out.addr, align 8
  %arrayidx2207 = getelementptr inbounds i32, ptr %2401, i64 2
  %2402 = load i32, ptr %arrayidx2207, align 4
  %add2208 = add i32 %2402, %2400
  store i32 %add2208, ptr %arrayidx2207, align 4
  %2403 = load ptr, ptr %out.addr, align 8
  %arrayidx2209 = getelementptr inbounds i32, ptr %2403, i64 2
  %2404 = load i32, ptr %arrayidx2209, align 4
  %2405 = load ptr, ptr %out.addr, align 8
  %arrayidx2210 = getelementptr inbounds i32, ptr %2405, i64 13
  %2406 = load i32, ptr %arrayidx2210, align 4
  %xor2211 = xor i32 %2406, %2404
  store i32 %xor2211, ptr %arrayidx2210, align 4
  %2407 = load ptr, ptr %out.addr, align 8
  %arrayidx2212 = getelementptr inbounds i32, ptr %2407, i64 13
  %2408 = load i32, ptr %arrayidx2212, align 4
  %shl2213 = shl i32 %2408, 16
  %2409 = load ptr, ptr %out.addr, align 8
  %arrayidx2214 = getelementptr inbounds i32, ptr %2409, i64 13
  %2410 = load i32, ptr %arrayidx2214, align 4
  %shr2215 = lshr i32 %2410, 16
  %or2216 = or i32 %shl2213, %shr2215
  %2411 = load ptr, ptr %out.addr, align 8
  %arrayidx2217 = getelementptr inbounds i32, ptr %2411, i64 13
  store i32 %or2216, ptr %arrayidx2217, align 4
  %2412 = load ptr, ptr %out.addr, align 8
  %arrayidx2218 = getelementptr inbounds i32, ptr %2412, i64 13
  %2413 = load i32, ptr %arrayidx2218, align 4
  %2414 = load ptr, ptr %out.addr, align 8
  %arrayidx2219 = getelementptr inbounds i32, ptr %2414, i64 8
  %2415 = load i32, ptr %arrayidx2219, align 4
  %add2220 = add i32 %2415, %2413
  store i32 %add2220, ptr %arrayidx2219, align 4
  %2416 = load ptr, ptr %out.addr, align 8
  %arrayidx2221 = getelementptr inbounds i32, ptr %2416, i64 8
  %2417 = load i32, ptr %arrayidx2221, align 4
  %2418 = load ptr, ptr %out.addr, align 8
  %arrayidx2222 = getelementptr inbounds i32, ptr %2418, i64 7
  %2419 = load i32, ptr %arrayidx2222, align 4
  %xor2223 = xor i32 %2419, %2417
  store i32 %xor2223, ptr %arrayidx2222, align 4
  %2420 = load ptr, ptr %out.addr, align 8
  %arrayidx2224 = getelementptr inbounds i32, ptr %2420, i64 7
  %2421 = load i32, ptr %arrayidx2224, align 4
  %shl2225 = shl i32 %2421, 12
  %2422 = load ptr, ptr %out.addr, align 8
  %arrayidx2226 = getelementptr inbounds i32, ptr %2422, i64 7
  %2423 = load i32, ptr %arrayidx2226, align 4
  %shr2227 = lshr i32 %2423, 20
  %or2228 = or i32 %shl2225, %shr2227
  %2424 = load ptr, ptr %out.addr, align 8
  %arrayidx2229 = getelementptr inbounds i32, ptr %2424, i64 7
  store i32 %or2228, ptr %arrayidx2229, align 4
  %2425 = load ptr, ptr %out.addr, align 8
  %arrayidx2230 = getelementptr inbounds i32, ptr %2425, i64 7
  %2426 = load i32, ptr %arrayidx2230, align 4
  %2427 = load ptr, ptr %out.addr, align 8
  %arrayidx2231 = getelementptr inbounds i32, ptr %2427, i64 2
  %2428 = load i32, ptr %arrayidx2231, align 4
  %add2232 = add i32 %2428, %2426
  store i32 %add2232, ptr %arrayidx2231, align 4
  %2429 = load ptr, ptr %out.addr, align 8
  %arrayidx2233 = getelementptr inbounds i32, ptr %2429, i64 2
  %2430 = load i32, ptr %arrayidx2233, align 4
  %2431 = load ptr, ptr %out.addr, align 8
  %arrayidx2234 = getelementptr inbounds i32, ptr %2431, i64 13
  %2432 = load i32, ptr %arrayidx2234, align 4
  %xor2235 = xor i32 %2432, %2430
  store i32 %xor2235, ptr %arrayidx2234, align 4
  %2433 = load ptr, ptr %out.addr, align 8
  %arrayidx2236 = getelementptr inbounds i32, ptr %2433, i64 13
  %2434 = load i32, ptr %arrayidx2236, align 4
  %shl2237 = shl i32 %2434, 8
  %2435 = load ptr, ptr %out.addr, align 8
  %arrayidx2238 = getelementptr inbounds i32, ptr %2435, i64 13
  %2436 = load i32, ptr %arrayidx2238, align 4
  %shr2239 = lshr i32 %2436, 24
  %or2240 = or i32 %shl2237, %shr2239
  %2437 = load ptr, ptr %out.addr, align 8
  %arrayidx2241 = getelementptr inbounds i32, ptr %2437, i64 13
  store i32 %or2240, ptr %arrayidx2241, align 4
  %2438 = load ptr, ptr %out.addr, align 8
  %arrayidx2242 = getelementptr inbounds i32, ptr %2438, i64 13
  %2439 = load i32, ptr %arrayidx2242, align 4
  %2440 = load ptr, ptr %out.addr, align 8
  %arrayidx2243 = getelementptr inbounds i32, ptr %2440, i64 8
  %2441 = load i32, ptr %arrayidx2243, align 4
  %add2244 = add i32 %2441, %2439
  store i32 %add2244, ptr %arrayidx2243, align 4
  %2442 = load ptr, ptr %out.addr, align 8
  %arrayidx2245 = getelementptr inbounds i32, ptr %2442, i64 8
  %2443 = load i32, ptr %arrayidx2245, align 4
  %2444 = load ptr, ptr %out.addr, align 8
  %arrayidx2246 = getelementptr inbounds i32, ptr %2444, i64 7
  %2445 = load i32, ptr %arrayidx2246, align 4
  %xor2247 = xor i32 %2445, %2443
  store i32 %xor2247, ptr %arrayidx2246, align 4
  %2446 = load ptr, ptr %out.addr, align 8
  %arrayidx2248 = getelementptr inbounds i32, ptr %2446, i64 7
  %2447 = load i32, ptr %arrayidx2248, align 4
  %shl2249 = shl i32 %2447, 7
  %2448 = load ptr, ptr %out.addr, align 8
  %arrayidx2250 = getelementptr inbounds i32, ptr %2448, i64 7
  %2449 = load i32, ptr %arrayidx2250, align 4
  %shr2251 = lshr i32 %2449, 25
  %or2252 = or i32 %shl2249, %shr2251
  %2450 = load ptr, ptr %out.addr, align 8
  %arrayidx2253 = getelementptr inbounds i32, ptr %2450, i64 7
  store i32 %or2252, ptr %arrayidx2253, align 4
  %2451 = load ptr, ptr %out.addr, align 8
  %arrayidx2254 = getelementptr inbounds i32, ptr %2451, i64 4
  %2452 = load i32, ptr %arrayidx2254, align 4
  %2453 = load ptr, ptr %out.addr, align 8
  %arrayidx2255 = getelementptr inbounds i32, ptr %2453, i64 3
  %2454 = load i32, ptr %arrayidx2255, align 4
  %add2256 = add i32 %2454, %2452
  store i32 %add2256, ptr %arrayidx2255, align 4
  %2455 = load ptr, ptr %out.addr, align 8
  %arrayidx2257 = getelementptr inbounds i32, ptr %2455, i64 3
  %2456 = load i32, ptr %arrayidx2257, align 4
  %2457 = load ptr, ptr %out.addr, align 8
  %arrayidx2258 = getelementptr inbounds i32, ptr %2457, i64 14
  %2458 = load i32, ptr %arrayidx2258, align 4
  %xor2259 = xor i32 %2458, %2456
  store i32 %xor2259, ptr %arrayidx2258, align 4
  %2459 = load ptr, ptr %out.addr, align 8
  %arrayidx2260 = getelementptr inbounds i32, ptr %2459, i64 14
  %2460 = load i32, ptr %arrayidx2260, align 4
  %shl2261 = shl i32 %2460, 16
  %2461 = load ptr, ptr %out.addr, align 8
  %arrayidx2262 = getelementptr inbounds i32, ptr %2461, i64 14
  %2462 = load i32, ptr %arrayidx2262, align 4
  %shr2263 = lshr i32 %2462, 16
  %or2264 = or i32 %shl2261, %shr2263
  %2463 = load ptr, ptr %out.addr, align 8
  %arrayidx2265 = getelementptr inbounds i32, ptr %2463, i64 14
  store i32 %or2264, ptr %arrayidx2265, align 4
  %2464 = load ptr, ptr %out.addr, align 8
  %arrayidx2266 = getelementptr inbounds i32, ptr %2464, i64 14
  %2465 = load i32, ptr %arrayidx2266, align 4
  %2466 = load ptr, ptr %out.addr, align 8
  %arrayidx2267 = getelementptr inbounds i32, ptr %2466, i64 9
  %2467 = load i32, ptr %arrayidx2267, align 4
  %add2268 = add i32 %2467, %2465
  store i32 %add2268, ptr %arrayidx2267, align 4
  %2468 = load ptr, ptr %out.addr, align 8
  %arrayidx2269 = getelementptr inbounds i32, ptr %2468, i64 9
  %2469 = load i32, ptr %arrayidx2269, align 4
  %2470 = load ptr, ptr %out.addr, align 8
  %arrayidx2270 = getelementptr inbounds i32, ptr %2470, i64 4
  %2471 = load i32, ptr %arrayidx2270, align 4
  %xor2271 = xor i32 %2471, %2469
  store i32 %xor2271, ptr %arrayidx2270, align 4
  %2472 = load ptr, ptr %out.addr, align 8
  %arrayidx2272 = getelementptr inbounds i32, ptr %2472, i64 4
  %2473 = load i32, ptr %arrayidx2272, align 4
  %shl2273 = shl i32 %2473, 12
  %2474 = load ptr, ptr %out.addr, align 8
  %arrayidx2274 = getelementptr inbounds i32, ptr %2474, i64 4
  %2475 = load i32, ptr %arrayidx2274, align 4
  %shr2275 = lshr i32 %2475, 20
  %or2276 = or i32 %shl2273, %shr2275
  %2476 = load ptr, ptr %out.addr, align 8
  %arrayidx2277 = getelementptr inbounds i32, ptr %2476, i64 4
  store i32 %or2276, ptr %arrayidx2277, align 4
  %2477 = load ptr, ptr %out.addr, align 8
  %arrayidx2278 = getelementptr inbounds i32, ptr %2477, i64 4
  %2478 = load i32, ptr %arrayidx2278, align 4
  %2479 = load ptr, ptr %out.addr, align 8
  %arrayidx2279 = getelementptr inbounds i32, ptr %2479, i64 3
  %2480 = load i32, ptr %arrayidx2279, align 4
  %add2280 = add i32 %2480, %2478
  store i32 %add2280, ptr %arrayidx2279, align 4
  %2481 = load ptr, ptr %out.addr, align 8
  %arrayidx2281 = getelementptr inbounds i32, ptr %2481, i64 3
  %2482 = load i32, ptr %arrayidx2281, align 4
  %2483 = load ptr, ptr %out.addr, align 8
  %arrayidx2282 = getelementptr inbounds i32, ptr %2483, i64 14
  %2484 = load i32, ptr %arrayidx2282, align 4
  %xor2283 = xor i32 %2484, %2482
  store i32 %xor2283, ptr %arrayidx2282, align 4
  %2485 = load ptr, ptr %out.addr, align 8
  %arrayidx2284 = getelementptr inbounds i32, ptr %2485, i64 14
  %2486 = load i32, ptr %arrayidx2284, align 4
  %shl2285 = shl i32 %2486, 8
  %2487 = load ptr, ptr %out.addr, align 8
  %arrayidx2286 = getelementptr inbounds i32, ptr %2487, i64 14
  %2488 = load i32, ptr %arrayidx2286, align 4
  %shr2287 = lshr i32 %2488, 24
  %or2288 = or i32 %shl2285, %shr2287
  %2489 = load ptr, ptr %out.addr, align 8
  %arrayidx2289 = getelementptr inbounds i32, ptr %2489, i64 14
  store i32 %or2288, ptr %arrayidx2289, align 4
  %2490 = load ptr, ptr %out.addr, align 8
  %arrayidx2290 = getelementptr inbounds i32, ptr %2490, i64 14
  %2491 = load i32, ptr %arrayidx2290, align 4
  %2492 = load ptr, ptr %out.addr, align 8
  %arrayidx2291 = getelementptr inbounds i32, ptr %2492, i64 9
  %2493 = load i32, ptr %arrayidx2291, align 4
  %add2292 = add i32 %2493, %2491
  store i32 %add2292, ptr %arrayidx2291, align 4
  %2494 = load ptr, ptr %out.addr, align 8
  %arrayidx2293 = getelementptr inbounds i32, ptr %2494, i64 9
  %2495 = load i32, ptr %arrayidx2293, align 4
  %2496 = load ptr, ptr %out.addr, align 8
  %arrayidx2294 = getelementptr inbounds i32, ptr %2496, i64 4
  %2497 = load i32, ptr %arrayidx2294, align 4
  %xor2295 = xor i32 %2497, %2495
  store i32 %xor2295, ptr %arrayidx2294, align 4
  %2498 = load ptr, ptr %out.addr, align 8
  %arrayidx2296 = getelementptr inbounds i32, ptr %2498, i64 4
  %2499 = load i32, ptr %arrayidx2296, align 4
  %shl2297 = shl i32 %2499, 7
  %2500 = load ptr, ptr %out.addr, align 8
  %arrayidx2298 = getelementptr inbounds i32, ptr %2500, i64 4
  %2501 = load i32, ptr %arrayidx2298, align 4
  %shr2299 = lshr i32 %2501, 25
  %or2300 = or i32 %shl2297, %shr2299
  %2502 = load ptr, ptr %out.addr, align 8
  %arrayidx2301 = getelementptr inbounds i32, ptr %2502, i64 4
  store i32 %or2300, ptr %arrayidx2301, align 4
  %2503 = load ptr, ptr %out.addr, align 8
  %arrayidx2302 = getelementptr inbounds i32, ptr %2503, i64 4
  %2504 = load i32, ptr %arrayidx2302, align 4
  %2505 = load ptr, ptr %out.addr, align 8
  %arrayidx2303 = getelementptr inbounds i32, ptr %2505, i64 0
  %2506 = load i32, ptr %arrayidx2303, align 4
  %add2304 = add i32 %2506, %2504
  store i32 %add2304, ptr %arrayidx2303, align 4
  %2507 = load ptr, ptr %out.addr, align 8
  %arrayidx2305 = getelementptr inbounds i32, ptr %2507, i64 0
  %2508 = load i32, ptr %arrayidx2305, align 4
  %2509 = load ptr, ptr %out.addr, align 8
  %arrayidx2306 = getelementptr inbounds i32, ptr %2509, i64 12
  %2510 = load i32, ptr %arrayidx2306, align 4
  %xor2307 = xor i32 %2510, %2508
  store i32 %xor2307, ptr %arrayidx2306, align 4
  %2511 = load ptr, ptr %out.addr, align 8
  %arrayidx2308 = getelementptr inbounds i32, ptr %2511, i64 12
  %2512 = load i32, ptr %arrayidx2308, align 4
  %shl2309 = shl i32 %2512, 16
  %2513 = load ptr, ptr %out.addr, align 8
  %arrayidx2310 = getelementptr inbounds i32, ptr %2513, i64 12
  %2514 = load i32, ptr %arrayidx2310, align 4
  %shr2311 = lshr i32 %2514, 16
  %or2312 = or i32 %shl2309, %shr2311
  %2515 = load ptr, ptr %out.addr, align 8
  %arrayidx2313 = getelementptr inbounds i32, ptr %2515, i64 12
  store i32 %or2312, ptr %arrayidx2313, align 4
  %2516 = load ptr, ptr %out.addr, align 8
  %arrayidx2314 = getelementptr inbounds i32, ptr %2516, i64 12
  %2517 = load i32, ptr %arrayidx2314, align 4
  %2518 = load ptr, ptr %out.addr, align 8
  %arrayidx2315 = getelementptr inbounds i32, ptr %2518, i64 8
  %2519 = load i32, ptr %arrayidx2315, align 4
  %add2316 = add i32 %2519, %2517
  store i32 %add2316, ptr %arrayidx2315, align 4
  %2520 = load ptr, ptr %out.addr, align 8
  %arrayidx2317 = getelementptr inbounds i32, ptr %2520, i64 8
  %2521 = load i32, ptr %arrayidx2317, align 4
  %2522 = load ptr, ptr %out.addr, align 8
  %arrayidx2318 = getelementptr inbounds i32, ptr %2522, i64 4
  %2523 = load i32, ptr %arrayidx2318, align 4
  %xor2319 = xor i32 %2523, %2521
  store i32 %xor2319, ptr %arrayidx2318, align 4
  %2524 = load ptr, ptr %out.addr, align 8
  %arrayidx2320 = getelementptr inbounds i32, ptr %2524, i64 4
  %2525 = load i32, ptr %arrayidx2320, align 4
  %shl2321 = shl i32 %2525, 12
  %2526 = load ptr, ptr %out.addr, align 8
  %arrayidx2322 = getelementptr inbounds i32, ptr %2526, i64 4
  %2527 = load i32, ptr %arrayidx2322, align 4
  %shr2323 = lshr i32 %2527, 20
  %or2324 = or i32 %shl2321, %shr2323
  %2528 = load ptr, ptr %out.addr, align 8
  %arrayidx2325 = getelementptr inbounds i32, ptr %2528, i64 4
  store i32 %or2324, ptr %arrayidx2325, align 4
  %2529 = load ptr, ptr %out.addr, align 8
  %arrayidx2326 = getelementptr inbounds i32, ptr %2529, i64 4
  %2530 = load i32, ptr %arrayidx2326, align 4
  %2531 = load ptr, ptr %out.addr, align 8
  %arrayidx2327 = getelementptr inbounds i32, ptr %2531, i64 0
  %2532 = load i32, ptr %arrayidx2327, align 4
  %add2328 = add i32 %2532, %2530
  store i32 %add2328, ptr %arrayidx2327, align 4
  %2533 = load ptr, ptr %out.addr, align 8
  %arrayidx2329 = getelementptr inbounds i32, ptr %2533, i64 0
  %2534 = load i32, ptr %arrayidx2329, align 4
  %2535 = load ptr, ptr %out.addr, align 8
  %arrayidx2330 = getelementptr inbounds i32, ptr %2535, i64 12
  %2536 = load i32, ptr %arrayidx2330, align 4
  %xor2331 = xor i32 %2536, %2534
  store i32 %xor2331, ptr %arrayidx2330, align 4
  %2537 = load ptr, ptr %out.addr, align 8
  %arrayidx2332 = getelementptr inbounds i32, ptr %2537, i64 12
  %2538 = load i32, ptr %arrayidx2332, align 4
  %shl2333 = shl i32 %2538, 8
  %2539 = load ptr, ptr %out.addr, align 8
  %arrayidx2334 = getelementptr inbounds i32, ptr %2539, i64 12
  %2540 = load i32, ptr %arrayidx2334, align 4
  %shr2335 = lshr i32 %2540, 24
  %or2336 = or i32 %shl2333, %shr2335
  %2541 = load ptr, ptr %out.addr, align 8
  %arrayidx2337 = getelementptr inbounds i32, ptr %2541, i64 12
  store i32 %or2336, ptr %arrayidx2337, align 4
  %2542 = load ptr, ptr %out.addr, align 8
  %arrayidx2338 = getelementptr inbounds i32, ptr %2542, i64 12
  %2543 = load i32, ptr %arrayidx2338, align 4
  %2544 = load ptr, ptr %out.addr, align 8
  %arrayidx2339 = getelementptr inbounds i32, ptr %2544, i64 8
  %2545 = load i32, ptr %arrayidx2339, align 4
  %add2340 = add i32 %2545, %2543
  store i32 %add2340, ptr %arrayidx2339, align 4
  %2546 = load ptr, ptr %out.addr, align 8
  %arrayidx2341 = getelementptr inbounds i32, ptr %2546, i64 8
  %2547 = load i32, ptr %arrayidx2341, align 4
  %2548 = load ptr, ptr %out.addr, align 8
  %arrayidx2342 = getelementptr inbounds i32, ptr %2548, i64 4
  %2549 = load i32, ptr %arrayidx2342, align 4
  %xor2343 = xor i32 %2549, %2547
  store i32 %xor2343, ptr %arrayidx2342, align 4
  %2550 = load ptr, ptr %out.addr, align 8
  %arrayidx2344 = getelementptr inbounds i32, ptr %2550, i64 4
  %2551 = load i32, ptr %arrayidx2344, align 4
  %shl2345 = shl i32 %2551, 7
  %2552 = load ptr, ptr %out.addr, align 8
  %arrayidx2346 = getelementptr inbounds i32, ptr %2552, i64 4
  %2553 = load i32, ptr %arrayidx2346, align 4
  %shr2347 = lshr i32 %2553, 25
  %or2348 = or i32 %shl2345, %shr2347
  %2554 = load ptr, ptr %out.addr, align 8
  %arrayidx2349 = getelementptr inbounds i32, ptr %2554, i64 4
  store i32 %or2348, ptr %arrayidx2349, align 4
  %2555 = load ptr, ptr %out.addr, align 8
  %arrayidx2350 = getelementptr inbounds i32, ptr %2555, i64 5
  %2556 = load i32, ptr %arrayidx2350, align 4
  %2557 = load ptr, ptr %out.addr, align 8
  %arrayidx2351 = getelementptr inbounds i32, ptr %2557, i64 1
  %2558 = load i32, ptr %arrayidx2351, align 4
  %add2352 = add i32 %2558, %2556
  store i32 %add2352, ptr %arrayidx2351, align 4
  %2559 = load ptr, ptr %out.addr, align 8
  %arrayidx2353 = getelementptr inbounds i32, ptr %2559, i64 1
  %2560 = load i32, ptr %arrayidx2353, align 4
  %2561 = load ptr, ptr %out.addr, align 8
  %arrayidx2354 = getelementptr inbounds i32, ptr %2561, i64 13
  %2562 = load i32, ptr %arrayidx2354, align 4
  %xor2355 = xor i32 %2562, %2560
  store i32 %xor2355, ptr %arrayidx2354, align 4
  %2563 = load ptr, ptr %out.addr, align 8
  %arrayidx2356 = getelementptr inbounds i32, ptr %2563, i64 13
  %2564 = load i32, ptr %arrayidx2356, align 4
  %shl2357 = shl i32 %2564, 16
  %2565 = load ptr, ptr %out.addr, align 8
  %arrayidx2358 = getelementptr inbounds i32, ptr %2565, i64 13
  %2566 = load i32, ptr %arrayidx2358, align 4
  %shr2359 = lshr i32 %2566, 16
  %or2360 = or i32 %shl2357, %shr2359
  %2567 = load ptr, ptr %out.addr, align 8
  %arrayidx2361 = getelementptr inbounds i32, ptr %2567, i64 13
  store i32 %or2360, ptr %arrayidx2361, align 4
  %2568 = load ptr, ptr %out.addr, align 8
  %arrayidx2362 = getelementptr inbounds i32, ptr %2568, i64 13
  %2569 = load i32, ptr %arrayidx2362, align 4
  %2570 = load ptr, ptr %out.addr, align 8
  %arrayidx2363 = getelementptr inbounds i32, ptr %2570, i64 9
  %2571 = load i32, ptr %arrayidx2363, align 4
  %add2364 = add i32 %2571, %2569
  store i32 %add2364, ptr %arrayidx2363, align 4
  %2572 = load ptr, ptr %out.addr, align 8
  %arrayidx2365 = getelementptr inbounds i32, ptr %2572, i64 9
  %2573 = load i32, ptr %arrayidx2365, align 4
  %2574 = load ptr, ptr %out.addr, align 8
  %arrayidx2366 = getelementptr inbounds i32, ptr %2574, i64 5
  %2575 = load i32, ptr %arrayidx2366, align 4
  %xor2367 = xor i32 %2575, %2573
  store i32 %xor2367, ptr %arrayidx2366, align 4
  %2576 = load ptr, ptr %out.addr, align 8
  %arrayidx2368 = getelementptr inbounds i32, ptr %2576, i64 5
  %2577 = load i32, ptr %arrayidx2368, align 4
  %shl2369 = shl i32 %2577, 12
  %2578 = load ptr, ptr %out.addr, align 8
  %arrayidx2370 = getelementptr inbounds i32, ptr %2578, i64 5
  %2579 = load i32, ptr %arrayidx2370, align 4
  %shr2371 = lshr i32 %2579, 20
  %or2372 = or i32 %shl2369, %shr2371
  %2580 = load ptr, ptr %out.addr, align 8
  %arrayidx2373 = getelementptr inbounds i32, ptr %2580, i64 5
  store i32 %or2372, ptr %arrayidx2373, align 4
  %2581 = load ptr, ptr %out.addr, align 8
  %arrayidx2374 = getelementptr inbounds i32, ptr %2581, i64 5
  %2582 = load i32, ptr %arrayidx2374, align 4
  %2583 = load ptr, ptr %out.addr, align 8
  %arrayidx2375 = getelementptr inbounds i32, ptr %2583, i64 1
  %2584 = load i32, ptr %arrayidx2375, align 4
  %add2376 = add i32 %2584, %2582
  store i32 %add2376, ptr %arrayidx2375, align 4
  %2585 = load ptr, ptr %out.addr, align 8
  %arrayidx2377 = getelementptr inbounds i32, ptr %2585, i64 1
  %2586 = load i32, ptr %arrayidx2377, align 4
  %2587 = load ptr, ptr %out.addr, align 8
  %arrayidx2378 = getelementptr inbounds i32, ptr %2587, i64 13
  %2588 = load i32, ptr %arrayidx2378, align 4
  %xor2379 = xor i32 %2588, %2586
  store i32 %xor2379, ptr %arrayidx2378, align 4
  %2589 = load ptr, ptr %out.addr, align 8
  %arrayidx2380 = getelementptr inbounds i32, ptr %2589, i64 13
  %2590 = load i32, ptr %arrayidx2380, align 4
  %shl2381 = shl i32 %2590, 8
  %2591 = load ptr, ptr %out.addr, align 8
  %arrayidx2382 = getelementptr inbounds i32, ptr %2591, i64 13
  %2592 = load i32, ptr %arrayidx2382, align 4
  %shr2383 = lshr i32 %2592, 24
  %or2384 = or i32 %shl2381, %shr2383
  %2593 = load ptr, ptr %out.addr, align 8
  %arrayidx2385 = getelementptr inbounds i32, ptr %2593, i64 13
  store i32 %or2384, ptr %arrayidx2385, align 4
  %2594 = load ptr, ptr %out.addr, align 8
  %arrayidx2386 = getelementptr inbounds i32, ptr %2594, i64 13
  %2595 = load i32, ptr %arrayidx2386, align 4
  %2596 = load ptr, ptr %out.addr, align 8
  %arrayidx2387 = getelementptr inbounds i32, ptr %2596, i64 9
  %2597 = load i32, ptr %arrayidx2387, align 4
  %add2388 = add i32 %2597, %2595
  store i32 %add2388, ptr %arrayidx2387, align 4
  %2598 = load ptr, ptr %out.addr, align 8
  %arrayidx2389 = getelementptr inbounds i32, ptr %2598, i64 9
  %2599 = load i32, ptr %arrayidx2389, align 4
  %2600 = load ptr, ptr %out.addr, align 8
  %arrayidx2390 = getelementptr inbounds i32, ptr %2600, i64 5
  %2601 = load i32, ptr %arrayidx2390, align 4
  %xor2391 = xor i32 %2601, %2599
  store i32 %xor2391, ptr %arrayidx2390, align 4
  %2602 = load ptr, ptr %out.addr, align 8
  %arrayidx2392 = getelementptr inbounds i32, ptr %2602, i64 5
  %2603 = load i32, ptr %arrayidx2392, align 4
  %shl2393 = shl i32 %2603, 7
  %2604 = load ptr, ptr %out.addr, align 8
  %arrayidx2394 = getelementptr inbounds i32, ptr %2604, i64 5
  %2605 = load i32, ptr %arrayidx2394, align 4
  %shr2395 = lshr i32 %2605, 25
  %or2396 = or i32 %shl2393, %shr2395
  %2606 = load ptr, ptr %out.addr, align 8
  %arrayidx2397 = getelementptr inbounds i32, ptr %2606, i64 5
  store i32 %or2396, ptr %arrayidx2397, align 4
  %2607 = load ptr, ptr %out.addr, align 8
  %arrayidx2398 = getelementptr inbounds i32, ptr %2607, i64 6
  %2608 = load i32, ptr %arrayidx2398, align 4
  %2609 = load ptr, ptr %out.addr, align 8
  %arrayidx2399 = getelementptr inbounds i32, ptr %2609, i64 2
  %2610 = load i32, ptr %arrayidx2399, align 4
  %add2400 = add i32 %2610, %2608
  store i32 %add2400, ptr %arrayidx2399, align 4
  %2611 = load ptr, ptr %out.addr, align 8
  %arrayidx2401 = getelementptr inbounds i32, ptr %2611, i64 2
  %2612 = load i32, ptr %arrayidx2401, align 4
  %2613 = load ptr, ptr %out.addr, align 8
  %arrayidx2402 = getelementptr inbounds i32, ptr %2613, i64 14
  %2614 = load i32, ptr %arrayidx2402, align 4
  %xor2403 = xor i32 %2614, %2612
  store i32 %xor2403, ptr %arrayidx2402, align 4
  %2615 = load ptr, ptr %out.addr, align 8
  %arrayidx2404 = getelementptr inbounds i32, ptr %2615, i64 14
  %2616 = load i32, ptr %arrayidx2404, align 4
  %shl2405 = shl i32 %2616, 16
  %2617 = load ptr, ptr %out.addr, align 8
  %arrayidx2406 = getelementptr inbounds i32, ptr %2617, i64 14
  %2618 = load i32, ptr %arrayidx2406, align 4
  %shr2407 = lshr i32 %2618, 16
  %or2408 = or i32 %shl2405, %shr2407
  %2619 = load ptr, ptr %out.addr, align 8
  %arrayidx2409 = getelementptr inbounds i32, ptr %2619, i64 14
  store i32 %or2408, ptr %arrayidx2409, align 4
  %2620 = load ptr, ptr %out.addr, align 8
  %arrayidx2410 = getelementptr inbounds i32, ptr %2620, i64 14
  %2621 = load i32, ptr %arrayidx2410, align 4
  %2622 = load ptr, ptr %out.addr, align 8
  %arrayidx2411 = getelementptr inbounds i32, ptr %2622, i64 10
  %2623 = load i32, ptr %arrayidx2411, align 4
  %add2412 = add i32 %2623, %2621
  store i32 %add2412, ptr %arrayidx2411, align 4
  %2624 = load ptr, ptr %out.addr, align 8
  %arrayidx2413 = getelementptr inbounds i32, ptr %2624, i64 10
  %2625 = load i32, ptr %arrayidx2413, align 4
  %2626 = load ptr, ptr %out.addr, align 8
  %arrayidx2414 = getelementptr inbounds i32, ptr %2626, i64 6
  %2627 = load i32, ptr %arrayidx2414, align 4
  %xor2415 = xor i32 %2627, %2625
  store i32 %xor2415, ptr %arrayidx2414, align 4
  %2628 = load ptr, ptr %out.addr, align 8
  %arrayidx2416 = getelementptr inbounds i32, ptr %2628, i64 6
  %2629 = load i32, ptr %arrayidx2416, align 4
  %shl2417 = shl i32 %2629, 12
  %2630 = load ptr, ptr %out.addr, align 8
  %arrayidx2418 = getelementptr inbounds i32, ptr %2630, i64 6
  %2631 = load i32, ptr %arrayidx2418, align 4
  %shr2419 = lshr i32 %2631, 20
  %or2420 = or i32 %shl2417, %shr2419
  %2632 = load ptr, ptr %out.addr, align 8
  %arrayidx2421 = getelementptr inbounds i32, ptr %2632, i64 6
  store i32 %or2420, ptr %arrayidx2421, align 4
  %2633 = load ptr, ptr %out.addr, align 8
  %arrayidx2422 = getelementptr inbounds i32, ptr %2633, i64 6
  %2634 = load i32, ptr %arrayidx2422, align 4
  %2635 = load ptr, ptr %out.addr, align 8
  %arrayidx2423 = getelementptr inbounds i32, ptr %2635, i64 2
  %2636 = load i32, ptr %arrayidx2423, align 4
  %add2424 = add i32 %2636, %2634
  store i32 %add2424, ptr %arrayidx2423, align 4
  %2637 = load ptr, ptr %out.addr, align 8
  %arrayidx2425 = getelementptr inbounds i32, ptr %2637, i64 2
  %2638 = load i32, ptr %arrayidx2425, align 4
  %2639 = load ptr, ptr %out.addr, align 8
  %arrayidx2426 = getelementptr inbounds i32, ptr %2639, i64 14
  %2640 = load i32, ptr %arrayidx2426, align 4
  %xor2427 = xor i32 %2640, %2638
  store i32 %xor2427, ptr %arrayidx2426, align 4
  %2641 = load ptr, ptr %out.addr, align 8
  %arrayidx2428 = getelementptr inbounds i32, ptr %2641, i64 14
  %2642 = load i32, ptr %arrayidx2428, align 4
  %shl2429 = shl i32 %2642, 8
  %2643 = load ptr, ptr %out.addr, align 8
  %arrayidx2430 = getelementptr inbounds i32, ptr %2643, i64 14
  %2644 = load i32, ptr %arrayidx2430, align 4
  %shr2431 = lshr i32 %2644, 24
  %or2432 = or i32 %shl2429, %shr2431
  %2645 = load ptr, ptr %out.addr, align 8
  %arrayidx2433 = getelementptr inbounds i32, ptr %2645, i64 14
  store i32 %or2432, ptr %arrayidx2433, align 4
  %2646 = load ptr, ptr %out.addr, align 8
  %arrayidx2434 = getelementptr inbounds i32, ptr %2646, i64 14
  %2647 = load i32, ptr %arrayidx2434, align 4
  %2648 = load ptr, ptr %out.addr, align 8
  %arrayidx2435 = getelementptr inbounds i32, ptr %2648, i64 10
  %2649 = load i32, ptr %arrayidx2435, align 4
  %add2436 = add i32 %2649, %2647
  store i32 %add2436, ptr %arrayidx2435, align 4
  %2650 = load ptr, ptr %out.addr, align 8
  %arrayidx2437 = getelementptr inbounds i32, ptr %2650, i64 10
  %2651 = load i32, ptr %arrayidx2437, align 4
  %2652 = load ptr, ptr %out.addr, align 8
  %arrayidx2438 = getelementptr inbounds i32, ptr %2652, i64 6
  %2653 = load i32, ptr %arrayidx2438, align 4
  %xor2439 = xor i32 %2653, %2651
  store i32 %xor2439, ptr %arrayidx2438, align 4
  %2654 = load ptr, ptr %out.addr, align 8
  %arrayidx2440 = getelementptr inbounds i32, ptr %2654, i64 6
  %2655 = load i32, ptr %arrayidx2440, align 4
  %shl2441 = shl i32 %2655, 7
  %2656 = load ptr, ptr %out.addr, align 8
  %arrayidx2442 = getelementptr inbounds i32, ptr %2656, i64 6
  %2657 = load i32, ptr %arrayidx2442, align 4
  %shr2443 = lshr i32 %2657, 25
  %or2444 = or i32 %shl2441, %shr2443
  %2658 = load ptr, ptr %out.addr, align 8
  %arrayidx2445 = getelementptr inbounds i32, ptr %2658, i64 6
  store i32 %or2444, ptr %arrayidx2445, align 4
  %2659 = load ptr, ptr %out.addr, align 8
  %arrayidx2446 = getelementptr inbounds i32, ptr %2659, i64 7
  %2660 = load i32, ptr %arrayidx2446, align 4
  %2661 = load ptr, ptr %out.addr, align 8
  %arrayidx2447 = getelementptr inbounds i32, ptr %2661, i64 3
  %2662 = load i32, ptr %arrayidx2447, align 4
  %add2448 = add i32 %2662, %2660
  store i32 %add2448, ptr %arrayidx2447, align 4
  %2663 = load ptr, ptr %out.addr, align 8
  %arrayidx2449 = getelementptr inbounds i32, ptr %2663, i64 3
  %2664 = load i32, ptr %arrayidx2449, align 4
  %2665 = load ptr, ptr %out.addr, align 8
  %arrayidx2450 = getelementptr inbounds i32, ptr %2665, i64 15
  %2666 = load i32, ptr %arrayidx2450, align 4
  %xor2451 = xor i32 %2666, %2664
  store i32 %xor2451, ptr %arrayidx2450, align 4
  %2667 = load ptr, ptr %out.addr, align 8
  %arrayidx2452 = getelementptr inbounds i32, ptr %2667, i64 15
  %2668 = load i32, ptr %arrayidx2452, align 4
  %shl2453 = shl i32 %2668, 16
  %2669 = load ptr, ptr %out.addr, align 8
  %arrayidx2454 = getelementptr inbounds i32, ptr %2669, i64 15
  %2670 = load i32, ptr %arrayidx2454, align 4
  %shr2455 = lshr i32 %2670, 16
  %or2456 = or i32 %shl2453, %shr2455
  %2671 = load ptr, ptr %out.addr, align 8
  %arrayidx2457 = getelementptr inbounds i32, ptr %2671, i64 15
  store i32 %or2456, ptr %arrayidx2457, align 4
  %2672 = load ptr, ptr %out.addr, align 8
  %arrayidx2458 = getelementptr inbounds i32, ptr %2672, i64 15
  %2673 = load i32, ptr %arrayidx2458, align 4
  %2674 = load ptr, ptr %out.addr, align 8
  %arrayidx2459 = getelementptr inbounds i32, ptr %2674, i64 11
  %2675 = load i32, ptr %arrayidx2459, align 4
  %add2460 = add i32 %2675, %2673
  store i32 %add2460, ptr %arrayidx2459, align 4
  %2676 = load ptr, ptr %out.addr, align 8
  %arrayidx2461 = getelementptr inbounds i32, ptr %2676, i64 11
  %2677 = load i32, ptr %arrayidx2461, align 4
  %2678 = load ptr, ptr %out.addr, align 8
  %arrayidx2462 = getelementptr inbounds i32, ptr %2678, i64 7
  %2679 = load i32, ptr %arrayidx2462, align 4
  %xor2463 = xor i32 %2679, %2677
  store i32 %xor2463, ptr %arrayidx2462, align 4
  %2680 = load ptr, ptr %out.addr, align 8
  %arrayidx2464 = getelementptr inbounds i32, ptr %2680, i64 7
  %2681 = load i32, ptr %arrayidx2464, align 4
  %shl2465 = shl i32 %2681, 12
  %2682 = load ptr, ptr %out.addr, align 8
  %arrayidx2466 = getelementptr inbounds i32, ptr %2682, i64 7
  %2683 = load i32, ptr %arrayidx2466, align 4
  %shr2467 = lshr i32 %2683, 20
  %or2468 = or i32 %shl2465, %shr2467
  %2684 = load ptr, ptr %out.addr, align 8
  %arrayidx2469 = getelementptr inbounds i32, ptr %2684, i64 7
  store i32 %or2468, ptr %arrayidx2469, align 4
  %2685 = load ptr, ptr %out.addr, align 8
  %arrayidx2470 = getelementptr inbounds i32, ptr %2685, i64 7
  %2686 = load i32, ptr %arrayidx2470, align 4
  %2687 = load ptr, ptr %out.addr, align 8
  %arrayidx2471 = getelementptr inbounds i32, ptr %2687, i64 3
  %2688 = load i32, ptr %arrayidx2471, align 4
  %add2472 = add i32 %2688, %2686
  store i32 %add2472, ptr %arrayidx2471, align 4
  %2689 = load ptr, ptr %out.addr, align 8
  %arrayidx2473 = getelementptr inbounds i32, ptr %2689, i64 3
  %2690 = load i32, ptr %arrayidx2473, align 4
  %2691 = load ptr, ptr %out.addr, align 8
  %arrayidx2474 = getelementptr inbounds i32, ptr %2691, i64 15
  %2692 = load i32, ptr %arrayidx2474, align 4
  %xor2475 = xor i32 %2692, %2690
  store i32 %xor2475, ptr %arrayidx2474, align 4
  %2693 = load ptr, ptr %out.addr, align 8
  %arrayidx2476 = getelementptr inbounds i32, ptr %2693, i64 15
  %2694 = load i32, ptr %arrayidx2476, align 4
  %shl2477 = shl i32 %2694, 8
  %2695 = load ptr, ptr %out.addr, align 8
  %arrayidx2478 = getelementptr inbounds i32, ptr %2695, i64 15
  %2696 = load i32, ptr %arrayidx2478, align 4
  %shr2479 = lshr i32 %2696, 24
  %or2480 = or i32 %shl2477, %shr2479
  %2697 = load ptr, ptr %out.addr, align 8
  %arrayidx2481 = getelementptr inbounds i32, ptr %2697, i64 15
  store i32 %or2480, ptr %arrayidx2481, align 4
  %2698 = load ptr, ptr %out.addr, align 8
  %arrayidx2482 = getelementptr inbounds i32, ptr %2698, i64 15
  %2699 = load i32, ptr %arrayidx2482, align 4
  %2700 = load ptr, ptr %out.addr, align 8
  %arrayidx2483 = getelementptr inbounds i32, ptr %2700, i64 11
  %2701 = load i32, ptr %arrayidx2483, align 4
  %add2484 = add i32 %2701, %2699
  store i32 %add2484, ptr %arrayidx2483, align 4
  %2702 = load ptr, ptr %out.addr, align 8
  %arrayidx2485 = getelementptr inbounds i32, ptr %2702, i64 11
  %2703 = load i32, ptr %arrayidx2485, align 4
  %2704 = load ptr, ptr %out.addr, align 8
  %arrayidx2486 = getelementptr inbounds i32, ptr %2704, i64 7
  %2705 = load i32, ptr %arrayidx2486, align 4
  %xor2487 = xor i32 %2705, %2703
  store i32 %xor2487, ptr %arrayidx2486, align 4
  %2706 = load ptr, ptr %out.addr, align 8
  %arrayidx2488 = getelementptr inbounds i32, ptr %2706, i64 7
  %2707 = load i32, ptr %arrayidx2488, align 4
  %shl2489 = shl i32 %2707, 7
  %2708 = load ptr, ptr %out.addr, align 8
  %arrayidx2490 = getelementptr inbounds i32, ptr %2708, i64 7
  %2709 = load i32, ptr %arrayidx2490, align 4
  %shr2491 = lshr i32 %2709, 25
  %or2492 = or i32 %shl2489, %shr2491
  %2710 = load ptr, ptr %out.addr, align 8
  %arrayidx2493 = getelementptr inbounds i32, ptr %2710, i64 7
  store i32 %or2492, ptr %arrayidx2493, align 4
  %2711 = load ptr, ptr %out.addr, align 8
  %arrayidx2494 = getelementptr inbounds i32, ptr %2711, i64 5
  %2712 = load i32, ptr %arrayidx2494, align 4
  %2713 = load ptr, ptr %out.addr, align 8
  %arrayidx2495 = getelementptr inbounds i32, ptr %2713, i64 0
  %2714 = load i32, ptr %arrayidx2495, align 4
  %add2496 = add i32 %2714, %2712
  store i32 %add2496, ptr %arrayidx2495, align 4
  %2715 = load ptr, ptr %out.addr, align 8
  %arrayidx2497 = getelementptr inbounds i32, ptr %2715, i64 0
  %2716 = load i32, ptr %arrayidx2497, align 4
  %2717 = load ptr, ptr %out.addr, align 8
  %arrayidx2498 = getelementptr inbounds i32, ptr %2717, i64 15
  %2718 = load i32, ptr %arrayidx2498, align 4
  %xor2499 = xor i32 %2718, %2716
  store i32 %xor2499, ptr %arrayidx2498, align 4
  %2719 = load ptr, ptr %out.addr, align 8
  %arrayidx2500 = getelementptr inbounds i32, ptr %2719, i64 15
  %2720 = load i32, ptr %arrayidx2500, align 4
  %shl2501 = shl i32 %2720, 16
  %2721 = load ptr, ptr %out.addr, align 8
  %arrayidx2502 = getelementptr inbounds i32, ptr %2721, i64 15
  %2722 = load i32, ptr %arrayidx2502, align 4
  %shr2503 = lshr i32 %2722, 16
  %or2504 = or i32 %shl2501, %shr2503
  %2723 = load ptr, ptr %out.addr, align 8
  %arrayidx2505 = getelementptr inbounds i32, ptr %2723, i64 15
  store i32 %or2504, ptr %arrayidx2505, align 4
  %2724 = load ptr, ptr %out.addr, align 8
  %arrayidx2506 = getelementptr inbounds i32, ptr %2724, i64 15
  %2725 = load i32, ptr %arrayidx2506, align 4
  %2726 = load ptr, ptr %out.addr, align 8
  %arrayidx2507 = getelementptr inbounds i32, ptr %2726, i64 10
  %2727 = load i32, ptr %arrayidx2507, align 4
  %add2508 = add i32 %2727, %2725
  store i32 %add2508, ptr %arrayidx2507, align 4
  %2728 = load ptr, ptr %out.addr, align 8
  %arrayidx2509 = getelementptr inbounds i32, ptr %2728, i64 10
  %2729 = load i32, ptr %arrayidx2509, align 4
  %2730 = load ptr, ptr %out.addr, align 8
  %arrayidx2510 = getelementptr inbounds i32, ptr %2730, i64 5
  %2731 = load i32, ptr %arrayidx2510, align 4
  %xor2511 = xor i32 %2731, %2729
  store i32 %xor2511, ptr %arrayidx2510, align 4
  %2732 = load ptr, ptr %out.addr, align 8
  %arrayidx2512 = getelementptr inbounds i32, ptr %2732, i64 5
  %2733 = load i32, ptr %arrayidx2512, align 4
  %shl2513 = shl i32 %2733, 12
  %2734 = load ptr, ptr %out.addr, align 8
  %arrayidx2514 = getelementptr inbounds i32, ptr %2734, i64 5
  %2735 = load i32, ptr %arrayidx2514, align 4
  %shr2515 = lshr i32 %2735, 20
  %or2516 = or i32 %shl2513, %shr2515
  %2736 = load ptr, ptr %out.addr, align 8
  %arrayidx2517 = getelementptr inbounds i32, ptr %2736, i64 5
  store i32 %or2516, ptr %arrayidx2517, align 4
  %2737 = load ptr, ptr %out.addr, align 8
  %arrayidx2518 = getelementptr inbounds i32, ptr %2737, i64 5
  %2738 = load i32, ptr %arrayidx2518, align 4
  %2739 = load ptr, ptr %out.addr, align 8
  %arrayidx2519 = getelementptr inbounds i32, ptr %2739, i64 0
  %2740 = load i32, ptr %arrayidx2519, align 4
  %add2520 = add i32 %2740, %2738
  store i32 %add2520, ptr %arrayidx2519, align 4
  %2741 = load ptr, ptr %out.addr, align 8
  %arrayidx2521 = getelementptr inbounds i32, ptr %2741, i64 0
  %2742 = load i32, ptr %arrayidx2521, align 4
  %2743 = load ptr, ptr %out.addr, align 8
  %arrayidx2522 = getelementptr inbounds i32, ptr %2743, i64 15
  %2744 = load i32, ptr %arrayidx2522, align 4
  %xor2523 = xor i32 %2744, %2742
  store i32 %xor2523, ptr %arrayidx2522, align 4
  %2745 = load ptr, ptr %out.addr, align 8
  %arrayidx2524 = getelementptr inbounds i32, ptr %2745, i64 15
  %2746 = load i32, ptr %arrayidx2524, align 4
  %shl2525 = shl i32 %2746, 8
  %2747 = load ptr, ptr %out.addr, align 8
  %arrayidx2526 = getelementptr inbounds i32, ptr %2747, i64 15
  %2748 = load i32, ptr %arrayidx2526, align 4
  %shr2527 = lshr i32 %2748, 24
  %or2528 = or i32 %shl2525, %shr2527
  %2749 = load ptr, ptr %out.addr, align 8
  %arrayidx2529 = getelementptr inbounds i32, ptr %2749, i64 15
  store i32 %or2528, ptr %arrayidx2529, align 4
  %2750 = load ptr, ptr %out.addr, align 8
  %arrayidx2530 = getelementptr inbounds i32, ptr %2750, i64 15
  %2751 = load i32, ptr %arrayidx2530, align 4
  %2752 = load ptr, ptr %out.addr, align 8
  %arrayidx2531 = getelementptr inbounds i32, ptr %2752, i64 10
  %2753 = load i32, ptr %arrayidx2531, align 4
  %add2532 = add i32 %2753, %2751
  store i32 %add2532, ptr %arrayidx2531, align 4
  %2754 = load ptr, ptr %out.addr, align 8
  %arrayidx2533 = getelementptr inbounds i32, ptr %2754, i64 10
  %2755 = load i32, ptr %arrayidx2533, align 4
  %2756 = load ptr, ptr %out.addr, align 8
  %arrayidx2534 = getelementptr inbounds i32, ptr %2756, i64 5
  %2757 = load i32, ptr %arrayidx2534, align 4
  %xor2535 = xor i32 %2757, %2755
  store i32 %xor2535, ptr %arrayidx2534, align 4
  %2758 = load ptr, ptr %out.addr, align 8
  %arrayidx2536 = getelementptr inbounds i32, ptr %2758, i64 5
  %2759 = load i32, ptr %arrayidx2536, align 4
  %shl2537 = shl i32 %2759, 7
  %2760 = load ptr, ptr %out.addr, align 8
  %arrayidx2538 = getelementptr inbounds i32, ptr %2760, i64 5
  %2761 = load i32, ptr %arrayidx2538, align 4
  %shr2539 = lshr i32 %2761, 25
  %or2540 = or i32 %shl2537, %shr2539
  %2762 = load ptr, ptr %out.addr, align 8
  %arrayidx2541 = getelementptr inbounds i32, ptr %2762, i64 5
  store i32 %or2540, ptr %arrayidx2541, align 4
  %2763 = load ptr, ptr %out.addr, align 8
  %arrayidx2542 = getelementptr inbounds i32, ptr %2763, i64 6
  %2764 = load i32, ptr %arrayidx2542, align 4
  %2765 = load ptr, ptr %out.addr, align 8
  %arrayidx2543 = getelementptr inbounds i32, ptr %2765, i64 1
  %2766 = load i32, ptr %arrayidx2543, align 4
  %add2544 = add i32 %2766, %2764
  store i32 %add2544, ptr %arrayidx2543, align 4
  %2767 = load ptr, ptr %out.addr, align 8
  %arrayidx2545 = getelementptr inbounds i32, ptr %2767, i64 1
  %2768 = load i32, ptr %arrayidx2545, align 4
  %2769 = load ptr, ptr %out.addr, align 8
  %arrayidx2546 = getelementptr inbounds i32, ptr %2769, i64 12
  %2770 = load i32, ptr %arrayidx2546, align 4
  %xor2547 = xor i32 %2770, %2768
  store i32 %xor2547, ptr %arrayidx2546, align 4
  %2771 = load ptr, ptr %out.addr, align 8
  %arrayidx2548 = getelementptr inbounds i32, ptr %2771, i64 12
  %2772 = load i32, ptr %arrayidx2548, align 4
  %shl2549 = shl i32 %2772, 16
  %2773 = load ptr, ptr %out.addr, align 8
  %arrayidx2550 = getelementptr inbounds i32, ptr %2773, i64 12
  %2774 = load i32, ptr %arrayidx2550, align 4
  %shr2551 = lshr i32 %2774, 16
  %or2552 = or i32 %shl2549, %shr2551
  %2775 = load ptr, ptr %out.addr, align 8
  %arrayidx2553 = getelementptr inbounds i32, ptr %2775, i64 12
  store i32 %or2552, ptr %arrayidx2553, align 4
  %2776 = load ptr, ptr %out.addr, align 8
  %arrayidx2554 = getelementptr inbounds i32, ptr %2776, i64 12
  %2777 = load i32, ptr %arrayidx2554, align 4
  %2778 = load ptr, ptr %out.addr, align 8
  %arrayidx2555 = getelementptr inbounds i32, ptr %2778, i64 11
  %2779 = load i32, ptr %arrayidx2555, align 4
  %add2556 = add i32 %2779, %2777
  store i32 %add2556, ptr %arrayidx2555, align 4
  %2780 = load ptr, ptr %out.addr, align 8
  %arrayidx2557 = getelementptr inbounds i32, ptr %2780, i64 11
  %2781 = load i32, ptr %arrayidx2557, align 4
  %2782 = load ptr, ptr %out.addr, align 8
  %arrayidx2558 = getelementptr inbounds i32, ptr %2782, i64 6
  %2783 = load i32, ptr %arrayidx2558, align 4
  %xor2559 = xor i32 %2783, %2781
  store i32 %xor2559, ptr %arrayidx2558, align 4
  %2784 = load ptr, ptr %out.addr, align 8
  %arrayidx2560 = getelementptr inbounds i32, ptr %2784, i64 6
  %2785 = load i32, ptr %arrayidx2560, align 4
  %shl2561 = shl i32 %2785, 12
  %2786 = load ptr, ptr %out.addr, align 8
  %arrayidx2562 = getelementptr inbounds i32, ptr %2786, i64 6
  %2787 = load i32, ptr %arrayidx2562, align 4
  %shr2563 = lshr i32 %2787, 20
  %or2564 = or i32 %shl2561, %shr2563
  %2788 = load ptr, ptr %out.addr, align 8
  %arrayidx2565 = getelementptr inbounds i32, ptr %2788, i64 6
  store i32 %or2564, ptr %arrayidx2565, align 4
  %2789 = load ptr, ptr %out.addr, align 8
  %arrayidx2566 = getelementptr inbounds i32, ptr %2789, i64 6
  %2790 = load i32, ptr %arrayidx2566, align 4
  %2791 = load ptr, ptr %out.addr, align 8
  %arrayidx2567 = getelementptr inbounds i32, ptr %2791, i64 1
  %2792 = load i32, ptr %arrayidx2567, align 4
  %add2568 = add i32 %2792, %2790
  store i32 %add2568, ptr %arrayidx2567, align 4
  %2793 = load ptr, ptr %out.addr, align 8
  %arrayidx2569 = getelementptr inbounds i32, ptr %2793, i64 1
  %2794 = load i32, ptr %arrayidx2569, align 4
  %2795 = load ptr, ptr %out.addr, align 8
  %arrayidx2570 = getelementptr inbounds i32, ptr %2795, i64 12
  %2796 = load i32, ptr %arrayidx2570, align 4
  %xor2571 = xor i32 %2796, %2794
  store i32 %xor2571, ptr %arrayidx2570, align 4
  %2797 = load ptr, ptr %out.addr, align 8
  %arrayidx2572 = getelementptr inbounds i32, ptr %2797, i64 12
  %2798 = load i32, ptr %arrayidx2572, align 4
  %shl2573 = shl i32 %2798, 8
  %2799 = load ptr, ptr %out.addr, align 8
  %arrayidx2574 = getelementptr inbounds i32, ptr %2799, i64 12
  %2800 = load i32, ptr %arrayidx2574, align 4
  %shr2575 = lshr i32 %2800, 24
  %or2576 = or i32 %shl2573, %shr2575
  %2801 = load ptr, ptr %out.addr, align 8
  %arrayidx2577 = getelementptr inbounds i32, ptr %2801, i64 12
  store i32 %or2576, ptr %arrayidx2577, align 4
  %2802 = load ptr, ptr %out.addr, align 8
  %arrayidx2578 = getelementptr inbounds i32, ptr %2802, i64 12
  %2803 = load i32, ptr %arrayidx2578, align 4
  %2804 = load ptr, ptr %out.addr, align 8
  %arrayidx2579 = getelementptr inbounds i32, ptr %2804, i64 11
  %2805 = load i32, ptr %arrayidx2579, align 4
  %add2580 = add i32 %2805, %2803
  store i32 %add2580, ptr %arrayidx2579, align 4
  %2806 = load ptr, ptr %out.addr, align 8
  %arrayidx2581 = getelementptr inbounds i32, ptr %2806, i64 11
  %2807 = load i32, ptr %arrayidx2581, align 4
  %2808 = load ptr, ptr %out.addr, align 8
  %arrayidx2582 = getelementptr inbounds i32, ptr %2808, i64 6
  %2809 = load i32, ptr %arrayidx2582, align 4
  %xor2583 = xor i32 %2809, %2807
  store i32 %xor2583, ptr %arrayidx2582, align 4
  %2810 = load ptr, ptr %out.addr, align 8
  %arrayidx2584 = getelementptr inbounds i32, ptr %2810, i64 6
  %2811 = load i32, ptr %arrayidx2584, align 4
  %shl2585 = shl i32 %2811, 7
  %2812 = load ptr, ptr %out.addr, align 8
  %arrayidx2586 = getelementptr inbounds i32, ptr %2812, i64 6
  %2813 = load i32, ptr %arrayidx2586, align 4
  %shr2587 = lshr i32 %2813, 25
  %or2588 = or i32 %shl2585, %shr2587
  %2814 = load ptr, ptr %out.addr, align 8
  %arrayidx2589 = getelementptr inbounds i32, ptr %2814, i64 6
  store i32 %or2588, ptr %arrayidx2589, align 4
  %2815 = load ptr, ptr %out.addr, align 8
  %arrayidx2590 = getelementptr inbounds i32, ptr %2815, i64 7
  %2816 = load i32, ptr %arrayidx2590, align 4
  %2817 = load ptr, ptr %out.addr, align 8
  %arrayidx2591 = getelementptr inbounds i32, ptr %2817, i64 2
  %2818 = load i32, ptr %arrayidx2591, align 4
  %add2592 = add i32 %2818, %2816
  store i32 %add2592, ptr %arrayidx2591, align 4
  %2819 = load ptr, ptr %out.addr, align 8
  %arrayidx2593 = getelementptr inbounds i32, ptr %2819, i64 2
  %2820 = load i32, ptr %arrayidx2593, align 4
  %2821 = load ptr, ptr %out.addr, align 8
  %arrayidx2594 = getelementptr inbounds i32, ptr %2821, i64 13
  %2822 = load i32, ptr %arrayidx2594, align 4
  %xor2595 = xor i32 %2822, %2820
  store i32 %xor2595, ptr %arrayidx2594, align 4
  %2823 = load ptr, ptr %out.addr, align 8
  %arrayidx2596 = getelementptr inbounds i32, ptr %2823, i64 13
  %2824 = load i32, ptr %arrayidx2596, align 4
  %shl2597 = shl i32 %2824, 16
  %2825 = load ptr, ptr %out.addr, align 8
  %arrayidx2598 = getelementptr inbounds i32, ptr %2825, i64 13
  %2826 = load i32, ptr %arrayidx2598, align 4
  %shr2599 = lshr i32 %2826, 16
  %or2600 = or i32 %shl2597, %shr2599
  %2827 = load ptr, ptr %out.addr, align 8
  %arrayidx2601 = getelementptr inbounds i32, ptr %2827, i64 13
  store i32 %or2600, ptr %arrayidx2601, align 4
  %2828 = load ptr, ptr %out.addr, align 8
  %arrayidx2602 = getelementptr inbounds i32, ptr %2828, i64 13
  %2829 = load i32, ptr %arrayidx2602, align 4
  %2830 = load ptr, ptr %out.addr, align 8
  %arrayidx2603 = getelementptr inbounds i32, ptr %2830, i64 8
  %2831 = load i32, ptr %arrayidx2603, align 4
  %add2604 = add i32 %2831, %2829
  store i32 %add2604, ptr %arrayidx2603, align 4
  %2832 = load ptr, ptr %out.addr, align 8
  %arrayidx2605 = getelementptr inbounds i32, ptr %2832, i64 8
  %2833 = load i32, ptr %arrayidx2605, align 4
  %2834 = load ptr, ptr %out.addr, align 8
  %arrayidx2606 = getelementptr inbounds i32, ptr %2834, i64 7
  %2835 = load i32, ptr %arrayidx2606, align 4
  %xor2607 = xor i32 %2835, %2833
  store i32 %xor2607, ptr %arrayidx2606, align 4
  %2836 = load ptr, ptr %out.addr, align 8
  %arrayidx2608 = getelementptr inbounds i32, ptr %2836, i64 7
  %2837 = load i32, ptr %arrayidx2608, align 4
  %shl2609 = shl i32 %2837, 12
  %2838 = load ptr, ptr %out.addr, align 8
  %arrayidx2610 = getelementptr inbounds i32, ptr %2838, i64 7
  %2839 = load i32, ptr %arrayidx2610, align 4
  %shr2611 = lshr i32 %2839, 20
  %or2612 = or i32 %shl2609, %shr2611
  %2840 = load ptr, ptr %out.addr, align 8
  %arrayidx2613 = getelementptr inbounds i32, ptr %2840, i64 7
  store i32 %or2612, ptr %arrayidx2613, align 4
  %2841 = load ptr, ptr %out.addr, align 8
  %arrayidx2614 = getelementptr inbounds i32, ptr %2841, i64 7
  %2842 = load i32, ptr %arrayidx2614, align 4
  %2843 = load ptr, ptr %out.addr, align 8
  %arrayidx2615 = getelementptr inbounds i32, ptr %2843, i64 2
  %2844 = load i32, ptr %arrayidx2615, align 4
  %add2616 = add i32 %2844, %2842
  store i32 %add2616, ptr %arrayidx2615, align 4
  %2845 = load ptr, ptr %out.addr, align 8
  %arrayidx2617 = getelementptr inbounds i32, ptr %2845, i64 2
  %2846 = load i32, ptr %arrayidx2617, align 4
  %2847 = load ptr, ptr %out.addr, align 8
  %arrayidx2618 = getelementptr inbounds i32, ptr %2847, i64 13
  %2848 = load i32, ptr %arrayidx2618, align 4
  %xor2619 = xor i32 %2848, %2846
  store i32 %xor2619, ptr %arrayidx2618, align 4
  %2849 = load ptr, ptr %out.addr, align 8
  %arrayidx2620 = getelementptr inbounds i32, ptr %2849, i64 13
  %2850 = load i32, ptr %arrayidx2620, align 4
  %shl2621 = shl i32 %2850, 8
  %2851 = load ptr, ptr %out.addr, align 8
  %arrayidx2622 = getelementptr inbounds i32, ptr %2851, i64 13
  %2852 = load i32, ptr %arrayidx2622, align 4
  %shr2623 = lshr i32 %2852, 24
  %or2624 = or i32 %shl2621, %shr2623
  %2853 = load ptr, ptr %out.addr, align 8
  %arrayidx2625 = getelementptr inbounds i32, ptr %2853, i64 13
  store i32 %or2624, ptr %arrayidx2625, align 4
  %2854 = load ptr, ptr %out.addr, align 8
  %arrayidx2626 = getelementptr inbounds i32, ptr %2854, i64 13
  %2855 = load i32, ptr %arrayidx2626, align 4
  %2856 = load ptr, ptr %out.addr, align 8
  %arrayidx2627 = getelementptr inbounds i32, ptr %2856, i64 8
  %2857 = load i32, ptr %arrayidx2627, align 4
  %add2628 = add i32 %2857, %2855
  store i32 %add2628, ptr %arrayidx2627, align 4
  %2858 = load ptr, ptr %out.addr, align 8
  %arrayidx2629 = getelementptr inbounds i32, ptr %2858, i64 8
  %2859 = load i32, ptr %arrayidx2629, align 4
  %2860 = load ptr, ptr %out.addr, align 8
  %arrayidx2630 = getelementptr inbounds i32, ptr %2860, i64 7
  %2861 = load i32, ptr %arrayidx2630, align 4
  %xor2631 = xor i32 %2861, %2859
  store i32 %xor2631, ptr %arrayidx2630, align 4
  %2862 = load ptr, ptr %out.addr, align 8
  %arrayidx2632 = getelementptr inbounds i32, ptr %2862, i64 7
  %2863 = load i32, ptr %arrayidx2632, align 4
  %shl2633 = shl i32 %2863, 7
  %2864 = load ptr, ptr %out.addr, align 8
  %arrayidx2634 = getelementptr inbounds i32, ptr %2864, i64 7
  %2865 = load i32, ptr %arrayidx2634, align 4
  %shr2635 = lshr i32 %2865, 25
  %or2636 = or i32 %shl2633, %shr2635
  %2866 = load ptr, ptr %out.addr, align 8
  %arrayidx2637 = getelementptr inbounds i32, ptr %2866, i64 7
  store i32 %or2636, ptr %arrayidx2637, align 4
  %2867 = load ptr, ptr %out.addr, align 8
  %arrayidx2638 = getelementptr inbounds i32, ptr %2867, i64 4
  %2868 = load i32, ptr %arrayidx2638, align 4
  %2869 = load ptr, ptr %out.addr, align 8
  %arrayidx2639 = getelementptr inbounds i32, ptr %2869, i64 3
  %2870 = load i32, ptr %arrayidx2639, align 4
  %add2640 = add i32 %2870, %2868
  store i32 %add2640, ptr %arrayidx2639, align 4
  %2871 = load ptr, ptr %out.addr, align 8
  %arrayidx2641 = getelementptr inbounds i32, ptr %2871, i64 3
  %2872 = load i32, ptr %arrayidx2641, align 4
  %2873 = load ptr, ptr %out.addr, align 8
  %arrayidx2642 = getelementptr inbounds i32, ptr %2873, i64 14
  %2874 = load i32, ptr %arrayidx2642, align 4
  %xor2643 = xor i32 %2874, %2872
  store i32 %xor2643, ptr %arrayidx2642, align 4
  %2875 = load ptr, ptr %out.addr, align 8
  %arrayidx2644 = getelementptr inbounds i32, ptr %2875, i64 14
  %2876 = load i32, ptr %arrayidx2644, align 4
  %shl2645 = shl i32 %2876, 16
  %2877 = load ptr, ptr %out.addr, align 8
  %arrayidx2646 = getelementptr inbounds i32, ptr %2877, i64 14
  %2878 = load i32, ptr %arrayidx2646, align 4
  %shr2647 = lshr i32 %2878, 16
  %or2648 = or i32 %shl2645, %shr2647
  %2879 = load ptr, ptr %out.addr, align 8
  %arrayidx2649 = getelementptr inbounds i32, ptr %2879, i64 14
  store i32 %or2648, ptr %arrayidx2649, align 4
  %2880 = load ptr, ptr %out.addr, align 8
  %arrayidx2650 = getelementptr inbounds i32, ptr %2880, i64 14
  %2881 = load i32, ptr %arrayidx2650, align 4
  %2882 = load ptr, ptr %out.addr, align 8
  %arrayidx2651 = getelementptr inbounds i32, ptr %2882, i64 9
  %2883 = load i32, ptr %arrayidx2651, align 4
  %add2652 = add i32 %2883, %2881
  store i32 %add2652, ptr %arrayidx2651, align 4
  %2884 = load ptr, ptr %out.addr, align 8
  %arrayidx2653 = getelementptr inbounds i32, ptr %2884, i64 9
  %2885 = load i32, ptr %arrayidx2653, align 4
  %2886 = load ptr, ptr %out.addr, align 8
  %arrayidx2654 = getelementptr inbounds i32, ptr %2886, i64 4
  %2887 = load i32, ptr %arrayidx2654, align 4
  %xor2655 = xor i32 %2887, %2885
  store i32 %xor2655, ptr %arrayidx2654, align 4
  %2888 = load ptr, ptr %out.addr, align 8
  %arrayidx2656 = getelementptr inbounds i32, ptr %2888, i64 4
  %2889 = load i32, ptr %arrayidx2656, align 4
  %shl2657 = shl i32 %2889, 12
  %2890 = load ptr, ptr %out.addr, align 8
  %arrayidx2658 = getelementptr inbounds i32, ptr %2890, i64 4
  %2891 = load i32, ptr %arrayidx2658, align 4
  %shr2659 = lshr i32 %2891, 20
  %or2660 = or i32 %shl2657, %shr2659
  %2892 = load ptr, ptr %out.addr, align 8
  %arrayidx2661 = getelementptr inbounds i32, ptr %2892, i64 4
  store i32 %or2660, ptr %arrayidx2661, align 4
  %2893 = load ptr, ptr %out.addr, align 8
  %arrayidx2662 = getelementptr inbounds i32, ptr %2893, i64 4
  %2894 = load i32, ptr %arrayidx2662, align 4
  %2895 = load ptr, ptr %out.addr, align 8
  %arrayidx2663 = getelementptr inbounds i32, ptr %2895, i64 3
  %2896 = load i32, ptr %arrayidx2663, align 4
  %add2664 = add i32 %2896, %2894
  store i32 %add2664, ptr %arrayidx2663, align 4
  %2897 = load ptr, ptr %out.addr, align 8
  %arrayidx2665 = getelementptr inbounds i32, ptr %2897, i64 3
  %2898 = load i32, ptr %arrayidx2665, align 4
  %2899 = load ptr, ptr %out.addr, align 8
  %arrayidx2666 = getelementptr inbounds i32, ptr %2899, i64 14
  %2900 = load i32, ptr %arrayidx2666, align 4
  %xor2667 = xor i32 %2900, %2898
  store i32 %xor2667, ptr %arrayidx2666, align 4
  %2901 = load ptr, ptr %out.addr, align 8
  %arrayidx2668 = getelementptr inbounds i32, ptr %2901, i64 14
  %2902 = load i32, ptr %arrayidx2668, align 4
  %shl2669 = shl i32 %2902, 8
  %2903 = load ptr, ptr %out.addr, align 8
  %arrayidx2670 = getelementptr inbounds i32, ptr %2903, i64 14
  %2904 = load i32, ptr %arrayidx2670, align 4
  %shr2671 = lshr i32 %2904, 24
  %or2672 = or i32 %shl2669, %shr2671
  %2905 = load ptr, ptr %out.addr, align 8
  %arrayidx2673 = getelementptr inbounds i32, ptr %2905, i64 14
  store i32 %or2672, ptr %arrayidx2673, align 4
  %2906 = load ptr, ptr %out.addr, align 8
  %arrayidx2674 = getelementptr inbounds i32, ptr %2906, i64 14
  %2907 = load i32, ptr %arrayidx2674, align 4
  %2908 = load ptr, ptr %out.addr, align 8
  %arrayidx2675 = getelementptr inbounds i32, ptr %2908, i64 9
  %2909 = load i32, ptr %arrayidx2675, align 4
  %add2676 = add i32 %2909, %2907
  store i32 %add2676, ptr %arrayidx2675, align 4
  %2910 = load ptr, ptr %out.addr, align 8
  %arrayidx2677 = getelementptr inbounds i32, ptr %2910, i64 9
  %2911 = load i32, ptr %arrayidx2677, align 4
  %2912 = load ptr, ptr %out.addr, align 8
  %arrayidx2678 = getelementptr inbounds i32, ptr %2912, i64 4
  %2913 = load i32, ptr %arrayidx2678, align 4
  %xor2679 = xor i32 %2913, %2911
  store i32 %xor2679, ptr %arrayidx2678, align 4
  %2914 = load ptr, ptr %out.addr, align 8
  %arrayidx2680 = getelementptr inbounds i32, ptr %2914, i64 4
  %2915 = load i32, ptr %arrayidx2680, align 4
  %shl2681 = shl i32 %2915, 7
  %2916 = load ptr, ptr %out.addr, align 8
  %arrayidx2682 = getelementptr inbounds i32, ptr %2916, i64 4
  %2917 = load i32, ptr %arrayidx2682, align 4
  %shr2683 = lshr i32 %2917, 25
  %or2684 = or i32 %shl2681, %shr2683
  %2918 = load ptr, ptr %out.addr, align 8
  %arrayidx2685 = getelementptr inbounds i32, ptr %2918, i64 4
  store i32 %or2684, ptr %arrayidx2685, align 4
  %2919 = load ptr, ptr %out.addr, align 8
  %arrayidx2686 = getelementptr inbounds i32, ptr %2919, i64 4
  %2920 = load i32, ptr %arrayidx2686, align 4
  %2921 = load ptr, ptr %out.addr, align 8
  %arrayidx2687 = getelementptr inbounds i32, ptr %2921, i64 0
  %2922 = load i32, ptr %arrayidx2687, align 4
  %add2688 = add i32 %2922, %2920
  store i32 %add2688, ptr %arrayidx2687, align 4
  %2923 = load ptr, ptr %out.addr, align 8
  %arrayidx2689 = getelementptr inbounds i32, ptr %2923, i64 0
  %2924 = load i32, ptr %arrayidx2689, align 4
  %2925 = load ptr, ptr %out.addr, align 8
  %arrayidx2690 = getelementptr inbounds i32, ptr %2925, i64 12
  %2926 = load i32, ptr %arrayidx2690, align 4
  %xor2691 = xor i32 %2926, %2924
  store i32 %xor2691, ptr %arrayidx2690, align 4
  %2927 = load ptr, ptr %out.addr, align 8
  %arrayidx2692 = getelementptr inbounds i32, ptr %2927, i64 12
  %2928 = load i32, ptr %arrayidx2692, align 4
  %shl2693 = shl i32 %2928, 16
  %2929 = load ptr, ptr %out.addr, align 8
  %arrayidx2694 = getelementptr inbounds i32, ptr %2929, i64 12
  %2930 = load i32, ptr %arrayidx2694, align 4
  %shr2695 = lshr i32 %2930, 16
  %or2696 = or i32 %shl2693, %shr2695
  %2931 = load ptr, ptr %out.addr, align 8
  %arrayidx2697 = getelementptr inbounds i32, ptr %2931, i64 12
  store i32 %or2696, ptr %arrayidx2697, align 4
  %2932 = load ptr, ptr %out.addr, align 8
  %arrayidx2698 = getelementptr inbounds i32, ptr %2932, i64 12
  %2933 = load i32, ptr %arrayidx2698, align 4
  %2934 = load ptr, ptr %out.addr, align 8
  %arrayidx2699 = getelementptr inbounds i32, ptr %2934, i64 8
  %2935 = load i32, ptr %arrayidx2699, align 4
  %add2700 = add i32 %2935, %2933
  store i32 %add2700, ptr %arrayidx2699, align 4
  %2936 = load ptr, ptr %out.addr, align 8
  %arrayidx2701 = getelementptr inbounds i32, ptr %2936, i64 8
  %2937 = load i32, ptr %arrayidx2701, align 4
  %2938 = load ptr, ptr %out.addr, align 8
  %arrayidx2702 = getelementptr inbounds i32, ptr %2938, i64 4
  %2939 = load i32, ptr %arrayidx2702, align 4
  %xor2703 = xor i32 %2939, %2937
  store i32 %xor2703, ptr %arrayidx2702, align 4
  %2940 = load ptr, ptr %out.addr, align 8
  %arrayidx2704 = getelementptr inbounds i32, ptr %2940, i64 4
  %2941 = load i32, ptr %arrayidx2704, align 4
  %shl2705 = shl i32 %2941, 12
  %2942 = load ptr, ptr %out.addr, align 8
  %arrayidx2706 = getelementptr inbounds i32, ptr %2942, i64 4
  %2943 = load i32, ptr %arrayidx2706, align 4
  %shr2707 = lshr i32 %2943, 20
  %or2708 = or i32 %shl2705, %shr2707
  %2944 = load ptr, ptr %out.addr, align 8
  %arrayidx2709 = getelementptr inbounds i32, ptr %2944, i64 4
  store i32 %or2708, ptr %arrayidx2709, align 4
  %2945 = load ptr, ptr %out.addr, align 8
  %arrayidx2710 = getelementptr inbounds i32, ptr %2945, i64 4
  %2946 = load i32, ptr %arrayidx2710, align 4
  %2947 = load ptr, ptr %out.addr, align 8
  %arrayidx2711 = getelementptr inbounds i32, ptr %2947, i64 0
  %2948 = load i32, ptr %arrayidx2711, align 4
  %add2712 = add i32 %2948, %2946
  store i32 %add2712, ptr %arrayidx2711, align 4
  %2949 = load ptr, ptr %out.addr, align 8
  %arrayidx2713 = getelementptr inbounds i32, ptr %2949, i64 0
  %2950 = load i32, ptr %arrayidx2713, align 4
  %2951 = load ptr, ptr %out.addr, align 8
  %arrayidx2714 = getelementptr inbounds i32, ptr %2951, i64 12
  %2952 = load i32, ptr %arrayidx2714, align 4
  %xor2715 = xor i32 %2952, %2950
  store i32 %xor2715, ptr %arrayidx2714, align 4
  %2953 = load ptr, ptr %out.addr, align 8
  %arrayidx2716 = getelementptr inbounds i32, ptr %2953, i64 12
  %2954 = load i32, ptr %arrayidx2716, align 4
  %shl2717 = shl i32 %2954, 8
  %2955 = load ptr, ptr %out.addr, align 8
  %arrayidx2718 = getelementptr inbounds i32, ptr %2955, i64 12
  %2956 = load i32, ptr %arrayidx2718, align 4
  %shr2719 = lshr i32 %2956, 24
  %or2720 = or i32 %shl2717, %shr2719
  %2957 = load ptr, ptr %out.addr, align 8
  %arrayidx2721 = getelementptr inbounds i32, ptr %2957, i64 12
  store i32 %or2720, ptr %arrayidx2721, align 4
  %2958 = load ptr, ptr %out.addr, align 8
  %arrayidx2722 = getelementptr inbounds i32, ptr %2958, i64 12
  %2959 = load i32, ptr %arrayidx2722, align 4
  %2960 = load ptr, ptr %out.addr, align 8
  %arrayidx2723 = getelementptr inbounds i32, ptr %2960, i64 8
  %2961 = load i32, ptr %arrayidx2723, align 4
  %add2724 = add i32 %2961, %2959
  store i32 %add2724, ptr %arrayidx2723, align 4
  %2962 = load ptr, ptr %out.addr, align 8
  %arrayidx2725 = getelementptr inbounds i32, ptr %2962, i64 8
  %2963 = load i32, ptr %arrayidx2725, align 4
  %2964 = load ptr, ptr %out.addr, align 8
  %arrayidx2726 = getelementptr inbounds i32, ptr %2964, i64 4
  %2965 = load i32, ptr %arrayidx2726, align 4
  %xor2727 = xor i32 %2965, %2963
  store i32 %xor2727, ptr %arrayidx2726, align 4
  %2966 = load ptr, ptr %out.addr, align 8
  %arrayidx2728 = getelementptr inbounds i32, ptr %2966, i64 4
  %2967 = load i32, ptr %arrayidx2728, align 4
  %shl2729 = shl i32 %2967, 7
  %2968 = load ptr, ptr %out.addr, align 8
  %arrayidx2730 = getelementptr inbounds i32, ptr %2968, i64 4
  %2969 = load i32, ptr %arrayidx2730, align 4
  %shr2731 = lshr i32 %2969, 25
  %or2732 = or i32 %shl2729, %shr2731
  %2970 = load ptr, ptr %out.addr, align 8
  %arrayidx2733 = getelementptr inbounds i32, ptr %2970, i64 4
  store i32 %or2732, ptr %arrayidx2733, align 4
  %2971 = load ptr, ptr %out.addr, align 8
  %arrayidx2734 = getelementptr inbounds i32, ptr %2971, i64 5
  %2972 = load i32, ptr %arrayidx2734, align 4
  %2973 = load ptr, ptr %out.addr, align 8
  %arrayidx2735 = getelementptr inbounds i32, ptr %2973, i64 1
  %2974 = load i32, ptr %arrayidx2735, align 4
  %add2736 = add i32 %2974, %2972
  store i32 %add2736, ptr %arrayidx2735, align 4
  %2975 = load ptr, ptr %out.addr, align 8
  %arrayidx2737 = getelementptr inbounds i32, ptr %2975, i64 1
  %2976 = load i32, ptr %arrayidx2737, align 4
  %2977 = load ptr, ptr %out.addr, align 8
  %arrayidx2738 = getelementptr inbounds i32, ptr %2977, i64 13
  %2978 = load i32, ptr %arrayidx2738, align 4
  %xor2739 = xor i32 %2978, %2976
  store i32 %xor2739, ptr %arrayidx2738, align 4
  %2979 = load ptr, ptr %out.addr, align 8
  %arrayidx2740 = getelementptr inbounds i32, ptr %2979, i64 13
  %2980 = load i32, ptr %arrayidx2740, align 4
  %shl2741 = shl i32 %2980, 16
  %2981 = load ptr, ptr %out.addr, align 8
  %arrayidx2742 = getelementptr inbounds i32, ptr %2981, i64 13
  %2982 = load i32, ptr %arrayidx2742, align 4
  %shr2743 = lshr i32 %2982, 16
  %or2744 = or i32 %shl2741, %shr2743
  %2983 = load ptr, ptr %out.addr, align 8
  %arrayidx2745 = getelementptr inbounds i32, ptr %2983, i64 13
  store i32 %or2744, ptr %arrayidx2745, align 4
  %2984 = load ptr, ptr %out.addr, align 8
  %arrayidx2746 = getelementptr inbounds i32, ptr %2984, i64 13
  %2985 = load i32, ptr %arrayidx2746, align 4
  %2986 = load ptr, ptr %out.addr, align 8
  %arrayidx2747 = getelementptr inbounds i32, ptr %2986, i64 9
  %2987 = load i32, ptr %arrayidx2747, align 4
  %add2748 = add i32 %2987, %2985
  store i32 %add2748, ptr %arrayidx2747, align 4
  %2988 = load ptr, ptr %out.addr, align 8
  %arrayidx2749 = getelementptr inbounds i32, ptr %2988, i64 9
  %2989 = load i32, ptr %arrayidx2749, align 4
  %2990 = load ptr, ptr %out.addr, align 8
  %arrayidx2750 = getelementptr inbounds i32, ptr %2990, i64 5
  %2991 = load i32, ptr %arrayidx2750, align 4
  %xor2751 = xor i32 %2991, %2989
  store i32 %xor2751, ptr %arrayidx2750, align 4
  %2992 = load ptr, ptr %out.addr, align 8
  %arrayidx2752 = getelementptr inbounds i32, ptr %2992, i64 5
  %2993 = load i32, ptr %arrayidx2752, align 4
  %shl2753 = shl i32 %2993, 12
  %2994 = load ptr, ptr %out.addr, align 8
  %arrayidx2754 = getelementptr inbounds i32, ptr %2994, i64 5
  %2995 = load i32, ptr %arrayidx2754, align 4
  %shr2755 = lshr i32 %2995, 20
  %or2756 = or i32 %shl2753, %shr2755
  %2996 = load ptr, ptr %out.addr, align 8
  %arrayidx2757 = getelementptr inbounds i32, ptr %2996, i64 5
  store i32 %or2756, ptr %arrayidx2757, align 4
  %2997 = load ptr, ptr %out.addr, align 8
  %arrayidx2758 = getelementptr inbounds i32, ptr %2997, i64 5
  %2998 = load i32, ptr %arrayidx2758, align 4
  %2999 = load ptr, ptr %out.addr, align 8
  %arrayidx2759 = getelementptr inbounds i32, ptr %2999, i64 1
  %3000 = load i32, ptr %arrayidx2759, align 4
  %add2760 = add i32 %3000, %2998
  store i32 %add2760, ptr %arrayidx2759, align 4
  %3001 = load ptr, ptr %out.addr, align 8
  %arrayidx2761 = getelementptr inbounds i32, ptr %3001, i64 1
  %3002 = load i32, ptr %arrayidx2761, align 4
  %3003 = load ptr, ptr %out.addr, align 8
  %arrayidx2762 = getelementptr inbounds i32, ptr %3003, i64 13
  %3004 = load i32, ptr %arrayidx2762, align 4
  %xor2763 = xor i32 %3004, %3002
  store i32 %xor2763, ptr %arrayidx2762, align 4
  %3005 = load ptr, ptr %out.addr, align 8
  %arrayidx2764 = getelementptr inbounds i32, ptr %3005, i64 13
  %3006 = load i32, ptr %arrayidx2764, align 4
  %shl2765 = shl i32 %3006, 8
  %3007 = load ptr, ptr %out.addr, align 8
  %arrayidx2766 = getelementptr inbounds i32, ptr %3007, i64 13
  %3008 = load i32, ptr %arrayidx2766, align 4
  %shr2767 = lshr i32 %3008, 24
  %or2768 = or i32 %shl2765, %shr2767
  %3009 = load ptr, ptr %out.addr, align 8
  %arrayidx2769 = getelementptr inbounds i32, ptr %3009, i64 13
  store i32 %or2768, ptr %arrayidx2769, align 4
  %3010 = load ptr, ptr %out.addr, align 8
  %arrayidx2770 = getelementptr inbounds i32, ptr %3010, i64 13
  %3011 = load i32, ptr %arrayidx2770, align 4
  %3012 = load ptr, ptr %out.addr, align 8
  %arrayidx2771 = getelementptr inbounds i32, ptr %3012, i64 9
  %3013 = load i32, ptr %arrayidx2771, align 4
  %add2772 = add i32 %3013, %3011
  store i32 %add2772, ptr %arrayidx2771, align 4
  %3014 = load ptr, ptr %out.addr, align 8
  %arrayidx2773 = getelementptr inbounds i32, ptr %3014, i64 9
  %3015 = load i32, ptr %arrayidx2773, align 4
  %3016 = load ptr, ptr %out.addr, align 8
  %arrayidx2774 = getelementptr inbounds i32, ptr %3016, i64 5
  %3017 = load i32, ptr %arrayidx2774, align 4
  %xor2775 = xor i32 %3017, %3015
  store i32 %xor2775, ptr %arrayidx2774, align 4
  %3018 = load ptr, ptr %out.addr, align 8
  %arrayidx2776 = getelementptr inbounds i32, ptr %3018, i64 5
  %3019 = load i32, ptr %arrayidx2776, align 4
  %shl2777 = shl i32 %3019, 7
  %3020 = load ptr, ptr %out.addr, align 8
  %arrayidx2778 = getelementptr inbounds i32, ptr %3020, i64 5
  %3021 = load i32, ptr %arrayidx2778, align 4
  %shr2779 = lshr i32 %3021, 25
  %or2780 = or i32 %shl2777, %shr2779
  %3022 = load ptr, ptr %out.addr, align 8
  %arrayidx2781 = getelementptr inbounds i32, ptr %3022, i64 5
  store i32 %or2780, ptr %arrayidx2781, align 4
  %3023 = load ptr, ptr %out.addr, align 8
  %arrayidx2782 = getelementptr inbounds i32, ptr %3023, i64 6
  %3024 = load i32, ptr %arrayidx2782, align 4
  %3025 = load ptr, ptr %out.addr, align 8
  %arrayidx2783 = getelementptr inbounds i32, ptr %3025, i64 2
  %3026 = load i32, ptr %arrayidx2783, align 4
  %add2784 = add i32 %3026, %3024
  store i32 %add2784, ptr %arrayidx2783, align 4
  %3027 = load ptr, ptr %out.addr, align 8
  %arrayidx2785 = getelementptr inbounds i32, ptr %3027, i64 2
  %3028 = load i32, ptr %arrayidx2785, align 4
  %3029 = load ptr, ptr %out.addr, align 8
  %arrayidx2786 = getelementptr inbounds i32, ptr %3029, i64 14
  %3030 = load i32, ptr %arrayidx2786, align 4
  %xor2787 = xor i32 %3030, %3028
  store i32 %xor2787, ptr %arrayidx2786, align 4
  %3031 = load ptr, ptr %out.addr, align 8
  %arrayidx2788 = getelementptr inbounds i32, ptr %3031, i64 14
  %3032 = load i32, ptr %arrayidx2788, align 4
  %shl2789 = shl i32 %3032, 16
  %3033 = load ptr, ptr %out.addr, align 8
  %arrayidx2790 = getelementptr inbounds i32, ptr %3033, i64 14
  %3034 = load i32, ptr %arrayidx2790, align 4
  %shr2791 = lshr i32 %3034, 16
  %or2792 = or i32 %shl2789, %shr2791
  %3035 = load ptr, ptr %out.addr, align 8
  %arrayidx2793 = getelementptr inbounds i32, ptr %3035, i64 14
  store i32 %or2792, ptr %arrayidx2793, align 4
  %3036 = load ptr, ptr %out.addr, align 8
  %arrayidx2794 = getelementptr inbounds i32, ptr %3036, i64 14
  %3037 = load i32, ptr %arrayidx2794, align 4
  %3038 = load ptr, ptr %out.addr, align 8
  %arrayidx2795 = getelementptr inbounds i32, ptr %3038, i64 10
  %3039 = load i32, ptr %arrayidx2795, align 4
  %add2796 = add i32 %3039, %3037
  store i32 %add2796, ptr %arrayidx2795, align 4
  %3040 = load ptr, ptr %out.addr, align 8
  %arrayidx2797 = getelementptr inbounds i32, ptr %3040, i64 10
  %3041 = load i32, ptr %arrayidx2797, align 4
  %3042 = load ptr, ptr %out.addr, align 8
  %arrayidx2798 = getelementptr inbounds i32, ptr %3042, i64 6
  %3043 = load i32, ptr %arrayidx2798, align 4
  %xor2799 = xor i32 %3043, %3041
  store i32 %xor2799, ptr %arrayidx2798, align 4
  %3044 = load ptr, ptr %out.addr, align 8
  %arrayidx2800 = getelementptr inbounds i32, ptr %3044, i64 6
  %3045 = load i32, ptr %arrayidx2800, align 4
  %shl2801 = shl i32 %3045, 12
  %3046 = load ptr, ptr %out.addr, align 8
  %arrayidx2802 = getelementptr inbounds i32, ptr %3046, i64 6
  %3047 = load i32, ptr %arrayidx2802, align 4
  %shr2803 = lshr i32 %3047, 20
  %or2804 = or i32 %shl2801, %shr2803
  %3048 = load ptr, ptr %out.addr, align 8
  %arrayidx2805 = getelementptr inbounds i32, ptr %3048, i64 6
  store i32 %or2804, ptr %arrayidx2805, align 4
  %3049 = load ptr, ptr %out.addr, align 8
  %arrayidx2806 = getelementptr inbounds i32, ptr %3049, i64 6
  %3050 = load i32, ptr %arrayidx2806, align 4
  %3051 = load ptr, ptr %out.addr, align 8
  %arrayidx2807 = getelementptr inbounds i32, ptr %3051, i64 2
  %3052 = load i32, ptr %arrayidx2807, align 4
  %add2808 = add i32 %3052, %3050
  store i32 %add2808, ptr %arrayidx2807, align 4
  %3053 = load ptr, ptr %out.addr, align 8
  %arrayidx2809 = getelementptr inbounds i32, ptr %3053, i64 2
  %3054 = load i32, ptr %arrayidx2809, align 4
  %3055 = load ptr, ptr %out.addr, align 8
  %arrayidx2810 = getelementptr inbounds i32, ptr %3055, i64 14
  %3056 = load i32, ptr %arrayidx2810, align 4
  %xor2811 = xor i32 %3056, %3054
  store i32 %xor2811, ptr %arrayidx2810, align 4
  %3057 = load ptr, ptr %out.addr, align 8
  %arrayidx2812 = getelementptr inbounds i32, ptr %3057, i64 14
  %3058 = load i32, ptr %arrayidx2812, align 4
  %shl2813 = shl i32 %3058, 8
  %3059 = load ptr, ptr %out.addr, align 8
  %arrayidx2814 = getelementptr inbounds i32, ptr %3059, i64 14
  %3060 = load i32, ptr %arrayidx2814, align 4
  %shr2815 = lshr i32 %3060, 24
  %or2816 = or i32 %shl2813, %shr2815
  %3061 = load ptr, ptr %out.addr, align 8
  %arrayidx2817 = getelementptr inbounds i32, ptr %3061, i64 14
  store i32 %or2816, ptr %arrayidx2817, align 4
  %3062 = load ptr, ptr %out.addr, align 8
  %arrayidx2818 = getelementptr inbounds i32, ptr %3062, i64 14
  %3063 = load i32, ptr %arrayidx2818, align 4
  %3064 = load ptr, ptr %out.addr, align 8
  %arrayidx2819 = getelementptr inbounds i32, ptr %3064, i64 10
  %3065 = load i32, ptr %arrayidx2819, align 4
  %add2820 = add i32 %3065, %3063
  store i32 %add2820, ptr %arrayidx2819, align 4
  %3066 = load ptr, ptr %out.addr, align 8
  %arrayidx2821 = getelementptr inbounds i32, ptr %3066, i64 10
  %3067 = load i32, ptr %arrayidx2821, align 4
  %3068 = load ptr, ptr %out.addr, align 8
  %arrayidx2822 = getelementptr inbounds i32, ptr %3068, i64 6
  %3069 = load i32, ptr %arrayidx2822, align 4
  %xor2823 = xor i32 %3069, %3067
  store i32 %xor2823, ptr %arrayidx2822, align 4
  %3070 = load ptr, ptr %out.addr, align 8
  %arrayidx2824 = getelementptr inbounds i32, ptr %3070, i64 6
  %3071 = load i32, ptr %arrayidx2824, align 4
  %shl2825 = shl i32 %3071, 7
  %3072 = load ptr, ptr %out.addr, align 8
  %arrayidx2826 = getelementptr inbounds i32, ptr %3072, i64 6
  %3073 = load i32, ptr %arrayidx2826, align 4
  %shr2827 = lshr i32 %3073, 25
  %or2828 = or i32 %shl2825, %shr2827
  %3074 = load ptr, ptr %out.addr, align 8
  %arrayidx2829 = getelementptr inbounds i32, ptr %3074, i64 6
  store i32 %or2828, ptr %arrayidx2829, align 4
  %3075 = load ptr, ptr %out.addr, align 8
  %arrayidx2830 = getelementptr inbounds i32, ptr %3075, i64 7
  %3076 = load i32, ptr %arrayidx2830, align 4
  %3077 = load ptr, ptr %out.addr, align 8
  %arrayidx2831 = getelementptr inbounds i32, ptr %3077, i64 3
  %3078 = load i32, ptr %arrayidx2831, align 4
  %add2832 = add i32 %3078, %3076
  store i32 %add2832, ptr %arrayidx2831, align 4
  %3079 = load ptr, ptr %out.addr, align 8
  %arrayidx2833 = getelementptr inbounds i32, ptr %3079, i64 3
  %3080 = load i32, ptr %arrayidx2833, align 4
  %3081 = load ptr, ptr %out.addr, align 8
  %arrayidx2834 = getelementptr inbounds i32, ptr %3081, i64 15
  %3082 = load i32, ptr %arrayidx2834, align 4
  %xor2835 = xor i32 %3082, %3080
  store i32 %xor2835, ptr %arrayidx2834, align 4
  %3083 = load ptr, ptr %out.addr, align 8
  %arrayidx2836 = getelementptr inbounds i32, ptr %3083, i64 15
  %3084 = load i32, ptr %arrayidx2836, align 4
  %shl2837 = shl i32 %3084, 16
  %3085 = load ptr, ptr %out.addr, align 8
  %arrayidx2838 = getelementptr inbounds i32, ptr %3085, i64 15
  %3086 = load i32, ptr %arrayidx2838, align 4
  %shr2839 = lshr i32 %3086, 16
  %or2840 = or i32 %shl2837, %shr2839
  %3087 = load ptr, ptr %out.addr, align 8
  %arrayidx2841 = getelementptr inbounds i32, ptr %3087, i64 15
  store i32 %or2840, ptr %arrayidx2841, align 4
  %3088 = load ptr, ptr %out.addr, align 8
  %arrayidx2842 = getelementptr inbounds i32, ptr %3088, i64 15
  %3089 = load i32, ptr %arrayidx2842, align 4
  %3090 = load ptr, ptr %out.addr, align 8
  %arrayidx2843 = getelementptr inbounds i32, ptr %3090, i64 11
  %3091 = load i32, ptr %arrayidx2843, align 4
  %add2844 = add i32 %3091, %3089
  store i32 %add2844, ptr %arrayidx2843, align 4
  %3092 = load ptr, ptr %out.addr, align 8
  %arrayidx2845 = getelementptr inbounds i32, ptr %3092, i64 11
  %3093 = load i32, ptr %arrayidx2845, align 4
  %3094 = load ptr, ptr %out.addr, align 8
  %arrayidx2846 = getelementptr inbounds i32, ptr %3094, i64 7
  %3095 = load i32, ptr %arrayidx2846, align 4
  %xor2847 = xor i32 %3095, %3093
  store i32 %xor2847, ptr %arrayidx2846, align 4
  %3096 = load ptr, ptr %out.addr, align 8
  %arrayidx2848 = getelementptr inbounds i32, ptr %3096, i64 7
  %3097 = load i32, ptr %arrayidx2848, align 4
  %shl2849 = shl i32 %3097, 12
  %3098 = load ptr, ptr %out.addr, align 8
  %arrayidx2850 = getelementptr inbounds i32, ptr %3098, i64 7
  %3099 = load i32, ptr %arrayidx2850, align 4
  %shr2851 = lshr i32 %3099, 20
  %or2852 = or i32 %shl2849, %shr2851
  %3100 = load ptr, ptr %out.addr, align 8
  %arrayidx2853 = getelementptr inbounds i32, ptr %3100, i64 7
  store i32 %or2852, ptr %arrayidx2853, align 4
  %3101 = load ptr, ptr %out.addr, align 8
  %arrayidx2854 = getelementptr inbounds i32, ptr %3101, i64 7
  %3102 = load i32, ptr %arrayidx2854, align 4
  %3103 = load ptr, ptr %out.addr, align 8
  %arrayidx2855 = getelementptr inbounds i32, ptr %3103, i64 3
  %3104 = load i32, ptr %arrayidx2855, align 4
  %add2856 = add i32 %3104, %3102
  store i32 %add2856, ptr %arrayidx2855, align 4
  %3105 = load ptr, ptr %out.addr, align 8
  %arrayidx2857 = getelementptr inbounds i32, ptr %3105, i64 3
  %3106 = load i32, ptr %arrayidx2857, align 4
  %3107 = load ptr, ptr %out.addr, align 8
  %arrayidx2858 = getelementptr inbounds i32, ptr %3107, i64 15
  %3108 = load i32, ptr %arrayidx2858, align 4
  %xor2859 = xor i32 %3108, %3106
  store i32 %xor2859, ptr %arrayidx2858, align 4
  %3109 = load ptr, ptr %out.addr, align 8
  %arrayidx2860 = getelementptr inbounds i32, ptr %3109, i64 15
  %3110 = load i32, ptr %arrayidx2860, align 4
  %shl2861 = shl i32 %3110, 8
  %3111 = load ptr, ptr %out.addr, align 8
  %arrayidx2862 = getelementptr inbounds i32, ptr %3111, i64 15
  %3112 = load i32, ptr %arrayidx2862, align 4
  %shr2863 = lshr i32 %3112, 24
  %or2864 = or i32 %shl2861, %shr2863
  %3113 = load ptr, ptr %out.addr, align 8
  %arrayidx2865 = getelementptr inbounds i32, ptr %3113, i64 15
  store i32 %or2864, ptr %arrayidx2865, align 4
  %3114 = load ptr, ptr %out.addr, align 8
  %arrayidx2866 = getelementptr inbounds i32, ptr %3114, i64 15
  %3115 = load i32, ptr %arrayidx2866, align 4
  %3116 = load ptr, ptr %out.addr, align 8
  %arrayidx2867 = getelementptr inbounds i32, ptr %3116, i64 11
  %3117 = load i32, ptr %arrayidx2867, align 4
  %add2868 = add i32 %3117, %3115
  store i32 %add2868, ptr %arrayidx2867, align 4
  %3118 = load ptr, ptr %out.addr, align 8
  %arrayidx2869 = getelementptr inbounds i32, ptr %3118, i64 11
  %3119 = load i32, ptr %arrayidx2869, align 4
  %3120 = load ptr, ptr %out.addr, align 8
  %arrayidx2870 = getelementptr inbounds i32, ptr %3120, i64 7
  %3121 = load i32, ptr %arrayidx2870, align 4
  %xor2871 = xor i32 %3121, %3119
  store i32 %xor2871, ptr %arrayidx2870, align 4
  %3122 = load ptr, ptr %out.addr, align 8
  %arrayidx2872 = getelementptr inbounds i32, ptr %3122, i64 7
  %3123 = load i32, ptr %arrayidx2872, align 4
  %shl2873 = shl i32 %3123, 7
  %3124 = load ptr, ptr %out.addr, align 8
  %arrayidx2874 = getelementptr inbounds i32, ptr %3124, i64 7
  %3125 = load i32, ptr %arrayidx2874, align 4
  %shr2875 = lshr i32 %3125, 25
  %or2876 = or i32 %shl2873, %shr2875
  %3126 = load ptr, ptr %out.addr, align 8
  %arrayidx2877 = getelementptr inbounds i32, ptr %3126, i64 7
  store i32 %or2876, ptr %arrayidx2877, align 4
  %3127 = load ptr, ptr %out.addr, align 8
  %arrayidx2878 = getelementptr inbounds i32, ptr %3127, i64 5
  %3128 = load i32, ptr %arrayidx2878, align 4
  %3129 = load ptr, ptr %out.addr, align 8
  %arrayidx2879 = getelementptr inbounds i32, ptr %3129, i64 0
  %3130 = load i32, ptr %arrayidx2879, align 4
  %add2880 = add i32 %3130, %3128
  store i32 %add2880, ptr %arrayidx2879, align 4
  %3131 = load ptr, ptr %out.addr, align 8
  %arrayidx2881 = getelementptr inbounds i32, ptr %3131, i64 0
  %3132 = load i32, ptr %arrayidx2881, align 4
  %3133 = load ptr, ptr %out.addr, align 8
  %arrayidx2882 = getelementptr inbounds i32, ptr %3133, i64 15
  %3134 = load i32, ptr %arrayidx2882, align 4
  %xor2883 = xor i32 %3134, %3132
  store i32 %xor2883, ptr %arrayidx2882, align 4
  %3135 = load ptr, ptr %out.addr, align 8
  %arrayidx2884 = getelementptr inbounds i32, ptr %3135, i64 15
  %3136 = load i32, ptr %arrayidx2884, align 4
  %shl2885 = shl i32 %3136, 16
  %3137 = load ptr, ptr %out.addr, align 8
  %arrayidx2886 = getelementptr inbounds i32, ptr %3137, i64 15
  %3138 = load i32, ptr %arrayidx2886, align 4
  %shr2887 = lshr i32 %3138, 16
  %or2888 = or i32 %shl2885, %shr2887
  %3139 = load ptr, ptr %out.addr, align 8
  %arrayidx2889 = getelementptr inbounds i32, ptr %3139, i64 15
  store i32 %or2888, ptr %arrayidx2889, align 4
  %3140 = load ptr, ptr %out.addr, align 8
  %arrayidx2890 = getelementptr inbounds i32, ptr %3140, i64 15
  %3141 = load i32, ptr %arrayidx2890, align 4
  %3142 = load ptr, ptr %out.addr, align 8
  %arrayidx2891 = getelementptr inbounds i32, ptr %3142, i64 10
  %3143 = load i32, ptr %arrayidx2891, align 4
  %add2892 = add i32 %3143, %3141
  store i32 %add2892, ptr %arrayidx2891, align 4
  %3144 = load ptr, ptr %out.addr, align 8
  %arrayidx2893 = getelementptr inbounds i32, ptr %3144, i64 10
  %3145 = load i32, ptr %arrayidx2893, align 4
  %3146 = load ptr, ptr %out.addr, align 8
  %arrayidx2894 = getelementptr inbounds i32, ptr %3146, i64 5
  %3147 = load i32, ptr %arrayidx2894, align 4
  %xor2895 = xor i32 %3147, %3145
  store i32 %xor2895, ptr %arrayidx2894, align 4
  %3148 = load ptr, ptr %out.addr, align 8
  %arrayidx2896 = getelementptr inbounds i32, ptr %3148, i64 5
  %3149 = load i32, ptr %arrayidx2896, align 4
  %shl2897 = shl i32 %3149, 12
  %3150 = load ptr, ptr %out.addr, align 8
  %arrayidx2898 = getelementptr inbounds i32, ptr %3150, i64 5
  %3151 = load i32, ptr %arrayidx2898, align 4
  %shr2899 = lshr i32 %3151, 20
  %or2900 = or i32 %shl2897, %shr2899
  %3152 = load ptr, ptr %out.addr, align 8
  %arrayidx2901 = getelementptr inbounds i32, ptr %3152, i64 5
  store i32 %or2900, ptr %arrayidx2901, align 4
  %3153 = load ptr, ptr %out.addr, align 8
  %arrayidx2902 = getelementptr inbounds i32, ptr %3153, i64 5
  %3154 = load i32, ptr %arrayidx2902, align 4
  %3155 = load ptr, ptr %out.addr, align 8
  %arrayidx2903 = getelementptr inbounds i32, ptr %3155, i64 0
  %3156 = load i32, ptr %arrayidx2903, align 4
  %add2904 = add i32 %3156, %3154
  store i32 %add2904, ptr %arrayidx2903, align 4
  %3157 = load ptr, ptr %out.addr, align 8
  %arrayidx2905 = getelementptr inbounds i32, ptr %3157, i64 0
  %3158 = load i32, ptr %arrayidx2905, align 4
  %3159 = load ptr, ptr %out.addr, align 8
  %arrayidx2906 = getelementptr inbounds i32, ptr %3159, i64 15
  %3160 = load i32, ptr %arrayidx2906, align 4
  %xor2907 = xor i32 %3160, %3158
  store i32 %xor2907, ptr %arrayidx2906, align 4
  %3161 = load ptr, ptr %out.addr, align 8
  %arrayidx2908 = getelementptr inbounds i32, ptr %3161, i64 15
  %3162 = load i32, ptr %arrayidx2908, align 4
  %shl2909 = shl i32 %3162, 8
  %3163 = load ptr, ptr %out.addr, align 8
  %arrayidx2910 = getelementptr inbounds i32, ptr %3163, i64 15
  %3164 = load i32, ptr %arrayidx2910, align 4
  %shr2911 = lshr i32 %3164, 24
  %or2912 = or i32 %shl2909, %shr2911
  %3165 = load ptr, ptr %out.addr, align 8
  %arrayidx2913 = getelementptr inbounds i32, ptr %3165, i64 15
  store i32 %or2912, ptr %arrayidx2913, align 4
  %3166 = load ptr, ptr %out.addr, align 8
  %arrayidx2914 = getelementptr inbounds i32, ptr %3166, i64 15
  %3167 = load i32, ptr %arrayidx2914, align 4
  %3168 = load ptr, ptr %out.addr, align 8
  %arrayidx2915 = getelementptr inbounds i32, ptr %3168, i64 10
  %3169 = load i32, ptr %arrayidx2915, align 4
  %add2916 = add i32 %3169, %3167
  store i32 %add2916, ptr %arrayidx2915, align 4
  %3170 = load ptr, ptr %out.addr, align 8
  %arrayidx2917 = getelementptr inbounds i32, ptr %3170, i64 10
  %3171 = load i32, ptr %arrayidx2917, align 4
  %3172 = load ptr, ptr %out.addr, align 8
  %arrayidx2918 = getelementptr inbounds i32, ptr %3172, i64 5
  %3173 = load i32, ptr %arrayidx2918, align 4
  %xor2919 = xor i32 %3173, %3171
  store i32 %xor2919, ptr %arrayidx2918, align 4
  %3174 = load ptr, ptr %out.addr, align 8
  %arrayidx2920 = getelementptr inbounds i32, ptr %3174, i64 5
  %3175 = load i32, ptr %arrayidx2920, align 4
  %shl2921 = shl i32 %3175, 7
  %3176 = load ptr, ptr %out.addr, align 8
  %arrayidx2922 = getelementptr inbounds i32, ptr %3176, i64 5
  %3177 = load i32, ptr %arrayidx2922, align 4
  %shr2923 = lshr i32 %3177, 25
  %or2924 = or i32 %shl2921, %shr2923
  %3178 = load ptr, ptr %out.addr, align 8
  %arrayidx2925 = getelementptr inbounds i32, ptr %3178, i64 5
  store i32 %or2924, ptr %arrayidx2925, align 4
  %3179 = load ptr, ptr %out.addr, align 8
  %arrayidx2926 = getelementptr inbounds i32, ptr %3179, i64 6
  %3180 = load i32, ptr %arrayidx2926, align 4
  %3181 = load ptr, ptr %out.addr, align 8
  %arrayidx2927 = getelementptr inbounds i32, ptr %3181, i64 1
  %3182 = load i32, ptr %arrayidx2927, align 4
  %add2928 = add i32 %3182, %3180
  store i32 %add2928, ptr %arrayidx2927, align 4
  %3183 = load ptr, ptr %out.addr, align 8
  %arrayidx2929 = getelementptr inbounds i32, ptr %3183, i64 1
  %3184 = load i32, ptr %arrayidx2929, align 4
  %3185 = load ptr, ptr %out.addr, align 8
  %arrayidx2930 = getelementptr inbounds i32, ptr %3185, i64 12
  %3186 = load i32, ptr %arrayidx2930, align 4
  %xor2931 = xor i32 %3186, %3184
  store i32 %xor2931, ptr %arrayidx2930, align 4
  %3187 = load ptr, ptr %out.addr, align 8
  %arrayidx2932 = getelementptr inbounds i32, ptr %3187, i64 12
  %3188 = load i32, ptr %arrayidx2932, align 4
  %shl2933 = shl i32 %3188, 16
  %3189 = load ptr, ptr %out.addr, align 8
  %arrayidx2934 = getelementptr inbounds i32, ptr %3189, i64 12
  %3190 = load i32, ptr %arrayidx2934, align 4
  %shr2935 = lshr i32 %3190, 16
  %or2936 = or i32 %shl2933, %shr2935
  %3191 = load ptr, ptr %out.addr, align 8
  %arrayidx2937 = getelementptr inbounds i32, ptr %3191, i64 12
  store i32 %or2936, ptr %arrayidx2937, align 4
  %3192 = load ptr, ptr %out.addr, align 8
  %arrayidx2938 = getelementptr inbounds i32, ptr %3192, i64 12
  %3193 = load i32, ptr %arrayidx2938, align 4
  %3194 = load ptr, ptr %out.addr, align 8
  %arrayidx2939 = getelementptr inbounds i32, ptr %3194, i64 11
  %3195 = load i32, ptr %arrayidx2939, align 4
  %add2940 = add i32 %3195, %3193
  store i32 %add2940, ptr %arrayidx2939, align 4
  %3196 = load ptr, ptr %out.addr, align 8
  %arrayidx2941 = getelementptr inbounds i32, ptr %3196, i64 11
  %3197 = load i32, ptr %arrayidx2941, align 4
  %3198 = load ptr, ptr %out.addr, align 8
  %arrayidx2942 = getelementptr inbounds i32, ptr %3198, i64 6
  %3199 = load i32, ptr %arrayidx2942, align 4
  %xor2943 = xor i32 %3199, %3197
  store i32 %xor2943, ptr %arrayidx2942, align 4
  %3200 = load ptr, ptr %out.addr, align 8
  %arrayidx2944 = getelementptr inbounds i32, ptr %3200, i64 6
  %3201 = load i32, ptr %arrayidx2944, align 4
  %shl2945 = shl i32 %3201, 12
  %3202 = load ptr, ptr %out.addr, align 8
  %arrayidx2946 = getelementptr inbounds i32, ptr %3202, i64 6
  %3203 = load i32, ptr %arrayidx2946, align 4
  %shr2947 = lshr i32 %3203, 20
  %or2948 = or i32 %shl2945, %shr2947
  %3204 = load ptr, ptr %out.addr, align 8
  %arrayidx2949 = getelementptr inbounds i32, ptr %3204, i64 6
  store i32 %or2948, ptr %arrayidx2949, align 4
  %3205 = load ptr, ptr %out.addr, align 8
  %arrayidx2950 = getelementptr inbounds i32, ptr %3205, i64 6
  %3206 = load i32, ptr %arrayidx2950, align 4
  %3207 = load ptr, ptr %out.addr, align 8
  %arrayidx2951 = getelementptr inbounds i32, ptr %3207, i64 1
  %3208 = load i32, ptr %arrayidx2951, align 4
  %add2952 = add i32 %3208, %3206
  store i32 %add2952, ptr %arrayidx2951, align 4
  %3209 = load ptr, ptr %out.addr, align 8
  %arrayidx2953 = getelementptr inbounds i32, ptr %3209, i64 1
  %3210 = load i32, ptr %arrayidx2953, align 4
  %3211 = load ptr, ptr %out.addr, align 8
  %arrayidx2954 = getelementptr inbounds i32, ptr %3211, i64 12
  %3212 = load i32, ptr %arrayidx2954, align 4
  %xor2955 = xor i32 %3212, %3210
  store i32 %xor2955, ptr %arrayidx2954, align 4
  %3213 = load ptr, ptr %out.addr, align 8
  %arrayidx2956 = getelementptr inbounds i32, ptr %3213, i64 12
  %3214 = load i32, ptr %arrayidx2956, align 4
  %shl2957 = shl i32 %3214, 8
  %3215 = load ptr, ptr %out.addr, align 8
  %arrayidx2958 = getelementptr inbounds i32, ptr %3215, i64 12
  %3216 = load i32, ptr %arrayidx2958, align 4
  %shr2959 = lshr i32 %3216, 24
  %or2960 = or i32 %shl2957, %shr2959
  %3217 = load ptr, ptr %out.addr, align 8
  %arrayidx2961 = getelementptr inbounds i32, ptr %3217, i64 12
  store i32 %or2960, ptr %arrayidx2961, align 4
  %3218 = load ptr, ptr %out.addr, align 8
  %arrayidx2962 = getelementptr inbounds i32, ptr %3218, i64 12
  %3219 = load i32, ptr %arrayidx2962, align 4
  %3220 = load ptr, ptr %out.addr, align 8
  %arrayidx2963 = getelementptr inbounds i32, ptr %3220, i64 11
  %3221 = load i32, ptr %arrayidx2963, align 4
  %add2964 = add i32 %3221, %3219
  store i32 %add2964, ptr %arrayidx2963, align 4
  %3222 = load ptr, ptr %out.addr, align 8
  %arrayidx2965 = getelementptr inbounds i32, ptr %3222, i64 11
  %3223 = load i32, ptr %arrayidx2965, align 4
  %3224 = load ptr, ptr %out.addr, align 8
  %arrayidx2966 = getelementptr inbounds i32, ptr %3224, i64 6
  %3225 = load i32, ptr %arrayidx2966, align 4
  %xor2967 = xor i32 %3225, %3223
  store i32 %xor2967, ptr %arrayidx2966, align 4
  %3226 = load ptr, ptr %out.addr, align 8
  %arrayidx2968 = getelementptr inbounds i32, ptr %3226, i64 6
  %3227 = load i32, ptr %arrayidx2968, align 4
  %shl2969 = shl i32 %3227, 7
  %3228 = load ptr, ptr %out.addr, align 8
  %arrayidx2970 = getelementptr inbounds i32, ptr %3228, i64 6
  %3229 = load i32, ptr %arrayidx2970, align 4
  %shr2971 = lshr i32 %3229, 25
  %or2972 = or i32 %shl2969, %shr2971
  %3230 = load ptr, ptr %out.addr, align 8
  %arrayidx2973 = getelementptr inbounds i32, ptr %3230, i64 6
  store i32 %or2972, ptr %arrayidx2973, align 4
  %3231 = load ptr, ptr %out.addr, align 8
  %arrayidx2974 = getelementptr inbounds i32, ptr %3231, i64 7
  %3232 = load i32, ptr %arrayidx2974, align 4
  %3233 = load ptr, ptr %out.addr, align 8
  %arrayidx2975 = getelementptr inbounds i32, ptr %3233, i64 2
  %3234 = load i32, ptr %arrayidx2975, align 4
  %add2976 = add i32 %3234, %3232
  store i32 %add2976, ptr %arrayidx2975, align 4
  %3235 = load ptr, ptr %out.addr, align 8
  %arrayidx2977 = getelementptr inbounds i32, ptr %3235, i64 2
  %3236 = load i32, ptr %arrayidx2977, align 4
  %3237 = load ptr, ptr %out.addr, align 8
  %arrayidx2978 = getelementptr inbounds i32, ptr %3237, i64 13
  %3238 = load i32, ptr %arrayidx2978, align 4
  %xor2979 = xor i32 %3238, %3236
  store i32 %xor2979, ptr %arrayidx2978, align 4
  %3239 = load ptr, ptr %out.addr, align 8
  %arrayidx2980 = getelementptr inbounds i32, ptr %3239, i64 13
  %3240 = load i32, ptr %arrayidx2980, align 4
  %shl2981 = shl i32 %3240, 16
  %3241 = load ptr, ptr %out.addr, align 8
  %arrayidx2982 = getelementptr inbounds i32, ptr %3241, i64 13
  %3242 = load i32, ptr %arrayidx2982, align 4
  %shr2983 = lshr i32 %3242, 16
  %or2984 = or i32 %shl2981, %shr2983
  %3243 = load ptr, ptr %out.addr, align 8
  %arrayidx2985 = getelementptr inbounds i32, ptr %3243, i64 13
  store i32 %or2984, ptr %arrayidx2985, align 4
  %3244 = load ptr, ptr %out.addr, align 8
  %arrayidx2986 = getelementptr inbounds i32, ptr %3244, i64 13
  %3245 = load i32, ptr %arrayidx2986, align 4
  %3246 = load ptr, ptr %out.addr, align 8
  %arrayidx2987 = getelementptr inbounds i32, ptr %3246, i64 8
  %3247 = load i32, ptr %arrayidx2987, align 4
  %add2988 = add i32 %3247, %3245
  store i32 %add2988, ptr %arrayidx2987, align 4
  %3248 = load ptr, ptr %out.addr, align 8
  %arrayidx2989 = getelementptr inbounds i32, ptr %3248, i64 8
  %3249 = load i32, ptr %arrayidx2989, align 4
  %3250 = load ptr, ptr %out.addr, align 8
  %arrayidx2990 = getelementptr inbounds i32, ptr %3250, i64 7
  %3251 = load i32, ptr %arrayidx2990, align 4
  %xor2991 = xor i32 %3251, %3249
  store i32 %xor2991, ptr %arrayidx2990, align 4
  %3252 = load ptr, ptr %out.addr, align 8
  %arrayidx2992 = getelementptr inbounds i32, ptr %3252, i64 7
  %3253 = load i32, ptr %arrayidx2992, align 4
  %shl2993 = shl i32 %3253, 12
  %3254 = load ptr, ptr %out.addr, align 8
  %arrayidx2994 = getelementptr inbounds i32, ptr %3254, i64 7
  %3255 = load i32, ptr %arrayidx2994, align 4
  %shr2995 = lshr i32 %3255, 20
  %or2996 = or i32 %shl2993, %shr2995
  %3256 = load ptr, ptr %out.addr, align 8
  %arrayidx2997 = getelementptr inbounds i32, ptr %3256, i64 7
  store i32 %or2996, ptr %arrayidx2997, align 4
  %3257 = load ptr, ptr %out.addr, align 8
  %arrayidx2998 = getelementptr inbounds i32, ptr %3257, i64 7
  %3258 = load i32, ptr %arrayidx2998, align 4
  %3259 = load ptr, ptr %out.addr, align 8
  %arrayidx2999 = getelementptr inbounds i32, ptr %3259, i64 2
  %3260 = load i32, ptr %arrayidx2999, align 4
  %add3000 = add i32 %3260, %3258
  store i32 %add3000, ptr %arrayidx2999, align 4
  %3261 = load ptr, ptr %out.addr, align 8
  %arrayidx3001 = getelementptr inbounds i32, ptr %3261, i64 2
  %3262 = load i32, ptr %arrayidx3001, align 4
  %3263 = load ptr, ptr %out.addr, align 8
  %arrayidx3002 = getelementptr inbounds i32, ptr %3263, i64 13
  %3264 = load i32, ptr %arrayidx3002, align 4
  %xor3003 = xor i32 %3264, %3262
  store i32 %xor3003, ptr %arrayidx3002, align 4
  %3265 = load ptr, ptr %out.addr, align 8
  %arrayidx3004 = getelementptr inbounds i32, ptr %3265, i64 13
  %3266 = load i32, ptr %arrayidx3004, align 4
  %shl3005 = shl i32 %3266, 8
  %3267 = load ptr, ptr %out.addr, align 8
  %arrayidx3006 = getelementptr inbounds i32, ptr %3267, i64 13
  %3268 = load i32, ptr %arrayidx3006, align 4
  %shr3007 = lshr i32 %3268, 24
  %or3008 = or i32 %shl3005, %shr3007
  %3269 = load ptr, ptr %out.addr, align 8
  %arrayidx3009 = getelementptr inbounds i32, ptr %3269, i64 13
  store i32 %or3008, ptr %arrayidx3009, align 4
  %3270 = load ptr, ptr %out.addr, align 8
  %arrayidx3010 = getelementptr inbounds i32, ptr %3270, i64 13
  %3271 = load i32, ptr %arrayidx3010, align 4
  %3272 = load ptr, ptr %out.addr, align 8
  %arrayidx3011 = getelementptr inbounds i32, ptr %3272, i64 8
  %3273 = load i32, ptr %arrayidx3011, align 4
  %add3012 = add i32 %3273, %3271
  store i32 %add3012, ptr %arrayidx3011, align 4
  %3274 = load ptr, ptr %out.addr, align 8
  %arrayidx3013 = getelementptr inbounds i32, ptr %3274, i64 8
  %3275 = load i32, ptr %arrayidx3013, align 4
  %3276 = load ptr, ptr %out.addr, align 8
  %arrayidx3014 = getelementptr inbounds i32, ptr %3276, i64 7
  %3277 = load i32, ptr %arrayidx3014, align 4
  %xor3015 = xor i32 %3277, %3275
  store i32 %xor3015, ptr %arrayidx3014, align 4
  %3278 = load ptr, ptr %out.addr, align 8
  %arrayidx3016 = getelementptr inbounds i32, ptr %3278, i64 7
  %3279 = load i32, ptr %arrayidx3016, align 4
  %shl3017 = shl i32 %3279, 7
  %3280 = load ptr, ptr %out.addr, align 8
  %arrayidx3018 = getelementptr inbounds i32, ptr %3280, i64 7
  %3281 = load i32, ptr %arrayidx3018, align 4
  %shr3019 = lshr i32 %3281, 25
  %or3020 = or i32 %shl3017, %shr3019
  %3282 = load ptr, ptr %out.addr, align 8
  %arrayidx3021 = getelementptr inbounds i32, ptr %3282, i64 7
  store i32 %or3020, ptr %arrayidx3021, align 4
  %3283 = load ptr, ptr %out.addr, align 8
  %arrayidx3022 = getelementptr inbounds i32, ptr %3283, i64 4
  %3284 = load i32, ptr %arrayidx3022, align 4
  %3285 = load ptr, ptr %out.addr, align 8
  %arrayidx3023 = getelementptr inbounds i32, ptr %3285, i64 3
  %3286 = load i32, ptr %arrayidx3023, align 4
  %add3024 = add i32 %3286, %3284
  store i32 %add3024, ptr %arrayidx3023, align 4
  %3287 = load ptr, ptr %out.addr, align 8
  %arrayidx3025 = getelementptr inbounds i32, ptr %3287, i64 3
  %3288 = load i32, ptr %arrayidx3025, align 4
  %3289 = load ptr, ptr %out.addr, align 8
  %arrayidx3026 = getelementptr inbounds i32, ptr %3289, i64 14
  %3290 = load i32, ptr %arrayidx3026, align 4
  %xor3027 = xor i32 %3290, %3288
  store i32 %xor3027, ptr %arrayidx3026, align 4
  %3291 = load ptr, ptr %out.addr, align 8
  %arrayidx3028 = getelementptr inbounds i32, ptr %3291, i64 14
  %3292 = load i32, ptr %arrayidx3028, align 4
  %shl3029 = shl i32 %3292, 16
  %3293 = load ptr, ptr %out.addr, align 8
  %arrayidx3030 = getelementptr inbounds i32, ptr %3293, i64 14
  %3294 = load i32, ptr %arrayidx3030, align 4
  %shr3031 = lshr i32 %3294, 16
  %or3032 = or i32 %shl3029, %shr3031
  %3295 = load ptr, ptr %out.addr, align 8
  %arrayidx3033 = getelementptr inbounds i32, ptr %3295, i64 14
  store i32 %or3032, ptr %arrayidx3033, align 4
  %3296 = load ptr, ptr %out.addr, align 8
  %arrayidx3034 = getelementptr inbounds i32, ptr %3296, i64 14
  %3297 = load i32, ptr %arrayidx3034, align 4
  %3298 = load ptr, ptr %out.addr, align 8
  %arrayidx3035 = getelementptr inbounds i32, ptr %3298, i64 9
  %3299 = load i32, ptr %arrayidx3035, align 4
  %add3036 = add i32 %3299, %3297
  store i32 %add3036, ptr %arrayidx3035, align 4
  %3300 = load ptr, ptr %out.addr, align 8
  %arrayidx3037 = getelementptr inbounds i32, ptr %3300, i64 9
  %3301 = load i32, ptr %arrayidx3037, align 4
  %3302 = load ptr, ptr %out.addr, align 8
  %arrayidx3038 = getelementptr inbounds i32, ptr %3302, i64 4
  %3303 = load i32, ptr %arrayidx3038, align 4
  %xor3039 = xor i32 %3303, %3301
  store i32 %xor3039, ptr %arrayidx3038, align 4
  %3304 = load ptr, ptr %out.addr, align 8
  %arrayidx3040 = getelementptr inbounds i32, ptr %3304, i64 4
  %3305 = load i32, ptr %arrayidx3040, align 4
  %shl3041 = shl i32 %3305, 12
  %3306 = load ptr, ptr %out.addr, align 8
  %arrayidx3042 = getelementptr inbounds i32, ptr %3306, i64 4
  %3307 = load i32, ptr %arrayidx3042, align 4
  %shr3043 = lshr i32 %3307, 20
  %or3044 = or i32 %shl3041, %shr3043
  %3308 = load ptr, ptr %out.addr, align 8
  %arrayidx3045 = getelementptr inbounds i32, ptr %3308, i64 4
  store i32 %or3044, ptr %arrayidx3045, align 4
  %3309 = load ptr, ptr %out.addr, align 8
  %arrayidx3046 = getelementptr inbounds i32, ptr %3309, i64 4
  %3310 = load i32, ptr %arrayidx3046, align 4
  %3311 = load ptr, ptr %out.addr, align 8
  %arrayidx3047 = getelementptr inbounds i32, ptr %3311, i64 3
  %3312 = load i32, ptr %arrayidx3047, align 4
  %add3048 = add i32 %3312, %3310
  store i32 %add3048, ptr %arrayidx3047, align 4
  %3313 = load ptr, ptr %out.addr, align 8
  %arrayidx3049 = getelementptr inbounds i32, ptr %3313, i64 3
  %3314 = load i32, ptr %arrayidx3049, align 4
  %3315 = load ptr, ptr %out.addr, align 8
  %arrayidx3050 = getelementptr inbounds i32, ptr %3315, i64 14
  %3316 = load i32, ptr %arrayidx3050, align 4
  %xor3051 = xor i32 %3316, %3314
  store i32 %xor3051, ptr %arrayidx3050, align 4
  %3317 = load ptr, ptr %out.addr, align 8
  %arrayidx3052 = getelementptr inbounds i32, ptr %3317, i64 14
  %3318 = load i32, ptr %arrayidx3052, align 4
  %shl3053 = shl i32 %3318, 8
  %3319 = load ptr, ptr %out.addr, align 8
  %arrayidx3054 = getelementptr inbounds i32, ptr %3319, i64 14
  %3320 = load i32, ptr %arrayidx3054, align 4
  %shr3055 = lshr i32 %3320, 24
  %or3056 = or i32 %shl3053, %shr3055
  %3321 = load ptr, ptr %out.addr, align 8
  %arrayidx3057 = getelementptr inbounds i32, ptr %3321, i64 14
  store i32 %or3056, ptr %arrayidx3057, align 4
  %3322 = load ptr, ptr %out.addr, align 8
  %arrayidx3058 = getelementptr inbounds i32, ptr %3322, i64 14
  %3323 = load i32, ptr %arrayidx3058, align 4
  %3324 = load ptr, ptr %out.addr, align 8
  %arrayidx3059 = getelementptr inbounds i32, ptr %3324, i64 9
  %3325 = load i32, ptr %arrayidx3059, align 4
  %add3060 = add i32 %3325, %3323
  store i32 %add3060, ptr %arrayidx3059, align 4
  %3326 = load ptr, ptr %out.addr, align 8
  %arrayidx3061 = getelementptr inbounds i32, ptr %3326, i64 9
  %3327 = load i32, ptr %arrayidx3061, align 4
  %3328 = load ptr, ptr %out.addr, align 8
  %arrayidx3062 = getelementptr inbounds i32, ptr %3328, i64 4
  %3329 = load i32, ptr %arrayidx3062, align 4
  %xor3063 = xor i32 %3329, %3327
  store i32 %xor3063, ptr %arrayidx3062, align 4
  %3330 = load ptr, ptr %out.addr, align 8
  %arrayidx3064 = getelementptr inbounds i32, ptr %3330, i64 4
  %3331 = load i32, ptr %arrayidx3064, align 4
  %shl3065 = shl i32 %3331, 7
  %3332 = load ptr, ptr %out.addr, align 8
  %arrayidx3066 = getelementptr inbounds i32, ptr %3332, i64 4
  %3333 = load i32, ptr %arrayidx3066, align 4
  %shr3067 = lshr i32 %3333, 25
  %or3068 = or i32 %shl3065, %shr3067
  %3334 = load ptr, ptr %out.addr, align 8
  %arrayidx3069 = getelementptr inbounds i32, ptr %3334, i64 4
  store i32 %or3068, ptr %arrayidx3069, align 4
  %3335 = load ptr, ptr %out.addr, align 8
  %arrayidx3070 = getelementptr inbounds i32, ptr %3335, i64 4
  %3336 = load i32, ptr %arrayidx3070, align 4
  %3337 = load ptr, ptr %out.addr, align 8
  %arrayidx3071 = getelementptr inbounds i32, ptr %3337, i64 0
  %3338 = load i32, ptr %arrayidx3071, align 4
  %add3072 = add i32 %3338, %3336
  store i32 %add3072, ptr %arrayidx3071, align 4
  %3339 = load ptr, ptr %out.addr, align 8
  %arrayidx3073 = getelementptr inbounds i32, ptr %3339, i64 0
  %3340 = load i32, ptr %arrayidx3073, align 4
  %3341 = load ptr, ptr %out.addr, align 8
  %arrayidx3074 = getelementptr inbounds i32, ptr %3341, i64 12
  %3342 = load i32, ptr %arrayidx3074, align 4
  %xor3075 = xor i32 %3342, %3340
  store i32 %xor3075, ptr %arrayidx3074, align 4
  %3343 = load ptr, ptr %out.addr, align 8
  %arrayidx3076 = getelementptr inbounds i32, ptr %3343, i64 12
  %3344 = load i32, ptr %arrayidx3076, align 4
  %shl3077 = shl i32 %3344, 16
  %3345 = load ptr, ptr %out.addr, align 8
  %arrayidx3078 = getelementptr inbounds i32, ptr %3345, i64 12
  %3346 = load i32, ptr %arrayidx3078, align 4
  %shr3079 = lshr i32 %3346, 16
  %or3080 = or i32 %shl3077, %shr3079
  %3347 = load ptr, ptr %out.addr, align 8
  %arrayidx3081 = getelementptr inbounds i32, ptr %3347, i64 12
  store i32 %or3080, ptr %arrayidx3081, align 4
  %3348 = load ptr, ptr %out.addr, align 8
  %arrayidx3082 = getelementptr inbounds i32, ptr %3348, i64 12
  %3349 = load i32, ptr %arrayidx3082, align 4
  %3350 = load ptr, ptr %out.addr, align 8
  %arrayidx3083 = getelementptr inbounds i32, ptr %3350, i64 8
  %3351 = load i32, ptr %arrayidx3083, align 4
  %add3084 = add i32 %3351, %3349
  store i32 %add3084, ptr %arrayidx3083, align 4
  %3352 = load ptr, ptr %out.addr, align 8
  %arrayidx3085 = getelementptr inbounds i32, ptr %3352, i64 8
  %3353 = load i32, ptr %arrayidx3085, align 4
  %3354 = load ptr, ptr %out.addr, align 8
  %arrayidx3086 = getelementptr inbounds i32, ptr %3354, i64 4
  %3355 = load i32, ptr %arrayidx3086, align 4
  %xor3087 = xor i32 %3355, %3353
  store i32 %xor3087, ptr %arrayidx3086, align 4
  %3356 = load ptr, ptr %out.addr, align 8
  %arrayidx3088 = getelementptr inbounds i32, ptr %3356, i64 4
  %3357 = load i32, ptr %arrayidx3088, align 4
  %shl3089 = shl i32 %3357, 12
  %3358 = load ptr, ptr %out.addr, align 8
  %arrayidx3090 = getelementptr inbounds i32, ptr %3358, i64 4
  %3359 = load i32, ptr %arrayidx3090, align 4
  %shr3091 = lshr i32 %3359, 20
  %or3092 = or i32 %shl3089, %shr3091
  %3360 = load ptr, ptr %out.addr, align 8
  %arrayidx3093 = getelementptr inbounds i32, ptr %3360, i64 4
  store i32 %or3092, ptr %arrayidx3093, align 4
  %3361 = load ptr, ptr %out.addr, align 8
  %arrayidx3094 = getelementptr inbounds i32, ptr %3361, i64 4
  %3362 = load i32, ptr %arrayidx3094, align 4
  %3363 = load ptr, ptr %out.addr, align 8
  %arrayidx3095 = getelementptr inbounds i32, ptr %3363, i64 0
  %3364 = load i32, ptr %arrayidx3095, align 4
  %add3096 = add i32 %3364, %3362
  store i32 %add3096, ptr %arrayidx3095, align 4
  %3365 = load ptr, ptr %out.addr, align 8
  %arrayidx3097 = getelementptr inbounds i32, ptr %3365, i64 0
  %3366 = load i32, ptr %arrayidx3097, align 4
  %3367 = load ptr, ptr %out.addr, align 8
  %arrayidx3098 = getelementptr inbounds i32, ptr %3367, i64 12
  %3368 = load i32, ptr %arrayidx3098, align 4
  %xor3099 = xor i32 %3368, %3366
  store i32 %xor3099, ptr %arrayidx3098, align 4
  %3369 = load ptr, ptr %out.addr, align 8
  %arrayidx3100 = getelementptr inbounds i32, ptr %3369, i64 12
  %3370 = load i32, ptr %arrayidx3100, align 4
  %shl3101 = shl i32 %3370, 8
  %3371 = load ptr, ptr %out.addr, align 8
  %arrayidx3102 = getelementptr inbounds i32, ptr %3371, i64 12
  %3372 = load i32, ptr %arrayidx3102, align 4
  %shr3103 = lshr i32 %3372, 24
  %or3104 = or i32 %shl3101, %shr3103
  %3373 = load ptr, ptr %out.addr, align 8
  %arrayidx3105 = getelementptr inbounds i32, ptr %3373, i64 12
  store i32 %or3104, ptr %arrayidx3105, align 4
  %3374 = load ptr, ptr %out.addr, align 8
  %arrayidx3106 = getelementptr inbounds i32, ptr %3374, i64 12
  %3375 = load i32, ptr %arrayidx3106, align 4
  %3376 = load ptr, ptr %out.addr, align 8
  %arrayidx3107 = getelementptr inbounds i32, ptr %3376, i64 8
  %3377 = load i32, ptr %arrayidx3107, align 4
  %add3108 = add i32 %3377, %3375
  store i32 %add3108, ptr %arrayidx3107, align 4
  %3378 = load ptr, ptr %out.addr, align 8
  %arrayidx3109 = getelementptr inbounds i32, ptr %3378, i64 8
  %3379 = load i32, ptr %arrayidx3109, align 4
  %3380 = load ptr, ptr %out.addr, align 8
  %arrayidx3110 = getelementptr inbounds i32, ptr %3380, i64 4
  %3381 = load i32, ptr %arrayidx3110, align 4
  %xor3111 = xor i32 %3381, %3379
  store i32 %xor3111, ptr %arrayidx3110, align 4
  %3382 = load ptr, ptr %out.addr, align 8
  %arrayidx3112 = getelementptr inbounds i32, ptr %3382, i64 4
  %3383 = load i32, ptr %arrayidx3112, align 4
  %shl3113 = shl i32 %3383, 7
  %3384 = load ptr, ptr %out.addr, align 8
  %arrayidx3114 = getelementptr inbounds i32, ptr %3384, i64 4
  %3385 = load i32, ptr %arrayidx3114, align 4
  %shr3115 = lshr i32 %3385, 25
  %or3116 = or i32 %shl3113, %shr3115
  %3386 = load ptr, ptr %out.addr, align 8
  %arrayidx3117 = getelementptr inbounds i32, ptr %3386, i64 4
  store i32 %or3116, ptr %arrayidx3117, align 4
  %3387 = load ptr, ptr %out.addr, align 8
  %arrayidx3118 = getelementptr inbounds i32, ptr %3387, i64 5
  %3388 = load i32, ptr %arrayidx3118, align 4
  %3389 = load ptr, ptr %out.addr, align 8
  %arrayidx3119 = getelementptr inbounds i32, ptr %3389, i64 1
  %3390 = load i32, ptr %arrayidx3119, align 4
  %add3120 = add i32 %3390, %3388
  store i32 %add3120, ptr %arrayidx3119, align 4
  %3391 = load ptr, ptr %out.addr, align 8
  %arrayidx3121 = getelementptr inbounds i32, ptr %3391, i64 1
  %3392 = load i32, ptr %arrayidx3121, align 4
  %3393 = load ptr, ptr %out.addr, align 8
  %arrayidx3122 = getelementptr inbounds i32, ptr %3393, i64 13
  %3394 = load i32, ptr %arrayidx3122, align 4
  %xor3123 = xor i32 %3394, %3392
  store i32 %xor3123, ptr %arrayidx3122, align 4
  %3395 = load ptr, ptr %out.addr, align 8
  %arrayidx3124 = getelementptr inbounds i32, ptr %3395, i64 13
  %3396 = load i32, ptr %arrayidx3124, align 4
  %shl3125 = shl i32 %3396, 16
  %3397 = load ptr, ptr %out.addr, align 8
  %arrayidx3126 = getelementptr inbounds i32, ptr %3397, i64 13
  %3398 = load i32, ptr %arrayidx3126, align 4
  %shr3127 = lshr i32 %3398, 16
  %or3128 = or i32 %shl3125, %shr3127
  %3399 = load ptr, ptr %out.addr, align 8
  %arrayidx3129 = getelementptr inbounds i32, ptr %3399, i64 13
  store i32 %or3128, ptr %arrayidx3129, align 4
  %3400 = load ptr, ptr %out.addr, align 8
  %arrayidx3130 = getelementptr inbounds i32, ptr %3400, i64 13
  %3401 = load i32, ptr %arrayidx3130, align 4
  %3402 = load ptr, ptr %out.addr, align 8
  %arrayidx3131 = getelementptr inbounds i32, ptr %3402, i64 9
  %3403 = load i32, ptr %arrayidx3131, align 4
  %add3132 = add i32 %3403, %3401
  store i32 %add3132, ptr %arrayidx3131, align 4
  %3404 = load ptr, ptr %out.addr, align 8
  %arrayidx3133 = getelementptr inbounds i32, ptr %3404, i64 9
  %3405 = load i32, ptr %arrayidx3133, align 4
  %3406 = load ptr, ptr %out.addr, align 8
  %arrayidx3134 = getelementptr inbounds i32, ptr %3406, i64 5
  %3407 = load i32, ptr %arrayidx3134, align 4
  %xor3135 = xor i32 %3407, %3405
  store i32 %xor3135, ptr %arrayidx3134, align 4
  %3408 = load ptr, ptr %out.addr, align 8
  %arrayidx3136 = getelementptr inbounds i32, ptr %3408, i64 5
  %3409 = load i32, ptr %arrayidx3136, align 4
  %shl3137 = shl i32 %3409, 12
  %3410 = load ptr, ptr %out.addr, align 8
  %arrayidx3138 = getelementptr inbounds i32, ptr %3410, i64 5
  %3411 = load i32, ptr %arrayidx3138, align 4
  %shr3139 = lshr i32 %3411, 20
  %or3140 = or i32 %shl3137, %shr3139
  %3412 = load ptr, ptr %out.addr, align 8
  %arrayidx3141 = getelementptr inbounds i32, ptr %3412, i64 5
  store i32 %or3140, ptr %arrayidx3141, align 4
  %3413 = load ptr, ptr %out.addr, align 8
  %arrayidx3142 = getelementptr inbounds i32, ptr %3413, i64 5
  %3414 = load i32, ptr %arrayidx3142, align 4
  %3415 = load ptr, ptr %out.addr, align 8
  %arrayidx3143 = getelementptr inbounds i32, ptr %3415, i64 1
  %3416 = load i32, ptr %arrayidx3143, align 4
  %add3144 = add i32 %3416, %3414
  store i32 %add3144, ptr %arrayidx3143, align 4
  %3417 = load ptr, ptr %out.addr, align 8
  %arrayidx3145 = getelementptr inbounds i32, ptr %3417, i64 1
  %3418 = load i32, ptr %arrayidx3145, align 4
  %3419 = load ptr, ptr %out.addr, align 8
  %arrayidx3146 = getelementptr inbounds i32, ptr %3419, i64 13
  %3420 = load i32, ptr %arrayidx3146, align 4
  %xor3147 = xor i32 %3420, %3418
  store i32 %xor3147, ptr %arrayidx3146, align 4
  %3421 = load ptr, ptr %out.addr, align 8
  %arrayidx3148 = getelementptr inbounds i32, ptr %3421, i64 13
  %3422 = load i32, ptr %arrayidx3148, align 4
  %shl3149 = shl i32 %3422, 8
  %3423 = load ptr, ptr %out.addr, align 8
  %arrayidx3150 = getelementptr inbounds i32, ptr %3423, i64 13
  %3424 = load i32, ptr %arrayidx3150, align 4
  %shr3151 = lshr i32 %3424, 24
  %or3152 = or i32 %shl3149, %shr3151
  %3425 = load ptr, ptr %out.addr, align 8
  %arrayidx3153 = getelementptr inbounds i32, ptr %3425, i64 13
  store i32 %or3152, ptr %arrayidx3153, align 4
  %3426 = load ptr, ptr %out.addr, align 8
  %arrayidx3154 = getelementptr inbounds i32, ptr %3426, i64 13
  %3427 = load i32, ptr %arrayidx3154, align 4
  %3428 = load ptr, ptr %out.addr, align 8
  %arrayidx3155 = getelementptr inbounds i32, ptr %3428, i64 9
  %3429 = load i32, ptr %arrayidx3155, align 4
  %add3156 = add i32 %3429, %3427
  store i32 %add3156, ptr %arrayidx3155, align 4
  %3430 = load ptr, ptr %out.addr, align 8
  %arrayidx3157 = getelementptr inbounds i32, ptr %3430, i64 9
  %3431 = load i32, ptr %arrayidx3157, align 4
  %3432 = load ptr, ptr %out.addr, align 8
  %arrayidx3158 = getelementptr inbounds i32, ptr %3432, i64 5
  %3433 = load i32, ptr %arrayidx3158, align 4
  %xor3159 = xor i32 %3433, %3431
  store i32 %xor3159, ptr %arrayidx3158, align 4
  %3434 = load ptr, ptr %out.addr, align 8
  %arrayidx3160 = getelementptr inbounds i32, ptr %3434, i64 5
  %3435 = load i32, ptr %arrayidx3160, align 4
  %shl3161 = shl i32 %3435, 7
  %3436 = load ptr, ptr %out.addr, align 8
  %arrayidx3162 = getelementptr inbounds i32, ptr %3436, i64 5
  %3437 = load i32, ptr %arrayidx3162, align 4
  %shr3163 = lshr i32 %3437, 25
  %or3164 = or i32 %shl3161, %shr3163
  %3438 = load ptr, ptr %out.addr, align 8
  %arrayidx3165 = getelementptr inbounds i32, ptr %3438, i64 5
  store i32 %or3164, ptr %arrayidx3165, align 4
  %3439 = load ptr, ptr %out.addr, align 8
  %arrayidx3166 = getelementptr inbounds i32, ptr %3439, i64 6
  %3440 = load i32, ptr %arrayidx3166, align 4
  %3441 = load ptr, ptr %out.addr, align 8
  %arrayidx3167 = getelementptr inbounds i32, ptr %3441, i64 2
  %3442 = load i32, ptr %arrayidx3167, align 4
  %add3168 = add i32 %3442, %3440
  store i32 %add3168, ptr %arrayidx3167, align 4
  %3443 = load ptr, ptr %out.addr, align 8
  %arrayidx3169 = getelementptr inbounds i32, ptr %3443, i64 2
  %3444 = load i32, ptr %arrayidx3169, align 4
  %3445 = load ptr, ptr %out.addr, align 8
  %arrayidx3170 = getelementptr inbounds i32, ptr %3445, i64 14
  %3446 = load i32, ptr %arrayidx3170, align 4
  %xor3171 = xor i32 %3446, %3444
  store i32 %xor3171, ptr %arrayidx3170, align 4
  %3447 = load ptr, ptr %out.addr, align 8
  %arrayidx3172 = getelementptr inbounds i32, ptr %3447, i64 14
  %3448 = load i32, ptr %arrayidx3172, align 4
  %shl3173 = shl i32 %3448, 16
  %3449 = load ptr, ptr %out.addr, align 8
  %arrayidx3174 = getelementptr inbounds i32, ptr %3449, i64 14
  %3450 = load i32, ptr %arrayidx3174, align 4
  %shr3175 = lshr i32 %3450, 16
  %or3176 = or i32 %shl3173, %shr3175
  %3451 = load ptr, ptr %out.addr, align 8
  %arrayidx3177 = getelementptr inbounds i32, ptr %3451, i64 14
  store i32 %or3176, ptr %arrayidx3177, align 4
  %3452 = load ptr, ptr %out.addr, align 8
  %arrayidx3178 = getelementptr inbounds i32, ptr %3452, i64 14
  %3453 = load i32, ptr %arrayidx3178, align 4
  %3454 = load ptr, ptr %out.addr, align 8
  %arrayidx3179 = getelementptr inbounds i32, ptr %3454, i64 10
  %3455 = load i32, ptr %arrayidx3179, align 4
  %add3180 = add i32 %3455, %3453
  store i32 %add3180, ptr %arrayidx3179, align 4
  %3456 = load ptr, ptr %out.addr, align 8
  %arrayidx3181 = getelementptr inbounds i32, ptr %3456, i64 10
  %3457 = load i32, ptr %arrayidx3181, align 4
  %3458 = load ptr, ptr %out.addr, align 8
  %arrayidx3182 = getelementptr inbounds i32, ptr %3458, i64 6
  %3459 = load i32, ptr %arrayidx3182, align 4
  %xor3183 = xor i32 %3459, %3457
  store i32 %xor3183, ptr %arrayidx3182, align 4
  %3460 = load ptr, ptr %out.addr, align 8
  %arrayidx3184 = getelementptr inbounds i32, ptr %3460, i64 6
  %3461 = load i32, ptr %arrayidx3184, align 4
  %shl3185 = shl i32 %3461, 12
  %3462 = load ptr, ptr %out.addr, align 8
  %arrayidx3186 = getelementptr inbounds i32, ptr %3462, i64 6
  %3463 = load i32, ptr %arrayidx3186, align 4
  %shr3187 = lshr i32 %3463, 20
  %or3188 = or i32 %shl3185, %shr3187
  %3464 = load ptr, ptr %out.addr, align 8
  %arrayidx3189 = getelementptr inbounds i32, ptr %3464, i64 6
  store i32 %or3188, ptr %arrayidx3189, align 4
  %3465 = load ptr, ptr %out.addr, align 8
  %arrayidx3190 = getelementptr inbounds i32, ptr %3465, i64 6
  %3466 = load i32, ptr %arrayidx3190, align 4
  %3467 = load ptr, ptr %out.addr, align 8
  %arrayidx3191 = getelementptr inbounds i32, ptr %3467, i64 2
  %3468 = load i32, ptr %arrayidx3191, align 4
  %add3192 = add i32 %3468, %3466
  store i32 %add3192, ptr %arrayidx3191, align 4
  %3469 = load ptr, ptr %out.addr, align 8
  %arrayidx3193 = getelementptr inbounds i32, ptr %3469, i64 2
  %3470 = load i32, ptr %arrayidx3193, align 4
  %3471 = load ptr, ptr %out.addr, align 8
  %arrayidx3194 = getelementptr inbounds i32, ptr %3471, i64 14
  %3472 = load i32, ptr %arrayidx3194, align 4
  %xor3195 = xor i32 %3472, %3470
  store i32 %xor3195, ptr %arrayidx3194, align 4
  %3473 = load ptr, ptr %out.addr, align 8
  %arrayidx3196 = getelementptr inbounds i32, ptr %3473, i64 14
  %3474 = load i32, ptr %arrayidx3196, align 4
  %shl3197 = shl i32 %3474, 8
  %3475 = load ptr, ptr %out.addr, align 8
  %arrayidx3198 = getelementptr inbounds i32, ptr %3475, i64 14
  %3476 = load i32, ptr %arrayidx3198, align 4
  %shr3199 = lshr i32 %3476, 24
  %or3200 = or i32 %shl3197, %shr3199
  %3477 = load ptr, ptr %out.addr, align 8
  %arrayidx3201 = getelementptr inbounds i32, ptr %3477, i64 14
  store i32 %or3200, ptr %arrayidx3201, align 4
  %3478 = load ptr, ptr %out.addr, align 8
  %arrayidx3202 = getelementptr inbounds i32, ptr %3478, i64 14
  %3479 = load i32, ptr %arrayidx3202, align 4
  %3480 = load ptr, ptr %out.addr, align 8
  %arrayidx3203 = getelementptr inbounds i32, ptr %3480, i64 10
  %3481 = load i32, ptr %arrayidx3203, align 4
  %add3204 = add i32 %3481, %3479
  store i32 %add3204, ptr %arrayidx3203, align 4
  %3482 = load ptr, ptr %out.addr, align 8
  %arrayidx3205 = getelementptr inbounds i32, ptr %3482, i64 10
  %3483 = load i32, ptr %arrayidx3205, align 4
  %3484 = load ptr, ptr %out.addr, align 8
  %arrayidx3206 = getelementptr inbounds i32, ptr %3484, i64 6
  %3485 = load i32, ptr %arrayidx3206, align 4
  %xor3207 = xor i32 %3485, %3483
  store i32 %xor3207, ptr %arrayidx3206, align 4
  %3486 = load ptr, ptr %out.addr, align 8
  %arrayidx3208 = getelementptr inbounds i32, ptr %3486, i64 6
  %3487 = load i32, ptr %arrayidx3208, align 4
  %shl3209 = shl i32 %3487, 7
  %3488 = load ptr, ptr %out.addr, align 8
  %arrayidx3210 = getelementptr inbounds i32, ptr %3488, i64 6
  %3489 = load i32, ptr %arrayidx3210, align 4
  %shr3211 = lshr i32 %3489, 25
  %or3212 = or i32 %shl3209, %shr3211
  %3490 = load ptr, ptr %out.addr, align 8
  %arrayidx3213 = getelementptr inbounds i32, ptr %3490, i64 6
  store i32 %or3212, ptr %arrayidx3213, align 4
  %3491 = load ptr, ptr %out.addr, align 8
  %arrayidx3214 = getelementptr inbounds i32, ptr %3491, i64 7
  %3492 = load i32, ptr %arrayidx3214, align 4
  %3493 = load ptr, ptr %out.addr, align 8
  %arrayidx3215 = getelementptr inbounds i32, ptr %3493, i64 3
  %3494 = load i32, ptr %arrayidx3215, align 4
  %add3216 = add i32 %3494, %3492
  store i32 %add3216, ptr %arrayidx3215, align 4
  %3495 = load ptr, ptr %out.addr, align 8
  %arrayidx3217 = getelementptr inbounds i32, ptr %3495, i64 3
  %3496 = load i32, ptr %arrayidx3217, align 4
  %3497 = load ptr, ptr %out.addr, align 8
  %arrayidx3218 = getelementptr inbounds i32, ptr %3497, i64 15
  %3498 = load i32, ptr %arrayidx3218, align 4
  %xor3219 = xor i32 %3498, %3496
  store i32 %xor3219, ptr %arrayidx3218, align 4
  %3499 = load ptr, ptr %out.addr, align 8
  %arrayidx3220 = getelementptr inbounds i32, ptr %3499, i64 15
  %3500 = load i32, ptr %arrayidx3220, align 4
  %shl3221 = shl i32 %3500, 16
  %3501 = load ptr, ptr %out.addr, align 8
  %arrayidx3222 = getelementptr inbounds i32, ptr %3501, i64 15
  %3502 = load i32, ptr %arrayidx3222, align 4
  %shr3223 = lshr i32 %3502, 16
  %or3224 = or i32 %shl3221, %shr3223
  %3503 = load ptr, ptr %out.addr, align 8
  %arrayidx3225 = getelementptr inbounds i32, ptr %3503, i64 15
  store i32 %or3224, ptr %arrayidx3225, align 4
  %3504 = load ptr, ptr %out.addr, align 8
  %arrayidx3226 = getelementptr inbounds i32, ptr %3504, i64 15
  %3505 = load i32, ptr %arrayidx3226, align 4
  %3506 = load ptr, ptr %out.addr, align 8
  %arrayidx3227 = getelementptr inbounds i32, ptr %3506, i64 11
  %3507 = load i32, ptr %arrayidx3227, align 4
  %add3228 = add i32 %3507, %3505
  store i32 %add3228, ptr %arrayidx3227, align 4
  %3508 = load ptr, ptr %out.addr, align 8
  %arrayidx3229 = getelementptr inbounds i32, ptr %3508, i64 11
  %3509 = load i32, ptr %arrayidx3229, align 4
  %3510 = load ptr, ptr %out.addr, align 8
  %arrayidx3230 = getelementptr inbounds i32, ptr %3510, i64 7
  %3511 = load i32, ptr %arrayidx3230, align 4
  %xor3231 = xor i32 %3511, %3509
  store i32 %xor3231, ptr %arrayidx3230, align 4
  %3512 = load ptr, ptr %out.addr, align 8
  %arrayidx3232 = getelementptr inbounds i32, ptr %3512, i64 7
  %3513 = load i32, ptr %arrayidx3232, align 4
  %shl3233 = shl i32 %3513, 12
  %3514 = load ptr, ptr %out.addr, align 8
  %arrayidx3234 = getelementptr inbounds i32, ptr %3514, i64 7
  %3515 = load i32, ptr %arrayidx3234, align 4
  %shr3235 = lshr i32 %3515, 20
  %or3236 = or i32 %shl3233, %shr3235
  %3516 = load ptr, ptr %out.addr, align 8
  %arrayidx3237 = getelementptr inbounds i32, ptr %3516, i64 7
  store i32 %or3236, ptr %arrayidx3237, align 4
  %3517 = load ptr, ptr %out.addr, align 8
  %arrayidx3238 = getelementptr inbounds i32, ptr %3517, i64 7
  %3518 = load i32, ptr %arrayidx3238, align 4
  %3519 = load ptr, ptr %out.addr, align 8
  %arrayidx3239 = getelementptr inbounds i32, ptr %3519, i64 3
  %3520 = load i32, ptr %arrayidx3239, align 4
  %add3240 = add i32 %3520, %3518
  store i32 %add3240, ptr %arrayidx3239, align 4
  %3521 = load ptr, ptr %out.addr, align 8
  %arrayidx3241 = getelementptr inbounds i32, ptr %3521, i64 3
  %3522 = load i32, ptr %arrayidx3241, align 4
  %3523 = load ptr, ptr %out.addr, align 8
  %arrayidx3242 = getelementptr inbounds i32, ptr %3523, i64 15
  %3524 = load i32, ptr %arrayidx3242, align 4
  %xor3243 = xor i32 %3524, %3522
  store i32 %xor3243, ptr %arrayidx3242, align 4
  %3525 = load ptr, ptr %out.addr, align 8
  %arrayidx3244 = getelementptr inbounds i32, ptr %3525, i64 15
  %3526 = load i32, ptr %arrayidx3244, align 4
  %shl3245 = shl i32 %3526, 8
  %3527 = load ptr, ptr %out.addr, align 8
  %arrayidx3246 = getelementptr inbounds i32, ptr %3527, i64 15
  %3528 = load i32, ptr %arrayidx3246, align 4
  %shr3247 = lshr i32 %3528, 24
  %or3248 = or i32 %shl3245, %shr3247
  %3529 = load ptr, ptr %out.addr, align 8
  %arrayidx3249 = getelementptr inbounds i32, ptr %3529, i64 15
  store i32 %or3248, ptr %arrayidx3249, align 4
  %3530 = load ptr, ptr %out.addr, align 8
  %arrayidx3250 = getelementptr inbounds i32, ptr %3530, i64 15
  %3531 = load i32, ptr %arrayidx3250, align 4
  %3532 = load ptr, ptr %out.addr, align 8
  %arrayidx3251 = getelementptr inbounds i32, ptr %3532, i64 11
  %3533 = load i32, ptr %arrayidx3251, align 4
  %add3252 = add i32 %3533, %3531
  store i32 %add3252, ptr %arrayidx3251, align 4
  %3534 = load ptr, ptr %out.addr, align 8
  %arrayidx3253 = getelementptr inbounds i32, ptr %3534, i64 11
  %3535 = load i32, ptr %arrayidx3253, align 4
  %3536 = load ptr, ptr %out.addr, align 8
  %arrayidx3254 = getelementptr inbounds i32, ptr %3536, i64 7
  %3537 = load i32, ptr %arrayidx3254, align 4
  %xor3255 = xor i32 %3537, %3535
  store i32 %xor3255, ptr %arrayidx3254, align 4
  %3538 = load ptr, ptr %out.addr, align 8
  %arrayidx3256 = getelementptr inbounds i32, ptr %3538, i64 7
  %3539 = load i32, ptr %arrayidx3256, align 4
  %shl3257 = shl i32 %3539, 7
  %3540 = load ptr, ptr %out.addr, align 8
  %arrayidx3258 = getelementptr inbounds i32, ptr %3540, i64 7
  %3541 = load i32, ptr %arrayidx3258, align 4
  %shr3259 = lshr i32 %3541, 25
  %or3260 = or i32 %shl3257, %shr3259
  %3542 = load ptr, ptr %out.addr, align 8
  %arrayidx3261 = getelementptr inbounds i32, ptr %3542, i64 7
  store i32 %or3260, ptr %arrayidx3261, align 4
  %3543 = load ptr, ptr %out.addr, align 8
  %arrayidx3262 = getelementptr inbounds i32, ptr %3543, i64 5
  %3544 = load i32, ptr %arrayidx3262, align 4
  %3545 = load ptr, ptr %out.addr, align 8
  %arrayidx3263 = getelementptr inbounds i32, ptr %3545, i64 0
  %3546 = load i32, ptr %arrayidx3263, align 4
  %add3264 = add i32 %3546, %3544
  store i32 %add3264, ptr %arrayidx3263, align 4
  %3547 = load ptr, ptr %out.addr, align 8
  %arrayidx3265 = getelementptr inbounds i32, ptr %3547, i64 0
  %3548 = load i32, ptr %arrayidx3265, align 4
  %3549 = load ptr, ptr %out.addr, align 8
  %arrayidx3266 = getelementptr inbounds i32, ptr %3549, i64 15
  %3550 = load i32, ptr %arrayidx3266, align 4
  %xor3267 = xor i32 %3550, %3548
  store i32 %xor3267, ptr %arrayidx3266, align 4
  %3551 = load ptr, ptr %out.addr, align 8
  %arrayidx3268 = getelementptr inbounds i32, ptr %3551, i64 15
  %3552 = load i32, ptr %arrayidx3268, align 4
  %shl3269 = shl i32 %3552, 16
  %3553 = load ptr, ptr %out.addr, align 8
  %arrayidx3270 = getelementptr inbounds i32, ptr %3553, i64 15
  %3554 = load i32, ptr %arrayidx3270, align 4
  %shr3271 = lshr i32 %3554, 16
  %or3272 = or i32 %shl3269, %shr3271
  %3555 = load ptr, ptr %out.addr, align 8
  %arrayidx3273 = getelementptr inbounds i32, ptr %3555, i64 15
  store i32 %or3272, ptr %arrayidx3273, align 4
  %3556 = load ptr, ptr %out.addr, align 8
  %arrayidx3274 = getelementptr inbounds i32, ptr %3556, i64 15
  %3557 = load i32, ptr %arrayidx3274, align 4
  %3558 = load ptr, ptr %out.addr, align 8
  %arrayidx3275 = getelementptr inbounds i32, ptr %3558, i64 10
  %3559 = load i32, ptr %arrayidx3275, align 4
  %add3276 = add i32 %3559, %3557
  store i32 %add3276, ptr %arrayidx3275, align 4
  %3560 = load ptr, ptr %out.addr, align 8
  %arrayidx3277 = getelementptr inbounds i32, ptr %3560, i64 10
  %3561 = load i32, ptr %arrayidx3277, align 4
  %3562 = load ptr, ptr %out.addr, align 8
  %arrayidx3278 = getelementptr inbounds i32, ptr %3562, i64 5
  %3563 = load i32, ptr %arrayidx3278, align 4
  %xor3279 = xor i32 %3563, %3561
  store i32 %xor3279, ptr %arrayidx3278, align 4
  %3564 = load ptr, ptr %out.addr, align 8
  %arrayidx3280 = getelementptr inbounds i32, ptr %3564, i64 5
  %3565 = load i32, ptr %arrayidx3280, align 4
  %shl3281 = shl i32 %3565, 12
  %3566 = load ptr, ptr %out.addr, align 8
  %arrayidx3282 = getelementptr inbounds i32, ptr %3566, i64 5
  %3567 = load i32, ptr %arrayidx3282, align 4
  %shr3283 = lshr i32 %3567, 20
  %or3284 = or i32 %shl3281, %shr3283
  %3568 = load ptr, ptr %out.addr, align 8
  %arrayidx3285 = getelementptr inbounds i32, ptr %3568, i64 5
  store i32 %or3284, ptr %arrayidx3285, align 4
  %3569 = load ptr, ptr %out.addr, align 8
  %arrayidx3286 = getelementptr inbounds i32, ptr %3569, i64 5
  %3570 = load i32, ptr %arrayidx3286, align 4
  %3571 = load ptr, ptr %out.addr, align 8
  %arrayidx3287 = getelementptr inbounds i32, ptr %3571, i64 0
  %3572 = load i32, ptr %arrayidx3287, align 4
  %add3288 = add i32 %3572, %3570
  store i32 %add3288, ptr %arrayidx3287, align 4
  %3573 = load ptr, ptr %out.addr, align 8
  %arrayidx3289 = getelementptr inbounds i32, ptr %3573, i64 0
  %3574 = load i32, ptr %arrayidx3289, align 4
  %3575 = load ptr, ptr %out.addr, align 8
  %arrayidx3290 = getelementptr inbounds i32, ptr %3575, i64 15
  %3576 = load i32, ptr %arrayidx3290, align 4
  %xor3291 = xor i32 %3576, %3574
  store i32 %xor3291, ptr %arrayidx3290, align 4
  %3577 = load ptr, ptr %out.addr, align 8
  %arrayidx3292 = getelementptr inbounds i32, ptr %3577, i64 15
  %3578 = load i32, ptr %arrayidx3292, align 4
  %shl3293 = shl i32 %3578, 8
  %3579 = load ptr, ptr %out.addr, align 8
  %arrayidx3294 = getelementptr inbounds i32, ptr %3579, i64 15
  %3580 = load i32, ptr %arrayidx3294, align 4
  %shr3295 = lshr i32 %3580, 24
  %or3296 = or i32 %shl3293, %shr3295
  %3581 = load ptr, ptr %out.addr, align 8
  %arrayidx3297 = getelementptr inbounds i32, ptr %3581, i64 15
  store i32 %or3296, ptr %arrayidx3297, align 4
  %3582 = load ptr, ptr %out.addr, align 8
  %arrayidx3298 = getelementptr inbounds i32, ptr %3582, i64 15
  %3583 = load i32, ptr %arrayidx3298, align 4
  %3584 = load ptr, ptr %out.addr, align 8
  %arrayidx3299 = getelementptr inbounds i32, ptr %3584, i64 10
  %3585 = load i32, ptr %arrayidx3299, align 4
  %add3300 = add i32 %3585, %3583
  store i32 %add3300, ptr %arrayidx3299, align 4
  %3586 = load ptr, ptr %out.addr, align 8
  %arrayidx3301 = getelementptr inbounds i32, ptr %3586, i64 10
  %3587 = load i32, ptr %arrayidx3301, align 4
  %3588 = load ptr, ptr %out.addr, align 8
  %arrayidx3302 = getelementptr inbounds i32, ptr %3588, i64 5
  %3589 = load i32, ptr %arrayidx3302, align 4
  %xor3303 = xor i32 %3589, %3587
  store i32 %xor3303, ptr %arrayidx3302, align 4
  %3590 = load ptr, ptr %out.addr, align 8
  %arrayidx3304 = getelementptr inbounds i32, ptr %3590, i64 5
  %3591 = load i32, ptr %arrayidx3304, align 4
  %shl3305 = shl i32 %3591, 7
  %3592 = load ptr, ptr %out.addr, align 8
  %arrayidx3306 = getelementptr inbounds i32, ptr %3592, i64 5
  %3593 = load i32, ptr %arrayidx3306, align 4
  %shr3307 = lshr i32 %3593, 25
  %or3308 = or i32 %shl3305, %shr3307
  %3594 = load ptr, ptr %out.addr, align 8
  %arrayidx3309 = getelementptr inbounds i32, ptr %3594, i64 5
  store i32 %or3308, ptr %arrayidx3309, align 4
  %3595 = load ptr, ptr %out.addr, align 8
  %arrayidx3310 = getelementptr inbounds i32, ptr %3595, i64 6
  %3596 = load i32, ptr %arrayidx3310, align 4
  %3597 = load ptr, ptr %out.addr, align 8
  %arrayidx3311 = getelementptr inbounds i32, ptr %3597, i64 1
  %3598 = load i32, ptr %arrayidx3311, align 4
  %add3312 = add i32 %3598, %3596
  store i32 %add3312, ptr %arrayidx3311, align 4
  %3599 = load ptr, ptr %out.addr, align 8
  %arrayidx3313 = getelementptr inbounds i32, ptr %3599, i64 1
  %3600 = load i32, ptr %arrayidx3313, align 4
  %3601 = load ptr, ptr %out.addr, align 8
  %arrayidx3314 = getelementptr inbounds i32, ptr %3601, i64 12
  %3602 = load i32, ptr %arrayidx3314, align 4
  %xor3315 = xor i32 %3602, %3600
  store i32 %xor3315, ptr %arrayidx3314, align 4
  %3603 = load ptr, ptr %out.addr, align 8
  %arrayidx3316 = getelementptr inbounds i32, ptr %3603, i64 12
  %3604 = load i32, ptr %arrayidx3316, align 4
  %shl3317 = shl i32 %3604, 16
  %3605 = load ptr, ptr %out.addr, align 8
  %arrayidx3318 = getelementptr inbounds i32, ptr %3605, i64 12
  %3606 = load i32, ptr %arrayidx3318, align 4
  %shr3319 = lshr i32 %3606, 16
  %or3320 = or i32 %shl3317, %shr3319
  %3607 = load ptr, ptr %out.addr, align 8
  %arrayidx3321 = getelementptr inbounds i32, ptr %3607, i64 12
  store i32 %or3320, ptr %arrayidx3321, align 4
  %3608 = load ptr, ptr %out.addr, align 8
  %arrayidx3322 = getelementptr inbounds i32, ptr %3608, i64 12
  %3609 = load i32, ptr %arrayidx3322, align 4
  %3610 = load ptr, ptr %out.addr, align 8
  %arrayidx3323 = getelementptr inbounds i32, ptr %3610, i64 11
  %3611 = load i32, ptr %arrayidx3323, align 4
  %add3324 = add i32 %3611, %3609
  store i32 %add3324, ptr %arrayidx3323, align 4
  %3612 = load ptr, ptr %out.addr, align 8
  %arrayidx3325 = getelementptr inbounds i32, ptr %3612, i64 11
  %3613 = load i32, ptr %arrayidx3325, align 4
  %3614 = load ptr, ptr %out.addr, align 8
  %arrayidx3326 = getelementptr inbounds i32, ptr %3614, i64 6
  %3615 = load i32, ptr %arrayidx3326, align 4
  %xor3327 = xor i32 %3615, %3613
  store i32 %xor3327, ptr %arrayidx3326, align 4
  %3616 = load ptr, ptr %out.addr, align 8
  %arrayidx3328 = getelementptr inbounds i32, ptr %3616, i64 6
  %3617 = load i32, ptr %arrayidx3328, align 4
  %shl3329 = shl i32 %3617, 12
  %3618 = load ptr, ptr %out.addr, align 8
  %arrayidx3330 = getelementptr inbounds i32, ptr %3618, i64 6
  %3619 = load i32, ptr %arrayidx3330, align 4
  %shr3331 = lshr i32 %3619, 20
  %or3332 = or i32 %shl3329, %shr3331
  %3620 = load ptr, ptr %out.addr, align 8
  %arrayidx3333 = getelementptr inbounds i32, ptr %3620, i64 6
  store i32 %or3332, ptr %arrayidx3333, align 4
  %3621 = load ptr, ptr %out.addr, align 8
  %arrayidx3334 = getelementptr inbounds i32, ptr %3621, i64 6
  %3622 = load i32, ptr %arrayidx3334, align 4
  %3623 = load ptr, ptr %out.addr, align 8
  %arrayidx3335 = getelementptr inbounds i32, ptr %3623, i64 1
  %3624 = load i32, ptr %arrayidx3335, align 4
  %add3336 = add i32 %3624, %3622
  store i32 %add3336, ptr %arrayidx3335, align 4
  %3625 = load ptr, ptr %out.addr, align 8
  %arrayidx3337 = getelementptr inbounds i32, ptr %3625, i64 1
  %3626 = load i32, ptr %arrayidx3337, align 4
  %3627 = load ptr, ptr %out.addr, align 8
  %arrayidx3338 = getelementptr inbounds i32, ptr %3627, i64 12
  %3628 = load i32, ptr %arrayidx3338, align 4
  %xor3339 = xor i32 %3628, %3626
  store i32 %xor3339, ptr %arrayidx3338, align 4
  %3629 = load ptr, ptr %out.addr, align 8
  %arrayidx3340 = getelementptr inbounds i32, ptr %3629, i64 12
  %3630 = load i32, ptr %arrayidx3340, align 4
  %shl3341 = shl i32 %3630, 8
  %3631 = load ptr, ptr %out.addr, align 8
  %arrayidx3342 = getelementptr inbounds i32, ptr %3631, i64 12
  %3632 = load i32, ptr %arrayidx3342, align 4
  %shr3343 = lshr i32 %3632, 24
  %or3344 = or i32 %shl3341, %shr3343
  %3633 = load ptr, ptr %out.addr, align 8
  %arrayidx3345 = getelementptr inbounds i32, ptr %3633, i64 12
  store i32 %or3344, ptr %arrayidx3345, align 4
  %3634 = load ptr, ptr %out.addr, align 8
  %arrayidx3346 = getelementptr inbounds i32, ptr %3634, i64 12
  %3635 = load i32, ptr %arrayidx3346, align 4
  %3636 = load ptr, ptr %out.addr, align 8
  %arrayidx3347 = getelementptr inbounds i32, ptr %3636, i64 11
  %3637 = load i32, ptr %arrayidx3347, align 4
  %add3348 = add i32 %3637, %3635
  store i32 %add3348, ptr %arrayidx3347, align 4
  %3638 = load ptr, ptr %out.addr, align 8
  %arrayidx3349 = getelementptr inbounds i32, ptr %3638, i64 11
  %3639 = load i32, ptr %arrayidx3349, align 4
  %3640 = load ptr, ptr %out.addr, align 8
  %arrayidx3350 = getelementptr inbounds i32, ptr %3640, i64 6
  %3641 = load i32, ptr %arrayidx3350, align 4
  %xor3351 = xor i32 %3641, %3639
  store i32 %xor3351, ptr %arrayidx3350, align 4
  %3642 = load ptr, ptr %out.addr, align 8
  %arrayidx3352 = getelementptr inbounds i32, ptr %3642, i64 6
  %3643 = load i32, ptr %arrayidx3352, align 4
  %shl3353 = shl i32 %3643, 7
  %3644 = load ptr, ptr %out.addr, align 8
  %arrayidx3354 = getelementptr inbounds i32, ptr %3644, i64 6
  %3645 = load i32, ptr %arrayidx3354, align 4
  %shr3355 = lshr i32 %3645, 25
  %or3356 = or i32 %shl3353, %shr3355
  %3646 = load ptr, ptr %out.addr, align 8
  %arrayidx3357 = getelementptr inbounds i32, ptr %3646, i64 6
  store i32 %or3356, ptr %arrayidx3357, align 4
  %3647 = load ptr, ptr %out.addr, align 8
  %arrayidx3358 = getelementptr inbounds i32, ptr %3647, i64 7
  %3648 = load i32, ptr %arrayidx3358, align 4
  %3649 = load ptr, ptr %out.addr, align 8
  %arrayidx3359 = getelementptr inbounds i32, ptr %3649, i64 2
  %3650 = load i32, ptr %arrayidx3359, align 4
  %add3360 = add i32 %3650, %3648
  store i32 %add3360, ptr %arrayidx3359, align 4
  %3651 = load ptr, ptr %out.addr, align 8
  %arrayidx3361 = getelementptr inbounds i32, ptr %3651, i64 2
  %3652 = load i32, ptr %arrayidx3361, align 4
  %3653 = load ptr, ptr %out.addr, align 8
  %arrayidx3362 = getelementptr inbounds i32, ptr %3653, i64 13
  %3654 = load i32, ptr %arrayidx3362, align 4
  %xor3363 = xor i32 %3654, %3652
  store i32 %xor3363, ptr %arrayidx3362, align 4
  %3655 = load ptr, ptr %out.addr, align 8
  %arrayidx3364 = getelementptr inbounds i32, ptr %3655, i64 13
  %3656 = load i32, ptr %arrayidx3364, align 4
  %shl3365 = shl i32 %3656, 16
  %3657 = load ptr, ptr %out.addr, align 8
  %arrayidx3366 = getelementptr inbounds i32, ptr %3657, i64 13
  %3658 = load i32, ptr %arrayidx3366, align 4
  %shr3367 = lshr i32 %3658, 16
  %or3368 = or i32 %shl3365, %shr3367
  %3659 = load ptr, ptr %out.addr, align 8
  %arrayidx3369 = getelementptr inbounds i32, ptr %3659, i64 13
  store i32 %or3368, ptr %arrayidx3369, align 4
  %3660 = load ptr, ptr %out.addr, align 8
  %arrayidx3370 = getelementptr inbounds i32, ptr %3660, i64 13
  %3661 = load i32, ptr %arrayidx3370, align 4
  %3662 = load ptr, ptr %out.addr, align 8
  %arrayidx3371 = getelementptr inbounds i32, ptr %3662, i64 8
  %3663 = load i32, ptr %arrayidx3371, align 4
  %add3372 = add i32 %3663, %3661
  store i32 %add3372, ptr %arrayidx3371, align 4
  %3664 = load ptr, ptr %out.addr, align 8
  %arrayidx3373 = getelementptr inbounds i32, ptr %3664, i64 8
  %3665 = load i32, ptr %arrayidx3373, align 4
  %3666 = load ptr, ptr %out.addr, align 8
  %arrayidx3374 = getelementptr inbounds i32, ptr %3666, i64 7
  %3667 = load i32, ptr %arrayidx3374, align 4
  %xor3375 = xor i32 %3667, %3665
  store i32 %xor3375, ptr %arrayidx3374, align 4
  %3668 = load ptr, ptr %out.addr, align 8
  %arrayidx3376 = getelementptr inbounds i32, ptr %3668, i64 7
  %3669 = load i32, ptr %arrayidx3376, align 4
  %shl3377 = shl i32 %3669, 12
  %3670 = load ptr, ptr %out.addr, align 8
  %arrayidx3378 = getelementptr inbounds i32, ptr %3670, i64 7
  %3671 = load i32, ptr %arrayidx3378, align 4
  %shr3379 = lshr i32 %3671, 20
  %or3380 = or i32 %shl3377, %shr3379
  %3672 = load ptr, ptr %out.addr, align 8
  %arrayidx3381 = getelementptr inbounds i32, ptr %3672, i64 7
  store i32 %or3380, ptr %arrayidx3381, align 4
  %3673 = load ptr, ptr %out.addr, align 8
  %arrayidx3382 = getelementptr inbounds i32, ptr %3673, i64 7
  %3674 = load i32, ptr %arrayidx3382, align 4
  %3675 = load ptr, ptr %out.addr, align 8
  %arrayidx3383 = getelementptr inbounds i32, ptr %3675, i64 2
  %3676 = load i32, ptr %arrayidx3383, align 4
  %add3384 = add i32 %3676, %3674
  store i32 %add3384, ptr %arrayidx3383, align 4
  %3677 = load ptr, ptr %out.addr, align 8
  %arrayidx3385 = getelementptr inbounds i32, ptr %3677, i64 2
  %3678 = load i32, ptr %arrayidx3385, align 4
  %3679 = load ptr, ptr %out.addr, align 8
  %arrayidx3386 = getelementptr inbounds i32, ptr %3679, i64 13
  %3680 = load i32, ptr %arrayidx3386, align 4
  %xor3387 = xor i32 %3680, %3678
  store i32 %xor3387, ptr %arrayidx3386, align 4
  %3681 = load ptr, ptr %out.addr, align 8
  %arrayidx3388 = getelementptr inbounds i32, ptr %3681, i64 13
  %3682 = load i32, ptr %arrayidx3388, align 4
  %shl3389 = shl i32 %3682, 8
  %3683 = load ptr, ptr %out.addr, align 8
  %arrayidx3390 = getelementptr inbounds i32, ptr %3683, i64 13
  %3684 = load i32, ptr %arrayidx3390, align 4
  %shr3391 = lshr i32 %3684, 24
  %or3392 = or i32 %shl3389, %shr3391
  %3685 = load ptr, ptr %out.addr, align 8
  %arrayidx3393 = getelementptr inbounds i32, ptr %3685, i64 13
  store i32 %or3392, ptr %arrayidx3393, align 4
  %3686 = load ptr, ptr %out.addr, align 8
  %arrayidx3394 = getelementptr inbounds i32, ptr %3686, i64 13
  %3687 = load i32, ptr %arrayidx3394, align 4
  %3688 = load ptr, ptr %out.addr, align 8
  %arrayidx3395 = getelementptr inbounds i32, ptr %3688, i64 8
  %3689 = load i32, ptr %arrayidx3395, align 4
  %add3396 = add i32 %3689, %3687
  store i32 %add3396, ptr %arrayidx3395, align 4
  %3690 = load ptr, ptr %out.addr, align 8
  %arrayidx3397 = getelementptr inbounds i32, ptr %3690, i64 8
  %3691 = load i32, ptr %arrayidx3397, align 4
  %3692 = load ptr, ptr %out.addr, align 8
  %arrayidx3398 = getelementptr inbounds i32, ptr %3692, i64 7
  %3693 = load i32, ptr %arrayidx3398, align 4
  %xor3399 = xor i32 %3693, %3691
  store i32 %xor3399, ptr %arrayidx3398, align 4
  %3694 = load ptr, ptr %out.addr, align 8
  %arrayidx3400 = getelementptr inbounds i32, ptr %3694, i64 7
  %3695 = load i32, ptr %arrayidx3400, align 4
  %shl3401 = shl i32 %3695, 7
  %3696 = load ptr, ptr %out.addr, align 8
  %arrayidx3402 = getelementptr inbounds i32, ptr %3696, i64 7
  %3697 = load i32, ptr %arrayidx3402, align 4
  %shr3403 = lshr i32 %3697, 25
  %or3404 = or i32 %shl3401, %shr3403
  %3698 = load ptr, ptr %out.addr, align 8
  %arrayidx3405 = getelementptr inbounds i32, ptr %3698, i64 7
  store i32 %or3404, ptr %arrayidx3405, align 4
  %3699 = load ptr, ptr %out.addr, align 8
  %arrayidx3406 = getelementptr inbounds i32, ptr %3699, i64 4
  %3700 = load i32, ptr %arrayidx3406, align 4
  %3701 = load ptr, ptr %out.addr, align 8
  %arrayidx3407 = getelementptr inbounds i32, ptr %3701, i64 3
  %3702 = load i32, ptr %arrayidx3407, align 4
  %add3408 = add i32 %3702, %3700
  store i32 %add3408, ptr %arrayidx3407, align 4
  %3703 = load ptr, ptr %out.addr, align 8
  %arrayidx3409 = getelementptr inbounds i32, ptr %3703, i64 3
  %3704 = load i32, ptr %arrayidx3409, align 4
  %3705 = load ptr, ptr %out.addr, align 8
  %arrayidx3410 = getelementptr inbounds i32, ptr %3705, i64 14
  %3706 = load i32, ptr %arrayidx3410, align 4
  %xor3411 = xor i32 %3706, %3704
  store i32 %xor3411, ptr %arrayidx3410, align 4
  %3707 = load ptr, ptr %out.addr, align 8
  %arrayidx3412 = getelementptr inbounds i32, ptr %3707, i64 14
  %3708 = load i32, ptr %arrayidx3412, align 4
  %shl3413 = shl i32 %3708, 16
  %3709 = load ptr, ptr %out.addr, align 8
  %arrayidx3414 = getelementptr inbounds i32, ptr %3709, i64 14
  %3710 = load i32, ptr %arrayidx3414, align 4
  %shr3415 = lshr i32 %3710, 16
  %or3416 = or i32 %shl3413, %shr3415
  %3711 = load ptr, ptr %out.addr, align 8
  %arrayidx3417 = getelementptr inbounds i32, ptr %3711, i64 14
  store i32 %or3416, ptr %arrayidx3417, align 4
  %3712 = load ptr, ptr %out.addr, align 8
  %arrayidx3418 = getelementptr inbounds i32, ptr %3712, i64 14
  %3713 = load i32, ptr %arrayidx3418, align 4
  %3714 = load ptr, ptr %out.addr, align 8
  %arrayidx3419 = getelementptr inbounds i32, ptr %3714, i64 9
  %3715 = load i32, ptr %arrayidx3419, align 4
  %add3420 = add i32 %3715, %3713
  store i32 %add3420, ptr %arrayidx3419, align 4
  %3716 = load ptr, ptr %out.addr, align 8
  %arrayidx3421 = getelementptr inbounds i32, ptr %3716, i64 9
  %3717 = load i32, ptr %arrayidx3421, align 4
  %3718 = load ptr, ptr %out.addr, align 8
  %arrayidx3422 = getelementptr inbounds i32, ptr %3718, i64 4
  %3719 = load i32, ptr %arrayidx3422, align 4
  %xor3423 = xor i32 %3719, %3717
  store i32 %xor3423, ptr %arrayidx3422, align 4
  %3720 = load ptr, ptr %out.addr, align 8
  %arrayidx3424 = getelementptr inbounds i32, ptr %3720, i64 4
  %3721 = load i32, ptr %arrayidx3424, align 4
  %shl3425 = shl i32 %3721, 12
  %3722 = load ptr, ptr %out.addr, align 8
  %arrayidx3426 = getelementptr inbounds i32, ptr %3722, i64 4
  %3723 = load i32, ptr %arrayidx3426, align 4
  %shr3427 = lshr i32 %3723, 20
  %or3428 = or i32 %shl3425, %shr3427
  %3724 = load ptr, ptr %out.addr, align 8
  %arrayidx3429 = getelementptr inbounds i32, ptr %3724, i64 4
  store i32 %or3428, ptr %arrayidx3429, align 4
  %3725 = load ptr, ptr %out.addr, align 8
  %arrayidx3430 = getelementptr inbounds i32, ptr %3725, i64 4
  %3726 = load i32, ptr %arrayidx3430, align 4
  %3727 = load ptr, ptr %out.addr, align 8
  %arrayidx3431 = getelementptr inbounds i32, ptr %3727, i64 3
  %3728 = load i32, ptr %arrayidx3431, align 4
  %add3432 = add i32 %3728, %3726
  store i32 %add3432, ptr %arrayidx3431, align 4
  %3729 = load ptr, ptr %out.addr, align 8
  %arrayidx3433 = getelementptr inbounds i32, ptr %3729, i64 3
  %3730 = load i32, ptr %arrayidx3433, align 4
  %3731 = load ptr, ptr %out.addr, align 8
  %arrayidx3434 = getelementptr inbounds i32, ptr %3731, i64 14
  %3732 = load i32, ptr %arrayidx3434, align 4
  %xor3435 = xor i32 %3732, %3730
  store i32 %xor3435, ptr %arrayidx3434, align 4
  %3733 = load ptr, ptr %out.addr, align 8
  %arrayidx3436 = getelementptr inbounds i32, ptr %3733, i64 14
  %3734 = load i32, ptr %arrayidx3436, align 4
  %shl3437 = shl i32 %3734, 8
  %3735 = load ptr, ptr %out.addr, align 8
  %arrayidx3438 = getelementptr inbounds i32, ptr %3735, i64 14
  %3736 = load i32, ptr %arrayidx3438, align 4
  %shr3439 = lshr i32 %3736, 24
  %or3440 = or i32 %shl3437, %shr3439
  %3737 = load ptr, ptr %out.addr, align 8
  %arrayidx3441 = getelementptr inbounds i32, ptr %3737, i64 14
  store i32 %or3440, ptr %arrayidx3441, align 4
  %3738 = load ptr, ptr %out.addr, align 8
  %arrayidx3442 = getelementptr inbounds i32, ptr %3738, i64 14
  %3739 = load i32, ptr %arrayidx3442, align 4
  %3740 = load ptr, ptr %out.addr, align 8
  %arrayidx3443 = getelementptr inbounds i32, ptr %3740, i64 9
  %3741 = load i32, ptr %arrayidx3443, align 4
  %add3444 = add i32 %3741, %3739
  store i32 %add3444, ptr %arrayidx3443, align 4
  %3742 = load ptr, ptr %out.addr, align 8
  %arrayidx3445 = getelementptr inbounds i32, ptr %3742, i64 9
  %3743 = load i32, ptr %arrayidx3445, align 4
  %3744 = load ptr, ptr %out.addr, align 8
  %arrayidx3446 = getelementptr inbounds i32, ptr %3744, i64 4
  %3745 = load i32, ptr %arrayidx3446, align 4
  %xor3447 = xor i32 %3745, %3743
  store i32 %xor3447, ptr %arrayidx3446, align 4
  %3746 = load ptr, ptr %out.addr, align 8
  %arrayidx3448 = getelementptr inbounds i32, ptr %3746, i64 4
  %3747 = load i32, ptr %arrayidx3448, align 4
  %shl3449 = shl i32 %3747, 7
  %3748 = load ptr, ptr %out.addr, align 8
  %arrayidx3450 = getelementptr inbounds i32, ptr %3748, i64 4
  %3749 = load i32, ptr %arrayidx3450, align 4
  %shr3451 = lshr i32 %3749, 25
  %or3452 = or i32 %shl3449, %shr3451
  %3750 = load ptr, ptr %out.addr, align 8
  %arrayidx3453 = getelementptr inbounds i32, ptr %3750, i64 4
  store i32 %or3452, ptr %arrayidx3453, align 4
  %3751 = load ptr, ptr %out.addr, align 8
  %arrayidx3454 = getelementptr inbounds i32, ptr %3751, i64 4
  %3752 = load i32, ptr %arrayidx3454, align 4
  %3753 = load ptr, ptr %out.addr, align 8
  %arrayidx3455 = getelementptr inbounds i32, ptr %3753, i64 0
  %3754 = load i32, ptr %arrayidx3455, align 4
  %add3456 = add i32 %3754, %3752
  store i32 %add3456, ptr %arrayidx3455, align 4
  %3755 = load ptr, ptr %out.addr, align 8
  %arrayidx3457 = getelementptr inbounds i32, ptr %3755, i64 0
  %3756 = load i32, ptr %arrayidx3457, align 4
  %3757 = load ptr, ptr %out.addr, align 8
  %arrayidx3458 = getelementptr inbounds i32, ptr %3757, i64 12
  %3758 = load i32, ptr %arrayidx3458, align 4
  %xor3459 = xor i32 %3758, %3756
  store i32 %xor3459, ptr %arrayidx3458, align 4
  %3759 = load ptr, ptr %out.addr, align 8
  %arrayidx3460 = getelementptr inbounds i32, ptr %3759, i64 12
  %3760 = load i32, ptr %arrayidx3460, align 4
  %shl3461 = shl i32 %3760, 16
  %3761 = load ptr, ptr %out.addr, align 8
  %arrayidx3462 = getelementptr inbounds i32, ptr %3761, i64 12
  %3762 = load i32, ptr %arrayidx3462, align 4
  %shr3463 = lshr i32 %3762, 16
  %or3464 = or i32 %shl3461, %shr3463
  %3763 = load ptr, ptr %out.addr, align 8
  %arrayidx3465 = getelementptr inbounds i32, ptr %3763, i64 12
  store i32 %or3464, ptr %arrayidx3465, align 4
  %3764 = load ptr, ptr %out.addr, align 8
  %arrayidx3466 = getelementptr inbounds i32, ptr %3764, i64 12
  %3765 = load i32, ptr %arrayidx3466, align 4
  %3766 = load ptr, ptr %out.addr, align 8
  %arrayidx3467 = getelementptr inbounds i32, ptr %3766, i64 8
  %3767 = load i32, ptr %arrayidx3467, align 4
  %add3468 = add i32 %3767, %3765
  store i32 %add3468, ptr %arrayidx3467, align 4
  %3768 = load ptr, ptr %out.addr, align 8
  %arrayidx3469 = getelementptr inbounds i32, ptr %3768, i64 8
  %3769 = load i32, ptr %arrayidx3469, align 4
  %3770 = load ptr, ptr %out.addr, align 8
  %arrayidx3470 = getelementptr inbounds i32, ptr %3770, i64 4
  %3771 = load i32, ptr %arrayidx3470, align 4
  %xor3471 = xor i32 %3771, %3769
  store i32 %xor3471, ptr %arrayidx3470, align 4
  %3772 = load ptr, ptr %out.addr, align 8
  %arrayidx3472 = getelementptr inbounds i32, ptr %3772, i64 4
  %3773 = load i32, ptr %arrayidx3472, align 4
  %shl3473 = shl i32 %3773, 12
  %3774 = load ptr, ptr %out.addr, align 8
  %arrayidx3474 = getelementptr inbounds i32, ptr %3774, i64 4
  %3775 = load i32, ptr %arrayidx3474, align 4
  %shr3475 = lshr i32 %3775, 20
  %or3476 = or i32 %shl3473, %shr3475
  %3776 = load ptr, ptr %out.addr, align 8
  %arrayidx3477 = getelementptr inbounds i32, ptr %3776, i64 4
  store i32 %or3476, ptr %arrayidx3477, align 4
  %3777 = load ptr, ptr %out.addr, align 8
  %arrayidx3478 = getelementptr inbounds i32, ptr %3777, i64 4
  %3778 = load i32, ptr %arrayidx3478, align 4
  %3779 = load ptr, ptr %out.addr, align 8
  %arrayidx3479 = getelementptr inbounds i32, ptr %3779, i64 0
  %3780 = load i32, ptr %arrayidx3479, align 4
  %add3480 = add i32 %3780, %3778
  store i32 %add3480, ptr %arrayidx3479, align 4
  %3781 = load ptr, ptr %out.addr, align 8
  %arrayidx3481 = getelementptr inbounds i32, ptr %3781, i64 0
  %3782 = load i32, ptr %arrayidx3481, align 4
  %3783 = load ptr, ptr %out.addr, align 8
  %arrayidx3482 = getelementptr inbounds i32, ptr %3783, i64 12
  %3784 = load i32, ptr %arrayidx3482, align 4
  %xor3483 = xor i32 %3784, %3782
  store i32 %xor3483, ptr %arrayidx3482, align 4
  %3785 = load ptr, ptr %out.addr, align 8
  %arrayidx3484 = getelementptr inbounds i32, ptr %3785, i64 12
  %3786 = load i32, ptr %arrayidx3484, align 4
  %shl3485 = shl i32 %3786, 8
  %3787 = load ptr, ptr %out.addr, align 8
  %arrayidx3486 = getelementptr inbounds i32, ptr %3787, i64 12
  %3788 = load i32, ptr %arrayidx3486, align 4
  %shr3487 = lshr i32 %3788, 24
  %or3488 = or i32 %shl3485, %shr3487
  %3789 = load ptr, ptr %out.addr, align 8
  %arrayidx3489 = getelementptr inbounds i32, ptr %3789, i64 12
  store i32 %or3488, ptr %arrayidx3489, align 4
  %3790 = load ptr, ptr %out.addr, align 8
  %arrayidx3490 = getelementptr inbounds i32, ptr %3790, i64 12
  %3791 = load i32, ptr %arrayidx3490, align 4
  %3792 = load ptr, ptr %out.addr, align 8
  %arrayidx3491 = getelementptr inbounds i32, ptr %3792, i64 8
  %3793 = load i32, ptr %arrayidx3491, align 4
  %add3492 = add i32 %3793, %3791
  store i32 %add3492, ptr %arrayidx3491, align 4
  %3794 = load ptr, ptr %out.addr, align 8
  %arrayidx3493 = getelementptr inbounds i32, ptr %3794, i64 8
  %3795 = load i32, ptr %arrayidx3493, align 4
  %3796 = load ptr, ptr %out.addr, align 8
  %arrayidx3494 = getelementptr inbounds i32, ptr %3796, i64 4
  %3797 = load i32, ptr %arrayidx3494, align 4
  %xor3495 = xor i32 %3797, %3795
  store i32 %xor3495, ptr %arrayidx3494, align 4
  %3798 = load ptr, ptr %out.addr, align 8
  %arrayidx3496 = getelementptr inbounds i32, ptr %3798, i64 4
  %3799 = load i32, ptr %arrayidx3496, align 4
  %shl3497 = shl i32 %3799, 7
  %3800 = load ptr, ptr %out.addr, align 8
  %arrayidx3498 = getelementptr inbounds i32, ptr %3800, i64 4
  %3801 = load i32, ptr %arrayidx3498, align 4
  %shr3499 = lshr i32 %3801, 25
  %or3500 = or i32 %shl3497, %shr3499
  %3802 = load ptr, ptr %out.addr, align 8
  %arrayidx3501 = getelementptr inbounds i32, ptr %3802, i64 4
  store i32 %or3500, ptr %arrayidx3501, align 4
  %3803 = load ptr, ptr %out.addr, align 8
  %arrayidx3502 = getelementptr inbounds i32, ptr %3803, i64 5
  %3804 = load i32, ptr %arrayidx3502, align 4
  %3805 = load ptr, ptr %out.addr, align 8
  %arrayidx3503 = getelementptr inbounds i32, ptr %3805, i64 1
  %3806 = load i32, ptr %arrayidx3503, align 4
  %add3504 = add i32 %3806, %3804
  store i32 %add3504, ptr %arrayidx3503, align 4
  %3807 = load ptr, ptr %out.addr, align 8
  %arrayidx3505 = getelementptr inbounds i32, ptr %3807, i64 1
  %3808 = load i32, ptr %arrayidx3505, align 4
  %3809 = load ptr, ptr %out.addr, align 8
  %arrayidx3506 = getelementptr inbounds i32, ptr %3809, i64 13
  %3810 = load i32, ptr %arrayidx3506, align 4
  %xor3507 = xor i32 %3810, %3808
  store i32 %xor3507, ptr %arrayidx3506, align 4
  %3811 = load ptr, ptr %out.addr, align 8
  %arrayidx3508 = getelementptr inbounds i32, ptr %3811, i64 13
  %3812 = load i32, ptr %arrayidx3508, align 4
  %shl3509 = shl i32 %3812, 16
  %3813 = load ptr, ptr %out.addr, align 8
  %arrayidx3510 = getelementptr inbounds i32, ptr %3813, i64 13
  %3814 = load i32, ptr %arrayidx3510, align 4
  %shr3511 = lshr i32 %3814, 16
  %or3512 = or i32 %shl3509, %shr3511
  %3815 = load ptr, ptr %out.addr, align 8
  %arrayidx3513 = getelementptr inbounds i32, ptr %3815, i64 13
  store i32 %or3512, ptr %arrayidx3513, align 4
  %3816 = load ptr, ptr %out.addr, align 8
  %arrayidx3514 = getelementptr inbounds i32, ptr %3816, i64 13
  %3817 = load i32, ptr %arrayidx3514, align 4
  %3818 = load ptr, ptr %out.addr, align 8
  %arrayidx3515 = getelementptr inbounds i32, ptr %3818, i64 9
  %3819 = load i32, ptr %arrayidx3515, align 4
  %add3516 = add i32 %3819, %3817
  store i32 %add3516, ptr %arrayidx3515, align 4
  %3820 = load ptr, ptr %out.addr, align 8
  %arrayidx3517 = getelementptr inbounds i32, ptr %3820, i64 9
  %3821 = load i32, ptr %arrayidx3517, align 4
  %3822 = load ptr, ptr %out.addr, align 8
  %arrayidx3518 = getelementptr inbounds i32, ptr %3822, i64 5
  %3823 = load i32, ptr %arrayidx3518, align 4
  %xor3519 = xor i32 %3823, %3821
  store i32 %xor3519, ptr %arrayidx3518, align 4
  %3824 = load ptr, ptr %out.addr, align 8
  %arrayidx3520 = getelementptr inbounds i32, ptr %3824, i64 5
  %3825 = load i32, ptr %arrayidx3520, align 4
  %shl3521 = shl i32 %3825, 12
  %3826 = load ptr, ptr %out.addr, align 8
  %arrayidx3522 = getelementptr inbounds i32, ptr %3826, i64 5
  %3827 = load i32, ptr %arrayidx3522, align 4
  %shr3523 = lshr i32 %3827, 20
  %or3524 = or i32 %shl3521, %shr3523
  %3828 = load ptr, ptr %out.addr, align 8
  %arrayidx3525 = getelementptr inbounds i32, ptr %3828, i64 5
  store i32 %or3524, ptr %arrayidx3525, align 4
  %3829 = load ptr, ptr %out.addr, align 8
  %arrayidx3526 = getelementptr inbounds i32, ptr %3829, i64 5
  %3830 = load i32, ptr %arrayidx3526, align 4
  %3831 = load ptr, ptr %out.addr, align 8
  %arrayidx3527 = getelementptr inbounds i32, ptr %3831, i64 1
  %3832 = load i32, ptr %arrayidx3527, align 4
  %add3528 = add i32 %3832, %3830
  store i32 %add3528, ptr %arrayidx3527, align 4
  %3833 = load ptr, ptr %out.addr, align 8
  %arrayidx3529 = getelementptr inbounds i32, ptr %3833, i64 1
  %3834 = load i32, ptr %arrayidx3529, align 4
  %3835 = load ptr, ptr %out.addr, align 8
  %arrayidx3530 = getelementptr inbounds i32, ptr %3835, i64 13
  %3836 = load i32, ptr %arrayidx3530, align 4
  %xor3531 = xor i32 %3836, %3834
  store i32 %xor3531, ptr %arrayidx3530, align 4
  %3837 = load ptr, ptr %out.addr, align 8
  %arrayidx3532 = getelementptr inbounds i32, ptr %3837, i64 13
  %3838 = load i32, ptr %arrayidx3532, align 4
  %shl3533 = shl i32 %3838, 8
  %3839 = load ptr, ptr %out.addr, align 8
  %arrayidx3534 = getelementptr inbounds i32, ptr %3839, i64 13
  %3840 = load i32, ptr %arrayidx3534, align 4
  %shr3535 = lshr i32 %3840, 24
  %or3536 = or i32 %shl3533, %shr3535
  %3841 = load ptr, ptr %out.addr, align 8
  %arrayidx3537 = getelementptr inbounds i32, ptr %3841, i64 13
  store i32 %or3536, ptr %arrayidx3537, align 4
  %3842 = load ptr, ptr %out.addr, align 8
  %arrayidx3538 = getelementptr inbounds i32, ptr %3842, i64 13
  %3843 = load i32, ptr %arrayidx3538, align 4
  %3844 = load ptr, ptr %out.addr, align 8
  %arrayidx3539 = getelementptr inbounds i32, ptr %3844, i64 9
  %3845 = load i32, ptr %arrayidx3539, align 4
  %add3540 = add i32 %3845, %3843
  store i32 %add3540, ptr %arrayidx3539, align 4
  %3846 = load ptr, ptr %out.addr, align 8
  %arrayidx3541 = getelementptr inbounds i32, ptr %3846, i64 9
  %3847 = load i32, ptr %arrayidx3541, align 4
  %3848 = load ptr, ptr %out.addr, align 8
  %arrayidx3542 = getelementptr inbounds i32, ptr %3848, i64 5
  %3849 = load i32, ptr %arrayidx3542, align 4
  %xor3543 = xor i32 %3849, %3847
  store i32 %xor3543, ptr %arrayidx3542, align 4
  %3850 = load ptr, ptr %out.addr, align 8
  %arrayidx3544 = getelementptr inbounds i32, ptr %3850, i64 5
  %3851 = load i32, ptr %arrayidx3544, align 4
  %shl3545 = shl i32 %3851, 7
  %3852 = load ptr, ptr %out.addr, align 8
  %arrayidx3546 = getelementptr inbounds i32, ptr %3852, i64 5
  %3853 = load i32, ptr %arrayidx3546, align 4
  %shr3547 = lshr i32 %3853, 25
  %or3548 = or i32 %shl3545, %shr3547
  %3854 = load ptr, ptr %out.addr, align 8
  %arrayidx3549 = getelementptr inbounds i32, ptr %3854, i64 5
  store i32 %or3548, ptr %arrayidx3549, align 4
  %3855 = load ptr, ptr %out.addr, align 8
  %arrayidx3550 = getelementptr inbounds i32, ptr %3855, i64 6
  %3856 = load i32, ptr %arrayidx3550, align 4
  %3857 = load ptr, ptr %out.addr, align 8
  %arrayidx3551 = getelementptr inbounds i32, ptr %3857, i64 2
  %3858 = load i32, ptr %arrayidx3551, align 4
  %add3552 = add i32 %3858, %3856
  store i32 %add3552, ptr %arrayidx3551, align 4
  %3859 = load ptr, ptr %out.addr, align 8
  %arrayidx3553 = getelementptr inbounds i32, ptr %3859, i64 2
  %3860 = load i32, ptr %arrayidx3553, align 4
  %3861 = load ptr, ptr %out.addr, align 8
  %arrayidx3554 = getelementptr inbounds i32, ptr %3861, i64 14
  %3862 = load i32, ptr %arrayidx3554, align 4
  %xor3555 = xor i32 %3862, %3860
  store i32 %xor3555, ptr %arrayidx3554, align 4
  %3863 = load ptr, ptr %out.addr, align 8
  %arrayidx3556 = getelementptr inbounds i32, ptr %3863, i64 14
  %3864 = load i32, ptr %arrayidx3556, align 4
  %shl3557 = shl i32 %3864, 16
  %3865 = load ptr, ptr %out.addr, align 8
  %arrayidx3558 = getelementptr inbounds i32, ptr %3865, i64 14
  %3866 = load i32, ptr %arrayidx3558, align 4
  %shr3559 = lshr i32 %3866, 16
  %or3560 = or i32 %shl3557, %shr3559
  %3867 = load ptr, ptr %out.addr, align 8
  %arrayidx3561 = getelementptr inbounds i32, ptr %3867, i64 14
  store i32 %or3560, ptr %arrayidx3561, align 4
  %3868 = load ptr, ptr %out.addr, align 8
  %arrayidx3562 = getelementptr inbounds i32, ptr %3868, i64 14
  %3869 = load i32, ptr %arrayidx3562, align 4
  %3870 = load ptr, ptr %out.addr, align 8
  %arrayidx3563 = getelementptr inbounds i32, ptr %3870, i64 10
  %3871 = load i32, ptr %arrayidx3563, align 4
  %add3564 = add i32 %3871, %3869
  store i32 %add3564, ptr %arrayidx3563, align 4
  %3872 = load ptr, ptr %out.addr, align 8
  %arrayidx3565 = getelementptr inbounds i32, ptr %3872, i64 10
  %3873 = load i32, ptr %arrayidx3565, align 4
  %3874 = load ptr, ptr %out.addr, align 8
  %arrayidx3566 = getelementptr inbounds i32, ptr %3874, i64 6
  %3875 = load i32, ptr %arrayidx3566, align 4
  %xor3567 = xor i32 %3875, %3873
  store i32 %xor3567, ptr %arrayidx3566, align 4
  %3876 = load ptr, ptr %out.addr, align 8
  %arrayidx3568 = getelementptr inbounds i32, ptr %3876, i64 6
  %3877 = load i32, ptr %arrayidx3568, align 4
  %shl3569 = shl i32 %3877, 12
  %3878 = load ptr, ptr %out.addr, align 8
  %arrayidx3570 = getelementptr inbounds i32, ptr %3878, i64 6
  %3879 = load i32, ptr %arrayidx3570, align 4
  %shr3571 = lshr i32 %3879, 20
  %or3572 = or i32 %shl3569, %shr3571
  %3880 = load ptr, ptr %out.addr, align 8
  %arrayidx3573 = getelementptr inbounds i32, ptr %3880, i64 6
  store i32 %or3572, ptr %arrayidx3573, align 4
  %3881 = load ptr, ptr %out.addr, align 8
  %arrayidx3574 = getelementptr inbounds i32, ptr %3881, i64 6
  %3882 = load i32, ptr %arrayidx3574, align 4
  %3883 = load ptr, ptr %out.addr, align 8
  %arrayidx3575 = getelementptr inbounds i32, ptr %3883, i64 2
  %3884 = load i32, ptr %arrayidx3575, align 4
  %add3576 = add i32 %3884, %3882
  store i32 %add3576, ptr %arrayidx3575, align 4
  %3885 = load ptr, ptr %out.addr, align 8
  %arrayidx3577 = getelementptr inbounds i32, ptr %3885, i64 2
  %3886 = load i32, ptr %arrayidx3577, align 4
  %3887 = load ptr, ptr %out.addr, align 8
  %arrayidx3578 = getelementptr inbounds i32, ptr %3887, i64 14
  %3888 = load i32, ptr %arrayidx3578, align 4
  %xor3579 = xor i32 %3888, %3886
  store i32 %xor3579, ptr %arrayidx3578, align 4
  %3889 = load ptr, ptr %out.addr, align 8
  %arrayidx3580 = getelementptr inbounds i32, ptr %3889, i64 14
  %3890 = load i32, ptr %arrayidx3580, align 4
  %shl3581 = shl i32 %3890, 8
  %3891 = load ptr, ptr %out.addr, align 8
  %arrayidx3582 = getelementptr inbounds i32, ptr %3891, i64 14
  %3892 = load i32, ptr %arrayidx3582, align 4
  %shr3583 = lshr i32 %3892, 24
  %or3584 = or i32 %shl3581, %shr3583
  %3893 = load ptr, ptr %out.addr, align 8
  %arrayidx3585 = getelementptr inbounds i32, ptr %3893, i64 14
  store i32 %or3584, ptr %arrayidx3585, align 4
  %3894 = load ptr, ptr %out.addr, align 8
  %arrayidx3586 = getelementptr inbounds i32, ptr %3894, i64 14
  %3895 = load i32, ptr %arrayidx3586, align 4
  %3896 = load ptr, ptr %out.addr, align 8
  %arrayidx3587 = getelementptr inbounds i32, ptr %3896, i64 10
  %3897 = load i32, ptr %arrayidx3587, align 4
  %add3588 = add i32 %3897, %3895
  store i32 %add3588, ptr %arrayidx3587, align 4
  %3898 = load ptr, ptr %out.addr, align 8
  %arrayidx3589 = getelementptr inbounds i32, ptr %3898, i64 10
  %3899 = load i32, ptr %arrayidx3589, align 4
  %3900 = load ptr, ptr %out.addr, align 8
  %arrayidx3590 = getelementptr inbounds i32, ptr %3900, i64 6
  %3901 = load i32, ptr %arrayidx3590, align 4
  %xor3591 = xor i32 %3901, %3899
  store i32 %xor3591, ptr %arrayidx3590, align 4
  %3902 = load ptr, ptr %out.addr, align 8
  %arrayidx3592 = getelementptr inbounds i32, ptr %3902, i64 6
  %3903 = load i32, ptr %arrayidx3592, align 4
  %shl3593 = shl i32 %3903, 7
  %3904 = load ptr, ptr %out.addr, align 8
  %arrayidx3594 = getelementptr inbounds i32, ptr %3904, i64 6
  %3905 = load i32, ptr %arrayidx3594, align 4
  %shr3595 = lshr i32 %3905, 25
  %or3596 = or i32 %shl3593, %shr3595
  %3906 = load ptr, ptr %out.addr, align 8
  %arrayidx3597 = getelementptr inbounds i32, ptr %3906, i64 6
  store i32 %or3596, ptr %arrayidx3597, align 4
  %3907 = load ptr, ptr %out.addr, align 8
  %arrayidx3598 = getelementptr inbounds i32, ptr %3907, i64 7
  %3908 = load i32, ptr %arrayidx3598, align 4
  %3909 = load ptr, ptr %out.addr, align 8
  %arrayidx3599 = getelementptr inbounds i32, ptr %3909, i64 3
  %3910 = load i32, ptr %arrayidx3599, align 4
  %add3600 = add i32 %3910, %3908
  store i32 %add3600, ptr %arrayidx3599, align 4
  %3911 = load ptr, ptr %out.addr, align 8
  %arrayidx3601 = getelementptr inbounds i32, ptr %3911, i64 3
  %3912 = load i32, ptr %arrayidx3601, align 4
  %3913 = load ptr, ptr %out.addr, align 8
  %arrayidx3602 = getelementptr inbounds i32, ptr %3913, i64 15
  %3914 = load i32, ptr %arrayidx3602, align 4
  %xor3603 = xor i32 %3914, %3912
  store i32 %xor3603, ptr %arrayidx3602, align 4
  %3915 = load ptr, ptr %out.addr, align 8
  %arrayidx3604 = getelementptr inbounds i32, ptr %3915, i64 15
  %3916 = load i32, ptr %arrayidx3604, align 4
  %shl3605 = shl i32 %3916, 16
  %3917 = load ptr, ptr %out.addr, align 8
  %arrayidx3606 = getelementptr inbounds i32, ptr %3917, i64 15
  %3918 = load i32, ptr %arrayidx3606, align 4
  %shr3607 = lshr i32 %3918, 16
  %or3608 = or i32 %shl3605, %shr3607
  %3919 = load ptr, ptr %out.addr, align 8
  %arrayidx3609 = getelementptr inbounds i32, ptr %3919, i64 15
  store i32 %or3608, ptr %arrayidx3609, align 4
  %3920 = load ptr, ptr %out.addr, align 8
  %arrayidx3610 = getelementptr inbounds i32, ptr %3920, i64 15
  %3921 = load i32, ptr %arrayidx3610, align 4
  %3922 = load ptr, ptr %out.addr, align 8
  %arrayidx3611 = getelementptr inbounds i32, ptr %3922, i64 11
  %3923 = load i32, ptr %arrayidx3611, align 4
  %add3612 = add i32 %3923, %3921
  store i32 %add3612, ptr %arrayidx3611, align 4
  %3924 = load ptr, ptr %out.addr, align 8
  %arrayidx3613 = getelementptr inbounds i32, ptr %3924, i64 11
  %3925 = load i32, ptr %arrayidx3613, align 4
  %3926 = load ptr, ptr %out.addr, align 8
  %arrayidx3614 = getelementptr inbounds i32, ptr %3926, i64 7
  %3927 = load i32, ptr %arrayidx3614, align 4
  %xor3615 = xor i32 %3927, %3925
  store i32 %xor3615, ptr %arrayidx3614, align 4
  %3928 = load ptr, ptr %out.addr, align 8
  %arrayidx3616 = getelementptr inbounds i32, ptr %3928, i64 7
  %3929 = load i32, ptr %arrayidx3616, align 4
  %shl3617 = shl i32 %3929, 12
  %3930 = load ptr, ptr %out.addr, align 8
  %arrayidx3618 = getelementptr inbounds i32, ptr %3930, i64 7
  %3931 = load i32, ptr %arrayidx3618, align 4
  %shr3619 = lshr i32 %3931, 20
  %or3620 = or i32 %shl3617, %shr3619
  %3932 = load ptr, ptr %out.addr, align 8
  %arrayidx3621 = getelementptr inbounds i32, ptr %3932, i64 7
  store i32 %or3620, ptr %arrayidx3621, align 4
  %3933 = load ptr, ptr %out.addr, align 8
  %arrayidx3622 = getelementptr inbounds i32, ptr %3933, i64 7
  %3934 = load i32, ptr %arrayidx3622, align 4
  %3935 = load ptr, ptr %out.addr, align 8
  %arrayidx3623 = getelementptr inbounds i32, ptr %3935, i64 3
  %3936 = load i32, ptr %arrayidx3623, align 4
  %add3624 = add i32 %3936, %3934
  store i32 %add3624, ptr %arrayidx3623, align 4
  %3937 = load ptr, ptr %out.addr, align 8
  %arrayidx3625 = getelementptr inbounds i32, ptr %3937, i64 3
  %3938 = load i32, ptr %arrayidx3625, align 4
  %3939 = load ptr, ptr %out.addr, align 8
  %arrayidx3626 = getelementptr inbounds i32, ptr %3939, i64 15
  %3940 = load i32, ptr %arrayidx3626, align 4
  %xor3627 = xor i32 %3940, %3938
  store i32 %xor3627, ptr %arrayidx3626, align 4
  %3941 = load ptr, ptr %out.addr, align 8
  %arrayidx3628 = getelementptr inbounds i32, ptr %3941, i64 15
  %3942 = load i32, ptr %arrayidx3628, align 4
  %shl3629 = shl i32 %3942, 8
  %3943 = load ptr, ptr %out.addr, align 8
  %arrayidx3630 = getelementptr inbounds i32, ptr %3943, i64 15
  %3944 = load i32, ptr %arrayidx3630, align 4
  %shr3631 = lshr i32 %3944, 24
  %or3632 = or i32 %shl3629, %shr3631
  %3945 = load ptr, ptr %out.addr, align 8
  %arrayidx3633 = getelementptr inbounds i32, ptr %3945, i64 15
  store i32 %or3632, ptr %arrayidx3633, align 4
  %3946 = load ptr, ptr %out.addr, align 8
  %arrayidx3634 = getelementptr inbounds i32, ptr %3946, i64 15
  %3947 = load i32, ptr %arrayidx3634, align 4
  %3948 = load ptr, ptr %out.addr, align 8
  %arrayidx3635 = getelementptr inbounds i32, ptr %3948, i64 11
  %3949 = load i32, ptr %arrayidx3635, align 4
  %add3636 = add i32 %3949, %3947
  store i32 %add3636, ptr %arrayidx3635, align 4
  %3950 = load ptr, ptr %out.addr, align 8
  %arrayidx3637 = getelementptr inbounds i32, ptr %3950, i64 11
  %3951 = load i32, ptr %arrayidx3637, align 4
  %3952 = load ptr, ptr %out.addr, align 8
  %arrayidx3638 = getelementptr inbounds i32, ptr %3952, i64 7
  %3953 = load i32, ptr %arrayidx3638, align 4
  %xor3639 = xor i32 %3953, %3951
  store i32 %xor3639, ptr %arrayidx3638, align 4
  %3954 = load ptr, ptr %out.addr, align 8
  %arrayidx3640 = getelementptr inbounds i32, ptr %3954, i64 7
  %3955 = load i32, ptr %arrayidx3640, align 4
  %shl3641 = shl i32 %3955, 7
  %3956 = load ptr, ptr %out.addr, align 8
  %arrayidx3642 = getelementptr inbounds i32, ptr %3956, i64 7
  %3957 = load i32, ptr %arrayidx3642, align 4
  %shr3643 = lshr i32 %3957, 25
  %or3644 = or i32 %shl3641, %shr3643
  %3958 = load ptr, ptr %out.addr, align 8
  %arrayidx3645 = getelementptr inbounds i32, ptr %3958, i64 7
  store i32 %or3644, ptr %arrayidx3645, align 4
  %3959 = load ptr, ptr %out.addr, align 8
  %arrayidx3646 = getelementptr inbounds i32, ptr %3959, i64 5
  %3960 = load i32, ptr %arrayidx3646, align 4
  %3961 = load ptr, ptr %out.addr, align 8
  %arrayidx3647 = getelementptr inbounds i32, ptr %3961, i64 0
  %3962 = load i32, ptr %arrayidx3647, align 4
  %add3648 = add i32 %3962, %3960
  store i32 %add3648, ptr %arrayidx3647, align 4
  %3963 = load ptr, ptr %out.addr, align 8
  %arrayidx3649 = getelementptr inbounds i32, ptr %3963, i64 0
  %3964 = load i32, ptr %arrayidx3649, align 4
  %3965 = load ptr, ptr %out.addr, align 8
  %arrayidx3650 = getelementptr inbounds i32, ptr %3965, i64 15
  %3966 = load i32, ptr %arrayidx3650, align 4
  %xor3651 = xor i32 %3966, %3964
  store i32 %xor3651, ptr %arrayidx3650, align 4
  %3967 = load ptr, ptr %out.addr, align 8
  %arrayidx3652 = getelementptr inbounds i32, ptr %3967, i64 15
  %3968 = load i32, ptr %arrayidx3652, align 4
  %shl3653 = shl i32 %3968, 16
  %3969 = load ptr, ptr %out.addr, align 8
  %arrayidx3654 = getelementptr inbounds i32, ptr %3969, i64 15
  %3970 = load i32, ptr %arrayidx3654, align 4
  %shr3655 = lshr i32 %3970, 16
  %or3656 = or i32 %shl3653, %shr3655
  %3971 = load ptr, ptr %out.addr, align 8
  %arrayidx3657 = getelementptr inbounds i32, ptr %3971, i64 15
  store i32 %or3656, ptr %arrayidx3657, align 4
  %3972 = load ptr, ptr %out.addr, align 8
  %arrayidx3658 = getelementptr inbounds i32, ptr %3972, i64 15
  %3973 = load i32, ptr %arrayidx3658, align 4
  %3974 = load ptr, ptr %out.addr, align 8
  %arrayidx3659 = getelementptr inbounds i32, ptr %3974, i64 10
  %3975 = load i32, ptr %arrayidx3659, align 4
  %add3660 = add i32 %3975, %3973
  store i32 %add3660, ptr %arrayidx3659, align 4
  %3976 = load ptr, ptr %out.addr, align 8
  %arrayidx3661 = getelementptr inbounds i32, ptr %3976, i64 10
  %3977 = load i32, ptr %arrayidx3661, align 4
  %3978 = load ptr, ptr %out.addr, align 8
  %arrayidx3662 = getelementptr inbounds i32, ptr %3978, i64 5
  %3979 = load i32, ptr %arrayidx3662, align 4
  %xor3663 = xor i32 %3979, %3977
  store i32 %xor3663, ptr %arrayidx3662, align 4
  %3980 = load ptr, ptr %out.addr, align 8
  %arrayidx3664 = getelementptr inbounds i32, ptr %3980, i64 5
  %3981 = load i32, ptr %arrayidx3664, align 4
  %shl3665 = shl i32 %3981, 12
  %3982 = load ptr, ptr %out.addr, align 8
  %arrayidx3666 = getelementptr inbounds i32, ptr %3982, i64 5
  %3983 = load i32, ptr %arrayidx3666, align 4
  %shr3667 = lshr i32 %3983, 20
  %or3668 = or i32 %shl3665, %shr3667
  %3984 = load ptr, ptr %out.addr, align 8
  %arrayidx3669 = getelementptr inbounds i32, ptr %3984, i64 5
  store i32 %or3668, ptr %arrayidx3669, align 4
  %3985 = load ptr, ptr %out.addr, align 8
  %arrayidx3670 = getelementptr inbounds i32, ptr %3985, i64 5
  %3986 = load i32, ptr %arrayidx3670, align 4
  %3987 = load ptr, ptr %out.addr, align 8
  %arrayidx3671 = getelementptr inbounds i32, ptr %3987, i64 0
  %3988 = load i32, ptr %arrayidx3671, align 4
  %add3672 = add i32 %3988, %3986
  store i32 %add3672, ptr %arrayidx3671, align 4
  %3989 = load ptr, ptr %out.addr, align 8
  %arrayidx3673 = getelementptr inbounds i32, ptr %3989, i64 0
  %3990 = load i32, ptr %arrayidx3673, align 4
  %3991 = load ptr, ptr %out.addr, align 8
  %arrayidx3674 = getelementptr inbounds i32, ptr %3991, i64 15
  %3992 = load i32, ptr %arrayidx3674, align 4
  %xor3675 = xor i32 %3992, %3990
  store i32 %xor3675, ptr %arrayidx3674, align 4
  %3993 = load ptr, ptr %out.addr, align 8
  %arrayidx3676 = getelementptr inbounds i32, ptr %3993, i64 15
  %3994 = load i32, ptr %arrayidx3676, align 4
  %shl3677 = shl i32 %3994, 8
  %3995 = load ptr, ptr %out.addr, align 8
  %arrayidx3678 = getelementptr inbounds i32, ptr %3995, i64 15
  %3996 = load i32, ptr %arrayidx3678, align 4
  %shr3679 = lshr i32 %3996, 24
  %or3680 = or i32 %shl3677, %shr3679
  %3997 = load ptr, ptr %out.addr, align 8
  %arrayidx3681 = getelementptr inbounds i32, ptr %3997, i64 15
  store i32 %or3680, ptr %arrayidx3681, align 4
  %3998 = load ptr, ptr %out.addr, align 8
  %arrayidx3682 = getelementptr inbounds i32, ptr %3998, i64 15
  %3999 = load i32, ptr %arrayidx3682, align 4
  %4000 = load ptr, ptr %out.addr, align 8
  %arrayidx3683 = getelementptr inbounds i32, ptr %4000, i64 10
  %4001 = load i32, ptr %arrayidx3683, align 4
  %add3684 = add i32 %4001, %3999
  store i32 %add3684, ptr %arrayidx3683, align 4
  %4002 = load ptr, ptr %out.addr, align 8
  %arrayidx3685 = getelementptr inbounds i32, ptr %4002, i64 10
  %4003 = load i32, ptr %arrayidx3685, align 4
  %4004 = load ptr, ptr %out.addr, align 8
  %arrayidx3686 = getelementptr inbounds i32, ptr %4004, i64 5
  %4005 = load i32, ptr %arrayidx3686, align 4
  %xor3687 = xor i32 %4005, %4003
  store i32 %xor3687, ptr %arrayidx3686, align 4
  %4006 = load ptr, ptr %out.addr, align 8
  %arrayidx3688 = getelementptr inbounds i32, ptr %4006, i64 5
  %4007 = load i32, ptr %arrayidx3688, align 4
  %shl3689 = shl i32 %4007, 7
  %4008 = load ptr, ptr %out.addr, align 8
  %arrayidx3690 = getelementptr inbounds i32, ptr %4008, i64 5
  %4009 = load i32, ptr %arrayidx3690, align 4
  %shr3691 = lshr i32 %4009, 25
  %or3692 = or i32 %shl3689, %shr3691
  %4010 = load ptr, ptr %out.addr, align 8
  %arrayidx3693 = getelementptr inbounds i32, ptr %4010, i64 5
  store i32 %or3692, ptr %arrayidx3693, align 4
  %4011 = load ptr, ptr %out.addr, align 8
  %arrayidx3694 = getelementptr inbounds i32, ptr %4011, i64 6
  %4012 = load i32, ptr %arrayidx3694, align 4
  %4013 = load ptr, ptr %out.addr, align 8
  %arrayidx3695 = getelementptr inbounds i32, ptr %4013, i64 1
  %4014 = load i32, ptr %arrayidx3695, align 4
  %add3696 = add i32 %4014, %4012
  store i32 %add3696, ptr %arrayidx3695, align 4
  %4015 = load ptr, ptr %out.addr, align 8
  %arrayidx3697 = getelementptr inbounds i32, ptr %4015, i64 1
  %4016 = load i32, ptr %arrayidx3697, align 4
  %4017 = load ptr, ptr %out.addr, align 8
  %arrayidx3698 = getelementptr inbounds i32, ptr %4017, i64 12
  %4018 = load i32, ptr %arrayidx3698, align 4
  %xor3699 = xor i32 %4018, %4016
  store i32 %xor3699, ptr %arrayidx3698, align 4
  %4019 = load ptr, ptr %out.addr, align 8
  %arrayidx3700 = getelementptr inbounds i32, ptr %4019, i64 12
  %4020 = load i32, ptr %arrayidx3700, align 4
  %shl3701 = shl i32 %4020, 16
  %4021 = load ptr, ptr %out.addr, align 8
  %arrayidx3702 = getelementptr inbounds i32, ptr %4021, i64 12
  %4022 = load i32, ptr %arrayidx3702, align 4
  %shr3703 = lshr i32 %4022, 16
  %or3704 = or i32 %shl3701, %shr3703
  %4023 = load ptr, ptr %out.addr, align 8
  %arrayidx3705 = getelementptr inbounds i32, ptr %4023, i64 12
  store i32 %or3704, ptr %arrayidx3705, align 4
  %4024 = load ptr, ptr %out.addr, align 8
  %arrayidx3706 = getelementptr inbounds i32, ptr %4024, i64 12
  %4025 = load i32, ptr %arrayidx3706, align 4
  %4026 = load ptr, ptr %out.addr, align 8
  %arrayidx3707 = getelementptr inbounds i32, ptr %4026, i64 11
  %4027 = load i32, ptr %arrayidx3707, align 4
  %add3708 = add i32 %4027, %4025
  store i32 %add3708, ptr %arrayidx3707, align 4
  %4028 = load ptr, ptr %out.addr, align 8
  %arrayidx3709 = getelementptr inbounds i32, ptr %4028, i64 11
  %4029 = load i32, ptr %arrayidx3709, align 4
  %4030 = load ptr, ptr %out.addr, align 8
  %arrayidx3710 = getelementptr inbounds i32, ptr %4030, i64 6
  %4031 = load i32, ptr %arrayidx3710, align 4
  %xor3711 = xor i32 %4031, %4029
  store i32 %xor3711, ptr %arrayidx3710, align 4
  %4032 = load ptr, ptr %out.addr, align 8
  %arrayidx3712 = getelementptr inbounds i32, ptr %4032, i64 6
  %4033 = load i32, ptr %arrayidx3712, align 4
  %shl3713 = shl i32 %4033, 12
  %4034 = load ptr, ptr %out.addr, align 8
  %arrayidx3714 = getelementptr inbounds i32, ptr %4034, i64 6
  %4035 = load i32, ptr %arrayidx3714, align 4
  %shr3715 = lshr i32 %4035, 20
  %or3716 = or i32 %shl3713, %shr3715
  %4036 = load ptr, ptr %out.addr, align 8
  %arrayidx3717 = getelementptr inbounds i32, ptr %4036, i64 6
  store i32 %or3716, ptr %arrayidx3717, align 4
  %4037 = load ptr, ptr %out.addr, align 8
  %arrayidx3718 = getelementptr inbounds i32, ptr %4037, i64 6
  %4038 = load i32, ptr %arrayidx3718, align 4
  %4039 = load ptr, ptr %out.addr, align 8
  %arrayidx3719 = getelementptr inbounds i32, ptr %4039, i64 1
  %4040 = load i32, ptr %arrayidx3719, align 4
  %add3720 = add i32 %4040, %4038
  store i32 %add3720, ptr %arrayidx3719, align 4
  %4041 = load ptr, ptr %out.addr, align 8
  %arrayidx3721 = getelementptr inbounds i32, ptr %4041, i64 1
  %4042 = load i32, ptr %arrayidx3721, align 4
  %4043 = load ptr, ptr %out.addr, align 8
  %arrayidx3722 = getelementptr inbounds i32, ptr %4043, i64 12
  %4044 = load i32, ptr %arrayidx3722, align 4
  %xor3723 = xor i32 %4044, %4042
  store i32 %xor3723, ptr %arrayidx3722, align 4
  %4045 = load ptr, ptr %out.addr, align 8
  %arrayidx3724 = getelementptr inbounds i32, ptr %4045, i64 12
  %4046 = load i32, ptr %arrayidx3724, align 4
  %shl3725 = shl i32 %4046, 8
  %4047 = load ptr, ptr %out.addr, align 8
  %arrayidx3726 = getelementptr inbounds i32, ptr %4047, i64 12
  %4048 = load i32, ptr %arrayidx3726, align 4
  %shr3727 = lshr i32 %4048, 24
  %or3728 = or i32 %shl3725, %shr3727
  %4049 = load ptr, ptr %out.addr, align 8
  %arrayidx3729 = getelementptr inbounds i32, ptr %4049, i64 12
  store i32 %or3728, ptr %arrayidx3729, align 4
  %4050 = load ptr, ptr %out.addr, align 8
  %arrayidx3730 = getelementptr inbounds i32, ptr %4050, i64 12
  %4051 = load i32, ptr %arrayidx3730, align 4
  %4052 = load ptr, ptr %out.addr, align 8
  %arrayidx3731 = getelementptr inbounds i32, ptr %4052, i64 11
  %4053 = load i32, ptr %arrayidx3731, align 4
  %add3732 = add i32 %4053, %4051
  store i32 %add3732, ptr %arrayidx3731, align 4
  %4054 = load ptr, ptr %out.addr, align 8
  %arrayidx3733 = getelementptr inbounds i32, ptr %4054, i64 11
  %4055 = load i32, ptr %arrayidx3733, align 4
  %4056 = load ptr, ptr %out.addr, align 8
  %arrayidx3734 = getelementptr inbounds i32, ptr %4056, i64 6
  %4057 = load i32, ptr %arrayidx3734, align 4
  %xor3735 = xor i32 %4057, %4055
  store i32 %xor3735, ptr %arrayidx3734, align 4
  %4058 = load ptr, ptr %out.addr, align 8
  %arrayidx3736 = getelementptr inbounds i32, ptr %4058, i64 6
  %4059 = load i32, ptr %arrayidx3736, align 4
  %shl3737 = shl i32 %4059, 7
  %4060 = load ptr, ptr %out.addr, align 8
  %arrayidx3738 = getelementptr inbounds i32, ptr %4060, i64 6
  %4061 = load i32, ptr %arrayidx3738, align 4
  %shr3739 = lshr i32 %4061, 25
  %or3740 = or i32 %shl3737, %shr3739
  %4062 = load ptr, ptr %out.addr, align 8
  %arrayidx3741 = getelementptr inbounds i32, ptr %4062, i64 6
  store i32 %or3740, ptr %arrayidx3741, align 4
  %4063 = load ptr, ptr %out.addr, align 8
  %arrayidx3742 = getelementptr inbounds i32, ptr %4063, i64 7
  %4064 = load i32, ptr %arrayidx3742, align 4
  %4065 = load ptr, ptr %out.addr, align 8
  %arrayidx3743 = getelementptr inbounds i32, ptr %4065, i64 2
  %4066 = load i32, ptr %arrayidx3743, align 4
  %add3744 = add i32 %4066, %4064
  store i32 %add3744, ptr %arrayidx3743, align 4
  %4067 = load ptr, ptr %out.addr, align 8
  %arrayidx3745 = getelementptr inbounds i32, ptr %4067, i64 2
  %4068 = load i32, ptr %arrayidx3745, align 4
  %4069 = load ptr, ptr %out.addr, align 8
  %arrayidx3746 = getelementptr inbounds i32, ptr %4069, i64 13
  %4070 = load i32, ptr %arrayidx3746, align 4
  %xor3747 = xor i32 %4070, %4068
  store i32 %xor3747, ptr %arrayidx3746, align 4
  %4071 = load ptr, ptr %out.addr, align 8
  %arrayidx3748 = getelementptr inbounds i32, ptr %4071, i64 13
  %4072 = load i32, ptr %arrayidx3748, align 4
  %shl3749 = shl i32 %4072, 16
  %4073 = load ptr, ptr %out.addr, align 8
  %arrayidx3750 = getelementptr inbounds i32, ptr %4073, i64 13
  %4074 = load i32, ptr %arrayidx3750, align 4
  %shr3751 = lshr i32 %4074, 16
  %or3752 = or i32 %shl3749, %shr3751
  %4075 = load ptr, ptr %out.addr, align 8
  %arrayidx3753 = getelementptr inbounds i32, ptr %4075, i64 13
  store i32 %or3752, ptr %arrayidx3753, align 4
  %4076 = load ptr, ptr %out.addr, align 8
  %arrayidx3754 = getelementptr inbounds i32, ptr %4076, i64 13
  %4077 = load i32, ptr %arrayidx3754, align 4
  %4078 = load ptr, ptr %out.addr, align 8
  %arrayidx3755 = getelementptr inbounds i32, ptr %4078, i64 8
  %4079 = load i32, ptr %arrayidx3755, align 4
  %add3756 = add i32 %4079, %4077
  store i32 %add3756, ptr %arrayidx3755, align 4
  %4080 = load ptr, ptr %out.addr, align 8
  %arrayidx3757 = getelementptr inbounds i32, ptr %4080, i64 8
  %4081 = load i32, ptr %arrayidx3757, align 4
  %4082 = load ptr, ptr %out.addr, align 8
  %arrayidx3758 = getelementptr inbounds i32, ptr %4082, i64 7
  %4083 = load i32, ptr %arrayidx3758, align 4
  %xor3759 = xor i32 %4083, %4081
  store i32 %xor3759, ptr %arrayidx3758, align 4
  %4084 = load ptr, ptr %out.addr, align 8
  %arrayidx3760 = getelementptr inbounds i32, ptr %4084, i64 7
  %4085 = load i32, ptr %arrayidx3760, align 4
  %shl3761 = shl i32 %4085, 12
  %4086 = load ptr, ptr %out.addr, align 8
  %arrayidx3762 = getelementptr inbounds i32, ptr %4086, i64 7
  %4087 = load i32, ptr %arrayidx3762, align 4
  %shr3763 = lshr i32 %4087, 20
  %or3764 = or i32 %shl3761, %shr3763
  %4088 = load ptr, ptr %out.addr, align 8
  %arrayidx3765 = getelementptr inbounds i32, ptr %4088, i64 7
  store i32 %or3764, ptr %arrayidx3765, align 4
  %4089 = load ptr, ptr %out.addr, align 8
  %arrayidx3766 = getelementptr inbounds i32, ptr %4089, i64 7
  %4090 = load i32, ptr %arrayidx3766, align 4
  %4091 = load ptr, ptr %out.addr, align 8
  %arrayidx3767 = getelementptr inbounds i32, ptr %4091, i64 2
  %4092 = load i32, ptr %arrayidx3767, align 4
  %add3768 = add i32 %4092, %4090
  store i32 %add3768, ptr %arrayidx3767, align 4
  %4093 = load ptr, ptr %out.addr, align 8
  %arrayidx3769 = getelementptr inbounds i32, ptr %4093, i64 2
  %4094 = load i32, ptr %arrayidx3769, align 4
  %4095 = load ptr, ptr %out.addr, align 8
  %arrayidx3770 = getelementptr inbounds i32, ptr %4095, i64 13
  %4096 = load i32, ptr %arrayidx3770, align 4
  %xor3771 = xor i32 %4096, %4094
  store i32 %xor3771, ptr %arrayidx3770, align 4
  %4097 = load ptr, ptr %out.addr, align 8
  %arrayidx3772 = getelementptr inbounds i32, ptr %4097, i64 13
  %4098 = load i32, ptr %arrayidx3772, align 4
  %shl3773 = shl i32 %4098, 8
  %4099 = load ptr, ptr %out.addr, align 8
  %arrayidx3774 = getelementptr inbounds i32, ptr %4099, i64 13
  %4100 = load i32, ptr %arrayidx3774, align 4
  %shr3775 = lshr i32 %4100, 24
  %or3776 = or i32 %shl3773, %shr3775
  %4101 = load ptr, ptr %out.addr, align 8
  %arrayidx3777 = getelementptr inbounds i32, ptr %4101, i64 13
  store i32 %or3776, ptr %arrayidx3777, align 4
  %4102 = load ptr, ptr %out.addr, align 8
  %arrayidx3778 = getelementptr inbounds i32, ptr %4102, i64 13
  %4103 = load i32, ptr %arrayidx3778, align 4
  %4104 = load ptr, ptr %out.addr, align 8
  %arrayidx3779 = getelementptr inbounds i32, ptr %4104, i64 8
  %4105 = load i32, ptr %arrayidx3779, align 4
  %add3780 = add i32 %4105, %4103
  store i32 %add3780, ptr %arrayidx3779, align 4
  %4106 = load ptr, ptr %out.addr, align 8
  %arrayidx3781 = getelementptr inbounds i32, ptr %4106, i64 8
  %4107 = load i32, ptr %arrayidx3781, align 4
  %4108 = load ptr, ptr %out.addr, align 8
  %arrayidx3782 = getelementptr inbounds i32, ptr %4108, i64 7
  %4109 = load i32, ptr %arrayidx3782, align 4
  %xor3783 = xor i32 %4109, %4107
  store i32 %xor3783, ptr %arrayidx3782, align 4
  %4110 = load ptr, ptr %out.addr, align 8
  %arrayidx3784 = getelementptr inbounds i32, ptr %4110, i64 7
  %4111 = load i32, ptr %arrayidx3784, align 4
  %shl3785 = shl i32 %4111, 7
  %4112 = load ptr, ptr %out.addr, align 8
  %arrayidx3786 = getelementptr inbounds i32, ptr %4112, i64 7
  %4113 = load i32, ptr %arrayidx3786, align 4
  %shr3787 = lshr i32 %4113, 25
  %or3788 = or i32 %shl3785, %shr3787
  %4114 = load ptr, ptr %out.addr, align 8
  %arrayidx3789 = getelementptr inbounds i32, ptr %4114, i64 7
  store i32 %or3788, ptr %arrayidx3789, align 4
  %4115 = load ptr, ptr %out.addr, align 8
  %arrayidx3790 = getelementptr inbounds i32, ptr %4115, i64 4
  %4116 = load i32, ptr %arrayidx3790, align 4
  %4117 = load ptr, ptr %out.addr, align 8
  %arrayidx3791 = getelementptr inbounds i32, ptr %4117, i64 3
  %4118 = load i32, ptr %arrayidx3791, align 4
  %add3792 = add i32 %4118, %4116
  store i32 %add3792, ptr %arrayidx3791, align 4
  %4119 = load ptr, ptr %out.addr, align 8
  %arrayidx3793 = getelementptr inbounds i32, ptr %4119, i64 3
  %4120 = load i32, ptr %arrayidx3793, align 4
  %4121 = load ptr, ptr %out.addr, align 8
  %arrayidx3794 = getelementptr inbounds i32, ptr %4121, i64 14
  %4122 = load i32, ptr %arrayidx3794, align 4
  %xor3795 = xor i32 %4122, %4120
  store i32 %xor3795, ptr %arrayidx3794, align 4
  %4123 = load ptr, ptr %out.addr, align 8
  %arrayidx3796 = getelementptr inbounds i32, ptr %4123, i64 14
  %4124 = load i32, ptr %arrayidx3796, align 4
  %shl3797 = shl i32 %4124, 16
  %4125 = load ptr, ptr %out.addr, align 8
  %arrayidx3798 = getelementptr inbounds i32, ptr %4125, i64 14
  %4126 = load i32, ptr %arrayidx3798, align 4
  %shr3799 = lshr i32 %4126, 16
  %or3800 = or i32 %shl3797, %shr3799
  %4127 = load ptr, ptr %out.addr, align 8
  %arrayidx3801 = getelementptr inbounds i32, ptr %4127, i64 14
  store i32 %or3800, ptr %arrayidx3801, align 4
  %4128 = load ptr, ptr %out.addr, align 8
  %arrayidx3802 = getelementptr inbounds i32, ptr %4128, i64 14
  %4129 = load i32, ptr %arrayidx3802, align 4
  %4130 = load ptr, ptr %out.addr, align 8
  %arrayidx3803 = getelementptr inbounds i32, ptr %4130, i64 9
  %4131 = load i32, ptr %arrayidx3803, align 4
  %add3804 = add i32 %4131, %4129
  store i32 %add3804, ptr %arrayidx3803, align 4
  %4132 = load ptr, ptr %out.addr, align 8
  %arrayidx3805 = getelementptr inbounds i32, ptr %4132, i64 9
  %4133 = load i32, ptr %arrayidx3805, align 4
  %4134 = load ptr, ptr %out.addr, align 8
  %arrayidx3806 = getelementptr inbounds i32, ptr %4134, i64 4
  %4135 = load i32, ptr %arrayidx3806, align 4
  %xor3807 = xor i32 %4135, %4133
  store i32 %xor3807, ptr %arrayidx3806, align 4
  %4136 = load ptr, ptr %out.addr, align 8
  %arrayidx3808 = getelementptr inbounds i32, ptr %4136, i64 4
  %4137 = load i32, ptr %arrayidx3808, align 4
  %shl3809 = shl i32 %4137, 12
  %4138 = load ptr, ptr %out.addr, align 8
  %arrayidx3810 = getelementptr inbounds i32, ptr %4138, i64 4
  %4139 = load i32, ptr %arrayidx3810, align 4
  %shr3811 = lshr i32 %4139, 20
  %or3812 = or i32 %shl3809, %shr3811
  %4140 = load ptr, ptr %out.addr, align 8
  %arrayidx3813 = getelementptr inbounds i32, ptr %4140, i64 4
  store i32 %or3812, ptr %arrayidx3813, align 4
  %4141 = load ptr, ptr %out.addr, align 8
  %arrayidx3814 = getelementptr inbounds i32, ptr %4141, i64 4
  %4142 = load i32, ptr %arrayidx3814, align 4
  %4143 = load ptr, ptr %out.addr, align 8
  %arrayidx3815 = getelementptr inbounds i32, ptr %4143, i64 3
  %4144 = load i32, ptr %arrayidx3815, align 4
  %add3816 = add i32 %4144, %4142
  store i32 %add3816, ptr %arrayidx3815, align 4
  %4145 = load ptr, ptr %out.addr, align 8
  %arrayidx3817 = getelementptr inbounds i32, ptr %4145, i64 3
  %4146 = load i32, ptr %arrayidx3817, align 4
  %4147 = load ptr, ptr %out.addr, align 8
  %arrayidx3818 = getelementptr inbounds i32, ptr %4147, i64 14
  %4148 = load i32, ptr %arrayidx3818, align 4
  %xor3819 = xor i32 %4148, %4146
  store i32 %xor3819, ptr %arrayidx3818, align 4
  %4149 = load ptr, ptr %out.addr, align 8
  %arrayidx3820 = getelementptr inbounds i32, ptr %4149, i64 14
  %4150 = load i32, ptr %arrayidx3820, align 4
  %shl3821 = shl i32 %4150, 8
  %4151 = load ptr, ptr %out.addr, align 8
  %arrayidx3822 = getelementptr inbounds i32, ptr %4151, i64 14
  %4152 = load i32, ptr %arrayidx3822, align 4
  %shr3823 = lshr i32 %4152, 24
  %or3824 = or i32 %shl3821, %shr3823
  %4153 = load ptr, ptr %out.addr, align 8
  %arrayidx3825 = getelementptr inbounds i32, ptr %4153, i64 14
  store i32 %or3824, ptr %arrayidx3825, align 4
  %4154 = load ptr, ptr %out.addr, align 8
  %arrayidx3826 = getelementptr inbounds i32, ptr %4154, i64 14
  %4155 = load i32, ptr %arrayidx3826, align 4
  %4156 = load ptr, ptr %out.addr, align 8
  %arrayidx3827 = getelementptr inbounds i32, ptr %4156, i64 9
  %4157 = load i32, ptr %arrayidx3827, align 4
  %add3828 = add i32 %4157, %4155
  store i32 %add3828, ptr %arrayidx3827, align 4
  %4158 = load ptr, ptr %out.addr, align 8
  %arrayidx3829 = getelementptr inbounds i32, ptr %4158, i64 9
  %4159 = load i32, ptr %arrayidx3829, align 4
  %4160 = load ptr, ptr %out.addr, align 8
  %arrayidx3830 = getelementptr inbounds i32, ptr %4160, i64 4
  %4161 = load i32, ptr %arrayidx3830, align 4
  %xor3831 = xor i32 %4161, %4159
  store i32 %xor3831, ptr %arrayidx3830, align 4
  %4162 = load ptr, ptr %out.addr, align 8
  %arrayidx3832 = getelementptr inbounds i32, ptr %4162, i64 4
  %4163 = load i32, ptr %arrayidx3832, align 4
  %shl3833 = shl i32 %4163, 7
  %4164 = load ptr, ptr %out.addr, align 8
  %arrayidx3834 = getelementptr inbounds i32, ptr %4164, i64 4
  %4165 = load i32, ptr %arrayidx3834, align 4
  %shr3835 = lshr i32 %4165, 25
  %or3836 = or i32 %shl3833, %shr3835
  %4166 = load ptr, ptr %out.addr, align 8
  %arrayidx3837 = getelementptr inbounds i32, ptr %4166, i64 4
  store i32 %or3836, ptr %arrayidx3837, align 4
  store i32 0, ptr %i3838, align 4
  br label %for.cond3839

for.cond3839:                                     ; preds = %for.inc3847, %for.end
  %4167 = load i32, ptr %i3838, align 4
  %cmp3840 = icmp slt i32 %4167, 16
  br i1 %cmp3840, label %for.body3841, label %for.end3849

for.body3841:                                     ; preds = %for.cond3839
  %4168 = load ptr, ptr %in.addr, align 8
  %4169 = load i32, ptr %i3838, align 4
  %idxprom3842 = sext i32 %4169 to i64
  %arrayidx3843 = getelementptr inbounds i32, ptr %4168, i64 %idxprom3842
  %4170 = load i32, ptr %arrayidx3843, align 4
  %4171 = load ptr, ptr %out.addr, align 8
  %4172 = load i32, ptr %i3838, align 4
  %idxprom3844 = sext i32 %4172 to i64
  %arrayidx3845 = getelementptr inbounds i32, ptr %4171, i64 %idxprom3844
  %4173 = load i32, ptr %arrayidx3845, align 4
  %add3846 = add i32 %4173, %4170
  store i32 %add3846, ptr %arrayidx3845, align 4
  br label %for.inc3847

for.inc3847:                                      ; preds = %for.body3841
  %4174 = load i32, ptr %i3838, align 4
  %inc3848 = add nsw i32 %4174, 1
  store i32 %inc3848, ptr %i3838, align 4
  br label %for.cond3839, !llvm.loop !12

for.end3849:                                      ; preds = %for.cond3839
  %4175 = load ptr, ptr %keystream.addr, align 8
  %cmp3850 = icmp ne ptr %4175, null
  br i1 %cmp3850, label %if.then, label %if.end

if.then:                                          ; preds = %for.end3849
  %4176 = load ptr, ptr %out.addr, align 8
  %4177 = load ptr, ptr %keystream.addr, align 8
  store ptr %4176, ptr %4177, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end3849
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ctx = alloca %struct.ChaCha20_Ctx, align 4
  store i32 0, ptr %retval, align 4
  call void @run_benchmark(ptr noundef @.str.3, ptr noundef @bench_chacha_init, ptr noundef %ctx, i32 noundef 50, i32 noundef 50000)
  call void @run_benchmark(ptr noundef @.str.4, ptr noundef @bench_chacha_encrypt_16, ptr noundef %ctx, i32 noundef 50, i32 noundef 4000000)
  call void @run_benchmark(ptr noundef @.str.5, ptr noundef @bench_chacha_encrypt_64, ptr noundef %ctx, i32 noundef 50, i32 noundef 4000000)
  call void @run_benchmark(ptr noundef @.str.6, ptr noundef @bench_chacha_encrypt_256, ptr noundef %ctx, i32 noundef 50, i32 noundef 4000000)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_benchmark(ptr noundef %name, ptr noundef %benchmark, ptr noundef %data, i32 noundef %count, i32 noundef %iter) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %benchmark.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %iter.addr = alloca i32, align 4
  %min = alloca double, align 8
  %max = alloca double, align 8
  %sum = alloca double, align 8
  %i = alloca i32, align 4
  %begin = alloca double, align 8
  %total = alloca double, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %benchmark, ptr %benchmark.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i32 %count, ptr %count.addr, align 4
  store i32 %iter, ptr %iter.addr, align 4
  store double 0x7FF0000000000000, ptr %min, align 8
  store double 0xFFF0000000000000, ptr %max, align 8
  store double 0.000000e+00, ptr %sum, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %count.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call double @gettimedouble()
  store double %call, ptr %begin, align 8
  %2 = load ptr, ptr %benchmark.addr, align 8
  %3 = load ptr, ptr %data.addr, align 8
  call void %2(ptr noundef %3)
  %call1 = call double @gettimedouble()
  %4 = load double, ptr %begin, align 8
  %sub = fsub double %call1, %4
  store double %sub, ptr %total, align 8
  %5 = load double, ptr %min, align 8
  %6 = load double, ptr %total, align 8
  %cmp2 = fcmp olt double %5, %6
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load double, ptr %min, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %8 = load double, ptr %total, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %7, %cond.true ], [ %8, %cond.false ]
  store double %cond, ptr %min, align 8
  %9 = load double, ptr %max, align 8
  %10 = load double, ptr %total, align 8
  %cmp3 = fcmp ogt double %9, %10
  br i1 %cmp3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.end
  %11 = load double, ptr %max, align 8
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  %12 = load double, ptr %total, align 8
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true4
  %cond7 = phi double [ %11, %cond.true4 ], [ %12, %cond.false5 ]
  store double %cond7, ptr %max, align 8
  %13 = load double, ptr %total, align 8
  %14 = load double, ptr %sum, align 8
  %add = fadd double %14, %13
  store double %add, ptr %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end6
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %iter.addr, align 4
  %conv = sitofp i32 %16 to double
  %div = fdiv double 1.000000e+09, %conv
  %17 = load double, ptr %min, align 8
  %mul = fmul double %17, %div
  store double %mul, ptr %min, align 8
  %18 = load i32, ptr %iter.addr, align 4
  %conv8 = sitofp i32 %18 to double
  %div9 = fdiv double 1.000000e+09, %conv8
  %19 = load double, ptr %max, align 8
  %mul10 = fmul double %19, %div9
  store double %mul10, ptr %max, align 8
  %20 = load i32, ptr %iter.addr, align 4
  %conv11 = sitofp i32 %20 to double
  %div12 = fdiv double 1.000000e+09, %conv11
  %21 = load double, ptr %sum, align 8
  %mul13 = fmul double %21, %div12
  store double %mul13, ptr %sum, align 8
  %22 = load ptr, ptr %name.addr, align 8
  %23 = load double, ptr %min, align 8
  %24 = load double, ptr %sum, align 8
  %25 = load i32, ptr %count.addr, align 4
  %conv14 = sitofp i32 %25 to double
  %div15 = fdiv double %24, %conv14
  %26 = load double, ptr %max, align 8
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %22, double noundef %23, double noundef %div15, double noundef %26)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bench_chacha_init(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  %0 = load ptr, ptr %data.addr, align 8
  store ptr %0, ptr %ctx, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 50000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %ctx, align 8
  call void @ChaCha20_init(ptr noundef %2, ptr noundef @key, ptr noundef @nonce, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bench_chacha_encrypt_16(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %scratch = alloca [16 x i8], align 16
  %i = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  %0 = load ptr, ptr %data.addr, align 8
  store ptr %0, ptr %ctx, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %scratch, i8 0, i64 16, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 250000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %ctx, align 8
  %arraydecay = getelementptr inbounds [16 x i8], ptr %scratch, i64 0, i64 0
  call void @ChaCha20_xor(ptr noundef %2, ptr noundef %arraydecay, i64 noundef 16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bench_chacha_encrypt_64(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %scratch = alloca [64 x i8], align 16
  %i = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  %0 = load ptr, ptr %data.addr, align 8
  store ptr %0, ptr %ctx, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %scratch, i8 0, i64 64, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 62500
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %ctx, align 8
  %arraydecay = getelementptr inbounds [64 x i8], ptr %scratch, i64 0, i64 0
  call void @ChaCha20_xor(ptr noundef %2, ptr noundef %arraydecay, i64 noundef 64)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bench_chacha_encrypt_256(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %scratch = alloca [256 x i8], align 16
  %i = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  %0 = load ptr, ptr %data.addr, align 8
  store ptr %0, ptr %ctx, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %scratch, i8 0, i64 256, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 15625
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %ctx, align 8
  %arraydecay = getelementptr inbounds [256 x i8], ptr %scratch, i64 0, i64 0
  call void @ChaCha20_xor(ptr noundef %2, ptr noundef %arraydecay, i64 noundef 256)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @gettimedouble() #0 {
entry:
  %tv = alloca %struct.timeval, align 8
  %call = call i32 @gettimeofday(ptr noundef %tv, ptr noundef null) #7
  %tv_usec = getelementptr inbounds %struct.timeval, ptr %tv, i32 0, i32 1
  %0 = load i64, ptr %tv_usec, align 8
  %conv = sitofp i64 %0 to double
  %tv_sec = getelementptr inbounds %struct.timeval, ptr %tv, i32 0, i32 0
  %1 = load i64, ptr %tv_sec, align 8
  %conv1 = sitofp i64 %1 to double
  %2 = call double @llvm.fmuladd.f64(double %conv, double 0x3EB0C6F7A0B5ED8D, double %conv1)
  ret double %2
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!"clang version 16.0.1 (git@github.com:maxgallup/llvm-blade.git 46a02438f168e189c789acdc03504ca8ee557a91)"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}

^0 = module: (path: "", hash: (0, 0, 0, 0, 0))
^1 = gv: (name: "bench_chacha_encrypt_256", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 22, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^4, relbf: 7936))))) ; guid = 131332885829963190
^2 = gv: (name: ".str.3", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 209413732189031939
^3 = gv: (name: "gettimedouble", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^25, relbf: 256))))) ; guid = 445572909205005568
^4 = gv: (name: "ChaCha20_xor", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 92, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^23, relbf: 7935), (callee: ^17)), refs: (^11, ^15, ^16)))) ; guid = 503574075529372268
^5 = gv: (name: "ChaCha20_init", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 111, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^21, relbf: 3840)), refs: (^14)))) ; guid = 1571109226537694178
^6 = gv: (name: ".str.6", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3359855474322001001
^7 = gv: (name: ".str.5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3909273293237327225
^8 = gv: (name: "run_benchmark", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 90, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0), calls: ((callee: ^3, relbf: 15872), (callee: ^10, relbf: 256)), refs: (^18)))) ; guid = 4505155209815258613
^9 = gv: (name: "bench_chacha_encrypt_64", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 22, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^4, relbf: 7936))))) ; guid = 6226179199318552462
^10 = gv: (name: "printf") ; guid = 7383291119112528047
^11 = gv: (name: ".str.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7899815009429704566
^12 = gv: (name: "bench_chacha_encrypt_16", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 22, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^4, relbf: 7936))))) ; guid = 8341502207406529993
^13 = gv: (name: "key", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 8821314067395950247
^14 = gv: (name: ".str", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8987941302644867518
^15 = gv: (name: ".str.2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9234449889088475883
^16 = gv: (name: "__PRETTY_FUNCTION__.ChaCha20_xor", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10733666222723350047
^17 = gv: (name: "__assert_fail") ; guid = 11175333565319670457
^18 = gv: (name: ".str.7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12255139735923450584
^19 = gv: (name: ".str.4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12937095403575574613
^20 = gv: (name: "nonce", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 13204510983700745687
^21 = gv: (name: "pack4", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 29, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0)))) ; guid = 14022825885425665307
^22 = gv: (name: "bench_chacha_init", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 19, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^5, relbf: 7936)), refs: (^13, ^20)))) ; guid = 14682115648652793497
^23 = gv: (name: "ChaCha20_block_next", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9018, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0)))) ; guid = 15264038699386780814
^24 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 8, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^8, relbf: 1024)), refs: (^2, ^22, ^19, ^12, ^7, ^9, ^6, ^1)))) ; guid = 15822663052811949562
^25 = gv: (name: "gettimeofday") ; guid = 16476053313116204116
^26 = flags: 8
^27 = blockcount: 62
