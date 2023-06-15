; ModuleID = 'md5.c'
source_filename = "md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@k = dso_local local_unnamed_addr constant [64 x i32] [i32 -680876936, i32 -389564586, i32 606105819, i32 -1044525330, i32 -176418897, i32 1200080426, i32 -1473231341, i32 -45705983, i32 1770035416, i32 -1958414417, i32 -42063, i32 -1990404162, i32 1804603682, i32 -40341101, i32 -1502002290, i32 1236535329, i32 -165796510, i32 -1069501632, i32 643717713, i32 -373897302, i32 -701558691, i32 38016083, i32 -660478335, i32 -405537848, i32 568446438, i32 -1019803690, i32 -187363961, i32 1163531501, i32 -1444681467, i32 -51403784, i32 1735328473, i32 -1926607734, i32 -378558, i32 -2022574463, i32 1839030562, i32 -35309556, i32 -1530992060, i32 1272893353, i32 -155497632, i32 -1094730640, i32 681279174, i32 -358537222, i32 -722521979, i32 76029189, i32 -640364487, i32 -421815835, i32 530742520, i32 -995338651, i32 -198630844, i32 1126891415, i32 -1416354905, i32 -57434055, i32 1700485571, i32 -1894986606, i32 -1051523, i32 -2054922799, i32 1873313359, i32 -30611744, i32 -1560198380, i32 1309151649, i32 -145523070, i32 -1120210379, i32 718787259, i32 -343485551], align 16
@r = dso_local local_unnamed_addr constant [64 x i32] [i32 7, i32 12, i32 17, i32 22, i32 7, i32 12, i32 17, i32 22, i32 7, i32 12, i32 17, i32 22, i32 7, i32 12, i32 17, i32 22, i32 5, i32 9, i32 14, i32 20, i32 5, i32 9, i32 14, i32 20, i32 5, i32 9, i32 14, i32 20, i32 5, i32 9, i32 14, i32 20, i32 4, i32 11, i32 16, i32 23, i32 4, i32 11, i32 16, i32 23, i32 4, i32 11, i32 16, i32 23, i32 4, i32 11, i32 16, i32 23, i32 6, i32 10, i32 15, i32 21, i32 6, i32 10, i32 15, i32 21, i32 6, i32 10, i32 15, i32 21, i32 6, i32 10, i32 15, i32 21], align 16
@.str = private unnamed_addr constant [337 x i8] c"RandomBenchmarkExampleTestLOLOLSuperLongStringLOLOLThisWillRepeatForAGoodLittleWhileRandomBenchmarkExampleTestLOLOLSuperLongStringLOLOLThisWillRepeatForAGoodLittleWhileRandomBenchmarkExampleTestLOLOLSuperLongStringLOLOLThisWillRepeatForAGoodLittleWhileRandomBenchmarkExampleTestLOLOLSuperLongStringLOLOLThisWillRepeatForAGoodLittleWhile\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%2.2x\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @to_bytes(i32 noundef %val, ptr nocapture noundef writeonly %bytes) local_unnamed_addr #0 {
entry:
  %conv = trunc i32 %val to i8
  store i8 %conv, ptr %bytes, align 1, !tbaa !7
  %shr = lshr i32 %val, 8
  %conv1 = trunc i32 %shr to i8
  %arrayidx2 = getelementptr inbounds i8, ptr %bytes, i64 1
  store i8 %conv1, ptr %arrayidx2, align 1, !tbaa !7
  %shr3 = lshr i32 %val, 16
  %conv4 = trunc i32 %shr3 to i8
  %arrayidx5 = getelementptr inbounds i8, ptr %bytes, i64 2
  store i8 %conv4, ptr %arrayidx5, align 1, !tbaa !7
  %shr6 = lshr i32 %val, 24
  %conv7 = trunc i32 %shr6 to i8
  %arrayidx8 = getelementptr inbounds i8, ptr %bytes, i64 3
  store i8 %conv7, ptr %arrayidx8, align 1, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @to_int32(ptr nocapture noundef readonly %bytes) local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr %bytes, align 1
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define dso_local void @md5(ptr nocapture noundef readonly %initial_msg, i64 noundef %initial_len, ptr nocapture noundef writeonly %digest) local_unnamed_addr #2 {
entry:
  %w = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %w) #10
  %add = add i64 %initial_len, 1
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %for.cond ], [ %initial_len, %entry ]
  %indvar = phi i64 [ %indvar.next, %for.cond ], [ 0, %entry ]
  %new_len.0 = phi i64 [ %inc, %for.cond ], [ %add, %entry ]
  %rem = and i64 %new_len.0, 63
  %cmp.not = icmp eq i64 %rem, 56
  %inc = add i64 %new_len.0, 1
  %indvar.next = add i64 %indvar, 1
  %indvars.iv.next249 = add i64 %indvars.iv248, 1
  br i1 %cmp.not, label %for.end, label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %add1 = add i64 %new_len.0, 8
  %call = tail call noalias ptr @malloc(i64 noundef %add1) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call, ptr align 1 %initial_msg, i64 %initial_len, i1 false)
  %arrayidx = getelementptr inbounds i8, ptr %call, i64 %initial_len
  store i8 -128, ptr %arrayidx, align 1, !tbaa !7
  %cmp4220 = icmp ult i64 %add, %new_len.0
  br i1 %cmp4220, label %for.body5.preheader, label %for.cond17.preheader.preheader

