; NOTE: Assertions have been autogenerated by utils/update_mir_test_checks.py
; RUN: llc -mtriple=x86_64-linux -stop-after=early-tailduplication \
; RUN:  -verify-machineinstrs < %s | FileCheck %s

; Ensure that we don't duplicate a block with an "INLINEASM_BR" instruction
; during code gen.
declare dso_local void @foo()

define ptr @test1(ptr %arg1, ptr %arg2) {
  ; CHECK-LABEL: name: test1
  ; CHECK: bb.0.bb:
  ; CHECK-NEXT:   successors: %bb.1(0x50000000), %bb.2(0x30000000)
  ; CHECK-NEXT:   liveins: $rdi, $rsi
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT:   [[COPY:%[0-9]+]]:gr64 = COPY $rsi
  ; CHECK-NEXT:   [[COPY1:%[0-9]+]]:gr64 = COPY $rdi
  ; CHECK-NEXT:   [[MOV64rm:%[0-9]+]]:gr64 = MOV64rm [[COPY1]], 1, $noreg, 0, $noreg :: (load (s64) from %ir.arg1)
  ; CHECK-NEXT:   [[SUB64rr:%[0-9]+]]:gr64 = SUB64rr [[MOV64rm]], [[COPY]], implicit-def $eflags
  ; CHECK-NEXT:   JCC_1 %bb.2, 4, implicit $eflags
  ; CHECK-NEXT:   JMP_1 %bb.1
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT: bb.1.bb100:
  ; CHECK-NEXT:   successors: %bb.3(0x80000000)
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT:   MOV64mi32 [[COPY1]], 1, $noreg, 0, $noreg, 0 :: (store (s64) into %ir.arg1)
  ; CHECK-NEXT:   JMP_1 %bb.3
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT: bb.2.bb106:
  ; CHECK-NEXT:   successors: %bb.3(0x80000000)
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT:   ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ; CHECK-NEXT:   CALL64pcrel32 @foo, csr_64, implicit $rsp, implicit $ssp, implicit-def $rsp, implicit-def $ssp
  ; CHECK-NEXT:   ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT: bb.3.bb110:
  ; CHECK-NEXT:   successors: %bb.5(0x80000000), %bb.4(0x00000000)
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT:   [[PHI:%[0-9]+]]:gr64 = PHI [[COPY]], %bb.2, [[MOV64rm]], %bb.1
  ; CHECK-NEXT:   INLINEASM_BR &"#$0 $1 $2", 9 /* sideeffect mayload attdialect */, 13 /* imm */, 42, 13 /* imm */, 0, 13 /* imm */, %bb.4, 12 /* clobber */, implicit-def early-clobber $df, 12 /* clobber */, implicit-def early-clobber $fpsw, 12 /* clobber */, implicit-def early-clobber $eflags
  ; CHECK-NEXT:   JMP_1 %bb.5
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT: bb.4.bb17.i.i.i (machine-block-address-taken, inlineasm-br-indirect-target):
  ; CHECK-NEXT:   successors: %bb.5(0x80000000)
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT: bb.5.kmem_cache_has_cpu_partial.exit:
  ; CHECK-NEXT:   $rax = COPY [[PHI]]
  ; CHECK-NEXT:   RET 0, $rax
bb:
  %i28.i = load ptr, ptr %arg1, align 8
  %if = icmp ne ptr %i28.i, %arg2
  br i1 %if, label %bb100, label %bb106

bb100:                                            ; preds = %bb
  store ptr null, ptr %arg1, align 8
  br label %bb110

bb106:                                            ; preds = %bb
  call void @foo()
  br label %bb110

bb110:                                            ; preds = %bb106, %bb100
  %i10.1 = phi ptr [ %arg2, %bb106 ], [ %i28.i, %bb100 ]
  callbr void asm sideeffect "#$0 $1 $2", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(i32 42, i1 false)
          to label %kmem_cache_has_cpu_partial.exit [label %bb17.i.i.i]

bb17.i.i.i:                                       ; preds = %bb110
  br label %kmem_cache_has_cpu_partial.exit

kmem_cache_has_cpu_partial.exit:                  ; preds = %bb110
  ret ptr %i10.1
}

