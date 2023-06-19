; ModuleID = 'md5_0.ll'
source_filename = "md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@k = dso_local constant [64 x i32] [i32 -680876936, i32 -389564586, i32 606105819, i32 -1044525330, i32 -176418897, i32 1200080426, i32 -1473231341, i32 -45705983, i32 1770035416, i32 -1958414417, i32 -42063, i32 -1990404162, i32 1804603682, i32 -40341101, i32 -1502002290, i32 1236535329, i32 -165796510, i32 -1069501632, i32 643717713, i32 -373897302, i32 -701558691, i32 38016083, i32 -660478335, i32 -405537848, i32 568446438, i32 -1019803690, i32 -187363961, i32 1163531501, i32 -1444681467, i32 -51403784, i32 1735328473, i32 -1926607734, i32 -378558, i32 -2022574463, i32 1839030562, i32 -35309556, i32 -1530992060, i32 1272893353, i32 -155497632, i32 -1094730640, i32 681279174, i32 -358537222, i32 -722521979, i32 76029189, i32 -640364487, i32 -421815835, i32 530742520, i32 -995338651, i32 -198630844, i32 1126891415, i32 -1416354905, i32 -57434055, i32 1700485571, i32 -1894986606, i32 -1051523, i32 -2054922799, i32 1873313359, i32 -30611744, i32 -1560198380, i32 1309151649, i32 -145523070, i32 -1120210379, i32 718787259, i32 -343485551], align 16
@r = dso_local constant [64 x i32] [i32 7, i32 12, i32 17, i32 22, i32 7, i32 12, i32 17, i32 22, i32 7, i32 12, i32 17, i32 22, i32 7, i32 12, i32 17, i32 22, i32 5, i32 9, i32 14, i32 20, i32 5, i32 9, i32 14, i32 20, i32 5, i32 9, i32 14, i32 20, i32 5, i32 9, i32 14, i32 20, i32 4, i32 11, i32 16, i32 23, i32 4, i32 11, i32 16, i32 23, i32 4, i32 11, i32 16, i32 23, i32 4, i32 11, i32 16, i32 23, i32 6, i32 10, i32 15, i32 21, i32 6, i32 10, i32 15, i32 21, i32 6, i32 10, i32 15, i32 21, i32 6, i32 10, i32 15, i32 21], align 16
@.str = private unnamed_addr constant [337 x i8] c"RandomBenchmarkExampleTestLOLOLSuperLongStringLOLOLThisWillRepeatForAGoodLittleWhileRandomBenchmarkExampleTestLOLOLSuperLongStringLOLOLThisWillRepeatForAGoodLittleWhileRandomBenchmarkExampleTestLOLOLSuperLongStringLOLOLThisWillRepeatForAGoodLittleWhileRandomBenchmarkExampleTestLOLOLSuperLongStringLOLOLThisWillRepeatForAGoodLittleWhile\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%2.2x\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @to_bytes(i32 noundef %val, ptr noundef %bytes) #0 {
entry:
  %val.addr = alloca i32, align 4, !BLADE-S !8
  %bytes.addr = alloca ptr, align 8, !BLADE-S !8
  store i32 %val, ptr %val.addr, align 4
  store ptr %bytes, ptr %bytes.addr, align 8
  %0 = load i32, ptr %val.addr, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %conv = trunc i32 %0 to i8
  %1 = load ptr, ptr %bytes.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  store i8 %conv, ptr %arrayidx, align 1
  %2 = load i32, ptr %val.addr, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %shr = lshr i32 %2, 8
  %conv1 = trunc i32 %shr to i8
  %3 = load ptr, ptr %bytes.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %conv1, ptr %arrayidx2, align 1
  %4 = load i32, ptr %val.addr, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %shr3 = lshr i32 %4, 16
  %conv4 = trunc i32 %shr3 to i8
  %5 = load ptr, ptr %bytes.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %arrayidx5 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 %conv4, ptr %arrayidx5, align 1
  %6 = load i32, ptr %val.addr, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %shr6 = lshr i32 %6, 24
  %conv7 = trunc i32 %shr6 to i8
  %7 = load ptr, ptr %bytes.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %arrayidx8 = getelementptr inbounds i8, ptr %7, i64 3
  store i8 %conv7, ptr %arrayidx8, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @to_int32(ptr noundef %bytes) #0 {
