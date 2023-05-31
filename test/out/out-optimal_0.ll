; ModuleID = 'optimal_0.ll'
source_filename = "optimal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [5 x i32], align 16
  %i = alloca i32, align 4, !BLADE-S !8
  %y = alloca i32, align 4, !BLADE-S !8
  %x = alloca i32, align 4, !BLADE-S !8
  %res = alloca i32, align 4, !BLADE-S !8
  %res2 = alloca i32, align 4, !BLADE-S !8
  store i32 0, ptr %retval, align 4
  %call = call i64 @time(ptr noundef null) #3, !BLADE-T !9
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv) #3, !BLADE-T !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %a, ptr align 16 @__const.main.a, i64 20, i1 false), !BLADE-T !9
  %call1 = call i32 @rand() #3, !BLADE-T !9
  %rem = srem i32 %call1, 5
  store i32 %rem, ptr %i, align 4
  %0 = load i32, ptr %i, align 4, !BLADE-T !9
  %add = add nsw i32 %0, 3
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %i, align 4, !BLADE-T !9
  %add2 = add nsw i32 %1, 4
  store i32 %add2, ptr %x, align 4
  %2 = load i32, ptr %y, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 %idxprom, !BLADE-S !8
  %3 = load i32, ptr %arrayidx, align 4, !BLADE-T !9
  store i32 %3, ptr %res, align 4
  %4 = load i32, ptr %x, align 4, !BLADE-T !9
  call void @llvm.x86.sse2.lfence()
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 %idxprom3, !BLADE-S !8
  %5 = load i32, ptr %arrayidx4, align 4, !BLADE-T !9
  store i32 %5, ptr %res2, align 4
  %6 = load i32, ptr %res, align 4, !BLADE-T !9
  %7 = load i32, ptr %res2, align 4, !BLADE-T !9
  %add5 = add nsw i32 %6, %7
  ret i32 %add5
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: nounwind
declare void @llvm.x86.sse2.lfence() #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

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