for.body5.preheader:                              ; preds = %for.end
  %uglygep = getelementptr i8, ptr %call, i64 %add
  tail call void @llvm.memset.p0.i64(ptr align 1 %uglygep, i8 0, i64 %indvar, i1 false), !tbaa !7
  br label %for.cond17.preheader.preheader

for.cond17.preheader.preheader:                   ; preds = %for.end, %for.body5.preheader
  %initial_len.tr = trunc i64 %initial_len to i32
  %conv = shl i32 %initial_len.tr, 3
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %new_len.0
  %conv.i = trunc i32 %conv to i8
  store i8 %conv.i, ptr %add.ptr, align 1, !tbaa !7
  %shr.i = lshr i32 %conv, 8
  %conv1.i = trunc i32 %shr.i to i8
  %arrayidx2.i = getelementptr inbounds i8, ptr %add.ptr, i64 1
  store i8 %conv1.i, ptr %arrayidx2.i, align 1, !tbaa !7
  %shr3.i = lshr i32 %conv, 16
  %conv4.i = trunc i32 %shr3.i to i8
  %arrayidx5.i = getelementptr inbounds i8, ptr %add.ptr, i64 2
  store i8 %conv4.i, ptr %arrayidx5.i, align 1, !tbaa !7
  %shr6.i = lshr i32 %conv, 24
  %conv7.i = trunc i32 %shr6.i to i8
  %arrayidx8.i = getelementptr inbounds i8, ptr %add.ptr, i64 3
  store i8 %conv7.i, ptr %arrayidx8.i, align 1, !tbaa !7
  %shr = lshr i64 %initial_len, 29
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr, i64 4
  %conv.i167 = trunc i64 %shr to i8
  store i8 %conv.i167, ptr %add.ptr12, align 1, !tbaa !7
  %shr.i168217 = lshr i64 %initial_len, 37
  %conv1.i169 = trunc i64 %shr.i168217 to i8
  %arrayidx2.i170 = getelementptr inbounds i8, ptr %add.ptr12, i64 1
  store i8 %conv1.i169, ptr %arrayidx2.i170, align 1, !tbaa !7
  %shr3.i171218 = lshr i64 %initial_len, 45
  %conv4.i172 = trunc i64 %shr3.i171218 to i8
  %arrayidx5.i173 = getelementptr inbounds i8, ptr %add.ptr12, i64 2
  store i8 %conv4.i172, ptr %arrayidx5.i173, align 1, !tbaa !7
  %shr6.i174219 = lshr i64 %initial_len, 53
  %conv7.i175 = trunc i64 %shr6.i174219 to i8
  %arrayidx8.i176 = getelementptr inbounds i8, ptr %add.ptr12, i64 3
  store i8 %conv7.i175, ptr %arrayidx8.i176, align 1, !tbaa !7
  %0 = lshr i64 %indvars.iv248, 6
  br label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %for.cond17.preheader.preheader, %for.end85
  %indvar237 = phi i64 [ 0, %for.cond17.preheader.preheader ], [ %indvar.next238, %for.end85 ]
  %h0.0233 = phi i32 [ 1732584193, %for.cond17.preheader.preheader ], [ %add86, %for.end85 ]
  %h3.0231 = phi i32 [ 271733878, %for.cond17.preheader.preheader ], [ %add89, %for.end85 ]
  %h2.0230 = phi i32 [ -1732584194, %for.cond17.preheader.preheader ], [ %add88, %for.end85 ]
  %h1.0229 = phi i32 [ -271733879, %for.cond17.preheader.preheader ], [ %add87, %for.end85 ]
  %1 = shl nuw i64 %indvar237, 6
  %uglygep239 = getelementptr i8, ptr %call, i64 %1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %w, ptr noundef nonnull align 1 dereferenceable(64) %uglygep239, i64 64, i1 false)
  br label %for.body32