entry:
  %bytes.addr = alloca ptr, align 8, !BLADE-S !8
  store ptr %bytes, ptr %bytes.addr, align 8
  %0 = load ptr, ptr %bytes.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0, !BLADE-S !8
  %1 = load i8, ptr %arrayidx, align 1, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %conv = zext i8 %1 to i32
  %2 = load ptr, ptr %bytes.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1, !BLADE-S !8
  %3 = load i8, ptr %arrayidx1, align 1, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %conv2 = zext i8 %3 to i32
  %shl = shl i32 %conv2, 8
  %or = or i32 %conv, %shl
  %4 = load ptr, ptr %bytes.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 2, !BLADE-S !8
  %5 = load i8, ptr %arrayidx3, align 1, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %conv4 = zext i8 %5 to i32
  %shl5 = shl i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %6 = load ptr, ptr %bytes.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 3, !BLADE-S !8
  %7 = load i8, ptr %arrayidx7, align 1, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %conv8 = zext i8 %7 to i32
  %shl9 = shl i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  ret i32 %or10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md5(ptr noundef %initial_msg, i64 noundef %initial_len, ptr noundef %digest) #0 {
entry:
  %initial_msg.addr = alloca ptr, align 8, !BLADE-S !8
  %initial_len.addr = alloca i64, align 8, !BLADE-S !8
  %digest.addr = alloca ptr, align 8, !BLADE-S !8
  %h0 = alloca i32, align 4, !BLADE-S !8
  %h1 = alloca i32, align 4, !BLADE-S !8
  %h2 = alloca i32, align 4, !BLADE-S !8
  %h3 = alloca i32, align 4, !BLADE-S !8
  %msg = alloca ptr, align 8, !BLADE-S !8
  %new_len = alloca i64, align 8, !BLADE-S !8
  %offset = alloca i64, align 8, !BLADE-S !8
  %w = alloca [16 x i32], align 16
  %a = alloca i32, align 4, !BLADE-S !8
  %b = alloca i32, align 4, !BLADE-S !8
  %c = alloca i32, align 4, !BLADE-S !8
  %d = alloca i32, align 4, !BLADE-S !8
  %i = alloca i32, align 4, !BLADE-S !8
  %f = alloca i32, align 4, !BLADE-S !8
  %g = alloca i32, align 4, !BLADE-S !8
  %temp = alloca i32, align 4, !BLADE-S !8
  store ptr %initial_msg, ptr %initial_msg.addr, align 8
  store i64 %initial_len, ptr %initial_len.addr, align 8
  store ptr %digest, ptr %digest.addr, align 8
  store ptr null, ptr %msg, align 8
  store i32 1732584193, ptr %h0, align 4
  store i32 -271733879, ptr %h1, align 4
  store i32 -1732584194, ptr %h2, align 4
  store i32 271733878, ptr %h3, align 4
  %0 = load i64, ptr %initial_len.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add = add i64 %0, 1
  store i64 %add, ptr %new_len, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %new_len, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %rem = urem i64 %1, 64
  %cmp = icmp ne i64 %rem, 56
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i64, ptr %new_len, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %inc = add i64 %2, 1
  store i64 %inc, ptr %new_len, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %3 = load i64, ptr %new_len, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add1 = add i64 %3, 8
  %call = call noalias ptr @malloc(i64 noundef %add1) #7, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  store ptr %call, ptr %msg, align 8
  %4 = load ptr, ptr %msg, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %5 = load ptr, ptr %initial_msg.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %6 = load i64, ptr %initial_len.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %5, i64 %6, i1 false), !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %7 = load ptr, ptr %msg, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %8 = load i64, ptr %initial_len.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %8
  store i8 -128, ptr %arrayidx, align 1
  %9 = load i64, ptr %initial_len.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add2 = add i64 %9, 1
  store i64 %add2, ptr %offset, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc7, %for.end
  %10 = load i64, ptr %offset, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %11 = load i64, ptr %new_len, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %cmp4 = icmp ult i64 %10, %11
  br i1 %cmp4, label %for.body5, label %for.end9

