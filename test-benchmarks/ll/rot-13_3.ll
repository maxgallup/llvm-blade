; ModuleID = 'rot-13.c'
source_filename = "rot-13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.rot13_test.text = private unnamed_addr constant [53 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\00", align 16
@__const.rot13_test.code = private unnamed_addr constant [53 x i8] c"NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm\00", align 16
@.str = private unnamed_addr constant [18 x i8] c"ROT-13 tests: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SUCCEEDED\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1

; Function Attrs: nofree nounwind memory(argmem: readwrite) uwtable
define dso_local void @rot13(ptr nocapture noundef %str) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #8
  %conv = trunc i64 %call to i32
  %cmp69 = icmp sgt i32 %conv, 0
  br i1 %cmp69, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = and i64 %call, 4294967295
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i8, ptr %str, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !7
  %.fr = freeze i8 %0
  %cmp3 = icmp slt i8 %.fr, 65
  br i1 %cmp3, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %1 = add nsw i8 %.fr, -91
  %or.cond = icmp ult i8 %1, 6
  %cmp19 = icmp ugt i8 %.fr, 122
  %or.cond68 = or i1 %cmp19, %or.cond
  br i1 %or.cond68, label %for.inc, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cmp24 = icmp ugt i8 %.fr, 96
  %. = select i1 %cmp24, i32 97, i32 65
  %conv30 = zext i8 %.fr to i32
  %add = add nuw nsw i32 %conv30, 13
  %add31 = or i32 %., 26
  %rem67.cmp = icmp ult i32 %add, %add31
  %rem67.urem = select i1 %rem67.cmp, i32 0, i32 %add31
  %rem67 = sub nuw nsw i32 %add, %rem67.urem
  %conv32 = trunc i32 %rem67 to i8
  store i8 %conv32, ptr %arrayidx, align 1, !tbaa !7
  %cmp38 = icmp slt i8 %conv32, 26
  br i1 %cmp38, label %if.then40, label %for.inc

if.then40:                                        ; preds = %if.end
  %add44 = add nuw nsw i32 %rem67, %.
  %conv45 = trunc i32 %add44 to i8
  store i8 %conv45, ptr %arrayidx, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %if.end, %if.then40, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !10

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @rot13_test() local_unnamed_addr #3 {
entry:
  %buf = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %buf) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) %buf, ptr noundef nonnull align 16 dereferenceable(53) @__const.rot13_test.text, i64 53, i1 false) #9
  %call.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %buf) #8
  %conv.i = trunc i64 %call.i to i32
  %cmp69.i = icmp sgt i32 %conv.i, 0
  br i1 %cmp69.i, label %for.body.preheader.i, label %rot13.exit

for.body.preheader.i:                             ; preds = %entry
  %wide.trip.count.i = and i64 %call.i, 4294967295
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %arrayidx.i = getelementptr inbounds i8, ptr %buf, i64 %indvars.iv.i
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !7
  %.fr.i = freeze i8 %0
  %cmp3.i = icmp slt i8 %.fr.i, 65
  br i1 %cmp3.i, label %for.inc.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %1 = add nsw i8 %.fr.i, -91
  %or.cond.i = icmp ult i8 %1, 6
  %cmp19.i = icmp ugt i8 %.fr.i, 122
  %or.cond68.i = or i1 %cmp19.i, %or.cond.i
  br i1 %or.cond68.i, label %for.inc.i, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %cmp24.i = icmp ugt i8 %.fr.i, 96
  %..i = select i1 %cmp24.i, i32 97, i32 65
  %conv30.i = zext i8 %.fr.i to i32
  %add.i = add nuw nsw i32 %conv30.i, 13
  %add31.i = or i32 %..i, 26
  %rem67.cmp.i = icmp ult i32 %add.i, %add31.i
  %rem67.urem.i = select i1 %rem67.cmp.i, i32 0, i32 %add31.i
  %rem67.i = sub nuw nsw i32 %add.i, %rem67.urem.i
  %conv32.i = trunc i32 %rem67.i to i8
  store i8 %conv32.i, ptr %arrayidx.i, align 1, !tbaa !7
  %cmp38.i = icmp slt i8 %conv32.i, 26
  br i1 %cmp38.i, label %if.then40.i, label %for.inc.i

if.then40.i:                                      ; preds = %if.end.i
  %add44.i = add nuw nsw i32 %rem67.i, %..i
  %conv45.i = trunc i32 %add44.i to i8
  store i8 %conv45.i, ptr %arrayidx.i, align 1, !tbaa !7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then40.i, %if.end.i, %lor.lhs.false.i, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %rot13.exit, label %for.body.i, !llvm.loop !10

rot13.exit:                                       ; preds = %for.inc.i, %entry
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(53) @__const.rot13_test.code, ptr noundef nonnull dereferenceable(53) %buf, i64 53)
  %tobool6.not = icmp eq i32 %bcmp, 0
  %call.i20 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %buf) #8
  %conv.i21 = trunc i64 %call.i20 to i32
  %cmp69.i22 = icmp sgt i32 %conv.i21, 0
  br i1 %cmp69.i22, label %for.body.preheader.i24, label %rot13.exit51

