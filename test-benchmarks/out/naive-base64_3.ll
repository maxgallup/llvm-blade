; ModuleID = 'base64_3.ll'
source_filename = "base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@charset = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@__const.base64_test.text = private unnamed_addr constant [3 x [1024 x i8]] [[1024 x i8] c"fo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [1024 x i8] c"foobar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [1024 x i8] c"Man is distinguished, not only by his reason, but by this singular passion from other animals, which is a lust of the mind, that by a perseverance of delight in the continued and indefatigable generation of knowledge, exceeds the short vehemence of any carnal pleasure.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@__const.base64_test.code = private unnamed_addr constant [3 x [1024 x i8]] [[1024 x i8] c"Zm8=\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [1024 x i8] c"Zm9vYmFy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [1024 x i8] c"TWFuIGlzIGRpc3Rpbmd1aXNoZWQsIG5vdCBvbmx5IGJ5IGhpcyByZWFzb24sIGJ1dCBieSB0aGlz\0AIHNpbmd1bGFyIHBhc3Npb24gZnJvbSBvdGhlciBhbmltYWxzLCB3aGljaCBpcyBhIGx1c3Qgb2Yg\0AdGhlIG1pbmQsIHRoYXQgYnkgYSBwZXJzZXZlcmFuY2Ugb2YgZGVsaWdodCBpbiB0aGUgY29udGlu\0AdWVkIGFuZCBpbmRlZmF0aWdhYmxlIGdlbmVyYXRpb24gb2Yga25vd2xlZGdlLCBleGNlZWRzIHRo\0AZSBzaG9ydCB2ZWhlbWVuY2Ugb2YgYW55IGNhcm5hbCBwbGVhc3VyZS4=\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@.str = private unnamed_addr constant [18 x i8] c"Base64 tests: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"PASSED\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @revchar(i8 noundef signext %ch) local_unnamed_addr #0 {
entry:
  %0 = add i8 %ch, -65, !BLADE-T !7
  %or.cond = icmp ult i8 %0, 26
  br i1 %or.cond, label %if.end44, label %if.else

if.else:                                          ; preds = %entry
  %1 = add i8 %ch, -97, !BLADE-T !7
  %or.cond45 = icmp ult i8 %1, 26
  br i1 %or.cond45, label %if.then14, label %if.else18

if.then14:                                        ; preds = %if.else
  %add = add nsw i8 %ch, -71, !BLADE-T !7
  br label %if.end44

if.else18:                                        ; preds = %if.else
  %2 = add i8 %ch, -48, !BLADE-T !7
  %or.cond46 = icmp ult i8 %2, 10
  br i1 %or.cond46, label %if.then26, label %if.else31

if.then26:                                        ; preds = %if.else18
  %add29 = add nuw nsw i8 %ch, 4, !BLADE-T !7
  br label %if.end44

if.else31:                                        ; preds = %if.else18
  %cmp33 = icmp eq i8 %ch, 43, !BLADE-T !7
  br i1 %cmp33, label %if.end44, label %if.else36

if.else36:                                        ; preds = %if.else31
  %cmp38 = icmp eq i8 %ch, 47, !BLADE-T !7
  %spec.store.select = select i1 %cmp38, i8 63, i8 %ch, !BLADE-T !7
  br label %if.end44

if.end44:                                         ; preds = %if.else36, %if.else31, %if.then26, %if.then14, %entry
  %ch.addr.0 = phi i8 [ %add, %if.then14 ], [ %add29, %if.then26 ], [ %spec.store.select, %if.else36 ], [ 62, %if.else31 ], [ %0, %entry ]
  ret i8 %ch.addr.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @base64_encode(ptr nocapture noundef readonly %in, ptr noundef writeonly %out, i64 noundef %len, i32 noundef %newline_flag) local_unnamed_addr #1 {
entry:
  %div = udiv i64 %len, 3, !BLADE-T !7
  %rem = urem i64 %len, 3, !BLADE-T !7
  %cmp = icmp eq ptr %out, null, !BLADE-T !7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mul = shl i64 %div, 2
  %tobool.not = icmp eq i64 %rem, 0
  %add = add i64 %mul, 4
  %spec.select = select i1 %tobool.not, i64 %mul, i64 %add
  %tobool2.not = icmp eq i32 %newline_flag, 0, !BLADE-T !7
  br i1 %tobool2.not, label %if.end114, label %if.then3

if.then3:                                         ; preds = %if.then
  %div4 = udiv i64 %len, 57, !BLADE-T !7
  %add5 = add i64 %spec.select, %div4
  br label %if.end114

if.else:                                          ; preds = %entry
  %mul7 = mul nuw i64 %div, 3
  %cmp8182.not = icmp ult i64 %len, 3, !BLADE-T !7
  br i1 %cmp8182.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.else
  %tobool47 = icmp ne i32 %newline_flag, 0, !BLADE-T !7
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %newline_count.0185 = phi i64 [ 0, %for.body.lr.ph ], [ %newline_count.1, %for.inc ]
  %idx.0184 = phi i64 [ 0, %for.body.lr.ph ], [ %add53, %for.inc ]
  %idx2.1183 = phi i64 [ 0, %for.body.lr.ph ], [ %add54.pre-phi, %for.inc ]
  call void @llvm.x86.sse2.lfence()
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %idx.0184, !BLADE-T !7, !BLADE-S !8
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !9, !BLADE-T !7
  %1 = lshr i8 %0, 2
  %idxprom = zext i8 %1 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx9 = getelementptr inbounds [65 x i8], ptr @charset, i64 0, i64 %idxprom, !BLADE-S !8
  %2 = load i8, ptr %arrayidx9, align 1, !tbaa !9, !BLADE-T !7
  %arrayidx10 = getelementptr inbounds i8, ptr %out, i64 %idx2.1183, !BLADE-T !7
  store i8 %2, ptr %arrayidx10, align 1, !tbaa !9
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !9, !BLADE-T !7
  %4 = shl i8 %3, 4
  %5 = and i8 %4, 48
  %add13 = add nuw i64 %idx.0184, 1
  call void @llvm.x86.sse2.lfence()
  %arrayidx14 = getelementptr inbounds i8, ptr %in, i64 %add13, !BLADE-T !7, !BLADE-S !8
  %6 = load i8, ptr %arrayidx14, align 1, !tbaa !9, !BLADE-T !7
  %7 = lshr i8 %6, 4
  %or180 = or i8 %5, %7
  %idxprom17 = zext i8 %or180 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx18 = getelementptr inbounds [65 x i8], ptr @charset, i64 0, i64 %idxprom17, !BLADE-S !8
  %8 = load i8, ptr %arrayidx18, align 1, !tbaa !9, !BLADE-T !7
  %add19 = add i64 %idx2.1183, 1
  %arrayidx20 = getelementptr inbounds i8, ptr %out, i64 %add19, !BLADE-T !7
  store i8 %8, ptr %arrayidx20, align 1, !tbaa !9
  %9 = load i8, ptr %arrayidx14, align 1, !tbaa !9, !BLADE-T !7
  %10 = shl i8 %9, 2
  %11 = and i8 %10, 60
  %add26 = add i64 %idx.0184, 2
  call void @llvm.x86.sse2.lfence()
  %arrayidx27 = getelementptr inbounds i8, ptr %in, i64 %add26, !BLADE-T !7, !BLADE-S !8
  %12 = load i8, ptr %arrayidx27, align 1, !tbaa !9, !BLADE-T !7
  %13 = lshr i8 %12, 6
  %or30181 = or i8 %11, %13
  %idxprom31 = zext i8 %or30181 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx32 = getelementptr inbounds [65 x i8], ptr @charset, i64 0, i64 %idxprom31, !BLADE-S !8
  %14 = load i8, ptr %arrayidx32, align 1, !tbaa !9, !BLADE-T !7
  %add33 = add i64 %idx2.1183, 2
  %arrayidx34 = getelementptr inbounds i8, ptr %out, i64 %add33, !BLADE-T !7
  store i8 %14, ptr %arrayidx34, align 1, !tbaa !9
  %15 = load i8, ptr %arrayidx27, align 1, !tbaa !9, !BLADE-T !7
  %16 = and i8 %15, 63
  %idxprom39 = zext i8 %16 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx40 = getelementptr inbounds [65 x i8], ptr @charset, i64 0, i64 %idxprom39, !BLADE-S !8
  %17 = load i8, ptr %arrayidx40, align 1, !tbaa !9, !BLADE-T !7
  %add41 = add i64 %idx2.1183, 3
  %arrayidx42 = getelementptr inbounds i8, ptr %out, i64 %add41, !BLADE-T !7
  store i8 %17, ptr %arrayidx42, align 1, !tbaa !9
  %sub = add i64 %idx2.1183, 4
  %add43 = sub i64 %sub, %newline_count.0185
  %rem44 = urem i64 %add43, 76
  %cmp45 = icmp eq i64 %rem44, 0
  %or.cond = and i1 %tobool47, %cmp45
  br i1 %or.cond, label %if.then48, label %for.inc

if.then48:                                        ; preds = %for.body
  %arrayidx50 = getelementptr inbounds i8, ptr %out, i64 %sub, !BLADE-T !7
  store i8 10, ptr %arrayidx50, align 1, !tbaa !9
  %inc51 = add i64 %newline_count.0185, 1
  %.pre = add i64 %idx2.1183, 5
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %for.body
  %add54.pre-phi = phi i64 [ %sub, %for.body ], [ %.pre, %if.then48 ]
  %newline_count.1 = phi i64 [ %newline_count.0185, %for.body ], [ %inc51, %if.then48 ]
  %add53 = add i64 %idx.0184, 3
  %cmp8 = icmp ult i64 %add53, %mul7
  br i1 %cmp8, label %for.body, label %for.end, !llvm.loop !12

for.end:                                          ; preds = %for.inc, %if.else
  %idx2.1.lcssa = phi i64 [ 0, %if.else ], [ %add54.pre-phi, %for.inc ]
  %idx.0.lcssa = phi i64 [ 0, %if.else ], [ %add53, %for.inc ]
  switch i64 %rem, label %if.end114 [
    i64 1, label %if.then57
    i64 2, label %if.then80
  ]

if.then57:                                        ; preds = %for.end
  call void @llvm.x86.sse2.lfence()
  %arrayidx58 = getelementptr inbounds i8, ptr %in, i64 %idx.0.lcssa, !BLADE-T !7, !BLADE-S !8
  %18 = load i8, ptr %arrayidx58, align 1, !tbaa !9, !BLADE-T !7
  %19 = lshr i8 %18, 2
  %idxprom61 = zext i8 %19 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx62 = getelementptr inbounds [65 x i8], ptr @charset, i64 0, i64 %idxprom61, !BLADE-S !8
  %20 = load i8, ptr %arrayidx62, align 1, !tbaa !9, !BLADE-T !7
  %arrayidx63 = getelementptr inbounds i8, ptr %out, i64 %idx2.1.lcssa, !BLADE-T !7
  store i8 %20, ptr %arrayidx63, align 1, !tbaa !9
  %21 = load i8, ptr %arrayidx58, align 1, !tbaa !9, !BLADE-T !7
  %22 = shl i8 %21, 4
  %23 = and i8 %22, 48
  %idxprom68 = zext i8 %23 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx69 = getelementptr inbounds [65 x i8], ptr @charset, i64 0, i64 %idxprom68, !BLADE-S !8
  %24 = load i8, ptr %arrayidx69, align 16, !tbaa !9, !BLADE-T !7
  %add70 = add i64 %idx2.1.lcssa, 1
  %arrayidx71 = getelementptr inbounds i8, ptr %out, i64 %add70, !BLADE-T !7
  store i8 %24, ptr %arrayidx71, align 1, !tbaa !9
  %add72 = add i64 %idx2.1.lcssa, 2
  %arrayidx73 = getelementptr inbounds i8, ptr %out, i64 %add72, !BLADE-T !7
  store i8 61, ptr %arrayidx73, align 1, !tbaa !9
  %add74 = add i64 %idx2.1.lcssa, 3
  %arrayidx75 = getelementptr inbounds i8, ptr %out, i64 %add74, !BLADE-T !7
  store i8 61, ptr %arrayidx75, align 1, !tbaa !9
  %add76 = add i64 %idx2.1.lcssa, 4
  br label %if.end114

if.then80:                                        ; preds = %for.end
  call void @llvm.x86.sse2.lfence()
  %arrayidx81 = getelementptr inbounds i8, ptr %in, i64 %idx.0.lcssa, !BLADE-T !7, !BLADE-S !8
  %25 = load i8, ptr %arrayidx81, align 1, !tbaa !9, !BLADE-T !7
  %26 = lshr i8 %25, 2
  %idxprom84 = zext i8 %26 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx85 = getelementptr inbounds [65 x i8], ptr @charset, i64 0, i64 %idxprom84, !BLADE-S !8
  %27 = load i8, ptr %arrayidx85, align 1, !tbaa !9, !BLADE-T !7
  %arrayidx86 = getelementptr inbounds i8, ptr %out, i64 %idx2.1.lcssa, !BLADE-T !7
  store i8 %27, ptr %arrayidx86, align 1, !tbaa !9
  %28 = load i8, ptr %arrayidx81, align 1, !tbaa !9, !BLADE-T !7
  %29 = shl i8 %28, 4
  %30 = and i8 %29, 48
  %add91 = add i64 %idx.0.lcssa, 1
  call void @llvm.x86.sse2.lfence()
  %arrayidx92 = getelementptr inbounds i8, ptr %in, i64 %add91, !BLADE-T !7, !BLADE-S !8
  %31 = load i8, ptr %arrayidx92, align 1, !tbaa !9, !BLADE-T !7
  %32 = lshr i8 %31, 4
  %or95179 = or i8 %30, %32
  %idxprom96 = zext i8 %or95179 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx97 = getelementptr inbounds [65 x i8], ptr @charset, i64 0, i64 %idxprom96, !BLADE-S !8
  %33 = load i8, ptr %arrayidx97, align 1, !tbaa !9, !BLADE-T !7
  %add98 = add i64 %idx2.1.lcssa, 1
  %arrayidx99 = getelementptr inbounds i8, ptr %out, i64 %add98, !BLADE-T !7
  store i8 %33, ptr %arrayidx99, align 1, !tbaa !9
  %34 = load i8, ptr %arrayidx92, align 1, !tbaa !9, !BLADE-T !7
  %35 = shl i8 %34, 2
  %36 = and i8 %35, 60
  %idxprom105 = zext i8 %36 to i64
  call void @llvm.x86.sse2.lfence()
  %arrayidx106 = getelementptr inbounds [65 x i8], ptr @charset, i64 0, i64 %idxprom105, !BLADE-S !8
  %37 = load i8, ptr %arrayidx106, align 4, !tbaa !9, !BLADE-T !7
  %add107 = add i64 %idx2.1.lcssa, 2
  %arrayidx108 = getelementptr inbounds i8, ptr %out, i64 %add107, !BLADE-T !7
  store i8 %37, ptr %arrayidx108, align 1, !tbaa !9
  %add109 = add i64 %idx2.1.lcssa, 3
  %arrayidx110 = getelementptr inbounds i8, ptr %out, i64 %add109, !BLADE-T !7
  store i8 61, ptr %arrayidx110, align 1, !tbaa !9
  %add111 = add i64 %idx2.1.lcssa, 4
  br label %if.end114

if.end114:                                        ; preds = %if.then80, %if.then57, %for.end, %if.then3, %if.then
  %idx2.3 = phi i64 [ %add5, %if.then3 ], [ %spec.select, %if.then ], [ %add76, %if.then57 ], [ %add111, %if.then80 ], [ %idx2.1.lcssa, %for.end ]
  ret i64 %idx2.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @base64_decode(ptr nocapture noundef readonly %in, ptr noundef writeonly %out, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %sub = add i64 %len, -1
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %sub
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %cmp = icmp eq i8 %0, 61
  %spec.select = select i1 %cmp, i64 %sub, i64 %len
  %sub2 = add i64 %spec.select, -1
  %arrayidx3 = getelementptr inbounds i8, ptr %in, i64 %sub2
  %1 = load i8, ptr %arrayidx3, align 1, !tbaa !9
  %cmp5 = icmp eq i8 %1, 61
  %len.addr.1 = select i1 %cmp5, i64 %sub2, i64 %spec.select
  %rem = and i64 %len.addr.1, 3
  %cmp10 = icmp eq ptr %out, null
  br i1 %cmp10, label %if.then12, label %if.else33

if.then12:                                        ; preds = %entry
  %cmp13 = icmp ugt i64 %len.addr.1, 76
  br i1 %cmp13, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.then12
  %arrayidx15 = getelementptr inbounds i8, ptr %in, i64 76
  %2 = load i8, ptr %arrayidx15, align 1, !tbaa !9
  %cmp17 = icmp eq i8 %2, 10
  br i1 %cmp17, label %if.then19, label %if.end22

if.then19:                                        ; preds = %land.lhs.true
  %div20 = udiv i64 %len.addr.1, 77
  %sub21 = sub i64 %len.addr.1, %div20
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %land.lhs.true, %if.then12
  %len.addr.2 = phi i64 [ %sub21, %if.then19 ], [ %len.addr.1, %land.lhs.true ], [ %len.addr.1, %if.then12 ]
  %div23195 = lshr i64 %len.addr.2, 2
  %rem24 = and i64 %len.addr.2, 3
  %mul = mul nuw i64 %div23195, 3
  switch i64 %rem24, label %if.end132 [
    i64 2, label %if.then27
    i64 3, label %if.then30
  ]

if.then27:                                        ; preds = %if.end22
  %inc = add nuw i64 %mul, 1
  br label %if.end132

if.then30:                                        ; preds = %if.end22
  %add = add nuw i64 %mul, 2
  br label %if.end132

if.else33:                                        ; preds = %entry
  %div194 = and i64 %len.addr.1, -4
  %cmp35373.not = icmp eq i64 %div194, 0
  br i1 %cmp35373.not, label %for.end, label %for.body

for.body:                                         ; preds = %revchar.exit276, %if.else33
  %idx2.0375 = phi i64 [ %add80, %revchar.exit276 ], [ 0, %if.else33 ]
  %idx.0374 = phi i64 [ %add79, %revchar.exit276 ], [ 0, %if.else33 ]
  %arrayidx37 = getelementptr inbounds i8, ptr %in, i64 %idx2.0375
  %3 = load i8, ptr %arrayidx37, align 1, !tbaa !9
  %cmp39 = icmp eq i8 %3, 10
  %inc42 = zext i1 %cmp39 to i64
  %spec.select196 = add nuw i64 %idx2.0375, %inc42
  %arrayidx44 = getelementptr inbounds i8, ptr %in, i64 %spec.select196
  %4 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %5 = add i8 %4, -65
  %or.cond.i = icmp ult i8 %5, 26
  br i1 %or.cond.i, label %revchar.exit, label %if.else.i

if.else.i:                                        ; preds = %for.body
  %6 = add i8 %4, -97
  %or.cond45.i = icmp ult i8 %6, 26
  br i1 %or.cond45.i, label %if.then14.i, label %if.else18.i

if.then14.i:                                      ; preds = %if.else.i
  %add.i = add nsw i8 %4, -71
  br label %revchar.exit

if.else18.i:                                      ; preds = %if.else.i
  %7 = add i8 %4, -48
  %or.cond46.i = icmp ult i8 %7, 10
  br i1 %or.cond46.i, label %if.then26.i, label %if.else31.i

if.then26.i:                                      ; preds = %if.else18.i
  %add29.i = add nuw nsw i8 %4, 4
  br label %revchar.exit

if.else31.i:                                      ; preds = %if.else18.i
  %cmp33.i = icmp eq i8 %4, 43
  br i1 %cmp33.i, label %revchar.exit, label %if.else36.i

if.else36.i:                                      ; preds = %if.else31.i
  %cmp38.i = icmp eq i8 %4, 47
  %spec.store.select.i = select i1 %cmp38.i, i8 63, i8 %4
  br label %revchar.exit

revchar.exit:                                     ; preds = %if.else36.i, %if.else31.i, %if.then26.i, %if.then14.i, %for.body
  %ch.addr.0.i = phi i8 [ %add.i, %if.then14.i ], [ %add29.i, %if.then26.i ], [ %spec.store.select.i, %if.else36.i ], [ 62, %if.else31.i ], [ %5, %for.body ]
  %shl = shl i8 %ch.addr.0.i, 2
  %add46 = add i64 %spec.select196, 1
  %arrayidx47 = getelementptr inbounds i8, ptr %in, i64 %add46
  %8 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %9 = add i8 %8, -65
  %or.cond.i197 = icmp ult i8 %9, 26
  br i1 %or.cond.i197, label %revchar.exit212, label %if.else.i199

if.else.i199:                                     ; preds = %revchar.exit
  %10 = add i8 %8, -97
  %or.cond45.i198 = icmp ult i8 %10, 26
  br i1 %or.cond45.i198, label %if.then14.i201, label %if.else18.i203

if.then14.i201:                                   ; preds = %if.else.i199
  %add.i200 = add nsw i8 %8, -71
  br label %revchar.exit212

if.else18.i203:                                   ; preds = %if.else.i199
  %11 = add i8 %8, -48
  %or.cond46.i202 = icmp ult i8 %11, 10
  br i1 %or.cond46.i202, label %if.then26.i205, label %if.else31.i207

if.then26.i205:                                   ; preds = %if.else18.i203
  %add29.i204 = add nuw nsw i8 %8, 4
  br label %revchar.exit212

if.else31.i207:                                   ; preds = %if.else18.i203
  %cmp33.i206 = icmp eq i8 %8, 43
  br i1 %cmp33.i206, label %revchar.exit212, label %if.else36.i210

if.else36.i210:                                   ; preds = %if.else31.i207
  %cmp38.i208 = icmp eq i8 %8, 47
  %spec.store.select.i209 = select i1 %cmp38.i208, i8 63, i8 %8
  br label %revchar.exit212

revchar.exit212:                                  ; preds = %if.else36.i210, %if.else31.i207, %if.then26.i205, %if.then14.i201, %revchar.exit
  %ch.addr.0.i211 = phi i8 [ %add.i200, %if.then14.i201 ], [ %add29.i204, %if.then26.i205 ], [ %spec.store.select.i209, %if.else36.i210 ], [ 62, %if.else31.i207 ], [ %9, %revchar.exit ]
  %12 = lshr i8 %ch.addr.0.i211, 4
  %13 = and i8 %12, 3
  %or = or i8 %13, %shl
  %arrayidx51 = getelementptr inbounds i8, ptr %out, i64 %idx.0374
  store i8 %or, ptr %arrayidx51, align 1, !tbaa !9
  %14 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %15 = add i8 %14, -65
  %or.cond.i213 = icmp ult i8 %15, 26
  br i1 %or.cond.i213, label %revchar.exit228, label %if.else.i215

if.else.i215:                                     ; preds = %revchar.exit212
  %16 = add i8 %14, -97
  %or.cond45.i214 = icmp ult i8 %16, 26
  br i1 %or.cond45.i214, label %if.then14.i217, label %if.else18.i219

if.then14.i217:                                   ; preds = %if.else.i215
  %add.i216 = add nsw i8 %14, -71
  br label %revchar.exit228

if.else18.i219:                                   ; preds = %if.else.i215
  %17 = add i8 %14, -48
  %or.cond46.i218 = icmp ult i8 %17, 10
  br i1 %or.cond46.i218, label %if.then26.i221, label %if.else31.i223

if.then26.i221:                                   ; preds = %if.else18.i219
  %add29.i220 = add nuw nsw i8 %14, 4
  br label %revchar.exit228

if.else31.i223:                                   ; preds = %if.else18.i219
  %cmp33.i222 = icmp eq i8 %14, 43
  br i1 %cmp33.i222, label %revchar.exit228, label %if.else36.i226

if.else36.i226:                                   ; preds = %if.else31.i223
  %cmp38.i224 = icmp eq i8 %14, 47
  %spec.store.select.i225 = select i1 %cmp38.i224, i8 63, i8 %14
  br label %revchar.exit228

revchar.exit228:                                  ; preds = %if.else36.i226, %if.else31.i223, %if.then26.i221, %if.then14.i217, %revchar.exit212
  %ch.addr.0.i227 = phi i8 [ %add.i216, %if.then14.i217 ], [ %add29.i220, %if.then26.i221 ], [ %spec.store.select.i225, %if.else36.i226 ], [ 62, %if.else31.i223 ], [ %15, %revchar.exit212 ]
  %shl56 = shl i8 %ch.addr.0.i227, 4
  %add57 = add i64 %spec.select196, 2
  %arrayidx58 = getelementptr inbounds i8, ptr %in, i64 %add57
  %18 = load i8, ptr %arrayidx58, align 1, !tbaa !9
  %19 = add i8 %18, -65
  %or.cond.i229 = icmp ult i8 %19, 26
  br i1 %or.cond.i229, label %revchar.exit244, label %if.else.i231

if.else.i231:                                     ; preds = %revchar.exit228
  %20 = add i8 %18, -97
  %or.cond45.i230 = icmp ult i8 %20, 26
  br i1 %or.cond45.i230, label %if.then14.i233, label %if.else18.i235

if.then14.i233:                                   ; preds = %if.else.i231
  %add.i232 = add nsw i8 %18, -71
  br label %revchar.exit244

if.else18.i235:                                   ; preds = %if.else.i231
  %21 = add i8 %18, -48
  %or.cond46.i234 = icmp ult i8 %21, 10
  br i1 %or.cond46.i234, label %if.then26.i237, label %if.else31.i239

if.then26.i237:                                   ; preds = %if.else18.i235
  %add29.i236 = add nuw nsw i8 %18, 4
  br label %revchar.exit244

if.else31.i239:                                   ; preds = %if.else18.i235
  %cmp33.i238 = icmp eq i8 %18, 43
  br i1 %cmp33.i238, label %revchar.exit244, label %if.else36.i242

if.else36.i242:                                   ; preds = %if.else31.i239
  %cmp38.i240 = icmp eq i8 %18, 47
  %spec.store.select.i241 = select i1 %cmp38.i240, i8 63, i8 %18
  br label %revchar.exit244

revchar.exit244:                                  ; preds = %if.else36.i242, %if.else31.i239, %if.then26.i237, %if.then14.i233, %revchar.exit228
  %ch.addr.0.i243 = phi i8 [ %add.i232, %if.then14.i233 ], [ %add29.i236, %if.then26.i237 ], [ %spec.store.select.i241, %if.else36.i242 ], [ 62, %if.else31.i239 ], [ %19, %revchar.exit228 ]
  %22 = lshr i8 %ch.addr.0.i243, 2
  %or62 = or i8 %22, %shl56
  %add64 = add i64 %idx.0374, 1
  %arrayidx65 = getelementptr inbounds i8, ptr %out, i64 %add64
  store i8 %or62, ptr %arrayidx65, align 1, !tbaa !9
  %23 = load i8, ptr %arrayidx58, align 1, !tbaa !9
  %24 = add i8 %23, -65
  %or.cond.i245 = icmp ult i8 %24, 26
  br i1 %or.cond.i245, label %revchar.exit260, label %if.else.i247

if.else.i247:                                     ; preds = %revchar.exit244
  %25 = add i8 %23, -97
  %or.cond45.i246 = icmp ult i8 %25, 26
  br i1 %or.cond45.i246, label %if.then14.i249, label %if.else18.i251

if.then14.i249:                                   ; preds = %if.else.i247
  %add.i248 = add nsw i8 %23, -71
  br label %revchar.exit260

if.else18.i251:                                   ; preds = %if.else.i247
  %26 = add i8 %23, -48
  %or.cond46.i250 = icmp ult i8 %26, 10
  br i1 %or.cond46.i250, label %if.then26.i253, label %if.else31.i255

if.then26.i253:                                   ; preds = %if.else18.i251
  %add29.i252 = add nuw nsw i8 %23, 4
  br label %revchar.exit260

if.else31.i255:                                   ; preds = %if.else18.i251
  %cmp33.i254 = icmp eq i8 %23, 43
  br i1 %cmp33.i254, label %revchar.exit260, label %if.else36.i258

if.else36.i258:                                   ; preds = %if.else31.i255
  %cmp38.i256 = icmp eq i8 %23, 47
  %spec.store.select.i257 = select i1 %cmp38.i256, i8 63, i8 %23
  br label %revchar.exit260

revchar.exit260:                                  ; preds = %if.else36.i258, %if.else31.i255, %if.then26.i253, %if.then14.i249, %revchar.exit244
  %ch.addr.0.i259 = phi i8 [ %add.i248, %if.then14.i249 ], [ %add29.i252, %if.then26.i253 ], [ %spec.store.select.i257, %if.else36.i258 ], [ 62, %if.else31.i255 ], [ %24, %revchar.exit244 ]
  %shl70 = shl i8 %ch.addr.0.i259, 6
  %add71 = add i64 %spec.select196, 3
  %arrayidx72 = getelementptr inbounds i8, ptr %in, i64 %add71
  %27 = load i8, ptr %arrayidx72, align 1, !tbaa !9
  %28 = add i8 %27, -65
  %or.cond.i261 = icmp ult i8 %28, 26
  br i1 %or.cond.i261, label %revchar.exit276, label %if.else.i263

if.else.i263:                                     ; preds = %revchar.exit260
  %29 = add i8 %27, -97
  %or.cond45.i262 = icmp ult i8 %29, 26
  br i1 %or.cond45.i262, label %if.then14.i265, label %if.else18.i267

if.then14.i265:                                   ; preds = %if.else.i263
  %add.i264 = add nsw i8 %27, -71
  br label %revchar.exit276

if.else18.i267:                                   ; preds = %if.else.i263
  %30 = add i8 %27, -48
  %or.cond46.i266 = icmp ult i8 %30, 10
  br i1 %or.cond46.i266, label %if.then26.i269, label %if.else31.i271

if.then26.i269:                                   ; preds = %if.else18.i267
  %add29.i268 = add nuw nsw i8 %27, 4
  br label %revchar.exit276

if.else31.i271:                                   ; preds = %if.else18.i267
  %cmp33.i270 = icmp eq i8 %27, 43
  br i1 %cmp33.i270, label %revchar.exit276, label %if.else36.i274

if.else36.i274:                                   ; preds = %if.else31.i271
  %cmp38.i272 = icmp eq i8 %27, 47
  %spec.store.select.i273 = select i1 %cmp38.i272, i8 63, i8 %27
  br label %revchar.exit276

revchar.exit276:                                  ; preds = %if.else36.i274, %if.else31.i271, %if.then26.i269, %if.then14.i265, %revchar.exit260
  %ch.addr.0.i275 = phi i8 [ %add.i264, %if.then14.i265 ], [ %add29.i268, %if.then26.i269 ], [ %spec.store.select.i273, %if.else36.i274 ], [ 62, %if.else31.i271 ], [ %28, %revchar.exit260 ]
  %or75 = or i8 %ch.addr.0.i275, %shl70
  %add77 = add i64 %idx.0374, 2
  %arrayidx78 = getelementptr inbounds i8, ptr %out, i64 %add77
  store i8 %or75, ptr %arrayidx78, align 1, !tbaa !9
  %add79 = add i64 %idx.0374, 3
  %add80 = add i64 %spec.select196, 4
  %cmp35 = icmp ult i64 %add80, %div194
  br i1 %cmp35, label %for.body, label %for.end, !llvm.loop !14

for.end:                                          ; preds = %revchar.exit276, %if.else33
  %idx.0.lcssa = phi i64 [ 0, %if.else33 ], [ %add79, %revchar.exit276 ]
  %idx2.0.lcssa = phi i64 [ 0, %if.else33 ], [ %add80, %revchar.exit276 ]
  switch i64 %rem, label %if.end132 [
    i64 2, label %if.then83
    i64 3, label %if.then101
  ]

if.then83:                                        ; preds = %for.end
  %arrayidx84 = getelementptr inbounds i8, ptr %in, i64 %idx2.0.lcssa
  %31 = load i8, ptr %arrayidx84, align 1, !tbaa !9
  %32 = add i8 %31, -65
  %or.cond.i277 = icmp ult i8 %32, 26
  br i1 %or.cond.i277, label %revchar.exit292, label %if.else.i279

if.else.i279:                                     ; preds = %if.then83
  %33 = add i8 %31, -97
  %or.cond45.i278 = icmp ult i8 %33, 26
  br i1 %or.cond45.i278, label %if.then14.i281, label %if.else18.i283

if.then14.i281:                                   ; preds = %if.else.i279
  %add.i280 = add nsw i8 %31, -71
  br label %revchar.exit292

if.else18.i283:                                   ; preds = %if.else.i279
  %34 = add i8 %31, -48
  %or.cond46.i282 = icmp ult i8 %34, 10
  br i1 %or.cond46.i282, label %if.then26.i285, label %if.else31.i287

if.then26.i285:                                   ; preds = %if.else18.i283
  %add29.i284 = add nuw nsw i8 %31, 4
  br label %revchar.exit292

if.else31.i287:                                   ; preds = %if.else18.i283
  %cmp33.i286 = icmp eq i8 %31, 43
  br i1 %cmp33.i286, label %revchar.exit292, label %if.else36.i290

if.else36.i290:                                   ; preds = %if.else31.i287
  %cmp38.i288 = icmp eq i8 %31, 47
  %spec.store.select.i289 = select i1 %cmp38.i288, i8 63, i8 %31
  br label %revchar.exit292

revchar.exit292:                                  ; preds = %if.else36.i290, %if.else31.i287, %if.then26.i285, %if.then14.i281, %if.then83
  %ch.addr.0.i291 = phi i8 [ %add.i280, %if.then14.i281 ], [ %add29.i284, %if.then26.i285 ], [ %spec.store.select.i289, %if.else36.i290 ], [ 62, %if.else31.i287 ], [ %32, %if.then83 ]
  %shl87 = shl i8 %ch.addr.0.i291, 2
  %add88 = add i64 %idx2.0.lcssa, 1
  %arrayidx89 = getelementptr inbounds i8, ptr %in, i64 %add88
  %35 = load i8, ptr %arrayidx89, align 1, !tbaa !9
  %36 = add i8 %35, -65
  %or.cond.i293 = icmp ult i8 %36, 26
  br i1 %or.cond.i293, label %revchar.exit308, label %if.else.i295

if.else.i295:                                     ; preds = %revchar.exit292
  %37 = add i8 %35, -97
  %or.cond45.i294 = icmp ult i8 %37, 26
  br i1 %or.cond45.i294, label %if.then14.i297, label %if.else18.i299

if.then14.i297:                                   ; preds = %if.else.i295
  %add.i296 = add nsw i8 %35, -71
  br label %revchar.exit308

if.else18.i299:                                   ; preds = %if.else.i295
  %38 = add i8 %35, -48
  %or.cond46.i298 = icmp ult i8 %38, 10
  br i1 %or.cond46.i298, label %if.then26.i301, label %if.else31.i303

if.then26.i301:                                   ; preds = %if.else18.i299
  %add29.i300 = add nuw nsw i8 %35, 4
  br label %revchar.exit308

if.else31.i303:                                   ; preds = %if.else18.i299
  %cmp33.i302 = icmp eq i8 %35, 43
  br i1 %cmp33.i302, label %revchar.exit308, label %if.else36.i306

if.else36.i306:                                   ; preds = %if.else31.i303
  %cmp38.i304 = icmp eq i8 %35, 47
  %spec.store.select.i305 = select i1 %cmp38.i304, i8 63, i8 %35
  br label %revchar.exit308

revchar.exit308:                                  ; preds = %if.else36.i306, %if.else31.i303, %if.then26.i301, %if.then14.i297, %revchar.exit292
  %ch.addr.0.i307 = phi i8 [ %add.i296, %if.then14.i297 ], [ %add29.i300, %if.then26.i301 ], [ %spec.store.select.i305, %if.else36.i306 ], [ 62, %if.else31.i303 ], [ %36, %revchar.exit292 ]
  %39 = lshr i8 %ch.addr.0.i307, 4
  %40 = and i8 %39, 3
  %or94 = or i8 %40, %shl87
  %arrayidx96 = getelementptr inbounds i8, ptr %out, i64 %idx.0.lcssa
  store i8 %or94, ptr %arrayidx96, align 1, !tbaa !9
  %inc97 = add i64 %idx.0.lcssa, 1
  br label %if.end132

if.then101:                                       ; preds = %for.end
  %arrayidx102 = getelementptr inbounds i8, ptr %in, i64 %idx2.0.lcssa
  %41 = load i8, ptr %arrayidx102, align 1, !tbaa !9
  %42 = add i8 %41, -65
  %or.cond.i309 = icmp ult i8 %42, 26
  br i1 %or.cond.i309, label %revchar.exit324, label %if.else.i311

if.else.i311:                                     ; preds = %if.then101
  %43 = add i8 %41, -97
  %or.cond45.i310 = icmp ult i8 %43, 26
  br i1 %or.cond45.i310, label %if.then14.i313, label %if.else18.i315

if.then14.i313:                                   ; preds = %if.else.i311
  %add.i312 = add nsw i8 %41, -71
  br label %revchar.exit324

if.else18.i315:                                   ; preds = %if.else.i311
  %44 = add i8 %41, -48
  %or.cond46.i314 = icmp ult i8 %44, 10
  br i1 %or.cond46.i314, label %if.then26.i317, label %if.else31.i319

if.then26.i317:                                   ; preds = %if.else18.i315
  %add29.i316 = add nuw nsw i8 %41, 4
  br label %revchar.exit324

if.else31.i319:                                   ; preds = %if.else18.i315
  %cmp33.i318 = icmp eq i8 %41, 43
  br i1 %cmp33.i318, label %revchar.exit324, label %if.else36.i322

if.else36.i322:                                   ; preds = %if.else31.i319
  %cmp38.i320 = icmp eq i8 %41, 47
  %spec.store.select.i321 = select i1 %cmp38.i320, i8 63, i8 %41
  br label %revchar.exit324

revchar.exit324:                                  ; preds = %if.else36.i322, %if.else31.i319, %if.then26.i317, %if.then14.i313, %if.then101
  %ch.addr.0.i323 = phi i8 [ %add.i312, %if.then14.i313 ], [ %add29.i316, %if.then26.i317 ], [ %spec.store.select.i321, %if.else36.i322 ], [ 62, %if.else31.i319 ], [ %42, %if.then101 ]
  %shl105 = shl i8 %ch.addr.0.i323, 2
  %add106 = add i64 %idx2.0.lcssa, 1
  %arrayidx107 = getelementptr inbounds i8, ptr %in, i64 %add106
  %45 = load i8, ptr %arrayidx107, align 1, !tbaa !9
  %46 = add i8 %45, -65
  %or.cond.i325 = icmp ult i8 %46, 26
  br i1 %or.cond.i325, label %revchar.exit340, label %if.else.i327

if.else.i327:                                     ; preds = %revchar.exit324
  %47 = add i8 %45, -97
  %or.cond45.i326 = icmp ult i8 %47, 26
  br i1 %or.cond45.i326, label %if.then14.i329, label %if.else18.i331

if.then14.i329:                                   ; preds = %if.else.i327
  %add.i328 = add nsw i8 %45, -71
  br label %revchar.exit340

if.else18.i331:                                   ; preds = %if.else.i327
  %48 = add i8 %45, -48
  %or.cond46.i330 = icmp ult i8 %48, 10
  br i1 %or.cond46.i330, label %if.then26.i333, label %if.else31.i335

if.then26.i333:                                   ; preds = %if.else18.i331
  %add29.i332 = add nuw nsw i8 %45, 4
  br label %revchar.exit340

if.else31.i335:                                   ; preds = %if.else18.i331
  %cmp33.i334 = icmp eq i8 %45, 43
  br i1 %cmp33.i334, label %revchar.exit340, label %if.else36.i338

if.else36.i338:                                   ; preds = %if.else31.i335
  %cmp38.i336 = icmp eq i8 %45, 47
  %spec.store.select.i337 = select i1 %cmp38.i336, i8 63, i8 %45
  br label %revchar.exit340

revchar.exit340:                                  ; preds = %if.else36.i338, %if.else31.i335, %if.then26.i333, %if.then14.i329, %revchar.exit324
  %ch.addr.0.i339 = phi i8 [ %add.i328, %if.then14.i329 ], [ %add29.i332, %if.then26.i333 ], [ %spec.store.select.i337, %if.else36.i338 ], [ 62, %if.else31.i335 ], [ %46, %revchar.exit324 ]
  %49 = lshr i8 %ch.addr.0.i339, 4
  %50 = and i8 %49, 3
  %or112 = or i8 %50, %shl105
  %arrayidx114 = getelementptr inbounds i8, ptr %out, i64 %idx.0.lcssa
  store i8 %or112, ptr %arrayidx114, align 1, !tbaa !9
  %51 = load i8, ptr %arrayidx107, align 1, !tbaa !9
  %52 = add i8 %51, -65
  %or.cond.i341 = icmp ult i8 %52, 26
  br i1 %or.cond.i341, label %revchar.exit356, label %if.else.i343

if.else.i343:                                     ; preds = %revchar.exit340
  %53 = add i8 %51, -97
  %or.cond45.i342 = icmp ult i8 %53, 26
  br i1 %or.cond45.i342, label %if.then14.i345, label %if.else18.i347

if.then14.i345:                                   ; preds = %if.else.i343
  %add.i344 = add nsw i8 %51, -71
  br label %revchar.exit356

if.else18.i347:                                   ; preds = %if.else.i343
  %54 = add i8 %51, -48
  %or.cond46.i346 = icmp ult i8 %54, 10
  br i1 %or.cond46.i346, label %if.then26.i349, label %if.else31.i351

if.then26.i349:                                   ; preds = %if.else18.i347
  %add29.i348 = add nuw nsw i8 %51, 4
  br label %revchar.exit356

if.else31.i351:                                   ; preds = %if.else18.i347
  %cmp33.i350 = icmp eq i8 %51, 43
  br i1 %cmp33.i350, label %revchar.exit356, label %if.else36.i354

if.else36.i354:                                   ; preds = %if.else31.i351
  %cmp38.i352 = icmp eq i8 %51, 47
  %spec.store.select.i353 = select i1 %cmp38.i352, i8 63, i8 %51
  br label %revchar.exit356

revchar.exit356:                                  ; preds = %if.else36.i354, %if.else31.i351, %if.then26.i349, %if.then14.i345, %revchar.exit340
  %ch.addr.0.i355 = phi i8 [ %add.i344, %if.then14.i345 ], [ %add29.i348, %if.then26.i349 ], [ %spec.store.select.i353, %if.else36.i354 ], [ 62, %if.else31.i351 ], [ %52, %revchar.exit340 ]
  %shl119 = shl i8 %ch.addr.0.i355, 4
  %add120 = add i64 %idx2.0.lcssa, 2
  %arrayidx121 = getelementptr inbounds i8, ptr %in, i64 %add120
  %55 = load i8, ptr %arrayidx121, align 1, !tbaa !9
  %56 = add i8 %55, -65
  %or.cond.i357 = icmp ult i8 %56, 26
  br i1 %or.cond.i357, label %revchar.exit372, label %if.else.i359

if.else.i359:                                     ; preds = %revchar.exit356
  %57 = add i8 %55, -97
  %or.cond45.i358 = icmp ult i8 %57, 26
  br i1 %or.cond45.i358, label %if.then14.i361, label %if.else18.i363

if.then14.i361:                                   ; preds = %if.else.i359
  %add.i360 = add nsw i8 %55, -71
  br label %revchar.exit372

if.else18.i363:                                   ; preds = %if.else.i359
  %58 = add i8 %55, -48
  %or.cond46.i362 = icmp ult i8 %58, 10
  br i1 %or.cond46.i362, label %if.then26.i365, label %if.else31.i367

if.then26.i365:                                   ; preds = %if.else18.i363
  %add29.i364 = add nuw nsw i8 %55, 4
  br label %revchar.exit372

if.else31.i367:                                   ; preds = %if.else18.i363
  %cmp33.i366 = icmp eq i8 %55, 43
  br i1 %cmp33.i366, label %revchar.exit372, label %if.else36.i370

if.else36.i370:                                   ; preds = %if.else31.i367
  %cmp38.i368 = icmp eq i8 %55, 47
  %spec.store.select.i369 = select i1 %cmp38.i368, i8 63, i8 %55
  br label %revchar.exit372

revchar.exit372:                                  ; preds = %if.else36.i370, %if.else31.i367, %if.then26.i365, %if.then14.i361, %revchar.exit356
  %ch.addr.0.i371 = phi i8 [ %add.i360, %if.then14.i361 ], [ %add29.i364, %if.then26.i365 ], [ %spec.store.select.i369, %if.else36.i370 ], [ 62, %if.else31.i367 ], [ %56, %revchar.exit356 ]
  %59 = lshr i8 %ch.addr.0.i371, 2
  %or125 = or i8 %59, %shl119
  %add127 = add i64 %idx.0.lcssa, 1
  %arrayidx128 = getelementptr inbounds i8, ptr %out, i64 %add127
  store i8 %or125, ptr %arrayidx128, align 1, !tbaa !9
  %add129 = add i64 %idx.0.lcssa, 2
  br label %if.end132

if.end132:                                        ; preds = %revchar.exit372, %revchar.exit308, %for.end, %if.then30, %if.then27, %if.end22
  %idx.1 = phi i64 [ %inc, %if.then27 ], [ %add, %if.then30 ], [ %inc97, %revchar.exit308 ], [ %add129, %revchar.exit372 ], [ %mul, %if.end22 ], [ %idx.0.lcssa, %for.end ]
  ret i64 %idx.1
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @base64_test() local_unnamed_addr #3 {
land.rhs:
  %buf = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %buf) #8
  %call5 = call i64 @base64_encode(ptr noundef nonnull @__const.base64_test.text, ptr noundef nonnull %buf, i64 noundef 2, i32 noundef 1)
  %cmp10 = icmp eq i64 %call5, 4
  br i1 %cmp10, label %land.end30, label %land.end30.thread

land.end30.thread:                                ; preds = %land.rhs
  %call41106 = call i64 @base64_decode(ptr noundef nonnull @__const.base64_test.code, ptr noundef nonnull %buf, i64 noundef 4)
  br label %land.end72.thread

land.end30:                                       ; preds = %land.rhs
  %bcmp105 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @__const.base64_test.code, ptr noundef nonnull dereferenceable(5) %buf, i64 5)
  %tobool29.not = icmp eq i32 %bcmp105, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %buf, i8 0, i64 1024, i1 false)
  %call41 = call i64 @base64_decode(ptr noundef nonnull @__const.base64_test.code, ptr noundef nonnull %buf, i64 noundef 4)
  %cmp48 = icmp eq i64 %call41, 2
  %or.cond = select i1 %tobool29.not, i1 %cmp48, i1 false
  br i1 %or.cond, label %land.end72, label %land.end72.thread

