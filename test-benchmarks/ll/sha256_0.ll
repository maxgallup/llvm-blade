; ModuleID = 'sha256.c'
source_filename = "sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA256_CTX = type { [64 x i8], i32, i64, [8 x i32] }

@k = internal constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16
@__const.sha256_test.text1 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@__const.sha256_test.text2 = private unnamed_addr constant [57 x i8] c"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq\00", align 16
@__const.sha256_test.text3 = private unnamed_addr constant [11 x i8] c"aaaaaaaaaa\00", align 1
@__const.sha256_test.hash1 = private unnamed_addr constant [32 x i8] c"\BAx\16\BF\8F\01\CF\EAAA@\DE]\AE\22#\B0\03a\A3\96\17z\9C\B4\10\FFa\F2\00\15\AD", align 16
@__const.sha256_test.hash2 = private unnamed_addr constant [32 x i8] c"$\8Dja\D2\068\B8\E5\C0&\93\0C>`9\A3<\E4Yd\FF!g\F6\EC\ED\D4\19\DB\06\C1", align 16
@__const.sha256_test.hash3 = private unnamed_addr constant [32 x i8] c"\CD\C7n\\\99\14\FB\92\81\A1\C7\E2\84\D7>g\F1\80\9AH\A4\97 \0E\04m9\CC\C7\11,\D0", align 16
@.str = private unnamed_addr constant [19 x i8] c"SHA-256 tests: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SUCCEEDED\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha256_transform(ptr noundef %ctx, ptr noundef %data) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  %m = alloca [64 x i32], align 16
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i32 0, ptr %i, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %data.addr, align 8
  %2 = load i32, ptr %j, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl i32 %conv, 24
  %4 = load ptr, ptr %data.addr, align 8
  %5 = load i32, ptr %j, align 4
  %add = add i32 %5, 1
  %idxprom1 = zext i32 %add to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 %idxprom1
  %6 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  %shl4 = shl i32 %conv3, 16
  %or = or i32 %shl, %shl4
  %7 = load ptr, ptr %data.addr, align 8
  %8 = load i32, ptr %j, align 4
  %add5 = add i32 %8, 2
  %idxprom6 = zext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %7, i64 %idxprom6
  %9 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %shl9 = shl i32 %conv8, 8
  %or10 = or i32 %or, %shl9
  %10 = load ptr, ptr %data.addr, align 8
  %11 = load i32, ptr %j, align 4
  %add11 = add i32 %11, 3
  %idxprom12 = zext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %10, i64 %idxprom12
  %12 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %12 to i32
  %or15 = or i32 %or10, %conv14
  %13 = load i32, ptr %i, align 4
  %idxprom16 = zext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %idxprom16
  store i32 %or15, ptr %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %i, align 4
  %15 = load i32, ptr %j, align 4
  %add18 = add i32 %15, 4
  store i32 %add18, ptr %j, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc79, %for.end
  %16 = load i32, ptr %i, align 4
  %cmp20 = icmp ult i32 %16, 64
  br i1 %cmp20, label %for.body22, label %for.end81

for.body22:                                       ; preds = %for.cond19
  %17 = load i32, ptr %i, align 4
  %sub = sub i32 %17, 2
  %idxprom23 = zext i32 %sub to i64
  %arrayidx24 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %idxprom23
  %18 = load i32, ptr %arrayidx24, align 4
  %shr = lshr i32 %18, 17
  %19 = load i32, ptr %i, align 4
  %sub25 = sub i32 %19, 2
  %idxprom26 = zext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %idxprom26
  %20 = load i32, ptr %arrayidx27, align 4
  %shl28 = shl i32 %20, 15
  %or29 = or i32 %shr, %shl28
  %21 = load i32, ptr %i, align 4
  %sub30 = sub i32 %21, 2
  %idxprom31 = zext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %idxprom31
  %22 = load i32, ptr %arrayidx32, align 4
  %shr33 = lshr i32 %22, 19
  %23 = load i32, ptr %i, align 4
  %sub34 = sub i32 %23, 2
  %idxprom35 = zext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %idxprom35
  %24 = load i32, ptr %arrayidx36, align 4
  %shl37 = shl i32 %24, 13
  %or38 = or i32 %shr33, %shl37
  %xor = xor i32 %or29, %or38
  %25 = load i32, ptr %i, align 4
  %sub39 = sub i32 %25, 2
  %idxprom40 = zext i32 %sub39 to i64
  %arrayidx41 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %idxprom40
  %26 = load i32, ptr %arrayidx41, align 4
  %shr42 = lshr i32 %26, 10
  %xor43 = xor i32 %xor, %shr42
  %27 = load i32, ptr %i, align 4
  %sub44 = sub i32 %27, 7
  %idxprom45 = zext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %idxprom45
  %28 = load i32, ptr %arrayidx46, align 4
  %add47 = add i32 %xor43, %28
  %29 = load i32, ptr %i, align 4
  %sub48 = sub i32 %29, 15
  %idxprom49 = zext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %idxprom49
  %30 = load i32, ptr %arrayidx50, align 4
  %shr51 = lshr i32 %30, 7
  %31 = load i32, ptr %i, align 4
  %sub52 = sub i32 %31, 15
  %idxprom53 = zext i32 %sub52 to i64
  %arrayidx54 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %idxprom53
  %32 = load i32, ptr %arrayidx54, align 4
  %shl55 = shl i32 %32, 25
  %or56 = or i32 %shr51, %shl55
  %33 = load i32, ptr %i, align 4
  %sub57 = sub i32 %33, 15
  %idxprom58 = zext i32 %sub57 to i64
  %arrayidx59 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %idxprom58
  %34 = load i32, ptr %arrayidx59, align 4
  %shr60 = lshr i32 %34, 18
  %35 = load i32, ptr %i, align 4
  %sub61 = sub i32 %35, 15
  %idxprom62 = zext i32 %sub61 to i64
  %arrayidx63 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %idxprom62
  %36 = load i32, ptr %arrayidx63, align 4
  %shl64 = shl i32 %36, 14
  %or65 = or i32 %shr60, %shl64
  %xor66 = xor i32 %or56, %or65
  %37 = load i32, ptr %i, align 4
  %sub67 = sub i32 %37, 15
  %idxprom68 = zext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %idxprom68
  %38 = load i32, ptr %arrayidx69, align 4
  %shr70 = lshr i32 %38, 3
  %xor71 = xor i32 %xor66, %shr70
  %add72 = add i32 %add47, %xor71
  %39 = load i32, ptr %i, align 4
  %sub73 = sub i32 %39, 16
  %idxprom74 = zext i32 %sub73 to i64
  %arrayidx75 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %idxprom74
  %40 = load i32, ptr %arrayidx75, align 4
  %add76 = add i32 %add72, %40
  %41 = load i32, ptr %i, align 4
  %idxprom77 = zext i32 %41 to i64
  %arrayidx78 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %idxprom77
  store i32 %add76, ptr %arrayidx78, align 4
  br label %for.inc79

