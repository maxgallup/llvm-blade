# NOTE: Assertions have been autogenerated by utils/update_mca_test_checks.py
# RUN: llvm-mca -mtriple=x86_64-unknown-unknown -mcpu=znver4 -instruction-tables < %s | FileCheck %s

vpopcntb        %xmm1, %xmm0
vpopcntb        (%rdi), %xmm0
vpopcntb        %xmm1, %xmm0 {%k1}
vpopcntb        (%rdi), %xmm0 {%k1}
vpopcntb        %xmm1, %xmm0 {%k1} {z}
vpopcntb        (%rdi), %xmm0 {%k1} {z}

vpopcntb        %ymm1, %ymm0
vpopcntb        (%rdi), %ymm0
vpopcntb        %ymm1, %ymm0 {%k1}
vpopcntb        (%rdi), %ymm0 {%k1}
vpopcntb        %ymm1, %ymm0 {%k1} {z}
vpopcntb        (%rdi), %ymm0 {%k1} {z}

vpopcntw        %xmm1, %xmm0
vpopcntw        (%rdi), %xmm0
vpopcntw        %xmm1, %xmm0 {%k1}
vpopcntw        (%rdi), %xmm0 {%k1}
vpopcntw        %xmm1, %xmm0 {%k1} {z}
vpopcntw        (%rdi), %xmm0 {%k1} {z}

vpopcntw        %ymm1, %ymm0
vpopcntw        (%rdi), %ymm0
vpopcntw        %ymm1, %ymm0 {%k1}
vpopcntw        (%rdi), %ymm0 {%k1}
vpopcntw        %ymm1, %ymm0 {%k1} {z}
vpopcntw        (%rdi), %ymm0 {%k1} {z}

vpshufbitqmb    %xmm16, %xmm17, %k2
vpshufbitqmb    (%rdi), %xmm17, %k2
vpshufbitqmb    %xmm16, %xmm17, %k2 {%k1}
vpshufbitqmb    (%rdi), %xmm17, %k2 {%k1}

vpshufbitqmb    %ymm16, %ymm17, %k2
vpshufbitqmb    (%rdi), %ymm17, %k2
vpshufbitqmb    %ymm16, %ymm17, %k2 {%k1}
vpshufbitqmb    (%rdi), %ymm17, %k2 {%k1}

# CHECK:      Instruction Info:
# CHECK-NEXT: [1]: #uOps
# CHECK-NEXT: [2]: Latency
# CHECK-NEXT: [3]: RThroughput
# CHECK-NEXT: [4]: MayLoad
# CHECK-NEXT: [5]: MayStore
# CHECK-NEXT: [6]: HasSideEffects (U)