land.end72.thread:                                ; preds = %land.end30, %land.end30.thread
  %call5.1108 = call i64 @base64_encode(ptr noundef nonnull getelementptr inbounds ([3 x [1024 x i8]], ptr @__const.base64_test.text, i64 0, i64 1), ptr noundef nonnull %buf, i64 noundef 6, i32 noundef 1)
  br label %land.end30.1.thread

land.end72:                                       ; preds = %land.end30
  %bcmp104 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @__const.base64_test.text, ptr noundef nonnull dereferenceable(3) %buf, i64 3)
  %tobool70.not = icmp eq i32 %bcmp104, 0
  %call5.1 = call i64 @base64_encode(ptr noundef nonnull getelementptr inbounds ([3 x [1024 x i8]], ptr @__const.base64_test.text, i64 0, i64 1), ptr noundef nonnull %buf, i64 noundef 6, i32 noundef 1)
  %cmp10.1 = icmp eq i64 %call5.1, 8
  %or.cond113 = select i1 %tobool70.not, i1 %cmp10.1, i1 false
  br i1 %or.cond113, label %land.end30.1, label %land.end30.1.thread

land.end30.1.thread:                              ; preds = %land.end72, %land.end72.thread
  %call41.1109 = call i64 @base64_decode(ptr noundef nonnull getelementptr inbounds ([3 x [1024 x i8]], ptr @__const.base64_test.code, i64 0, i64 1), ptr noundef nonnull %buf, i64 noundef 8)
  br label %land.end72.1.thread