; The intent of this test is to test what happens when we have a callbr where
; BOTH the fallthrough/direct target and the indirect target are the same basic
; block. We might one day permit tail duplication here, but we need to ensure
; that we don't crash or run afoul of any MachineVerifier checks.
define void @ceph_con_v2_try_read(i32 %__trans_tmp_3.sroa.0.0.copyload, i1 %tobool.not.i.i) nounwind {
  ; CHECK-LABEL: name: ceph_con_v2_try_read
  ; CHECK: bb.0.entry:
  ; CHECK-NEXT:   successors: %bb.1(0x80000000)
  ; CHECK-NEXT:   liveins: $edi, $esi
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT:   [[COPY:%[0-9]+]]:gr32 = COPY $esi
  ; CHECK-NEXT:   [[COPY1:%[0-9]+]]:gr32 = COPY $edi
  ; CHECK-NEXT:   [[COPY2:%[0-9]+]]:gr8 = COPY [[COPY]].sub_8bit
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT: bb.1.for.cond:
  ; CHECK-NEXT:   successors: %bb.2(0x30000000), %bb.1(0x50000000)
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT:   TEST32rr [[COPY1]], [[COPY1]], implicit-def $eflags
  ; CHECK-NEXT:   JCC_1 %bb.1, 5, implicit $eflags
  ; CHECK-NEXT:   JMP_1 %bb.2
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT: bb.2.sw.bb:
  ; CHECK-NEXT:   successors: %bb.3(0x40000000), %bb.4(0x40000000)
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT:   ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ; CHECK-NEXT:   [[MOV32r0_:%[0-9]+]]:gr32 = MOV32r0 implicit-def dead $eflags
  ; CHECK-NEXT:   [[SUBREG_TO_REG:%[0-9]+]]:gr64 = SUBREG_TO_REG 0, killed [[MOV32r0_]], %subreg.sub_32bit
  ; CHECK-NEXT:   [[LEA64r:%[0-9]+]]:gr64 = LEA64r %stack.0.skip.i.i, 1, $noreg, 0, $noreg
  ; CHECK-NEXT:   $rdi = COPY [[LEA64r]]
  ; CHECK-NEXT:   CALL64r killed [[SUBREG_TO_REG]], csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit-def $rsp, implicit-def $ssp, implicit-def $eax
  ; CHECK-NEXT:   ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp
  ; CHECK-NEXT:   [[COPY3:%[0-9]+]]:gr32 = COPY $eax
  ; CHECK-NEXT:   TEST8ri [[COPY2]], 1, implicit-def $eflags
  ; CHECK-NEXT:   JCC_1 %bb.4, 4, implicit $eflags
  ; CHECK-NEXT:   JMP_1 %bb.3
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT: bb.3.if.else.i.i:
  ; CHECK-NEXT:   successors: %bb.5(0x80000000)
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT:   INLINEASM_BR &"", 1 /* sideeffect attdialect */, 13 /* imm */, %bb.5
  ; CHECK-NEXT:   JMP_1 %bb.5
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT: bb.4.process_message_header.exit.i:
  ; CHECK-NEXT:   successors: %bb.1(0x80000000)
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT:   LIFETIME_END %stack.0.skip.i.i
  ; CHECK-NEXT:   JMP_1 %bb.1
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT: bb.5.if.end.i (machine-block-address-taken, inlineasm-br-indirect-target):
  ; CHECK-NEXT:   successors: %bb.1(0x80000000)
  ; CHECK-NEXT: {{  $}}
  ; CHECK-NEXT:   LIFETIME_END %stack.0.skip.i.i
  ; CHECK-NEXT:   JMP_1 %bb.1
entry:
  %skip.i.i = alloca i32, i32 0, align 4
  %cond = icmp eq i32 %__trans_tmp_3.sroa.0.0.copyload, 0
  br label %for.cond

for.cond:
  br i1 %cond, label %sw.bb, label %for.cond

sw.bb:
  %call.i.i2 = call i32 null(ptr %skip.i.i)
  br i1 %tobool.not.i.i, label %if.else.i.i, label %process_message_header.exit.i

if.else.i.i:
  callbr void asm sideeffect "", "!i"()
          to label %if.end.i [label %if.end.i]

process_message_header.exit.i:
  call void @llvm.lifetime.end.p0(i64 0, ptr %skip.i.i)
  br label %for.cond

if.end.i:
  call void @llvm.lifetime.end.p0(i64 0, ptr %skip.i.i)
  br label %for.cond
}

declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture)