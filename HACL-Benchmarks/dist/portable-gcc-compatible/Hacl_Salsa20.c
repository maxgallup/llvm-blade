/* MIT License
 *
 * Copyright (c) 2016-2022 INRIA, CMU and Microsoft Corporation
 * Copyright (c) 2022-2023 HACL* Contributors
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */


#include "Hacl_Salsa20.h"

/* SNIPPET_START: quarter_round */

static inline void quarter_round(uint32_t *st, uint32_t a, uint32_t b, uint32_t c, uint32_t d)
{
  uint32_t sta = st[b];
  uint32_t stb0 = st[a];
  uint32_t std0 = st[d];
  uint32_t sta1 = sta ^ ((stb0 + std0) << (uint32_t)7U | (stb0 + std0) >> (uint32_t)25U);
  st[b] = sta1;
  uint32_t sta0 = st[c];
  uint32_t stb1 = st[b];
  uint32_t std1 = st[a];
  uint32_t sta10 = sta0 ^ ((stb1 + std1) << (uint32_t)9U | (stb1 + std1) >> (uint32_t)23U);
  st[c] = sta10;
  uint32_t sta2 = st[d];
  uint32_t stb2 = st[c];
  uint32_t std2 = st[b];
  uint32_t sta11 = sta2 ^ ((stb2 + std2) << (uint32_t)13U | (stb2 + std2) >> (uint32_t)19U);
  st[d] = sta11;
  uint32_t sta3 = st[a];
  uint32_t stb = st[d];
  uint32_t std = st[c];
  uint32_t sta12 = sta3 ^ ((stb + std) << (uint32_t)18U | (stb + std) >> (uint32_t)14U);
  st[a] = sta12;
}

/* SNIPPET_END: quarter_round */

/* SNIPPET_START: double_round */

static inline void double_round(uint32_t *st)
{
  quarter_round(st, (uint32_t)0U, (uint32_t)4U, (uint32_t)8U, (uint32_t)12U);
  quarter_round(st, (uint32_t)5U, (uint32_t)9U, (uint32_t)13U, (uint32_t)1U);
  quarter_round(st, (uint32_t)10U, (uint32_t)14U, (uint32_t)2U, (uint32_t)6U);
  quarter_round(st, (uint32_t)15U, (uint32_t)3U, (uint32_t)7U, (uint32_t)11U);
  quarter_round(st, (uint32_t)0U, (uint32_t)1U, (uint32_t)2U, (uint32_t)3U);
  quarter_round(st, (uint32_t)5U, (uint32_t)6U, (uint32_t)7U, (uint32_t)4U);
  quarter_round(st, (uint32_t)10U, (uint32_t)11U, (uint32_t)8U, (uint32_t)9U);
  quarter_round(st, (uint32_t)15U, (uint32_t)12U, (uint32_t)13U, (uint32_t)14U);
}

/* SNIPPET_END: double_round */

/* SNIPPET_START: rounds */

static inline void rounds(uint32_t *st)
{
  double_round(st);
  double_round(st);
  double_round(st);
  double_round(st);
  double_round(st);
  double_round(st);
  double_round(st);
  double_round(st);
  double_round(st);
  double_round(st);
}

/* SNIPPET_END: rounds */

/* SNIPPET_START: salsa20_core */

static inline void salsa20_core(uint32_t *k, uint32_t *ctx, uint32_t ctr)
{
  memcpy(k, ctx, (uint32_t)16U * sizeof (uint32_t));
  uint32_t ctr_u32 = ctr;
  k[8U] = k[8U] + ctr_u32;
  rounds(k);
  KRML_MAYBE_FOR16(i,
    (uint32_t)0U,
    (uint32_t)16U,
    (uint32_t)1U,
    uint32_t *os = k;
    uint32_t x = k[i] + ctx[i];
    os[i] = x;);
  k[8U] = k[8U] + ctr_u32;
}

/* SNIPPET_END: salsa20_core */

/* SNIPPET_START: salsa20_key_block0 */