for.inc79:                                        ; preds = %for.body22
  %42 = load i32, ptr %i, align 4
  %inc80 = add i32 %42, 1
  store i32 %inc80, ptr %i, align 4
  br label %for.cond19, !llvm.loop !10

for.end81:                                        ; preds = %for.cond19
  %43 = load ptr, ptr %ctx.addr, align 8
  %state = getelementptr inbounds %struct.SHA256_CTX, ptr %43, i32 0, i32 3
  %arrayidx82 = getelementptr inbounds [8 x i32], ptr %state, i64 0, i64 0
  %44 = load i32, ptr %arrayidx82, align 8
  store i32 %44, ptr %a, align 4
  %45 = load ptr, ptr %ctx.addr, align 8
  %state83 = getelementptr inbounds %struct.SHA256_CTX, ptr %45, i32 0, i32 3
  %arrayidx84 = getelementptr inbounds [8 x i32], ptr %state83, i64 0, i64 1
  %46 = load i32, ptr %arrayidx84, align 4
  store i32 %46, ptr %b, align 4
  %47 = load ptr, ptr %ctx.addr, align 8
  %state85 = getelementptr inbounds %struct.SHA256_CTX, ptr %47, i32 0, i32 3
  %arrayidx86 = getelementptr inbounds [8 x i32], ptr %state85, i64 0, i64 2
  %48 = load i32, ptr %arrayidx86, align 8
  store i32 %48, ptr %c, align 4
  %49 = load ptr, ptr %ctx.addr, align 8
  %state87 = getelementptr inbounds %struct.SHA256_CTX, ptr %49, i32 0, i32 3
  %arrayidx88 = getelementptr inbounds [8 x i32], ptr %state87, i64 0, i64 3
  %50 = load i32, ptr %arrayidx88, align 4
  store i32 %50, ptr %d, align 4
  %51 = load ptr, ptr %ctx.addr, align 8
  %state89 = getelementptr inbounds %struct.SHA256_CTX, ptr %51, i32 0, i32 3
  %arrayidx90 = getelementptr inbounds [8 x i32], ptr %state89, i64 0, i64 4
  %52 = load i32, ptr %arrayidx90, align 8
  store i32 %52, ptr %e, align 4
  %53 = load ptr, ptr %ctx.addr, align 8
  %state91 = getelementptr inbounds %struct.SHA256_CTX, ptr %53, i32 0, i32 3
  %arrayidx92 = getelementptr inbounds [8 x i32], ptr %state91, i64 0, i64 5
  %54 = load i32, ptr %arrayidx92, align 4
  store i32 %54, ptr %f, align 4
  %55 = load ptr, ptr %ctx.addr, align 8
  %state93 = getelementptr inbounds %struct.SHA256_CTX, ptr %55, i32 0, i32 3
  %arrayidx94 = getelementptr inbounds [8 x i32], ptr %state93, i64 0, i64 6
  %56 = load i32, ptr %arrayidx94, align 8
  store i32 %56, ptr %g, align 4
  %57 = load ptr, ptr %ctx.addr, align 8
  %state95 = getelementptr inbounds %struct.SHA256_CTX, ptr %57, i32 0, i32 3
  %arrayidx96 = getelementptr inbounds [8 x i32], ptr %state95, i64 0, i64 7
  %58 = load i32, ptr %arrayidx96, align 4
  store i32 %58, ptr %h, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc141, %for.end81
  %59 = load i32, ptr %i, align 4
  %cmp98 = icmp ult i32 %59, 64
  br i1 %cmp98, label %for.body100, label %for.end143