# CHECK:      [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# CHECK-NEXT:  1      2     1.00                        vpopcntb	%xmm1, %xmm0
# CHECK-NEXT:  1      8     0.50    *                   vpopcntb	(%rdi), %xmm0
# CHECK-NEXT:  1      2     1.00                        vpopcntb	%xmm1, %xmm0 {%k1}
# CHECK-NEXT:  1      8     0.50    *                   vpopcntb	(%rdi), %xmm0 {%k1}
# CHECK-NEXT:  1      2     1.00                        vpopcntb	%xmm1, %xmm0 {%k1} {z}
# CHECK-NEXT:  1      8     0.50    *                   vpopcntb	(%rdi), %xmm0 {%k1} {z}
# CHECK-NEXT:  1      1     0.25                        vpopcntb	%ymm1, %ymm0
# CHECK-NEXT:  1      8     0.50    *                   vpopcntb	(%rdi), %ymm0
# CHECK-NEXT:  1      1     0.25                        vpopcntb	%ymm1, %ymm0 {%k1}
# CHECK-NEXT:  1      8     0.50    *                   vpopcntb	(%rdi), %ymm0 {%k1}
# CHECK-NEXT:  1      1     0.25                        vpopcntb	%ymm1, %ymm0 {%k1} {z}
# CHECK-NEXT:  1      8     0.50    *                   vpopcntb	(%rdi), %ymm0 {%k1} {z}
# CHECK-NEXT:  1      2     1.00                        vpopcntw	%xmm1, %xmm0
# CHECK-NEXT:  1      8     0.50    *                   vpopcntw	(%rdi), %xmm0
# CHECK-NEXT:  1      2     1.00                        vpopcntw	%xmm1, %xmm0 {%k1}
# CHECK-NEXT:  1      8     0.50    *                   vpopcntw	(%rdi), %xmm0 {%k1}
# CHECK-NEXT:  1      2     1.00                        vpopcntw	%xmm1, %xmm0 {%k1} {z}
# CHECK-NEXT:  1      8     0.50    *                   vpopcntw	(%rdi), %xmm0 {%k1} {z}
# CHECK-NEXT:  1      1     0.25                        vpopcntw	%ymm1, %ymm0
# CHECK-NEXT:  1      8     0.50    *                   vpopcntw	(%rdi), %ymm0
# CHECK-NEXT:  1      1     0.25                        vpopcntw	%ymm1, %ymm0 {%k1}
# CHECK-NEXT:  1      8     0.50    *                   vpopcntw	(%rdi), %ymm0 {%k1}
# CHECK-NEXT:  1      1     0.25                        vpopcntw	%ymm1, %ymm0 {%k1} {z}
# CHECK-NEXT:  1      8     0.50    *                   vpopcntw	(%rdi), %ymm0 {%k1} {z}
# CHECK-NEXT:  1      2     1.00                        vpshufbitqmb	%xmm16, %xmm17, %k2
# CHECK-NEXT:  1      10    0.50    *                   vpshufbitqmb	(%rdi), %xmm17, %k2
# CHECK-NEXT:  1      2     1.00                        vpshufbitqmb	%xmm16, %xmm17, %k2 {%k1}
# CHECK-NEXT:  1      10    0.50    *                   vpshufbitqmb	(%rdi), %xmm17, %k2 {%k1}
# CHECK-NEXT:  1      3     0.50                        vpshufbitqmb	%ymm16, %ymm17, %k2
# CHECK-NEXT:  1      10    0.50    *                   vpshufbitqmb	(%rdi), %ymm17, %k2
# CHECK-NEXT:  1      3     0.50                        vpshufbitqmb	%ymm16, %ymm17, %k2 {%k1}
# CHECK-NEXT:  1      10    0.50    *                   vpshufbitqmb	(%rdi), %ymm17, %k2 {%k1}

# CHECK:      Resources:
# CHECK-NEXT: [0]   - Zn4AGU0
# CHECK-NEXT: [1]   - Zn4AGU1
# CHECK-NEXT: [2]   - Zn4AGU2
# CHECK-NEXT: [3]   - Zn4ALU0
# CHECK-NEXT: [4]   - Zn4ALU1
# CHECK-NEXT: [5]   - Zn4ALU2
# CHECK-NEXT: [6]   - Zn4ALU3
# CHECK-NEXT: [7]   - Zn4BRU1
# CHECK-NEXT: [8]   - Zn4FP0
# CHECK-NEXT: [9]   - Zn4FP1
# CHECK-NEXT: [10]  - Zn4FP2
# CHECK-NEXT: [11]  - Zn4FP3
# CHECK-NEXT: [12.0] - Zn4FP45
# CHECK-NEXT: [12.1] - Zn4FP45
# CHECK-NEXT: [13]  - Zn4FPSt
# CHECK-NEXT: [14.0] - Zn4LSU
# CHECK-NEXT: [14.1] - Zn4LSU
# CHECK-NEXT: [14.2] - Zn4LSU
# CHECK-NEXT: [15.0] - Zn4Load
# CHECK-NEXT: [15.1] - Zn4Load
# CHECK-NEXT: [15.2] - Zn4Load
# CHECK-NEXT: [16.0] - Zn4Store
# CHECK-NEXT: [16.1] - Zn4Store

