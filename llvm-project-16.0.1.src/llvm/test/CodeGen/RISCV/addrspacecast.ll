; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=riscv32 -verify-machineinstrs < %s \
; RUN:   | FileCheck %s --check-prefix=RV32I
; RUN: llc -mtriple=riscv64 -verify-machineinstrs < %s \
; RUN:   | FileCheck %s --check-prefix=RV64I

define void @cast0(ptr addrspace(1) %ptr) {
; RV32I-LABEL: cast0:
; RV32I:       # %bb.0:
; RV32I-NEXT:    sw zero, 0(a0)
; RV32I-NEXT:    ret
;
; RV64I-LABEL: cast0:
; RV64I:       # %bb.0:
; RV64I-NEXT:    sw zero, 0(a0)
; RV64I-NEXT:    ret
  %ptr0 = addrspacecast ptr addrspace(1) %ptr to ptr addrspace(0)
  store i32 0, ptr %ptr0
  ret void
}

define void @cast1(ptr %ptr) {
; RV32I-LABEL: cast1:
; RV32I:       # %bb.0:
; RV32I-NEXT:    addi sp, sp, -16
; RV32I-NEXT:    .cfi_def_cfa_offset 16
; RV32I-NEXT:    sw ra, 12(sp) # 4-byte Folded Spill
; RV32I-NEXT:    .cfi_offset ra, -4
; RV32I-NEXT:    call foo@plt
; RV32I-NEXT:    lw ra, 12(sp) # 4-byte Folded Reload
; RV32I-NEXT:    addi sp, sp, 16
; RV32I-NEXT:    ret
;
; RV64I-LABEL: cast1:
; RV64I:       # %bb.0:
; RV64I-NEXT:    addi sp, sp, -16
; RV64I-NEXT:    .cfi_def_cfa_offset 16
; RV64I-NEXT:    sd ra, 8(sp) # 8-byte Folded Spill
; RV64I-NEXT:    .cfi_offset ra, -8
; RV64I-NEXT:    call foo@plt
; RV64I-NEXT:    ld ra, 8(sp) # 8-byte Folded Reload
; RV64I-NEXT:    addi sp, sp, 16
; RV64I-NEXT:    ret
  %castptr = addrspacecast ptr %ptr to ptr addrspace(10)
  call void @foo(ptr addrspace(10) %castptr)
  ret void
}

declare void @foo(ptr addrspace(10))