for.body5:                                        ; preds = %for.cond3
  %12 = load ptr, ptr %msg, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %13 = load i64, ptr %offset, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %arrayidx6 = getelementptr inbounds i8, ptr %12, i64 %13
  store i8 0, ptr %arrayidx6, align 1
  br label %for.inc7

for.inc7:                                         ; preds = %for.body5
  %14 = load i64, ptr %offset, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %inc8 = add i64 %14, 1
  store i64 %inc8, ptr %offset, align 8
  br label %for.cond3, !llvm.loop !12

for.end9:                                         ; preds = %for.cond3
  %15 = load i64, ptr %initial_len.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %mul = mul i64 %15, 8
  %conv = trunc i64 %mul to i32
  %16 = load ptr, ptr %msg, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %17 = load i64, ptr %new_len, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 %17
  call void @to_bytes(i32 noundef %conv, ptr noundef %add.ptr), !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %18 = load i64, ptr %initial_len.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %shr = lshr i64 %18, 29
  %conv10 = trunc i64 %shr to i32
  %19 = load ptr, ptr %msg, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %20 = load i64, ptr %new_len, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add.ptr11 = getelementptr inbounds i8, ptr %19, i64 %20
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 4
  call void @to_bytes(i32 noundef %conv10, ptr noundef %add.ptr12), !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  store i64 0, ptr %offset, align 8
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc90, %for.end9
  %21 = load i64, ptr %offset, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %22 = load i64, ptr %new_len, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %cmp14 = icmp ult i64 %21, %22
  br i1 %cmp14, label %for.body16, label %for.end92

for.body16:                                       ; preds = %for.cond13
  store i32 0, ptr %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc26, %for.body16
  %23 = load i32, ptr %i, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %cmp18 = icmp ult i32 %23, 16
  br i1 %cmp18, label %for.body20, label %for.end28

for.body20:                                       ; preds = %for.cond17
  %24 = load ptr, ptr %msg, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %25 = load i64, ptr %offset, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add.ptr21 = getelementptr inbounds i8, ptr %24, i64 %25
  %26 = load i32, ptr %i, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %mul22 = mul i32 %26, 4
  %idx.ext = zext i32 %mul22 to i64
  %add.ptr23 = getelementptr inbounds i8, ptr %add.ptr21, i64 %idx.ext
  %call24 = call i32 @to_int32(ptr noundef %add.ptr23), !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %27 = load i32, ptr %i, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %idxprom = zext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds [16 x i32], ptr %w, i64 0, i64 %idxprom
  store i32 %call24, ptr %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body20
  %28 = load i32, ptr %i, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %inc27 = add i32 %28, 1
  store i32 %inc27, ptr %i, align 4
  br label %for.cond17, !llvm.loop !13

for.end28:                                        ; preds = %for.cond17
  %29 = load i32, ptr %h0, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  store i32 %29, ptr %a, align 4
  %30 = load i32, ptr %h1, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  store i32 %30, ptr %b, align 4
  %31 = load i32, ptr %h2, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  store i32 %31, ptr %c, align 4
  %32 = load i32, ptr %h3, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  store i32 %32, ptr %d, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc83, %for.end28
  %33 = load i32, ptr %i, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %cmp30 = icmp ult i32 %33, 64
  br i1 %cmp30, label %for.body32, label %for.end85

for.body32:                                       ; preds = %for.cond29
  %34 = load i32, ptr %i, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %cmp33 = icmp ult i32 %34, 16
  br i1 %cmp33, label %if.then, label %if.else

if.then:                                          ; preds = %for.body32
  %35 = load i32, ptr %b, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %36 = load i32, ptr %c, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %and = and i32 %35, %36
  %37 = load i32, ptr %b, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %not = xor i32 %37, -1
  %38 = load i32, ptr %d, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %and35 = and i32 %not, %38
  %or = or i32 %and, %and35
  store i32 %or, ptr %f, align 4
  %39 = load i32, ptr %i, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  store i32 %39, ptr %g, align 4
  br label %if.end61

if.else:                                          ; preds = %for.body32
  %40 = load i32, ptr %i, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %cmp36 = icmp ult i32 %40, 32
  br i1 %cmp36, label %if.then38, label %if.else46