for.body.preheader.i24:                           ; preds = %rot13.exit
  %wide.trip.count.i23 = and i64 %call.i20, 4294967295
  br label %for.body.i29

for.body.i29:                                     ; preds = %for.inc.i50, %for.body.preheader.i24
  %indvars.iv.i25 = phi i64 [ 0, %for.body.preheader.i24 ], [ %indvars.iv.next.i48, %for.inc.i50 ]
  %arrayidx.i26 = getelementptr inbounds i8, ptr %buf, i64 %indvars.iv.i25
  %2 = load i8, ptr %arrayidx.i26, align 1, !tbaa !7
  %.fr.i27 = freeze i8 %2
  %cmp3.i28 = icmp slt i8 %.fr.i27, 65
  br i1 %cmp3.i28, label %for.inc.i50, label %lor.lhs.false.i33

lor.lhs.false.i33:                                ; preds = %for.body.i29
  %3 = add nsw i8 %.fr.i27, -91
  %or.cond.i30 = icmp ult i8 %3, 6
  %cmp19.i31 = icmp ugt i8 %.fr.i27, 122
  %or.cond68.i32 = or i1 %cmp19.i31, %or.cond.i30
  br i1 %or.cond68.i32, label %for.inc.i50, label %if.end.i44

if.end.i44:                                       ; preds = %lor.lhs.false.i33
  %cmp24.i34 = icmp ugt i8 %.fr.i27, 96
  %..i35 = select i1 %cmp24.i34, i32 97, i32 65
  %conv30.i36 = zext i8 %.fr.i27 to i32
  %add.i37 = add nuw nsw i32 %conv30.i36, 13
  %add31.i38 = or i32 %..i35, 26
  %rem67.cmp.i39 = icmp ult i32 %add.i37, %add31.i38
  %rem67.urem.i40 = select i1 %rem67.cmp.i39, i32 0, i32 %add31.i38
  %rem67.i41 = sub nuw nsw i32 %add.i37, %rem67.urem.i40
  %conv32.i42 = trunc i32 %rem67.i41 to i8
  store i8 %conv32.i42, ptr %arrayidx.i26, align 1, !tbaa !7
  %cmp38.i43 = icmp slt i8 %conv32.i42, 26
  br i1 %cmp38.i43, label %if.then40.i47, label %for.inc.i50

if.then40.i47:                                    ; preds = %if.end.i44
  %add44.i45 = add nuw nsw i32 %rem67.i41, %..i35
  %conv45.i46 = trunc i32 %add44.i45 to i8
  store i8 %conv45.i46, ptr %arrayidx.i26, align 1, !tbaa !7
  br label %for.inc.i50

for.inc.i50:                                      ; preds = %if.then40.i47, %if.end.i44, %lor.lhs.false.i33, %for.body.i29
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i25, 1
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next.i48, %wide.trip.count.i23
  br i1 %exitcond.not.i49, label %rot13.exit51, label %for.body.i29, !llvm.loop !10

rot13.exit51:                                     ; preds = %for.inc.i50, %rot13.exit
  br i1 %tobool6.not, label %land.rhs9, label %land.end15

land.rhs9:                                        ; preds = %rot13.exit51
  %bcmp19 = call i32 @bcmp(ptr noundef nonnull dereferenceable(53) @__const.rot13_test.text, ptr noundef nonnull dereferenceable(53) %buf, i64 53)
  %tobool13.not = icmp eq i32 %bcmp19, 0
  %4 = zext i1 %tobool13.not to i32
  br label %land.end15

land.end15:                                       ; preds = %land.rhs9, %rot13.exit51
  %land.ext16 = phi i32 [ 0, %rot13.exit51 ], [ %4, %land.rhs9 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %buf) #9
  ret i32 %land.ext16
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #5 {
entry:
  %call = tail call i32 @rot13_test()
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, ptr @.str.2, ptr @.str.1
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  ret i32 0

for.body:                                         ; preds = %entry, %for.body
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %cond)
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 1000000
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !12
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #7

attributes #0 = { nofree nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn memory(argmem: read) }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}

^0 = module: (path: "", hash: (0, 0, 0, 0, 0))
^1 = gv: (name: "rot13_test", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 85, funcFlags: (readNone: 1, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^2, relbf: 512), (callee: ^4, relbf: 353)), refs: (^7, ^10)))) ; guid = 2820225334358568462
^2 = gv: (name: "strlen") ; guid = 2965136410638013299
^3 = gv: (name: "printf") ; guid = 7383291119112528047
^4 = gv: (name: "bcmp") ; guid = 8597674443648877653
^5 = gv: (name: ".str.2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8871270668384870337
^6 = gv: (name: ".str.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11537569014154204958
^7 = gv: (name: "__const.rot13_test.text", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13074760700991847741
^8 = gv: (name: ".str", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15007305355318391449
^9 = gv: (name: "rot13", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 37, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^2, relbf: 256))))) ; guid = 15649730803736631077
^10 = gv: (name: "__const.rot13_test.code", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15715985562423422028
^11 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^1, relbf: 256), (callee: ^3, relbf: 8160)), refs: (^5, ^6, ^8)))) ; guid = 15822663052811949562
^12 = flags: 8
^13 = blockcount: 28