for.body100:                                      ; preds = %for.cond97
  %60 = load i32, ptr %h, align 4
  %61 = load i32, ptr %e, align 4
  %shr101 = lshr i32 %61, 6
  %62 = load i32, ptr %e, align 4
  %shl102 = shl i32 %62, 26
  %or103 = or i32 %shr101, %shl102
  %63 = load i32, ptr %e, align 4
  %shr104 = lshr i32 %63, 11
  %64 = load i32, ptr %e, align 4
  %shl105 = shl i32 %64, 21
  %or106 = or i32 %shr104, %shl105
  %xor107 = xor i32 %or103, %or106
  %65 = load i32, ptr %e, align 4
  %shr108 = lshr i32 %65, 25
  %66 = load i32, ptr %e, align 4
  %shl109 = shl i32 %66, 7
  %or110 = or i32 %shr108, %shl109
  %xor111 = xor i32 %xor107, %or110
  %add112 = add i32 %60, %xor111
  %67 = load i32, ptr %e, align 4
  %68 = load i32, ptr %f, align 4
  %and = and i32 %67, %68
  %69 = load i32, ptr %e, align 4
  %not = xor i32 %69, -1
  %70 = load i32, ptr %g, align 4
  %and113 = and i32 %not, %70
  %xor114 = xor i32 %and, %and113
  %add115 = add i32 %add112, %xor114
  %71 = load i32, ptr %i, align 4
  %idxprom116 = zext i32 %71 to i64
  %arrayidx117 = getelementptr inbounds [64 x i32], ptr @k, i64 0, i64 %idxprom116
  %72 = load i32, ptr %arrayidx117, align 4
  %add118 = add i32 %add115, %72
  %73 = load i32, ptr %i, align 4
  %idxprom119 = zext i32 %73 to i64
  %arrayidx120 = getelementptr inbounds [64 x i32], ptr %m, i64 0, i64 %idxprom119
  %74 = load i32, ptr %arrayidx120, align 4
  %add121 = add i32 %add118, %74
  store i32 %add121, ptr %t1, align 4
  %75 = load i32, ptr %a, align 4
  %shr122 = lshr i32 %75, 2
  %76 = load i32, ptr %a, align 4
  %shl123 = shl i32 %76, 30
  %or124 = or i32 %shr122, %shl123
  %77 = load i32, ptr %a, align 4
  %shr125 = lshr i32 %77, 13
  %78 = load i32, ptr %a, align 4
  %shl126 = shl i32 %78, 19
  %or127 = or i32 %shr125, %shl126
  %xor128 = xor i32 %or124, %or127
  %79 = load i32, ptr %a, align 4
  %shr129 = lshr i32 %79, 22
  %80 = load i32, ptr %a, align 4
  %shl130 = shl i32 %80, 10
  %or131 = or i32 %shr129, %shl130
  %xor132 = xor i32 %xor128, %or131
  %81 = load i32, ptr %a, align 4
  %82 = load i32, ptr %b, align 4
  %and133 = and i32 %81, %82
  %83 = load i32, ptr %a, align 4
  %84 = load i32, ptr %c, align 4
  %and134 = and i32 %83, %84
  %xor135 = xor i32 %and133, %and134
  %85 = load i32, ptr %b, align 4
  %86 = load i32, ptr %c, align 4
  %and136 = and i32 %85, %86
  %xor137 = xor i32 %xor135, %and136
  %add138 = add i32 %xor132, %xor137
  store i32 %add138, ptr %t2, align 4
  %87 = load i32, ptr %g, align 4
  store i32 %87, ptr %h, align 4
  %88 = load i32, ptr %f, align 4
  store i32 %88, ptr %g, align 4
  %89 = load i32, ptr %e, align 4
  store i32 %89, ptr %f, align 4
  %90 = load i32, ptr %d, align 4
  %91 = load i32, ptr %t1, align 4
  %add139 = add i32 %90, %91
  store i32 %add139, ptr %e, align 4
  %92 = load i32, ptr %c, align 4
  store i32 %92, ptr %d, align 4
  %93 = load i32, ptr %b, align 4
  store i32 %93, ptr %c, align 4
  %94 = load i32, ptr %a, align 4
  store i32 %94, ptr %b, align 4
  %95 = load i32, ptr %t1, align 4
  %96 = load i32, ptr %t2, align 4
  %add140 = add i32 %95, %96
  store i32 %add140, ptr %a, align 4
  br label %for.inc141

for.inc141:                                       ; preds = %for.body100
  %97 = load i32, ptr %i, align 4
  %inc142 = add i32 %97, 1
  store i32 %inc142, ptr %i, align 4
  br label %for.cond97, !llvm.loop !11