static inline void salsa20_key_block0(uint8_t *out, uint8_t *key, uint8_t *n)
{
  uint32_t ctx[16U] = { 0U };
  uint32_t k[16U] = { 0U };
  uint32_t k32[8U] = { 0U };
  uint32_t n32[2U] = { 0U };
  KRML_MAYBE_FOR8(i,
    (uint32_t)0U,
    (uint32_t)8U,
    (uint32_t)1U,
    uint32_t *os = k32;
    uint8_t *bj = key + i * (uint32_t)4U;
    uint32_t u = load32_le(bj);
    uint32_t r = u;
    uint32_t x = r;
    os[i] = x;);
  KRML_MAYBE_FOR2(i,
    (uint32_t)0U,
    (uint32_t)2U,
    (uint32_t)1U,
    uint32_t *os = n32;
    uint8_t *bj = n + i * (uint32_t)4U;
    uint32_t u = load32_le(bj);
    uint32_t r = u;
    uint32_t x = r;
    os[i] = x;);
  ctx[0U] = (uint32_t)0x61707865U;
  uint32_t *k0 = k32;
  uint32_t *k1 = k32 + (uint32_t)4U;
  memcpy(ctx + (uint32_t)1U, k0, (uint32_t)4U * sizeof (uint32_t));
  ctx[5U] = (uint32_t)0x3320646eU;
  memcpy(ctx + (uint32_t)6U, n32, (uint32_t)2U * sizeof (uint32_t));
  ctx[8U] = (uint32_t)0U;
  ctx[9U] = (uint32_t)0U;
  ctx[10U] = (uint32_t)0x79622d32U;
  memcpy(ctx + (uint32_t)11U, k1, (uint32_t)4U * sizeof (uint32_t));
  ctx[15U] = (uint32_t)0x6b206574U;
  salsa20_core(k, ctx, (uint32_t)0U);
  KRML_MAYBE_FOR16(i,
    (uint32_t)0U,
    (uint32_t)16U,
    (uint32_t)1U,
    store32_le(out + i * (uint32_t)4U, k[i]););
}

/* SNIPPET_END: salsa20_key_block0 */

/* SNIPPET_START: salsa20_encrypt */

static inline void
salsa20_encrypt(
  uint32_t len,
  uint8_t *out,
  uint8_t *text,
  uint8_t *key,
  uint8_t *n,
  uint32_t ctr
)
{
  uint32_t ctx[16U] = { 0U };
  uint32_t k32[8U] = { 0U };
  uint32_t n32[2U] = { 0U };
  KRML_MAYBE_FOR8(i,
    (uint32_t)0U,
    (uint32_t)8U,
    (uint32_t)1U,
    uint32_t *os = k32;
    uint8_t *bj = key + i * (uint32_t)4U;
    uint32_t u = load32_le(bj);
    uint32_t r = u;
    uint32_t x = r;
    os[i] = x;);
  KRML_MAYBE_FOR2(i,
    (uint32_t)0U,
    (uint32_t)2U,
    (uint32_t)1U,
    uint32_t *os = n32;
    uint8_t *bj = n + i * (uint32_t)4U;
    uint32_t u = load32_le(bj);
    uint32_t r = u;
    uint32_t x = r;
    os[i] = x;);
  ctx[0U] = (uint32_t)0x61707865U;
  uint32_t *k0 = k32;
  uint32_t *k10 = k32 + (uint32_t)4U;
  memcpy(ctx + (uint32_t)1U, k0, (uint32_t)4U * sizeof (uint32_t));
  ctx[5U] = (uint32_t)0x3320646eU;
  memcpy(ctx + (uint32_t)6U, n32, (uint32_t)2U * sizeof (uint32_t));
  ctx[8U] = ctr;
  ctx[9U] = (uint32_t)0U;
  ctx[10U] = (uint32_t)0x79622d32U;
  memcpy(ctx + (uint32_t)11U, k10, (uint32_t)4U * sizeof (uint32_t));
  ctx[15U] = (uint32_t)0x6b206574U;
  uint32_t k[16U] = { 0U };
  uint32_t rem = len % (uint32_t)64U;
  uint32_t nb = len / (uint32_t)64U;
  uint32_t rem1 = len % (uint32_t)64U;
  for (uint32_t i0 = (uint32_t)0U; i0 < nb; i0++)
  {
    uint8_t *uu____0 = out + i0 * (uint32_t)64U;
    uint8_t *uu____1 = text + i0 * (uint32_t)64U;
    uint32_t k1[16U] = { 0U };
    salsa20_core(k1, ctx, i0);
    uint32_t bl[16U] = { 0U };
    KRML_MAYBE_FOR16(i,
      (uint32_t)0U,
      (uint32_t)16U,
      (uint32_t)1U,
      uint32_t *os = bl;
      uint8_t *bj = uu____1 + i * (uint32_t)4U;
      uint32_t u = load32_le(bj);
      uint32_t r = u;
      uint32_t x = r;
      os[i] = x;);
    KRML_MAYBE_FOR16(i,
      (uint32_t)0U,
      (uint32_t)16U,
      (uint32_t)1U,
      uint32_t *os = bl;
      uint32_t x = bl[i] ^ k1[i];
      os[i] = x;);
    KRML_MAYBE_FOR16(i,
      (uint32_t)0U,
      (uint32_t)16U,
      (uint32_t)1U,
      store32_le(uu____0 + i * (uint32_t)4U, bl[i]););
  }
  if (rem1 > (uint32_t)0U)
  {
    uint8_t *uu____2 = out + nb * (uint32_t)64U;
    uint8_t *uu____3 = text + nb * (uint32_t)64U;
    uint8_t plain[64U] = { 0U };
    memcpy(plain, uu____3, rem * sizeof (uint8_t));
    uint32_t k1[16U] = { 0U };
    salsa20_core(k1, ctx, nb);
    uint32_t bl[16U] = { 0U };
    KRML_MAYBE_FOR16(i,
      (uint32_t)0U,
      (uint32_t)16U,
      (uint32_t)1U,
      uint32_t *os = bl;
      uint8_t *bj = plain + i * (uint32_t)4U;
      uint32_t u = load32_le(bj);
      uint32_t r = u;
      uint32_t x = r;
      os[i] = x;);
    KRML_MAYBE_FOR16(i,
      (uint32_t)0U,
      (uint32_t)16U,
      (uint32_t)1U,
      uint32_t *os = bl;
      uint32_t x = bl[i] ^ k1[i];
      os[i] = x;);
    KRML_MAYBE_FOR16(i,
      (uint32_t)0U,
      (uint32_t)16U,
      (uint32_t)1U,
      store32_le(plain + i * (uint32_t)4U, bl[i]););
    memcpy(uu____2, plain, rem * sizeof (uint8_t));
  }
}