for.body32:                                       ; preds = %for.cond17.preheader, %if.end61
  %indvars.iv = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next, %if.end61 ]
  %d.0226 = phi i32 [ %h3.0231, %for.cond17.preheader ], [ %c.0225, %if.end61 ]
  %c.0225 = phi i32 [ %h2.0230, %for.cond17.preheader ], [ %b.0224, %if.end61 ]
  %b.0224 = phi i32 [ %h1.0229, %for.cond17.preheader ], [ %add82, %if.end61 ]
  %a.0223 = phi i32 [ %h0.0233, %for.cond17.preheader ], [ %d.0226, %if.end61 ]
  %cmp33 = icmp ult i64 %indvars.iv, 16
  br i1 %cmp33, label %if.then, label %if.else

if.then:                                          ; preds = %for.body32
  %and = and i32 %c.0225, %b.0224
  %not = xor i32 %b.0224, -1
  %and35 = and i32 %d.0226, %not
  %or = or i32 %and35, %and
  br label %if.end61

if.else:                                          ; preds = %for.body32
  %cmp36 = icmp ult i64 %indvars.iv, 32
  br i1 %cmp36, label %if.then38, label %if.else46

if.then38:                                        ; preds = %if.else
  %and39 = and i32 %d.0226, %b.0224
  %not40 = xor i32 %d.0226, -1
  %and41 = and i32 %c.0225, %not40
  %or42 = or i32 %and39, %and41
  %2 = mul nuw nsw i64 %indvars.iv, 5
  %3 = add nuw nsw i64 %2, 1
  %rem45 = and i64 %3, 15
  br label %if.end61

if.else46:                                        ; preds = %if.else
  %cmp47 = icmp ult i64 %indvars.iv, 48
  br i1 %cmp47, label %if.then49, label %if.else54

if.then49:                                        ; preds = %if.else46
  %xor = xor i32 %c.0225, %b.0224
  %xor50 = xor i32 %xor, %d.0226
  %4 = mul nuw nsw i64 %indvars.iv, 3
  %5 = add nuw nsw i64 %4, 5
  %rem53 = and i64 %5, 15
  br label %if.end61

if.else54:                                        ; preds = %if.else46
  %not55 = xor i32 %d.0226, -1
  %or56 = or i32 %b.0224, %not55
  %xor57 = xor i32 %or56, %c.0225
  %6 = mul i64 %indvars.iv, 7
  %rem59 = and i64 %6, 15
  br label %if.end61