for.end143:                                       ; preds = %for.cond97
  %98 = load i32, ptr %a, align 4
  %99 = load ptr, ptr %ctx.addr, align 8
  %state144 = getelementptr inbounds %struct.SHA256_CTX, ptr %99, i32 0, i32 3
  %arrayidx145 = getelementptr inbounds [8 x i32], ptr %state144, i64 0, i64 0
  %100 = load i32, ptr %arrayidx145, align 8
  %add146 = add i32 %100, %98
  store i32 %add146, ptr %arrayidx145, align 8
  %101 = load i32, ptr %b, align 4
  %102 = load ptr, ptr %ctx.addr, align 8
  %state147 = getelementptr inbounds %struct.SHA256_CTX, ptr %102, i32 0, i32 3
  %arrayidx148 = getelementptr inbounds [8 x i32], ptr %state147, i64 0, i64 1
  %103 = load i32, ptr %arrayidx148, align 4
  %add149 = add i32 %103, %101
  store i32 %add149, ptr %arrayidx148, align 4
  %104 = load i32, ptr %c, align 4
  %105 = load ptr, ptr %ctx.addr, align 8
  %state150 = getelementptr inbounds %struct.SHA256_CTX, ptr %105, i32 0, i32 3
  %arrayidx151 = getelementptr inbounds [8 x i32], ptr %state150, i64 0, i64 2
  %106 = load i32, ptr %arrayidx151, align 8
  %add152 = add i32 %106, %104
  store i32 %add152, ptr %arrayidx151, align 8
  %107 = load i32, ptr %d, align 4
  %108 = load ptr, ptr %ctx.addr, align 8
  %state153 = getelementptr inbounds %struct.SHA256_CTX, ptr %108, i32 0, i32 3
  %arrayidx154 = getelementptr inbounds [8 x i32], ptr %state153, i64 0, i64 3
  %109 = load i32, ptr %arrayidx154, align 4
  %add155 = add i32 %109, %107
  store i32 %add155, ptr %arrayidx154, align 4
  %110 = load i32, ptr %e, align 4
  %111 = load ptr, ptr %ctx.addr, align 8
  %state156 = getelementptr inbounds %struct.SHA256_CTX, ptr %111, i32 0, i32 3
  %arrayidx157 = getelementptr inbounds [8 x i32], ptr %state156, i64 0, i64 4
  %112 = load i32, ptr %arrayidx157, align 8
  %add158 = add i32 %112, %110
  store i32 %add158, ptr %arrayidx157, align 8
  %113 = load i32, ptr %f, align 4
  %114 = load ptr, ptr %ctx.addr, align 8
  %state159 = getelementptr inbounds %struct.SHA256_CTX, ptr %114, i32 0, i32 3
  %arrayidx160 = getelementptr inbounds [8 x i32], ptr %state159, i64 0, i64 5
  %115 = load i32, ptr %arrayidx160, align 4
  %add161 = add i32 %115, %113
  store i32 %add161, ptr %arrayidx160, align 4
  %116 = load i32, ptr %g, align 4
  %117 = load ptr, ptr %ctx.addr, align 8
  %state162 = getelementptr inbounds %struct.SHA256_CTX, ptr %117, i32 0, i32 3
  %arrayidx163 = getelementptr inbounds [8 x i32], ptr %state162, i64 0, i64 6
  %118 = load i32, ptr %arrayidx163, align 8
  %add164 = add i32 %118, %116
  store i32 %add164, ptr %arrayidx163, align 8
  %119 = load i32, ptr %h, align 4
  %120 = load ptr, ptr %ctx.addr, align 8
  %state165 = getelementptr inbounds %struct.SHA256_CTX, ptr %120, i32 0, i32 3
  %arrayidx166 = getelementptr inbounds [8 x i32], ptr %state165, i64 0, i64 7
  %121 = load i32, ptr %arrayidx166, align 4
  %add167 = add i32 %121, %119
  store i32 %add167, ptr %arrayidx166, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha256_init(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %datalen = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i32 0, i32 1
  store i32 0, ptr %datalen, align 8
  %1 = load ptr, ptr %ctx.addr, align 8
  %bitlen = getelementptr inbounds %struct.SHA256_CTX, ptr %1, i32 0, i32 2
  store i64 0, ptr %bitlen, align 8
  %2 = load ptr, ptr %ctx.addr, align 8
  %state = getelementptr inbounds %struct.SHA256_CTX, ptr %2, i32 0, i32 3
  %arrayidx = getelementptr inbounds [8 x i32], ptr %state, i64 0, i64 0
  store i32 1779033703, ptr %arrayidx, align 8
  %3 = load ptr, ptr %ctx.addr, align 8
  %state1 = getelementptr inbounds %struct.SHA256_CTX, ptr %3, i32 0, i32 3
  %arrayidx2 = getelementptr inbounds [8 x i32], ptr %state1, i64 0, i64 1
  store i32 -1150833019, ptr %arrayidx2, align 4
  %4 = load ptr, ptr %ctx.addr, align 8
  %state3 = getelementptr inbounds %struct.SHA256_CTX, ptr %4, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [8 x i32], ptr %state3, i64 0, i64 2
  store i32 1013904242, ptr %arrayidx4, align 8
  %5 = load ptr, ptr %ctx.addr, align 8
  %state5 = getelementptr inbounds %struct.SHA256_CTX, ptr %5, i32 0, i32 3
  %arrayidx6 = getelementptr inbounds [8 x i32], ptr %state5, i64 0, i64 3
  store i32 -1521486534, ptr %arrayidx6, align 4
  %6 = load ptr, ptr %ctx.addr, align 8
  %state7 = getelementptr inbounds %struct.SHA256_CTX, ptr %6, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [8 x i32], ptr %state7, i64 0, i64 4
  store i32 1359893119, ptr %arrayidx8, align 8
  %7 = load ptr, ptr %ctx.addr, align 8
  %state9 = getelementptr inbounds %struct.SHA256_CTX, ptr %7, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [8 x i32], ptr %state9, i64 0, i64 5
  store i32 -1694144372, ptr %arrayidx10, align 4
  %8 = load ptr, ptr %ctx.addr, align 8
  %state11 = getelementptr inbounds %struct.SHA256_CTX, ptr %8, i32 0, i32 3
  %arrayidx12 = getelementptr inbounds [8 x i32], ptr %state11, i64 0, i64 6
  store i32 528734635, ptr %arrayidx12, align 8
  %9 = load ptr, ptr %ctx.addr, align 8
  %state13 = getelementptr inbounds %struct.SHA256_CTX, ptr %9, i32 0, i32 3
  %arrayidx14 = getelementptr inbounds [8 x i32], ptr %state13, i64 0, i64 7
  store i32 1541459225, ptr %arrayidx14, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha256_update(ptr noundef %ctx, ptr noundef %data, i64 noundef %len) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = zext i32 %0 to i64
  %1 = load i64, ptr %len.addr, align 8
  %cmp = icmp ult i64 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %data.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %5 = load ptr, ptr %ctx.addr, align 8
  %data2 = getelementptr inbounds %struct.SHA256_CTX, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %ctx.addr, align 8
  %datalen = getelementptr inbounds %struct.SHA256_CTX, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %datalen, align 8
  %idxprom3 = zext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [64 x i8], ptr %data2, i64 0, i64 %idxprom3
  store i8 %4, ptr %arrayidx4, align 1
  %8 = load ptr, ptr %ctx.addr, align 8
  %datalen5 = getelementptr inbounds %struct.SHA256_CTX, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %datalen5, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %datalen5, align 8
  %10 = load ptr, ptr %ctx.addr, align 8
  %datalen6 = getelementptr inbounds %struct.SHA256_CTX, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %datalen6, align 8
  %cmp7 = icmp eq i32 %11, 64
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load ptr, ptr %ctx.addr, align 8
  %13 = load ptr, ptr %ctx.addr, align 8
  %data9 = getelementptr inbounds %struct.SHA256_CTX, ptr %13, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x i8], ptr %data9, i64 0, i64 0
  call void @sha256_transform(ptr noundef %12, ptr noundef %arraydecay)
  %14 = load ptr, ptr %ctx.addr, align 8
  %bitlen = getelementptr inbounds %struct.SHA256_CTX, ptr %14, i32 0, i32 2
  %15 = load i64, ptr %bitlen, align 8
  %add = add i64 %15, 512
  store i64 %add, ptr %bitlen, align 8
  %16 = load ptr, ptr %ctx.addr, align 8
  %datalen10 = getelementptr inbounds %struct.SHA256_CTX, ptr %16, i32 0, i32 1
  store i32 0, ptr %datalen10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %i, align 4
  %inc11 = add i32 %17, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha256_final(ptr noundef %ctx, ptr noundef %hash) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %hash.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %hash, ptr %hash.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %datalen = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %datalen, align 8
  store i32 %1, ptr %i, align 4
  %2 = load ptr, ptr %ctx.addr, align 8
  %datalen1 = getelementptr inbounds %struct.SHA256_CTX, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %datalen1, align 8
  %cmp = icmp ult i32 %3, 56
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8
  %data = getelementptr inbounds %struct.SHA256_CTX, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [64 x i8], ptr %data, i64 0, i64 %idxprom
  store i8 -128, ptr %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load i32, ptr %i, align 4
  %cmp2 = icmp ult i32 %6, 56
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %ctx.addr, align 8
  %data3 = getelementptr inbounds %struct.SHA256_CTX, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %i, align 4
  %inc4 = add i32 %8, 1
  store i32 %inc4, ptr %i, align 4
  %idxprom5 = zext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [64 x i8], ptr %data3, i64 0, i64 %idxprom5
  store i8 0, ptr %arrayidx6, align 1
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %ctx.addr, align 8
  %data7 = getelementptr inbounds %struct.SHA256_CTX, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %i, align 4
  %inc8 = add i32 %10, 1
  store i32 %inc8, ptr %i, align 4
  %idxprom9 = zext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [64 x i8], ptr %data7, i64 0, i64 %idxprom9
  store i8 -128, ptr %arrayidx10, align 1
  br label %while.cond11