/* SNIPPET_END: salsa20_encrypt */

/* SNIPPET_START: salsa20_decrypt */

static inline void
salsa20_decrypt(
  uint32_t len,
  uint8_t *out,
  uint8_t *cipher,
  uint8_t *key,
  uint8_t *n,
  uint32_t ctr
)
{
  uint32_t ctx[16U] = { 0U };
  uint32_t k32[8U] = { 0U };
  uint32_t n32[2U] = { 0U };
  KRML_MAYBE_FOR8(i,
    (uint32_t)0U,
    (uint32_t)8U,
    (uint32_t)1U,
    uint32_t *os = k32;
    uint8_t *bj = key + i * (uint32_t)4U;
    uint32_t u = load32_le(bj);
    uint32_t r = u;
    uint32_t x = r;
    os[i] = x;);
  KRML_MAYBE_FOR2(i,
    (uint32_t)0U,
    (uint32_t)2U,
    (uint32_t)1U,
    uint32_t *os = n32;
    uint8_t *bj = n + i * (uint32_t)4U;
    uint32_t u = load32_le(bj);
    uint32_t r = u;
    uint32_t x = r;
    os[i] = x;);
  ctx[0U] = (uint32_t)0x61707865U;
  uint32_t *k0 = k32;
  uint32_t *k10 = k32 + (uint32_t)4U;
  memcpy(ctx + (uint32_t)1U, k0, (uint32_t)4U * sizeof (uint32_t));
  ctx[5U] = (uint32_t)0x3320646eU;
  memcpy(ctx + (uint32_t)6U, n32, (uint32_t)2U * sizeof (uint32_t));
  ctx[8U] = ctr;
  ctx[9U] = (uint32_t)0U;
  ctx[10U] = (uint32_t)0x79622d32U;
  memcpy(ctx + (uint32_t)11U, k10, (uint32_t)4U * sizeof (uint32_t));
  ctx[15U] = (uint32_t)0x6b206574U;
  uint32_t k[16U] = { 0U };
  uint32_t rem = len % (uint32_t)64U;
  uint32_t nb = len / (uint32_t)64U;
  uint32_t rem1 = len % (uint32_t)64U;
  for (uint32_t i0 = (uint32_t)0U; i0 < nb; i0++)
  {
    uint8_t *uu____0 = out + i0 * (uint32_t)64U;
    uint8_t *uu____1 = cipher + i0 * (uint32_t)64U;
    uint32_t k1[16U] = { 0U };
    salsa20_core(k1, ctx, i0);
    uint32_t bl[16U] = { 0U };
    KRML_MAYBE_FOR16(i,
      (uint32_t)0U,
      (uint32_t)16U,
      (uint32_t)1U,
      uint32_t *os = bl;
      uint8_t *bj = uu____1 + i * (uint32_t)4U;
      uint32_t u = load32_le(bj);
      uint32_t r = u;
      uint32_t x = r;
      os[i] = x;);
    KRML_MAYBE_FOR16(i,
      (uint32_t)0U,
      (uint32_t)16U,
      (uint32_t)1U,
      uint32_t *os = bl;
      uint32_t x = bl[i] ^ k1[i];
      os[i] = x;);
    KRML_MAYBE_FOR16(i,
      (uint32_t)0U,
      (uint32_t)16U,
      (uint32_t)1U,
      store32_le(uu____0 + i * (uint32_t)4U, bl[i]););
  }
  if (rem1 > (uint32_t)0U)
  {
    uint8_t *uu____2 = out + nb * (uint32_t)64U;
    uint8_t *uu____3 = cipher + nb * (uint32_t)64U;
    uint8_t plain[64U] = { 0U };
    memcpy(plain, uu____3, rem * sizeof (uint8_t));
    uint32_t k1[16U] = { 0U };
    salsa20_core(k1, ctx, nb);
    uint32_t bl[16U] = { 0U };
    KRML_MAYBE_FOR16(i,
      (uint32_t)0U,
      (uint32_t)16U,
      (uint32_t)1U,
      uint32_t *os = bl;
      uint8_t *bj = plain + i * (uint32_t)4U;
      uint32_t u = load32_le(bj);
      uint32_t r = u;
      uint32_t x = r;
      os[i] = x;);
    KRML_MAYBE_FOR16(i,
      (uint32_t)0U,
      (uint32_t)16U,
      (uint32_t)1U,
      uint32_t *os = bl;
      uint32_t x = bl[i] ^ k1[i];
      os[i] = x;);
    KRML_MAYBE_FOR16(i,
      (uint32_t)0U,
      (uint32_t)16U,
      (uint32_t)1U,
      store32_le(plain + i * (uint32_t)4U, bl[i]););
    memcpy(uu____2, plain, rem * sizeof (uint8_t));
  }
}

