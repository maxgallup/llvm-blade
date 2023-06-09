; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-unknown-unknown -mcpu=skylake-avx512 | FileCheck %s --check-prefix=CHECK-BMI2
; RUN: llc < %s -mtriple=x86_64-unknown-unknown -mcpu=x86-64-v4 | FileCheck %s --check-prefix=CHECK-BMI2
; RUN: llc < %s -mtriple=x86_64-unknown-unknown -mattr=+bmi | FileCheck %s --check-prefix=CHECK-BMI

declare i32 @llvm.cttz.i32(i32, i1 immarg)
define void @test_61038(ptr %tmp_buffer) {
; CHECK-BMI2-LABEL: test_61038:
; CHECK-BMI2:       # %bb.0: # %entry
; CHECK-BMI2-NEXT:    tzcntl %eax, %eax
; CHECK-BMI2-NEXT:    movabsq $8589934591, %rcx # imm = 0x1FFFFFFFF
; CHECK-BMI2-NEXT:    movq $-1, %rdx
; CHECK-BMI2-NEXT:    btcq %rax, %rdx
; CHECK-BMI2-NEXT:    shrxq %rdx, %rcx, %rdx
; CHECK-BMI2-NEXT:    btcq %rax, %rcx
; CHECK-BMI2-NEXT:    xorl %eax, %eax
; CHECK-BMI2-NEXT:    cmpq $64, %rcx
; CHECK-BMI2-NEXT:    cmovael %eax, %edx
; CHECK-BMI2-NEXT:    movl %edx, (%rdi)
; CHECK-BMI2-NEXT:    retq
;
; CHECK-BMI-LABEL: test_61038:
; CHECK-BMI:       # %bb.0: # %entry
; CHECK-BMI-NEXT:    tzcntl %eax, %eax
; CHECK-BMI-NEXT:    movabsq $8589934591, %rdx # imm = 0x1FFFFFFFF
; CHECK-BMI-NEXT:    movq %rdx, %rsi
; CHECK-BMI-NEXT:    btcq %rax, %rsi
; CHECK-BMI-NEXT:    movq $-1, %rcx
; CHECK-BMI-NEXT:    btcq %rax, %rcx
; CHECK-BMI-NEXT:    # kill: def $cl killed $cl killed $rcx
; CHECK-BMI-NEXT:    shrq %cl, %rdx
; CHECK-BMI-NEXT:    xorl %eax, %eax
; CHECK-BMI-NEXT:    cmpq $64, %rsi
; CHECK-BMI-NEXT:    cmovael %eax, %edx
; CHECK-BMI-NEXT:    movl %edx, (%rdi)
; CHECK-BMI-NEXT:    retq
entry:
  %0 = tail call i32 @llvm.cttz.i32(i32 poison, i1 false)
  %1 = zext i32 %0 to i64
  %2 = shl nuw nsw i64 1, %1
  %3 = xor i64 %2, 8589934591
  %4 = icmp ugt i64 %3, 63
  %x11.op.i = lshr i64 8589934591, %3
  %5 = trunc i64 %x11.op.i to i32
  %6 = select i1 %4, i32 0, i32 %5
  store i32 %6, ptr %tmp_buffer, align 4
  ret void
}
