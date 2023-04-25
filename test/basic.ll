; ModuleID = 'basic.c'
source_filename = "basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.some_array = private unnamed_addr constant [5 x i8] c"\01\02\03\04\05", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %argv, align 8, !tbaa !7
  %1 = load i8, ptr %0, align 1, !tbaa !11
  %idxprom = sext i8 %1 to i64
  %arrayidx1 = getelementptr inbounds [5 x i8], ptr @__const.main.some_array, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx1, align 1, !tbaa !11
  %conv2 = sext i8 %2 to i32
  ret i32 %conv2
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}

^0 = module: (path: "", hash: (0, 0, 0, 0, 0))
^1 = gv: (name: "__const.main.some_array", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10530522993796894883
^2 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, funcFlags: (readNone: 0, readOnly: 1, noRecurse: 1, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), refs: (^1)))) ; guid = 15822663052811949562
^3 = flags: 8
^4 = blockcount: 1