if.end61:                                         ; preds = %if.then38, %if.else54, %if.then49, %if.then
  %f.0 = phi i32 [ %or, %if.then ], [ %or42, %if.then38 ], [ %xor50, %if.then49 ], [ %xor57, %if.else54 ]
  %g.0 = phi i64 [ %indvars.iv, %if.then ], [ %rem45, %if.then38 ], [ %rem53, %if.then49 ], [ %rem59, %if.else54 ]
  %add62 = add i32 %f.0, %a.0223
  %arrayidx64 = getelementptr inbounds [64 x i32], ptr @k, i64 0, i64 %indvars.iv
  %7 = load i32, ptr %arrayidx64, align 4, !tbaa !12
  %add65 = add i32 %add62, %7
  %arrayidx67 = getelementptr inbounds [16 x i32], ptr %w, i64 0, i64 %g.0
  %8 = load i32, ptr %arrayidx67, align 4, !tbaa !12
  %add68 = add i32 %add65, %8
  %arrayidx70 = getelementptr inbounds [64 x i32], ptr @r, i64 0, i64 %indvars.iv
  %9 = load i32, ptr %arrayidx70, align 4, !tbaa !12
  %shl = shl i32 %add68, %9
  %sub = sub i32 32, %9
  %shr80 = lshr i32 %add68, %sub
  %or81 = or i32 %shr80, %shl
  %add82 = add i32 %or81, %b.0224
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.end85, label %for.body32, !llvm.loop !14

for.end85:                                        ; preds = %if.end61
  %add86 = add i32 %d.0226, %h0.0233
  %add87 = add i32 %add82, %h1.0229
  %add88 = add i32 %b.0224, %h2.0230
  %add89 = add i32 %c.0225, %h3.0231
  %indvar.next238 = add nuw nsw i64 %indvar237, 1
  %exitcond250.not = icmp eq i64 %indvar237, %0
  br i1 %exitcond250.not, label %for.end92, label %for.cond17.preheader, !llvm.loop !15

for.end92:                                        ; preds = %for.end85
  tail call void @free(ptr noundef %call) #10
  %conv.i177 = trunc i32 %add86 to i8
  store i8 %conv.i177, ptr %digest, align 1, !tbaa !7
  %shr.i178 = lshr i32 %add86, 8
  %conv1.i179 = trunc i32 %shr.i178 to i8
  %arrayidx2.i180 = getelementptr inbounds i8, ptr %digest, i64 1
  store i8 %conv1.i179, ptr %arrayidx2.i180, align 1, !tbaa !7
  %shr3.i181 = lshr i32 %add86, 16
  %conv4.i182 = trunc i32 %shr3.i181 to i8
  %arrayidx5.i183 = getelementptr inbounds i8, ptr %digest, i64 2
  store i8 %conv4.i182, ptr %arrayidx5.i183, align 1, !tbaa !7
  %shr6.i184 = lshr i32 %add86, 24
  %conv7.i185 = trunc i32 %shr6.i184 to i8
  %arrayidx8.i186 = getelementptr inbounds i8, ptr %digest, i64 3
  store i8 %conv7.i185, ptr %arrayidx8.i186, align 1, !tbaa !7
  %add.ptr93 = getelementptr inbounds i8, ptr %digest, i64 4
  %conv.i187 = trunc i32 %add87 to i8
  store i8 %conv.i187, ptr %add.ptr93, align 1, !tbaa !7
  %shr.i188 = lshr i32 %add87, 8
  %conv1.i189 = trunc i32 %shr.i188 to i8
  %arrayidx2.i190 = getelementptr inbounds i8, ptr %digest, i64 5
  store i8 %conv1.i189, ptr %arrayidx2.i190, align 1, !tbaa !7
  %shr3.i191 = lshr i32 %add87, 16
  %conv4.i192 = trunc i32 %shr3.i191 to i8
  %arrayidx5.i193 = getelementptr inbounds i8, ptr %digest, i64 6
  store i8 %conv4.i192, ptr %arrayidx5.i193, align 1, !tbaa !7
  %shr6.i194 = lshr i32 %add87, 24
  %conv7.i195 = trunc i32 %shr6.i194 to i8
  %arrayidx8.i196 = getelementptr inbounds i8, ptr %digest, i64 7
  store i8 %conv7.i195, ptr %arrayidx8.i196, align 1, !tbaa !7
  %add.ptr94 = getelementptr inbounds i8, ptr %digest, i64 8
  %conv.i197 = trunc i32 %add88 to i8
  store i8 %conv.i197, ptr %add.ptr94, align 1, !tbaa !7
  %shr.i198 = lshr i32 %add88, 8
  %conv1.i199 = trunc i32 %shr.i198 to i8
  %arrayidx2.i200 = getelementptr inbounds i8, ptr %digest, i64 9
  store i8 %conv1.i199, ptr %arrayidx2.i200, align 1, !tbaa !7
  %shr3.i201 = lshr i32 %add88, 16
  %conv4.i202 = trunc i32 %shr3.i201 to i8
  %arrayidx5.i203 = getelementptr inbounds i8, ptr %digest, i64 10
  store i8 %conv4.i202, ptr %arrayidx5.i203, align 1, !tbaa !7
  %shr6.i204 = lshr i32 %add88, 24
  %conv7.i205 = trunc i32 %shr6.i204 to i8
  %arrayidx8.i206 = getelementptr inbounds i8, ptr %digest, i64 11
  store i8 %conv7.i205, ptr %arrayidx8.i206, align 1, !tbaa !7
  %add.ptr95 = getelementptr inbounds i8, ptr %digest, i64 12
  %conv.i207 = trunc i32 %add89 to i8
  store i8 %conv.i207, ptr %add.ptr95, align 1, !tbaa !7
  %shr.i208 = lshr i32 %add89, 8
  %conv1.i209 = trunc i32 %shr.i208 to i8
  %arrayidx2.i210 = getelementptr inbounds i8, ptr %digest, i64 13
  store i8 %conv1.i209, ptr %arrayidx2.i210, align 1, !tbaa !7
  %shr3.i211 = lshr i32 %add89, 16
  %conv4.i212 = trunc i32 %shr3.i211 to i8
  %arrayidx5.i213 = getelementptr inbounds i8, ptr %digest, i64 14
  store i8 %conv4.i212, ptr %arrayidx5.i213, align 1, !tbaa !7
  %shr6.i214 = lshr i32 %add89, 24
  %conv7.i215 = trunc i32 %shr6.i214 to i8
  %arrayidx8.i216 = getelementptr inbounds i8, ptr %digest, i64 15
  store i8 %conv7.i215, ptr %arrayidx8.i216, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %w) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readnone %argv) local_unnamed_addr #2 {