if.then38:                                        ; preds = %if.else
  %41 = load i32, ptr %d, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %42 = load i32, ptr %b, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %and39 = and i32 %41, %42
  %43 = load i32, ptr %d, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %not40 = xor i32 %43, -1
  %44 = load i32, ptr %c, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %and41 = and i32 %not40, %44
  %or42 = or i32 %and39, %and41
  store i32 %or42, ptr %f, align 4
  %45 = load i32, ptr %i, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %mul43 = mul i32 5, %45
  %add44 = add i32 %mul43, 1
  %rem45 = urem i32 %add44, 16
  store i32 %rem45, ptr %g, align 4
  br label %if.end60

if.else46:                                        ; preds = %if.else
  %46 = load i32, ptr %i, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %cmp47 = icmp ult i32 %46, 48
  br i1 %cmp47, label %if.then49, label %if.else54

if.then49:                                        ; preds = %if.else46
  %47 = load i32, ptr %b, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %48 = load i32, ptr %c, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %xor = xor i32 %47, %48
  %49 = load i32, ptr %d, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %xor50 = xor i32 %xor, %49
  store i32 %xor50, ptr %f, align 4
  %50 = load i32, ptr %i, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %mul51 = mul i32 3, %50
  %add52 = add i32 %mul51, 5
  %rem53 = urem i32 %add52, 16
  store i32 %rem53, ptr %g, align 4
  br label %if.end

if.else54:                                        ; preds = %if.else46
  %51 = load i32, ptr %c, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %52 = load i32, ptr %b, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %53 = load i32, ptr %d, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %not55 = xor i32 %53, -1
  %or56 = or i32 %52, %not55
  %xor57 = xor i32 %51, %or56
  store i32 %xor57, ptr %f, align 4
  %54 = load i32, ptr %i, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %mul58 = mul i32 7, %54
  %rem59 = urem i32 %mul58, 16
  store i32 %rem59, ptr %g, align 4
  br label %if.end

if.end:                                           ; preds = %if.else54, %if.then49
  br label %if.end60

if.end60:                                         ; preds = %if.end, %if.then38
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then
  %55 = load i32, ptr %d, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  store i32 %55, ptr %temp, align 4
  %56 = load i32, ptr %c, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  store i32 %56, ptr %d, align 4
  %57 = load i32, ptr %b, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  store i32 %57, ptr %c, align 4
  %58 = load i32, ptr %b, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %59 = load i32, ptr %a, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %60 = load i32, ptr %f, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add62 = add i32 %59, %60
  %61 = load i32, ptr %i, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %idxprom63 = zext i32 %61 to i64
  %arrayidx64 = getelementptr inbounds [64 x i32], ptr @k, i64 0, i64 %idxprom63, !BLADE-S !8
  %62 = load i32, ptr %arrayidx64, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add65 = add i32 %add62, %62
  %63 = load i32, ptr %g, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %idxprom66 = zext i32 %63 to i64
  %arrayidx67 = getelementptr inbounds [16 x i32], ptr %w, i64 0, i64 %idxprom66, !BLADE-S !8
  %64 = load i32, ptr %arrayidx67, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add68 = add i32 %add65, %64
  %65 = load i32, ptr %i, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %idxprom69 = zext i32 %65 to i64
  %arrayidx70 = getelementptr inbounds [64 x i32], ptr @r, i64 0, i64 %idxprom69, !BLADE-S !8
  %66 = load i32, ptr %arrayidx70, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %shl = shl i32 %add68, %66
  %67 = load i32, ptr %a, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %68 = load i32, ptr %f, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add71 = add i32 %67, %68
  %69 = load i32, ptr %i, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %idxprom72 = zext i32 %69 to i64
  %arrayidx73 = getelementptr inbounds [64 x i32], ptr @k, i64 0, i64 %idxprom72, !BLADE-S !8
  %70 = load i32, ptr %arrayidx73, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add74 = add i32 %add71, %70
  %71 = load i32, ptr %g, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %idxprom75 = zext i32 %71 to i64
  %arrayidx76 = getelementptr inbounds [16 x i32], ptr %w, i64 0, i64 %idxprom75, !BLADE-S !8
  %72 = load i32, ptr %arrayidx76, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add77 = add i32 %add74, %72
  %73 = load i32, ptr %i, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %idxprom78 = zext i32 %73 to i64
  %arrayidx79 = getelementptr inbounds [64 x i32], ptr @r, i64 0, i64 %idxprom78, !BLADE-S !8
  %74 = load i32, ptr %arrayidx79, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %sub = sub i32 32, %74
  %shr80 = lshr i32 %add77, %sub
  %or81 = or i32 %shl, %shr80
  %add82 = add i32 %58, %or81
  store i32 %add82, ptr %b, align 4
  %75 = load i32, ptr %temp, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  store i32 %75, ptr %a, align 4
  br label %for.inc83