/* SNIPPET_END: salsa20_decrypt */

/* SNIPPET_START: hsalsa20 */

static inline void hsalsa20(uint8_t *out, uint8_t *key, uint8_t *n)
{
  uint32_t ctx[16U] = { 0U };
  uint32_t k32[8U] = { 0U };
  uint32_t n32[4U] = { 0U };
  KRML_MAYBE_FOR8(i,
    (uint32_t)0U,
    (uint32_t)8U,
    (uint32_t)1U,
    uint32_t *os = k32;
    uint8_t *bj = key + i * (uint32_t)4U;
    uint32_t u = load32_le(bj);
    uint32_t r = u;
    uint32_t x = r;
    os[i] = x;);
  KRML_MAYBE_FOR4(i,
    (uint32_t)0U,
    (uint32_t)4U,
    (uint32_t)1U,
    uint32_t *os = n32;
    uint8_t *bj = n + i * (uint32_t)4U;
    uint32_t u = load32_le(bj);
    uint32_t r = u;
    uint32_t x = r;
    os[i] = x;);
  uint32_t *k0 = k32;
  uint32_t *k1 = k32 + (uint32_t)4U;
  ctx[0U] = (uint32_t)0x61707865U;
  memcpy(ctx + (uint32_t)1U, k0, (uint32_t)4U * sizeof (uint32_t));
  ctx[5U] = (uint32_t)0x3320646eU;
  memcpy(ctx + (uint32_t)6U, n32, (uint32_t)4U * sizeof (uint32_t));
  ctx[10U] = (uint32_t)0x79622d32U;
  memcpy(ctx + (uint32_t)11U, k1, (uint32_t)4U * sizeof (uint32_t));
  ctx[15U] = (uint32_t)0x6b206574U;
  rounds(ctx);
  uint32_t r0 = ctx[0U];
  uint32_t r1 = ctx[5U];
  uint32_t r2 = ctx[10U];
  uint32_t r3 = ctx[15U];
  uint32_t r4 = ctx[6U];
  uint32_t r5 = ctx[7U];
  uint32_t r6 = ctx[8U];
  uint32_t r7 = ctx[9U];
  uint32_t res[8U] = { r0, r1, r2, r3, r4, r5, r6, r7 };
  KRML_MAYBE_FOR8(i,
    (uint32_t)0U,
    (uint32_t)8U,
    (uint32_t)1U,
    store32_le(out + i * (uint32_t)4U, res[i]););
}