entry:
  %result = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #10
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  call void @md5(ptr noundef nonnull @.str, i64 noundef 336, ptr noundef nonnull %result)
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 1000000
  br i1 %exitcond.not, label %for.body3.preheader, label %for.body, !llvm.loop !16

for.body3.preheader:                              ; preds = %for.body
  %0 = load i8, ptr %result, align 16, !tbaa !7
  %conv = zext i8 %0 to i32
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv)
  %arrayidx.1 = getelementptr inbounds [16 x i8], ptr %result, i64 0, i64 1
  %1 = load i8, ptr %arrayidx.1, align 1, !tbaa !7
  %conv.1 = zext i8 %1 to i32
  %call4.1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv.1)
  %arrayidx.2 = getelementptr inbounds [16 x i8], ptr %result, i64 0, i64 2
  %2 = load i8, ptr %arrayidx.2, align 2, !tbaa !7
  %conv.2 = zext i8 %2 to i32
  %call4.2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv.2)
  %arrayidx.3 = getelementptr inbounds [16 x i8], ptr %result, i64 0, i64 3
  %3 = load i8, ptr %arrayidx.3, align 1, !tbaa !7
  %conv.3 = zext i8 %3 to i32
  %call4.3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv.3)
  %arrayidx.4 = getelementptr inbounds [16 x i8], ptr %result, i64 0, i64 4
  %4 = load i8, ptr %arrayidx.4, align 4, !tbaa !7
  %conv.4 = zext i8 %4 to i32
  %call4.4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv.4)
  %arrayidx.5 = getelementptr inbounds [16 x i8], ptr %result, i64 0, i64 5
  %5 = load i8, ptr %arrayidx.5, align 1, !tbaa !7
  %conv.5 = zext i8 %5 to i32
  %call4.5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv.5)
  %arrayidx.6 = getelementptr inbounds [16 x i8], ptr %result, i64 0, i64 6
  %6 = load i8, ptr %arrayidx.6, align 2, !tbaa !7
  %conv.6 = zext i8 %6 to i32
  %call4.6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv.6)
  %arrayidx.7 = getelementptr inbounds [16 x i8], ptr %result, i64 0, i64 7
  %7 = load i8, ptr %arrayidx.7, align 1, !tbaa !7
  %conv.7 = zext i8 %7 to i32
  %call4.7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv.7)
  %arrayidx.8 = getelementptr inbounds [16 x i8], ptr %result, i64 0, i64 8
  %8 = load i8, ptr %arrayidx.8, align 8, !tbaa !7
  %conv.8 = zext i8 %8 to i32
  %call4.8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv.8)
  %arrayidx.9 = getelementptr inbounds [16 x i8], ptr %result, i64 0, i64 9
  %9 = load i8, ptr %arrayidx.9, align 1, !tbaa !7
  %conv.9 = zext i8 %9 to i32
  %call4.9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv.9)
  %arrayidx.10 = getelementptr inbounds [16 x i8], ptr %result, i64 0, i64 10
  %10 = load i8, ptr %arrayidx.10, align 2, !tbaa !7
  %conv.10 = zext i8 %10 to i32
  %call4.10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv.10)
  %arrayidx.11 = getelementptr inbounds [16 x i8], ptr %result, i64 0, i64 11
  %11 = load i8, ptr %arrayidx.11, align 1, !tbaa !7
  %conv.11 = zext i8 %11 to i32
  %call4.11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv.11)
  %arrayidx.12 = getelementptr inbounds [16 x i8], ptr %result, i64 0, i64 12
  %12 = load i8, ptr %arrayidx.12, align 4, !tbaa !7
  %conv.12 = zext i8 %12 to i32
  %call4.12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv.12)
  %arrayidx.13 = getelementptr inbounds [16 x i8], ptr %result, i64 0, i64 13
  %13 = load i8, ptr %arrayidx.13, align 1, !tbaa !7
  %conv.13 = zext i8 %13 to i32
  %call4.13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv.13)
  %arrayidx.14 = getelementptr inbounds [16 x i8], ptr %result, i64 0, i64 14
  %14 = load i8, ptr %arrayidx.14, align 2, !tbaa !7
  %conv.14 = zext i8 %14 to i32
  %call4.14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv.14)
  %arrayidx.15 = getelementptr inbounds [16 x i8], ptr %result, i64 0, i64 15
  %15 = load i8, ptr %arrayidx.15, align 1, !tbaa !7
  %conv.15 = zext i8 %15 to i32
  %call4.15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv.15)
  %putchar = tail call i32 @putchar(i32 10)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #10
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}

