; ModuleID = 'test/basic2.ll'
source_filename = "basic2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.some_array = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i64 @time(ptr noundef null) #2, !BLADE-T !7
  %conv = trunc i64 %call to i32
  tail call void @srand(i32 noundef %conv) #2, !BLADE-T !7
  %call1 = tail call i32 @rand() #2, !BLADE-T !7 ; SOURCE 1
  %rem = srem i32 %call1, 5
  %call2 = tail call i32 @rand() #2, !BLADE-T !7 ; SOURCE 2
  %rem3 = srem i32 %call2, 5
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr @__const.main.some_array, i64 0, i64 %idxprom, !BLADE-S !8
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !9, !BLADE-T !7 ; SOURCE 3
  %idxprom4 = sext i32 %rem3 to i64
  %arrayidx5 = getelementptr inbounds [5 x i32], ptr @__const.main.some_array, i64 0, i64 %idxprom4, !BLADE-S !8
  %1 = load i32, ptr %arrayidx5, align 4, !tbaa !9, !BLADE-T !7 ; SOURCE 4
  %add = add nsw i32 %1, %0
  %rem6 = srem i32 %add, 5
  %idxprom7 = sext i32 %rem6 to i64
  %arrayidx8 = getelementptr inbounds [5 x i32], ptr @__const.main.some_array, i64 0, i64 %idxprom7, !BLADE-S !8
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !9, !BLADE-T !7
  %rem9 = srem i32 %2, 2
  %idxprom10 = sext i32 %rem9 to i64
  %arrayidx11 = getelementptr inbounds [5 x i32], ptr @__const.main.some_array, i64 0, i64 %idxprom10, !BLADE-S !8
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !9, !BLADE-T !7
  %add12 = add nsw i32 %3, %2
  ret i32 %add12
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ThinLTO", i32 0}
!5 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!6 = !{!"clang version 16.0.1 (git@github.com:maxgallup/llvm-blade.git 46a02438f168e189c789acdc03504ca8ee557a91)"}
!7 = !{!"Blade Transient"}
!8 = !{!"Blade Stable"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