/* SNIPPET_END: hsalsa20 */

/* SNIPPET_START: Hacl_Salsa20_salsa20_encrypt */

void
Hacl_Salsa20_salsa20_encrypt(
  uint32_t len,
  uint8_t *out,
  uint8_t *text,
  uint8_t *key,
  uint8_t *n,
  uint32_t ctr
)
{
  salsa20_encrypt(len, out, text, key, n, ctr);
}

/* SNIPPET_END: Hacl_Salsa20_salsa20_encrypt */

/* SNIPPET_START: Hacl_Salsa20_salsa20_decrypt */

void
Hacl_Salsa20_salsa20_decrypt(
  uint32_t len,
  uint8_t *out,
  uint8_t *cipher,
  uint8_t *key,
  uint8_t *n,
  uint32_t ctr
)
{
  salsa20_decrypt(len, out, cipher, key, n, ctr);
}

/* SNIPPET_END: Hacl_Salsa20_salsa20_decrypt */

/* SNIPPET_START: Hacl_Salsa20_salsa20_key_block0 */

void Hacl_Salsa20_salsa20_key_block0(uint8_t *out, uint8_t *key, uint8_t *n)
{
  salsa20_key_block0(out, key, n);
}

/* SNIPPET_END: Hacl_Salsa20_salsa20_key_block0 */

/* SNIPPET_START: Hacl_Salsa20_hsalsa20 */

void Hacl_Salsa20_hsalsa20(uint8_t *out, uint8_t *key, uint8_t *n)
{
  hsalsa20(out, key, n);
}

/* SNIPPET_END: Hacl_Salsa20_hsalsa20 */

// ----------------------------------------------------
// ----------------------------------------------------
// ----------------------------------------------------


#include <fcntl.h>
#include <inttypes.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>

#include "Hacl_Salsa20.h"
#include "test_helpers.h"

#define ROUNDS 16384
#define SIZE 81920

bool
print_result(int in_len, uint8_t* comp, uint8_t* exp)
{
  return compare_and_print(in_len, comp, exp);
}