for.inc83:                                        ; preds = %if.end61
  %76 = load i32, ptr %i, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %inc84 = add i32 %76, 1
  store i32 %inc84, ptr %i, align 4
  br label %for.cond29, !llvm.loop !14

for.end85:                                        ; preds = %for.cond29
  %77 = load i32, ptr %a, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %78 = load i32, ptr %h0, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add86 = add i32 %78, %77
  store i32 %add86, ptr %h0, align 4
  %79 = load i32, ptr %b, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %80 = load i32, ptr %h1, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add87 = add i32 %80, %79
  store i32 %add87, ptr %h1, align 4
  %81 = load i32, ptr %c, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %82 = load i32, ptr %h2, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add88 = add i32 %82, %81
  store i32 %add88, ptr %h2, align 4
  %83 = load i32, ptr %d, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %84 = load i32, ptr %h3, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add89 = add i32 %84, %83
  store i32 %add89, ptr %h3, align 4
  br label %for.inc90

for.inc90:                                        ; preds = %for.end85
  %85 = load i64, ptr %offset, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add91 = add i64 %85, 64
  store i64 %add91, ptr %offset, align 8
  br label %for.cond13, !llvm.loop !15

for.end92:                                        ; preds = %for.cond13
  %86 = load ptr, ptr %msg, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  call void @free(ptr noundef %86) #6, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %87 = load i32, ptr %h0, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %88 = load ptr, ptr %digest.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  call void @to_bytes(i32 noundef %87, ptr noundef %88), !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %89 = load i32, ptr %h1, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %90 = load ptr, ptr %digest.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add.ptr93 = getelementptr inbounds i8, ptr %90, i64 4
  call void @to_bytes(i32 noundef %89, ptr noundef %add.ptr93), !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %91 = load i32, ptr %h2, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %92 = load ptr, ptr %digest.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add.ptr94 = getelementptr inbounds i8, ptr %92, i64 8
  call void @to_bytes(i32 noundef %91, ptr noundef %add.ptr94), !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %93 = load i32, ptr %h3, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %94 = load ptr, ptr %digest.addr, align 8, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %add.ptr95 = getelementptr inbounds i8, ptr %94, i64 12
  call void @to_bytes(i32 noundef %93, ptr noundef %add.ptr95), !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %msg = alloca ptr, align 8
  %len = alloca i64, align 8
  %i = alloca i32, align 4
  %result = alloca [16 x i8], align 16
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr @.str, ptr %msg, align 8
  %0 = load ptr, ptr %msg, align 8
  %call = call i64 @strlen(ptr noundef %0) #8
  store i64 %call, ptr %len, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 1000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %msg, align 8
  %3 = load i64, ptr %len, align 8
  %arraydecay = getelementptr inbounds [16 x i8], ptr %result, i64 0, i64 0
  call void @md5(ptr noundef %2, i64 noundef %3, ptr noundef %arraydecay)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc5, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %5, 16
  br i1 %cmp2, label %for.body3, label %for.end7

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %result, i64 0, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv)
  br label %for.inc5

for.inc5:                                         ; preds = %for.body3
  %8 = load i32, ptr %i, align 4
  %inc6 = add nsw i32 %8, 1
  store i32 %inc6, ptr %i, align 4
  br label %for.cond1, !llvm.loop !17

for.end7:                                         ; preds = %for.cond1
  %call8 = call i32 @puts(ptr noundef @.str.2)
  ret i32 0
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

declare i32 @printf(ptr noundef, ...) #5

declare i32 @puts(ptr noundef) #5

; Function Attrs: nounwind
declare void @llvm.x86.sse2.lfence() #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind willreturn memory(read) }

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
!8 = !{!"Blade Stable"}
!9 = !{!"Blade Transient"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