land.end30.1:                                     ; preds = %land.end72
  %bcmp103 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) getelementptr inbounds ([3 x [1024 x i8]], ptr @__const.base64_test.code, i64 0, i64 1), ptr noundef nonnull dereferenceable(9) %buf, i64 9)
  %tobool29.not.1 = icmp eq i32 %bcmp103, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %buf, i8 0, i64 1024, i1 false)
  %call41.1 = call i64 @base64_decode(ptr noundef nonnull getelementptr inbounds ([3 x [1024 x i8]], ptr @__const.base64_test.code, i64 0, i64 1), ptr noundef nonnull %buf, i64 noundef 8)
  %cmp48.1 = icmp eq i64 %call41.1, 6
  %or.cond114 = select i1 %tobool29.not.1, i1 %cmp48.1, i1 false
  br i1 %or.cond114, label %land.end72.1, label %land.end72.1.thread

land.end72.1.thread:                              ; preds = %land.end30.1, %land.end30.1.thread
  %call5.2111 = call i64 @base64_encode(ptr noundef nonnull getelementptr inbounds ([3 x [1024 x i8]], ptr @__const.base64_test.text, i64 0, i64 2), ptr noundef nonnull %buf, i64 noundef 269, i32 noundef 1)
  br label %land.end30.2.thread