while.cond11:                                     ; preds = %while.body13, %if.else
  %11 = load i32, ptr %i, align 4
  %cmp12 = icmp ult i32 %11, 64
  br i1 %cmp12, label %while.body13, label %while.end18

while.body13:                                     ; preds = %while.cond11
  %12 = load ptr, ptr %ctx.addr, align 8
  %data14 = getelementptr inbounds %struct.SHA256_CTX, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %i, align 4
  %inc15 = add i32 %13, 1
  store i32 %inc15, ptr %i, align 4
  %idxprom16 = zext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [64 x i8], ptr %data14, i64 0, i64 %idxprom16
  store i8 0, ptr %arrayidx17, align 1
  br label %while.cond11, !llvm.loop !14

while.end18:                                      ; preds = %while.cond11
  %14 = load ptr, ptr %ctx.addr, align 8
  %15 = load ptr, ptr %ctx.addr, align 8
  %data19 = getelementptr inbounds %struct.SHA256_CTX, ptr %15, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x i8], ptr %data19, i64 0, i64 0
  call void @sha256_transform(ptr noundef %14, ptr noundef %arraydecay)
  %16 = load ptr, ptr %ctx.addr, align 8
  %data20 = getelementptr inbounds %struct.SHA256_CTX, ptr %16, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [64 x i8], ptr %data20, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay21, i8 0, i64 56, i1 false)
  br label %if.end