# CHECK:      Resource pressure per iteration:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   [12.0] [12.1] [13]   [14.0] [14.1] [14.2] [15.0] [15.1] [15.2] [16.0] [16.1]
# CHECK-NEXT:  -      -      -      -      -      -      -      -     15.50  12.50  4.50   7.50   8.00   8.00    -     5.33   5.33   5.33   5.33   5.33   5.33    -      -

# CHECK:      Resource pressure by instruction:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   [12.0] [12.1] [13]   [14.0] [14.1] [14.2] [15.0] [15.1] [15.2] [16.0] [16.1] Instructions:
# CHECK-NEXT:  -      -      -      -      -      -      -      -     1.00   1.00    -      -      -      -      -      -      -      -      -      -      -      -      -     vpopcntb	%xmm1, %xmm0
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     vpopcntb	(%rdi), %xmm0
# CHECK-NEXT:  -      -      -      -      -      -      -      -     1.00   1.00    -      -      -      -      -      -      -      -      -      -      -      -      -     vpopcntb	%xmm1, %xmm0 {%k1}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     vpopcntb	(%rdi), %xmm0 {%k1}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     1.00   1.00    -      -      -      -      -      -      -      -      -      -      -      -      -     vpopcntb	%xmm1, %xmm0 {%k1} {z}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     vpopcntb	(%rdi), %xmm0 {%k1} {z}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -      -      -      -     vpopcntb	%ymm1, %ymm0
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     vpopcntb	(%rdi), %ymm0
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -      -      -      -     vpopcntb	%ymm1, %ymm0 {%k1}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     vpopcntb	(%rdi), %ymm0 {%k1}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -      -      -      -     vpopcntb	%ymm1, %ymm0 {%k1} {z}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     vpopcntb	(%rdi), %ymm0 {%k1} {z}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     1.00   1.00    -      -      -      -      -      -      -      -      -      -      -      -      -     vpopcntw	%xmm1, %xmm0
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     vpopcntw	(%rdi), %xmm0
# CHECK-NEXT:  -      -      -      -      -      -      -      -     1.00   1.00    -      -      -      -      -      -      -      -      -      -      -      -      -     vpopcntw	%xmm1, %xmm0 {%k1}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     vpopcntw	(%rdi), %xmm0 {%k1}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     1.00   1.00    -      -      -      -      -      -      -      -      -      -      -      -      -     vpopcntw	%xmm1, %xmm0 {%k1} {z}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     vpopcntw	(%rdi), %xmm0 {%k1} {z}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -      -      -      -     vpopcntw	%ymm1, %ymm0
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     vpopcntw	(%rdi), %ymm0
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -      -      -      -     vpopcntw	%ymm1, %ymm0 {%k1}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     vpopcntw	(%rdi), %ymm0 {%k1}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -      -      -      -     vpopcntw	%ymm1, %ymm0 {%k1} {z}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     vpopcntw	(%rdi), %ymm0 {%k1} {z}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     1.00   1.00    -      -      -      -      -      -      -      -      -      -      -      -      -     vpshufbitqmb	%xmm16, %xmm17, %k2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50    -      -     0.50   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     vpshufbitqmb	(%rdi), %xmm17, %k2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     1.00   1.00    -      -      -      -      -      -      -      -      -      -      -      -      -     vpshufbitqmb	%xmm16, %xmm17, %k2 {%k1}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50    -      -     0.50   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     vpshufbitqmb	(%rdi), %xmm17, %k2 {%k1}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50    -      -     0.50    -      -      -      -      -      -      -      -      -      -      -     vpshufbitqmb	%ymm16, %ymm17, %k2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50    -      -     0.50   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     vpshufbitqmb	(%rdi), %ymm17, %k2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50    -      -     0.50    -      -      -      -      -      -      -      -      -      -      -     vpshufbitqmb	%ymm16, %ymm17, %k2 {%k1}
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50    -      -     0.50   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     vpshufbitqmb	(%rdi), %ymm17, %k2 {%k1}