land.end72.1:                                     ; preds = %land.end30.1
  %bcmp102 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) getelementptr inbounds ([3 x [1024 x i8]], ptr @__const.base64_test.text, i64 0, i64 1), ptr noundef nonnull dereferenceable(7) %buf, i64 7)
  %tobool70.not.1 = icmp eq i32 %bcmp102, 0
  %call5.2 = call i64 @base64_encode(ptr noundef nonnull getelementptr inbounds ([3 x [1024 x i8]], ptr @__const.base64_test.text, i64 0, i64 2), ptr noundef nonnull %buf, i64 noundef 269, i32 noundef 1)
  %cmp10.2 = icmp eq i64 %call5.2, 364
  %or.cond115 = select i1 %tobool70.not.1, i1 %cmp10.2, i1 false
  br i1 %or.cond115, label %land.end30.2, label %land.end30.2.thread

land.end30.2.thread:                              ; preds = %land.end72.1, %land.end72.1.thread
  %call41.2112 = call i64 @base64_decode(ptr noundef nonnull getelementptr inbounds ([3 x [1024 x i8]], ptr @__const.base64_test.code, i64 0, i64 2), ptr noundef nonnull %buf, i64 noundef 364)
  br label %land.end72.2

land.end30.2:                                     ; preds = %land.end72.1
  %bcmp101 = call i32 @bcmp(ptr noundef nonnull dereferenceable(365) getelementptr inbounds ([3 x [1024 x i8]], ptr @__const.base64_test.code, i64 0, i64 2), ptr noundef nonnull dereferenceable(365) %buf, i64 365)
  %tobool29.not.2 = icmp eq i32 %bcmp101, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %buf, i8 0, i64 1024, i1 false)
  %call41.2 = call i64 @base64_decode(ptr noundef nonnull getelementptr inbounds ([3 x [1024 x i8]], ptr @__const.base64_test.code, i64 0, i64 2), ptr noundef nonnull %buf, i64 noundef 364)
  %cmp48.2 = icmp eq i64 %call41.2, 269
  %or.cond116 = select i1 %tobool29.not.2, i1 %cmp48.2, i1 false
  br i1 %or.cond116, label %land.rhs64.2, label %land.end72.2

land.rhs64.2:                                     ; preds = %land.end30.2
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(270) getelementptr inbounds ([3 x [1024 x i8]], ptr @__const.base64_test.text, i64 0, i64 2), ptr noundef nonnull dereferenceable(270) %buf, i64 270)
  %tobool70.not.2 = icmp eq i32 %bcmp, 0
  %0 = zext i1 %tobool70.not.2 to i32
  br label %land.end72.2

land.end72.2:                                     ; preds = %land.rhs64.2, %land.end30.2, %land.end30.2.thread
  %land.ext73.2 = phi i32 [ %0, %land.rhs64.2 ], [ 0, %land.end30.2 ], [ 0, %land.end30.2.thread ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %buf) #8
  ret i32 %land.ext73.2
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #5 {
entry:
  %call = tail call i32 @base64_test()
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, ptr @.str.2, ptr @.str.1
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  ret i32 0

for.body:                                         ; preds = %for.body, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %cond)
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 100000
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !15
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.x86.sse2.lfence() #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn memory(argmem: read) }
attributes #8 = { nounwind }

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
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