^0 = module: (path: "", hash: (0, 0, 0, 0, 0))
^1 = gv: (name: "putchar") ; guid = 1377009889143723207
^2 = gv: (name: "malloc") ; guid = 2336192559129972258
^3 = gv: (name: "to_bytes", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 15, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 1, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0)))) ; guid = 7354554497837417550
^4 = gv: (name: "printf") ; guid = 7383291119112528047
^5 = gv: (name: "md5", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 191, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^2, relbf: 256), (callee: ^10, relbf: 256)), refs: (^9, ^7)))) ; guid = 9419881110983918107
^6 = gv: (name: ".str", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9992323333244625329
^7 = gv: (name: "k", summaries: (variable: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10703003673886319756
^8 = gv: (name: "to_int32", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 1, noRecurse: 1, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0)))) ; guid = 11798553752966730862
^9 = gv: (name: "r", summaries: (variable: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 14782035412825162571
^10 = gv: (name: "free") ; guid = 14965618067398077866
^11 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 74, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^5, relbf: 8160), (callee: ^4, relbf: 4096), (callee: ^1, relbf: 256)), refs: (^6, ^12)))) ; guid = 15822663052811949562
^12 = gv: (name: ".str.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17892648605736848100
^13 = flags: 8
^14 = blockcount: 21