int
main()
{
  int in_len = 512;
  uint8_t in[512] = { 0 };
  uint8_t k[32] = { 0 };
  k[0] = 0x80;
  uint8_t n[8] = { 0 };

  uint8_t exp1[64] = { 0xE3, 0xBE, 0x8F, 0xDD, 0x8B, 0xEC, 0xA2, 0xE3,
                       0xEA, 0x8E, 0xF9, 0x47, 0x5B, 0x29, 0xA6, 0xE7,
                       0x00, 0x39, 0x51, 0xE1, 0x09, 0x7A, 0x5C, 0x38,
                       0xD2, 0x3B, 0x7A, 0x5F, 0xAD, 0x9F, 0x68, 0x44,
                       0xB2, 0x2C, 0x97, 0x55, 0x9E, 0x27, 0x23, 0xC7,
                       0xCB, 0xBD, 0x3F, 0xE4, 0xFC, 0x8D, 0x9A, 0x07,
                       0x44, 0x65, 0x2A, 0x83, 0xE7, 0x2A, 0x9C, 0x46,
                       0x18, 0x76, 0xAF, 0x4D, 0x7E, 0xF1, 0xA1, 0x17 };
  uint8_t exp2[64] = { 0x57, 0xBE, 0x81, 0xF4, 0x7B, 0x17, 0xD9, 0xAE,
                       0x7C, 0x4F, 0xF1, 0x54, 0x29, 0xA7, 0x3E, 0x10,
                       0xAC, 0xF2, 0x50, 0xED, 0x3A, 0x90, 0xA9, 0x3C,
                       0x71, 0x13, 0x08, 0xA7, 0x4C, 0x62, 0x16, 0xA9,
                       0xED, 0x84, 0xCD, 0x12, 0x6D, 0xA7, 0xF2, 0x8E,
                       0x8A, 0xBF, 0x8B, 0xB6, 0x35, 0x17, 0xE1, 0xCA,
                       0x98, 0xE7, 0x12, 0xF4, 0xFB, 0x2E, 0x1A, 0x6A,
                       0xED, 0x9F, 0xDC, 0x73, 0x29, 0x1F, 0xAA, 0x17 };
  uint8_t exp3[64] = { 0x95, 0x82, 0x11, 0xC4, 0xBA, 0x2E, 0xBD, 0x58,
                       0x38, 0xC6, 0x35, 0xED, 0xB8, 0x1F, 0x51, 0x3A,
                       0x91, 0xA2, 0x94, 0xE1, 0x94, 0xF1, 0xC0, 0x39,
                       0xAE, 0xEC, 0x65, 0x7D, 0xCE, 0x40, 0xAA, 0x7E,
                       0x7C, 0x0A, 0xF5, 0x7C, 0xAC, 0xEF, 0xA4, 0x0C,
                       0x9F, 0x14, 0xB7, 0x1A, 0x4B, 0x34, 0x56, 0xA6,
                       0x3E, 0x16, 0x2E, 0xC7, 0xD8, 0xD1, 0x0B, 0x8F,
                       0xFB, 0x18, 0x10, 0xD7, 0x10, 0x01, 0xB6, 0x18 };
  uint8_t exp4[64] = { 0x69, 0x6A, 0xFC, 0xFD, 0x0C, 0xDD, 0xCC, 0x83,
                       0xC7, 0xE7, 0x7F, 0x11, 0xA6, 0x49, 0xD7, 0x9A,
                       0xCD, 0xC3, 0x35, 0x4E, 0x96, 0x35, 0xFF, 0x13,
                       0x7E, 0x92, 0x99, 0x33, 0xA0, 0xBD, 0x6F, 0x53,
                       0x77, 0xEF, 0xA1, 0x05, 0xA3, 0xA4, 0x26, 0x6B,
                       0x7C, 0x0D, 0x08, 0x9D, 0x08, 0xF1, 0xE8, 0x55,
                       0xCC, 0x32, 0xB1, 0x5B, 0x93, 0x78, 0x4A, 0x36,
                       0xE5, 0x6A, 0x76, 0xCC, 0x64, 0xBC, 0x84, 0x77 };

  uint8_t comp[512] = { 0 };

  printf("Salsa20 Result\n");
  Hacl_Salsa20_salsa20_encrypt(in_len, comp, in, k, n, 0);
  printf("computed1:\n");
  bool ok = print_result(64, comp, exp1);

  printf("computed2:\n");
  ok = ok && print_result(64, comp + 192, exp2);

  printf("computed3:\n");
  ok = ok && print_result(64, comp + 256, exp3);

  printf("computed4:\n");
  ok = ok && print_result(64, comp + 448, exp4);

  uint64_t len = SIZE;
  uint8_t plain[SIZE];
  uint8_t key[16];
  uint8_t nonce[12];
  memset(plain, 'P', SIZE);
  memset(key, 'K', 16);
  memset(nonce, 'N', 12);

  for (int j = 0; j < ROUNDS; j++) {
    Hacl_Salsa20_salsa20_encrypt(SIZE, plain, plain, key, nonce, 1);
  }

  cycles a, b;
  clock_t t1, t2;
  t1 = clock();
  a = cpucycles_begin();
  for (int j = 0; j < ROUNDS; j++) {
    Hacl_Salsa20_salsa20_encrypt(SIZE, plain, plain, key, nonce, 1);
  }
  b = cpucycles_end();
  t2 = clock();
  double tdiff = t2 - t1;
  cycles cdiff = b - a;

  uint64_t count = ROUNDS * SIZE;
  printf("Salsa20 PERF\n");
  print_time(count, tdiff, cdiff);
  if (ok)
    return EXIT_SUCCESS;
  else
    return EXIT_FAILURE;
}