if.end:                                           ; preds = %while.end18, %while.end
  %17 = load ptr, ptr %ctx.addr, align 8
  %datalen22 = getelementptr inbounds %struct.SHA256_CTX, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %datalen22, align 8
  %mul = mul i32 %18, 8
  %conv = zext i32 %mul to i64
  %19 = load ptr, ptr %ctx.addr, align 8
  %bitlen = getelementptr inbounds %struct.SHA256_CTX, ptr %19, i32 0, i32 2
  %20 = load i64, ptr %bitlen, align 8
  %add = add i64 %20, %conv
  store i64 %add, ptr %bitlen, align 8
  %21 = load ptr, ptr %ctx.addr, align 8
  %bitlen23 = getelementptr inbounds %struct.SHA256_CTX, ptr %21, i32 0, i32 2
  %22 = load i64, ptr %bitlen23, align 8
  %conv24 = trunc i64 %22 to i8
  %23 = load ptr, ptr %ctx.addr, align 8
  %data25 = getelementptr inbounds %struct.SHA256_CTX, ptr %23, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [64 x i8], ptr %data25, i64 0, i64 63
  store i8 %conv24, ptr %arrayidx26, align 1
  %24 = load ptr, ptr %ctx.addr, align 8
  %bitlen27 = getelementptr inbounds %struct.SHA256_CTX, ptr %24, i32 0, i32 2
  %25 = load i64, ptr %bitlen27, align 8
  %shr = lshr i64 %25, 8
  %conv28 = trunc i64 %shr to i8
  %26 = load ptr, ptr %ctx.addr, align 8
  %data29 = getelementptr inbounds %struct.SHA256_CTX, ptr %26, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [64 x i8], ptr %data29, i64 0, i64 62
  store i8 %conv28, ptr %arrayidx30, align 2
  %27 = load ptr, ptr %ctx.addr, align 8
  %bitlen31 = getelementptr inbounds %struct.SHA256_CTX, ptr %27, i32 0, i32 2
  %28 = load i64, ptr %bitlen31, align 8
  %shr32 = lshr i64 %28, 16
  %conv33 = trunc i64 %shr32 to i8
  %29 = load ptr, ptr %ctx.addr, align 8
  %data34 = getelementptr inbounds %struct.SHA256_CTX, ptr %29, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [64 x i8], ptr %data34, i64 0, i64 61
  store i8 %conv33, ptr %arrayidx35, align 1
  %30 = load ptr, ptr %ctx.addr, align 8
  %bitlen36 = getelementptr inbounds %struct.SHA256_CTX, ptr %30, i32 0, i32 2
  %31 = load i64, ptr %bitlen36, align 8
  %shr37 = lshr i64 %31, 24
  %conv38 = trunc i64 %shr37 to i8
  %32 = load ptr, ptr %ctx.addr, align 8
  %data39 = getelementptr inbounds %struct.SHA256_CTX, ptr %32, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [64 x i8], ptr %data39, i64 0, i64 60
  store i8 %conv38, ptr %arrayidx40, align 4
  %33 = load ptr, ptr %ctx.addr, align 8
  %bitlen41 = getelementptr inbounds %struct.SHA256_CTX, ptr %33, i32 0, i32 2
  %34 = load i64, ptr %bitlen41, align 8
  %shr42 = lshr i64 %34, 32
  %conv43 = trunc i64 %shr42 to i8
  %35 = load ptr, ptr %ctx.addr, align 8
  %data44 = getelementptr inbounds %struct.SHA256_CTX, ptr %35, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [64 x i8], ptr %data44, i64 0, i64 59
  store i8 %conv43, ptr %arrayidx45, align 1
  %36 = load ptr, ptr %ctx.addr, align 8
  %bitlen46 = getelementptr inbounds %struct.SHA256_CTX, ptr %36, i32 0, i32 2
  %37 = load i64, ptr %bitlen46, align 8
  %shr47 = lshr i64 %37, 40
  %conv48 = trunc i64 %shr47 to i8
  %38 = load ptr, ptr %ctx.addr, align 8
  %data49 = getelementptr inbounds %struct.SHA256_CTX, ptr %38, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [64 x i8], ptr %data49, i64 0, i64 58
  store i8 %conv48, ptr %arrayidx50, align 2
  %39 = load ptr, ptr %ctx.addr, align 8
  %bitlen51 = getelementptr inbounds %struct.SHA256_CTX, ptr %39, i32 0, i32 2
  %40 = load i64, ptr %bitlen51, align 8
  %shr52 = lshr i64 %40, 48
  %conv53 = trunc i64 %shr52 to i8
  %41 = load ptr, ptr %ctx.addr, align 8
  %data54 = getelementptr inbounds %struct.SHA256_CTX, ptr %41, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [64 x i8], ptr %data54, i64 0, i64 57
  store i8 %conv53, ptr %arrayidx55, align 1
  %42 = load ptr, ptr %ctx.addr, align 8
  %bitlen56 = getelementptr inbounds %struct.SHA256_CTX, ptr %42, i32 0, i32 2
  %43 = load i64, ptr %bitlen56, align 8
  %shr57 = lshr i64 %43, 56
  %conv58 = trunc i64 %shr57 to i8
  %44 = load ptr, ptr %ctx.addr, align 8
  %data59 = getelementptr inbounds %struct.SHA256_CTX, ptr %44, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [64 x i8], ptr %data59, i64 0, i64 56
  store i8 %conv58, ptr %arrayidx60, align 8
  %45 = load ptr, ptr %ctx.addr, align 8
  %46 = load ptr, ptr %ctx.addr, align 8
  %data61 = getelementptr inbounds %struct.SHA256_CTX, ptr %46, i32 0, i32 0
  %arraydecay62 = getelementptr inbounds [64 x i8], ptr %data61, i64 0, i64 0
  call void @sha256_transform(ptr noundef %45, ptr noundef %arraydecay62)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %47 = load i32, ptr %i, align 4
  %cmp63 = icmp ult i32 %47, 4
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load ptr, ptr %ctx.addr, align 8
  %state = getelementptr inbounds %struct.SHA256_CTX, ptr %48, i32 0, i32 3
  %arrayidx65 = getelementptr inbounds [8 x i32], ptr %state, i64 0, i64 0
  %49 = load i32, ptr %arrayidx65, align 8
  %50 = load i32, ptr %i, align 4
  %mul66 = mul i32 %50, 8
  %sub = sub i32 24, %mul66
  %shr67 = lshr i32 %49, %sub
  %and = and i32 %shr67, 255
  %conv68 = trunc i32 %and to i8
  %51 = load ptr, ptr %hash.addr, align 8
  %52 = load i32, ptr %i, align 4
  %idxprom69 = zext i32 %52 to i64
  %arrayidx70 = getelementptr inbounds i8, ptr %51, i64 %idxprom69
  store i8 %conv68, ptr %arrayidx70, align 1
  %53 = load ptr, ptr %ctx.addr, align 8
  %state71 = getelementptr inbounds %struct.SHA256_CTX, ptr %53, i32 0, i32 3
  %arrayidx72 = getelementptr inbounds [8 x i32], ptr %state71, i64 0, i64 1
  %54 = load i32, ptr %arrayidx72, align 4
  %55 = load i32, ptr %i, align 4
  %mul73 = mul i32 %55, 8
  %sub74 = sub i32 24, %mul73
  %shr75 = lshr i32 %54, %sub74
  %and76 = and i32 %shr75, 255
  %conv77 = trunc i32 %and76 to i8
  %56 = load ptr, ptr %hash.addr, align 8
  %57 = load i32, ptr %i, align 4
  %add78 = add i32 %57, 4
  %idxprom79 = zext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds i8, ptr %56, i64 %idxprom79
  store i8 %conv77, ptr %arrayidx80, align 1
  %58 = load ptr, ptr %ctx.addr, align 8
  %state81 = getelementptr inbounds %struct.SHA256_CTX, ptr %58, i32 0, i32 3
  %arrayidx82 = getelementptr inbounds [8 x i32], ptr %state81, i64 0, i64 2
  %59 = load i32, ptr %arrayidx82, align 8
  %60 = load i32, ptr %i, align 4
  %mul83 = mul i32 %60, 8
  %sub84 = sub i32 24, %mul83
  %shr85 = lshr i32 %59, %sub84
  %and86 = and i32 %shr85, 255
  %conv87 = trunc i32 %and86 to i8
  %61 = load ptr, ptr %hash.addr, align 8
  %62 = load i32, ptr %i, align 4
  %add88 = add i32 %62, 8
  %idxprom89 = zext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds i8, ptr %61, i64 %idxprom89
  store i8 %conv87, ptr %arrayidx90, align 1
  %63 = load ptr, ptr %ctx.addr, align 8
  %state91 = getelementptr inbounds %struct.SHA256_CTX, ptr %63, i32 0, i32 3
  %arrayidx92 = getelementptr inbounds [8 x i32], ptr %state91, i64 0, i64 3
  %64 = load i32, ptr %arrayidx92, align 4
  %65 = load i32, ptr %i, align 4
  %mul93 = mul i32 %65, 8
  %sub94 = sub i32 24, %mul93
  %shr95 = lshr i32 %64, %sub94
  %and96 = and i32 %shr95, 255
  %conv97 = trunc i32 %and96 to i8
  %66 = load ptr, ptr %hash.addr, align 8
  %67 = load i32, ptr %i, align 4
  %add98 = add i32 %67, 12
  %idxprom99 = zext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds i8, ptr %66, i64 %idxprom99
  store i8 %conv97, ptr %arrayidx100, align 1
  %68 = load ptr, ptr %ctx.addr, align 8
  %state101 = getelementptr inbounds %struct.SHA256_CTX, ptr %68, i32 0, i32 3
  %arrayidx102 = getelementptr inbounds [8 x i32], ptr %state101, i64 0, i64 4
  %69 = load i32, ptr %arrayidx102, align 8
  %70 = load i32, ptr %i, align 4
  %mul103 = mul i32 %70, 8
  %sub104 = sub i32 24, %mul103
  %shr105 = lshr i32 %69, %sub104
  %and106 = and i32 %shr105, 255
  %conv107 = trunc i32 %and106 to i8
  %71 = load ptr, ptr %hash.addr, align 8
  %72 = load i32, ptr %i, align 4
  %add108 = add i32 %72, 16
  %idxprom109 = zext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds i8, ptr %71, i64 %idxprom109
  store i8 %conv107, ptr %arrayidx110, align 1
  %73 = load ptr, ptr %ctx.addr, align 8
  %state111 = getelementptr inbounds %struct.SHA256_CTX, ptr %73, i32 0, i32 3
  %arrayidx112 = getelementptr inbounds [8 x i32], ptr %state111, i64 0, i64 5
  %74 = load i32, ptr %arrayidx112, align 4
  %75 = load i32, ptr %i, align 4
  %mul113 = mul i32 %75, 8
  %sub114 = sub i32 24, %mul113
  %shr115 = lshr i32 %74, %sub114
  %and116 = and i32 %shr115, 255
  %conv117 = trunc i32 %and116 to i8
  %76 = load ptr, ptr %hash.addr, align 8
  %77 = load i32, ptr %i, align 4
  %add118 = add i32 %77, 20
  %idxprom119 = zext i32 %add118 to i64
  %arrayidx120 = getelementptr inbounds i8, ptr %76, i64 %idxprom119
  store i8 %conv117, ptr %arrayidx120, align 1
  %78 = load ptr, ptr %ctx.addr, align 8
  %state121 = getelementptr inbounds %struct.SHA256_CTX, ptr %78, i32 0, i32 3
  %arrayidx122 = getelementptr inbounds [8 x i32], ptr %state121, i64 0, i64 6
  %79 = load i32, ptr %arrayidx122, align 8
  %80 = load i32, ptr %i, align 4
  %mul123 = mul i32 %80, 8
  %sub124 = sub i32 24, %mul123
  %shr125 = lshr i32 %79, %sub124
  %and126 = and i32 %shr125, 255
  %conv127 = trunc i32 %and126 to i8
  %81 = load ptr, ptr %hash.addr, align 8
  %82 = load i32, ptr %i, align 4
  %add128 = add i32 %82, 24
  %idxprom129 = zext i32 %add128 to i64
  %arrayidx130 = getelementptr inbounds i8, ptr %81, i64 %idxprom129
  store i8 %conv127, ptr %arrayidx130, align 1
  %83 = load ptr, ptr %ctx.addr, align 8
  %state131 = getelementptr inbounds %struct.SHA256_CTX, ptr %83, i32 0, i32 3
  %arrayidx132 = getelementptr inbounds [8 x i32], ptr %state131, i64 0, i64 7
  %84 = load i32, ptr %arrayidx132, align 4
  %85 = load i32, ptr %i, align 4
  %mul133 = mul i32 %85, 8
  %sub134 = sub i32 24, %mul133
  %shr135 = lshr i32 %84, %sub134
  %and136 = and i32 %shr135, 255
  %conv137 = trunc i32 %and136 to i8
  %86 = load ptr, ptr %hash.addr, align 8
  %87 = load i32, ptr %i, align 4
  %add138 = add i32 %87, 28
  %idxprom139 = zext i32 %add138 to i64
  %arrayidx140 = getelementptr inbounds i8, ptr %86, i64 %idxprom139
  store i8 %conv137, ptr %arrayidx140, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %88 = load i32, ptr %i, align 4
  %inc141 = add i32 %88, 1
  store i32 %inc141, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sha256_test() #0 {
