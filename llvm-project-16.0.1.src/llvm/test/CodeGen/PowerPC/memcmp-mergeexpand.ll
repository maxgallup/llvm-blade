; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -opaque-pointers=0 -verify-machineinstrs -mcpu=pwr8 -mtriple=powerpc64le-unknown-gnu-linux  < %s | FileCheck %s -check-prefix=PPC64LE

; This tests interaction between MergeICmp and ExpandMemCmp.

%"struct.std::pair" = type { i32, i32 }

define zeroext i1 @opeq1(
; PPC64LE-LABEL: opeq1:
; PPC64LE:       # %bb.0: # %"entry+land.rhs.i"
; PPC64LE-NEXT:    ld 3, 0(3)
; PPC64LE-NEXT:    ld 4, 0(4)
; PPC64LE-NEXT:    xor 3, 3, 4
; PPC64LE-NEXT:    cntlzd 3, 3
; PPC64LE-NEXT:    rldicl 3, 3, 58, 63
; PPC64LE-NEXT:    blr
  %"struct.std::pair"* nocapture readonly dereferenceable(8) %a,
  %"struct.std::pair"* nocapture readonly dereferenceable(8) %b) local_unnamed_addr #0 {
entry:
  %first.i = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %a, i64 0, i32 0
  %0 = load i32, i32* %first.i, align 4
  %first1.i = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %b, i64 0, i32 0
  %1 = load i32, i32* %first1.i, align 4
  %cmp.i = icmp eq i32 %0, %1
  br i1 %cmp.i, label %land.rhs.i, label %opeq1.exit

land.rhs.i:
  %second.i = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %a, i64 0, i32 1
  %2 = load i32, i32* %second.i, align 4
  %second2.i = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %b, i64 0, i32 1
  %3 = load i32, i32* %second2.i, align 4
  %cmp3.i = icmp eq i32 %2, %3
  br label %opeq1.exit

opeq1.exit:
  %4 = phi i1 [ false, %entry ], [ %cmp3.i, %land.rhs.i ]
  ret i1 %4
}