entry:
  %text1 = alloca [4 x i8], align 1
  %text2 = alloca [57 x i8], align 16
  %text3 = alloca [11 x i8], align 1
  %hash1 = alloca [32 x i8], align 16
  %hash2 = alloca [32 x i8], align 16
  %hash3 = alloca [32 x i8], align 16
  %buf = alloca [32 x i8], align 16
  %ctx = alloca %struct.SHA256_CTX, align 8
  %idx = alloca i32, align 4
  %pass = alloca i32, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %text1, ptr align 1 @__const.sha256_test.text1, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %text2, ptr align 16 @__const.sha256_test.text2, i64 57, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %text3, ptr align 1 @__const.sha256_test.text3, i64 11, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %hash1, ptr align 16 @__const.sha256_test.hash1, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %hash2, ptr align 16 @__const.sha256_test.hash2, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %hash3, ptr align 16 @__const.sha256_test.hash3, i64 32, i1 false)
  store i32 1, ptr %pass, align 4
  call void @sha256_init(ptr noundef %ctx)
  %arraydecay = getelementptr inbounds [4 x i8], ptr %text1, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [4 x i8], ptr %text1, i64 0, i64 0
  %call = call i64 @strlen(ptr noundef %arraydecay1) #5
  call void @sha256_update(ptr noundef %ctx, ptr noundef %arraydecay, i64 noundef %call)
  %arraydecay2 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0
  call void @sha256_final(ptr noundef %ctx, ptr noundef %arraydecay2)
  %0 = load i32, ptr %pass, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %arraydecay3 = getelementptr inbounds [32 x i8], ptr %hash1, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0
  %call5 = call i32 @memcmp(ptr noundef %arraydecay3, ptr noundef %arraydecay4, i64 noundef 32) #5
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %1 to i32
  store i32 %land.ext, ptr %pass, align 4
  call void @sha256_init(ptr noundef %ctx)
  %arraydecay7 = getelementptr inbounds [57 x i8], ptr %text2, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [57 x i8], ptr %text2, i64 0, i64 0
  %call9 = call i64 @strlen(ptr noundef %arraydecay8) #5
  call void @sha256_update(ptr noundef %ctx, ptr noundef %arraydecay7, i64 noundef %call9)
  %arraydecay10 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0
  call void @sha256_final(ptr noundef %ctx, ptr noundef %arraydecay10)
  %2 = load i32, ptr %pass, align 4
  %tobool11 = icmp ne i32 %2, 0
  br i1 %tobool11, label %land.rhs12, label %land.end18

land.rhs12:                                       ; preds = %land.end
  %arraydecay13 = getelementptr inbounds [32 x i8], ptr %hash2, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0
  %call15 = call i32 @memcmp(ptr noundef %arraydecay13, ptr noundef %arraydecay14, i64 noundef 32) #5
  %tobool16 = icmp ne i32 %call15, 0
  %lnot17 = xor i1 %tobool16, true
  br label %land.end18

land.end18:                                       ; preds = %land.rhs12, %land.end
  %3 = phi i1 [ false, %land.end ], [ %lnot17, %land.rhs12 ]
  %land.ext19 = zext i1 %3 to i32
  store i32 %land.ext19, ptr %pass, align 4
  call void @sha256_init(ptr noundef %ctx)
  store i32 0, ptr %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end18
  %4 = load i32, ptr %idx, align 4
  %cmp = icmp slt i32 %4, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay20 = getelementptr inbounds [11 x i8], ptr %text3, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [11 x i8], ptr %text3, i64 0, i64 0
  %call22 = call i64 @strlen(ptr noundef %arraydecay21) #5
  call void @sha256_update(ptr noundef %ctx, ptr noundef %arraydecay20, i64 noundef %call22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %idx, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %idx, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %arraydecay23 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0
  call void @sha256_final(ptr noundef %ctx, ptr noundef %arraydecay23)
  %6 = load i32, ptr %pass, align 4
  %tobool24 = icmp ne i32 %6, 0
  br i1 %tobool24, label %land.rhs25, label %land.end31

land.rhs25:                                       ; preds = %for.end
  %arraydecay26 = getelementptr inbounds [32 x i8], ptr %hash3, i64 0, i64 0
  %arraydecay27 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0
  %call28 = call i32 @memcmp(ptr noundef %arraydecay26, ptr noundef %arraydecay27, i64 noundef 32) #5
  %tobool29 = icmp ne i32 %call28, 0
  %lnot30 = xor i1 %tobool29, true
  br label %land.end31

land.end31:                                       ; preds = %land.rhs25, %for.end
  %7 = phi i1 [ false, %for.end ], [ %lnot30, %land.rhs25 ]
  %land.ext32 = zext i1 %7 to i32
  store i32 %land.ext32, ptr %pass, align 4
  %8 = load i32, ptr %pass, align 4
  ret i32 %8
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @sha256_test()
  %tobool = icmp ne i32 %call, 0
  %0 = zext i1 %tobool to i64
  %cond = select i1 %tobool, ptr @.str.1, ptr @.str.2
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %cond)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }

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

^0 = module: (path: "", hash: (0, 0, 0, 0, 0))
^1 = gv: (name: "__const.sha256_test.hash3", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 771739059038761414
^2 = gv: (name: ".str.2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1283618371233091543
^3 = gv: (name: "__const.sha256_test.text2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1531512596479668052
^4 = gv: (name: "__const.sha256_test.hash1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2010780037725445732
^5 = gv: (name: "strlen") ; guid = 2965136410638013299
^6 = gv: (name: "sha256_test", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 86, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^7, relbf: 768), (callee: ^5, relbf: 8960), (callee: ^11, relbf: 8960), (callee: ^8, relbf: 768), (callee: ^15, relbf: 510)), refs: (^18, ^3, ^19, ^4, ^9, ^1)))) ; guid = 3337839691015562320
^7 = gv: (name: "sha256_init", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 41, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0)))) ; guid = 3940838470197425915
^8 = gv: (name: "sha256_final", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 291, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^17, relbf: 384))))) ; guid = 4691441969384319940
^9 = gv: (name: "__const.sha256_test.hash2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5044404345054102014
^10 = gv: (name: "printf") ; guid = 7383291119112528047
^11 = gv: (name: "sha256_update", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 57, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^17, relbf: 3968))))) ; guid = 8415027844409168770
^12 = gv: (name: ".str.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11662803291472349647
^13 = gv: (name: ".str", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12658499799442043142
^14 = gv: (name: "k", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13714200811971123569
^15 = gv: (name: "memcmp") ; guid = 13767193220660627266
^16 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 8, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^6, relbf: 256), (callee: ^10, relbf: 256)), refs: (^12, ^2, ^13)))) ; guid = 15822663052811949562
^17 = gv: (name: "sha256_transform", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 358, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), refs: (^14)))) ; guid = 16706679075839597951
^18 = gv: (name: "__const.sha256_test.text1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17274460797510293188
^19 = gv: (name: "__const.sha256_test.text3", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17768850364865937828
^20 = flags: 8
^21 = blockcount: 47
