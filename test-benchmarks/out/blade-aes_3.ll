; ModuleID = 'aes_3.ll'
source_filename = "aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aes_sbox = internal unnamed_addr constant [16 x [16 x i8]] [[16 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv", [16 x i8] c"\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0", [16 x i8] c"\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15", [16 x i8] c"\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u", [16 x i8] c"\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84", [16 x i8] c"S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF", [16 x i8] c"\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8", [16 x i8] c"Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2", [16 x i8] c"\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s", [16 x i8] c"`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB", [16 x i8] c"\E02:\0AI\06$\\\C2\D3\ACb\91\95\E4y", [16 x i8] c"\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08", [16 x i8] c"\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8A", [16 x i8] c"p>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E", [16 x i8] c"\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF", [16 x i8] c"\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16"], align 16
@__const.aes_key_setup.Rcon = private unnamed_addr constant [15 x i32] [i32 16777216, i32 33554432, i32 67108864, i32 134217728, i32 268435456, i32 536870912, i32 1073741824, i32 -2147483648, i32 452984832, i32 905969664, i32 1811939328, i32 -671088640, i32 -1426063360, i32 1291845632, i32 -1711276032], align 16
@aes_invsbox = internal unnamed_addr constant [16 x [16 x i8]] [[16 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB", [16 x i8] c"|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CB", [16 x i8] c"T{\942\A6\C2#=\EEL\95\0BB\FA\C3N", [16 x i8] c"\08.\A1f(\D9$\B2v[\A2Im\8B\D1%", [16 x i8] c"r\F8\F6d\86h\98\16\D4\A4\\\CC]e\B6\92", [16 x i8] c"lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84", [16 x i8] c"\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06", [16 x i8] c"\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak", [16 x i8] c":\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s", [16 x i8] c"\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFn", [16 x i8] c"G\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B", [16 x i8] c"\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4", [16 x i8] c"\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_", [16 x i8] c"`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF", [16 x i8] c"\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a", [16 x i8] c"\17+\04~\BAw\D6&\E1i\14cU!\0C}"], align 16
@gf_mul = internal unnamed_addr constant [256 x [6 x i8]] [[6 x i8] zeroinitializer, [6 x i8] c"\02\03\09\0B\0D\0E", [6 x i8] c"\04\06\12\16\1A\1C", [6 x i8] c"\06\05\1B\1D\17\12", [6 x i8] c"\08\0C$,48", [6 x i8] c"\0A\0F-'96", [6 x i8] c"\0C\0A6:.$", [6 x i8] c"\0E\09?1#*", [6 x i8] c"\10\18HXhp", [6 x i8] c"\12\1BASe~", [6 x i8] c"\14\1EZNrl", [6 x i8] c"\16\1DSE\7Fb", [6 x i8] c"\18\14lt\\H", [6 x i8] c"\1A\17e\7FQF", [6 x i8] c"\1C\12~bFT", [6 x i8] c"\1E\11wiKZ", [6 x i8] c" 0\90\B0\D0\E0", [6 x i8] c"\223\99\BB\DD\EE", [6 x i8] c"$6\82\A6\CA\FC", [6 x i8] c"&5\8B\AD\C7\F2", [6 x i8] c"(<\B4\9C\E4\D8", [6 x i8] c"*?\BD\97\E9\D6", [6 x i8] c",:\A6\8A\FE\C4", [6 x i8] c".9\AF\81\F3\CA", [6 x i8] c"0(\D8\E8\B8\90", [6 x i8] c"2+\D1\E3\B5\9E", [6 x i8] c"4.\CA\FE\A2\8C", [6 x i8] c"6-\C3\F5\AF\82", [6 x i8] c"8$\FC\C4\8C\A8", [6 x i8] c":'\F5\CF\81\A6", [6 x i8] c"<\22\EE\D2\96\B4", [6 x i8] c">!\E7\D9\9B\BA", [6 x i8] c"@`;{\BB\DB", [6 x i8] c"Bc2p\B6\D5", [6 x i8] c"Df)m\A1\C7", [6 x i8] c"Fe f\AC\C9", [6 x i8] c"Hl\1FW\8F\E3", [6 x i8] c"Jo\16\\\82\ED", [6 x i8] c"Lj\0DA\95\FF", [6 x i8] c"Ni\04J\98\F1", [6 x i8] c"Pxs#\D3\AB", [6 x i8] c"R{z(\DE\A5", [6 x i8] c"T~a5\C9\B7", [6 x i8] c"V}h>\C4\B9", [6 x i8] c"XtW\0F\E7\93", [6 x i8] c"Zw^\04\EA\9D", [6 x i8] c"\\rE\19\FD\8F", [6 x i8] c"^qL\12\F0\81", [6 x i8] c"`P\AB\CBk;", [6 x i8] c"bS\A2\C0f5", [6 x i8] c"dV\B9\DDq'", [6 x i8] c"fU\B0\D6|)", [6 x i8] c"h\\\8F\E7_\03", [6 x i8] c"j_\86\ECR\0D", [6 x i8] c"lZ\9D\F1E\1F", [6 x i8] c"nY\94\FAH\11", [6 x i8] c"pH\E3\93\03K", [6 x i8] c"rK\EA\98\0EE", [6 x i8] c"tN\F1\85\19W", [6 x i8] c"vM\F8\8E\14Y", [6 x i8] c"xD\C7\BF7s", [6 x i8] c"zG\CE\B4:}", [6 x i8] c"|B\D5\A9-o", [6 x i8] c"~A\DC\A2 a", [6 x i8] c"\80\C0v\F6m\AD", [6 x i8] c"\82\C3\7F\FD`\A3", [6 x i8] c"\84\C6d\E0w\B1", [6 x i8] c"\86\C5m\EBz\BF", [6 x i8] c"\88\CCR\DAY\95", [6 x i8] c"\8A\CF[\D1T\9B", [6 x i8] c"\8C\CA@\CCC\89", [6 x i8] c"\8E\C9I\C7N\87", [6 x i8] c"\90\D8>\AE\05\DD", [6 x i8] c"\92\DB7\A5\08\D3", [6 x i8] c"\94\DE,\B8\1F\C1", [6 x i8] c"\96\DD%\B3\12\CF", [6 x i8] c"\98\D4\1A\821\E5", [6 x i8] c"\9A\D7\13\89<\EB", [6 x i8] c"\9C\D2\08\94+\F9", [6 x i8] c"\9E\D1\01\9F&\F7", [6 x i8] c"\A0\F0\E6F\BDM", [6 x i8] c"\A2\F3\EFM\B0C", [6 x i8] c"\A4\F6\F4P\A7Q", [6 x i8] c"\A6\F5\FD[\AA_", [6 x i8] c"\A8\FC\C2j\89u", [6 x i8] c"\AA\FF\CBa\84{", [6 x i8] c"\AC\FA\D0|\93i", [6 x i8] c"\AE\F9\D9w\9Eg", [6 x i8] c"\B0\E8\AE\1E\D5=", [6 x i8] c"\B2\EB\A7\15\D83", [6 x i8] c"\B4\EE\BC\08\CF!", [6 x i8] c"\B6\ED\B5\03\C2/", [6 x i8] c"\B8\E4\8A2\E1\05", [6 x i8] c"\BA\E7\839\EC\0B", [6 x i8] c"\BC\E2\98$\FB\19", [6 x i8] c"\BE\E1\91/\F6\17", [6 x i8] c"\C0\A0M\8D\D6v", [6 x i8] c"\C2\A3D\86\DBx", [6 x i8] c"\C4\A6_\9B\CCj", [6 x i8] c"\C6\A5V\90\C1d", [6 x i8] c"\C8\ACi\A1\E2N", [6 x i8] c"\CA\AF`\AA\EF@", [6 x i8] c"\CC\AA{\B7\F8R", [6 x i8] c"\CE\A9r\BC\F5\\", [6 x i8] c"\D0\B8\05\D5\BE\06", [6 x i8] c"\D2\BB\0C\DE\B3\08", [6 x i8] c"\D4\BE\17\C3\A4\1A", [6 x i8] c"\D6\BD\1E\C8\A9\14", [6 x i8] c"\D8\B4!\F9\8A>", [6 x i8] c"\DA\B7(\F2\870", [6 x i8] c"\DC\B23\EF\90\22", [6 x i8] c"\DE\B1:\E4\9D,", [6 x i8] c"\E0\90\DD=\06\96", [6 x i8] c"\E2\93\D46\0B\98", [6 x i8] c"\E4\96\CF+\1C\8A", [6 x i8] c"\E6\95\C6 \11\84", [6 x i8] c"\E8\9C\F9\112\AE", [6 x i8] c"\EA\9F\F0\1A?\A0", [6 x i8] c"\EC\9A\EB\07(\B2", [6 x i8] c"\EE\99\E2\0C%\BC", [6 x i8] c"\F0\88\95en\E6", [6 x i8] c"\F2\8B\9Cnc\E8", [6 x i8] c"\F4\8E\87st\FA", [6 x i8] c"\F6\8D\8Exy\F4", [6 x i8] c"\F8\84\B1IZ\DE", [6 x i8] c"\FA\87\B8BW\D0", [6 x i8] c"\FC\82\A3_@\C2", [6 x i8] c"\FE\81\AATM\CC", [6 x i8] c"\1B\9B\EC\F7\DAA", [6 x i8] c"\19\98\E5\FC\D7O", [6 x i8] c"\1F\9D\FE\E1\C0]", [6 x i8] c"\1D\9E\F7\EA\CDS", [6 x i8] c"\13\97\C8\DB\EEy", [6 x i8] c"\11\94\C1\D0\E3w", [6 x i8] c"\17\91\DA\CD\F4e", [6 x i8] c"\15\92\D3\C6\F9k", [6 x i8] c"\0B\83\A4\AF\B21", [6 x i8] c"\09\80\AD\A4\BF?", [6 x i8] c"\0F\85\B6\B9\A8-", [6 x i8] c"\0D\86\BF\B2\A5#", [6 x i8] c"\03\8F\80\83\86\09", [6 x i8] c"\01\8C\89\88\8B\07", [6 x i8] c"\07\89\92\95\9C\15", [6 x i8] c"\05\8A\9B\9E\91\1B", [6 x i8] c";\AB|G\0A\A1", [6 x i8] c"9\A8uL\07\AF", [6 x i8] c"?\ADnQ\10\BD", [6 x i8] c"=\AEgZ\1D\B3", [6 x i8] c"3\A7Xk>\99", [6 x i8] c"1\A4Q`3\97", [6 x i8] c"7\A1J}$\85", [6 x i8] c"5\A2Cv)\8B", [6 x i8] c"+\B34\1Fb\D1", [6 x i8] c")\B0=\14o\DF", [6 x i8] c"/\B5&\09x\CD", [6 x i8] c"-\B6/\02u\C3", [6 x i8] c"#\BF\103V\E9", [6 x i8] c"!\BC\198[\E7", [6 x i8] c"'\B9\02%L\F5", [6 x i8] c"%\BA\0B.A\FB", [6 x i8] c"[\FB\D7\8Ca\9A", [6 x i8] c"Y\F8\DE\87l\94", [6 x i8] c"_\FD\C5\9A{\86", [6 x i8] c"]\FE\CC\91v\88", [6 x i8] c"S\F7\F3\A0U\A2", [6 x i8] c"Q\F4\FA\ABX\AC", [6 x i8] c"W\F1\E1\B6O\BE", [6 x i8] c"U\F2\E8\BDB\B0", [6 x i8] c"K\E3\9F\D4\09\EA", [6 x i8] c"I\E0\96\DF\04\E4", [6 x i8] c"O\E5\8D\C2\13\F6", [6 x i8] c"M\E6\84\C9\1E\F8", [6 x i8] c"C\EF\BB\F8=\D2", [6 x i8] c"A\EC\B2\F30\DC", [6 x i8] c"G\E9\A9\EE'\CE", [6 x i8] c"E\EA\A0\E5*\C0", [6 x i8] c"{\CBG<\B1z", [6 x i8] c"y\C8N7\BCt", [6 x i8] c"\7F\CDU*\ABf", [6 x i8] c"}\CE\\!\A6h", [6 x i8] c"s\C7c\10\85B", [6 x i8] c"q\C4j\1B\88L", [6 x i8] c"w\C1q\06\9F^", [6 x i8] c"u\C2x\0D\92P", [6 x i8] c"k\D3\0Fd\D9\0A", [6 x i8] c"i\D0\06o\D4\04", [6 x i8] c"o\D5\1Dr\C3\16", [6 x i8] c"m\D6\14y\CE\18", [6 x i8] c"c\DF+H\ED2", [6 x i8] c"a\DC\22C\E0<", [6 x i8] c"g\D99^\F7.", [6 x i8] c"e\DA0U\FA ", [6 x i8] c"\9B[\9A\01\B7\EC", [6 x i8] c"\99X\93\0A\BA\E2", [6 x i8] c"\9F]\88\17\AD\F0", [6 x i8] c"\9D^\81\1C\A0\FE", [6 x i8] c"\93W\BE-\83\D4", [6 x i8] c"\91T\B7&\8E\DA", [6 x i8] c"\97Q\AC;\99\C8", [6 x i8] c"\95R\A50\94\C6", [6 x i8] c"\8BC\D2Y\DF\9C", [6 x i8] c"\89@\DBR\D2\92", [6 x i8] c"\8FE\C0O\C5\80", [6 x i8] c"\8DF\C9D\C8\8E", [6 x i8] c"\83O\F6u\EB\A4", [6 x i8] c"\81L\FF~\E6\AA", [6 x i8] c"\87I\E4c\F1\B8", [6 x i8] c"\85J\EDh\FC\B6", [6 x i8] c"\BBk\0A\B1g\0C", [6 x i8] c"\B9h\03\BAj\02", [6 x i8] c"\BFm\18\A7}\10", [6 x i8] c"\BDn\11\ACp\1E", [6 x i8] c"\B3g.\9DS4", [6 x i8] c"\B1d'\96^:", [6 x i8] c"\B7a<\8BI(", [6 x i8] c"\B5b5\80D&", [6 x i8] c"\ABsB\E9\0F|", [6 x i8] c"\A9pK\E2\02r", [6 x i8] c"\AFuP\FF\15`", [6 x i8] c"\ADvY\F4\18n", [6 x i8] c"\A3\7Ff\C5;D", [6 x i8] c"\A1|o\CE6J", [6 x i8] c"\A7yt\D3!X", [6 x i8] c"\A5z}\D8,V", [6 x i8] c"\DB;\A1z\0C7", [6 x i8] c"\D98\A8q\019", [6 x i8] c"\DF=\B3l\16+", [6 x i8] c"\DD>\BAg\1B%", [6 x i8] c"\D37\85V8\0F", [6 x i8] c"\D14\8C]5\01", [6 x i8] c"\D71\97@\22\13", [6 x i8] c"\D52\9EK/\1D", [6 x i8] c"\CB#\E9\22dG", [6 x i8] c"\C9 \E0)iI", [6 x i8] c"\CF%\FB4~[", [6 x i8] c"\CD&\F2?sU", [6 x i8] c"\C3/\CD\0EP\7F", [6 x i8] c"\C1,\C4\05]q", [6 x i8] c"\C7)\DF\18Jc", [6 x i8] c"\C5*\D6\13Gm", [6 x i8] c"\FB\0B1\CA\DC\D7", [6 x i8] c"\F9\088\C1\D1\D9", [6 x i8] c"\FF\0D#\DC\C6\CB", [6 x i8] c"\FD\0E*\D7\CB\C5", [6 x i8] c"\F3\07\15\E6\E8\EF", [6 x i8] c"\F1\04\1C\ED\E5\E1", [6 x i8] c"\F7\01\07\F0\F2\F3", [6 x i8] c"\F5\02\0E\FB\FF\FD", [6 x i8] c"\EB\13y\92\B4\A7", [6 x i8] c"\E9\10p\99\B9\A9", [6 x i8] c"\EF\15k\84\AE\BB", [6 x i8] c"\ED\16b\8F\A3\B5", [6 x i8] c"\E3\1F]\BE\80\9F", [6 x i8] c"\E1\1CT\B5\8D\91", [6 x i8] c"\E7\19O\A8\9A\83", [6 x i8] c"\E5\1AF\A3\97\8D"], align 16
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@__const.aes_ecb_test.plaintext = private unnamed_addr constant [2 x [16 x i8]] [[16 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*", [16 x i8] c"\AE-\8AW\1E\03\AC\9C\9E\B7o\ACE\AF\8EQ"], align 16
@__const.aes_ecb_test.ciphertext = private unnamed_addr constant [2 x [16 x i8]] [[16 x i8] c"\F3\EE\D1\BD\B5\D2\A0<\06KZ~=\B1\81\F8", [16 x i8] c"Y\1C\CB\10\D4\10\ED&\DC[\A7J16(p"], align 16
@__const.aes_cbc_test.ciphertext = private unnamed_addr constant [1 x [32 x i8]] [[32 x i8] c"\F5\8CL\04\D6\E5\F1\BAw\9E\AB\FB_{\FB\D6\9C\FCN\96~\DB\80\8Dg\9Fw{\C6p,}"], align 16
@__const.aes_cbc_test.iv = private unnamed_addr constant [1 x [16 x i8]] [[16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F"], align 16
@__const.aes_ctr_test.plaintext = private unnamed_addr constant [1 x [32 x i8]] [[32 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*\AE-\8AW\1E\03\AC\9C\9E\B7o\ACE\AF\8EQ"], align 16
@__const.aes_ctr_test.ciphertext = private unnamed_addr constant [1 x [32 x i8]] [[32 x i8] c"`\1E\C3\13wW\89\A5\B7\A7\F5\04\BB\F3\D2(\F4C\E3\CAMb\B5\9A\CA\84\E9\90\CA\CA\F5\C5"], align 16
@__const.aes_ctr_test.iv = private unnamed_addr constant [1 x [16 x i8]] [[16 x i8] c"\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF"], align 16
@__const.aes_ctr_test.key = private unnamed_addr constant [1 x [32 x i8]] [[32 x i8] c"`=\EB\10\15\CAq\BE+s\AE\F0\85}w\81\1F5,\07;a\08\D7-\98\10\A3\09\14\DF\F4"], align 16
@__const.aes_ccm_test.plaintext = private unnamed_addr constant <{ <{ i8, i8, i8, i8, [28 x i8] }>, <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }> }> <{ <{ i8, i8, i8, i8, [28 x i8] }> <{ i8 32, i8 33, i8 34, i8 35, [28 x i8] zeroinitializer }>, <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c" !\22#$%&'()*+,-./", [16 x i8] zeroinitializer }>, <{ [24 x i8], [8 x i8] }> <{ [24 x i8] c" !\22#$%&'()*+,-./01234567", [8 x i8] zeroinitializer }> }>, align 16
@__const.aes_ccm_test.assoc = private unnamed_addr constant <{ <{ [8 x i8], [24 x i8] }>, <{ [16 x i8], [16 x i8] }>, <{ [20 x i8], [12 x i8] }> }> <{ <{ [8 x i8], [24 x i8] }> <{ [8 x i8] c"\00\01\02\03\04\05\06\07", [24 x i8] zeroinitializer }>, <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", [16 x i8] zeroinitializer }>, <{ [20 x i8], [12 x i8] }> <{ [20 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13", [12 x i8] zeroinitializer }> }>, align 16
@__const.aes_ccm_test.ciphertext = private unnamed_addr constant <{ <{ [8 x i8], [40 x i8] }>, <{ [22 x i8], [26 x i8] }>, <{ [32 x i8], [16 x i8] }> }> <{ <{ [8 x i8], [40 x i8] }> <{ [8 x i8] c"qb\01[M\AC%]", [40 x i8] zeroinitializer }>, <{ [22 x i8], [26 x i8] }> <{ [22 x i8] c"\D2\A1\F0\E0Q\EA_b\08\1Aw\92\07=Y=\1F\C6O\BF\AC\CD", [26 x i8] zeroinitializer }>, <{ [32 x i8], [16 x i8] }> <{ [32 x i8] c"\E3\B2\01\A9\F5\B7\1Az\9B\1C\EA\EC\CD\97\E7\0Bav\AA\D9\A4B\8A\A5HC\92\FB\C1\B0\99Q", [16 x i8] zeroinitializer }> }>, align 16
@__const.aes_ccm_test.iv = private unnamed_addr constant <{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ [8 x i8], [8 x i8] }>, [16 x i8] }> <{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, [9 x i8] zeroinitializer }>, <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\10\11\12\13\14\15\16\17", [8 x i8] zeroinitializer }>, [16 x i8] c"\10\11\12\13\14\15\16\17\18\19\1A\1B\00\00\00\00" }>, align 16
@__const.aes_ccm_test.key = private unnamed_addr constant [1 x <{ [16 x i8], [16 x i8] }>] [<{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"@ABCDEFGHIJKLMNO", [16 x i8] zeroinitializer }>], align 16
@.str.1 = private unnamed_addr constant [15 x i8] c"AES Tests: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"SUCCEEDED\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @xor_buf(ptr nocapture noundef readonly %in, ptr nocapture noundef %out, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp8.not = icmp eq i64 %len, 0, !BLADE-T !7
  br i1 %cmp8.not, label %for.end, label %iter.check

iter.check:                                       ; preds = %entry
  %min.iters.check = icmp ult i64 %len, 8, !BLADE-T !7
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %uglygep = getelementptr i8, ptr %out, i64 %len, !BLADE-T !7
  %uglygep10 = getelementptr i8, ptr %in, i64 %len, !BLADE-T !7
  %bound0 = icmp ugt ptr %uglygep10, %out, !BLADE-T !7
  %bound1 = icmp ugt ptr %uglygep, %in, !BLADE-T !7
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i64 %len, 32, !BLADE-T !7
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %len, -32, !BLADE-T !7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %0 = getelementptr inbounds i8, ptr %in, i64 %index, !BLADE-S !8, !BLADE-T !7
  call void @llvm.x86.sse2.lfence()
  %wide.load = load <16 x i8>, ptr %0, align 1, !tbaa !9, !alias.scope !12, !BLADE-T !7
  %1 = getelementptr inbounds i8, ptr %0, i64 16, !BLADE-S !8
  %wide.load12 = load <16 x i8>, ptr %1, align 1, !tbaa !9, !alias.scope !12, !BLADE-T !7
  %2 = getelementptr inbounds i8, ptr %out, i64 %index, !BLADE-S !8, !BLADE-T !7
  call void @llvm.x86.sse2.lfence()
  %wide.load13 = load <16 x i8>, ptr %2, align 1, !tbaa !9, !alias.scope !15, !noalias !12, !BLADE-T !7
  %3 = getelementptr inbounds i8, ptr %2, i64 16, !BLADE-S !8
  %wide.load14 = load <16 x i8>, ptr %3, align 1, !tbaa !9, !alias.scope !15, !noalias !12, !BLADE-T !7
  %4 = xor <16 x i8> %wide.load13, %wide.load
  %5 = xor <16 x i8> %wide.load14, %wide.load12
  store <16 x i8> %4, ptr %2, align 1, !tbaa !9, !alias.scope !15, !noalias !12
  store <16 x i8> %5, ptr %3, align 1, !tbaa !9, !alias.scope !15, !noalias !12
  %index.next = add nuw i64 %index, 32
  %6 = icmp eq i64 %index.next, %n.vec
  br i1 %6, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %len, !BLADE-T !7
  br i1 %cmp.n, label %for.end, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = and i64 %len, 24, !BLADE-T !7
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check, %vector.main.loop.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %len, -8, !BLADE-T !7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ]
  %7 = getelementptr inbounds i8, ptr %in, i64 %index18, !BLADE-S !8, !BLADE-T !7
  %wide.load19 = load <8 x i8>, ptr %7, align 1, !tbaa !9, !alias.scope !21, !BLADE-T !7
  %8 = getelementptr inbounds i8, ptr %out, i64 %index18, !BLADE-S !8, !BLADE-T !7
  %wide.load20 = load <8 x i8>, ptr %8, align 1, !tbaa !9, !alias.scope !24, !noalias !21, !BLADE-T !7
  %9 = xor <8 x i8> %wide.load20, %wide.load19
  store <8 x i8> %9, ptr %8, align 1, !tbaa !9, !alias.scope !24, !noalias !21
  %index.next21 = add nuw i64 %index18, 8
  %10 = icmp eq i64 %index.next21, %n.vec16
  br i1 %10, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %n.vec16, %len, !BLADE-T !7
  br i1 %cmp.n17, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %vec.epilog.middle.block, %vec.epilog.iter.check, %vector.memcheck, %iter.check
  %idx.09.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ]
  %11 = xor i64 %idx.09.ph, -1
  %12 = add i64 %11, %len, !BLADE-T !7
  %xtraiter = and i64 %len, 3, !BLADE-T !7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.prol, %for.body.preheader
  %idx.09.prol = phi i64 [ %inc.prol, %for.body.prol ], [ %idx.09.ph, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %arrayidx.prol = getelementptr inbounds i8, ptr %in, i64 %idx.09.prol, !BLADE-S !8, !BLADE-T !7
  %13 = load i8, ptr %arrayidx.prol, align 1, !tbaa !9, !BLADE-T !7
  %arrayidx1.prol = getelementptr inbounds i8, ptr %out, i64 %idx.09.prol, !BLADE-S !8, !BLADE-T !7
  %14 = load i8, ptr %arrayidx1.prol, align 1, !tbaa !9, !BLADE-T !7
  %xor7.prol = xor i8 %14, %13
  store i8 %xor7.prol, ptr %arrayidx1.prol, align 1, !tbaa !9
  %inc.prol = add nuw i64 %idx.09.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !27

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %idx.09.unr = phi i64 [ %idx.09.ph, %for.body.preheader ], [ %inc.prol, %for.body.prol ]
  %15 = icmp ult i64 %12, 3
  br i1 %15, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %for.body.prol.loopexit
  %idx.09 = phi i64 [ %inc.3, %for.body ], [ %idx.09.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %idx.09, !BLADE-S !8, !BLADE-T !7
  %16 = load i8, ptr %arrayidx, align 1, !tbaa !9, !BLADE-T !7
  %arrayidx1 = getelementptr inbounds i8, ptr %out, i64 %idx.09, !BLADE-S !8, !BLADE-T !7
  %17 = load i8, ptr %arrayidx1, align 1, !tbaa !9, !BLADE-T !7
  %xor7 = xor i8 %17, %16
  store i8 %xor7, ptr %arrayidx1, align 1, !tbaa !9
  %inc = add nuw i64 %idx.09, 1
  %arrayidx.1 = getelementptr inbounds i8, ptr %in, i64 %inc, !BLADE-S !8, !BLADE-T !7
  %18 = load i8, ptr %arrayidx.1, align 1, !tbaa !9, !BLADE-T !7
  %arrayidx1.1 = getelementptr inbounds i8, ptr %out, i64 %inc, !BLADE-S !8, !BLADE-T !7
  %19 = load i8, ptr %arrayidx1.1, align 1, !tbaa !9, !BLADE-T !7
  %xor7.1 = xor i8 %19, %18
  store i8 %xor7.1, ptr %arrayidx1.1, align 1, !tbaa !9
  %inc.1 = add nuw i64 %idx.09, 2
  %arrayidx.2 = getelementptr inbounds i8, ptr %in, i64 %inc.1, !BLADE-S !8, !BLADE-T !7
  %20 = load i8, ptr %arrayidx.2, align 1, !tbaa !9, !BLADE-T !7
  %arrayidx1.2 = getelementptr inbounds i8, ptr %out, i64 %inc.1, !BLADE-S !8, !BLADE-T !7
  %21 = load i8, ptr %arrayidx1.2, align 1, !tbaa !9, !BLADE-T !7
  %xor7.2 = xor i8 %21, %20
  store i8 %xor7.2, ptr %arrayidx1.2, align 1, !tbaa !9
  %inc.2 = add nuw i64 %idx.09, 3
  %arrayidx.3 = getelementptr inbounds i8, ptr %in, i64 %inc.2, !BLADE-S !8, !BLADE-T !7
  %22 = load i8, ptr %arrayidx.3, align 1, !tbaa !9, !BLADE-T !7
  %arrayidx1.3 = getelementptr inbounds i8, ptr %out, i64 %inc.2, !BLADE-S !8, !BLADE-T !7
  %23 = load i8, ptr %arrayidx1.3, align 1, !tbaa !9, !BLADE-T !7
  %xor7.3 = xor i8 %23, %22
  store i8 %xor7.3, ptr %arrayidx1.3, align 1, !tbaa !9
  %inc.3 = add nuw i64 %idx.09, 4
  %exitcond.not.3 = icmp eq i64 %inc.3, %len, !BLADE-T !7
  br i1 %exitcond.not.3, label %for.end, label %for.body, !llvm.loop !29

for.end:                                          ; preds = %for.body, %for.body.prol.loopexit, %vec.epilog.middle.block, %middle.block, %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @aes_encrypt_cbc(ptr nocapture noundef readonly %in, i64 noundef %in_len, ptr nocapture noundef writeonly %out, ptr noundef %key, i32 noundef %keysize, ptr nocapture noundef readonly %iv) local_unnamed_addr #2 {
entry:
  %buf_in = alloca [16 x i8], align 16
  %buf_out = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf_in) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf_out) #16
  %rem = and i64 %in_len, 15
  %cmp.not = icmp eq i64 %rem, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %div22 = lshr i64 %in_len, 4
  %conv = trunc i64 %div22 to i32
  %cmp123 = icmp sgt i32 %conv, 0
  br i1 %cmp123, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %if.end
  %iv_buf.sroa.12.0.iv.sroa_idx = getelementptr inbounds i8, ptr %iv, i64 8
  %0 = load <8 x i8>, ptr %iv_buf.sroa.12.0.iv.sroa_idx, align 1
  %iv_buf.sroa.8.0.iv.sroa_idx = getelementptr inbounds i8, ptr %iv, i64 4
  %1 = load <4 x i8>, ptr %iv_buf.sroa.8.0.iv.sroa_idx, align 1
  %iv_buf.sroa.6.0.iv.sroa_idx = getelementptr inbounds i8, ptr %iv, i64 2
  %2 = load <2 x i8>, ptr %iv_buf.sroa.6.0.iv.sroa_idx, align 1
  %iv_buf.sroa.5.0.iv.sroa_idx = getelementptr inbounds i8, ptr %iv, i64 1
  %iv_buf.sroa.5.0.copyload = load i8, ptr %iv_buf.sroa.5.0.iv.sroa_idx, align 1
  %wide.trip.count = and i64 %div22, 4294967295
  %iv_buf.sroa.5.0.buf_out.sroa_idx = getelementptr inbounds i8, ptr %buf_out, i64 1
  %iv_buf.sroa.6.0.buf_out.sroa_idx = getelementptr inbounds i8, ptr %buf_out, i64 2
  %iv_buf.sroa.8.0.buf_out.sroa_idx = getelementptr inbounds i8, ptr %buf_out, i64 4
  %iv_buf.sroa.12.0.buf_out.sroa_idx = getelementptr inbounds i8, ptr %buf_out, i64 8
  %iv_buf.sroa.0.0.peel = load i8, ptr %iv, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %buf_in, ptr noundef nonnull align 1 dereferenceable(16) %in, i64 16, i1 false)
  %3 = load <16 x i8>, ptr %buf_in, align 16, !tbaa !9
  %4 = insertelement <16 x i8> poison, i8 %iv_buf.sroa.0.0.peel, i64 0
  %5 = insertelement <16 x i8> %4, i8 %iv_buf.sroa.5.0.copyload, i64 1
  %6 = shufflevector <2 x i8> %2, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %7 = shufflevector <16 x i8> %5, <16 x i8> %6, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %8 = shufflevector <4 x i8> %1, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %9 = shufflevector <16 x i8> %7, <16 x i8> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %10 = shufflevector <8 x i8> %0, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %11 = shufflevector <16 x i8> %9, <16 x i8> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %12 = xor <16 x i8> %3, %11
  store <16 x i8> %12, ptr %buf_in, align 16, !tbaa !9
  call void @aes_encrypt(ptr noundef nonnull %buf_in, ptr noundef nonnull %buf_out, ptr noundef %key, i32 noundef %keysize)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %out, ptr noundef nonnull align 16 dereferenceable(16) %buf_out, i64 16, i1 false)
  %iv_buf.sroa.5.0.copyload28.peel = load i8, ptr %iv_buf.sroa.5.0.buf_out.sroa_idx, align 1
  %13 = load <2 x i8>, ptr %iv_buf.sroa.6.0.buf_out.sroa_idx, align 2
  %14 = load <4 x i8>, ptr %iv_buf.sroa.8.0.buf_out.sroa_idx, align 4
  %15 = load <8 x i8>, ptr %iv_buf.sroa.12.0.buf_out.sroa_idx, align 8
  %exitcond.not.peel = icmp eq i64 %wide.trip.count, 1
  br i1 %exitcond.not.peel, label %cleanup, label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %iv_buf.sroa.5.0 = phi i8 [ %iv_buf.sroa.5.0.copyload28, %for.body ], [ %iv_buf.sroa.5.0.copyload28.peel, %for.body.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %for.body.preheader ]
  %16 = phi <8 x i8> [ %32, %for.body ], [ %15, %for.body.preheader ]
  %17 = phi <4 x i8> [ %31, %for.body ], [ %14, %for.body.preheader ]
  %18 = phi <2 x i8> [ %30, %for.body ], [ %13, %for.body.preheader ]
  %iv_buf.sroa.0.0 = load i8, ptr %buf_out, align 16
  %19 = shl nsw i64 %indvars.iv, 4
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %buf_in, ptr noundef nonnull align 1 dereferenceable(16) %arrayidx, i64 16, i1 false)
  %20 = load <16 x i8>, ptr %buf_in, align 16, !tbaa !9
  %21 = insertelement <16 x i8> poison, i8 %iv_buf.sroa.0.0, i64 0
  %22 = insertelement <16 x i8> %21, i8 %iv_buf.sroa.5.0, i64 1
  %23 = shufflevector <2 x i8> %18, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %24 = shufflevector <16 x i8> %22, <16 x i8> %23, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %25 = shufflevector <4 x i8> %17, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %26 = shufflevector <16 x i8> %24, <16 x i8> %25, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %27 = shufflevector <8 x i8> %16, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %28 = shufflevector <16 x i8> %26, <16 x i8> %27, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %29 = xor <16 x i8> %20, %28
  store <16 x i8> %29, ptr %buf_in, align 16, !tbaa !9
  call void @aes_encrypt(ptr noundef nonnull %buf_in, ptr noundef nonnull %buf_out, ptr noundef %key, i32 noundef %keysize)
  %arrayidx10 = getelementptr inbounds i8, ptr %out, i64 %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %arrayidx10, ptr noundef nonnull align 16 dereferenceable(16) %buf_out, i64 16, i1 false)
  %iv_buf.sroa.5.0.copyload28 = load i8, ptr %iv_buf.sroa.5.0.buf_out.sroa_idx, align 1
  %30 = load <2 x i8>, ptr %iv_buf.sroa.6.0.buf_out.sroa_idx, align 2
  %31 = load <4 x i8>, ptr %iv_buf.sroa.8.0.buf_out.sroa_idx, align 4
  %32 = load <8 x i8>, ptr %iv_buf.sroa.12.0.buf_out.sroa_idx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !30

cleanup:                                          ; preds = %for.body, %for.body.preheader, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end ], [ 1, %for.body ], [ 1, %for.body.preheader ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf_out) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf_in) #16
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @aes_encrypt(ptr nocapture noundef readonly %in, ptr nocapture noundef writeonly %out, ptr noundef readonly %key, i32 noundef %keysize) local_unnamed_addr #4 {
entry:
  %state = alloca [4 x [4 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #16
  %0 = load i8, ptr %in, align 1, !tbaa !9
  %arrayidx3 = getelementptr inbounds i8, ptr %in, i64 1
  %1 = load i8, ptr %arrayidx3, align 1, !tbaa !9
  %arrayidx4 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 1
  %arrayidx6 = getelementptr inbounds i8, ptr %in, i64 2
  %2 = load i8, ptr %arrayidx6, align 1, !tbaa !9
  %arrayidx7 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 2
  %arrayidx9 = getelementptr inbounds i8, ptr %in, i64 3
  %3 = load i8, ptr %arrayidx9, align 1, !tbaa !9
  %arrayidx10 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 3
  %arrayidx12 = getelementptr inbounds i8, ptr %in, i64 4
  %4 = load i8, ptr %arrayidx12, align 1, !tbaa !9
  %arrayidx14 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 1
  %arrayidx15 = getelementptr inbounds i8, ptr %in, i64 5
  %5 = load i8, ptr %arrayidx15, align 1, !tbaa !9
  %arrayidx17 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 1, i64 1
  %arrayidx18 = getelementptr inbounds i8, ptr %in, i64 6
  %6 = load i8, ptr %arrayidx18, align 1, !tbaa !9
  %arrayidx20 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 2, i64 1
  %arrayidx21 = getelementptr inbounds i8, ptr %in, i64 7
  %7 = load i8, ptr %arrayidx21, align 1, !tbaa !9
  %arrayidx23 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 3, i64 1
  %arrayidx24 = getelementptr inbounds i8, ptr %in, i64 8
  %8 = load i8, ptr %arrayidx24, align 1, !tbaa !9
  %arrayidx26 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 2
  %arrayidx27 = getelementptr inbounds i8, ptr %in, i64 9
  %9 = load i8, ptr %arrayidx27, align 1, !tbaa !9
  %arrayidx29 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 1, i64 2
  %arrayidx30 = getelementptr inbounds i8, ptr %in, i64 10
  %10 = load i8, ptr %arrayidx30, align 1, !tbaa !9
  %arrayidx32 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 2, i64 2
  %arrayidx33 = getelementptr inbounds i8, ptr %in, i64 11
  %11 = load i8, ptr %arrayidx33, align 1, !tbaa !9
  %arrayidx35 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 3, i64 2
  %arrayidx36 = getelementptr inbounds i8, ptr %in, i64 12
  %12 = load i8, ptr %arrayidx36, align 1, !tbaa !9
  %arrayidx38 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 3
  %arrayidx39 = getelementptr inbounds i8, ptr %in, i64 13
  %13 = load i8, ptr %arrayidx39, align 1, !tbaa !9
  %arrayidx41 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 1, i64 3
  %arrayidx42 = getelementptr inbounds i8, ptr %in, i64 14
  %14 = load i8, ptr %arrayidx42, align 1, !tbaa !9
  %arrayidx44 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 2, i64 3
  %arrayidx45 = getelementptr inbounds i8, ptr %in, i64 15
  %15 = load i8, ptr %arrayidx45, align 1, !tbaa !9
  %arrayidx47 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 3, i64 3
  %16 = load i32, ptr %key, align 4, !tbaa !32
  %shr.i = lshr i32 %16, 24
  %shr3.i = lshr i32 %16, 16
  %shr7.i = lshr i32 %16, 8
  %17 = trunc i32 %shr.i to i8
  %conv18.i = xor i8 %0, %17
  %18 = trunc i32 %shr3.i to i8
  %conv25.i = xor i8 %1, %18
  %19 = trunc i32 %shr7.i to i8
  %conv32.i = xor i8 %2, %19
  %20 = trunc i32 %16 to i8
  %conv39.i = xor i8 %3, %20
  %arrayidx40.i = getelementptr inbounds i32, ptr %key, i64 1
  %21 = load i32, ptr %arrayidx40.i, align 4, !tbaa !32
  %shr41.i = lshr i32 %21, 24
  %shr45.i = lshr i32 %21, 16
  %shr49.i = lshr i32 %21, 8
  %22 = trunc i32 %shr41.i to i8
  %conv61.i = xor i8 %4, %22
  %23 = trunc i32 %shr45.i to i8
  %conv68.i = xor i8 %5, %23
  %24 = trunc i32 %shr49.i to i8
  %conv75.i = xor i8 %6, %24
  %25 = trunc i32 %21 to i8
  %conv82.i = xor i8 %7, %25
  %arrayidx83.i = getelementptr inbounds i32, ptr %key, i64 2
  %26 = load i32, ptr %arrayidx83.i, align 4, !tbaa !32
  %shr84.i = lshr i32 %26, 24
  %shr88.i = lshr i32 %26, 16
  %shr92.i = lshr i32 %26, 8
  %27 = trunc i32 %shr84.i to i8
  %conv104.i = xor i8 %8, %27
  %28 = trunc i32 %shr88.i to i8
  %conv111.i = xor i8 %9, %28
  %29 = trunc i32 %shr92.i to i8
  %conv118.i = xor i8 %10, %29
  %30 = trunc i32 %26 to i8
  %conv125.i = xor i8 %11, %30
  %arrayidx126.i = getelementptr inbounds i32, ptr %key, i64 3
  %31 = load i32, ptr %arrayidx126.i, align 4, !tbaa !32
  %shr127.i = lshr i32 %31, 24
  %shr131.i = lshr i32 %31, 16
  %shr135.i = lshr i32 %31, 8
  %32 = trunc i32 %shr127.i to i8
  %conv147.i = xor i8 %12, %32
  %33 = trunc i32 %shr131.i to i8
  %conv154.i = xor i8 %13, %33
  %34 = trunc i32 %shr135.i to i8
  %conv161.i = xor i8 %14, %34
  %35 = trunc i32 %31 to i8
  %conv168.i = xor i8 %15, %35
  %conv.i = zext i8 %conv18.i to i32
  %shr.i225 = lshr i32 %conv.i, 4
  %idxprom.i = zext i32 %shr.i225 to i64
  %and.i = and i32 %conv.i, 15
  %idxprom6.i = zext i32 %and.i to i64
  %arrayidx7.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom.i, i64 %idxprom6.i
  %36 = load i8, ptr %arrayidx7.i, align 1, !tbaa !9
  store i8 %36, ptr %state, align 16, !tbaa !9
  %conv12.i = zext i8 %conv61.i to i32
  %shr13.i = lshr i32 %conv12.i, 4
  %idxprom14.i = zext i32 %shr13.i to i64
  %and19.i = and i32 %conv12.i, 15
  %idxprom20.i = zext i32 %and19.i to i64
  %arrayidx21.i226 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom14.i, i64 %idxprom20.i
  %37 = load i8, ptr %arrayidx21.i226, align 1, !tbaa !9
  store i8 %37, ptr %arrayidx14, align 1, !tbaa !9
  %conv26.i = zext i8 %conv104.i to i32
  %shr27.i = lshr i32 %conv26.i, 4
  %idxprom28.i = zext i32 %shr27.i to i64
  %and33.i = and i32 %conv26.i, 15
  %idxprom34.i = zext i32 %and33.i to i64
  %arrayidx35.i227 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom28.i, i64 %idxprom34.i
  %38 = load i8, ptr %arrayidx35.i227, align 1, !tbaa !9
  store i8 %38, ptr %arrayidx26, align 2, !tbaa !9
  %conv40.i = zext i8 %conv147.i to i32
  %shr41.i228 = lshr i32 %conv40.i, 4
  %idxprom42.i = zext i32 %shr41.i228 to i64
  %and47.i = and i32 %conv40.i, 15
  %idxprom48.i = zext i32 %and47.i to i64
  %arrayidx49.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom42.i, i64 %idxprom48.i
  %39 = load i8, ptr %arrayidx49.i, align 1, !tbaa !9
  store i8 %39, ptr %arrayidx38, align 1, !tbaa !9
  %conv54.i = zext i8 %conv25.i to i32
  %shr55.i = lshr i32 %conv54.i, 4
  %idxprom56.i = zext i32 %shr55.i to i64
  %and61.i = and i32 %conv54.i, 15
  %idxprom62.i = zext i32 %and61.i to i64
  %arrayidx63.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom56.i, i64 %idxprom62.i
  %40 = load i8, ptr %arrayidx63.i, align 1, !tbaa !9
  %conv68.i229 = zext i8 %conv68.i to i32
  %shr69.i = lshr i32 %conv68.i229, 4
  %idxprom70.i = zext i32 %shr69.i to i64
  %and75.i = and i32 %conv68.i229, 15
  %idxprom76.i = zext i32 %and75.i to i64
  %arrayidx77.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom70.i, i64 %idxprom76.i
  %41 = load i8, ptr %arrayidx77.i, align 1, !tbaa !9
  %conv82.i230 = zext i8 %conv111.i to i32
  %shr83.i = lshr i32 %conv82.i230, 4
  %idxprom84.i = zext i32 %shr83.i to i64
  %and89.i = and i32 %conv82.i230, 15
  %idxprom90.i = zext i32 %and89.i to i64
  %arrayidx91.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom84.i, i64 %idxprom90.i
  %42 = load i8, ptr %arrayidx91.i, align 1, !tbaa !9
  %conv96.i = zext i8 %conv154.i to i32
  %shr97.i = lshr i32 %conv96.i, 4
  %idxprom98.i = zext i32 %shr97.i to i64
  %and103.i = and i32 %conv96.i, 15
  %idxprom104.i = zext i32 %and103.i to i64
  %arrayidx105.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom98.i, i64 %idxprom104.i
  %43 = load i8, ptr %arrayidx105.i, align 1, !tbaa !9
  %conv110.i = zext i8 %conv32.i to i32
  %shr111.i = lshr i32 %conv110.i, 4
  %idxprom112.i = zext i32 %shr111.i to i64
  %and117.i = and i32 %conv110.i, 15
  %idxprom118.i = zext i32 %and117.i to i64
  %arrayidx119.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom112.i, i64 %idxprom118.i
  %44 = load i8, ptr %arrayidx119.i, align 1, !tbaa !9
  %conv124.i = zext i8 %conv75.i to i32
  %shr125.i = lshr i32 %conv124.i, 4
  %idxprom126.i = zext i32 %shr125.i to i64
  %and131.i = and i32 %conv124.i, 15
  %idxprom132.i = zext i32 %and131.i to i64
  %arrayidx133.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom126.i, i64 %idxprom132.i
  %45 = load i8, ptr %arrayidx133.i, align 1, !tbaa !9
  %conv138.i = zext i8 %conv118.i to i32
  %shr139.i = lshr i32 %conv138.i, 4
  %idxprom140.i = zext i32 %shr139.i to i64
  %and145.i = and i32 %conv138.i, 15
  %idxprom146.i = zext i32 %and145.i to i64
  %arrayidx147.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom140.i, i64 %idxprom146.i
  %46 = load i8, ptr %arrayidx147.i, align 1, !tbaa !9
  %conv152.i = zext i8 %conv161.i to i32
  %shr153.i = lshr i32 %conv152.i, 4
  %idxprom154.i = zext i32 %shr153.i to i64
  %and159.i = and i32 %conv152.i, 15
  %idxprom160.i = zext i32 %and159.i to i64
  %arrayidx161.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom154.i, i64 %idxprom160.i
  %47 = load i8, ptr %arrayidx161.i, align 1, !tbaa !9
  %conv166.i = zext i8 %conv39.i to i32
  %shr167.i = lshr i32 %conv166.i, 4
  %idxprom168.i = zext i32 %shr167.i to i64
  %and173.i = and i32 %conv166.i, 15
  %idxprom174.i = zext i32 %and173.i to i64
  %arrayidx175.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom168.i, i64 %idxprom174.i
  %48 = load i8, ptr %arrayidx175.i, align 1, !tbaa !9
  %conv180.i = zext i8 %conv82.i to i32
  %shr181.i = lshr i32 %conv180.i, 4
  %idxprom182.i = zext i32 %shr181.i to i64
  %and187.i = and i32 %conv180.i, 15
  %idxprom188.i = zext i32 %and187.i to i64
  %arrayidx189.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom182.i, i64 %idxprom188.i
  %49 = load i8, ptr %arrayidx189.i, align 1, !tbaa !9
  %conv194.i = zext i8 %conv125.i to i32
  %shr195.i = lshr i32 %conv194.i, 4
  %idxprom196.i = zext i32 %shr195.i to i64
  %and201.i = and i32 %conv194.i, 15
  %idxprom202.i = zext i32 %and201.i to i64
  %arrayidx203.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom196.i, i64 %idxprom202.i
  %50 = load i8, ptr %arrayidx203.i, align 1, !tbaa !9
  %conv208.i = zext i8 %conv168.i to i32
  %shr209.i = lshr i32 %conv208.i, 4
  %idxprom210.i = zext i32 %shr209.i to i64
  %and215.i = and i32 %conv208.i, 15
  %idxprom216.i = zext i32 %and215.i to i64
  %arrayidx217.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom210.i, i64 %idxprom216.i
  %51 = load i8, ptr %arrayidx217.i, align 1, !tbaa !9
  store i8 %41, ptr %arrayidx4, align 4, !tbaa !9
  store i8 %42, ptr %arrayidx17, align 1, !tbaa !9
  store i8 %43, ptr %arrayidx29, align 2, !tbaa !9
  store i8 %40, ptr %arrayidx41, align 1, !tbaa !9
  store i8 %46, ptr %arrayidx7, align 8, !tbaa !9
  store i8 %44, ptr %arrayidx32, align 2, !tbaa !9
  store i8 %47, ptr %arrayidx20, align 1, !tbaa !9
  store i8 %45, ptr %arrayidx44, align 1, !tbaa !9
  store i8 %51, ptr %arrayidx10, align 4, !tbaa !9
  store i8 %50, ptr %arrayidx47, align 1, !tbaa !9
  store i8 %49, ptr %arrayidx35, align 2, !tbaa !9
  store i8 %48, ptr %arrayidx23, align 1, !tbaa !9
  call void @MixColumns(ptr noundef nonnull %state)
  %arrayidx53 = getelementptr inbounds i32, ptr %key, i64 4
  %52 = load i32, ptr %arrayidx53, align 4, !tbaa !32
  %shr.i238 = lshr i32 %52, 24
  %shr3.i239 = lshr i32 %52, 16
  %shr7.i240 = lshr i32 %52, 8
  %53 = load i8, ptr %state, align 16, !tbaa !9
  %54 = trunc i32 %shr.i238 to i8
  %conv18.i241 = xor i8 %53, %54
  %55 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %56 = trunc i32 %shr3.i239 to i8
  %conv25.i243 = xor i8 %55, %56
  %57 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %58 = trunc i32 %shr7.i240 to i8
  %conv32.i245 = xor i8 %57, %58
  %59 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %60 = trunc i32 %52 to i8
  %conv39.i247 = xor i8 %59, %60
  %arrayidx40.i248 = getelementptr inbounds i32, ptr %key, i64 5
  %61 = load i32, ptr %arrayidx40.i248, align 4, !tbaa !32
  %shr41.i249 = lshr i32 %61, 24
  %shr45.i250 = lshr i32 %61, 16
  %shr49.i251 = lshr i32 %61, 8
  %62 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %63 = trunc i32 %shr41.i249 to i8
  %conv61.i253 = xor i8 %62, %63
  %64 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %65 = trunc i32 %shr45.i250 to i8
  %conv68.i255 = xor i8 %64, %65
  %66 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %67 = trunc i32 %shr49.i251 to i8
  %conv75.i257 = xor i8 %66, %67
  %68 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %69 = trunc i32 %61 to i8
  %conv82.i259 = xor i8 %68, %69
  %arrayidx83.i260 = getelementptr inbounds i32, ptr %key, i64 6
  %70 = load i32, ptr %arrayidx83.i260, align 4, !tbaa !32
  %shr84.i261 = lshr i32 %70, 24
  %shr88.i262 = lshr i32 %70, 16
  %shr92.i263 = lshr i32 %70, 8
  %71 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %72 = trunc i32 %shr84.i261 to i8
  %conv104.i265 = xor i8 %71, %72
  %73 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %74 = trunc i32 %shr88.i262 to i8
  %conv111.i267 = xor i8 %73, %74
  %75 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %76 = trunc i32 %shr92.i263 to i8
  %conv118.i269 = xor i8 %75, %76
  %77 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %78 = trunc i32 %70 to i8
  %conv125.i271 = xor i8 %77, %78
  %arrayidx126.i272 = getelementptr inbounds i32, ptr %key, i64 7
  %79 = load i32, ptr %arrayidx126.i272, align 4, !tbaa !32
  %shr127.i273 = lshr i32 %79, 24
  %shr131.i274 = lshr i32 %79, 16
  %shr135.i275 = lshr i32 %79, 8
  %80 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %81 = trunc i32 %shr127.i273 to i8
  %conv147.i277 = xor i8 %80, %81
  %82 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %83 = trunc i32 %shr131.i274 to i8
  %conv154.i279 = xor i8 %82, %83
  %84 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %85 = trunc i32 %shr135.i275 to i8
  %conv161.i281 = xor i8 %84, %85
  %86 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %87 = trunc i32 %79 to i8
  %conv168.i283 = xor i8 %86, %87
  %conv.i284 = zext i8 %conv18.i241 to i32
  %shr.i285 = lshr i32 %conv.i284, 4
  %idxprom.i286 = zext i32 %shr.i285 to i64
  %and.i287 = and i32 %conv.i284, 15
  %idxprom6.i288 = zext i32 %and.i287 to i64
  %arrayidx7.i289 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom.i286, i64 %idxprom6.i288
  %88 = load i8, ptr %arrayidx7.i289, align 1, !tbaa !9
  store i8 %88, ptr %state, align 16, !tbaa !9
  %conv12.i291 = zext i8 %conv61.i253 to i32
  %shr13.i292 = lshr i32 %conv12.i291, 4
  %idxprom14.i293 = zext i32 %shr13.i292 to i64
  %and19.i294 = and i32 %conv12.i291, 15
  %idxprom20.i295 = zext i32 %and19.i294 to i64
  %arrayidx21.i296 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom14.i293, i64 %idxprom20.i295
  %89 = load i8, ptr %arrayidx21.i296, align 1, !tbaa !9
  store i8 %89, ptr %arrayidx14, align 1, !tbaa !9
  %conv26.i298 = zext i8 %conv104.i265 to i32
  %shr27.i299 = lshr i32 %conv26.i298, 4
  %idxprom28.i300 = zext i32 %shr27.i299 to i64
  %and33.i301 = and i32 %conv26.i298, 15
  %idxprom34.i302 = zext i32 %and33.i301 to i64
  %arrayidx35.i303 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom28.i300, i64 %idxprom34.i302
  %90 = load i8, ptr %arrayidx35.i303, align 1, !tbaa !9
  store i8 %90, ptr %arrayidx26, align 2, !tbaa !9
  %conv40.i305 = zext i8 %conv147.i277 to i32
  %shr41.i306 = lshr i32 %conv40.i305, 4
  %idxprom42.i307 = zext i32 %shr41.i306 to i64
  %and47.i308 = and i32 %conv40.i305, 15
  %idxprom48.i309 = zext i32 %and47.i308 to i64
  %arrayidx49.i310 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom42.i307, i64 %idxprom48.i309
  %91 = load i8, ptr %arrayidx49.i310, align 1, !tbaa !9
  store i8 %91, ptr %arrayidx38, align 1, !tbaa !9
  %conv54.i312 = zext i8 %conv25.i243 to i32
  %shr55.i313 = lshr i32 %conv54.i312, 4
  %idxprom56.i314 = zext i32 %shr55.i313 to i64
  %and61.i315 = and i32 %conv54.i312, 15
  %idxprom62.i316 = zext i32 %and61.i315 to i64
  %arrayidx63.i317 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom56.i314, i64 %idxprom62.i316
  %92 = load i8, ptr %arrayidx63.i317, align 1, !tbaa !9
  %conv68.i319 = zext i8 %conv68.i255 to i32
  %shr69.i320 = lshr i32 %conv68.i319, 4
  %idxprom70.i321 = zext i32 %shr69.i320 to i64
  %and75.i322 = and i32 %conv68.i319, 15
  %idxprom76.i323 = zext i32 %and75.i322 to i64
  %arrayidx77.i324 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom70.i321, i64 %idxprom76.i323
  %93 = load i8, ptr %arrayidx77.i324, align 1, !tbaa !9
  %conv82.i326 = zext i8 %conv111.i267 to i32
  %shr83.i327 = lshr i32 %conv82.i326, 4
  %idxprom84.i328 = zext i32 %shr83.i327 to i64
  %and89.i329 = and i32 %conv82.i326, 15
  %idxprom90.i330 = zext i32 %and89.i329 to i64
  %arrayidx91.i331 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom84.i328, i64 %idxprom90.i330
  %94 = load i8, ptr %arrayidx91.i331, align 1, !tbaa !9
  %conv96.i333 = zext i8 %conv154.i279 to i32
  %shr97.i334 = lshr i32 %conv96.i333, 4
  %idxprom98.i335 = zext i32 %shr97.i334 to i64
  %and103.i336 = and i32 %conv96.i333, 15
  %idxprom104.i337 = zext i32 %and103.i336 to i64
  %arrayidx105.i338 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom98.i335, i64 %idxprom104.i337
  %95 = load i8, ptr %arrayidx105.i338, align 1, !tbaa !9
  %conv110.i340 = zext i8 %conv32.i245 to i32
  %shr111.i341 = lshr i32 %conv110.i340, 4
  %idxprom112.i342 = zext i32 %shr111.i341 to i64
  %and117.i343 = and i32 %conv110.i340, 15
  %idxprom118.i344 = zext i32 %and117.i343 to i64
  %arrayidx119.i345 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom112.i342, i64 %idxprom118.i344
  %96 = load i8, ptr %arrayidx119.i345, align 1, !tbaa !9
  %conv124.i347 = zext i8 %conv75.i257 to i32
  %shr125.i348 = lshr i32 %conv124.i347, 4
  %idxprom126.i349 = zext i32 %shr125.i348 to i64
  %and131.i350 = and i32 %conv124.i347, 15
  %idxprom132.i351 = zext i32 %and131.i350 to i64
  %arrayidx133.i352 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom126.i349, i64 %idxprom132.i351
  %97 = load i8, ptr %arrayidx133.i352, align 1, !tbaa !9
  %conv138.i354 = zext i8 %conv118.i269 to i32
  %shr139.i355 = lshr i32 %conv138.i354, 4
  %idxprom140.i356 = zext i32 %shr139.i355 to i64
  %and145.i357 = and i32 %conv138.i354, 15
  %idxprom146.i358 = zext i32 %and145.i357 to i64
  %arrayidx147.i359 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom140.i356, i64 %idxprom146.i358
  %98 = load i8, ptr %arrayidx147.i359, align 1, !tbaa !9
  %conv152.i361 = zext i8 %conv161.i281 to i32
  %shr153.i362 = lshr i32 %conv152.i361, 4
  %idxprom154.i363 = zext i32 %shr153.i362 to i64
  %and159.i364 = and i32 %conv152.i361, 15
  %idxprom160.i365 = zext i32 %and159.i364 to i64
  %arrayidx161.i366 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom154.i363, i64 %idxprom160.i365
  %99 = load i8, ptr %arrayidx161.i366, align 1, !tbaa !9
  %conv166.i368 = zext i8 %conv39.i247 to i32
  %shr167.i369 = lshr i32 %conv166.i368, 4
  %idxprom168.i370 = zext i32 %shr167.i369 to i64
  %and173.i371 = and i32 %conv166.i368, 15
  %idxprom174.i372 = zext i32 %and173.i371 to i64
  %arrayidx175.i373 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom168.i370, i64 %idxprom174.i372
  %100 = load i8, ptr %arrayidx175.i373, align 1, !tbaa !9
  %conv180.i375 = zext i8 %conv82.i259 to i32
  %shr181.i376 = lshr i32 %conv180.i375, 4
  %idxprom182.i377 = zext i32 %shr181.i376 to i64
  %and187.i378 = and i32 %conv180.i375, 15
  %idxprom188.i379 = zext i32 %and187.i378 to i64
  %arrayidx189.i380 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom182.i377, i64 %idxprom188.i379
  %101 = load i8, ptr %arrayidx189.i380, align 1, !tbaa !9
  %conv194.i382 = zext i8 %conv125.i271 to i32
  %shr195.i383 = lshr i32 %conv194.i382, 4
  %idxprom196.i384 = zext i32 %shr195.i383 to i64
  %and201.i385 = and i32 %conv194.i382, 15
  %idxprom202.i386 = zext i32 %and201.i385 to i64
  %arrayidx203.i387 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom196.i384, i64 %idxprom202.i386
  %102 = load i8, ptr %arrayidx203.i387, align 1, !tbaa !9
  %conv208.i389 = zext i8 %conv168.i283 to i32
  %shr209.i390 = lshr i32 %conv208.i389, 4
  %idxprom210.i391 = zext i32 %shr209.i390 to i64
  %and215.i392 = and i32 %conv208.i389, 15
  %idxprom216.i393 = zext i32 %and215.i392 to i64
  %arrayidx217.i394 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom210.i391, i64 %idxprom216.i393
  %103 = load i8, ptr %arrayidx217.i394, align 1, !tbaa !9
  store i8 %93, ptr %arrayidx4, align 4, !tbaa !9
  store i8 %94, ptr %arrayidx17, align 1, !tbaa !9
  store i8 %95, ptr %arrayidx29, align 2, !tbaa !9
  store i8 %92, ptr %arrayidx41, align 1, !tbaa !9
  store i8 %98, ptr %arrayidx7, align 8, !tbaa !9
  store i8 %96, ptr %arrayidx32, align 2, !tbaa !9
  store i8 %99, ptr %arrayidx20, align 1, !tbaa !9
  store i8 %97, ptr %arrayidx44, align 1, !tbaa !9
  store i8 %103, ptr %arrayidx10, align 4, !tbaa !9
  store i8 %102, ptr %arrayidx47, align 1, !tbaa !9
  store i8 %101, ptr %arrayidx35, align 2, !tbaa !9
  store i8 %100, ptr %arrayidx23, align 1, !tbaa !9
  call void @MixColumns(ptr noundef nonnull %state)
  %arrayidx58 = getelementptr inbounds i32, ptr %key, i64 8
  %104 = load i32, ptr %arrayidx58, align 4, !tbaa !32
  %shr.i407 = lshr i32 %104, 24
  %shr3.i408 = lshr i32 %104, 16
  %shr7.i409 = lshr i32 %104, 8
  %105 = load i8, ptr %state, align 16, !tbaa !9
  %106 = trunc i32 %shr.i407 to i8
  %conv18.i410 = xor i8 %105, %106
  %107 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %108 = trunc i32 %shr3.i408 to i8
  %conv25.i412 = xor i8 %107, %108
  %109 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %110 = trunc i32 %shr7.i409 to i8
  %conv32.i414 = xor i8 %109, %110
  %111 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %112 = trunc i32 %104 to i8
  %conv39.i416 = xor i8 %111, %112
  %arrayidx40.i417 = getelementptr inbounds i32, ptr %key, i64 9
  %113 = load i32, ptr %arrayidx40.i417, align 4, !tbaa !32
  %shr41.i418 = lshr i32 %113, 24
  %shr45.i419 = lshr i32 %113, 16
  %shr49.i420 = lshr i32 %113, 8
  %114 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %115 = trunc i32 %shr41.i418 to i8
  %conv61.i422 = xor i8 %114, %115
  %116 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %117 = trunc i32 %shr45.i419 to i8
  %conv68.i424 = xor i8 %116, %117
  %118 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %119 = trunc i32 %shr49.i420 to i8
  %conv75.i426 = xor i8 %118, %119
  %120 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %121 = trunc i32 %113 to i8
  %conv82.i428 = xor i8 %120, %121
  %arrayidx83.i429 = getelementptr inbounds i32, ptr %key, i64 10
  %122 = load i32, ptr %arrayidx83.i429, align 4, !tbaa !32
  %shr84.i430 = lshr i32 %122, 24
  %shr88.i431 = lshr i32 %122, 16
  %shr92.i432 = lshr i32 %122, 8
  %123 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %124 = trunc i32 %shr84.i430 to i8
  %conv104.i434 = xor i8 %123, %124
  %125 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %126 = trunc i32 %shr88.i431 to i8
  %conv111.i436 = xor i8 %125, %126
  %127 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %128 = trunc i32 %shr92.i432 to i8
  %conv118.i438 = xor i8 %127, %128
  %129 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %130 = trunc i32 %122 to i8
  %conv125.i440 = xor i8 %129, %130
  %arrayidx126.i441 = getelementptr inbounds i32, ptr %key, i64 11
  %131 = load i32, ptr %arrayidx126.i441, align 4, !tbaa !32
  %shr127.i442 = lshr i32 %131, 24
  %shr131.i443 = lshr i32 %131, 16
  %shr135.i444 = lshr i32 %131, 8
  %132 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %133 = trunc i32 %shr127.i442 to i8
  %conv147.i446 = xor i8 %132, %133
  %134 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %135 = trunc i32 %shr131.i443 to i8
  %conv154.i448 = xor i8 %134, %135
  %136 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %137 = trunc i32 %shr135.i444 to i8
  %conv161.i450 = xor i8 %136, %137
  %138 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %139 = trunc i32 %131 to i8
  %conv168.i452 = xor i8 %138, %139
  %conv.i453 = zext i8 %conv18.i410 to i32
  %shr.i454 = lshr i32 %conv.i453, 4
  %idxprom.i455 = zext i32 %shr.i454 to i64
  %and.i456 = and i32 %conv.i453, 15
  %idxprom6.i457 = zext i32 %and.i456 to i64
  %arrayidx7.i458 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom.i455, i64 %idxprom6.i457
  %140 = load i8, ptr %arrayidx7.i458, align 1, !tbaa !9
  store i8 %140, ptr %state, align 16, !tbaa !9
  %conv12.i460 = zext i8 %conv61.i422 to i32
  %shr13.i461 = lshr i32 %conv12.i460, 4
  %idxprom14.i462 = zext i32 %shr13.i461 to i64
  %and19.i463 = and i32 %conv12.i460, 15
  %idxprom20.i464 = zext i32 %and19.i463 to i64
  %arrayidx21.i465 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom14.i462, i64 %idxprom20.i464
  %141 = load i8, ptr %arrayidx21.i465, align 1, !tbaa !9
  store i8 %141, ptr %arrayidx14, align 1, !tbaa !9
  %conv26.i467 = zext i8 %conv104.i434 to i32
  %shr27.i468 = lshr i32 %conv26.i467, 4
  %idxprom28.i469 = zext i32 %shr27.i468 to i64
  %and33.i470 = and i32 %conv26.i467, 15
  %idxprom34.i471 = zext i32 %and33.i470 to i64
  %arrayidx35.i472 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom28.i469, i64 %idxprom34.i471
  %142 = load i8, ptr %arrayidx35.i472, align 1, !tbaa !9
  store i8 %142, ptr %arrayidx26, align 2, !tbaa !9
  %conv40.i474 = zext i8 %conv147.i446 to i32
  %shr41.i475 = lshr i32 %conv40.i474, 4
  %idxprom42.i476 = zext i32 %shr41.i475 to i64
  %and47.i477 = and i32 %conv40.i474, 15
  %idxprom48.i478 = zext i32 %and47.i477 to i64
  %arrayidx49.i479 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom42.i476, i64 %idxprom48.i478
  %143 = load i8, ptr %arrayidx49.i479, align 1, !tbaa !9
  store i8 %143, ptr %arrayidx38, align 1, !tbaa !9
  %conv54.i481 = zext i8 %conv25.i412 to i32
  %shr55.i482 = lshr i32 %conv54.i481, 4
  %idxprom56.i483 = zext i32 %shr55.i482 to i64
  %and61.i484 = and i32 %conv54.i481, 15
  %idxprom62.i485 = zext i32 %and61.i484 to i64
  %arrayidx63.i486 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom56.i483, i64 %idxprom62.i485
  %144 = load i8, ptr %arrayidx63.i486, align 1, !tbaa !9
  %conv68.i488 = zext i8 %conv68.i424 to i32
  %shr69.i489 = lshr i32 %conv68.i488, 4
  %idxprom70.i490 = zext i32 %shr69.i489 to i64
  %and75.i491 = and i32 %conv68.i488, 15
  %idxprom76.i492 = zext i32 %and75.i491 to i64
  %arrayidx77.i493 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom70.i490, i64 %idxprom76.i492
  %145 = load i8, ptr %arrayidx77.i493, align 1, !tbaa !9
  %conv82.i495 = zext i8 %conv111.i436 to i32
  %shr83.i496 = lshr i32 %conv82.i495, 4
  %idxprom84.i497 = zext i32 %shr83.i496 to i64
  %and89.i498 = and i32 %conv82.i495, 15
  %idxprom90.i499 = zext i32 %and89.i498 to i64
  %arrayidx91.i500 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom84.i497, i64 %idxprom90.i499
  %146 = load i8, ptr %arrayidx91.i500, align 1, !tbaa !9
  %conv96.i502 = zext i8 %conv154.i448 to i32
  %shr97.i503 = lshr i32 %conv96.i502, 4
  %idxprom98.i504 = zext i32 %shr97.i503 to i64
  %and103.i505 = and i32 %conv96.i502, 15
  %idxprom104.i506 = zext i32 %and103.i505 to i64
  %arrayidx105.i507 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom98.i504, i64 %idxprom104.i506
  %147 = load i8, ptr %arrayidx105.i507, align 1, !tbaa !9
  %conv110.i509 = zext i8 %conv32.i414 to i32
  %shr111.i510 = lshr i32 %conv110.i509, 4
  %idxprom112.i511 = zext i32 %shr111.i510 to i64
  %and117.i512 = and i32 %conv110.i509, 15
  %idxprom118.i513 = zext i32 %and117.i512 to i64
  %arrayidx119.i514 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom112.i511, i64 %idxprom118.i513
  %148 = load i8, ptr %arrayidx119.i514, align 1, !tbaa !9
  %conv124.i516 = zext i8 %conv75.i426 to i32
  %shr125.i517 = lshr i32 %conv124.i516, 4
  %idxprom126.i518 = zext i32 %shr125.i517 to i64
  %and131.i519 = and i32 %conv124.i516, 15
  %idxprom132.i520 = zext i32 %and131.i519 to i64
  %arrayidx133.i521 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom126.i518, i64 %idxprom132.i520
  %149 = load i8, ptr %arrayidx133.i521, align 1, !tbaa !9
  %conv138.i523 = zext i8 %conv118.i438 to i32
  %shr139.i524 = lshr i32 %conv138.i523, 4
  %idxprom140.i525 = zext i32 %shr139.i524 to i64
  %and145.i526 = and i32 %conv138.i523, 15
  %idxprom146.i527 = zext i32 %and145.i526 to i64
  %arrayidx147.i528 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom140.i525, i64 %idxprom146.i527
  %150 = load i8, ptr %arrayidx147.i528, align 1, !tbaa !9
  %conv152.i530 = zext i8 %conv161.i450 to i32
  %shr153.i531 = lshr i32 %conv152.i530, 4
  %idxprom154.i532 = zext i32 %shr153.i531 to i64
  %and159.i533 = and i32 %conv152.i530, 15
  %idxprom160.i534 = zext i32 %and159.i533 to i64
  %arrayidx161.i535 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom154.i532, i64 %idxprom160.i534
  %151 = load i8, ptr %arrayidx161.i535, align 1, !tbaa !9
  %conv166.i537 = zext i8 %conv39.i416 to i32
  %shr167.i538 = lshr i32 %conv166.i537, 4
  %idxprom168.i539 = zext i32 %shr167.i538 to i64
  %and173.i540 = and i32 %conv166.i537, 15
  %idxprom174.i541 = zext i32 %and173.i540 to i64
  %arrayidx175.i542 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom168.i539, i64 %idxprom174.i541
  %152 = load i8, ptr %arrayidx175.i542, align 1, !tbaa !9
  %conv180.i544 = zext i8 %conv82.i428 to i32
  %shr181.i545 = lshr i32 %conv180.i544, 4
  %idxprom182.i546 = zext i32 %shr181.i545 to i64
  %and187.i547 = and i32 %conv180.i544, 15
  %idxprom188.i548 = zext i32 %and187.i547 to i64
  %arrayidx189.i549 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom182.i546, i64 %idxprom188.i548
  %153 = load i8, ptr %arrayidx189.i549, align 1, !tbaa !9
  %conv194.i551 = zext i8 %conv125.i440 to i32
  %shr195.i552 = lshr i32 %conv194.i551, 4
  %idxprom196.i553 = zext i32 %shr195.i552 to i64
  %and201.i554 = and i32 %conv194.i551, 15
  %idxprom202.i555 = zext i32 %and201.i554 to i64
  %arrayidx203.i556 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom196.i553, i64 %idxprom202.i555
  %154 = load i8, ptr %arrayidx203.i556, align 1, !tbaa !9
  %conv208.i558 = zext i8 %conv168.i452 to i32
  %shr209.i559 = lshr i32 %conv208.i558, 4
  %idxprom210.i560 = zext i32 %shr209.i559 to i64
  %and215.i561 = and i32 %conv208.i558, 15
  %idxprom216.i562 = zext i32 %and215.i561 to i64
  %arrayidx217.i563 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom210.i560, i64 %idxprom216.i562
  %155 = load i8, ptr %arrayidx217.i563, align 1, !tbaa !9
  store i8 %145, ptr %arrayidx4, align 4, !tbaa !9
  store i8 %146, ptr %arrayidx17, align 1, !tbaa !9
  store i8 %147, ptr %arrayidx29, align 2, !tbaa !9
  store i8 %144, ptr %arrayidx41, align 1, !tbaa !9
  store i8 %150, ptr %arrayidx7, align 8, !tbaa !9
  store i8 %148, ptr %arrayidx32, align 2, !tbaa !9
  store i8 %151, ptr %arrayidx20, align 1, !tbaa !9
  store i8 %149, ptr %arrayidx44, align 1, !tbaa !9
  store i8 %155, ptr %arrayidx10, align 4, !tbaa !9
  store i8 %154, ptr %arrayidx47, align 1, !tbaa !9
  store i8 %153, ptr %arrayidx35, align 2, !tbaa !9
  store i8 %152, ptr %arrayidx23, align 1, !tbaa !9
  call void @MixColumns(ptr noundef nonnull %state)
  %arrayidx63 = getelementptr inbounds i32, ptr %key, i64 12
  %156 = load i32, ptr %arrayidx63, align 4, !tbaa !32
  %shr.i576 = lshr i32 %156, 24
  %shr3.i577 = lshr i32 %156, 16
  %shr7.i578 = lshr i32 %156, 8
  %157 = load i8, ptr %state, align 16, !tbaa !9
  %158 = trunc i32 %shr.i576 to i8
  %conv18.i579 = xor i8 %157, %158
  %159 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %160 = trunc i32 %shr3.i577 to i8
  %conv25.i581 = xor i8 %159, %160
  %161 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %162 = trunc i32 %shr7.i578 to i8
  %conv32.i583 = xor i8 %161, %162
  %163 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %164 = trunc i32 %156 to i8
  %conv39.i585 = xor i8 %163, %164
  %arrayidx40.i586 = getelementptr inbounds i32, ptr %key, i64 13
  %165 = load i32, ptr %arrayidx40.i586, align 4, !tbaa !32
  %shr41.i587 = lshr i32 %165, 24
  %shr45.i588 = lshr i32 %165, 16
  %shr49.i589 = lshr i32 %165, 8
  %166 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %167 = trunc i32 %shr41.i587 to i8
  %conv61.i591 = xor i8 %166, %167
  %168 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %169 = trunc i32 %shr45.i588 to i8
  %conv68.i593 = xor i8 %168, %169
  %170 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %171 = trunc i32 %shr49.i589 to i8
  %conv75.i595 = xor i8 %170, %171
  %172 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %173 = trunc i32 %165 to i8
  %conv82.i597 = xor i8 %172, %173
  %arrayidx83.i598 = getelementptr inbounds i32, ptr %key, i64 14
  %174 = load i32, ptr %arrayidx83.i598, align 4, !tbaa !32
  %shr84.i599 = lshr i32 %174, 24
  %shr88.i600 = lshr i32 %174, 16
  %shr92.i601 = lshr i32 %174, 8
  %175 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %176 = trunc i32 %shr84.i599 to i8
  %conv104.i603 = xor i8 %175, %176
  %177 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %178 = trunc i32 %shr88.i600 to i8
  %conv111.i605 = xor i8 %177, %178
  %179 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %180 = trunc i32 %shr92.i601 to i8
  %conv118.i607 = xor i8 %179, %180
  %181 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %182 = trunc i32 %174 to i8
  %conv125.i609 = xor i8 %181, %182
  %arrayidx126.i610 = getelementptr inbounds i32, ptr %key, i64 15
  %183 = load i32, ptr %arrayidx126.i610, align 4, !tbaa !32
  %shr127.i611 = lshr i32 %183, 24
  %shr131.i612 = lshr i32 %183, 16
  %shr135.i613 = lshr i32 %183, 8
  %184 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %185 = trunc i32 %shr127.i611 to i8
  %conv147.i615 = xor i8 %184, %185
  %186 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %187 = trunc i32 %shr131.i612 to i8
  %conv154.i617 = xor i8 %186, %187
  %188 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %189 = trunc i32 %shr135.i613 to i8
  %conv161.i619 = xor i8 %188, %189
  %190 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %191 = trunc i32 %183 to i8
  %conv168.i621 = xor i8 %190, %191
  %conv.i622 = zext i8 %conv18.i579 to i32
  %shr.i623 = lshr i32 %conv.i622, 4
  %idxprom.i624 = zext i32 %shr.i623 to i64
  %and.i625 = and i32 %conv.i622, 15
  %idxprom6.i626 = zext i32 %and.i625 to i64
  %arrayidx7.i627 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom.i624, i64 %idxprom6.i626
  %192 = load i8, ptr %arrayidx7.i627, align 1, !tbaa !9
  store i8 %192, ptr %state, align 16, !tbaa !9
  %conv12.i629 = zext i8 %conv61.i591 to i32
  %shr13.i630 = lshr i32 %conv12.i629, 4
  %idxprom14.i631 = zext i32 %shr13.i630 to i64
  %and19.i632 = and i32 %conv12.i629, 15
  %idxprom20.i633 = zext i32 %and19.i632 to i64
  %arrayidx21.i634 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom14.i631, i64 %idxprom20.i633
  %193 = load i8, ptr %arrayidx21.i634, align 1, !tbaa !9
  store i8 %193, ptr %arrayidx14, align 1, !tbaa !9
  %conv26.i636 = zext i8 %conv104.i603 to i32
  %shr27.i637 = lshr i32 %conv26.i636, 4
  %idxprom28.i638 = zext i32 %shr27.i637 to i64
  %and33.i639 = and i32 %conv26.i636, 15
  %idxprom34.i640 = zext i32 %and33.i639 to i64
  %arrayidx35.i641 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom28.i638, i64 %idxprom34.i640
  %194 = load i8, ptr %arrayidx35.i641, align 1, !tbaa !9
  store i8 %194, ptr %arrayidx26, align 2, !tbaa !9
  %conv40.i643 = zext i8 %conv147.i615 to i32
  %shr41.i644 = lshr i32 %conv40.i643, 4
  %idxprom42.i645 = zext i32 %shr41.i644 to i64
  %and47.i646 = and i32 %conv40.i643, 15
  %idxprom48.i647 = zext i32 %and47.i646 to i64
  %arrayidx49.i648 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom42.i645, i64 %idxprom48.i647
  %195 = load i8, ptr %arrayidx49.i648, align 1, !tbaa !9
  store i8 %195, ptr %arrayidx38, align 1, !tbaa !9
  %conv54.i650 = zext i8 %conv25.i581 to i32
  %shr55.i651 = lshr i32 %conv54.i650, 4
  %idxprom56.i652 = zext i32 %shr55.i651 to i64
  %and61.i653 = and i32 %conv54.i650, 15
  %idxprom62.i654 = zext i32 %and61.i653 to i64
  %arrayidx63.i655 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom56.i652, i64 %idxprom62.i654
  %196 = load i8, ptr %arrayidx63.i655, align 1, !tbaa !9
  %conv68.i657 = zext i8 %conv68.i593 to i32
  %shr69.i658 = lshr i32 %conv68.i657, 4
  %idxprom70.i659 = zext i32 %shr69.i658 to i64
  %and75.i660 = and i32 %conv68.i657, 15
  %idxprom76.i661 = zext i32 %and75.i660 to i64
  %arrayidx77.i662 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom70.i659, i64 %idxprom76.i661
  %197 = load i8, ptr %arrayidx77.i662, align 1, !tbaa !9
  %conv82.i664 = zext i8 %conv111.i605 to i32
  %shr83.i665 = lshr i32 %conv82.i664, 4
  %idxprom84.i666 = zext i32 %shr83.i665 to i64
  %and89.i667 = and i32 %conv82.i664, 15
  %idxprom90.i668 = zext i32 %and89.i667 to i64
  %arrayidx91.i669 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom84.i666, i64 %idxprom90.i668
  %198 = load i8, ptr %arrayidx91.i669, align 1, !tbaa !9
  %conv96.i671 = zext i8 %conv154.i617 to i32
  %shr97.i672 = lshr i32 %conv96.i671, 4
  %idxprom98.i673 = zext i32 %shr97.i672 to i64
  %and103.i674 = and i32 %conv96.i671, 15
  %idxprom104.i675 = zext i32 %and103.i674 to i64
  %arrayidx105.i676 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom98.i673, i64 %idxprom104.i675
  %199 = load i8, ptr %arrayidx105.i676, align 1, !tbaa !9
  %conv110.i678 = zext i8 %conv32.i583 to i32
  %shr111.i679 = lshr i32 %conv110.i678, 4
  %idxprom112.i680 = zext i32 %shr111.i679 to i64
  %and117.i681 = and i32 %conv110.i678, 15
  %idxprom118.i682 = zext i32 %and117.i681 to i64
  %arrayidx119.i683 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom112.i680, i64 %idxprom118.i682
  %200 = load i8, ptr %arrayidx119.i683, align 1, !tbaa !9
  %conv124.i685 = zext i8 %conv75.i595 to i32
  %shr125.i686 = lshr i32 %conv124.i685, 4
  %idxprom126.i687 = zext i32 %shr125.i686 to i64
  %and131.i688 = and i32 %conv124.i685, 15
  %idxprom132.i689 = zext i32 %and131.i688 to i64
  %arrayidx133.i690 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom126.i687, i64 %idxprom132.i689
  %201 = load i8, ptr %arrayidx133.i690, align 1, !tbaa !9
  %conv138.i692 = zext i8 %conv118.i607 to i32
  %shr139.i693 = lshr i32 %conv138.i692, 4
  %idxprom140.i694 = zext i32 %shr139.i693 to i64
  %and145.i695 = and i32 %conv138.i692, 15
  %idxprom146.i696 = zext i32 %and145.i695 to i64
  %arrayidx147.i697 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom140.i694, i64 %idxprom146.i696
  %202 = load i8, ptr %arrayidx147.i697, align 1, !tbaa !9
  %conv152.i699 = zext i8 %conv161.i619 to i32
  %shr153.i700 = lshr i32 %conv152.i699, 4
  %idxprom154.i701 = zext i32 %shr153.i700 to i64
  %and159.i702 = and i32 %conv152.i699, 15
  %idxprom160.i703 = zext i32 %and159.i702 to i64
  %arrayidx161.i704 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom154.i701, i64 %idxprom160.i703
  %203 = load i8, ptr %arrayidx161.i704, align 1, !tbaa !9
  %conv166.i706 = zext i8 %conv39.i585 to i32
  %shr167.i707 = lshr i32 %conv166.i706, 4
  %idxprom168.i708 = zext i32 %shr167.i707 to i64
  %and173.i709 = and i32 %conv166.i706, 15
  %idxprom174.i710 = zext i32 %and173.i709 to i64
  %arrayidx175.i711 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom168.i708, i64 %idxprom174.i710
  %204 = load i8, ptr %arrayidx175.i711, align 1, !tbaa !9
  %conv180.i713 = zext i8 %conv82.i597 to i32
  %shr181.i714 = lshr i32 %conv180.i713, 4
  %idxprom182.i715 = zext i32 %shr181.i714 to i64
  %and187.i716 = and i32 %conv180.i713, 15
  %idxprom188.i717 = zext i32 %and187.i716 to i64
  %arrayidx189.i718 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom182.i715, i64 %idxprom188.i717
  %205 = load i8, ptr %arrayidx189.i718, align 1, !tbaa !9
  %conv194.i720 = zext i8 %conv125.i609 to i32
  %shr195.i721 = lshr i32 %conv194.i720, 4
  %idxprom196.i722 = zext i32 %shr195.i721 to i64
  %and201.i723 = and i32 %conv194.i720, 15
  %idxprom202.i724 = zext i32 %and201.i723 to i64
  %arrayidx203.i725 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom196.i722, i64 %idxprom202.i724
  %206 = load i8, ptr %arrayidx203.i725, align 1, !tbaa !9
  %conv208.i727 = zext i8 %conv168.i621 to i32
  %shr209.i728 = lshr i32 %conv208.i727, 4
  %idxprom210.i729 = zext i32 %shr209.i728 to i64
  %and215.i730 = and i32 %conv208.i727, 15
  %idxprom216.i731 = zext i32 %and215.i730 to i64
  %arrayidx217.i732 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom210.i729, i64 %idxprom216.i731
  %207 = load i8, ptr %arrayidx217.i732, align 1, !tbaa !9
  store i8 %197, ptr %arrayidx4, align 4, !tbaa !9
  store i8 %198, ptr %arrayidx17, align 1, !tbaa !9
  store i8 %199, ptr %arrayidx29, align 2, !tbaa !9
  store i8 %196, ptr %arrayidx41, align 1, !tbaa !9
  store i8 %202, ptr %arrayidx7, align 8, !tbaa !9
  store i8 %200, ptr %arrayidx32, align 2, !tbaa !9
  store i8 %203, ptr %arrayidx20, align 1, !tbaa !9
  store i8 %201, ptr %arrayidx44, align 1, !tbaa !9
  store i8 %207, ptr %arrayidx10, align 4, !tbaa !9
  store i8 %206, ptr %arrayidx47, align 1, !tbaa !9
  store i8 %205, ptr %arrayidx35, align 2, !tbaa !9
  store i8 %204, ptr %arrayidx23, align 1, !tbaa !9
  call void @MixColumns(ptr noundef nonnull %state)
  %arrayidx68 = getelementptr inbounds i32, ptr %key, i64 16
  %208 = load i32, ptr %arrayidx68, align 4, !tbaa !32
  %shr.i745 = lshr i32 %208, 24
  %shr3.i746 = lshr i32 %208, 16
  %shr7.i747 = lshr i32 %208, 8
  %209 = load i8, ptr %state, align 16, !tbaa !9
  %210 = trunc i32 %shr.i745 to i8
  %conv18.i748 = xor i8 %209, %210
  %211 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %212 = trunc i32 %shr3.i746 to i8
  %conv25.i750 = xor i8 %211, %212
  %213 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %214 = trunc i32 %shr7.i747 to i8
  %conv32.i752 = xor i8 %213, %214
  %215 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %216 = trunc i32 %208 to i8
  %conv39.i754 = xor i8 %215, %216
  %arrayidx40.i755 = getelementptr inbounds i32, ptr %key, i64 17
  %217 = load i32, ptr %arrayidx40.i755, align 4, !tbaa !32
  %shr41.i756 = lshr i32 %217, 24
  %shr45.i757 = lshr i32 %217, 16
  %shr49.i758 = lshr i32 %217, 8
  %218 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %219 = trunc i32 %shr41.i756 to i8
  %conv61.i760 = xor i8 %218, %219
  %220 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %221 = trunc i32 %shr45.i757 to i8
  %conv68.i762 = xor i8 %220, %221
  %222 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %223 = trunc i32 %shr49.i758 to i8
  %conv75.i764 = xor i8 %222, %223
  %224 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %225 = trunc i32 %217 to i8
  %conv82.i766 = xor i8 %224, %225
  %arrayidx83.i767 = getelementptr inbounds i32, ptr %key, i64 18
  %226 = load i32, ptr %arrayidx83.i767, align 4, !tbaa !32
  %shr84.i768 = lshr i32 %226, 24
  %shr88.i769 = lshr i32 %226, 16
  %shr92.i770 = lshr i32 %226, 8
  %227 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %228 = trunc i32 %shr84.i768 to i8
  %conv104.i772 = xor i8 %227, %228
  %229 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %230 = trunc i32 %shr88.i769 to i8
  %conv111.i774 = xor i8 %229, %230
  %231 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %232 = trunc i32 %shr92.i770 to i8
  %conv118.i776 = xor i8 %231, %232
  %233 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %234 = trunc i32 %226 to i8
  %conv125.i778 = xor i8 %233, %234
  %arrayidx126.i779 = getelementptr inbounds i32, ptr %key, i64 19
  %235 = load i32, ptr %arrayidx126.i779, align 4, !tbaa !32
  %shr127.i780 = lshr i32 %235, 24
  %shr131.i781 = lshr i32 %235, 16
  %shr135.i782 = lshr i32 %235, 8
  %236 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %237 = trunc i32 %shr127.i780 to i8
  %conv147.i784 = xor i8 %236, %237
  %238 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %239 = trunc i32 %shr131.i781 to i8
  %conv154.i786 = xor i8 %238, %239
  %240 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %241 = trunc i32 %shr135.i782 to i8
  %conv161.i788 = xor i8 %240, %241
  %242 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %243 = trunc i32 %235 to i8
  %conv168.i790 = xor i8 %242, %243
  %conv.i791 = zext i8 %conv18.i748 to i32
  %shr.i792 = lshr i32 %conv.i791, 4
  %idxprom.i793 = zext i32 %shr.i792 to i64
  %and.i794 = and i32 %conv.i791, 15
  %idxprom6.i795 = zext i32 %and.i794 to i64
  %arrayidx7.i796 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom.i793, i64 %idxprom6.i795
  %244 = load i8, ptr %arrayidx7.i796, align 1, !tbaa !9
  store i8 %244, ptr %state, align 16, !tbaa !9
  %conv12.i798 = zext i8 %conv61.i760 to i32
  %shr13.i799 = lshr i32 %conv12.i798, 4
  %idxprom14.i800 = zext i32 %shr13.i799 to i64
  %and19.i801 = and i32 %conv12.i798, 15
  %idxprom20.i802 = zext i32 %and19.i801 to i64
  %arrayidx21.i803 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom14.i800, i64 %idxprom20.i802
  %245 = load i8, ptr %arrayidx21.i803, align 1, !tbaa !9
  store i8 %245, ptr %arrayidx14, align 1, !tbaa !9
  %conv26.i805 = zext i8 %conv104.i772 to i32
  %shr27.i806 = lshr i32 %conv26.i805, 4
  %idxprom28.i807 = zext i32 %shr27.i806 to i64
  %and33.i808 = and i32 %conv26.i805, 15
  %idxprom34.i809 = zext i32 %and33.i808 to i64
  %arrayidx35.i810 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom28.i807, i64 %idxprom34.i809
  %246 = load i8, ptr %arrayidx35.i810, align 1, !tbaa !9
  store i8 %246, ptr %arrayidx26, align 2, !tbaa !9
  %conv40.i812 = zext i8 %conv147.i784 to i32
  %shr41.i813 = lshr i32 %conv40.i812, 4
  %idxprom42.i814 = zext i32 %shr41.i813 to i64
  %and47.i815 = and i32 %conv40.i812, 15
  %idxprom48.i816 = zext i32 %and47.i815 to i64
  %arrayidx49.i817 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom42.i814, i64 %idxprom48.i816
  %247 = load i8, ptr %arrayidx49.i817, align 1, !tbaa !9
  store i8 %247, ptr %arrayidx38, align 1, !tbaa !9
  %conv54.i819 = zext i8 %conv25.i750 to i32
  %shr55.i820 = lshr i32 %conv54.i819, 4
  %idxprom56.i821 = zext i32 %shr55.i820 to i64
  %and61.i822 = and i32 %conv54.i819, 15
  %idxprom62.i823 = zext i32 %and61.i822 to i64
  %arrayidx63.i824 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom56.i821, i64 %idxprom62.i823
  %248 = load i8, ptr %arrayidx63.i824, align 1, !tbaa !9
  %conv68.i826 = zext i8 %conv68.i762 to i32
  %shr69.i827 = lshr i32 %conv68.i826, 4
  %idxprom70.i828 = zext i32 %shr69.i827 to i64
  %and75.i829 = and i32 %conv68.i826, 15
  %idxprom76.i830 = zext i32 %and75.i829 to i64
  %arrayidx77.i831 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom70.i828, i64 %idxprom76.i830
  %249 = load i8, ptr %arrayidx77.i831, align 1, !tbaa !9
  %conv82.i833 = zext i8 %conv111.i774 to i32
  %shr83.i834 = lshr i32 %conv82.i833, 4
  %idxprom84.i835 = zext i32 %shr83.i834 to i64
  %and89.i836 = and i32 %conv82.i833, 15
  %idxprom90.i837 = zext i32 %and89.i836 to i64
  %arrayidx91.i838 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom84.i835, i64 %idxprom90.i837
  %250 = load i8, ptr %arrayidx91.i838, align 1, !tbaa !9
  %conv96.i840 = zext i8 %conv154.i786 to i32
  %shr97.i841 = lshr i32 %conv96.i840, 4
  %idxprom98.i842 = zext i32 %shr97.i841 to i64
  %and103.i843 = and i32 %conv96.i840, 15
  %idxprom104.i844 = zext i32 %and103.i843 to i64
  %arrayidx105.i845 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom98.i842, i64 %idxprom104.i844
  %251 = load i8, ptr %arrayidx105.i845, align 1, !tbaa !9
  %conv110.i847 = zext i8 %conv32.i752 to i32
  %shr111.i848 = lshr i32 %conv110.i847, 4
  %idxprom112.i849 = zext i32 %shr111.i848 to i64
  %and117.i850 = and i32 %conv110.i847, 15
  %idxprom118.i851 = zext i32 %and117.i850 to i64
  %arrayidx119.i852 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom112.i849, i64 %idxprom118.i851
  %252 = load i8, ptr %arrayidx119.i852, align 1, !tbaa !9
  %conv124.i854 = zext i8 %conv75.i764 to i32
  %shr125.i855 = lshr i32 %conv124.i854, 4
  %idxprom126.i856 = zext i32 %shr125.i855 to i64
  %and131.i857 = and i32 %conv124.i854, 15
  %idxprom132.i858 = zext i32 %and131.i857 to i64
  %arrayidx133.i859 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom126.i856, i64 %idxprom132.i858
  %253 = load i8, ptr %arrayidx133.i859, align 1, !tbaa !9
  %conv138.i861 = zext i8 %conv118.i776 to i32
  %shr139.i862 = lshr i32 %conv138.i861, 4
  %idxprom140.i863 = zext i32 %shr139.i862 to i64
  %and145.i864 = and i32 %conv138.i861, 15
  %idxprom146.i865 = zext i32 %and145.i864 to i64
  %arrayidx147.i866 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom140.i863, i64 %idxprom146.i865
  %254 = load i8, ptr %arrayidx147.i866, align 1, !tbaa !9
  %conv152.i868 = zext i8 %conv161.i788 to i32
  %shr153.i869 = lshr i32 %conv152.i868, 4
  %idxprom154.i870 = zext i32 %shr153.i869 to i64
  %and159.i871 = and i32 %conv152.i868, 15
  %idxprom160.i872 = zext i32 %and159.i871 to i64
  %arrayidx161.i873 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom154.i870, i64 %idxprom160.i872
  %255 = load i8, ptr %arrayidx161.i873, align 1, !tbaa !9
  %conv166.i875 = zext i8 %conv39.i754 to i32
  %shr167.i876 = lshr i32 %conv166.i875, 4
  %idxprom168.i877 = zext i32 %shr167.i876 to i64
  %and173.i878 = and i32 %conv166.i875, 15
  %idxprom174.i879 = zext i32 %and173.i878 to i64
  %arrayidx175.i880 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom168.i877, i64 %idxprom174.i879
  %256 = load i8, ptr %arrayidx175.i880, align 1, !tbaa !9
  %conv180.i882 = zext i8 %conv82.i766 to i32
  %shr181.i883 = lshr i32 %conv180.i882, 4
  %idxprom182.i884 = zext i32 %shr181.i883 to i64
  %and187.i885 = and i32 %conv180.i882, 15
  %idxprom188.i886 = zext i32 %and187.i885 to i64
  %arrayidx189.i887 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom182.i884, i64 %idxprom188.i886
  %257 = load i8, ptr %arrayidx189.i887, align 1, !tbaa !9
  %conv194.i889 = zext i8 %conv125.i778 to i32
  %shr195.i890 = lshr i32 %conv194.i889, 4
  %idxprom196.i891 = zext i32 %shr195.i890 to i64
  %and201.i892 = and i32 %conv194.i889, 15
  %idxprom202.i893 = zext i32 %and201.i892 to i64
  %arrayidx203.i894 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom196.i891, i64 %idxprom202.i893
  %258 = load i8, ptr %arrayidx203.i894, align 1, !tbaa !9
  %conv208.i896 = zext i8 %conv168.i790 to i32
  %shr209.i897 = lshr i32 %conv208.i896, 4
  %idxprom210.i898 = zext i32 %shr209.i897 to i64
  %and215.i899 = and i32 %conv208.i896, 15
  %idxprom216.i900 = zext i32 %and215.i899 to i64
  %arrayidx217.i901 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom210.i898, i64 %idxprom216.i900
  %259 = load i8, ptr %arrayidx217.i901, align 1, !tbaa !9
  store i8 %249, ptr %arrayidx4, align 4, !tbaa !9
  store i8 %250, ptr %arrayidx17, align 1, !tbaa !9
  store i8 %251, ptr %arrayidx29, align 2, !tbaa !9
  store i8 %248, ptr %arrayidx41, align 1, !tbaa !9
  store i8 %254, ptr %arrayidx7, align 8, !tbaa !9
  store i8 %252, ptr %arrayidx32, align 2, !tbaa !9
  store i8 %255, ptr %arrayidx20, align 1, !tbaa !9
  store i8 %253, ptr %arrayidx44, align 1, !tbaa !9
  store i8 %259, ptr %arrayidx10, align 4, !tbaa !9
  store i8 %258, ptr %arrayidx47, align 1, !tbaa !9
  store i8 %257, ptr %arrayidx35, align 2, !tbaa !9
  store i8 %256, ptr %arrayidx23, align 1, !tbaa !9
  call void @MixColumns(ptr noundef nonnull %state)
  %arrayidx73 = getelementptr inbounds i32, ptr %key, i64 20
  %260 = load i32, ptr %arrayidx73, align 4, !tbaa !32
  %shr.i914 = lshr i32 %260, 24
  %shr3.i915 = lshr i32 %260, 16
  %shr7.i916 = lshr i32 %260, 8
  %261 = load i8, ptr %state, align 16, !tbaa !9
  %262 = trunc i32 %shr.i914 to i8
  %conv18.i917 = xor i8 %261, %262
  %263 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %264 = trunc i32 %shr3.i915 to i8
  %conv25.i919 = xor i8 %263, %264
  %265 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %266 = trunc i32 %shr7.i916 to i8
  %conv32.i921 = xor i8 %265, %266
  %267 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %268 = trunc i32 %260 to i8
  %conv39.i923 = xor i8 %267, %268
  %arrayidx40.i924 = getelementptr inbounds i32, ptr %key, i64 21
  %269 = load i32, ptr %arrayidx40.i924, align 4, !tbaa !32
  %shr41.i925 = lshr i32 %269, 24
  %shr45.i926 = lshr i32 %269, 16
  %shr49.i927 = lshr i32 %269, 8
  %270 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %271 = trunc i32 %shr41.i925 to i8
  %conv61.i929 = xor i8 %270, %271
  %272 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %273 = trunc i32 %shr45.i926 to i8
  %conv68.i931 = xor i8 %272, %273
  %274 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %275 = trunc i32 %shr49.i927 to i8
  %conv75.i933 = xor i8 %274, %275
  %276 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %277 = trunc i32 %269 to i8
  %conv82.i935 = xor i8 %276, %277
  %arrayidx83.i936 = getelementptr inbounds i32, ptr %key, i64 22
  %278 = load i32, ptr %arrayidx83.i936, align 4, !tbaa !32
  %shr84.i937 = lshr i32 %278, 24
  %shr88.i938 = lshr i32 %278, 16
  %shr92.i939 = lshr i32 %278, 8
  %279 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %280 = trunc i32 %shr84.i937 to i8
  %conv104.i941 = xor i8 %279, %280
  %281 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %282 = trunc i32 %shr88.i938 to i8
  %conv111.i943 = xor i8 %281, %282
  %283 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %284 = trunc i32 %shr92.i939 to i8
  %conv118.i945 = xor i8 %283, %284
  %285 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %286 = trunc i32 %278 to i8
  %conv125.i947 = xor i8 %285, %286
  %arrayidx126.i948 = getelementptr inbounds i32, ptr %key, i64 23
  %287 = load i32, ptr %arrayidx126.i948, align 4, !tbaa !32
  %shr127.i949 = lshr i32 %287, 24
  %shr131.i950 = lshr i32 %287, 16
  %shr135.i951 = lshr i32 %287, 8
  %288 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %289 = trunc i32 %shr127.i949 to i8
  %conv147.i953 = xor i8 %288, %289
  %290 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %291 = trunc i32 %shr131.i950 to i8
  %conv154.i955 = xor i8 %290, %291
  %292 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %293 = trunc i32 %shr135.i951 to i8
  %conv161.i957 = xor i8 %292, %293
  %294 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %295 = trunc i32 %287 to i8
  %conv168.i959 = xor i8 %294, %295
  %conv.i960 = zext i8 %conv18.i917 to i32
  %shr.i961 = lshr i32 %conv.i960, 4
  %idxprom.i962 = zext i32 %shr.i961 to i64
  %and.i963 = and i32 %conv.i960, 15
  %idxprom6.i964 = zext i32 %and.i963 to i64
  %arrayidx7.i965 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom.i962, i64 %idxprom6.i964
  %296 = load i8, ptr %arrayidx7.i965, align 1, !tbaa !9
  store i8 %296, ptr %state, align 16, !tbaa !9
  %conv12.i967 = zext i8 %conv61.i929 to i32
  %shr13.i968 = lshr i32 %conv12.i967, 4
  %idxprom14.i969 = zext i32 %shr13.i968 to i64
  %and19.i970 = and i32 %conv12.i967, 15
  %idxprom20.i971 = zext i32 %and19.i970 to i64
  %arrayidx21.i972 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom14.i969, i64 %idxprom20.i971
  %297 = load i8, ptr %arrayidx21.i972, align 1, !tbaa !9
  store i8 %297, ptr %arrayidx14, align 1, !tbaa !9
  %conv26.i974 = zext i8 %conv104.i941 to i32
  %shr27.i975 = lshr i32 %conv26.i974, 4
  %idxprom28.i976 = zext i32 %shr27.i975 to i64
  %and33.i977 = and i32 %conv26.i974, 15
  %idxprom34.i978 = zext i32 %and33.i977 to i64
  %arrayidx35.i979 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom28.i976, i64 %idxprom34.i978
  %298 = load i8, ptr %arrayidx35.i979, align 1, !tbaa !9
  store i8 %298, ptr %arrayidx26, align 2, !tbaa !9
  %conv40.i981 = zext i8 %conv147.i953 to i32
  %shr41.i982 = lshr i32 %conv40.i981, 4
  %idxprom42.i983 = zext i32 %shr41.i982 to i64
  %and47.i984 = and i32 %conv40.i981, 15
  %idxprom48.i985 = zext i32 %and47.i984 to i64
  %arrayidx49.i986 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom42.i983, i64 %idxprom48.i985
  %299 = load i8, ptr %arrayidx49.i986, align 1, !tbaa !9
  store i8 %299, ptr %arrayidx38, align 1, !tbaa !9
  %conv54.i988 = zext i8 %conv25.i919 to i32
  %shr55.i989 = lshr i32 %conv54.i988, 4
  %idxprom56.i990 = zext i32 %shr55.i989 to i64
  %and61.i991 = and i32 %conv54.i988, 15
  %idxprom62.i992 = zext i32 %and61.i991 to i64
  %arrayidx63.i993 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom56.i990, i64 %idxprom62.i992
  %300 = load i8, ptr %arrayidx63.i993, align 1, !tbaa !9
  %conv68.i995 = zext i8 %conv68.i931 to i32
  %shr69.i996 = lshr i32 %conv68.i995, 4
  %idxprom70.i997 = zext i32 %shr69.i996 to i64
  %and75.i998 = and i32 %conv68.i995, 15
  %idxprom76.i999 = zext i32 %and75.i998 to i64
  %arrayidx77.i1000 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom70.i997, i64 %idxprom76.i999
  %301 = load i8, ptr %arrayidx77.i1000, align 1, !tbaa !9
  %conv82.i1002 = zext i8 %conv111.i943 to i32
  %shr83.i1003 = lshr i32 %conv82.i1002, 4
  %idxprom84.i1004 = zext i32 %shr83.i1003 to i64
  %and89.i1005 = and i32 %conv82.i1002, 15
  %idxprom90.i1006 = zext i32 %and89.i1005 to i64
  %arrayidx91.i1007 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom84.i1004, i64 %idxprom90.i1006
  %302 = load i8, ptr %arrayidx91.i1007, align 1, !tbaa !9
  %conv96.i1009 = zext i8 %conv154.i955 to i32
  %shr97.i1010 = lshr i32 %conv96.i1009, 4
  %idxprom98.i1011 = zext i32 %shr97.i1010 to i64
  %and103.i1012 = and i32 %conv96.i1009, 15
  %idxprom104.i1013 = zext i32 %and103.i1012 to i64
  %arrayidx105.i1014 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom98.i1011, i64 %idxprom104.i1013
  %303 = load i8, ptr %arrayidx105.i1014, align 1, !tbaa !9
  %conv110.i1016 = zext i8 %conv32.i921 to i32
  %shr111.i1017 = lshr i32 %conv110.i1016, 4
  %idxprom112.i1018 = zext i32 %shr111.i1017 to i64
  %and117.i1019 = and i32 %conv110.i1016, 15
  %idxprom118.i1020 = zext i32 %and117.i1019 to i64
  %arrayidx119.i1021 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom112.i1018, i64 %idxprom118.i1020
  %304 = load i8, ptr %arrayidx119.i1021, align 1, !tbaa !9
  %conv124.i1023 = zext i8 %conv75.i933 to i32
  %shr125.i1024 = lshr i32 %conv124.i1023, 4
  %idxprom126.i1025 = zext i32 %shr125.i1024 to i64
  %and131.i1026 = and i32 %conv124.i1023, 15
  %idxprom132.i1027 = zext i32 %and131.i1026 to i64
  %arrayidx133.i1028 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom126.i1025, i64 %idxprom132.i1027
  %305 = load i8, ptr %arrayidx133.i1028, align 1, !tbaa !9
  %conv138.i1030 = zext i8 %conv118.i945 to i32
  %shr139.i1031 = lshr i32 %conv138.i1030, 4
  %idxprom140.i1032 = zext i32 %shr139.i1031 to i64
  %and145.i1033 = and i32 %conv138.i1030, 15
  %idxprom146.i1034 = zext i32 %and145.i1033 to i64
  %arrayidx147.i1035 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom140.i1032, i64 %idxprom146.i1034
  %306 = load i8, ptr %arrayidx147.i1035, align 1, !tbaa !9
  %conv152.i1037 = zext i8 %conv161.i957 to i32
  %shr153.i1038 = lshr i32 %conv152.i1037, 4
  %idxprom154.i1039 = zext i32 %shr153.i1038 to i64
  %and159.i1040 = and i32 %conv152.i1037, 15
  %idxprom160.i1041 = zext i32 %and159.i1040 to i64
  %arrayidx161.i1042 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom154.i1039, i64 %idxprom160.i1041
  %307 = load i8, ptr %arrayidx161.i1042, align 1, !tbaa !9
  %conv166.i1044 = zext i8 %conv39.i923 to i32
  %shr167.i1045 = lshr i32 %conv166.i1044, 4
  %idxprom168.i1046 = zext i32 %shr167.i1045 to i64
  %and173.i1047 = and i32 %conv166.i1044, 15
  %idxprom174.i1048 = zext i32 %and173.i1047 to i64
  %arrayidx175.i1049 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom168.i1046, i64 %idxprom174.i1048
  %308 = load i8, ptr %arrayidx175.i1049, align 1, !tbaa !9
  %conv180.i1051 = zext i8 %conv82.i935 to i32
  %shr181.i1052 = lshr i32 %conv180.i1051, 4
  %idxprom182.i1053 = zext i32 %shr181.i1052 to i64
  %and187.i1054 = and i32 %conv180.i1051, 15
  %idxprom188.i1055 = zext i32 %and187.i1054 to i64
  %arrayidx189.i1056 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom182.i1053, i64 %idxprom188.i1055
  %309 = load i8, ptr %arrayidx189.i1056, align 1, !tbaa !9
  %conv194.i1058 = zext i8 %conv125.i947 to i32
  %shr195.i1059 = lshr i32 %conv194.i1058, 4
  %idxprom196.i1060 = zext i32 %shr195.i1059 to i64
  %and201.i1061 = and i32 %conv194.i1058, 15
  %idxprom202.i1062 = zext i32 %and201.i1061 to i64
  %arrayidx203.i1063 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom196.i1060, i64 %idxprom202.i1062
  %310 = load i8, ptr %arrayidx203.i1063, align 1, !tbaa !9
  %conv208.i1065 = zext i8 %conv168.i959 to i32
  %shr209.i1066 = lshr i32 %conv208.i1065, 4
  %idxprom210.i1067 = zext i32 %shr209.i1066 to i64
  %and215.i1068 = and i32 %conv208.i1065, 15
  %idxprom216.i1069 = zext i32 %and215.i1068 to i64
  %arrayidx217.i1070 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom210.i1067, i64 %idxprom216.i1069
  %311 = load i8, ptr %arrayidx217.i1070, align 1, !tbaa !9
  store i8 %301, ptr %arrayidx4, align 4, !tbaa !9
  store i8 %302, ptr %arrayidx17, align 1, !tbaa !9
  store i8 %303, ptr %arrayidx29, align 2, !tbaa !9
  store i8 %300, ptr %arrayidx41, align 1, !tbaa !9
  store i8 %306, ptr %arrayidx7, align 8, !tbaa !9
  store i8 %304, ptr %arrayidx32, align 2, !tbaa !9
  store i8 %307, ptr %arrayidx20, align 1, !tbaa !9
  store i8 %305, ptr %arrayidx44, align 1, !tbaa !9
  store i8 %311, ptr %arrayidx10, align 4, !tbaa !9
  store i8 %310, ptr %arrayidx47, align 1, !tbaa !9
  store i8 %309, ptr %arrayidx35, align 2, !tbaa !9
  store i8 %308, ptr %arrayidx23, align 1, !tbaa !9
  call void @MixColumns(ptr noundef nonnull %state)
  %arrayidx78 = getelementptr inbounds i32, ptr %key, i64 24
  %312 = load i32, ptr %arrayidx78, align 4, !tbaa !32
  %shr.i1083 = lshr i32 %312, 24
  %shr3.i1084 = lshr i32 %312, 16
  %shr7.i1085 = lshr i32 %312, 8
  %313 = load i8, ptr %state, align 16, !tbaa !9
  %314 = trunc i32 %shr.i1083 to i8
  %conv18.i1086 = xor i8 %313, %314
  %315 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %316 = trunc i32 %shr3.i1084 to i8
  %conv25.i1088 = xor i8 %315, %316
  %317 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %318 = trunc i32 %shr7.i1085 to i8
  %conv32.i1090 = xor i8 %317, %318
  %319 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %320 = trunc i32 %312 to i8
  %conv39.i1092 = xor i8 %319, %320
  %arrayidx40.i1093 = getelementptr inbounds i32, ptr %key, i64 25
  %321 = load i32, ptr %arrayidx40.i1093, align 4, !tbaa !32
  %shr41.i1094 = lshr i32 %321, 24
  %shr45.i1095 = lshr i32 %321, 16
  %shr49.i1096 = lshr i32 %321, 8
  %322 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %323 = trunc i32 %shr41.i1094 to i8
  %conv61.i1098 = xor i8 %322, %323
  %324 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %325 = trunc i32 %shr45.i1095 to i8
  %conv68.i1100 = xor i8 %324, %325
  %326 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %327 = trunc i32 %shr49.i1096 to i8
  %conv75.i1102 = xor i8 %326, %327
  %328 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %329 = trunc i32 %321 to i8
  %conv82.i1104 = xor i8 %328, %329
  %arrayidx83.i1105 = getelementptr inbounds i32, ptr %key, i64 26
  %330 = load i32, ptr %arrayidx83.i1105, align 4, !tbaa !32
  %shr84.i1106 = lshr i32 %330, 24
  %shr88.i1107 = lshr i32 %330, 16
  %shr92.i1108 = lshr i32 %330, 8
  %331 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %332 = trunc i32 %shr84.i1106 to i8
  %conv104.i1110 = xor i8 %331, %332
  %333 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %334 = trunc i32 %shr88.i1107 to i8
  %conv111.i1112 = xor i8 %333, %334
  %335 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %336 = trunc i32 %shr92.i1108 to i8
  %conv118.i1114 = xor i8 %335, %336
  %337 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %338 = trunc i32 %330 to i8
  %conv125.i1116 = xor i8 %337, %338
  %arrayidx126.i1117 = getelementptr inbounds i32, ptr %key, i64 27
  %339 = load i32, ptr %arrayidx126.i1117, align 4, !tbaa !32
  %shr127.i1118 = lshr i32 %339, 24
  %shr131.i1119 = lshr i32 %339, 16
  %shr135.i1120 = lshr i32 %339, 8
  %340 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %341 = trunc i32 %shr127.i1118 to i8
  %conv147.i1122 = xor i8 %340, %341
  %342 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %343 = trunc i32 %shr131.i1119 to i8
  %conv154.i1124 = xor i8 %342, %343
  %344 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %345 = trunc i32 %shr135.i1120 to i8
  %conv161.i1126 = xor i8 %344, %345
  %346 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %347 = trunc i32 %339 to i8
  %conv168.i1128 = xor i8 %346, %347
  %conv.i1129 = zext i8 %conv18.i1086 to i32
  %shr.i1130 = lshr i32 %conv.i1129, 4
  %idxprom.i1131 = zext i32 %shr.i1130 to i64
  %and.i1132 = and i32 %conv.i1129, 15
  %idxprom6.i1133 = zext i32 %and.i1132 to i64
  %arrayidx7.i1134 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom.i1131, i64 %idxprom6.i1133
  %348 = load i8, ptr %arrayidx7.i1134, align 1, !tbaa !9
  store i8 %348, ptr %state, align 16, !tbaa !9
  %conv12.i1136 = zext i8 %conv61.i1098 to i32
  %shr13.i1137 = lshr i32 %conv12.i1136, 4
  %idxprom14.i1138 = zext i32 %shr13.i1137 to i64
  %and19.i1139 = and i32 %conv12.i1136, 15
  %idxprom20.i1140 = zext i32 %and19.i1139 to i64
  %arrayidx21.i1141 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom14.i1138, i64 %idxprom20.i1140
  %349 = load i8, ptr %arrayidx21.i1141, align 1, !tbaa !9
  store i8 %349, ptr %arrayidx14, align 1, !tbaa !9
  %conv26.i1143 = zext i8 %conv104.i1110 to i32
  %shr27.i1144 = lshr i32 %conv26.i1143, 4
  %idxprom28.i1145 = zext i32 %shr27.i1144 to i64
  %and33.i1146 = and i32 %conv26.i1143, 15
  %idxprom34.i1147 = zext i32 %and33.i1146 to i64
  %arrayidx35.i1148 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom28.i1145, i64 %idxprom34.i1147
  %350 = load i8, ptr %arrayidx35.i1148, align 1, !tbaa !9
  store i8 %350, ptr %arrayidx26, align 2, !tbaa !9
  %conv40.i1150 = zext i8 %conv147.i1122 to i32
  %shr41.i1151 = lshr i32 %conv40.i1150, 4
  %idxprom42.i1152 = zext i32 %shr41.i1151 to i64
  %and47.i1153 = and i32 %conv40.i1150, 15
  %idxprom48.i1154 = zext i32 %and47.i1153 to i64
  %arrayidx49.i1155 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom42.i1152, i64 %idxprom48.i1154
  %351 = load i8, ptr %arrayidx49.i1155, align 1, !tbaa !9
  store i8 %351, ptr %arrayidx38, align 1, !tbaa !9
  %conv54.i1157 = zext i8 %conv25.i1088 to i32
  %shr55.i1158 = lshr i32 %conv54.i1157, 4
  %idxprom56.i1159 = zext i32 %shr55.i1158 to i64
  %and61.i1160 = and i32 %conv54.i1157, 15
  %idxprom62.i1161 = zext i32 %and61.i1160 to i64
  %arrayidx63.i1162 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom56.i1159, i64 %idxprom62.i1161
  %352 = load i8, ptr %arrayidx63.i1162, align 1, !tbaa !9
  %conv68.i1164 = zext i8 %conv68.i1100 to i32
  %shr69.i1165 = lshr i32 %conv68.i1164, 4
  %idxprom70.i1166 = zext i32 %shr69.i1165 to i64
  %and75.i1167 = and i32 %conv68.i1164, 15
  %idxprom76.i1168 = zext i32 %and75.i1167 to i64
  %arrayidx77.i1169 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom70.i1166, i64 %idxprom76.i1168
  %353 = load i8, ptr %arrayidx77.i1169, align 1, !tbaa !9
  %conv82.i1171 = zext i8 %conv111.i1112 to i32
  %shr83.i1172 = lshr i32 %conv82.i1171, 4
  %idxprom84.i1173 = zext i32 %shr83.i1172 to i64
  %and89.i1174 = and i32 %conv82.i1171, 15
  %idxprom90.i1175 = zext i32 %and89.i1174 to i64
  %arrayidx91.i1176 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom84.i1173, i64 %idxprom90.i1175
  %354 = load i8, ptr %arrayidx91.i1176, align 1, !tbaa !9
  %conv96.i1178 = zext i8 %conv154.i1124 to i32
  %shr97.i1179 = lshr i32 %conv96.i1178, 4
  %idxprom98.i1180 = zext i32 %shr97.i1179 to i64
  %and103.i1181 = and i32 %conv96.i1178, 15
  %idxprom104.i1182 = zext i32 %and103.i1181 to i64
  %arrayidx105.i1183 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom98.i1180, i64 %idxprom104.i1182
  %355 = load i8, ptr %arrayidx105.i1183, align 1, !tbaa !9
  %conv110.i1185 = zext i8 %conv32.i1090 to i32
  %shr111.i1186 = lshr i32 %conv110.i1185, 4
  %idxprom112.i1187 = zext i32 %shr111.i1186 to i64
  %and117.i1188 = and i32 %conv110.i1185, 15
  %idxprom118.i1189 = zext i32 %and117.i1188 to i64
  %arrayidx119.i1190 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom112.i1187, i64 %idxprom118.i1189
  %356 = load i8, ptr %arrayidx119.i1190, align 1, !tbaa !9
  %conv124.i1192 = zext i8 %conv75.i1102 to i32
  %shr125.i1193 = lshr i32 %conv124.i1192, 4
  %idxprom126.i1194 = zext i32 %shr125.i1193 to i64
  %and131.i1195 = and i32 %conv124.i1192, 15
  %idxprom132.i1196 = zext i32 %and131.i1195 to i64
  %arrayidx133.i1197 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom126.i1194, i64 %idxprom132.i1196
  %357 = load i8, ptr %arrayidx133.i1197, align 1, !tbaa !9
  %conv138.i1199 = zext i8 %conv118.i1114 to i32
  %shr139.i1200 = lshr i32 %conv138.i1199, 4
  %idxprom140.i1201 = zext i32 %shr139.i1200 to i64
  %and145.i1202 = and i32 %conv138.i1199, 15
  %idxprom146.i1203 = zext i32 %and145.i1202 to i64
  %arrayidx147.i1204 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom140.i1201, i64 %idxprom146.i1203
  %358 = load i8, ptr %arrayidx147.i1204, align 1, !tbaa !9
  %conv152.i1206 = zext i8 %conv161.i1126 to i32
  %shr153.i1207 = lshr i32 %conv152.i1206, 4
  %idxprom154.i1208 = zext i32 %shr153.i1207 to i64
  %and159.i1209 = and i32 %conv152.i1206, 15
  %idxprom160.i1210 = zext i32 %and159.i1209 to i64
  %arrayidx161.i1211 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom154.i1208, i64 %idxprom160.i1210
  %359 = load i8, ptr %arrayidx161.i1211, align 1, !tbaa !9
  %conv166.i1213 = zext i8 %conv39.i1092 to i32
  %shr167.i1214 = lshr i32 %conv166.i1213, 4
  %idxprom168.i1215 = zext i32 %shr167.i1214 to i64
  %and173.i1216 = and i32 %conv166.i1213, 15
  %idxprom174.i1217 = zext i32 %and173.i1216 to i64
  %arrayidx175.i1218 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom168.i1215, i64 %idxprom174.i1217
  %360 = load i8, ptr %arrayidx175.i1218, align 1, !tbaa !9
  %conv180.i1220 = zext i8 %conv82.i1104 to i32
  %shr181.i1221 = lshr i32 %conv180.i1220, 4
  %idxprom182.i1222 = zext i32 %shr181.i1221 to i64
  %and187.i1223 = and i32 %conv180.i1220, 15
  %idxprom188.i1224 = zext i32 %and187.i1223 to i64
  %arrayidx189.i1225 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom182.i1222, i64 %idxprom188.i1224
  %361 = load i8, ptr %arrayidx189.i1225, align 1, !tbaa !9
  %conv194.i1227 = zext i8 %conv125.i1116 to i32
  %shr195.i1228 = lshr i32 %conv194.i1227, 4
  %idxprom196.i1229 = zext i32 %shr195.i1228 to i64
  %and201.i1230 = and i32 %conv194.i1227, 15
  %idxprom202.i1231 = zext i32 %and201.i1230 to i64
  %arrayidx203.i1232 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom196.i1229, i64 %idxprom202.i1231
  %362 = load i8, ptr %arrayidx203.i1232, align 1, !tbaa !9
  %conv208.i1234 = zext i8 %conv168.i1128 to i32
  %shr209.i1235 = lshr i32 %conv208.i1234, 4
  %idxprom210.i1236 = zext i32 %shr209.i1235 to i64
  %and215.i1237 = and i32 %conv208.i1234, 15
  %idxprom216.i1238 = zext i32 %and215.i1237 to i64
  %arrayidx217.i1239 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom210.i1236, i64 %idxprom216.i1238
  %363 = load i8, ptr %arrayidx217.i1239, align 1, !tbaa !9
  store i8 %353, ptr %arrayidx4, align 4, !tbaa !9
  store i8 %354, ptr %arrayidx17, align 1, !tbaa !9
  store i8 %355, ptr %arrayidx29, align 2, !tbaa !9
  store i8 %352, ptr %arrayidx41, align 1, !tbaa !9
  store i8 %358, ptr %arrayidx7, align 8, !tbaa !9
  store i8 %356, ptr %arrayidx32, align 2, !tbaa !9
  store i8 %359, ptr %arrayidx20, align 1, !tbaa !9
  store i8 %357, ptr %arrayidx44, align 1, !tbaa !9
  store i8 %363, ptr %arrayidx10, align 4, !tbaa !9
  store i8 %362, ptr %arrayidx47, align 1, !tbaa !9
  store i8 %361, ptr %arrayidx35, align 2, !tbaa !9
  store i8 %360, ptr %arrayidx23, align 1, !tbaa !9
  call void @MixColumns(ptr noundef nonnull %state)
  %arrayidx83 = getelementptr inbounds i32, ptr %key, i64 28
  %364 = load i32, ptr %arrayidx83, align 4, !tbaa !32
  %shr.i1252 = lshr i32 %364, 24
  %shr3.i1253 = lshr i32 %364, 16
  %shr7.i1254 = lshr i32 %364, 8
  %365 = load i8, ptr %state, align 16, !tbaa !9
  %366 = trunc i32 %shr.i1252 to i8
  %conv18.i1255 = xor i8 %365, %366
  %367 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %368 = trunc i32 %shr3.i1253 to i8
  %conv25.i1257 = xor i8 %367, %368
  %369 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %370 = trunc i32 %shr7.i1254 to i8
  %conv32.i1259 = xor i8 %369, %370
  %371 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %372 = trunc i32 %364 to i8
  %conv39.i1261 = xor i8 %371, %372
  %arrayidx40.i1262 = getelementptr inbounds i32, ptr %key, i64 29
  %373 = load i32, ptr %arrayidx40.i1262, align 4, !tbaa !32
  %shr41.i1263 = lshr i32 %373, 24
  %shr45.i1264 = lshr i32 %373, 16
  %shr49.i1265 = lshr i32 %373, 8
  %374 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %375 = trunc i32 %shr41.i1263 to i8
  %conv61.i1267 = xor i8 %374, %375
  %376 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %377 = trunc i32 %shr45.i1264 to i8
  %conv68.i1269 = xor i8 %376, %377
  %378 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %379 = trunc i32 %shr49.i1265 to i8
  %conv75.i1271 = xor i8 %378, %379
  %380 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %381 = trunc i32 %373 to i8
  %conv82.i1273 = xor i8 %380, %381
  %arrayidx83.i1274 = getelementptr inbounds i32, ptr %key, i64 30
  %382 = load i32, ptr %arrayidx83.i1274, align 4, !tbaa !32
  %shr84.i1275 = lshr i32 %382, 24
  %shr88.i1276 = lshr i32 %382, 16
  %shr92.i1277 = lshr i32 %382, 8
  %383 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %384 = trunc i32 %shr84.i1275 to i8
  %conv104.i1279 = xor i8 %383, %384
  %385 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %386 = trunc i32 %shr88.i1276 to i8
  %conv111.i1281 = xor i8 %385, %386
  %387 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %388 = trunc i32 %shr92.i1277 to i8
  %conv118.i1283 = xor i8 %387, %388
  %389 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %390 = trunc i32 %382 to i8
  %conv125.i1285 = xor i8 %389, %390
  %arrayidx126.i1286 = getelementptr inbounds i32, ptr %key, i64 31
  %391 = load i32, ptr %arrayidx126.i1286, align 4, !tbaa !32
  %shr127.i1287 = lshr i32 %391, 24
  %shr131.i1288 = lshr i32 %391, 16
  %shr135.i1289 = lshr i32 %391, 8
  %392 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %393 = trunc i32 %shr127.i1287 to i8
  %conv147.i1291 = xor i8 %392, %393
  %394 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %395 = trunc i32 %shr131.i1288 to i8
  %conv154.i1293 = xor i8 %394, %395
  %396 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %397 = trunc i32 %shr135.i1289 to i8
  %conv161.i1295 = xor i8 %396, %397
  %398 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %399 = trunc i32 %391 to i8
  %conv168.i1297 = xor i8 %398, %399
  %conv.i1298 = zext i8 %conv18.i1255 to i32
  %shr.i1299 = lshr i32 %conv.i1298, 4
  %idxprom.i1300 = zext i32 %shr.i1299 to i64
  %and.i1301 = and i32 %conv.i1298, 15
  %idxprom6.i1302 = zext i32 %and.i1301 to i64
  %arrayidx7.i1303 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom.i1300, i64 %idxprom6.i1302
  %400 = load i8, ptr %arrayidx7.i1303, align 1, !tbaa !9
  store i8 %400, ptr %state, align 16, !tbaa !9
  %conv12.i1305 = zext i8 %conv61.i1267 to i32
  %shr13.i1306 = lshr i32 %conv12.i1305, 4
  %idxprom14.i1307 = zext i32 %shr13.i1306 to i64
  %and19.i1308 = and i32 %conv12.i1305, 15
  %idxprom20.i1309 = zext i32 %and19.i1308 to i64
  %arrayidx21.i1310 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom14.i1307, i64 %idxprom20.i1309
  %401 = load i8, ptr %arrayidx21.i1310, align 1, !tbaa !9
  store i8 %401, ptr %arrayidx14, align 1, !tbaa !9
  %conv26.i1312 = zext i8 %conv104.i1279 to i32
  %shr27.i1313 = lshr i32 %conv26.i1312, 4
  %idxprom28.i1314 = zext i32 %shr27.i1313 to i64
  %and33.i1315 = and i32 %conv26.i1312, 15
  %idxprom34.i1316 = zext i32 %and33.i1315 to i64
  %arrayidx35.i1317 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom28.i1314, i64 %idxprom34.i1316
  %402 = load i8, ptr %arrayidx35.i1317, align 1, !tbaa !9
  store i8 %402, ptr %arrayidx26, align 2, !tbaa !9
  %conv40.i1319 = zext i8 %conv147.i1291 to i32
  %shr41.i1320 = lshr i32 %conv40.i1319, 4
  %idxprom42.i1321 = zext i32 %shr41.i1320 to i64
  %and47.i1322 = and i32 %conv40.i1319, 15
  %idxprom48.i1323 = zext i32 %and47.i1322 to i64
  %arrayidx49.i1324 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom42.i1321, i64 %idxprom48.i1323
  %403 = load i8, ptr %arrayidx49.i1324, align 1, !tbaa !9
  store i8 %403, ptr %arrayidx38, align 1, !tbaa !9
  %conv54.i1326 = zext i8 %conv25.i1257 to i32
  %shr55.i1327 = lshr i32 %conv54.i1326, 4
  %idxprom56.i1328 = zext i32 %shr55.i1327 to i64
  %and61.i1329 = and i32 %conv54.i1326, 15
  %idxprom62.i1330 = zext i32 %and61.i1329 to i64
  %arrayidx63.i1331 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom56.i1328, i64 %idxprom62.i1330
  %404 = load i8, ptr %arrayidx63.i1331, align 1, !tbaa !9
  %conv68.i1333 = zext i8 %conv68.i1269 to i32
  %shr69.i1334 = lshr i32 %conv68.i1333, 4
  %idxprom70.i1335 = zext i32 %shr69.i1334 to i64
  %and75.i1336 = and i32 %conv68.i1333, 15
  %idxprom76.i1337 = zext i32 %and75.i1336 to i64
  %arrayidx77.i1338 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom70.i1335, i64 %idxprom76.i1337
  %405 = load i8, ptr %arrayidx77.i1338, align 1, !tbaa !9
  %conv82.i1340 = zext i8 %conv111.i1281 to i32
  %shr83.i1341 = lshr i32 %conv82.i1340, 4
  %idxprom84.i1342 = zext i32 %shr83.i1341 to i64
  %and89.i1343 = and i32 %conv82.i1340, 15
  %idxprom90.i1344 = zext i32 %and89.i1343 to i64
  %arrayidx91.i1345 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom84.i1342, i64 %idxprom90.i1344
  %406 = load i8, ptr %arrayidx91.i1345, align 1, !tbaa !9
  %conv96.i1347 = zext i8 %conv154.i1293 to i32
  %shr97.i1348 = lshr i32 %conv96.i1347, 4
  %idxprom98.i1349 = zext i32 %shr97.i1348 to i64
  %and103.i1350 = and i32 %conv96.i1347, 15
  %idxprom104.i1351 = zext i32 %and103.i1350 to i64
  %arrayidx105.i1352 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom98.i1349, i64 %idxprom104.i1351
  %407 = load i8, ptr %arrayidx105.i1352, align 1, !tbaa !9
  %conv110.i1354 = zext i8 %conv32.i1259 to i32
  %shr111.i1355 = lshr i32 %conv110.i1354, 4
  %idxprom112.i1356 = zext i32 %shr111.i1355 to i64
  %and117.i1357 = and i32 %conv110.i1354, 15
  %idxprom118.i1358 = zext i32 %and117.i1357 to i64
  %arrayidx119.i1359 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom112.i1356, i64 %idxprom118.i1358
  %408 = load i8, ptr %arrayidx119.i1359, align 1, !tbaa !9
  %conv124.i1361 = zext i8 %conv75.i1271 to i32
  %shr125.i1362 = lshr i32 %conv124.i1361, 4
  %idxprom126.i1363 = zext i32 %shr125.i1362 to i64
  %and131.i1364 = and i32 %conv124.i1361, 15
  %idxprom132.i1365 = zext i32 %and131.i1364 to i64
  %arrayidx133.i1366 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom126.i1363, i64 %idxprom132.i1365
  %409 = load i8, ptr %arrayidx133.i1366, align 1, !tbaa !9
  %conv138.i1368 = zext i8 %conv118.i1283 to i32
  %shr139.i1369 = lshr i32 %conv138.i1368, 4
  %idxprom140.i1370 = zext i32 %shr139.i1369 to i64
  %and145.i1371 = and i32 %conv138.i1368, 15
  %idxprom146.i1372 = zext i32 %and145.i1371 to i64
  %arrayidx147.i1373 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom140.i1370, i64 %idxprom146.i1372
  %410 = load i8, ptr %arrayidx147.i1373, align 1, !tbaa !9
  %conv152.i1375 = zext i8 %conv161.i1295 to i32
  %shr153.i1376 = lshr i32 %conv152.i1375, 4
  %idxprom154.i1377 = zext i32 %shr153.i1376 to i64
  %and159.i1378 = and i32 %conv152.i1375, 15
  %idxprom160.i1379 = zext i32 %and159.i1378 to i64
  %arrayidx161.i1380 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom154.i1377, i64 %idxprom160.i1379
  %411 = load i8, ptr %arrayidx161.i1380, align 1, !tbaa !9
  %conv166.i1382 = zext i8 %conv39.i1261 to i32
  %shr167.i1383 = lshr i32 %conv166.i1382, 4
  %idxprom168.i1384 = zext i32 %shr167.i1383 to i64
  %and173.i1385 = and i32 %conv166.i1382, 15
  %idxprom174.i1386 = zext i32 %and173.i1385 to i64
  %arrayidx175.i1387 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom168.i1384, i64 %idxprom174.i1386
  %412 = load i8, ptr %arrayidx175.i1387, align 1, !tbaa !9
  %conv180.i1389 = zext i8 %conv82.i1273 to i32
  %shr181.i1390 = lshr i32 %conv180.i1389, 4
  %idxprom182.i1391 = zext i32 %shr181.i1390 to i64
  %and187.i1392 = and i32 %conv180.i1389, 15
  %idxprom188.i1393 = zext i32 %and187.i1392 to i64
  %arrayidx189.i1394 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom182.i1391, i64 %idxprom188.i1393
  %413 = load i8, ptr %arrayidx189.i1394, align 1, !tbaa !9
  %conv194.i1396 = zext i8 %conv125.i1285 to i32
  %shr195.i1397 = lshr i32 %conv194.i1396, 4
  %idxprom196.i1398 = zext i32 %shr195.i1397 to i64
  %and201.i1399 = and i32 %conv194.i1396, 15
  %idxprom202.i1400 = zext i32 %and201.i1399 to i64
  %arrayidx203.i1401 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom196.i1398, i64 %idxprom202.i1400
  %414 = load i8, ptr %arrayidx203.i1401, align 1, !tbaa !9
  %conv208.i1403 = zext i8 %conv168.i1297 to i32
  %shr209.i1404 = lshr i32 %conv208.i1403, 4
  %idxprom210.i1405 = zext i32 %shr209.i1404 to i64
  %and215.i1406 = and i32 %conv208.i1403, 15
  %idxprom216.i1407 = zext i32 %and215.i1406 to i64
  %arrayidx217.i1408 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom210.i1405, i64 %idxprom216.i1407
  %415 = load i8, ptr %arrayidx217.i1408, align 1, !tbaa !9
  store i8 %405, ptr %arrayidx4, align 4, !tbaa !9
  store i8 %406, ptr %arrayidx17, align 1, !tbaa !9
  store i8 %407, ptr %arrayidx29, align 2, !tbaa !9
  store i8 %404, ptr %arrayidx41, align 1, !tbaa !9
  store i8 %410, ptr %arrayidx7, align 8, !tbaa !9
  store i8 %408, ptr %arrayidx32, align 2, !tbaa !9
  store i8 %411, ptr %arrayidx20, align 1, !tbaa !9
  store i8 %409, ptr %arrayidx44, align 1, !tbaa !9
  store i8 %415, ptr %arrayidx10, align 4, !tbaa !9
  store i8 %414, ptr %arrayidx47, align 1, !tbaa !9
  store i8 %413, ptr %arrayidx35, align 2, !tbaa !9
  store i8 %412, ptr %arrayidx23, align 1, !tbaa !9
  call void @MixColumns(ptr noundef nonnull %state)
  %arrayidx88 = getelementptr inbounds i32, ptr %key, i64 32
  %416 = load i32, ptr %arrayidx88, align 4, !tbaa !32
  %shr.i1421 = lshr i32 %416, 24
  %shr3.i1422 = lshr i32 %416, 16
  %shr7.i1423 = lshr i32 %416, 8
  %417 = load i8, ptr %state, align 16, !tbaa !9
  %418 = trunc i32 %shr.i1421 to i8
  %conv18.i1424 = xor i8 %417, %418
  %419 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %420 = trunc i32 %shr3.i1422 to i8
  %conv25.i1426 = xor i8 %419, %420
  %421 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %422 = trunc i32 %shr7.i1423 to i8
  %conv32.i1428 = xor i8 %421, %422
  %423 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %424 = trunc i32 %416 to i8
  %conv39.i1430 = xor i8 %423, %424
  %arrayidx40.i1431 = getelementptr inbounds i32, ptr %key, i64 33
  %425 = load i32, ptr %arrayidx40.i1431, align 4, !tbaa !32
  %shr41.i1432 = lshr i32 %425, 24
  %shr45.i1433 = lshr i32 %425, 16
  %shr49.i1434 = lshr i32 %425, 8
  %426 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %427 = trunc i32 %shr41.i1432 to i8
  %conv61.i1436 = xor i8 %426, %427
  %428 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %429 = trunc i32 %shr45.i1433 to i8
  %conv68.i1438 = xor i8 %428, %429
  %430 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %431 = trunc i32 %shr49.i1434 to i8
  %conv75.i1440 = xor i8 %430, %431
  %432 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %433 = trunc i32 %425 to i8
  %conv82.i1442 = xor i8 %432, %433
  %arrayidx83.i1443 = getelementptr inbounds i32, ptr %key, i64 34
  %434 = load i32, ptr %arrayidx83.i1443, align 4, !tbaa !32
  %shr84.i1444 = lshr i32 %434, 24
  %shr88.i1445 = lshr i32 %434, 16
  %shr92.i1446 = lshr i32 %434, 8
  %435 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %436 = trunc i32 %shr84.i1444 to i8
  %conv104.i1448 = xor i8 %435, %436
  %437 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %438 = trunc i32 %shr88.i1445 to i8
  %conv111.i1450 = xor i8 %437, %438
  %439 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %440 = trunc i32 %shr92.i1446 to i8
  %conv118.i1452 = xor i8 %439, %440
  %441 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %442 = trunc i32 %434 to i8
  %conv125.i1454 = xor i8 %441, %442
  %arrayidx126.i1455 = getelementptr inbounds i32, ptr %key, i64 35
  %443 = load i32, ptr %arrayidx126.i1455, align 4, !tbaa !32
  %shr127.i1456 = lshr i32 %443, 24
  %shr131.i1457 = lshr i32 %443, 16
  %shr135.i1458 = lshr i32 %443, 8
  %444 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %445 = trunc i32 %shr127.i1456 to i8
  %conv147.i1460 = xor i8 %444, %445
  %446 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %447 = trunc i32 %shr131.i1457 to i8
  %conv154.i1462 = xor i8 %446, %447
  %448 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %449 = trunc i32 %shr135.i1458 to i8
  %conv161.i1464 = xor i8 %448, %449
  %450 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %451 = trunc i32 %443 to i8
  %conv168.i1466 = xor i8 %450, %451
  %conv.i1467 = zext i8 %conv18.i1424 to i32
  %shr.i1468 = lshr i32 %conv.i1467, 4
  %idxprom.i1469 = zext i32 %shr.i1468 to i64
  %and.i1470 = and i32 %conv.i1467, 15
  %idxprom6.i1471 = zext i32 %and.i1470 to i64
  %arrayidx7.i1472 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom.i1469, i64 %idxprom6.i1471
  %452 = load i8, ptr %arrayidx7.i1472, align 1, !tbaa !9
  store i8 %452, ptr %state, align 16, !tbaa !9
  %conv12.i1474 = zext i8 %conv61.i1436 to i32
  %shr13.i1475 = lshr i32 %conv12.i1474, 4
  %idxprom14.i1476 = zext i32 %shr13.i1475 to i64
  %and19.i1477 = and i32 %conv12.i1474, 15
  %idxprom20.i1478 = zext i32 %and19.i1477 to i64
  %arrayidx21.i1479 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom14.i1476, i64 %idxprom20.i1478
  %453 = load i8, ptr %arrayidx21.i1479, align 1, !tbaa !9
  store i8 %453, ptr %arrayidx14, align 1, !tbaa !9
  %conv26.i1481 = zext i8 %conv104.i1448 to i32
  %shr27.i1482 = lshr i32 %conv26.i1481, 4
  %idxprom28.i1483 = zext i32 %shr27.i1482 to i64
  %and33.i1484 = and i32 %conv26.i1481, 15
  %idxprom34.i1485 = zext i32 %and33.i1484 to i64
  %arrayidx35.i1486 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom28.i1483, i64 %idxprom34.i1485
  %454 = load i8, ptr %arrayidx35.i1486, align 1, !tbaa !9
  store i8 %454, ptr %arrayidx26, align 2, !tbaa !9
  %conv40.i1488 = zext i8 %conv147.i1460 to i32
  %shr41.i1489 = lshr i32 %conv40.i1488, 4
  %idxprom42.i1490 = zext i32 %shr41.i1489 to i64
  %and47.i1491 = and i32 %conv40.i1488, 15
  %idxprom48.i1492 = zext i32 %and47.i1491 to i64
  %arrayidx49.i1493 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom42.i1490, i64 %idxprom48.i1492
  %455 = load i8, ptr %arrayidx49.i1493, align 1, !tbaa !9
  store i8 %455, ptr %arrayidx38, align 1, !tbaa !9
  %conv54.i1495 = zext i8 %conv25.i1426 to i32
  %shr55.i1496 = lshr i32 %conv54.i1495, 4
  %idxprom56.i1497 = zext i32 %shr55.i1496 to i64
  %and61.i1498 = and i32 %conv54.i1495, 15
  %idxprom62.i1499 = zext i32 %and61.i1498 to i64
  %arrayidx63.i1500 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom56.i1497, i64 %idxprom62.i1499
  %456 = load i8, ptr %arrayidx63.i1500, align 1, !tbaa !9
  %conv68.i1502 = zext i8 %conv68.i1438 to i32
  %shr69.i1503 = lshr i32 %conv68.i1502, 4
  %idxprom70.i1504 = zext i32 %shr69.i1503 to i64
  %and75.i1505 = and i32 %conv68.i1502, 15
  %idxprom76.i1506 = zext i32 %and75.i1505 to i64
  %arrayidx77.i1507 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom70.i1504, i64 %idxprom76.i1506
  %457 = load i8, ptr %arrayidx77.i1507, align 1, !tbaa !9
  %conv82.i1509 = zext i8 %conv111.i1450 to i32
  %shr83.i1510 = lshr i32 %conv82.i1509, 4
  %idxprom84.i1511 = zext i32 %shr83.i1510 to i64
  %and89.i1512 = and i32 %conv82.i1509, 15
  %idxprom90.i1513 = zext i32 %and89.i1512 to i64
  %arrayidx91.i1514 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom84.i1511, i64 %idxprom90.i1513
  %458 = load i8, ptr %arrayidx91.i1514, align 1, !tbaa !9
  %conv96.i1516 = zext i8 %conv154.i1462 to i32
  %shr97.i1517 = lshr i32 %conv96.i1516, 4
  %idxprom98.i1518 = zext i32 %shr97.i1517 to i64
  %and103.i1519 = and i32 %conv96.i1516, 15
  %idxprom104.i1520 = zext i32 %and103.i1519 to i64
  %arrayidx105.i1521 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom98.i1518, i64 %idxprom104.i1520
  %459 = load i8, ptr %arrayidx105.i1521, align 1, !tbaa !9
  %conv110.i1523 = zext i8 %conv32.i1428 to i32
  %shr111.i1524 = lshr i32 %conv110.i1523, 4
  %idxprom112.i1525 = zext i32 %shr111.i1524 to i64
  %and117.i1526 = and i32 %conv110.i1523, 15
  %idxprom118.i1527 = zext i32 %and117.i1526 to i64
  %arrayidx119.i1528 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom112.i1525, i64 %idxprom118.i1527
  %460 = load i8, ptr %arrayidx119.i1528, align 1, !tbaa !9
  %conv124.i1530 = zext i8 %conv75.i1440 to i32
  %shr125.i1531 = lshr i32 %conv124.i1530, 4
  %idxprom126.i1532 = zext i32 %shr125.i1531 to i64
  %and131.i1533 = and i32 %conv124.i1530, 15
  %idxprom132.i1534 = zext i32 %and131.i1533 to i64
  %arrayidx133.i1535 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom126.i1532, i64 %idxprom132.i1534
  %461 = load i8, ptr %arrayidx133.i1535, align 1, !tbaa !9
  %conv138.i1537 = zext i8 %conv118.i1452 to i32
  %shr139.i1538 = lshr i32 %conv138.i1537, 4
  %idxprom140.i1539 = zext i32 %shr139.i1538 to i64
  %and145.i1540 = and i32 %conv138.i1537, 15
  %idxprom146.i1541 = zext i32 %and145.i1540 to i64
  %arrayidx147.i1542 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom140.i1539, i64 %idxprom146.i1541
  %462 = load i8, ptr %arrayidx147.i1542, align 1, !tbaa !9
  %conv152.i1544 = zext i8 %conv161.i1464 to i32
  %shr153.i1545 = lshr i32 %conv152.i1544, 4
  %idxprom154.i1546 = zext i32 %shr153.i1545 to i64
  %and159.i1547 = and i32 %conv152.i1544, 15
  %idxprom160.i1548 = zext i32 %and159.i1547 to i64
  %arrayidx161.i1549 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom154.i1546, i64 %idxprom160.i1548
  %463 = load i8, ptr %arrayidx161.i1549, align 1, !tbaa !9
  %conv166.i1551 = zext i8 %conv39.i1430 to i32
  %shr167.i1552 = lshr i32 %conv166.i1551, 4
  %idxprom168.i1553 = zext i32 %shr167.i1552 to i64
  %and173.i1554 = and i32 %conv166.i1551, 15
  %idxprom174.i1555 = zext i32 %and173.i1554 to i64
  %arrayidx175.i1556 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom168.i1553, i64 %idxprom174.i1555
  %464 = load i8, ptr %arrayidx175.i1556, align 1, !tbaa !9
  %conv180.i1558 = zext i8 %conv82.i1442 to i32
  %shr181.i1559 = lshr i32 %conv180.i1558, 4
  %idxprom182.i1560 = zext i32 %shr181.i1559 to i64
  %and187.i1561 = and i32 %conv180.i1558, 15
  %idxprom188.i1562 = zext i32 %and187.i1561 to i64
  %arrayidx189.i1563 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom182.i1560, i64 %idxprom188.i1562
  %465 = load i8, ptr %arrayidx189.i1563, align 1, !tbaa !9
  %conv194.i1565 = zext i8 %conv125.i1454 to i32
  %shr195.i1566 = lshr i32 %conv194.i1565, 4
  %idxprom196.i1567 = zext i32 %shr195.i1566 to i64
  %and201.i1568 = and i32 %conv194.i1565, 15
  %idxprom202.i1569 = zext i32 %and201.i1568 to i64
  %arrayidx203.i1570 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom196.i1567, i64 %idxprom202.i1569
  %466 = load i8, ptr %arrayidx203.i1570, align 1, !tbaa !9
  %conv208.i1572 = zext i8 %conv168.i1466 to i32
  %shr209.i1573 = lshr i32 %conv208.i1572, 4
  %idxprom210.i1574 = zext i32 %shr209.i1573 to i64
  %and215.i1575 = and i32 %conv208.i1572, 15
  %idxprom216.i1576 = zext i32 %and215.i1575 to i64
  %arrayidx217.i1577 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom210.i1574, i64 %idxprom216.i1576
  %467 = load i8, ptr %arrayidx217.i1577, align 1, !tbaa !9
  store i8 %457, ptr %arrayidx4, align 4, !tbaa !9
  store i8 %458, ptr %arrayidx17, align 1, !tbaa !9
  store i8 %459, ptr %arrayidx29, align 2, !tbaa !9
  store i8 %456, ptr %arrayidx41, align 1, !tbaa !9
  store i8 %462, ptr %arrayidx7, align 8, !tbaa !9
  store i8 %460, ptr %arrayidx32, align 2, !tbaa !9
  store i8 %463, ptr %arrayidx20, align 1, !tbaa !9
  store i8 %461, ptr %arrayidx44, align 1, !tbaa !9
  store i8 %467, ptr %arrayidx10, align 4, !tbaa !9
  store i8 %466, ptr %arrayidx47, align 1, !tbaa !9
  store i8 %465, ptr %arrayidx35, align 2, !tbaa !9
  store i8 %464, ptr %arrayidx23, align 1, !tbaa !9
  call void @MixColumns(ptr noundef nonnull %state)
  %arrayidx93 = getelementptr inbounds i32, ptr %key, i64 36
  %468 = load i32, ptr %arrayidx93, align 4, !tbaa !32
  %shr.i1590 = lshr i32 %468, 24
  %shr3.i1591 = lshr i32 %468, 16
  %shr7.i1592 = lshr i32 %468, 8
  %469 = load i8, ptr %state, align 16, !tbaa !9
  %470 = trunc i32 %shr.i1590 to i8
  %conv18.i1593 = xor i8 %469, %470
  %471 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %472 = trunc i32 %shr3.i1591 to i8
  %conv25.i1595 = xor i8 %471, %472
  %473 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %474 = trunc i32 %shr7.i1592 to i8
  %conv32.i1597 = xor i8 %473, %474
  %475 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %476 = trunc i32 %468 to i8
  %conv39.i1599 = xor i8 %475, %476
  %arrayidx40.i1600 = getelementptr inbounds i32, ptr %key, i64 37
  %477 = load i32, ptr %arrayidx40.i1600, align 4, !tbaa !32
  %shr41.i1601 = lshr i32 %477, 24
  %shr45.i1602 = lshr i32 %477, 16
  %shr49.i1603 = lshr i32 %477, 8
  %478 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %479 = trunc i32 %shr41.i1601 to i8
  %conv61.i1605 = xor i8 %478, %479
  %480 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %481 = trunc i32 %shr45.i1602 to i8
  %conv68.i1607 = xor i8 %480, %481
  %482 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %483 = trunc i32 %shr49.i1603 to i8
  %conv75.i1609 = xor i8 %482, %483
  %484 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %485 = trunc i32 %477 to i8
  %conv82.i1611 = xor i8 %484, %485
  %arrayidx83.i1612 = getelementptr inbounds i32, ptr %key, i64 38
  %486 = load i32, ptr %arrayidx83.i1612, align 4, !tbaa !32
  %shr84.i1613 = lshr i32 %486, 24
  %shr88.i1614 = lshr i32 %486, 16
  %shr92.i1615 = lshr i32 %486, 8
  %487 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %488 = trunc i32 %shr84.i1613 to i8
  %conv104.i1617 = xor i8 %487, %488
  %489 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %490 = trunc i32 %shr88.i1614 to i8
  %conv111.i1619 = xor i8 %489, %490
  %491 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %492 = trunc i32 %shr92.i1615 to i8
  %conv118.i1621 = xor i8 %491, %492
  %493 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %494 = trunc i32 %486 to i8
  %conv125.i1623 = xor i8 %493, %494
  %arrayidx126.i1624 = getelementptr inbounds i32, ptr %key, i64 39
  %495 = load i32, ptr %arrayidx126.i1624, align 4, !tbaa !32
  %shr127.i1625 = lshr i32 %495, 24
  %shr131.i1626 = lshr i32 %495, 16
  %shr135.i1627 = lshr i32 %495, 8
  %496 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %497 = trunc i32 %shr127.i1625 to i8
  %conv147.i1629 = xor i8 %496, %497
  %498 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %499 = trunc i32 %shr131.i1626 to i8
  %conv154.i1631 = xor i8 %498, %499
  %500 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %501 = trunc i32 %shr135.i1627 to i8
  %conv161.i1633 = xor i8 %500, %501
  %502 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %503 = trunc i32 %495 to i8
  %conv168.i1635 = xor i8 %502, %503
  %cmp.not = icmp eq i32 %keysize, 128
  %conv.i2650 = zext i8 %conv18.i1593 to i32
  %shr.i2651 = lshr i32 %conv.i2650, 4
  %idxprom.i2652 = zext i32 %shr.i2651 to i64
  %and.i2653 = and i32 %conv.i2650, 15
  %idxprom6.i2654 = zext i32 %and.i2653 to i64
  %arrayidx7.i2655 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom.i2652, i64 %idxprom6.i2654
  %504 = load i8, ptr %arrayidx7.i2655, align 1, !tbaa !9
  br i1 %cmp.not, label %if.else124, label %if.then

if.then:                                          ; preds = %entry
  store i8 %504, ptr %state, align 16, !tbaa !9
  %conv12.i1643 = zext i8 %conv61.i1605 to i32
  %shr13.i1644 = lshr i32 %conv12.i1643, 4
  %idxprom14.i1645 = zext i32 %shr13.i1644 to i64
  %and19.i1646 = and i32 %conv12.i1643, 15
  %idxprom20.i1647 = zext i32 %and19.i1646 to i64
  %arrayidx21.i1648 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom14.i1645, i64 %idxprom20.i1647
  %505 = load i8, ptr %arrayidx21.i1648, align 1, !tbaa !9
  store i8 %505, ptr %arrayidx14, align 1, !tbaa !9
  %conv26.i1650 = zext i8 %conv104.i1617 to i32
  %shr27.i1651 = lshr i32 %conv26.i1650, 4
  %idxprom28.i1652 = zext i32 %shr27.i1651 to i64
  %and33.i1653 = and i32 %conv26.i1650, 15
  %idxprom34.i1654 = zext i32 %and33.i1653 to i64
  %arrayidx35.i1655 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom28.i1652, i64 %idxprom34.i1654
  %506 = load i8, ptr %arrayidx35.i1655, align 1, !tbaa !9
  store i8 %506, ptr %arrayidx26, align 2, !tbaa !9
  %conv40.i1657 = zext i8 %conv147.i1629 to i32
  %shr41.i1658 = lshr i32 %conv40.i1657, 4
  %idxprom42.i1659 = zext i32 %shr41.i1658 to i64
  %and47.i1660 = and i32 %conv40.i1657, 15
  %idxprom48.i1661 = zext i32 %and47.i1660 to i64
  %arrayidx49.i1662 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom42.i1659, i64 %idxprom48.i1661
  %507 = load i8, ptr %arrayidx49.i1662, align 1, !tbaa !9
  store i8 %507, ptr %arrayidx38, align 1, !tbaa !9
  %conv54.i1664 = zext i8 %conv25.i1595 to i32
  %shr55.i1665 = lshr i32 %conv54.i1664, 4
  %idxprom56.i1666 = zext i32 %shr55.i1665 to i64
  %and61.i1667 = and i32 %conv54.i1664, 15
  %idxprom62.i1668 = zext i32 %and61.i1667 to i64
  %arrayidx63.i1669 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom56.i1666, i64 %idxprom62.i1668
  %508 = load i8, ptr %arrayidx63.i1669, align 1, !tbaa !9
  %conv68.i1671 = zext i8 %conv68.i1607 to i32
  %shr69.i1672 = lshr i32 %conv68.i1671, 4
  %idxprom70.i1673 = zext i32 %shr69.i1672 to i64
  %and75.i1674 = and i32 %conv68.i1671, 15
  %idxprom76.i1675 = zext i32 %and75.i1674 to i64
  %arrayidx77.i1676 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom70.i1673, i64 %idxprom76.i1675
  %509 = load i8, ptr %arrayidx77.i1676, align 1, !tbaa !9
  %conv82.i1678 = zext i8 %conv111.i1619 to i32
  %shr83.i1679 = lshr i32 %conv82.i1678, 4
  %idxprom84.i1680 = zext i32 %shr83.i1679 to i64
  %and89.i1681 = and i32 %conv82.i1678, 15
  %idxprom90.i1682 = zext i32 %and89.i1681 to i64
  %arrayidx91.i1683 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom84.i1680, i64 %idxprom90.i1682
  %510 = load i8, ptr %arrayidx91.i1683, align 1, !tbaa !9
  %conv96.i1685 = zext i8 %conv154.i1631 to i32
  %shr97.i1686 = lshr i32 %conv96.i1685, 4
  %idxprom98.i1687 = zext i32 %shr97.i1686 to i64
  %and103.i1688 = and i32 %conv96.i1685, 15
  %idxprom104.i1689 = zext i32 %and103.i1688 to i64
  %arrayidx105.i1690 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom98.i1687, i64 %idxprom104.i1689
  %511 = load i8, ptr %arrayidx105.i1690, align 1, !tbaa !9
  %conv110.i1692 = zext i8 %conv32.i1597 to i32
  %shr111.i1693 = lshr i32 %conv110.i1692, 4
  %idxprom112.i1694 = zext i32 %shr111.i1693 to i64
  %and117.i1695 = and i32 %conv110.i1692, 15
  %idxprom118.i1696 = zext i32 %and117.i1695 to i64
  %arrayidx119.i1697 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom112.i1694, i64 %idxprom118.i1696
  %512 = load i8, ptr %arrayidx119.i1697, align 1, !tbaa !9
  %conv124.i1699 = zext i8 %conv75.i1609 to i32
  %shr125.i1700 = lshr i32 %conv124.i1699, 4
  %idxprom126.i1701 = zext i32 %shr125.i1700 to i64
  %and131.i1702 = and i32 %conv124.i1699, 15
  %idxprom132.i1703 = zext i32 %and131.i1702 to i64
  %arrayidx133.i1704 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom126.i1701, i64 %idxprom132.i1703
  %513 = load i8, ptr %arrayidx133.i1704, align 1, !tbaa !9
  %conv138.i1706 = zext i8 %conv118.i1621 to i32
  %shr139.i1707 = lshr i32 %conv138.i1706, 4
  %idxprom140.i1708 = zext i32 %shr139.i1707 to i64
  %and145.i1709 = and i32 %conv138.i1706, 15
  %idxprom146.i1710 = zext i32 %and145.i1709 to i64
  %arrayidx147.i1711 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom140.i1708, i64 %idxprom146.i1710
  %514 = load i8, ptr %arrayidx147.i1711, align 1, !tbaa !9
  %conv152.i1713 = zext i8 %conv161.i1633 to i32
  %shr153.i1714 = lshr i32 %conv152.i1713, 4
  %idxprom154.i1715 = zext i32 %shr153.i1714 to i64
  %and159.i1716 = and i32 %conv152.i1713, 15
  %idxprom160.i1717 = zext i32 %and159.i1716 to i64
  %arrayidx161.i1718 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom154.i1715, i64 %idxprom160.i1717
  %515 = load i8, ptr %arrayidx161.i1718, align 1, !tbaa !9
  %conv166.i1720 = zext i8 %conv39.i1599 to i32
  %shr167.i1721 = lshr i32 %conv166.i1720, 4
  %idxprom168.i1722 = zext i32 %shr167.i1721 to i64
  %and173.i1723 = and i32 %conv166.i1720, 15
  %idxprom174.i1724 = zext i32 %and173.i1723 to i64
  %arrayidx175.i1725 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom168.i1722, i64 %idxprom174.i1724
  %516 = load i8, ptr %arrayidx175.i1725, align 1, !tbaa !9
  %conv180.i1727 = zext i8 %conv82.i1611 to i32
  %shr181.i1728 = lshr i32 %conv180.i1727, 4
  %idxprom182.i1729 = zext i32 %shr181.i1728 to i64
  %and187.i1730 = and i32 %conv180.i1727, 15
  %idxprom188.i1731 = zext i32 %and187.i1730 to i64
  %arrayidx189.i1732 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom182.i1729, i64 %idxprom188.i1731
  %517 = load i8, ptr %arrayidx189.i1732, align 1, !tbaa !9
  %conv194.i1734 = zext i8 %conv125.i1623 to i32
  %shr195.i1735 = lshr i32 %conv194.i1734, 4
  %idxprom196.i1736 = zext i32 %shr195.i1735 to i64
  %and201.i1737 = and i32 %conv194.i1734, 15
  %idxprom202.i1738 = zext i32 %and201.i1737 to i64
  %arrayidx203.i1739 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom196.i1736, i64 %idxprom202.i1738
  %518 = load i8, ptr %arrayidx203.i1739, align 1, !tbaa !9
  %conv208.i1741 = zext i8 %conv168.i1635 to i32
  %shr209.i1742 = lshr i32 %conv208.i1741, 4
  %idxprom210.i1743 = zext i32 %shr209.i1742 to i64
  %and215.i1744 = and i32 %conv208.i1741, 15
  %idxprom216.i1745 = zext i32 %and215.i1744 to i64
  %arrayidx217.i1746 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom210.i1743, i64 %idxprom216.i1745
  %519 = load i8, ptr %arrayidx217.i1746, align 1, !tbaa !9
  store i8 %509, ptr %arrayidx4, align 4, !tbaa !9
  store i8 %510, ptr %arrayidx17, align 1, !tbaa !9
  store i8 %511, ptr %arrayidx29, align 2, !tbaa !9
  store i8 %508, ptr %arrayidx41, align 1, !tbaa !9
  store i8 %514, ptr %arrayidx7, align 8, !tbaa !9
  store i8 %512, ptr %arrayidx32, align 2, !tbaa !9
  store i8 %515, ptr %arrayidx20, align 1, !tbaa !9
  store i8 %513, ptr %arrayidx44, align 1, !tbaa !9
  store i8 %519, ptr %arrayidx10, align 4, !tbaa !9
  store i8 %518, ptr %arrayidx47, align 1, !tbaa !9
  store i8 %517, ptr %arrayidx35, align 2, !tbaa !9
  store i8 %516, ptr %arrayidx23, align 1, !tbaa !9
  call void @MixColumns(ptr noundef nonnull %state)
  %arrayidx98 = getelementptr inbounds i32, ptr %key, i64 40
  %520 = load i32, ptr %arrayidx98, align 4, !tbaa !32
  %shr.i1759 = lshr i32 %520, 24
  %shr3.i1760 = lshr i32 %520, 16
  %shr7.i1761 = lshr i32 %520, 8
  %521 = load i8, ptr %state, align 16, !tbaa !9
  %522 = trunc i32 %shr.i1759 to i8
  %conv18.i1762 = xor i8 %521, %522
  %523 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %524 = trunc i32 %shr3.i1760 to i8
  %conv25.i1764 = xor i8 %523, %524
  store i8 %conv25.i1764, ptr %arrayidx4, align 4, !tbaa !9
  %525 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %526 = trunc i32 %shr7.i1761 to i8
  %conv32.i1766 = xor i8 %525, %526
  store i8 %conv32.i1766, ptr %arrayidx7, align 8, !tbaa !9
  %527 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %528 = trunc i32 %520 to i8
  %conv39.i1768 = xor i8 %527, %528
  store i8 %conv39.i1768, ptr %arrayidx10, align 4, !tbaa !9
  %arrayidx40.i1769 = getelementptr inbounds i32, ptr %key, i64 41
  %529 = load i32, ptr %arrayidx40.i1769, align 4, !tbaa !32
  %shr41.i1770 = lshr i32 %529, 24
  %shr45.i1771 = lshr i32 %529, 16
  %shr49.i1772 = lshr i32 %529, 8
  %530 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %531 = trunc i32 %shr41.i1770 to i8
  %conv61.i1774 = xor i8 %530, %531
  %532 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %533 = trunc i32 %shr45.i1771 to i8
  %conv68.i1776 = xor i8 %532, %533
  %534 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %535 = trunc i32 %shr49.i1772 to i8
  %conv75.i1778 = xor i8 %534, %535
  store i8 %conv75.i1778, ptr %arrayidx20, align 1, !tbaa !9
  %536 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %537 = trunc i32 %529 to i8
  %conv82.i1780 = xor i8 %536, %537
  store i8 %conv82.i1780, ptr %arrayidx23, align 1, !tbaa !9
  %arrayidx83.i1781 = getelementptr inbounds i32, ptr %key, i64 42
  %538 = load i32, ptr %arrayidx83.i1781, align 4, !tbaa !32
  %shr84.i1782 = lshr i32 %538, 24
  %shr88.i1783 = lshr i32 %538, 16
  %shr92.i1784 = lshr i32 %538, 8
  %539 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %540 = trunc i32 %shr84.i1782 to i8
  %conv104.i1786 = xor i8 %539, %540
  %541 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %542 = trunc i32 %shr88.i1783 to i8
  %conv111.i1788 = xor i8 %541, %542
  %543 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %544 = trunc i32 %shr92.i1784 to i8
  %conv118.i1790 = xor i8 %543, %544
  store i8 %conv118.i1790, ptr %arrayidx32, align 2, !tbaa !9
  %545 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %546 = trunc i32 %538 to i8
  %conv125.i1792 = xor i8 %545, %546
  store i8 %conv125.i1792, ptr %arrayidx35, align 2, !tbaa !9
  %arrayidx126.i1793 = getelementptr inbounds i32, ptr %key, i64 43
  %547 = load i32, ptr %arrayidx126.i1793, align 4, !tbaa !32
  %shr127.i1794 = lshr i32 %547, 24
  %shr131.i1795 = lshr i32 %547, 16
  %shr135.i1796 = lshr i32 %547, 8
  %548 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %549 = trunc i32 %shr127.i1794 to i8
  %conv147.i1798 = xor i8 %548, %549
  %550 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %551 = trunc i32 %shr131.i1795 to i8
  %conv154.i1800 = xor i8 %550, %551
  %552 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %553 = trunc i32 %shr135.i1796 to i8
  %conv161.i1802 = xor i8 %552, %553
  %554 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %555 = trunc i32 %547 to i8
  %conv168.i1804 = xor i8 %554, %555
  store i8 %conv168.i1804, ptr %arrayidx47, align 1, !tbaa !9
  %conv.i1805 = zext i8 %conv18.i1762 to i32
  %shr.i1806 = lshr i32 %conv.i1805, 4
  %idxprom.i1807 = zext i32 %shr.i1806 to i64
  %and.i1808 = and i32 %conv.i1805, 15
  %idxprom6.i1809 = zext i32 %and.i1808 to i64
  %arrayidx7.i1810 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom.i1807, i64 %idxprom6.i1809
  %556 = load i8, ptr %arrayidx7.i1810, align 1, !tbaa !9
  store i8 %556, ptr %state, align 16, !tbaa !9
  %conv12.i1812 = zext i8 %conv61.i1774 to i32
  %shr13.i1813 = lshr i32 %conv12.i1812, 4
  %idxprom14.i1814 = zext i32 %shr13.i1813 to i64
  %and19.i1815 = and i32 %conv12.i1812, 15
  %idxprom20.i1816 = zext i32 %and19.i1815 to i64
  %arrayidx21.i1817 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom14.i1814, i64 %idxprom20.i1816
  %557 = load i8, ptr %arrayidx21.i1817, align 1, !tbaa !9
  store i8 %557, ptr %arrayidx14, align 1, !tbaa !9
  %conv26.i1819 = zext i8 %conv104.i1786 to i32
  %shr27.i1820 = lshr i32 %conv26.i1819, 4
  %idxprom28.i1821 = zext i32 %shr27.i1820 to i64
  %and33.i1822 = and i32 %conv26.i1819, 15
  %idxprom34.i1823 = zext i32 %and33.i1822 to i64
  %arrayidx35.i1824 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom28.i1821, i64 %idxprom34.i1823
  %558 = load i8, ptr %arrayidx35.i1824, align 1, !tbaa !9
  store i8 %558, ptr %arrayidx26, align 2, !tbaa !9
  %conv40.i1826 = zext i8 %conv147.i1798 to i32
  %shr41.i1827 = lshr i32 %conv40.i1826, 4
  %idxprom42.i1828 = zext i32 %shr41.i1827 to i64
  %and47.i1829 = and i32 %conv40.i1826, 15
  %idxprom48.i1830 = zext i32 %and47.i1829 to i64
  %arrayidx49.i1831 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom42.i1828, i64 %idxprom48.i1830
  %559 = load i8, ptr %arrayidx49.i1831, align 1, !tbaa !9
  store i8 %559, ptr %arrayidx38, align 1, !tbaa !9
  %560 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %conv54.i1833 = zext i8 %560 to i32
  %shr55.i1834 = lshr i32 %conv54.i1833, 4
  %idxprom56.i1835 = zext i32 %shr55.i1834 to i64
  %and61.i1836 = and i32 %conv54.i1833, 15
  %idxprom62.i1837 = zext i32 %and61.i1836 to i64
  %arrayidx63.i1838 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom56.i1835, i64 %idxprom62.i1837
  %561 = load i8, ptr %arrayidx63.i1838, align 1, !tbaa !9
  %conv68.i1840 = zext i8 %conv68.i1776 to i32
  %shr69.i1841 = lshr i32 %conv68.i1840, 4
  %idxprom70.i1842 = zext i32 %shr69.i1841 to i64
  %and75.i1843 = and i32 %conv68.i1840, 15
  %idxprom76.i1844 = zext i32 %and75.i1843 to i64
  %arrayidx77.i1845 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom70.i1842, i64 %idxprom76.i1844
  %562 = load i8, ptr %arrayidx77.i1845, align 1, !tbaa !9
  %conv82.i1847 = zext i8 %conv111.i1788 to i32
  %shr83.i1848 = lshr i32 %conv82.i1847, 4
  %idxprom84.i1849 = zext i32 %shr83.i1848 to i64
  %and89.i1850 = and i32 %conv82.i1847, 15
  %idxprom90.i1851 = zext i32 %and89.i1850 to i64
  %arrayidx91.i1852 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom84.i1849, i64 %idxprom90.i1851
  %563 = load i8, ptr %arrayidx91.i1852, align 1, !tbaa !9
  %conv96.i1854 = zext i8 %conv154.i1800 to i32
  %shr97.i1855 = lshr i32 %conv96.i1854, 4
  %idxprom98.i1856 = zext i32 %shr97.i1855 to i64
  %and103.i1857 = and i32 %conv96.i1854, 15
  %idxprom104.i1858 = zext i32 %and103.i1857 to i64
  %arrayidx105.i1859 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom98.i1856, i64 %idxprom104.i1858
  %564 = load i8, ptr %arrayidx105.i1859, align 1, !tbaa !9
  %565 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %conv110.i1861 = zext i8 %565 to i32
  %shr111.i1862 = lshr i32 %conv110.i1861, 4
  %idxprom112.i1863 = zext i32 %shr111.i1862 to i64
  %and117.i1864 = and i32 %conv110.i1861, 15
  %idxprom118.i1865 = zext i32 %and117.i1864 to i64
  %arrayidx119.i1866 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom112.i1863, i64 %idxprom118.i1865
  %566 = load i8, ptr %arrayidx119.i1866, align 1, !tbaa !9
  %567 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %conv124.i1868 = zext i8 %567 to i32
  %shr125.i1869 = lshr i32 %conv124.i1868, 4
  %idxprom126.i1870 = zext i32 %shr125.i1869 to i64
  %and131.i1871 = and i32 %conv124.i1868, 15
  %idxprom132.i1872 = zext i32 %and131.i1871 to i64
  %arrayidx133.i1873 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom126.i1870, i64 %idxprom132.i1872
  %568 = load i8, ptr %arrayidx133.i1873, align 1, !tbaa !9
  %569 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %conv138.i1875 = zext i8 %569 to i32
  %shr139.i1876 = lshr i32 %conv138.i1875, 4
  %idxprom140.i1877 = zext i32 %shr139.i1876 to i64
  %and145.i1878 = and i32 %conv138.i1875, 15
  %idxprom146.i1879 = zext i32 %and145.i1878 to i64
  %arrayidx147.i1880 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom140.i1877, i64 %idxprom146.i1879
  %570 = load i8, ptr %arrayidx147.i1880, align 1, !tbaa !9
  %conv152.i1882 = zext i8 %conv161.i1802 to i32
  %shr153.i1883 = lshr i32 %conv152.i1882, 4
  %idxprom154.i1884 = zext i32 %shr153.i1883 to i64
  %and159.i1885 = and i32 %conv152.i1882, 15
  %idxprom160.i1886 = zext i32 %and159.i1885 to i64
  %arrayidx161.i1887 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom154.i1884, i64 %idxprom160.i1886
  %571 = load i8, ptr %arrayidx161.i1887, align 1, !tbaa !9
  %572 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %conv166.i1889 = zext i8 %572 to i32
  %shr167.i1890 = lshr i32 %conv166.i1889, 4
  %idxprom168.i1891 = zext i32 %shr167.i1890 to i64
  %and173.i1892 = and i32 %conv166.i1889, 15
  %idxprom174.i1893 = zext i32 %and173.i1892 to i64
  %arrayidx175.i1894 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom168.i1891, i64 %idxprom174.i1893
  %573 = load i8, ptr %arrayidx175.i1894, align 1, !tbaa !9
  %574 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %conv180.i1896 = zext i8 %574 to i32
  %shr181.i1897 = lshr i32 %conv180.i1896, 4
  %idxprom182.i1898 = zext i32 %shr181.i1897 to i64
  %and187.i1899 = and i32 %conv180.i1896, 15
  %idxprom188.i1900 = zext i32 %and187.i1899 to i64
  %arrayidx189.i1901 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom182.i1898, i64 %idxprom188.i1900
  %575 = load i8, ptr %arrayidx189.i1901, align 1, !tbaa !9
  %576 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %conv194.i1903 = zext i8 %576 to i32
  %shr195.i1904 = lshr i32 %conv194.i1903, 4
  %idxprom196.i1905 = zext i32 %shr195.i1904 to i64
  %and201.i1906 = and i32 %conv194.i1903, 15
  %idxprom202.i1907 = zext i32 %and201.i1906 to i64
  %arrayidx203.i1908 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom196.i1905, i64 %idxprom202.i1907
  %577 = load i8, ptr %arrayidx203.i1908, align 1, !tbaa !9
  %578 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %conv208.i1910 = zext i8 %578 to i32
  %shr209.i1911 = lshr i32 %conv208.i1910, 4
  %idxprom210.i1912 = zext i32 %shr209.i1911 to i64
  %and215.i1913 = and i32 %conv208.i1910, 15
  %idxprom216.i1914 = zext i32 %and215.i1913 to i64
  %arrayidx217.i1915 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom210.i1912, i64 %idxprom216.i1914
  %579 = load i8, ptr %arrayidx217.i1915, align 1, !tbaa !9
  store i8 %562, ptr %arrayidx4, align 4, !tbaa !9
  store i8 %563, ptr %arrayidx17, align 1, !tbaa !9
  store i8 %564, ptr %arrayidx29, align 2, !tbaa !9
  store i8 %561, ptr %arrayidx41, align 1, !tbaa !9
  store i8 %570, ptr %arrayidx7, align 8, !tbaa !9
  store i8 %566, ptr %arrayidx32, align 2, !tbaa !9
  store i8 %571, ptr %arrayidx20, align 1, !tbaa !9
  store i8 %568, ptr %arrayidx44, align 1, !tbaa !9
  store i8 %579, ptr %arrayidx10, align 4, !tbaa !9
  store i8 %577, ptr %arrayidx47, align 1, !tbaa !9
  store i8 %575, ptr %arrayidx35, align 2, !tbaa !9
  store i8 %573, ptr %arrayidx23, align 1, !tbaa !9
  call void @MixColumns(ptr noundef nonnull %state)
  %arrayidx103 = getelementptr inbounds i32, ptr %key, i64 44
  %580 = load i32, ptr %arrayidx103, align 4, !tbaa !32
  %shr.i1928 = lshr i32 %580, 24
  %shr3.i1929 = lshr i32 %580, 16
  %shr7.i1930 = lshr i32 %580, 8
  %581 = load i8, ptr %state, align 16, !tbaa !9
  %582 = trunc i32 %shr.i1928 to i8
  %conv18.i1931 = xor i8 %581, %582
  %583 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %584 = trunc i32 %shr3.i1929 to i8
  %conv25.i1933 = xor i8 %583, %584
  %585 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %586 = trunc i32 %shr7.i1930 to i8
  %conv32.i1935 = xor i8 %585, %586
  %587 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %588 = trunc i32 %580 to i8
  %conv39.i1937 = xor i8 %587, %588
  %arrayidx40.i1938 = getelementptr inbounds i32, ptr %key, i64 45
  %589 = load i32, ptr %arrayidx40.i1938, align 4, !tbaa !32
  %shr41.i1939 = lshr i32 %589, 24
  %shr45.i1940 = lshr i32 %589, 16
  %shr49.i1941 = lshr i32 %589, 8
  %590 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %591 = trunc i32 %shr41.i1939 to i8
  %conv61.i1943 = xor i8 %590, %591
  %592 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %593 = trunc i32 %shr45.i1940 to i8
  %conv68.i1945 = xor i8 %592, %593
  %594 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %595 = trunc i32 %shr49.i1941 to i8
  %conv75.i1947 = xor i8 %594, %595
  %596 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %597 = trunc i32 %589 to i8
  %conv82.i1949 = xor i8 %596, %597
  store i8 %conv82.i1949, ptr %arrayidx23, align 1, !tbaa !9
  %arrayidx83.i1950 = getelementptr inbounds i32, ptr %key, i64 46
  %598 = load i32, ptr %arrayidx83.i1950, align 4, !tbaa !32
  %shr84.i1951 = lshr i32 %598, 24
  %shr88.i1952 = lshr i32 %598, 16
  %shr92.i1953 = lshr i32 %598, 8
  %599 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %600 = trunc i32 %shr84.i1951 to i8
  %conv104.i1955 = xor i8 %599, %600
  %601 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %602 = trunc i32 %shr88.i1952 to i8
  %conv111.i1957 = xor i8 %601, %602
  %603 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %604 = trunc i32 %shr92.i1953 to i8
  %conv118.i1959 = xor i8 %603, %604
  %605 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %606 = trunc i32 %598 to i8
  %conv125.i1961 = xor i8 %605, %606
  store i8 %conv125.i1961, ptr %arrayidx35, align 2, !tbaa !9
  %arrayidx126.i1962 = getelementptr inbounds i32, ptr %key, i64 47
  %607 = load i32, ptr %arrayidx126.i1962, align 4, !tbaa !32
  %shr127.i1963 = lshr i32 %607, 24
  %shr131.i1964 = lshr i32 %607, 16
  %shr135.i1965 = lshr i32 %607, 8
  %608 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %609 = trunc i32 %shr127.i1963 to i8
  %conv147.i1967 = xor i8 %608, %609
  %610 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %611 = trunc i32 %shr131.i1964 to i8
  %conv154.i1969 = xor i8 %610, %611
  %612 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %613 = trunc i32 %shr135.i1965 to i8
  %conv161.i1971 = xor i8 %612, %613
  %614 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %615 = trunc i32 %607 to i8
  %conv168.i1973 = xor i8 %614, %615
  store i8 %conv168.i1973, ptr %arrayidx47, align 1, !tbaa !9
  %cmp104.not = icmp eq i32 %keysize, 192
  %conv.i2481 = zext i8 %conv18.i1931 to i32
  %shr.i2482 = lshr i32 %conv.i2481, 4
  %idxprom.i2483 = zext i32 %shr.i2482 to i64
  %and.i2484 = and i32 %conv.i2481, 15
  %idxprom6.i2485 = zext i32 %and.i2484 to i64
  %arrayidx7.i2486 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom.i2483, i64 %idxprom6.i2485
  %616 = load i8, ptr %arrayidx7.i2486, align 1, !tbaa !9
  store i8 %616, ptr %state, align 16, !tbaa !9
  %conv12.i2488 = zext i8 %conv61.i1943 to i32
  %shr13.i2489 = lshr i32 %conv12.i2488, 4
  %idxprom14.i2490 = zext i32 %shr13.i2489 to i64
  %and19.i2491 = and i32 %conv12.i2488, 15
  %idxprom20.i2492 = zext i32 %and19.i2491 to i64
  %arrayidx21.i2493 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom14.i2490, i64 %idxprom20.i2492
  %617 = load i8, ptr %arrayidx21.i2493, align 1, !tbaa !9
  store i8 %617, ptr %arrayidx14, align 1, !tbaa !9
  %conv26.i2495 = zext i8 %conv104.i1955 to i32
  %shr27.i2496 = lshr i32 %conv26.i2495, 4
  %idxprom28.i2497 = zext i32 %shr27.i2496 to i64
  %and33.i2498 = and i32 %conv26.i2495, 15
  %idxprom34.i2499 = zext i32 %and33.i2498 to i64
  %arrayidx35.i2500 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom28.i2497, i64 %idxprom34.i2499
  %618 = load i8, ptr %arrayidx35.i2500, align 1, !tbaa !9
  store i8 %618, ptr %arrayidx26, align 2, !tbaa !9
  %conv40.i2502 = zext i8 %conv147.i1967 to i32
  %shr41.i2503 = lshr i32 %conv40.i2502, 4
  %idxprom42.i2504 = zext i32 %shr41.i2503 to i64
  %and47.i2505 = and i32 %conv40.i2502, 15
  %idxprom48.i2506 = zext i32 %and47.i2505 to i64
  %arrayidx49.i2507 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom42.i2504, i64 %idxprom48.i2506
  %619 = load i8, ptr %arrayidx49.i2507, align 1, !tbaa !9
  store i8 %619, ptr %arrayidx38, align 1, !tbaa !9
  %conv54.i2509 = zext i8 %conv25.i1933 to i32
  %shr55.i2510 = lshr i32 %conv54.i2509, 4
  %idxprom56.i2511 = zext i32 %shr55.i2510 to i64
  %and61.i2512 = and i32 %conv54.i2509, 15
  %idxprom62.i2513 = zext i32 %and61.i2512 to i64
  %arrayidx63.i2514 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom56.i2511, i64 %idxprom62.i2513
  %620 = load i8, ptr %arrayidx63.i2514, align 1, !tbaa !9
  %conv68.i2516 = zext i8 %conv68.i1945 to i32
  %shr69.i2517 = lshr i32 %conv68.i2516, 4
  %idxprom70.i2518 = zext i32 %shr69.i2517 to i64
  %and75.i2519 = and i32 %conv68.i2516, 15
  %idxprom76.i2520 = zext i32 %and75.i2519 to i64
  %arrayidx77.i2521 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom70.i2518, i64 %idxprom76.i2520
  %621 = load i8, ptr %arrayidx77.i2521, align 1, !tbaa !9
  %conv82.i2523 = zext i8 %conv111.i1957 to i32
  %shr83.i2524 = lshr i32 %conv82.i2523, 4
  %idxprom84.i2525 = zext i32 %shr83.i2524 to i64
  %and89.i2526 = and i32 %conv82.i2523, 15
  %idxprom90.i2527 = zext i32 %and89.i2526 to i64
  %arrayidx91.i2528 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom84.i2525, i64 %idxprom90.i2527
  %622 = load i8, ptr %arrayidx91.i2528, align 1, !tbaa !9
  %conv96.i2530 = zext i8 %conv154.i1969 to i32
  %shr97.i2531 = lshr i32 %conv96.i2530, 4
  %idxprom98.i2532 = zext i32 %shr97.i2531 to i64
  %and103.i2533 = and i32 %conv96.i2530, 15
  %idxprom104.i2534 = zext i32 %and103.i2533 to i64
  %arrayidx105.i2535 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom98.i2532, i64 %idxprom104.i2534
  %623 = load i8, ptr %arrayidx105.i2535, align 1, !tbaa !9
  %conv110.i2537 = zext i8 %conv32.i1935 to i32
  %shr111.i2538 = lshr i32 %conv110.i2537, 4
  %idxprom112.i2539 = zext i32 %shr111.i2538 to i64
  %and117.i2540 = and i32 %conv110.i2537, 15
  %idxprom118.i2541 = zext i32 %and117.i2540 to i64
  %arrayidx119.i2542 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom112.i2539, i64 %idxprom118.i2541
  %624 = load i8, ptr %arrayidx119.i2542, align 1, !tbaa !9
  %conv124.i2544 = zext i8 %conv75.i1947 to i32
  %shr125.i2545 = lshr i32 %conv124.i2544, 4
  %idxprom126.i2546 = zext i32 %shr125.i2545 to i64
  %and131.i2547 = and i32 %conv124.i2544, 15
  %idxprom132.i2548 = zext i32 %and131.i2547 to i64
  %arrayidx133.i2549 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom126.i2546, i64 %idxprom132.i2548
  %625 = load i8, ptr %arrayidx133.i2549, align 1, !tbaa !9
  %conv138.i2551 = zext i8 %conv118.i1959 to i32
  %shr139.i2552 = lshr i32 %conv138.i2551, 4
  %idxprom140.i2553 = zext i32 %shr139.i2552 to i64
  %and145.i2554 = and i32 %conv138.i2551, 15
  %idxprom146.i2555 = zext i32 %and145.i2554 to i64
  %arrayidx147.i2556 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom140.i2553, i64 %idxprom146.i2555
  %626 = load i8, ptr %arrayidx147.i2556, align 1, !tbaa !9
  %conv152.i2558 = zext i8 %conv161.i1971 to i32
  %shr153.i2559 = lshr i32 %conv152.i2558, 4
  %idxprom154.i2560 = zext i32 %shr153.i2559 to i64
  %and159.i2561 = and i32 %conv152.i2558, 15
  %idxprom160.i2562 = zext i32 %and159.i2561 to i64
  %arrayidx161.i2563 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom154.i2560, i64 %idxprom160.i2562
  %627 = load i8, ptr %arrayidx161.i2563, align 1, !tbaa !9
  %conv166.i2565 = zext i8 %conv39.i1937 to i32
  %shr167.i2566 = lshr i32 %conv166.i2565, 4
  %idxprom168.i2567 = zext i32 %shr167.i2566 to i64
  %and173.i2568 = and i32 %conv166.i2565, 15
  %idxprom174.i2569 = zext i32 %and173.i2568 to i64
  %arrayidx175.i2570 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom168.i2567, i64 %idxprom174.i2569
  %628 = load i8, ptr %arrayidx175.i2570, align 1, !tbaa !9
  %629 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %conv180.i2572 = zext i8 %629 to i32
  %shr181.i2573 = lshr i32 %conv180.i2572, 4
  %idxprom182.i2574 = zext i32 %shr181.i2573 to i64
  %and187.i2575 = and i32 %conv180.i2572, 15
  %idxprom188.i2576 = zext i32 %and187.i2575 to i64
  %arrayidx189.i2577 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom182.i2574, i64 %idxprom188.i2576
  %630 = load i8, ptr %arrayidx189.i2577, align 1, !tbaa !9
  %631 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %conv194.i2579 = zext i8 %631 to i32
  %shr195.i2580 = lshr i32 %conv194.i2579, 4
  %idxprom196.i2581 = zext i32 %shr195.i2580 to i64
  %and201.i2582 = and i32 %conv194.i2579, 15
  %idxprom202.i2583 = zext i32 %and201.i2582 to i64
  %arrayidx203.i2584 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom196.i2581, i64 %idxprom202.i2583
  %632 = load i8, ptr %arrayidx203.i2584, align 1, !tbaa !9
  %633 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %conv208.i2586 = zext i8 %633 to i32
  %shr209.i2587 = lshr i32 %conv208.i2586, 4
  %idxprom210.i2588 = zext i32 %shr209.i2587 to i64
  %and215.i2589 = and i32 %conv208.i2586, 15
  %idxprom216.i2590 = zext i32 %and215.i2589 to i64
  %arrayidx217.i2591 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom210.i2588, i64 %idxprom216.i2590
  %634 = load i8, ptr %arrayidx217.i2591, align 1, !tbaa !9
  br i1 %cmp104.not, label %if.else, label %if.then105

if.then105:                                       ; preds = %if.then
  store i8 %621, ptr %arrayidx4, align 4, !tbaa !9
  store i8 %622, ptr %arrayidx17, align 1, !tbaa !9
  store i8 %623, ptr %arrayidx29, align 2, !tbaa !9
  store i8 %620, ptr %arrayidx41, align 1, !tbaa !9
  store i8 %626, ptr %arrayidx7, align 8, !tbaa !9
  store i8 %624, ptr %arrayidx32, align 2, !tbaa !9
  store i8 %627, ptr %arrayidx20, align 1, !tbaa !9
  store i8 %625, ptr %arrayidx44, align 1, !tbaa !9
  store i8 %634, ptr %arrayidx10, align 4, !tbaa !9
  store i8 %632, ptr %arrayidx47, align 1, !tbaa !9
  store i8 %630, ptr %arrayidx35, align 2, !tbaa !9
  store i8 %628, ptr %arrayidx23, align 1, !tbaa !9
  call void @MixColumns(ptr noundef nonnull %state)
  %arrayidx110 = getelementptr inbounds i32, ptr %key, i64 48
  %635 = load i8, ptr %state, align 16, !tbaa !9
  %636 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %637 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %638 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %639 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %640 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %641 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %642 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %643 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %644 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %645 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %646 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %647 = load <4 x i32>, ptr %arrayidx110, align 4, !tbaa !32
  %648 = extractelement <4 x i32> %647, i64 0
  %shr.i2097 = lshr i32 %648, 24
  %shr3.i2098 = lshr i32 %648, 16
  %shr7.i2099 = lshr i32 %648, 8
  %649 = trunc i32 %shr.i2097 to i8
  %conv18.i2100 = xor i8 %635, %649
  %650 = trunc i32 %shr3.i2098 to i8
  %conv25.i2102 = xor i8 %636, %650
  store i8 %conv25.i2102, ptr %arrayidx4, align 4, !tbaa !9
  %651 = trunc i32 %shr7.i2099 to i8
  %conv32.i2104 = xor i8 %637, %651
  store i8 %conv32.i2104, ptr %arrayidx7, align 8, !tbaa !9
  %652 = extractelement <4 x i32> %647, i64 1
  %shr41.i2108 = lshr i32 %652, 24
  %shr45.i2109 = lshr i32 %652, 16
  %shr49.i2110 = lshr i32 %652, 8
  %653 = trunc i32 %shr41.i2108 to i8
  %conv61.i2112 = xor i8 %638, %653
  %654 = trunc i32 %shr45.i2109 to i8
  %conv68.i2114 = xor i8 %639, %654
  %655 = trunc i32 %shr49.i2110 to i8
  %conv75.i2116 = xor i8 %640, %655
  store i8 %conv75.i2116, ptr %arrayidx20, align 1, !tbaa !9
  %656 = extractelement <4 x i32> %647, i64 2
  %shr84.i2120 = lshr i32 %656, 24
  %shr88.i2121 = lshr i32 %656, 16
  %shr92.i2122 = lshr i32 %656, 8
  %657 = trunc i32 %shr84.i2120 to i8
  %conv104.i2124 = xor i8 %641, %657
  %658 = trunc i32 %shr88.i2121 to i8
  %conv111.i2126 = xor i8 %642, %658
  %659 = trunc i32 %shr92.i2122 to i8
  %conv118.i2128 = xor i8 %643, %659
  store i8 %conv118.i2128, ptr %arrayidx32, align 2, !tbaa !9
  %660 = extractelement <4 x i32> %647, i64 3
  %shr127.i2132 = lshr i32 %660, 24
  %shr131.i2133 = lshr i32 %660, 16
  %shr135.i2134 = lshr i32 %660, 8
  %661 = trunc i32 %shr127.i2132 to i8
  %conv147.i2136 = xor i8 %644, %661
  %662 = trunc i32 %shr131.i2133 to i8
  %conv154.i2138 = xor i8 %645, %662
  %663 = trunc i32 %shr135.i2134 to i8
  %conv161.i2140 = xor i8 %646, %663
  %664 = load <4 x i8>, ptr %arrayidx10, align 4, !tbaa !9
  %665 = trunc <4 x i32> %647 to <4 x i8>
  %666 = xor <4 x i8> %664, %665
  store <4 x i8> %666, ptr %arrayidx10, align 4, !tbaa !9
  %conv.i2143 = zext i8 %conv18.i2100 to i32
  %shr.i2144 = lshr i32 %conv.i2143, 4
  %idxprom.i2145 = zext i32 %shr.i2144 to i64
  %and.i2146 = and i32 %conv.i2143, 15
  %idxprom6.i2147 = zext i32 %and.i2146 to i64
  %arrayidx7.i2148 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom.i2145, i64 %idxprom6.i2147
  %667 = load i8, ptr %arrayidx7.i2148, align 1, !tbaa !9
  store i8 %667, ptr %state, align 16, !tbaa !9
  %conv12.i2150 = zext i8 %conv61.i2112 to i32
  %shr13.i2151 = lshr i32 %conv12.i2150, 4
  %idxprom14.i2152 = zext i32 %shr13.i2151 to i64
  %and19.i2153 = and i32 %conv12.i2150, 15
  %idxprom20.i2154 = zext i32 %and19.i2153 to i64
  %arrayidx21.i2155 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom14.i2152, i64 %idxprom20.i2154
  %668 = load i8, ptr %arrayidx21.i2155, align 1, !tbaa !9
  store i8 %668, ptr %arrayidx14, align 1, !tbaa !9
  %conv26.i2157 = zext i8 %conv104.i2124 to i32
  %shr27.i2158 = lshr i32 %conv26.i2157, 4
  %idxprom28.i2159 = zext i32 %shr27.i2158 to i64
  %and33.i2160 = and i32 %conv26.i2157, 15
  %idxprom34.i2161 = zext i32 %and33.i2160 to i64
  %arrayidx35.i2162 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom28.i2159, i64 %idxprom34.i2161
  %669 = load i8, ptr %arrayidx35.i2162, align 1, !tbaa !9
  store i8 %669, ptr %arrayidx26, align 2, !tbaa !9
  %conv40.i2164 = zext i8 %conv147.i2136 to i32
  %shr41.i2165 = lshr i32 %conv40.i2164, 4
  %idxprom42.i2166 = zext i32 %shr41.i2165 to i64
  %and47.i2167 = and i32 %conv40.i2164, 15
  %idxprom48.i2168 = zext i32 %and47.i2167 to i64
  %arrayidx49.i2169 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom42.i2166, i64 %idxprom48.i2168
  %670 = load i8, ptr %arrayidx49.i2169, align 1, !tbaa !9
  store i8 %670, ptr %arrayidx38, align 1, !tbaa !9
  %671 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %conv54.i2171 = zext i8 %671 to i32
  %shr55.i2172 = lshr i32 %conv54.i2171, 4
  %idxprom56.i2173 = zext i32 %shr55.i2172 to i64
  %and61.i2174 = and i32 %conv54.i2171, 15
  %idxprom62.i2175 = zext i32 %and61.i2174 to i64
  %arrayidx63.i2176 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom56.i2173, i64 %idxprom62.i2175
  %672 = load i8, ptr %arrayidx63.i2176, align 1, !tbaa !9
  %conv68.i2178 = zext i8 %conv68.i2114 to i32
  %shr69.i2179 = lshr i32 %conv68.i2178, 4
  %idxprom70.i2180 = zext i32 %shr69.i2179 to i64
  %and75.i2181 = and i32 %conv68.i2178, 15
  %idxprom76.i2182 = zext i32 %and75.i2181 to i64
  %arrayidx77.i2183 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom70.i2180, i64 %idxprom76.i2182
  %673 = load i8, ptr %arrayidx77.i2183, align 1, !tbaa !9
  %conv82.i2185 = zext i8 %conv111.i2126 to i32
  %shr83.i2186 = lshr i32 %conv82.i2185, 4
  %idxprom84.i2187 = zext i32 %shr83.i2186 to i64
  %and89.i2188 = and i32 %conv82.i2185, 15
  %idxprom90.i2189 = zext i32 %and89.i2188 to i64
  %arrayidx91.i2190 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom84.i2187, i64 %idxprom90.i2189
  %674 = load i8, ptr %arrayidx91.i2190, align 1, !tbaa !9
  %conv96.i2192 = zext i8 %conv154.i2138 to i32
  %shr97.i2193 = lshr i32 %conv96.i2192, 4
  %idxprom98.i2194 = zext i32 %shr97.i2193 to i64
  %and103.i2195 = and i32 %conv96.i2192, 15
  %idxprom104.i2196 = zext i32 %and103.i2195 to i64
  %arrayidx105.i2197 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom98.i2194, i64 %idxprom104.i2196
  %675 = load i8, ptr %arrayidx105.i2197, align 1, !tbaa !9
  %676 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %conv110.i2199 = zext i8 %676 to i32
  %shr111.i2200 = lshr i32 %conv110.i2199, 4
  %idxprom112.i2201 = zext i32 %shr111.i2200 to i64
  %and117.i2202 = and i32 %conv110.i2199, 15
  %idxprom118.i2203 = zext i32 %and117.i2202 to i64
  %arrayidx119.i2204 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom112.i2201, i64 %idxprom118.i2203
  %677 = load i8, ptr %arrayidx119.i2204, align 1, !tbaa !9
  %678 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %conv124.i2206 = zext i8 %678 to i32
  %shr125.i2207 = lshr i32 %conv124.i2206, 4
  %idxprom126.i2208 = zext i32 %shr125.i2207 to i64
  %and131.i2209 = and i32 %conv124.i2206, 15
  %idxprom132.i2210 = zext i32 %and131.i2209 to i64
  %arrayidx133.i2211 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom126.i2208, i64 %idxprom132.i2210
  %679 = load i8, ptr %arrayidx133.i2211, align 1, !tbaa !9
  %680 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %conv138.i2213 = zext i8 %680 to i32
  %shr139.i2214 = lshr i32 %conv138.i2213, 4
  %idxprom140.i2215 = zext i32 %shr139.i2214 to i64
  %and145.i2216 = and i32 %conv138.i2213, 15
  %idxprom146.i2217 = zext i32 %and145.i2216 to i64
  %arrayidx147.i2218 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom140.i2215, i64 %idxprom146.i2217
  %681 = load i8, ptr %arrayidx147.i2218, align 1, !tbaa !9
  %conv152.i2220 = zext i8 %conv161.i2140 to i32
  %shr153.i2221 = lshr i32 %conv152.i2220, 4
  %idxprom154.i2222 = zext i32 %shr153.i2221 to i64
  %and159.i2223 = and i32 %conv152.i2220, 15
  %idxprom160.i2224 = zext i32 %and159.i2223 to i64
  %arrayidx161.i2225 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom154.i2222, i64 %idxprom160.i2224
  %682 = load i8, ptr %arrayidx161.i2225, align 1, !tbaa !9
  %683 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %conv166.i2227 = zext i8 %683 to i32
  %shr167.i2228 = lshr i32 %conv166.i2227, 4
  %idxprom168.i2229 = zext i32 %shr167.i2228 to i64
  %and173.i2230 = and i32 %conv166.i2227, 15
  %idxprom174.i2231 = zext i32 %and173.i2230 to i64
  %arrayidx175.i2232 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom168.i2229, i64 %idxprom174.i2231
  %684 = load i8, ptr %arrayidx175.i2232, align 1, !tbaa !9
  %685 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %conv180.i2234 = zext i8 %685 to i32
  %shr181.i2235 = lshr i32 %conv180.i2234, 4
  %idxprom182.i2236 = zext i32 %shr181.i2235 to i64
  %and187.i2237 = and i32 %conv180.i2234, 15
  %idxprom188.i2238 = zext i32 %and187.i2237 to i64
  %arrayidx189.i2239 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom182.i2236, i64 %idxprom188.i2238
  %686 = load i8, ptr %arrayidx189.i2239, align 1, !tbaa !9
  %687 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %conv194.i2241 = zext i8 %687 to i32
  %shr195.i2242 = lshr i32 %conv194.i2241, 4
  %idxprom196.i2243 = zext i32 %shr195.i2242 to i64
  %and201.i2244 = and i32 %conv194.i2241, 15
  %idxprom202.i2245 = zext i32 %and201.i2244 to i64
  %arrayidx203.i2246 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom196.i2243, i64 %idxprom202.i2245
  %688 = load i8, ptr %arrayidx203.i2246, align 1, !tbaa !9
  %689 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %conv208.i2248 = zext i8 %689 to i32
  %shr209.i2249 = lshr i32 %conv208.i2248, 4
  %idxprom210.i2250 = zext i32 %shr209.i2249 to i64
  %and215.i2251 = and i32 %conv208.i2248, 15
  %idxprom216.i2252 = zext i32 %and215.i2251 to i64
  %arrayidx217.i2253 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom210.i2250, i64 %idxprom216.i2252
  %690 = load i8, ptr %arrayidx217.i2253, align 1, !tbaa !9
  store i8 %673, ptr %arrayidx4, align 4, !tbaa !9
  store i8 %674, ptr %arrayidx17, align 1, !tbaa !9
  store i8 %675, ptr %arrayidx29, align 2, !tbaa !9
  store i8 %672, ptr %arrayidx41, align 1, !tbaa !9
  store i8 %681, ptr %arrayidx7, align 8, !tbaa !9
  store i8 %677, ptr %arrayidx32, align 2, !tbaa !9
  store i8 %682, ptr %arrayidx20, align 1, !tbaa !9
  store i8 %679, ptr %arrayidx44, align 1, !tbaa !9
  store i8 %690, ptr %arrayidx10, align 4, !tbaa !9
  store i8 %688, ptr %arrayidx47, align 1, !tbaa !9
  store i8 %686, ptr %arrayidx35, align 2, !tbaa !9
  store i8 %684, ptr %arrayidx23, align 1, !tbaa !9
  call void @MixColumns(ptr noundef nonnull %state)
  %arrayidx115 = getelementptr inbounds i32, ptr %key, i64 52
  %691 = load i8, ptr %state, align 16, !tbaa !9
  %692 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %693 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %694 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %695 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %696 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %697 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %698 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %699 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %700 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %701 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %702 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %703 = load <4 x i32>, ptr %arrayidx115, align 4, !tbaa !32
  %704 = extractelement <4 x i32> %703, i64 0
  %shr.i2266 = lshr i32 %704, 24
  %shr3.i2267 = lshr i32 %704, 16
  %shr7.i2268 = lshr i32 %704, 8
  %705 = trunc i32 %shr.i2266 to i8
  %conv18.i2269 = xor i8 %691, %705
  %706 = trunc i32 %shr3.i2267 to i8
  %conv25.i2271 = xor i8 %692, %706
  store i8 %conv25.i2271, ptr %arrayidx4, align 4, !tbaa !9
  %707 = trunc i32 %shr7.i2268 to i8
  %conv32.i2273 = xor i8 %693, %707
  store i8 %conv32.i2273, ptr %arrayidx7, align 8, !tbaa !9
  %708 = extractelement <4 x i32> %703, i64 1
  %shr41.i2277 = lshr i32 %708, 24
  %shr45.i2278 = lshr i32 %708, 16
  %shr49.i2279 = lshr i32 %708, 8
  %709 = trunc i32 %shr41.i2277 to i8
  %conv61.i2281 = xor i8 %694, %709
  %710 = trunc i32 %shr45.i2278 to i8
  %conv68.i2283 = xor i8 %695, %710
  %711 = trunc i32 %shr49.i2279 to i8
  %conv75.i2285 = xor i8 %696, %711
  store i8 %conv75.i2285, ptr %arrayidx20, align 1, !tbaa !9
  %712 = extractelement <4 x i32> %703, i64 2
  %shr84.i2289 = lshr i32 %712, 24
  %shr88.i2290 = lshr i32 %712, 16
  %shr92.i2291 = lshr i32 %712, 8
  %713 = trunc i32 %shr84.i2289 to i8
  %conv104.i2293 = xor i8 %697, %713
  %714 = trunc i32 %shr88.i2290 to i8
  %conv111.i2295 = xor i8 %698, %714
  %715 = trunc i32 %shr92.i2291 to i8
  %conv118.i2297 = xor i8 %699, %715
  store i8 %conv118.i2297, ptr %arrayidx32, align 2, !tbaa !9
  %716 = extractelement <4 x i32> %703, i64 3
  %shr127.i2301 = lshr i32 %716, 24
  %shr131.i2302 = lshr i32 %716, 16
  %shr135.i2303 = lshr i32 %716, 8
  %717 = trunc i32 %shr127.i2301 to i8
  %conv147.i2305 = xor i8 %700, %717
  %718 = trunc i32 %shr131.i2302 to i8
  %conv154.i2307 = xor i8 %701, %718
  %719 = trunc i32 %shr135.i2303 to i8
  %conv161.i2309 = xor i8 %702, %719
  %720 = load <4 x i8>, ptr %arrayidx10, align 4, !tbaa !9
  %721 = trunc <4 x i32> %703 to <4 x i8>
  %722 = xor <4 x i8> %720, %721
  store <4 x i8> %722, ptr %arrayidx10, align 4, !tbaa !9
  %conv.i2312 = zext i8 %conv18.i2269 to i32
  %shr.i2313 = lshr i32 %conv.i2312, 4
  %idxprom.i2314 = zext i32 %shr.i2313 to i64
  %and.i2315 = and i32 %conv.i2312, 15
  %idxprom6.i2316 = zext i32 %and.i2315 to i64
  %arrayidx7.i2317 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom.i2314, i64 %idxprom6.i2316
  %723 = load i8, ptr %arrayidx7.i2317, align 1, !tbaa !9
  store i8 %723, ptr %state, align 16, !tbaa !9
  %conv12.i2319 = zext i8 %conv61.i2281 to i32
  %shr13.i2320 = lshr i32 %conv12.i2319, 4
  %idxprom14.i2321 = zext i32 %shr13.i2320 to i64
  %and19.i2322 = and i32 %conv12.i2319, 15
  %idxprom20.i2323 = zext i32 %and19.i2322 to i64
  %arrayidx21.i2324 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom14.i2321, i64 %idxprom20.i2323
  %724 = load i8, ptr %arrayidx21.i2324, align 1, !tbaa !9
  store i8 %724, ptr %arrayidx14, align 1, !tbaa !9
  %conv26.i2326 = zext i8 %conv104.i2293 to i32
  %shr27.i2327 = lshr i32 %conv26.i2326, 4
  %idxprom28.i2328 = zext i32 %shr27.i2327 to i64
  %and33.i2329 = and i32 %conv26.i2326, 15
  %idxprom34.i2330 = zext i32 %and33.i2329 to i64
  %arrayidx35.i2331 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom28.i2328, i64 %idxprom34.i2330
  %725 = load i8, ptr %arrayidx35.i2331, align 1, !tbaa !9
  store i8 %725, ptr %arrayidx26, align 2, !tbaa !9
  %conv40.i2333 = zext i8 %conv147.i2305 to i32
  %shr41.i2334 = lshr i32 %conv40.i2333, 4
  %idxprom42.i2335 = zext i32 %shr41.i2334 to i64
  %and47.i2336 = and i32 %conv40.i2333, 15
  %idxprom48.i2337 = zext i32 %and47.i2336 to i64
  %arrayidx49.i2338 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom42.i2335, i64 %idxprom48.i2337
  %726 = load i8, ptr %arrayidx49.i2338, align 1, !tbaa !9
  store i8 %726, ptr %arrayidx38, align 1, !tbaa !9
  %727 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %conv54.i2340 = zext i8 %727 to i32
  %shr55.i2341 = lshr i32 %conv54.i2340, 4
  %idxprom56.i2342 = zext i32 %shr55.i2341 to i64
  %and61.i2343 = and i32 %conv54.i2340, 15
  %idxprom62.i2344 = zext i32 %and61.i2343 to i64
  %arrayidx63.i2345 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom56.i2342, i64 %idxprom62.i2344
  %728 = load i8, ptr %arrayidx63.i2345, align 1, !tbaa !9
  %conv68.i2347 = zext i8 %conv68.i2283 to i32
  %shr69.i2348 = lshr i32 %conv68.i2347, 4
  %idxprom70.i2349 = zext i32 %shr69.i2348 to i64
  %and75.i2350 = and i32 %conv68.i2347, 15
  %idxprom76.i2351 = zext i32 %and75.i2350 to i64
  %arrayidx77.i2352 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom70.i2349, i64 %idxprom76.i2351
  %729 = load i8, ptr %arrayidx77.i2352, align 1, !tbaa !9
  %conv82.i2354 = zext i8 %conv111.i2295 to i32
  %shr83.i2355 = lshr i32 %conv82.i2354, 4
  %idxprom84.i2356 = zext i32 %shr83.i2355 to i64
  %and89.i2357 = and i32 %conv82.i2354, 15
  %idxprom90.i2358 = zext i32 %and89.i2357 to i64
  %arrayidx91.i2359 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom84.i2356, i64 %idxprom90.i2358
  %730 = load i8, ptr %arrayidx91.i2359, align 1, !tbaa !9
  %conv96.i2361 = zext i8 %conv154.i2307 to i32
  %shr97.i2362 = lshr i32 %conv96.i2361, 4
  %idxprom98.i2363 = zext i32 %shr97.i2362 to i64
  %and103.i2364 = and i32 %conv96.i2361, 15
  %idxprom104.i2365 = zext i32 %and103.i2364 to i64
  %arrayidx105.i2366 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom98.i2363, i64 %idxprom104.i2365
  %731 = load i8, ptr %arrayidx105.i2366, align 1, !tbaa !9
  %732 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %conv110.i2368 = zext i8 %732 to i32
  %shr111.i2369 = lshr i32 %conv110.i2368, 4
  %idxprom112.i2370 = zext i32 %shr111.i2369 to i64
  %and117.i2371 = and i32 %conv110.i2368, 15
  %idxprom118.i2372 = zext i32 %and117.i2371 to i64
  %arrayidx119.i2373 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom112.i2370, i64 %idxprom118.i2372
  %733 = load i8, ptr %arrayidx119.i2373, align 1, !tbaa !9
  %734 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %conv124.i2375 = zext i8 %734 to i32
  %shr125.i2376 = lshr i32 %conv124.i2375, 4
  %idxprom126.i2377 = zext i32 %shr125.i2376 to i64
  %and131.i2378 = and i32 %conv124.i2375, 15
  %idxprom132.i2379 = zext i32 %and131.i2378 to i64
  %arrayidx133.i2380 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom126.i2377, i64 %idxprom132.i2379
  %735 = load i8, ptr %arrayidx133.i2380, align 1, !tbaa !9
  %736 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %conv138.i2382 = zext i8 %736 to i32
  %shr139.i2383 = lshr i32 %conv138.i2382, 4
  %idxprom140.i2384 = zext i32 %shr139.i2383 to i64
  %and145.i2385 = and i32 %conv138.i2382, 15
  %idxprom146.i2386 = zext i32 %and145.i2385 to i64
  %arrayidx147.i2387 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom140.i2384, i64 %idxprom146.i2386
  %737 = load i8, ptr %arrayidx147.i2387, align 1, !tbaa !9
  %conv152.i2389 = zext i8 %conv161.i2309 to i32
  %shr153.i2390 = lshr i32 %conv152.i2389, 4
  %idxprom154.i2391 = zext i32 %shr153.i2390 to i64
  %and159.i2392 = and i32 %conv152.i2389, 15
  %idxprom160.i2393 = zext i32 %and159.i2392 to i64
  %arrayidx161.i2394 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom154.i2391, i64 %idxprom160.i2393
  %738 = load i8, ptr %arrayidx161.i2394, align 1, !tbaa !9
  %739 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %conv166.i2396 = zext i8 %739 to i32
  %shr167.i2397 = lshr i32 %conv166.i2396, 4
  %idxprom168.i2398 = zext i32 %shr167.i2397 to i64
  %and173.i2399 = and i32 %conv166.i2396, 15
  %idxprom174.i2400 = zext i32 %and173.i2399 to i64
  %arrayidx175.i2401 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom168.i2398, i64 %idxprom174.i2400
  %740 = load i8, ptr %arrayidx175.i2401, align 1, !tbaa !9
  %741 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %conv180.i2403 = zext i8 %741 to i32
  %shr181.i2404 = lshr i32 %conv180.i2403, 4
  %idxprom182.i2405 = zext i32 %shr181.i2404 to i64
  %and187.i2406 = and i32 %conv180.i2403, 15
  %idxprom188.i2407 = zext i32 %and187.i2406 to i64
  %arrayidx189.i2408 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom182.i2405, i64 %idxprom188.i2407
  %742 = load i8, ptr %arrayidx189.i2408, align 1, !tbaa !9
  %743 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %conv194.i2410 = zext i8 %743 to i32
  %shr195.i2411 = lshr i32 %conv194.i2410, 4
  %idxprom196.i2412 = zext i32 %shr195.i2411 to i64
  %and201.i2413 = and i32 %conv194.i2410, 15
  %idxprom202.i2414 = zext i32 %and201.i2413 to i64
  %arrayidx203.i2415 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom196.i2412, i64 %idxprom202.i2414
  %744 = load i8, ptr %arrayidx203.i2415, align 1, !tbaa !9
  %745 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %conv208.i2417 = zext i8 %745 to i32
  %shr209.i2418 = lshr i32 %conv208.i2417, 4
  %idxprom210.i2419 = zext i32 %shr209.i2418 to i64
  %and215.i2420 = and i32 %conv208.i2417, 15
  %idxprom216.i2421 = zext i32 %and215.i2420 to i64
  %arrayidx217.i2422 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom210.i2419, i64 %idxprom216.i2421
  %746 = load i8, ptr %arrayidx217.i2422, align 1, !tbaa !9
  %arrayidx119 = getelementptr inbounds i32, ptr %key, i64 56
  %747 = load i32, ptr %arrayidx119, align 4, !tbaa !32
  %shr.i2435 = lshr i32 %747, 24
  %shr3.i2436 = lshr i32 %747, 16
  %shr7.i2437 = lshr i32 %747, 8
  %748 = load i8, ptr %state, align 16, !tbaa !9
  %749 = trunc i32 %shr.i2435 to i8
  %conv18.i2438 = xor i8 %748, %749
  %750 = trunc i32 %shr3.i2436 to i8
  %conv25.i2440 = xor i8 %729, %750
  %751 = trunc i32 %shr7.i2437 to i8
  %conv32.i2442 = xor i8 %737, %751
  %752 = trunc i32 %747 to i8
  %conv39.i2444 = xor i8 %746, %752
  %arrayidx40.i2445 = getelementptr inbounds i32, ptr %key, i64 57
  %753 = load i32, ptr %arrayidx40.i2445, align 4, !tbaa !32
  %shr41.i2446 = lshr i32 %753, 24
  %shr45.i2447 = lshr i32 %753, 16
  %shr49.i2448 = lshr i32 %753, 8
  %754 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %755 = trunc i32 %shr41.i2446 to i8
  %conv61.i2450 = xor i8 %754, %755
  %756 = trunc i32 %shr45.i2447 to i8
  %conv68.i2452 = xor i8 %730, %756
  %757 = trunc i32 %shr49.i2448 to i8
  %conv75.i2454 = xor i8 %738, %757
  %758 = trunc i32 %753 to i8
  %conv82.i2456 = xor i8 %740, %758
  %arrayidx83.i2457 = getelementptr inbounds i32, ptr %key, i64 58
  %759 = load i32, ptr %arrayidx83.i2457, align 4, !tbaa !32
  %shr84.i2458 = lshr i32 %759, 24
  %shr88.i2459 = lshr i32 %759, 16
  %shr92.i2460 = lshr i32 %759, 8
  %760 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %761 = trunc i32 %shr84.i2458 to i8
  %conv104.i2462 = xor i8 %760, %761
  %762 = trunc i32 %shr88.i2459 to i8
  %conv111.i2464 = xor i8 %731, %762
  %763 = trunc i32 %shr92.i2460 to i8
  %conv118.i2466 = xor i8 %733, %763
  %764 = trunc i32 %759 to i8
  %conv125.i2468 = xor i8 %742, %764
  %arrayidx126.i2469 = getelementptr inbounds i32, ptr %key, i64 59
  %765 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  br label %if.end129

if.else:                                          ; preds = %if.then
  %arrayidx123 = getelementptr inbounds i32, ptr %key, i64 48
  %766 = load i32, ptr %arrayidx123, align 4, !tbaa !32
  %shr.i2604 = lshr i32 %766, 24
  %shr3.i2605 = lshr i32 %766, 16
  %shr7.i2606 = lshr i32 %766, 8
  %767 = load i8, ptr %state, align 16, !tbaa !9
  %768 = trunc i32 %shr.i2604 to i8
  %conv18.i2607 = xor i8 %767, %768
  %769 = trunc i32 %shr3.i2605 to i8
  %conv25.i2609 = xor i8 %621, %769
  %770 = trunc i32 %shr7.i2606 to i8
  %conv32.i2611 = xor i8 %626, %770
  %771 = trunc i32 %766 to i8
  %conv39.i2613 = xor i8 %634, %771
  %arrayidx40.i2614 = getelementptr inbounds i32, ptr %key, i64 49
  %772 = load i32, ptr %arrayidx40.i2614, align 4, !tbaa !32
  %shr41.i2615 = lshr i32 %772, 24
  %shr45.i2616 = lshr i32 %772, 16
  %shr49.i2617 = lshr i32 %772, 8
  %773 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %774 = trunc i32 %shr41.i2615 to i8
  %conv61.i2619 = xor i8 %773, %774
  %775 = trunc i32 %shr45.i2616 to i8
  %conv68.i2621 = xor i8 %622, %775
  %776 = trunc i32 %shr49.i2617 to i8
  %conv75.i2623 = xor i8 %627, %776
  %777 = trunc i32 %772 to i8
  %conv82.i2625 = xor i8 %628, %777
  %arrayidx83.i2626 = getelementptr inbounds i32, ptr %key, i64 50
  %778 = load i32, ptr %arrayidx83.i2626, align 4, !tbaa !32
  %shr84.i2627 = lshr i32 %778, 24
  %shr88.i2628 = lshr i32 %778, 16
  %shr92.i2629 = lshr i32 %778, 8
  %779 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %780 = trunc i32 %shr84.i2627 to i8
  %conv104.i2631 = xor i8 %779, %780
  %781 = trunc i32 %shr88.i2628 to i8
  %conv111.i2633 = xor i8 %623, %781
  %782 = trunc i32 %shr92.i2629 to i8
  %conv118.i2635 = xor i8 %624, %782
  %783 = trunc i32 %778 to i8
  %conv125.i2637 = xor i8 %630, %783
  %arrayidx126.i2638 = getelementptr inbounds i32, ptr %key, i64 51
  %784 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  br label %if.end129

if.else124:                                       ; preds = %entry
  %conv12.i2657 = zext i8 %conv61.i1605 to i32
  %shr13.i2658 = lshr i32 %conv12.i2657, 4
  %idxprom14.i2659 = zext i32 %shr13.i2658 to i64
  %and19.i2660 = and i32 %conv12.i2657, 15
  %idxprom20.i2661 = zext i32 %and19.i2660 to i64
  %arrayidx21.i2662 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom14.i2659, i64 %idxprom20.i2661
  %785 = load i8, ptr %arrayidx21.i2662, align 1, !tbaa !9
  %conv26.i2664 = zext i8 %conv104.i1617 to i32
  %shr27.i2665 = lshr i32 %conv26.i2664, 4
  %idxprom28.i2666 = zext i32 %shr27.i2665 to i64
  %and33.i2667 = and i32 %conv26.i2664, 15
  %idxprom34.i2668 = zext i32 %and33.i2667 to i64
  %arrayidx35.i2669 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom28.i2666, i64 %idxprom34.i2668
  %786 = load i8, ptr %arrayidx35.i2669, align 1, !tbaa !9
  %conv40.i2671 = zext i8 %conv147.i1629 to i32
  %shr41.i2672 = lshr i32 %conv40.i2671, 4
  %idxprom42.i2673 = zext i32 %shr41.i2672 to i64
  %and47.i2674 = and i32 %conv40.i2671, 15
  %idxprom48.i2675 = zext i32 %and47.i2674 to i64
  %arrayidx49.i2676 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom42.i2673, i64 %idxprom48.i2675
  %787 = load i8, ptr %arrayidx49.i2676, align 1, !tbaa !9
  %conv54.i2678 = zext i8 %conv25.i1595 to i32
  %shr55.i2679 = lshr i32 %conv54.i2678, 4
  %idxprom56.i2680 = zext i32 %shr55.i2679 to i64
  %and61.i2681 = and i32 %conv54.i2678, 15
  %idxprom62.i2682 = zext i32 %and61.i2681 to i64
  %arrayidx63.i2683 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom56.i2680, i64 %idxprom62.i2682
  %788 = load i8, ptr %arrayidx63.i2683, align 1, !tbaa !9
  %conv68.i2685 = zext i8 %conv68.i1607 to i32
  %shr69.i2686 = lshr i32 %conv68.i2685, 4
  %idxprom70.i2687 = zext i32 %shr69.i2686 to i64
  %and75.i2688 = and i32 %conv68.i2685, 15
  %idxprom76.i2689 = zext i32 %and75.i2688 to i64
  %arrayidx77.i2690 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom70.i2687, i64 %idxprom76.i2689
  %789 = load i8, ptr %arrayidx77.i2690, align 1, !tbaa !9
  %conv82.i2692 = zext i8 %conv111.i1619 to i32
  %shr83.i2693 = lshr i32 %conv82.i2692, 4
  %idxprom84.i2694 = zext i32 %shr83.i2693 to i64
  %and89.i2695 = and i32 %conv82.i2692, 15
  %idxprom90.i2696 = zext i32 %and89.i2695 to i64
  %arrayidx91.i2697 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom84.i2694, i64 %idxprom90.i2696
  %790 = load i8, ptr %arrayidx91.i2697, align 1, !tbaa !9
  %conv96.i2699 = zext i8 %conv154.i1631 to i32
  %shr97.i2700 = lshr i32 %conv96.i2699, 4
  %idxprom98.i2701 = zext i32 %shr97.i2700 to i64
  %and103.i2702 = and i32 %conv96.i2699, 15
  %idxprom104.i2703 = zext i32 %and103.i2702 to i64
  %arrayidx105.i2704 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom98.i2701, i64 %idxprom104.i2703
  %791 = load i8, ptr %arrayidx105.i2704, align 1, !tbaa !9
  %conv110.i2706 = zext i8 %conv32.i1597 to i32
  %shr111.i2707 = lshr i32 %conv110.i2706, 4
  %idxprom112.i2708 = zext i32 %shr111.i2707 to i64
  %and117.i2709 = and i32 %conv110.i2706, 15
  %idxprom118.i2710 = zext i32 %and117.i2709 to i64
  %arrayidx119.i2711 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom112.i2708, i64 %idxprom118.i2710
  %792 = load i8, ptr %arrayidx119.i2711, align 1, !tbaa !9
  %conv124.i2713 = zext i8 %conv75.i1609 to i32
  %shr125.i2714 = lshr i32 %conv124.i2713, 4
  %idxprom126.i2715 = zext i32 %shr125.i2714 to i64
  %and131.i2716 = and i32 %conv124.i2713, 15
  %idxprom132.i2717 = zext i32 %and131.i2716 to i64
  %arrayidx133.i2718 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom126.i2715, i64 %idxprom132.i2717
  %793 = load i8, ptr %arrayidx133.i2718, align 1, !tbaa !9
  %conv138.i2720 = zext i8 %conv118.i1621 to i32
  %shr139.i2721 = lshr i32 %conv138.i2720, 4
  %idxprom140.i2722 = zext i32 %shr139.i2721 to i64
  %and145.i2723 = and i32 %conv138.i2720, 15
  %idxprom146.i2724 = zext i32 %and145.i2723 to i64
  %arrayidx147.i2725 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom140.i2722, i64 %idxprom146.i2724
  %794 = load i8, ptr %arrayidx147.i2725, align 1, !tbaa !9
  %conv152.i2727 = zext i8 %conv161.i1633 to i32
  %shr153.i2728 = lshr i32 %conv152.i2727, 4
  %idxprom154.i2729 = zext i32 %shr153.i2728 to i64
  %and159.i2730 = and i32 %conv152.i2727, 15
  %idxprom160.i2731 = zext i32 %and159.i2730 to i64
  %arrayidx161.i2732 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom154.i2729, i64 %idxprom160.i2731
  %795 = load i8, ptr %arrayidx161.i2732, align 1, !tbaa !9
  %conv166.i2734 = zext i8 %conv39.i1599 to i32
  %shr167.i2735 = lshr i32 %conv166.i2734, 4
  %idxprom168.i2736 = zext i32 %shr167.i2735 to i64
  %and173.i2737 = and i32 %conv166.i2734, 15
  %idxprom174.i2738 = zext i32 %and173.i2737 to i64
  %arrayidx175.i2739 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom168.i2736, i64 %idxprom174.i2738
  %796 = load i8, ptr %arrayidx175.i2739, align 1, !tbaa !9
  %conv180.i2741 = zext i8 %conv82.i1611 to i32
  %shr181.i2742 = lshr i32 %conv180.i2741, 4
  %idxprom182.i2743 = zext i32 %shr181.i2742 to i64
  %and187.i2744 = and i32 %conv180.i2741, 15
  %idxprom188.i2745 = zext i32 %and187.i2744 to i64
  %arrayidx189.i2746 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom182.i2743, i64 %idxprom188.i2745
  %797 = load i8, ptr %arrayidx189.i2746, align 1, !tbaa !9
  %conv194.i2748 = zext i8 %conv125.i1623 to i32
  %shr195.i2749 = lshr i32 %conv194.i2748, 4
  %idxprom196.i2750 = zext i32 %shr195.i2749 to i64
  %and201.i2751 = and i32 %conv194.i2748, 15
  %idxprom202.i2752 = zext i32 %and201.i2751 to i64
  %arrayidx203.i2753 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom196.i2750, i64 %idxprom202.i2752
  %798 = load i8, ptr %arrayidx203.i2753, align 1, !tbaa !9
  %conv208.i2755 = zext i8 %conv168.i1635 to i32
  %shr209.i2756 = lshr i32 %conv208.i2755, 4
  %idxprom210.i2757 = zext i32 %shr209.i2756 to i64
  %and215.i2758 = and i32 %conv208.i2755, 15
  %idxprom216.i2759 = zext i32 %and215.i2758 to i64
  %arrayidx217.i2760 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom210.i2757, i64 %idxprom216.i2759
  %799 = load i8, ptr %arrayidx217.i2760, align 1, !tbaa !9
  %arrayidx128 = getelementptr inbounds i32, ptr %key, i64 40
  %800 = load i32, ptr %arrayidx128, align 4, !tbaa !32
  %shr.i2773 = lshr i32 %800, 24
  %shr3.i2774 = lshr i32 %800, 16
  %shr7.i2775 = lshr i32 %800, 8
  %801 = trunc i32 %shr.i2773 to i8
  %conv18.i2776 = xor i8 %504, %801
  %802 = trunc i32 %shr3.i2774 to i8
  %conv25.i2778 = xor i8 %789, %802
  %803 = trunc i32 %shr7.i2775 to i8
  %conv32.i2780 = xor i8 %794, %803
  %804 = trunc i32 %800 to i8
  %conv39.i2782 = xor i8 %799, %804
  %arrayidx40.i2783 = getelementptr inbounds i32, ptr %key, i64 41
  %805 = load i32, ptr %arrayidx40.i2783, align 4, !tbaa !32
  %shr41.i2784 = lshr i32 %805, 24
  %shr45.i2785 = lshr i32 %805, 16
  %shr49.i2786 = lshr i32 %805, 8
  %806 = trunc i32 %shr41.i2784 to i8
  %conv61.i2788 = xor i8 %785, %806
  %807 = trunc i32 %shr45.i2785 to i8
  %conv68.i2790 = xor i8 %790, %807
  %808 = trunc i32 %shr49.i2786 to i8
  %conv75.i2792 = xor i8 %795, %808
  %809 = trunc i32 %805 to i8
  %conv82.i2794 = xor i8 %796, %809
  %arrayidx83.i2795 = getelementptr inbounds i32, ptr %key, i64 42
  %810 = load i32, ptr %arrayidx83.i2795, align 4, !tbaa !32
  %shr84.i2796 = lshr i32 %810, 24
  %shr88.i2797 = lshr i32 %810, 16
  %shr92.i2798 = lshr i32 %810, 8
  %811 = trunc i32 %shr84.i2796 to i8
  %conv104.i2800 = xor i8 %786, %811
  %812 = trunc i32 %shr88.i2797 to i8
  %conv111.i2802 = xor i8 %791, %812
  %813 = trunc i32 %shr92.i2798 to i8
  %conv118.i2804 = xor i8 %792, %813
  %814 = trunc i32 %810 to i8
  %conv125.i2806 = xor i8 %797, %814
  %arrayidx126.i2807 = getelementptr inbounds i32, ptr %key, i64 43
  br label %if.end129

if.end129:                                        ; preds = %if.else124, %if.else, %if.then105
  %.sink2825 = phi i8 [ %765, %if.then105 ], [ %784, %if.else ], [ %787, %if.else124 ]
  %.sink2823 = phi i8 [ %728, %if.then105 ], [ %620, %if.else ], [ %788, %if.else124 ]
  %.sink2821 = phi i8 [ %735, %if.then105 ], [ %625, %if.else ], [ %793, %if.else124 ]
  %.sink2820.in = phi ptr [ %arrayidx126.i2469, %if.then105 ], [ %arrayidx126.i2638, %if.else ], [ %arrayidx126.i2807, %if.else124 ]
  %.sink = phi i8 [ %744, %if.then105 ], [ %632, %if.else ], [ %798, %if.else124 ]
  %815 = phi i8 [ %conv125.i2468, %if.then105 ], [ %conv125.i2637, %if.else ], [ %conv125.i2806, %if.else124 ]
  %816 = phi i8 [ %conv118.i2466, %if.then105 ], [ %conv118.i2635, %if.else ], [ %conv118.i2804, %if.else124 ]
  %817 = phi i8 [ %conv111.i2464, %if.then105 ], [ %conv111.i2633, %if.else ], [ %conv111.i2802, %if.else124 ]
  %818 = phi i8 [ %conv104.i2462, %if.then105 ], [ %conv104.i2631, %if.else ], [ %conv104.i2800, %if.else124 ]
  %819 = phi i8 [ %conv82.i2456, %if.then105 ], [ %conv82.i2625, %if.else ], [ %conv82.i2794, %if.else124 ]
  %820 = phi i8 [ %conv75.i2454, %if.then105 ], [ %conv75.i2623, %if.else ], [ %conv75.i2792, %if.else124 ]
  %821 = phi i8 [ %conv68.i2452, %if.then105 ], [ %conv68.i2621, %if.else ], [ %conv68.i2790, %if.else124 ]
  %822 = phi i8 [ %conv61.i2450, %if.then105 ], [ %conv61.i2619, %if.else ], [ %conv61.i2788, %if.else124 ]
  %823 = phi i8 [ %conv39.i2444, %if.then105 ], [ %conv39.i2613, %if.else ], [ %conv39.i2782, %if.else124 ]
  %824 = phi i8 [ %conv32.i2442, %if.then105 ], [ %conv32.i2611, %if.else ], [ %conv32.i2780, %if.else124 ]
  %825 = phi i8 [ %conv25.i2440, %if.then105 ], [ %conv25.i2609, %if.else ], [ %conv25.i2778, %if.else124 ]
  %826 = phi i8 [ %conv18.i2438, %if.then105 ], [ %conv18.i2607, %if.else ], [ %conv18.i2776, %if.else124 ]
  %.sink2820 = load i32, ptr %.sink2820.in, align 4, !tbaa !32
  %shr135.i2472.sink = lshr i32 %.sink2820, 8
  %shr131.i2471.sink = lshr i32 %.sink2820, 16
  %shr127.i2470.sink = lshr i32 %.sink2820, 24
  %827 = trunc i32 %shr127.i2470.sink to i8
  %conv147.i2474 = xor i8 %.sink2825, %827
  %828 = trunc i32 %shr131.i2471.sink to i8
  %conv154.i2476 = xor i8 %.sink2823, %828
  %829 = trunc i32 %shr135.i2472.sink to i8
  %conv161.i2478 = xor i8 %.sink2821, %829
  %830 = trunc i32 %.sink2820 to i8
  %conv168.i2480 = xor i8 %.sink, %830
  store i8 %826, ptr %out, align 1, !tbaa !9
  %arrayidx135 = getelementptr inbounds i8, ptr %out, i64 1
  store i8 %825, ptr %arrayidx135, align 1, !tbaa !9
  %arrayidx138 = getelementptr inbounds i8, ptr %out, i64 2
  store i8 %824, ptr %arrayidx138, align 1, !tbaa !9
  %arrayidx141 = getelementptr inbounds i8, ptr %out, i64 3
  store i8 %823, ptr %arrayidx141, align 1, !tbaa !9
  %arrayidx144 = getelementptr inbounds i8, ptr %out, i64 4
  store i8 %822, ptr %arrayidx144, align 1, !tbaa !9
  %arrayidx147 = getelementptr inbounds i8, ptr %out, i64 5
  store i8 %821, ptr %arrayidx147, align 1, !tbaa !9
  %arrayidx150 = getelementptr inbounds i8, ptr %out, i64 6
  store i8 %820, ptr %arrayidx150, align 1, !tbaa !9
  %arrayidx153 = getelementptr inbounds i8, ptr %out, i64 7
  store i8 %819, ptr %arrayidx153, align 1, !tbaa !9
  %arrayidx156 = getelementptr inbounds i8, ptr %out, i64 8
  store i8 %818, ptr %arrayidx156, align 1, !tbaa !9
  %arrayidx159 = getelementptr inbounds i8, ptr %out, i64 9
  store i8 %817, ptr %arrayidx159, align 1, !tbaa !9
  %arrayidx162 = getelementptr inbounds i8, ptr %out, i64 10
  store i8 %816, ptr %arrayidx162, align 1, !tbaa !9
  %arrayidx165 = getelementptr inbounds i8, ptr %out, i64 11
  store i8 %815, ptr %arrayidx165, align 1, !tbaa !9
  %arrayidx168 = getelementptr inbounds i8, ptr %out, i64 12
  store i8 %conv147.i2474, ptr %arrayidx168, align 1, !tbaa !9
  %arrayidx171 = getelementptr inbounds i8, ptr %out, i64 13
  store i8 %conv154.i2476, ptr %arrayidx171, align 1, !tbaa !9
  %arrayidx174 = getelementptr inbounds i8, ptr %out, i64 14
  store i8 %conv161.i2478, ptr %arrayidx174, align 1, !tbaa !9
  %arrayidx177 = getelementptr inbounds i8, ptr %out, i64 15
  store i8 %conv168.i2480, ptr %arrayidx177, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #16
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @aes_encrypt_cbc_mac(ptr nocapture noundef readonly %in, i64 noundef %in_len, ptr nocapture noundef writeonly %out, ptr noundef %key, i32 noundef %keysize, ptr nocapture noundef readonly %iv) local_unnamed_addr #2 {
entry:
  %buf_in = alloca [16 x i8], align 16
  %buf_out = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf_in) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf_out) #16
  %rem = and i64 %in_len, 15
  %cmp.not = icmp eq i64 %rem, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %div18 = lshr i64 %in_len, 4
  %conv = trunc i64 %div18 to i32
  %cmp119 = icmp sgt i32 %conv, 0
  br i1 %cmp119, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end
  %iv_buf.sroa.12.0.iv.sroa_idx = getelementptr inbounds i8, ptr %iv, i64 8
  %0 = load <8 x i8>, ptr %iv_buf.sroa.12.0.iv.sroa_idx, align 1
  %iv_buf.sroa.8.0.iv.sroa_idx = getelementptr inbounds i8, ptr %iv, i64 4
  %1 = load <4 x i8>, ptr %iv_buf.sroa.8.0.iv.sroa_idx, align 1
  %iv_buf.sroa.6.0.iv.sroa_idx = getelementptr inbounds i8, ptr %iv, i64 2
  %2 = load <2 x i8>, ptr %iv_buf.sroa.6.0.iv.sroa_idx, align 1
  %iv_buf.sroa.5.0.iv.sroa_idx = getelementptr inbounds i8, ptr %iv, i64 1
  %iv_buf.sroa.5.0.copyload = load i8, ptr %iv_buf.sroa.5.0.iv.sroa_idx, align 1
  %wide.trip.count = and i64 %div18, 4294967295
  %iv_buf.sroa.5.0.buf_out.sroa_idx = getelementptr inbounds i8, ptr %buf_out, i64 1
  %iv_buf.sroa.6.0.buf_out.sroa_idx = getelementptr inbounds i8, ptr %buf_out, i64 2
  %iv_buf.sroa.8.0.buf_out.sroa_idx = getelementptr inbounds i8, ptr %buf_out, i64 4
  %iv_buf.sroa.12.0.buf_out.sroa_idx = getelementptr inbounds i8, ptr %buf_out, i64 8
  %iv_buf.sroa.0.0.peel = load i8, ptr %iv, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %buf_in, ptr noundef nonnull align 1 dereferenceable(16) %in, i64 16, i1 false)
  %3 = load <16 x i8>, ptr %buf_in, align 16, !tbaa !9
  %4 = insertelement <16 x i8> poison, i8 %iv_buf.sroa.0.0.peel, i64 0
  %5 = insertelement <16 x i8> %4, i8 %iv_buf.sroa.5.0.copyload, i64 1
  %6 = shufflevector <2 x i8> %2, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %7 = shufflevector <16 x i8> %5, <16 x i8> %6, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %8 = shufflevector <4 x i8> %1, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %9 = shufflevector <16 x i8> %7, <16 x i8> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %10 = shufflevector <8 x i8> %0, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %11 = shufflevector <16 x i8> %9, <16 x i8> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %12 = xor <16 x i8> %3, %11
  store <16 x i8> %12, ptr %buf_in, align 16, !tbaa !9
  call void @aes_encrypt(ptr noundef nonnull %buf_in, ptr noundef nonnull %buf_out, ptr noundef %key, i32 noundef %keysize)
  %iv_buf.sroa.5.0.copyload24.peel = load i8, ptr %iv_buf.sroa.5.0.buf_out.sroa_idx, align 1
  %13 = load <2 x i8>, ptr %iv_buf.sroa.6.0.buf_out.sroa_idx, align 2
  %14 = load <4 x i8>, ptr %iv_buf.sroa.8.0.buf_out.sroa_idx, align 4
  %15 = load <8 x i8>, ptr %iv_buf.sroa.12.0.buf_out.sroa_idx, align 8
  %exitcond.not.peel = icmp eq i64 %wide.trip.count, 1
  br i1 %exitcond.not.peel, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %iv_buf.sroa.5.0 = phi i8 [ %iv_buf.sroa.5.0.copyload24, %for.body ], [ %iv_buf.sroa.5.0.copyload24.peel, %for.body.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %for.body.preheader ]
  %16 = phi <8 x i8> [ %32, %for.body ], [ %15, %for.body.preheader ]
  %17 = phi <4 x i8> [ %31, %for.body ], [ %14, %for.body.preheader ]
  %18 = phi <2 x i8> [ %30, %for.body ], [ %13, %for.body.preheader ]
  %iv_buf.sroa.0.0 = load i8, ptr %buf_out, align 16
  %19 = shl nsw i64 %indvars.iv, 4
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %buf_in, ptr noundef nonnull align 1 dereferenceable(16) %arrayidx, i64 16, i1 false)
  %20 = load <16 x i8>, ptr %buf_in, align 16, !tbaa !9
  %21 = insertelement <16 x i8> poison, i8 %iv_buf.sroa.0.0, i64 0
  %22 = insertelement <16 x i8> %21, i8 %iv_buf.sroa.5.0, i64 1
  %23 = shufflevector <2 x i8> %18, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %24 = shufflevector <16 x i8> %22, <16 x i8> %23, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %25 = shufflevector <4 x i8> %17, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %26 = shufflevector <16 x i8> %24, <16 x i8> %25, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %27 = shufflevector <8 x i8> %16, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %28 = shufflevector <16 x i8> %26, <16 x i8> %27, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %29 = xor <16 x i8> %20, %28
  store <16 x i8> %29, ptr %buf_in, align 16, !tbaa !9
  call void @aes_encrypt(ptr noundef nonnull %buf_in, ptr noundef nonnull %buf_out, ptr noundef %key, i32 noundef %keysize)
  %iv_buf.sroa.5.0.copyload24 = load i8, ptr %iv_buf.sroa.5.0.buf_out.sroa_idx, align 1
  %30 = load <2 x i8>, ptr %iv_buf.sroa.6.0.buf_out.sroa_idx, align 2
  %31 = load <4 x i8>, ptr %iv_buf.sroa.8.0.buf_out.sroa_idx, align 4
  %32 = load <8 x i8>, ptr %iv_buf.sroa.12.0.buf_out.sroa_idx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !34

for.end:                                          ; preds = %for.body, %for.body.preheader, %if.end
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %out, ptr noundef nonnull align 16 dereferenceable(16) %buf_out, i64 16, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf_out) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf_in) #16
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @aes_decrypt_cbc(ptr nocapture noundef readonly %in, i64 noundef %in_len, ptr nocapture noundef writeonly %out, ptr noundef %key, i32 noundef %keysize, ptr nocapture noundef readonly %iv) local_unnamed_addr #2 {
entry:
  %buf_in = alloca [16 x i8], align 16
  %buf_out = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf_in) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf_out) #16
  %rem = and i64 %in_len, 15
  %cmp.not = icmp eq i64 %rem, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %div22 = lshr i64 %in_len, 4
  %conv = trunc i64 %div22 to i32
  %cmp123 = icmp sgt i32 %conv, 0
  br i1 %cmp123, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %if.end
  %iv_buf.sroa.12.0.iv.sroa_idx = getelementptr inbounds i8, ptr %iv, i64 8
  %0 = load <8 x i8>, ptr %iv_buf.sroa.12.0.iv.sroa_idx, align 1
  %iv_buf.sroa.8.0.iv.sroa_idx = getelementptr inbounds i8, ptr %iv, i64 4
  %1 = load <4 x i8>, ptr %iv_buf.sroa.8.0.iv.sroa_idx, align 1
  %iv_buf.sroa.6.0.iv.sroa_idx = getelementptr inbounds i8, ptr %iv, i64 2
  %2 = load <2 x i8>, ptr %iv_buf.sroa.6.0.iv.sroa_idx, align 1
  %iv_buf.sroa.5.0.iv.sroa_idx = getelementptr inbounds i8, ptr %iv, i64 1
  %iv_buf.sroa.5.0.copyload = load i8, ptr %iv_buf.sroa.5.0.iv.sroa_idx, align 1
  %wide.trip.count = and i64 %div22, 4294967295
  %iv_buf.sroa.5.0.buf_in.sroa_idx = getelementptr inbounds i8, ptr %buf_in, i64 1
  %iv_buf.sroa.6.0.buf_in.sroa_idx = getelementptr inbounds i8, ptr %buf_in, i64 2
  %iv_buf.sroa.8.0.buf_in.sroa_idx = getelementptr inbounds i8, ptr %buf_in, i64 4
  %iv_buf.sroa.12.0.buf_in.sroa_idx = getelementptr inbounds i8, ptr %buf_in, i64 8
  %iv_buf.sroa.0.0.peel = load i8, ptr %iv, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %buf_in, ptr noundef nonnull align 1 dereferenceable(16) %in, i64 16, i1 false)
  call void @aes_decrypt(ptr noundef nonnull %buf_in, ptr noundef nonnull %buf_out, ptr noundef %key, i32 noundef %keysize)
  %3 = load <16 x i8>, ptr %buf_out, align 16, !tbaa !9
  %4 = insertelement <16 x i8> poison, i8 %iv_buf.sroa.0.0.peel, i64 0
  %5 = insertelement <16 x i8> %4, i8 %iv_buf.sroa.5.0.copyload, i64 1
  %6 = shufflevector <2 x i8> %2, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %7 = shufflevector <16 x i8> %5, <16 x i8> %6, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %8 = shufflevector <4 x i8> %1, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %9 = shufflevector <16 x i8> %7, <16 x i8> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %10 = shufflevector <8 x i8> %0, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %11 = shufflevector <16 x i8> %9, <16 x i8> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %12 = xor <16 x i8> %3, %11
  store <16 x i8> %12, ptr %buf_out, align 16, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %out, ptr noundef nonnull align 16 dereferenceable(16) %buf_out, i64 16, i1 false)
  %iv_buf.sroa.5.0.copyload28.peel = load i8, ptr %iv_buf.sroa.5.0.buf_in.sroa_idx, align 1
  %13 = load <2 x i8>, ptr %iv_buf.sroa.6.0.buf_in.sroa_idx, align 2
  %14 = load <4 x i8>, ptr %iv_buf.sroa.8.0.buf_in.sroa_idx, align 4
  %15 = load <8 x i8>, ptr %iv_buf.sroa.12.0.buf_in.sroa_idx, align 8
  %exitcond.not.peel = icmp eq i64 %wide.trip.count, 1
  br i1 %exitcond.not.peel, label %cleanup, label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %iv_buf.sroa.5.0 = phi i8 [ %iv_buf.sroa.5.0.copyload28, %for.body ], [ %iv_buf.sroa.5.0.copyload28.peel, %for.body.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %for.body.preheader ]
  %16 = phi <8 x i8> [ %32, %for.body ], [ %15, %for.body.preheader ]
  %17 = phi <4 x i8> [ %31, %for.body ], [ %14, %for.body.preheader ]
  %18 = phi <2 x i8> [ %30, %for.body ], [ %13, %for.body.preheader ]
  %iv_buf.sroa.0.0 = load i8, ptr %buf_in, align 16
  %19 = shl nsw i64 %indvars.iv, 4
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %buf_in, ptr noundef nonnull align 1 dereferenceable(16) %arrayidx, i64 16, i1 false)
  call void @aes_decrypt(ptr noundef nonnull %buf_in, ptr noundef nonnull %buf_out, ptr noundef %key, i32 noundef %keysize)
  %20 = load <16 x i8>, ptr %buf_out, align 16, !tbaa !9
  %21 = insertelement <16 x i8> poison, i8 %iv_buf.sroa.0.0, i64 0
  %22 = insertelement <16 x i8> %21, i8 %iv_buf.sroa.5.0, i64 1
  %23 = shufflevector <2 x i8> %18, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %24 = shufflevector <16 x i8> %22, <16 x i8> %23, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %25 = shufflevector <4 x i8> %17, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %26 = shufflevector <16 x i8> %24, <16 x i8> %25, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %27 = shufflevector <8 x i8> %16, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %28 = shufflevector <16 x i8> %26, <16 x i8> %27, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %29 = xor <16 x i8> %20, %28
  store <16 x i8> %29, ptr %buf_out, align 16, !tbaa !9
  %arrayidx10 = getelementptr inbounds i8, ptr %out, i64 %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %arrayidx10, ptr noundef nonnull align 16 dereferenceable(16) %buf_out, i64 16, i1 false)
  %iv_buf.sroa.5.0.copyload28 = load i8, ptr %iv_buf.sroa.5.0.buf_in.sroa_idx, align 1
  %30 = load <2 x i8>, ptr %iv_buf.sroa.6.0.buf_in.sroa_idx, align 2
  %31 = load <4 x i8>, ptr %iv_buf.sroa.8.0.buf_in.sroa_idx, align 4
  %32 = load <8 x i8>, ptr %iv_buf.sroa.12.0.buf_in.sroa_idx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !35

cleanup:                                          ; preds = %for.body, %for.body.preheader, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end ], [ 1, %for.body ], [ 1, %for.body.preheader ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf_out) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf_in) #16
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @aes_decrypt(ptr nocapture noundef readonly %in, ptr nocapture noundef writeonly %out, ptr noundef readonly %key, i32 noundef %keysize) local_unnamed_addr #4 {
entry:
  %state = alloca [4 x [4 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #16
  %0 = load i8, ptr %in, align 1, !tbaa !9
  %arrayidx3 = getelementptr inbounds i8, ptr %in, i64 1
  %1 = load i8, ptr %arrayidx3, align 1, !tbaa !9
  %arrayidx4 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 1
  %arrayidx6 = getelementptr inbounds i8, ptr %in, i64 2
  %2 = load i8, ptr %arrayidx6, align 1, !tbaa !9
  %arrayidx7 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 2
  %arrayidx9 = getelementptr inbounds i8, ptr %in, i64 3
  %3 = load i8, ptr %arrayidx9, align 1, !tbaa !9
  %arrayidx10 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 3
  %arrayidx12 = getelementptr inbounds i8, ptr %in, i64 4
  %4 = load i8, ptr %arrayidx12, align 1, !tbaa !9
  %arrayidx14 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 1
  %arrayidx15 = getelementptr inbounds i8, ptr %in, i64 5
  %5 = load i8, ptr %arrayidx15, align 1, !tbaa !9
  %arrayidx17 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 1, i64 1
  %arrayidx18 = getelementptr inbounds i8, ptr %in, i64 6
  %6 = load i8, ptr %arrayidx18, align 1, !tbaa !9
  %arrayidx20 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 2, i64 1
  %arrayidx21 = getelementptr inbounds i8, ptr %in, i64 7
  %7 = load i8, ptr %arrayidx21, align 1, !tbaa !9
  %arrayidx23 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 3, i64 1
  %arrayidx24 = getelementptr inbounds i8, ptr %in, i64 8
  %8 = load i8, ptr %arrayidx24, align 1, !tbaa !9
  %arrayidx26 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 2
  %arrayidx27 = getelementptr inbounds i8, ptr %in, i64 9
  %9 = load i8, ptr %arrayidx27, align 1, !tbaa !9
  %arrayidx29 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 1, i64 2
  %arrayidx30 = getelementptr inbounds i8, ptr %in, i64 10
  %10 = load i8, ptr %arrayidx30, align 1, !tbaa !9
  %arrayidx32 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 2, i64 2
  %arrayidx33 = getelementptr inbounds i8, ptr %in, i64 11
  %11 = load i8, ptr %arrayidx33, align 1, !tbaa !9
  %arrayidx35 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 3, i64 2
  %arrayidx36 = getelementptr inbounds i8, ptr %in, i64 12
  %12 = load i8, ptr %arrayidx36, align 1, !tbaa !9
  %arrayidx38 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 3
  %arrayidx39 = getelementptr inbounds i8, ptr %in, i64 13
  %13 = load i8, ptr %arrayidx39, align 1, !tbaa !9
  %arrayidx41 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 1, i64 3
  %arrayidx42 = getelementptr inbounds i8, ptr %in, i64 14
  %14 = load i8, ptr %arrayidx42, align 1, !tbaa !9
  %arrayidx44 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 2, i64 3
  %arrayidx45 = getelementptr inbounds i8, ptr %in, i64 15
  %15 = load i8, ptr %arrayidx45, align 1, !tbaa !9
  %arrayidx47 = getelementptr inbounds [4 x [4 x i8]], ptr %state, i64 0, i64 3, i64 3
  %cmp = icmp sgt i32 %keysize, 128
  br i1 %cmp, label %if.then, label %if.else73

if.then:                                          ; preds = %entry
  %cmp48 = icmp ugt i32 %keysize, 192
  br i1 %cmp48, label %if.then49, label %if.else

if.then49:                                        ; preds = %if.then
  %arrayidx50 = getelementptr inbounds i32, ptr %key, i64 56
  %16 = load i32, ptr %arrayidx50, align 4, !tbaa !32
  %shr.i = lshr i32 %16, 24
  %shr3.i = lshr i32 %16, 16
  %shr7.i = lshr i32 %16, 8
  %17 = trunc i32 %shr.i to i8
  %conv18.i = xor i8 %0, %17
  %18 = trunc i32 %shr3.i to i8
  %conv25.i = xor i8 %1, %18
  %19 = trunc i32 %shr7.i to i8
  %conv32.i = xor i8 %2, %19
  %20 = trunc i32 %16 to i8
  %conv39.i = xor i8 %3, %20
  %arrayidx40.i = getelementptr inbounds i32, ptr %key, i64 57
  %21 = load i32, ptr %arrayidx40.i, align 4, !tbaa !32
  %shr41.i = lshr i32 %21, 24
  %shr45.i = lshr i32 %21, 16
  %shr49.i = lshr i32 %21, 8
  %22 = trunc i32 %shr41.i to i8
  %conv61.i = xor i8 %4, %22
  %23 = trunc i32 %shr45.i to i8
  %conv68.i = xor i8 %5, %23
  %24 = trunc i32 %shr49.i to i8
  %conv75.i = xor i8 %6, %24
  %25 = trunc i32 %21 to i8
  %conv82.i = xor i8 %7, %25
  %arrayidx83.i = getelementptr inbounds i32, ptr %key, i64 58
  %26 = load i32, ptr %arrayidx83.i, align 4, !tbaa !32
  %shr84.i = lshr i32 %26, 24
  %shr88.i = lshr i32 %26, 16
  %shr92.i = lshr i32 %26, 8
  %27 = trunc i32 %shr84.i to i8
  %conv104.i = xor i8 %8, %27
  %28 = trunc i32 %shr88.i to i8
  %conv111.i = xor i8 %9, %28
  %29 = trunc i32 %shr92.i to i8
  %conv118.i = xor i8 %10, %29
  %30 = trunc i32 %26 to i8
  %conv125.i = xor i8 %11, %30
  %arrayidx126.i = getelementptr inbounds i32, ptr %key, i64 59
  %31 = load i32, ptr %arrayidx126.i, align 4, !tbaa !32
  %shr127.i = lshr i32 %31, 24
  %shr131.i = lshr i32 %31, 16
  %shr135.i = lshr i32 %31, 8
  %32 = trunc i32 %shr127.i to i8
  %conv147.i = xor i8 %12, %32
  %33 = trunc i32 %shr131.i to i8
  %conv154.i = xor i8 %13, %33
  %34 = trunc i32 %shr135.i to i8
  %conv161.i = xor i8 %14, %34
  %35 = trunc i32 %31 to i8
  %conv168.i = xor i8 %15, %35
  %conv.i = zext i8 %conv18.i to i32
  %shr.i223 = lshr i32 %conv.i, 4
  %idxprom.i = zext i32 %shr.i223 to i64
  %and.i = and i32 %conv.i, 15
  %idxprom6.i = zext i32 %and.i to i64
  %arrayidx7.i224 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom.i, i64 %idxprom6.i
  %36 = load i8, ptr %arrayidx7.i224, align 1, !tbaa !9
  %conv12.i = zext i8 %conv61.i to i32
  %shr13.i = lshr i32 %conv12.i, 4
  %idxprom14.i = zext i32 %shr13.i to i64
  %and19.i = and i32 %conv12.i, 15
  %idxprom20.i = zext i32 %and19.i to i64
  %arrayidx21.i225 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom14.i, i64 %idxprom20.i
  %37 = load i8, ptr %arrayidx21.i225, align 1, !tbaa !9
  %conv26.i = zext i8 %conv104.i to i32
  %shr27.i = lshr i32 %conv26.i, 4
  %idxprom28.i = zext i32 %shr27.i to i64
  %and33.i = and i32 %conv26.i, 15
  %idxprom34.i = zext i32 %and33.i to i64
  %arrayidx35.i226 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom28.i, i64 %idxprom34.i
  %38 = load i8, ptr %arrayidx35.i226, align 1, !tbaa !9
  %conv40.i = zext i8 %conv147.i to i32
  %shr41.i227 = lshr i32 %conv40.i, 4
  %idxprom42.i = zext i32 %shr41.i227 to i64
  %and47.i = and i32 %conv40.i, 15
  %idxprom48.i = zext i32 %and47.i to i64
  %arrayidx49.i228 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom42.i, i64 %idxprom48.i
  %39 = load i8, ptr %arrayidx49.i228, align 1, !tbaa !9
  %conv54.i = zext i8 %conv154.i to i32
  %shr55.i = lshr i32 %conv54.i, 4
  %idxprom56.i = zext i32 %shr55.i to i64
  %and61.i = and i32 %conv54.i, 15
  %idxprom62.i = zext i32 %and61.i to i64
  %arrayidx63.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom56.i, i64 %idxprom62.i
  %40 = load i8, ptr %arrayidx63.i, align 1, !tbaa !9
  %conv68.i229 = zext i8 %conv25.i to i32
  %shr69.i = lshr i32 %conv68.i229, 4
  %idxprom70.i = zext i32 %shr69.i to i64
  %and75.i = and i32 %conv68.i229, 15
  %idxprom76.i = zext i32 %and75.i to i64
  %arrayidx77.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom70.i, i64 %idxprom76.i
  %41 = load i8, ptr %arrayidx77.i, align 1, !tbaa !9
  %conv82.i230 = zext i8 %conv68.i to i32
  %shr83.i = lshr i32 %conv82.i230, 4
  %idxprom84.i = zext i32 %shr83.i to i64
  %and89.i = and i32 %conv82.i230, 15
  %idxprom90.i = zext i32 %and89.i to i64
  %arrayidx91.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom84.i, i64 %idxprom90.i
  %42 = load i8, ptr %arrayidx91.i, align 1, !tbaa !9
  %conv96.i = zext i8 %conv111.i to i32
  %shr97.i = lshr i32 %conv96.i, 4
  %idxprom98.i = zext i32 %shr97.i to i64
  %and103.i = and i32 %conv96.i, 15
  %idxprom104.i = zext i32 %and103.i to i64
  %arrayidx105.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom98.i, i64 %idxprom104.i
  %43 = load i8, ptr %arrayidx105.i, align 1, !tbaa !9
  %conv110.i = zext i8 %conv118.i to i32
  %shr111.i = lshr i32 %conv110.i, 4
  %idxprom112.i = zext i32 %shr111.i to i64
  %and117.i = and i32 %conv110.i, 15
  %idxprom118.i = zext i32 %and117.i to i64
  %arrayidx119.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom112.i, i64 %idxprom118.i
  %44 = load i8, ptr %arrayidx119.i, align 1, !tbaa !9
  %conv124.i = zext i8 %conv161.i to i32
  %shr125.i = lshr i32 %conv124.i, 4
  %idxprom126.i = zext i32 %shr125.i to i64
  %and131.i = and i32 %conv124.i, 15
  %idxprom132.i = zext i32 %and131.i to i64
  %arrayidx133.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom126.i, i64 %idxprom132.i
  %45 = load i8, ptr %arrayidx133.i, align 1, !tbaa !9
  %conv138.i = zext i8 %conv32.i to i32
  %shr139.i = lshr i32 %conv138.i, 4
  %idxprom140.i = zext i32 %shr139.i to i64
  %and145.i = and i32 %conv138.i, 15
  %idxprom146.i = zext i32 %and145.i to i64
  %arrayidx147.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom140.i, i64 %idxprom146.i
  %46 = load i8, ptr %arrayidx147.i, align 1, !tbaa !9
  %conv152.i = zext i8 %conv75.i to i32
  %shr153.i = lshr i32 %conv152.i, 4
  %idxprom154.i = zext i32 %shr153.i to i64
  %and159.i = and i32 %conv152.i, 15
  %idxprom160.i = zext i32 %and159.i to i64
  %arrayidx161.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom154.i, i64 %idxprom160.i
  %47 = load i8, ptr %arrayidx161.i, align 1, !tbaa !9
  %conv166.i = zext i8 %conv82.i to i32
  %shr167.i = lshr i32 %conv166.i, 4
  %idxprom168.i = zext i32 %shr167.i to i64
  %and173.i = and i32 %conv166.i, 15
  %idxprom174.i = zext i32 %and173.i to i64
  %arrayidx175.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom168.i, i64 %idxprom174.i
  %48 = load i8, ptr %arrayidx175.i, align 1, !tbaa !9
  %conv180.i = zext i8 %conv125.i to i32
  %shr181.i = lshr i32 %conv180.i, 4
  %idxprom182.i = zext i32 %shr181.i to i64
  %and187.i = and i32 %conv180.i, 15
  %idxprom188.i = zext i32 %and187.i to i64
  %arrayidx189.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom182.i, i64 %idxprom188.i
  %49 = load i8, ptr %arrayidx189.i, align 1, !tbaa !9
  %conv194.i = zext i8 %conv168.i to i32
  %shr195.i = lshr i32 %conv194.i, 4
  %idxprom196.i = zext i32 %shr195.i to i64
  %and201.i = and i32 %conv194.i, 15
  %idxprom202.i = zext i32 %and201.i to i64
  %arrayidx203.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom196.i, i64 %idxprom202.i
  %50 = load i8, ptr %arrayidx203.i, align 1, !tbaa !9
  %conv208.i = zext i8 %conv39.i to i32
  %shr209.i = lshr i32 %conv208.i, 4
  %idxprom210.i = zext i32 %shr209.i to i64
  %and215.i = and i32 %conv208.i, 15
  %idxprom216.i = zext i32 %and215.i to i64
  %arrayidx217.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom210.i, i64 %idxprom216.i
  %51 = load i8, ptr %arrayidx217.i, align 1, !tbaa !9
  %arrayidx54 = getelementptr inbounds i32, ptr %key, i64 52
  %52 = load i32, ptr %arrayidx54, align 4, !tbaa !32
  %shr.i233 = lshr i32 %52, 24
  %shr3.i234 = lshr i32 %52, 16
  %shr7.i235 = lshr i32 %52, 8
  %53 = trunc i32 %shr.i233 to i8
  %conv18.i236 = xor i8 %36, %53
  store i8 %conv18.i236, ptr %state, align 16, !tbaa !9
  %54 = trunc i32 %shr3.i234 to i8
  %conv25.i238 = xor i8 %40, %54
  store i8 %conv25.i238, ptr %arrayidx4, align 4, !tbaa !9
  %55 = trunc i32 %shr7.i235 to i8
  %conv32.i240 = xor i8 %44, %55
  store i8 %conv32.i240, ptr %arrayidx7, align 8, !tbaa !9
  %56 = trunc i32 %52 to i8
  %conv39.i242 = xor i8 %48, %56
  store i8 %conv39.i242, ptr %arrayidx10, align 4, !tbaa !9
  %arrayidx40.i243 = getelementptr inbounds i32, ptr %key, i64 53
  %57 = load i32, ptr %arrayidx40.i243, align 4, !tbaa !32
  %shr41.i244 = lshr i32 %57, 24
  %shr45.i245 = lshr i32 %57, 16
  %shr49.i246 = lshr i32 %57, 8
  %58 = trunc i32 %shr41.i244 to i8
  %conv61.i248 = xor i8 %37, %58
  store i8 %conv61.i248, ptr %arrayidx14, align 1, !tbaa !9
  %59 = trunc i32 %shr45.i245 to i8
  %conv68.i250 = xor i8 %41, %59
  store i8 %conv68.i250, ptr %arrayidx17, align 1, !tbaa !9
  %60 = trunc i32 %shr49.i246 to i8
  %conv75.i252 = xor i8 %45, %60
  store i8 %conv75.i252, ptr %arrayidx20, align 1, !tbaa !9
  %61 = trunc i32 %57 to i8
  %conv82.i254 = xor i8 %49, %61
  store i8 %conv82.i254, ptr %arrayidx23, align 1, !tbaa !9
  %arrayidx83.i255 = getelementptr inbounds i32, ptr %key, i64 54
  %62 = load i32, ptr %arrayidx83.i255, align 4, !tbaa !32
  %shr84.i256 = lshr i32 %62, 24
  %shr88.i257 = lshr i32 %62, 16
  %shr92.i258 = lshr i32 %62, 8
  %63 = trunc i32 %shr84.i256 to i8
  %conv104.i260 = xor i8 %38, %63
  store i8 %conv104.i260, ptr %arrayidx26, align 2, !tbaa !9
  %64 = trunc i32 %shr88.i257 to i8
  %conv111.i262 = xor i8 %42, %64
  store i8 %conv111.i262, ptr %arrayidx29, align 2, !tbaa !9
  %65 = trunc i32 %shr92.i258 to i8
  %conv118.i264 = xor i8 %46, %65
  store i8 %conv118.i264, ptr %arrayidx32, align 2, !tbaa !9
  %66 = trunc i32 %62 to i8
  %conv125.i266 = xor i8 %50, %66
  store i8 %conv125.i266, ptr %arrayidx35, align 2, !tbaa !9
  %arrayidx126.i267 = getelementptr inbounds i32, ptr %key, i64 55
  %67 = load i32, ptr %arrayidx126.i267, align 4, !tbaa !32
  %shr127.i268 = lshr i32 %67, 24
  %shr131.i269 = lshr i32 %67, 16
  %shr135.i270 = lshr i32 %67, 8
  %68 = trunc i32 %shr127.i268 to i8
  %conv147.i272 = xor i8 %39, %68
  store i8 %conv147.i272, ptr %arrayidx38, align 1, !tbaa !9
  %69 = trunc i32 %shr131.i269 to i8
  %conv154.i274 = xor i8 %43, %69
  store i8 %conv154.i274, ptr %arrayidx41, align 1, !tbaa !9
  %70 = trunc i32 %shr135.i270 to i8
  %conv161.i276 = xor i8 %47, %70
  store i8 %conv161.i276, ptr %arrayidx44, align 1, !tbaa !9
  %71 = trunc i32 %67 to i8
  %conv168.i278 = xor i8 %51, %71
  store i8 %conv168.i278, ptr %arrayidx47, align 1, !tbaa !9
  call void @InvMixColumns(ptr noundef nonnull %state)
  %72 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %73 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %74 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %75 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %76 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %77 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %78 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %79 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %80 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %81 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %82 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %83 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %84 = load i8, ptr %state, align 16, !tbaa !9
  %conv.i291 = zext i8 %84 to i32
  %shr.i292 = lshr i32 %conv.i291, 4
  %idxprom.i293 = zext i32 %shr.i292 to i64
  %and.i294 = and i32 %conv.i291, 15
  %idxprom6.i295 = zext i32 %and.i294 to i64
  %arrayidx7.i296 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom.i293, i64 %idxprom6.i295
  %85 = load i8, ptr %arrayidx7.i296, align 1, !tbaa !9
  %86 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %conv12.i298 = zext i8 %86 to i32
  %shr13.i299 = lshr i32 %conv12.i298, 4
  %idxprom14.i300 = zext i32 %shr13.i299 to i64
  %and19.i301 = and i32 %conv12.i298, 15
  %idxprom20.i302 = zext i32 %and19.i301 to i64
  %arrayidx21.i303 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom14.i300, i64 %idxprom20.i302
  %87 = load i8, ptr %arrayidx21.i303, align 1, !tbaa !9
  %88 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %conv26.i305 = zext i8 %88 to i32
  %shr27.i306 = lshr i32 %conv26.i305, 4
  %idxprom28.i307 = zext i32 %shr27.i306 to i64
  %and33.i308 = and i32 %conv26.i305, 15
  %idxprom34.i309 = zext i32 %and33.i308 to i64
  %arrayidx35.i310 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom28.i307, i64 %idxprom34.i309
  %89 = load i8, ptr %arrayidx35.i310, align 1, !tbaa !9
  %90 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %conv40.i312 = zext i8 %90 to i32
  %shr41.i313 = lshr i32 %conv40.i312, 4
  %idxprom42.i314 = zext i32 %shr41.i313 to i64
  %and47.i315 = and i32 %conv40.i312, 15
  %idxprom48.i316 = zext i32 %and47.i315 to i64
  %arrayidx49.i317 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom42.i314, i64 %idxprom48.i316
  %91 = load i8, ptr %arrayidx49.i317, align 1, !tbaa !9
  %conv54.i319 = zext i8 %72 to i32
  %shr55.i320 = lshr i32 %conv54.i319, 4
  %idxprom56.i321 = zext i32 %shr55.i320 to i64
  %and61.i322 = and i32 %conv54.i319, 15
  %idxprom62.i323 = zext i32 %and61.i322 to i64
  %arrayidx63.i324 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom56.i321, i64 %idxprom62.i323
  %92 = load i8, ptr %arrayidx63.i324, align 1, !tbaa !9
  %conv68.i326 = zext i8 %75 to i32
  %shr69.i327 = lshr i32 %conv68.i326, 4
  %idxprom70.i328 = zext i32 %shr69.i327 to i64
  %and75.i329 = and i32 %conv68.i326, 15
  %idxprom76.i330 = zext i32 %and75.i329 to i64
  %arrayidx77.i331 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom70.i328, i64 %idxprom76.i330
  %93 = load i8, ptr %arrayidx77.i331, align 1, !tbaa !9
  %conv82.i333 = zext i8 %74 to i32
  %shr83.i334 = lshr i32 %conv82.i333, 4
  %idxprom84.i335 = zext i32 %shr83.i334 to i64
  %and89.i336 = and i32 %conv82.i333, 15
  %idxprom90.i337 = zext i32 %and89.i336 to i64
  %arrayidx91.i338 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom84.i335, i64 %idxprom90.i337
  %94 = load i8, ptr %arrayidx91.i338, align 1, !tbaa !9
  %conv96.i340 = zext i8 %73 to i32
  %shr97.i341 = lshr i32 %conv96.i340, 4
  %idxprom98.i342 = zext i32 %shr97.i341 to i64
  %and103.i343 = and i32 %conv96.i340, 15
  %idxprom104.i344 = zext i32 %and103.i343 to i64
  %arrayidx105.i345 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom98.i342, i64 %idxprom104.i344
  %95 = load i8, ptr %arrayidx105.i345, align 1, !tbaa !9
  %conv110.i347 = zext i8 %78 to i32
  %shr111.i348 = lshr i32 %conv110.i347, 4
  %idxprom112.i349 = zext i32 %shr111.i348 to i64
  %and117.i350 = and i32 %conv110.i347, 15
  %idxprom118.i351 = zext i32 %and117.i350 to i64
  %arrayidx119.i352 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom112.i349, i64 %idxprom118.i351
  %96 = load i8, ptr %arrayidx119.i352, align 1, !tbaa !9
  %conv124.i354 = zext i8 %76 to i32
  %shr125.i355 = lshr i32 %conv124.i354, 4
  %idxprom126.i356 = zext i32 %shr125.i355 to i64
  %and131.i357 = and i32 %conv124.i354, 15
  %idxprom132.i358 = zext i32 %and131.i357 to i64
  %arrayidx133.i359 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom126.i356, i64 %idxprom132.i358
  %97 = load i8, ptr %arrayidx133.i359, align 1, !tbaa !9
  %conv138.i361 = zext i8 %79 to i32
  %shr139.i362 = lshr i32 %conv138.i361, 4
  %idxprom140.i363 = zext i32 %shr139.i362 to i64
  %and145.i364 = and i32 %conv138.i361, 15
  %idxprom146.i365 = zext i32 %and145.i364 to i64
  %arrayidx147.i366 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom140.i363, i64 %idxprom146.i365
  %98 = load i8, ptr %arrayidx147.i366, align 1, !tbaa !9
  %conv152.i368 = zext i8 %77 to i32
  %shr153.i369 = lshr i32 %conv152.i368, 4
  %idxprom154.i370 = zext i32 %shr153.i369 to i64
  %and159.i371 = and i32 %conv152.i368, 15
  %idxprom160.i372 = zext i32 %and159.i371 to i64
  %arrayidx161.i373 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom154.i370, i64 %idxprom160.i372
  %99 = load i8, ptr %arrayidx161.i373, align 1, !tbaa !9
  %conv166.i375 = zext i8 %82 to i32
  %shr167.i376 = lshr i32 %conv166.i375, 4
  %idxprom168.i377 = zext i32 %shr167.i376 to i64
  %and173.i378 = and i32 %conv166.i375, 15
  %idxprom174.i379 = zext i32 %and173.i378 to i64
  %arrayidx175.i380 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom168.i377, i64 %idxprom174.i379
  %100 = load i8, ptr %arrayidx175.i380, align 1, !tbaa !9
  %conv180.i382 = zext i8 %83 to i32
  %shr181.i383 = lshr i32 %conv180.i382, 4
  %idxprom182.i384 = zext i32 %shr181.i383 to i64
  %and187.i385 = and i32 %conv180.i382, 15
  %idxprom188.i386 = zext i32 %and187.i385 to i64
  %arrayidx189.i387 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom182.i384, i64 %idxprom188.i386
  %101 = load i8, ptr %arrayidx189.i387, align 1, !tbaa !9
  %conv194.i389 = zext i8 %80 to i32
  %shr195.i390 = lshr i32 %conv194.i389, 4
  %idxprom196.i391 = zext i32 %shr195.i390 to i64
  %and201.i392 = and i32 %conv194.i389, 15
  %idxprom202.i393 = zext i32 %and201.i392 to i64
  %arrayidx203.i394 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom196.i391, i64 %idxprom202.i393
  %102 = load i8, ptr %arrayidx203.i394, align 1, !tbaa !9
  %conv208.i396 = zext i8 %81 to i32
  %shr209.i397 = lshr i32 %conv208.i396, 4
  %idxprom210.i398 = zext i32 %shr209.i397 to i64
  %and215.i399 = and i32 %conv208.i396, 15
  %idxprom216.i400 = zext i32 %and215.i399 to i64
  %arrayidx217.i401 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom210.i398, i64 %idxprom216.i400
  %103 = load i8, ptr %arrayidx217.i401, align 1, !tbaa !9
  %arrayidx59 = getelementptr inbounds i32, ptr %key, i64 48
  %104 = load i32, ptr %arrayidx59, align 4, !tbaa !32
  %shr.i402 = lshr i32 %104, 24
  %shr3.i403 = lshr i32 %104, 16
  %shr7.i404 = lshr i32 %104, 8
  %105 = trunc i32 %shr.i402 to i8
  %conv18.i405 = xor i8 %85, %105
  store i8 %conv18.i405, ptr %state, align 16, !tbaa !9
  %106 = trunc i32 %shr3.i403 to i8
  %conv25.i407 = xor i8 %92, %106
  store i8 %conv25.i407, ptr %arrayidx4, align 4, !tbaa !9
  %107 = trunc i32 %shr7.i404 to i8
  %conv32.i409 = xor i8 %96, %107
  store i8 %conv32.i409, ptr %arrayidx7, align 8, !tbaa !9
  %108 = trunc i32 %104 to i8
  %conv39.i411 = xor i8 %100, %108
  store i8 %conv39.i411, ptr %arrayidx10, align 4, !tbaa !9
  %arrayidx40.i412 = getelementptr inbounds i32, ptr %key, i64 49
  %109 = load i32, ptr %arrayidx40.i412, align 4, !tbaa !32
  %shr41.i413 = lshr i32 %109, 24
  %shr45.i414 = lshr i32 %109, 16
  %shr49.i415 = lshr i32 %109, 8
  %110 = trunc i32 %shr41.i413 to i8
  %conv61.i417 = xor i8 %87, %110
  store i8 %conv61.i417, ptr %arrayidx14, align 1, !tbaa !9
  %111 = trunc i32 %shr45.i414 to i8
  %conv68.i419 = xor i8 %93, %111
  store i8 %conv68.i419, ptr %arrayidx17, align 1, !tbaa !9
  %112 = trunc i32 %shr49.i415 to i8
  %conv75.i421 = xor i8 %97, %112
  store i8 %conv75.i421, ptr %arrayidx20, align 1, !tbaa !9
  %113 = trunc i32 %109 to i8
  %conv82.i423 = xor i8 %101, %113
  store i8 %conv82.i423, ptr %arrayidx23, align 1, !tbaa !9
  %arrayidx83.i424 = getelementptr inbounds i32, ptr %key, i64 50
  %114 = load i32, ptr %arrayidx83.i424, align 4, !tbaa !32
  %shr84.i425 = lshr i32 %114, 24
  %shr88.i426 = lshr i32 %114, 16
  %shr92.i427 = lshr i32 %114, 8
  %115 = trunc i32 %shr84.i425 to i8
  %conv104.i429 = xor i8 %89, %115
  store i8 %conv104.i429, ptr %arrayidx26, align 2, !tbaa !9
  %116 = trunc i32 %shr88.i426 to i8
  %conv111.i431 = xor i8 %94, %116
  store i8 %conv111.i431, ptr %arrayidx29, align 2, !tbaa !9
  %117 = trunc i32 %shr92.i427 to i8
  %conv118.i433 = xor i8 %98, %117
  store i8 %conv118.i433, ptr %arrayidx32, align 2, !tbaa !9
  %118 = trunc i32 %114 to i8
  %conv125.i435 = xor i8 %102, %118
  store i8 %conv125.i435, ptr %arrayidx35, align 2, !tbaa !9
  %arrayidx126.i436 = getelementptr inbounds i32, ptr %key, i64 51
  %119 = load i32, ptr %arrayidx126.i436, align 4, !tbaa !32
  %shr127.i437 = lshr i32 %119, 24
  %shr131.i438 = lshr i32 %119, 16
  %shr135.i439 = lshr i32 %119, 8
  %120 = trunc i32 %shr127.i437 to i8
  %conv147.i441 = xor i8 %91, %120
  store i8 %conv147.i441, ptr %arrayidx38, align 1, !tbaa !9
  %121 = trunc i32 %shr131.i438 to i8
  %conv154.i443 = xor i8 %95, %121
  store i8 %conv154.i443, ptr %arrayidx41, align 1, !tbaa !9
  %122 = trunc i32 %shr135.i439 to i8
  %conv161.i445 = xor i8 %99, %122
  store i8 %conv161.i445, ptr %arrayidx44, align 1, !tbaa !9
  %123 = trunc i32 %119 to i8
  %conv168.i447 = xor i8 %103, %123
  store i8 %conv168.i447, ptr %arrayidx47, align 1, !tbaa !9
  call void @InvMixColumns(ptr noundef nonnull %state)
  %.pre = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %.pre2568 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %.pre2569 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %.pre2570 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %.pre2571 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %.pre2572 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %.pre2573 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %.pre2574 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %.pre2575 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %.pre2576 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %.pre2577 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %.pre2578 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %.pre2579 = load i8, ptr %state, align 16, !tbaa !9
  %.pre2580 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %.pre2581 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %.pre2582 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  br label %if.end

if.else:                                          ; preds = %if.then
  %arrayidx62 = getelementptr inbounds i32, ptr %key, i64 48
  %124 = load i32, ptr %arrayidx62, align 4, !tbaa !32
  %shr.i448 = lshr i32 %124, 24
  %shr3.i449 = lshr i32 %124, 16
  %shr7.i450 = lshr i32 %124, 8
  %125 = trunc i32 %shr.i448 to i8
  %conv18.i451 = xor i8 %0, %125
  %126 = trunc i32 %shr3.i449 to i8
  %conv25.i453 = xor i8 %1, %126
  %127 = trunc i32 %shr7.i450 to i8
  %conv32.i455 = xor i8 %2, %127
  %128 = trunc i32 %124 to i8
  %conv39.i457 = xor i8 %3, %128
  %arrayidx40.i458 = getelementptr inbounds i32, ptr %key, i64 49
  %129 = load i32, ptr %arrayidx40.i458, align 4, !tbaa !32
  %shr41.i459 = lshr i32 %129, 24
  %shr45.i460 = lshr i32 %129, 16
  %shr49.i461 = lshr i32 %129, 8
  %130 = trunc i32 %shr41.i459 to i8
  %conv61.i463 = xor i8 %4, %130
  %131 = trunc i32 %shr45.i460 to i8
  %conv68.i465 = xor i8 %5, %131
  %132 = trunc i32 %shr49.i461 to i8
  %conv75.i467 = xor i8 %6, %132
  %133 = trunc i32 %129 to i8
  %conv82.i469 = xor i8 %7, %133
  %arrayidx83.i470 = getelementptr inbounds i32, ptr %key, i64 50
  %134 = load i32, ptr %arrayidx83.i470, align 4, !tbaa !32
  %shr84.i471 = lshr i32 %134, 24
  %shr88.i472 = lshr i32 %134, 16
  %shr92.i473 = lshr i32 %134, 8
  %135 = trunc i32 %shr84.i471 to i8
  %conv104.i475 = xor i8 %8, %135
  %136 = trunc i32 %shr88.i472 to i8
  %conv111.i477 = xor i8 %9, %136
  %137 = trunc i32 %shr92.i473 to i8
  %conv118.i479 = xor i8 %10, %137
  %138 = trunc i32 %134 to i8
  %conv125.i481 = xor i8 %11, %138
  %arrayidx126.i482 = getelementptr inbounds i32, ptr %key, i64 51
  %139 = load i32, ptr %arrayidx126.i482, align 4, !tbaa !32
  %shr127.i483 = lshr i32 %139, 24
  %shr131.i484 = lshr i32 %139, 16
  %shr135.i485 = lshr i32 %139, 8
  %140 = trunc i32 %shr127.i483 to i8
  %conv147.i487 = xor i8 %12, %140
  %141 = trunc i32 %shr131.i484 to i8
  %conv154.i489 = xor i8 %13, %141
  %142 = trunc i32 %shr135.i485 to i8
  %conv161.i491 = xor i8 %14, %142
  %143 = trunc i32 %139 to i8
  %conv168.i493 = xor i8 %15, %143
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then49
  %144 = phi i8 [ %conv147.i487, %if.else ], [ %.pre2582, %if.then49 ]
  %145 = phi i8 [ %conv104.i475, %if.else ], [ %.pre2581, %if.then49 ]
  %146 = phi i8 [ %conv61.i463, %if.else ], [ %.pre2580, %if.then49 ]
  %147 = phi i8 [ %conv18.i451, %if.else ], [ %.pre2579, %if.then49 ]
  %148 = phi i8 [ %conv125.i481, %if.else ], [ %.pre2578, %if.then49 ]
  %149 = phi i8 [ %conv82.i469, %if.else ], [ %.pre2577, %if.then49 ]
  %150 = phi i8 [ %conv39.i457, %if.else ], [ %.pre2576, %if.then49 ]
  %151 = phi i8 [ %conv168.i493, %if.else ], [ %.pre2575, %if.then49 ]
  %152 = phi i8 [ %conv32.i455, %if.else ], [ %.pre2574, %if.then49 ]
  %153 = phi i8 [ %conv118.i479, %if.else ], [ %.pre2573, %if.then49 ]
  %154 = phi i8 [ %conv75.i467, %if.else ], [ %.pre2572, %if.then49 ]
  %155 = phi i8 [ %conv161.i491, %if.else ], [ %.pre2571, %if.then49 ]
  %156 = phi i8 [ %conv25.i453, %if.else ], [ %.pre2570, %if.then49 ]
  %157 = phi i8 [ %conv68.i465, %if.else ], [ %.pre2569, %if.then49 ]
  %158 = phi i8 [ %conv111.i477, %if.else ], [ %.pre2568, %if.then49 ]
  %159 = phi i8 [ %conv154.i489, %if.else ], [ %.pre, %if.then49 ]
  %conv.i506 = zext i8 %147 to i32
  %shr.i507 = lshr i32 %conv.i506, 4
  %idxprom.i508 = zext i32 %shr.i507 to i64
  %and.i509 = and i32 %conv.i506, 15
  %idxprom6.i510 = zext i32 %and.i509 to i64
  %arrayidx7.i511 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom.i508, i64 %idxprom6.i510
  %160 = load i8, ptr %arrayidx7.i511, align 1, !tbaa !9
  %conv12.i513 = zext i8 %146 to i32
  %shr13.i514 = lshr i32 %conv12.i513, 4
  %idxprom14.i515 = zext i32 %shr13.i514 to i64
  %and19.i516 = and i32 %conv12.i513, 15
  %idxprom20.i517 = zext i32 %and19.i516 to i64
  %arrayidx21.i518 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom14.i515, i64 %idxprom20.i517
  %161 = load i8, ptr %arrayidx21.i518, align 1, !tbaa !9
  %conv26.i520 = zext i8 %145 to i32
  %shr27.i521 = lshr i32 %conv26.i520, 4
  %idxprom28.i522 = zext i32 %shr27.i521 to i64
  %and33.i523 = and i32 %conv26.i520, 15
  %idxprom34.i524 = zext i32 %and33.i523 to i64
  %arrayidx35.i525 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom28.i522, i64 %idxprom34.i524
  %162 = load i8, ptr %arrayidx35.i525, align 1, !tbaa !9
  %conv40.i527 = zext i8 %144 to i32
  %shr41.i528 = lshr i32 %conv40.i527, 4
  %idxprom42.i529 = zext i32 %shr41.i528 to i64
  %and47.i530 = and i32 %conv40.i527, 15
  %idxprom48.i531 = zext i32 %and47.i530 to i64
  %arrayidx49.i532 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom42.i529, i64 %idxprom48.i531
  %163 = load i8, ptr %arrayidx49.i532, align 1, !tbaa !9
  %conv54.i534 = zext i8 %159 to i32
  %shr55.i535 = lshr i32 %conv54.i534, 4
  %idxprom56.i536 = zext i32 %shr55.i535 to i64
  %and61.i537 = and i32 %conv54.i534, 15
  %idxprom62.i538 = zext i32 %and61.i537 to i64
  %arrayidx63.i539 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom56.i536, i64 %idxprom62.i538
  %164 = load i8, ptr %arrayidx63.i539, align 1, !tbaa !9
  %conv68.i541 = zext i8 %156 to i32
  %shr69.i542 = lshr i32 %conv68.i541, 4
  %idxprom70.i543 = zext i32 %shr69.i542 to i64
  %and75.i544 = and i32 %conv68.i541, 15
  %idxprom76.i545 = zext i32 %and75.i544 to i64
  %arrayidx77.i546 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom70.i543, i64 %idxprom76.i545
  %165 = load i8, ptr %arrayidx77.i546, align 1, !tbaa !9
  %conv82.i548 = zext i8 %157 to i32
  %shr83.i549 = lshr i32 %conv82.i548, 4
  %idxprom84.i550 = zext i32 %shr83.i549 to i64
  %and89.i551 = and i32 %conv82.i548, 15
  %idxprom90.i552 = zext i32 %and89.i551 to i64
  %arrayidx91.i553 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom84.i550, i64 %idxprom90.i552
  %166 = load i8, ptr %arrayidx91.i553, align 1, !tbaa !9
  %conv96.i555 = zext i8 %158 to i32
  %shr97.i556 = lshr i32 %conv96.i555, 4
  %idxprom98.i557 = zext i32 %shr97.i556 to i64
  %and103.i558 = and i32 %conv96.i555, 15
  %idxprom104.i559 = zext i32 %and103.i558 to i64
  %arrayidx105.i560 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom98.i557, i64 %idxprom104.i559
  %167 = load i8, ptr %arrayidx105.i560, align 1, !tbaa !9
  %conv110.i562 = zext i8 %153 to i32
  %shr111.i563 = lshr i32 %conv110.i562, 4
  %idxprom112.i564 = zext i32 %shr111.i563 to i64
  %and117.i565 = and i32 %conv110.i562, 15
  %idxprom118.i566 = zext i32 %and117.i565 to i64
  %arrayidx119.i567 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom112.i564, i64 %idxprom118.i566
  %168 = load i8, ptr %arrayidx119.i567, align 1, !tbaa !9
  %conv124.i569 = zext i8 %155 to i32
  %shr125.i570 = lshr i32 %conv124.i569, 4
  %idxprom126.i571 = zext i32 %shr125.i570 to i64
  %and131.i572 = and i32 %conv124.i569, 15
  %idxprom132.i573 = zext i32 %and131.i572 to i64
  %arrayidx133.i574 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom126.i571, i64 %idxprom132.i573
  %169 = load i8, ptr %arrayidx133.i574, align 1, !tbaa !9
  %conv138.i576 = zext i8 %152 to i32
  %shr139.i577 = lshr i32 %conv138.i576, 4
  %idxprom140.i578 = zext i32 %shr139.i577 to i64
  %and145.i579 = and i32 %conv138.i576, 15
  %idxprom146.i580 = zext i32 %and145.i579 to i64
  %arrayidx147.i581 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom140.i578, i64 %idxprom146.i580
  %170 = load i8, ptr %arrayidx147.i581, align 1, !tbaa !9
  %conv152.i583 = zext i8 %154 to i32
  %shr153.i584 = lshr i32 %conv152.i583, 4
  %idxprom154.i585 = zext i32 %shr153.i584 to i64
  %and159.i586 = and i32 %conv152.i583, 15
  %idxprom160.i587 = zext i32 %and159.i586 to i64
  %arrayidx161.i588 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom154.i585, i64 %idxprom160.i587
  %171 = load i8, ptr %arrayidx161.i588, align 1, !tbaa !9
  %conv166.i590 = zext i8 %149 to i32
  %shr167.i591 = lshr i32 %conv166.i590, 4
  %idxprom168.i592 = zext i32 %shr167.i591 to i64
  %and173.i593 = and i32 %conv166.i590, 15
  %idxprom174.i594 = zext i32 %and173.i593 to i64
  %arrayidx175.i595 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom168.i592, i64 %idxprom174.i594
  %172 = load i8, ptr %arrayidx175.i595, align 1, !tbaa !9
  %conv180.i597 = zext i8 %148 to i32
  %shr181.i598 = lshr i32 %conv180.i597, 4
  %idxprom182.i599 = zext i32 %shr181.i598 to i64
  %and187.i600 = and i32 %conv180.i597, 15
  %idxprom188.i601 = zext i32 %and187.i600 to i64
  %arrayidx189.i602 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom182.i599, i64 %idxprom188.i601
  %173 = load i8, ptr %arrayidx189.i602, align 1, !tbaa !9
  %conv194.i604 = zext i8 %151 to i32
  %shr195.i605 = lshr i32 %conv194.i604, 4
  %idxprom196.i606 = zext i32 %shr195.i605 to i64
  %and201.i607 = and i32 %conv194.i604, 15
  %idxprom202.i608 = zext i32 %and201.i607 to i64
  %arrayidx203.i609 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom196.i606, i64 %idxprom202.i608
  %174 = load i8, ptr %arrayidx203.i609, align 1, !tbaa !9
  %conv208.i611 = zext i8 %150 to i32
  %shr209.i612 = lshr i32 %conv208.i611, 4
  %idxprom210.i613 = zext i32 %shr209.i612 to i64
  %and215.i614 = and i32 %conv208.i611, 15
  %idxprom216.i615 = zext i32 %and215.i614 to i64
  %arrayidx217.i616 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom210.i613, i64 %idxprom216.i615
  %175 = load i8, ptr %arrayidx217.i616, align 1, !tbaa !9
  %arrayidx66 = getelementptr inbounds i32, ptr %key, i64 44
  %176 = load i32, ptr %arrayidx66, align 4, !tbaa !32
  %shr.i617 = lshr i32 %176, 24
  %shr3.i618 = lshr i32 %176, 16
  %shr7.i619 = lshr i32 %176, 8
  %177 = trunc i32 %shr.i617 to i8
  %conv18.i620 = xor i8 %160, %177
  store i8 %conv18.i620, ptr %state, align 16, !tbaa !9
  %178 = trunc i32 %shr3.i618 to i8
  %conv25.i622 = xor i8 %164, %178
  store i8 %conv25.i622, ptr %arrayidx4, align 4, !tbaa !9
  %179 = trunc i32 %shr7.i619 to i8
  %conv32.i624 = xor i8 %168, %179
  store i8 %conv32.i624, ptr %arrayidx7, align 8, !tbaa !9
  %180 = trunc i32 %176 to i8
  %conv39.i626 = xor i8 %172, %180
  store i8 %conv39.i626, ptr %arrayidx10, align 4, !tbaa !9
  %arrayidx40.i627 = getelementptr inbounds i32, ptr %key, i64 45
  %181 = load i32, ptr %arrayidx40.i627, align 4, !tbaa !32
  %shr41.i628 = lshr i32 %181, 24
  %shr45.i629 = lshr i32 %181, 16
  %shr49.i630 = lshr i32 %181, 8
  %182 = trunc i32 %shr41.i628 to i8
  %conv61.i632 = xor i8 %161, %182
  store i8 %conv61.i632, ptr %arrayidx14, align 1, !tbaa !9
  %183 = trunc i32 %shr45.i629 to i8
  %conv68.i634 = xor i8 %165, %183
  store i8 %conv68.i634, ptr %arrayidx17, align 1, !tbaa !9
  %184 = trunc i32 %shr49.i630 to i8
  %conv75.i636 = xor i8 %169, %184
  store i8 %conv75.i636, ptr %arrayidx20, align 1, !tbaa !9
  %185 = trunc i32 %181 to i8
  %conv82.i638 = xor i8 %173, %185
  store i8 %conv82.i638, ptr %arrayidx23, align 1, !tbaa !9
  %arrayidx83.i639 = getelementptr inbounds i32, ptr %key, i64 46
  %186 = load i32, ptr %arrayidx83.i639, align 4, !tbaa !32
  %shr84.i640 = lshr i32 %186, 24
  %shr88.i641 = lshr i32 %186, 16
  %shr92.i642 = lshr i32 %186, 8
  %187 = trunc i32 %shr84.i640 to i8
  %conv104.i644 = xor i8 %162, %187
  store i8 %conv104.i644, ptr %arrayidx26, align 2, !tbaa !9
  %188 = trunc i32 %shr88.i641 to i8
  %conv111.i646 = xor i8 %166, %188
  store i8 %conv111.i646, ptr %arrayidx29, align 2, !tbaa !9
  %189 = trunc i32 %shr92.i642 to i8
  %conv118.i648 = xor i8 %170, %189
  store i8 %conv118.i648, ptr %arrayidx32, align 2, !tbaa !9
  %190 = trunc i32 %186 to i8
  %conv125.i650 = xor i8 %174, %190
  store i8 %conv125.i650, ptr %arrayidx35, align 2, !tbaa !9
  %arrayidx126.i651 = getelementptr inbounds i32, ptr %key, i64 47
  %191 = load i32, ptr %arrayidx126.i651, align 4, !tbaa !32
  %shr127.i652 = lshr i32 %191, 24
  %shr131.i653 = lshr i32 %191, 16
  %shr135.i654 = lshr i32 %191, 8
  %192 = trunc i32 %shr127.i652 to i8
  %conv147.i656 = xor i8 %163, %192
  store i8 %conv147.i656, ptr %arrayidx38, align 1, !tbaa !9
  %193 = trunc i32 %shr131.i653 to i8
  %conv154.i658 = xor i8 %167, %193
  store i8 %conv154.i658, ptr %arrayidx41, align 1, !tbaa !9
  %194 = trunc i32 %shr135.i654 to i8
  %conv161.i660 = xor i8 %171, %194
  store i8 %conv161.i660, ptr %arrayidx44, align 1, !tbaa !9
  %195 = trunc i32 %191 to i8
  %conv168.i662 = xor i8 %175, %195
  store i8 %conv168.i662, ptr %arrayidx47, align 1, !tbaa !9
  call void @InvMixColumns(ptr noundef nonnull %state)
  %196 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %197 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %198 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %199 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %200 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %201 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %202 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %203 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %204 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %205 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %206 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %207 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %208 = load i8, ptr %state, align 16, !tbaa !9
  %conv.i675 = zext i8 %208 to i32
  %shr.i676 = lshr i32 %conv.i675, 4
  %idxprom.i677 = zext i32 %shr.i676 to i64
  %and.i678 = and i32 %conv.i675, 15
  %idxprom6.i679 = zext i32 %and.i678 to i64
  %arrayidx7.i680 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom.i677, i64 %idxprom6.i679
  %209 = load i8, ptr %arrayidx7.i680, align 1, !tbaa !9
  %210 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %conv12.i682 = zext i8 %210 to i32
  %shr13.i683 = lshr i32 %conv12.i682, 4
  %idxprom14.i684 = zext i32 %shr13.i683 to i64
  %and19.i685 = and i32 %conv12.i682, 15
  %idxprom20.i686 = zext i32 %and19.i685 to i64
  %arrayidx21.i687 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom14.i684, i64 %idxprom20.i686
  %211 = load i8, ptr %arrayidx21.i687, align 1, !tbaa !9
  %212 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %conv26.i689 = zext i8 %212 to i32
  %shr27.i690 = lshr i32 %conv26.i689, 4
  %idxprom28.i691 = zext i32 %shr27.i690 to i64
  %and33.i692 = and i32 %conv26.i689, 15
  %idxprom34.i693 = zext i32 %and33.i692 to i64
  %arrayidx35.i694 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom28.i691, i64 %idxprom34.i693
  %213 = load i8, ptr %arrayidx35.i694, align 1, !tbaa !9
  %214 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %conv40.i696 = zext i8 %214 to i32
  %shr41.i697 = lshr i32 %conv40.i696, 4
  %idxprom42.i698 = zext i32 %shr41.i697 to i64
  %and47.i699 = and i32 %conv40.i696, 15
  %idxprom48.i700 = zext i32 %and47.i699 to i64
  %arrayidx49.i701 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom42.i698, i64 %idxprom48.i700
  %215 = load i8, ptr %arrayidx49.i701, align 1, !tbaa !9
  %conv54.i703 = zext i8 %196 to i32
  %shr55.i704 = lshr i32 %conv54.i703, 4
  %idxprom56.i705 = zext i32 %shr55.i704 to i64
  %and61.i706 = and i32 %conv54.i703, 15
  %idxprom62.i707 = zext i32 %and61.i706 to i64
  %arrayidx63.i708 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom56.i705, i64 %idxprom62.i707
  %216 = load i8, ptr %arrayidx63.i708, align 1, !tbaa !9
  %conv68.i710 = zext i8 %199 to i32
  %shr69.i711 = lshr i32 %conv68.i710, 4
  %idxprom70.i712 = zext i32 %shr69.i711 to i64
  %and75.i713 = and i32 %conv68.i710, 15
  %idxprom76.i714 = zext i32 %and75.i713 to i64
  %arrayidx77.i715 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom70.i712, i64 %idxprom76.i714
  %217 = load i8, ptr %arrayidx77.i715, align 1, !tbaa !9
  %conv82.i717 = zext i8 %198 to i32
  %shr83.i718 = lshr i32 %conv82.i717, 4
  %idxprom84.i719 = zext i32 %shr83.i718 to i64
  %and89.i720 = and i32 %conv82.i717, 15
  %idxprom90.i721 = zext i32 %and89.i720 to i64
  %arrayidx91.i722 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom84.i719, i64 %idxprom90.i721
  %218 = load i8, ptr %arrayidx91.i722, align 1, !tbaa !9
  %conv96.i724 = zext i8 %197 to i32
  %shr97.i725 = lshr i32 %conv96.i724, 4
  %idxprom98.i726 = zext i32 %shr97.i725 to i64
  %and103.i727 = and i32 %conv96.i724, 15
  %idxprom104.i728 = zext i32 %and103.i727 to i64
  %arrayidx105.i729 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom98.i726, i64 %idxprom104.i728
  %219 = load i8, ptr %arrayidx105.i729, align 1, !tbaa !9
  %conv110.i731 = zext i8 %202 to i32
  %shr111.i732 = lshr i32 %conv110.i731, 4
  %idxprom112.i733 = zext i32 %shr111.i732 to i64
  %and117.i734 = and i32 %conv110.i731, 15
  %idxprom118.i735 = zext i32 %and117.i734 to i64
  %arrayidx119.i736 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom112.i733, i64 %idxprom118.i735
  %220 = load i8, ptr %arrayidx119.i736, align 1, !tbaa !9
  %conv124.i738 = zext i8 %200 to i32
  %shr125.i739 = lshr i32 %conv124.i738, 4
  %idxprom126.i740 = zext i32 %shr125.i739 to i64
  %and131.i741 = and i32 %conv124.i738, 15
  %idxprom132.i742 = zext i32 %and131.i741 to i64
  %arrayidx133.i743 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom126.i740, i64 %idxprom132.i742
  %221 = load i8, ptr %arrayidx133.i743, align 1, !tbaa !9
  %conv138.i745 = zext i8 %203 to i32
  %shr139.i746 = lshr i32 %conv138.i745, 4
  %idxprom140.i747 = zext i32 %shr139.i746 to i64
  %and145.i748 = and i32 %conv138.i745, 15
  %idxprom146.i749 = zext i32 %and145.i748 to i64
  %arrayidx147.i750 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom140.i747, i64 %idxprom146.i749
  %222 = load i8, ptr %arrayidx147.i750, align 1, !tbaa !9
  %conv152.i752 = zext i8 %201 to i32
  %shr153.i753 = lshr i32 %conv152.i752, 4
  %idxprom154.i754 = zext i32 %shr153.i753 to i64
  %and159.i755 = and i32 %conv152.i752, 15
  %idxprom160.i756 = zext i32 %and159.i755 to i64
  %arrayidx161.i757 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom154.i754, i64 %idxprom160.i756
  %223 = load i8, ptr %arrayidx161.i757, align 1, !tbaa !9
  %conv166.i759 = zext i8 %206 to i32
  %shr167.i760 = lshr i32 %conv166.i759, 4
  %idxprom168.i761 = zext i32 %shr167.i760 to i64
  %and173.i762 = and i32 %conv166.i759, 15
  %idxprom174.i763 = zext i32 %and173.i762 to i64
  %arrayidx175.i764 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom168.i761, i64 %idxprom174.i763
  %224 = load i8, ptr %arrayidx175.i764, align 1, !tbaa !9
  %conv180.i766 = zext i8 %207 to i32
  %shr181.i767 = lshr i32 %conv180.i766, 4
  %idxprom182.i768 = zext i32 %shr181.i767 to i64
  %and187.i769 = and i32 %conv180.i766, 15
  %idxprom188.i770 = zext i32 %and187.i769 to i64
  %arrayidx189.i771 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom182.i768, i64 %idxprom188.i770
  %225 = load i8, ptr %arrayidx189.i771, align 1, !tbaa !9
  %conv194.i773 = zext i8 %204 to i32
  %shr195.i774 = lshr i32 %conv194.i773, 4
  %idxprom196.i775 = zext i32 %shr195.i774 to i64
  %and201.i776 = and i32 %conv194.i773, 15
  %idxprom202.i777 = zext i32 %and201.i776 to i64
  %arrayidx203.i778 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom196.i775, i64 %idxprom202.i777
  %226 = load i8, ptr %arrayidx203.i778, align 1, !tbaa !9
  %conv208.i780 = zext i8 %205 to i32
  %shr209.i781 = lshr i32 %conv208.i780, 4
  %idxprom210.i782 = zext i32 %shr209.i781 to i64
  %and215.i783 = and i32 %conv208.i780, 15
  %idxprom216.i784 = zext i32 %and215.i783 to i64
  %arrayidx217.i785 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom210.i782, i64 %idxprom216.i784
  %227 = load i8, ptr %arrayidx217.i785, align 1, !tbaa !9
  %arrayidx71 = getelementptr inbounds i32, ptr %key, i64 40
  %228 = load i32, ptr %arrayidx71, align 4, !tbaa !32
  %shr.i786 = lshr i32 %228, 24
  %shr3.i787 = lshr i32 %228, 16
  %shr7.i788 = lshr i32 %228, 8
  %229 = trunc i32 %shr.i786 to i8
  %conv18.i789 = xor i8 %209, %229
  store i8 %conv18.i789, ptr %state, align 16, !tbaa !9
  %230 = trunc i32 %shr3.i787 to i8
  %conv25.i791 = xor i8 %216, %230
  store i8 %conv25.i791, ptr %arrayidx4, align 4, !tbaa !9
  %231 = trunc i32 %shr7.i788 to i8
  %conv32.i793 = xor i8 %220, %231
  store i8 %conv32.i793, ptr %arrayidx7, align 8, !tbaa !9
  %232 = trunc i32 %228 to i8
  %conv39.i795 = xor i8 %224, %232
  store i8 %conv39.i795, ptr %arrayidx10, align 4, !tbaa !9
  %arrayidx40.i796 = getelementptr inbounds i32, ptr %key, i64 41
  %233 = load i32, ptr %arrayidx40.i796, align 4, !tbaa !32
  %shr41.i797 = lshr i32 %233, 24
  %shr45.i798 = lshr i32 %233, 16
  %shr49.i799 = lshr i32 %233, 8
  %234 = trunc i32 %shr41.i797 to i8
  %conv61.i801 = xor i8 %211, %234
  store i8 %conv61.i801, ptr %arrayidx14, align 1, !tbaa !9
  %235 = trunc i32 %shr45.i798 to i8
  %conv68.i803 = xor i8 %217, %235
  store i8 %conv68.i803, ptr %arrayidx17, align 1, !tbaa !9
  %236 = trunc i32 %shr49.i799 to i8
  %conv75.i805 = xor i8 %221, %236
  store i8 %conv75.i805, ptr %arrayidx20, align 1, !tbaa !9
  %237 = trunc i32 %233 to i8
  %conv82.i807 = xor i8 %225, %237
  store i8 %conv82.i807, ptr %arrayidx23, align 1, !tbaa !9
  %arrayidx83.i808 = getelementptr inbounds i32, ptr %key, i64 42
  %238 = load i32, ptr %arrayidx83.i808, align 4, !tbaa !32
  %shr84.i809 = lshr i32 %238, 24
  %shr88.i810 = lshr i32 %238, 16
  %shr92.i811 = lshr i32 %238, 8
  %239 = trunc i32 %shr84.i809 to i8
  %conv104.i813 = xor i8 %213, %239
  store i8 %conv104.i813, ptr %arrayidx26, align 2, !tbaa !9
  %240 = trunc i32 %shr88.i810 to i8
  %conv111.i815 = xor i8 %218, %240
  store i8 %conv111.i815, ptr %arrayidx29, align 2, !tbaa !9
  %241 = trunc i32 %shr92.i811 to i8
  %conv118.i817 = xor i8 %222, %241
  store i8 %conv118.i817, ptr %arrayidx32, align 2, !tbaa !9
  %242 = trunc i32 %238 to i8
  %conv125.i819 = xor i8 %226, %242
  store i8 %conv125.i819, ptr %arrayidx35, align 2, !tbaa !9
  %arrayidx126.i820 = getelementptr inbounds i32, ptr %key, i64 43
  %243 = load i32, ptr %arrayidx126.i820, align 4, !tbaa !32
  %shr127.i821 = lshr i32 %243, 24
  %shr131.i822 = lshr i32 %243, 16
  %shr135.i823 = lshr i32 %243, 8
  %244 = trunc i32 %shr127.i821 to i8
  %conv147.i825 = xor i8 %215, %244
  store i8 %conv147.i825, ptr %arrayidx38, align 1, !tbaa !9
  %245 = trunc i32 %shr131.i822 to i8
  %conv154.i827 = xor i8 %219, %245
  store i8 %conv154.i827, ptr %arrayidx41, align 1, !tbaa !9
  %246 = trunc i32 %shr135.i823 to i8
  %conv161.i829 = xor i8 %223, %246
  store i8 %conv161.i829, ptr %arrayidx44, align 1, !tbaa !9
  %247 = trunc i32 %243 to i8
  %conv168.i831 = xor i8 %227, %247
  store i8 %conv168.i831, ptr %arrayidx47, align 1, !tbaa !9
  call void @InvMixColumns(ptr noundef nonnull %state)
  %.pre2583 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %.pre2584 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %.pre2585 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %.pre2586 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %.pre2587 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %.pre2588 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %.pre2589 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %.pre2590 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %.pre2591 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %.pre2592 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %.pre2593 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %.pre2594 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %.pre2595 = load i8, ptr %state, align 16, !tbaa !9
  %.pre2596 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %.pre2597 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %.pre2598 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  br label %if.end76

if.else73:                                        ; preds = %entry
  %arrayidx75 = getelementptr inbounds i32, ptr %key, i64 40
  %248 = load i32, ptr %arrayidx75, align 4, !tbaa !32
  %shr.i832 = lshr i32 %248, 24
  %shr3.i833 = lshr i32 %248, 16
  %shr7.i834 = lshr i32 %248, 8
  %249 = trunc i32 %shr.i832 to i8
  %conv18.i835 = xor i8 %0, %249
  %250 = trunc i32 %shr3.i833 to i8
  %conv25.i837 = xor i8 %1, %250
  %251 = trunc i32 %shr7.i834 to i8
  %conv32.i839 = xor i8 %2, %251
  %252 = trunc i32 %248 to i8
  %conv39.i841 = xor i8 %3, %252
  %arrayidx40.i842 = getelementptr inbounds i32, ptr %key, i64 41
  %253 = load i32, ptr %arrayidx40.i842, align 4, !tbaa !32
  %shr41.i843 = lshr i32 %253, 24
  %shr45.i844 = lshr i32 %253, 16
  %shr49.i845 = lshr i32 %253, 8
  %254 = trunc i32 %shr41.i843 to i8
  %conv61.i847 = xor i8 %4, %254
  %255 = trunc i32 %shr45.i844 to i8
  %conv68.i849 = xor i8 %5, %255
  %256 = trunc i32 %shr49.i845 to i8
  %conv75.i851 = xor i8 %6, %256
  %257 = trunc i32 %253 to i8
  %conv82.i853 = xor i8 %7, %257
  %arrayidx83.i854 = getelementptr inbounds i32, ptr %key, i64 42
  %258 = load i32, ptr %arrayidx83.i854, align 4, !tbaa !32
  %shr84.i855 = lshr i32 %258, 24
  %shr88.i856 = lshr i32 %258, 16
  %shr92.i857 = lshr i32 %258, 8
  %259 = trunc i32 %shr84.i855 to i8
  %conv104.i859 = xor i8 %8, %259
  %260 = trunc i32 %shr88.i856 to i8
  %conv111.i861 = xor i8 %9, %260
  %261 = trunc i32 %shr92.i857 to i8
  %conv118.i863 = xor i8 %10, %261
  %262 = trunc i32 %258 to i8
  %conv125.i865 = xor i8 %11, %262
  %arrayidx126.i866 = getelementptr inbounds i32, ptr %key, i64 43
  %263 = load i32, ptr %arrayidx126.i866, align 4, !tbaa !32
  %shr127.i867 = lshr i32 %263, 24
  %shr131.i868 = lshr i32 %263, 16
  %shr135.i869 = lshr i32 %263, 8
  %264 = trunc i32 %shr127.i867 to i8
  %conv147.i871 = xor i8 %12, %264
  %265 = trunc i32 %shr131.i868 to i8
  %conv154.i873 = xor i8 %13, %265
  %266 = trunc i32 %shr135.i869 to i8
  %conv161.i875 = xor i8 %14, %266
  %267 = trunc i32 %263 to i8
  %conv168.i877 = xor i8 %15, %267
  br label %if.end76

if.end76:                                         ; preds = %if.else73, %if.end
  %268 = phi i8 [ %conv147.i871, %if.else73 ], [ %.pre2598, %if.end ]
  %269 = phi i8 [ %conv104.i859, %if.else73 ], [ %.pre2597, %if.end ]
  %270 = phi i8 [ %conv61.i847, %if.else73 ], [ %.pre2596, %if.end ]
  %271 = phi i8 [ %conv18.i835, %if.else73 ], [ %.pre2595, %if.end ]
  %272 = phi i8 [ %conv125.i865, %if.else73 ], [ %.pre2594, %if.end ]
  %273 = phi i8 [ %conv82.i853, %if.else73 ], [ %.pre2593, %if.end ]
  %274 = phi i8 [ %conv39.i841, %if.else73 ], [ %.pre2592, %if.end ]
  %275 = phi i8 [ %conv168.i877, %if.else73 ], [ %.pre2591, %if.end ]
  %276 = phi i8 [ %conv32.i839, %if.else73 ], [ %.pre2590, %if.end ]
  %277 = phi i8 [ %conv118.i863, %if.else73 ], [ %.pre2589, %if.end ]
  %278 = phi i8 [ %conv75.i851, %if.else73 ], [ %.pre2588, %if.end ]
  %279 = phi i8 [ %conv161.i875, %if.else73 ], [ %.pre2587, %if.end ]
  %280 = phi i8 [ %conv25.i837, %if.else73 ], [ %.pre2586, %if.end ]
  %281 = phi i8 [ %conv68.i849, %if.else73 ], [ %.pre2585, %if.end ]
  %282 = phi i8 [ %conv111.i861, %if.else73 ], [ %.pre2584, %if.end ]
  %283 = phi i8 [ %conv154.i873, %if.else73 ], [ %.pre2583, %if.end ]
  %conv.i890 = zext i8 %271 to i32
  %shr.i891 = lshr i32 %conv.i890, 4
  %idxprom.i892 = zext i32 %shr.i891 to i64
  %and.i893 = and i32 %conv.i890, 15
  %idxprom6.i894 = zext i32 %and.i893 to i64
  %arrayidx7.i895 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom.i892, i64 %idxprom6.i894
  %284 = load i8, ptr %arrayidx7.i895, align 1, !tbaa !9
  %conv12.i897 = zext i8 %270 to i32
  %shr13.i898 = lshr i32 %conv12.i897, 4
  %idxprom14.i899 = zext i32 %shr13.i898 to i64
  %and19.i900 = and i32 %conv12.i897, 15
  %idxprom20.i901 = zext i32 %and19.i900 to i64
  %arrayidx21.i902 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom14.i899, i64 %idxprom20.i901
  %285 = load i8, ptr %arrayidx21.i902, align 1, !tbaa !9
  %conv26.i904 = zext i8 %269 to i32
  %shr27.i905 = lshr i32 %conv26.i904, 4
  %idxprom28.i906 = zext i32 %shr27.i905 to i64
  %and33.i907 = and i32 %conv26.i904, 15
  %idxprom34.i908 = zext i32 %and33.i907 to i64
  %arrayidx35.i909 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom28.i906, i64 %idxprom34.i908
  %286 = load i8, ptr %arrayidx35.i909, align 1, !tbaa !9
  %conv40.i911 = zext i8 %268 to i32
  %shr41.i912 = lshr i32 %conv40.i911, 4
  %idxprom42.i913 = zext i32 %shr41.i912 to i64
  %and47.i914 = and i32 %conv40.i911, 15
  %idxprom48.i915 = zext i32 %and47.i914 to i64
  %arrayidx49.i916 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom42.i913, i64 %idxprom48.i915
  %287 = load i8, ptr %arrayidx49.i916, align 1, !tbaa !9
  %conv54.i918 = zext i8 %283 to i32
  %shr55.i919 = lshr i32 %conv54.i918, 4
  %idxprom56.i920 = zext i32 %shr55.i919 to i64
  %and61.i921 = and i32 %conv54.i918, 15
  %idxprom62.i922 = zext i32 %and61.i921 to i64
  %arrayidx63.i923 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom56.i920, i64 %idxprom62.i922
  %288 = load i8, ptr %arrayidx63.i923, align 1, !tbaa !9
  %conv68.i925 = zext i8 %280 to i32
  %shr69.i926 = lshr i32 %conv68.i925, 4
  %idxprom70.i927 = zext i32 %shr69.i926 to i64
  %and75.i928 = and i32 %conv68.i925, 15
  %idxprom76.i929 = zext i32 %and75.i928 to i64
  %arrayidx77.i930 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom70.i927, i64 %idxprom76.i929
  %289 = load i8, ptr %arrayidx77.i930, align 1, !tbaa !9
  %conv82.i932 = zext i8 %281 to i32
  %shr83.i933 = lshr i32 %conv82.i932, 4
  %idxprom84.i934 = zext i32 %shr83.i933 to i64
  %and89.i935 = and i32 %conv82.i932, 15
  %idxprom90.i936 = zext i32 %and89.i935 to i64
  %arrayidx91.i937 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom84.i934, i64 %idxprom90.i936
  %290 = load i8, ptr %arrayidx91.i937, align 1, !tbaa !9
  %conv96.i939 = zext i8 %282 to i32
  %shr97.i940 = lshr i32 %conv96.i939, 4
  %idxprom98.i941 = zext i32 %shr97.i940 to i64
  %and103.i942 = and i32 %conv96.i939, 15
  %idxprom104.i943 = zext i32 %and103.i942 to i64
  %arrayidx105.i944 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom98.i941, i64 %idxprom104.i943
  %291 = load i8, ptr %arrayidx105.i944, align 1, !tbaa !9
  %conv110.i946 = zext i8 %277 to i32
  %shr111.i947 = lshr i32 %conv110.i946, 4
  %idxprom112.i948 = zext i32 %shr111.i947 to i64
  %and117.i949 = and i32 %conv110.i946, 15
  %idxprom118.i950 = zext i32 %and117.i949 to i64
  %arrayidx119.i951 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom112.i948, i64 %idxprom118.i950
  %292 = load i8, ptr %arrayidx119.i951, align 1, !tbaa !9
  %conv124.i953 = zext i8 %279 to i32
  %shr125.i954 = lshr i32 %conv124.i953, 4
  %idxprom126.i955 = zext i32 %shr125.i954 to i64
  %and131.i956 = and i32 %conv124.i953, 15
  %idxprom132.i957 = zext i32 %and131.i956 to i64
  %arrayidx133.i958 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom126.i955, i64 %idxprom132.i957
  %293 = load i8, ptr %arrayidx133.i958, align 1, !tbaa !9
  %conv138.i960 = zext i8 %276 to i32
  %shr139.i961 = lshr i32 %conv138.i960, 4
  %idxprom140.i962 = zext i32 %shr139.i961 to i64
  %and145.i963 = and i32 %conv138.i960, 15
  %idxprom146.i964 = zext i32 %and145.i963 to i64
  %arrayidx147.i965 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom140.i962, i64 %idxprom146.i964
  %294 = load i8, ptr %arrayidx147.i965, align 1, !tbaa !9
  %conv152.i967 = zext i8 %278 to i32
  %shr153.i968 = lshr i32 %conv152.i967, 4
  %idxprom154.i969 = zext i32 %shr153.i968 to i64
  %and159.i970 = and i32 %conv152.i967, 15
  %idxprom160.i971 = zext i32 %and159.i970 to i64
  %arrayidx161.i972 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom154.i969, i64 %idxprom160.i971
  %295 = load i8, ptr %arrayidx161.i972, align 1, !tbaa !9
  %conv166.i974 = zext i8 %273 to i32
  %shr167.i975 = lshr i32 %conv166.i974, 4
  %idxprom168.i976 = zext i32 %shr167.i975 to i64
  %and173.i977 = and i32 %conv166.i974, 15
  %idxprom174.i978 = zext i32 %and173.i977 to i64
  %arrayidx175.i979 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom168.i976, i64 %idxprom174.i978
  %296 = load i8, ptr %arrayidx175.i979, align 1, !tbaa !9
  %conv180.i981 = zext i8 %272 to i32
  %shr181.i982 = lshr i32 %conv180.i981, 4
  %idxprom182.i983 = zext i32 %shr181.i982 to i64
  %and187.i984 = and i32 %conv180.i981, 15
  %idxprom188.i985 = zext i32 %and187.i984 to i64
  %arrayidx189.i986 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom182.i983, i64 %idxprom188.i985
  %297 = load i8, ptr %arrayidx189.i986, align 1, !tbaa !9
  %conv194.i988 = zext i8 %275 to i32
  %shr195.i989 = lshr i32 %conv194.i988, 4
  %idxprom196.i990 = zext i32 %shr195.i989 to i64
  %and201.i991 = and i32 %conv194.i988, 15
  %idxprom202.i992 = zext i32 %and201.i991 to i64
  %arrayidx203.i993 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom196.i990, i64 %idxprom202.i992
  %298 = load i8, ptr %arrayidx203.i993, align 1, !tbaa !9
  %conv208.i995 = zext i8 %274 to i32
  %shr209.i996 = lshr i32 %conv208.i995, 4
  %idxprom210.i997 = zext i32 %shr209.i996 to i64
  %and215.i998 = and i32 %conv208.i995, 15
  %idxprom216.i999 = zext i32 %and215.i998 to i64
  %arrayidx217.i1000 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom210.i997, i64 %idxprom216.i999
  %299 = load i8, ptr %arrayidx217.i1000, align 1, !tbaa !9
  %arrayidx80 = getelementptr inbounds i32, ptr %key, i64 36
  %300 = load i32, ptr %arrayidx80, align 4, !tbaa !32
  %shr.i1001 = lshr i32 %300, 24
  %shr3.i1002 = lshr i32 %300, 16
  %shr7.i1003 = lshr i32 %300, 8
  %301 = trunc i32 %shr.i1001 to i8
  %conv18.i1004 = xor i8 %284, %301
  store i8 %conv18.i1004, ptr %state, align 16, !tbaa !9
  %302 = trunc i32 %shr3.i1002 to i8
  %conv25.i1006 = xor i8 %288, %302
  store i8 %conv25.i1006, ptr %arrayidx4, align 4, !tbaa !9
  %303 = trunc i32 %shr7.i1003 to i8
  %conv32.i1008 = xor i8 %292, %303
  store i8 %conv32.i1008, ptr %arrayidx7, align 8, !tbaa !9
  %304 = trunc i32 %300 to i8
  %conv39.i1010 = xor i8 %296, %304
  store i8 %conv39.i1010, ptr %arrayidx10, align 4, !tbaa !9
  %arrayidx40.i1011 = getelementptr inbounds i32, ptr %key, i64 37
  %305 = load i32, ptr %arrayidx40.i1011, align 4, !tbaa !32
  %shr41.i1012 = lshr i32 %305, 24
  %shr45.i1013 = lshr i32 %305, 16
  %shr49.i1014 = lshr i32 %305, 8
  %306 = trunc i32 %shr41.i1012 to i8
  %conv61.i1016 = xor i8 %285, %306
  store i8 %conv61.i1016, ptr %arrayidx14, align 1, !tbaa !9
  %307 = trunc i32 %shr45.i1013 to i8
  %conv68.i1018 = xor i8 %289, %307
  store i8 %conv68.i1018, ptr %arrayidx17, align 1, !tbaa !9
  %308 = trunc i32 %shr49.i1014 to i8
  %conv75.i1020 = xor i8 %293, %308
  store i8 %conv75.i1020, ptr %arrayidx20, align 1, !tbaa !9
  %309 = trunc i32 %305 to i8
  %conv82.i1022 = xor i8 %297, %309
  store i8 %conv82.i1022, ptr %arrayidx23, align 1, !tbaa !9
  %arrayidx83.i1023 = getelementptr inbounds i32, ptr %key, i64 38
  %310 = load i32, ptr %arrayidx83.i1023, align 4, !tbaa !32
  %shr84.i1024 = lshr i32 %310, 24
  %shr88.i1025 = lshr i32 %310, 16
  %shr92.i1026 = lshr i32 %310, 8
  %311 = trunc i32 %shr84.i1024 to i8
  %conv104.i1028 = xor i8 %286, %311
  store i8 %conv104.i1028, ptr %arrayidx26, align 2, !tbaa !9
  %312 = trunc i32 %shr88.i1025 to i8
  %conv111.i1030 = xor i8 %290, %312
  store i8 %conv111.i1030, ptr %arrayidx29, align 2, !tbaa !9
  %313 = trunc i32 %shr92.i1026 to i8
  %conv118.i1032 = xor i8 %294, %313
  store i8 %conv118.i1032, ptr %arrayidx32, align 2, !tbaa !9
  %314 = trunc i32 %310 to i8
  %conv125.i1034 = xor i8 %298, %314
  store i8 %conv125.i1034, ptr %arrayidx35, align 2, !tbaa !9
  %arrayidx126.i1035 = getelementptr inbounds i32, ptr %key, i64 39
  %315 = load i32, ptr %arrayidx126.i1035, align 4, !tbaa !32
  %shr127.i1036 = lshr i32 %315, 24
  %shr131.i1037 = lshr i32 %315, 16
  %shr135.i1038 = lshr i32 %315, 8
  %316 = trunc i32 %shr127.i1036 to i8
  %conv147.i1040 = xor i8 %287, %316
  store i8 %conv147.i1040, ptr %arrayidx38, align 1, !tbaa !9
  %317 = trunc i32 %shr131.i1037 to i8
  %conv154.i1042 = xor i8 %291, %317
  store i8 %conv154.i1042, ptr %arrayidx41, align 1, !tbaa !9
  %318 = trunc i32 %shr135.i1038 to i8
  %conv161.i1044 = xor i8 %295, %318
  store i8 %conv161.i1044, ptr %arrayidx44, align 1, !tbaa !9
  %319 = trunc i32 %315 to i8
  %conv168.i1046 = xor i8 %299, %319
  store i8 %conv168.i1046, ptr %arrayidx47, align 1, !tbaa !9
  call void @InvMixColumns(ptr noundef nonnull %state)
  %320 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %321 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %322 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %323 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %324 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %325 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %326 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %327 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %328 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %329 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %330 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %331 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %332 = load i8, ptr %state, align 16, !tbaa !9
  %conv.i1059 = zext i8 %332 to i32
  %shr.i1060 = lshr i32 %conv.i1059, 4
  %idxprom.i1061 = zext i32 %shr.i1060 to i64
  %and.i1062 = and i32 %conv.i1059, 15
  %idxprom6.i1063 = zext i32 %and.i1062 to i64
  %arrayidx7.i1064 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom.i1061, i64 %idxprom6.i1063
  %333 = load i8, ptr %arrayidx7.i1064, align 1, !tbaa !9
  %334 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %conv12.i1066 = zext i8 %334 to i32
  %shr13.i1067 = lshr i32 %conv12.i1066, 4
  %idxprom14.i1068 = zext i32 %shr13.i1067 to i64
  %and19.i1069 = and i32 %conv12.i1066, 15
  %idxprom20.i1070 = zext i32 %and19.i1069 to i64
  %arrayidx21.i1071 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom14.i1068, i64 %idxprom20.i1070
  %335 = load i8, ptr %arrayidx21.i1071, align 1, !tbaa !9
  %336 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %conv26.i1073 = zext i8 %336 to i32
  %shr27.i1074 = lshr i32 %conv26.i1073, 4
  %idxprom28.i1075 = zext i32 %shr27.i1074 to i64
  %and33.i1076 = and i32 %conv26.i1073, 15
  %idxprom34.i1077 = zext i32 %and33.i1076 to i64
  %arrayidx35.i1078 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom28.i1075, i64 %idxprom34.i1077
  %337 = load i8, ptr %arrayidx35.i1078, align 1, !tbaa !9
  %338 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %conv40.i1080 = zext i8 %338 to i32
  %shr41.i1081 = lshr i32 %conv40.i1080, 4
  %idxprom42.i1082 = zext i32 %shr41.i1081 to i64
  %and47.i1083 = and i32 %conv40.i1080, 15
  %idxprom48.i1084 = zext i32 %and47.i1083 to i64
  %arrayidx49.i1085 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom42.i1082, i64 %idxprom48.i1084
  %339 = load i8, ptr %arrayidx49.i1085, align 1, !tbaa !9
  %conv54.i1087 = zext i8 %320 to i32
  %shr55.i1088 = lshr i32 %conv54.i1087, 4
  %idxprom56.i1089 = zext i32 %shr55.i1088 to i64
  %and61.i1090 = and i32 %conv54.i1087, 15
  %idxprom62.i1091 = zext i32 %and61.i1090 to i64
  %arrayidx63.i1092 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom56.i1089, i64 %idxprom62.i1091
  %340 = load i8, ptr %arrayidx63.i1092, align 1, !tbaa !9
  %conv68.i1094 = zext i8 %323 to i32
  %shr69.i1095 = lshr i32 %conv68.i1094, 4
  %idxprom70.i1096 = zext i32 %shr69.i1095 to i64
  %and75.i1097 = and i32 %conv68.i1094, 15
  %idxprom76.i1098 = zext i32 %and75.i1097 to i64
  %arrayidx77.i1099 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom70.i1096, i64 %idxprom76.i1098
  %341 = load i8, ptr %arrayidx77.i1099, align 1, !tbaa !9
  %conv82.i1101 = zext i8 %322 to i32
  %shr83.i1102 = lshr i32 %conv82.i1101, 4
  %idxprom84.i1103 = zext i32 %shr83.i1102 to i64
  %and89.i1104 = and i32 %conv82.i1101, 15
  %idxprom90.i1105 = zext i32 %and89.i1104 to i64
  %arrayidx91.i1106 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom84.i1103, i64 %idxprom90.i1105
  %342 = load i8, ptr %arrayidx91.i1106, align 1, !tbaa !9
  %conv96.i1108 = zext i8 %321 to i32
  %shr97.i1109 = lshr i32 %conv96.i1108, 4
  %idxprom98.i1110 = zext i32 %shr97.i1109 to i64
  %and103.i1111 = and i32 %conv96.i1108, 15
  %idxprom104.i1112 = zext i32 %and103.i1111 to i64
  %arrayidx105.i1113 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom98.i1110, i64 %idxprom104.i1112
  %343 = load i8, ptr %arrayidx105.i1113, align 1, !tbaa !9
  %conv110.i1115 = zext i8 %326 to i32
  %shr111.i1116 = lshr i32 %conv110.i1115, 4
  %idxprom112.i1117 = zext i32 %shr111.i1116 to i64
  %and117.i1118 = and i32 %conv110.i1115, 15
  %idxprom118.i1119 = zext i32 %and117.i1118 to i64
  %arrayidx119.i1120 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom112.i1117, i64 %idxprom118.i1119
  %344 = load i8, ptr %arrayidx119.i1120, align 1, !tbaa !9
  %conv124.i1122 = zext i8 %324 to i32
  %shr125.i1123 = lshr i32 %conv124.i1122, 4
  %idxprom126.i1124 = zext i32 %shr125.i1123 to i64
  %and131.i1125 = and i32 %conv124.i1122, 15
  %idxprom132.i1126 = zext i32 %and131.i1125 to i64
  %arrayidx133.i1127 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom126.i1124, i64 %idxprom132.i1126
  %345 = load i8, ptr %arrayidx133.i1127, align 1, !tbaa !9
  %conv138.i1129 = zext i8 %327 to i32
  %shr139.i1130 = lshr i32 %conv138.i1129, 4
  %idxprom140.i1131 = zext i32 %shr139.i1130 to i64
  %and145.i1132 = and i32 %conv138.i1129, 15
  %idxprom146.i1133 = zext i32 %and145.i1132 to i64
  %arrayidx147.i1134 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom140.i1131, i64 %idxprom146.i1133
  %346 = load i8, ptr %arrayidx147.i1134, align 1, !tbaa !9
  %conv152.i1136 = zext i8 %325 to i32
  %shr153.i1137 = lshr i32 %conv152.i1136, 4
  %idxprom154.i1138 = zext i32 %shr153.i1137 to i64
  %and159.i1139 = and i32 %conv152.i1136, 15
  %idxprom160.i1140 = zext i32 %and159.i1139 to i64
  %arrayidx161.i1141 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom154.i1138, i64 %idxprom160.i1140
  %347 = load i8, ptr %arrayidx161.i1141, align 1, !tbaa !9
  %conv166.i1143 = zext i8 %330 to i32
  %shr167.i1144 = lshr i32 %conv166.i1143, 4
  %idxprom168.i1145 = zext i32 %shr167.i1144 to i64
  %and173.i1146 = and i32 %conv166.i1143, 15
  %idxprom174.i1147 = zext i32 %and173.i1146 to i64
  %arrayidx175.i1148 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom168.i1145, i64 %idxprom174.i1147
  %348 = load i8, ptr %arrayidx175.i1148, align 1, !tbaa !9
  %conv180.i1150 = zext i8 %331 to i32
  %shr181.i1151 = lshr i32 %conv180.i1150, 4
  %idxprom182.i1152 = zext i32 %shr181.i1151 to i64
  %and187.i1153 = and i32 %conv180.i1150, 15
  %idxprom188.i1154 = zext i32 %and187.i1153 to i64
  %arrayidx189.i1155 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom182.i1152, i64 %idxprom188.i1154
  %349 = load i8, ptr %arrayidx189.i1155, align 1, !tbaa !9
  %conv194.i1157 = zext i8 %328 to i32
  %shr195.i1158 = lshr i32 %conv194.i1157, 4
  %idxprom196.i1159 = zext i32 %shr195.i1158 to i64
  %and201.i1160 = and i32 %conv194.i1157, 15
  %idxprom202.i1161 = zext i32 %and201.i1160 to i64
  %arrayidx203.i1162 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom196.i1159, i64 %idxprom202.i1161
  %350 = load i8, ptr %arrayidx203.i1162, align 1, !tbaa !9
  %conv208.i1164 = zext i8 %329 to i32
  %shr209.i1165 = lshr i32 %conv208.i1164, 4
  %idxprom210.i1166 = zext i32 %shr209.i1165 to i64
  %and215.i1167 = and i32 %conv208.i1164, 15
  %idxprom216.i1168 = zext i32 %and215.i1167 to i64
  %arrayidx217.i1169 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom210.i1166, i64 %idxprom216.i1168
  %351 = load i8, ptr %arrayidx217.i1169, align 1, !tbaa !9
  %arrayidx85 = getelementptr inbounds i32, ptr %key, i64 32
  %352 = load i32, ptr %arrayidx85, align 4, !tbaa !32
  %shr.i1170 = lshr i32 %352, 24
  %shr3.i1171 = lshr i32 %352, 16
  %shr7.i1172 = lshr i32 %352, 8
  %353 = trunc i32 %shr.i1170 to i8
  %conv18.i1173 = xor i8 %333, %353
  store i8 %conv18.i1173, ptr %state, align 16, !tbaa !9
  %354 = trunc i32 %shr3.i1171 to i8
  %conv25.i1175 = xor i8 %340, %354
  store i8 %conv25.i1175, ptr %arrayidx4, align 4, !tbaa !9
  %355 = trunc i32 %shr7.i1172 to i8
  %conv32.i1177 = xor i8 %344, %355
  store i8 %conv32.i1177, ptr %arrayidx7, align 8, !tbaa !9
  %356 = trunc i32 %352 to i8
  %conv39.i1179 = xor i8 %348, %356
  store i8 %conv39.i1179, ptr %arrayidx10, align 4, !tbaa !9
  %arrayidx40.i1180 = getelementptr inbounds i32, ptr %key, i64 33
  %357 = load i32, ptr %arrayidx40.i1180, align 4, !tbaa !32
  %shr41.i1181 = lshr i32 %357, 24
  %shr45.i1182 = lshr i32 %357, 16
  %shr49.i1183 = lshr i32 %357, 8
  %358 = trunc i32 %shr41.i1181 to i8
  %conv61.i1185 = xor i8 %335, %358
  store i8 %conv61.i1185, ptr %arrayidx14, align 1, !tbaa !9
  %359 = trunc i32 %shr45.i1182 to i8
  %conv68.i1187 = xor i8 %341, %359
  store i8 %conv68.i1187, ptr %arrayidx17, align 1, !tbaa !9
  %360 = trunc i32 %shr49.i1183 to i8
  %conv75.i1189 = xor i8 %345, %360
  store i8 %conv75.i1189, ptr %arrayidx20, align 1, !tbaa !9
  %361 = trunc i32 %357 to i8
  %conv82.i1191 = xor i8 %349, %361
  store i8 %conv82.i1191, ptr %arrayidx23, align 1, !tbaa !9
  %arrayidx83.i1192 = getelementptr inbounds i32, ptr %key, i64 34
  %362 = load i32, ptr %arrayidx83.i1192, align 4, !tbaa !32
  %shr84.i1193 = lshr i32 %362, 24
  %shr88.i1194 = lshr i32 %362, 16
  %shr92.i1195 = lshr i32 %362, 8
  %363 = trunc i32 %shr84.i1193 to i8
  %conv104.i1197 = xor i8 %337, %363
  store i8 %conv104.i1197, ptr %arrayidx26, align 2, !tbaa !9
  %364 = trunc i32 %shr88.i1194 to i8
  %conv111.i1199 = xor i8 %342, %364
  store i8 %conv111.i1199, ptr %arrayidx29, align 2, !tbaa !9
  %365 = trunc i32 %shr92.i1195 to i8
  %conv118.i1201 = xor i8 %346, %365
  store i8 %conv118.i1201, ptr %arrayidx32, align 2, !tbaa !9
  %366 = trunc i32 %362 to i8
  %conv125.i1203 = xor i8 %350, %366
  store i8 %conv125.i1203, ptr %arrayidx35, align 2, !tbaa !9
  %arrayidx126.i1204 = getelementptr inbounds i32, ptr %key, i64 35
  %367 = load i32, ptr %arrayidx126.i1204, align 4, !tbaa !32
  %shr127.i1205 = lshr i32 %367, 24
  %shr131.i1206 = lshr i32 %367, 16
  %shr135.i1207 = lshr i32 %367, 8
  %368 = trunc i32 %shr127.i1205 to i8
  %conv147.i1209 = xor i8 %339, %368
  store i8 %conv147.i1209, ptr %arrayidx38, align 1, !tbaa !9
  %369 = trunc i32 %shr131.i1206 to i8
  %conv154.i1211 = xor i8 %343, %369
  store i8 %conv154.i1211, ptr %arrayidx41, align 1, !tbaa !9
  %370 = trunc i32 %shr135.i1207 to i8
  %conv161.i1213 = xor i8 %347, %370
  store i8 %conv161.i1213, ptr %arrayidx44, align 1, !tbaa !9
  %371 = trunc i32 %367 to i8
  %conv168.i1215 = xor i8 %351, %371
  store i8 %conv168.i1215, ptr %arrayidx47, align 1, !tbaa !9
  call void @InvMixColumns(ptr noundef nonnull %state)
  %372 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %373 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %374 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %375 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %376 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %377 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %378 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %379 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %380 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %381 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %382 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %383 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %384 = load i8, ptr %state, align 16, !tbaa !9
  %conv.i1228 = zext i8 %384 to i32
  %shr.i1229 = lshr i32 %conv.i1228, 4
  %idxprom.i1230 = zext i32 %shr.i1229 to i64
  %and.i1231 = and i32 %conv.i1228, 15
  %idxprom6.i1232 = zext i32 %and.i1231 to i64
  %arrayidx7.i1233 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom.i1230, i64 %idxprom6.i1232
  %385 = load i8, ptr %arrayidx7.i1233, align 1, !tbaa !9
  %386 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %conv12.i1235 = zext i8 %386 to i32
  %shr13.i1236 = lshr i32 %conv12.i1235, 4
  %idxprom14.i1237 = zext i32 %shr13.i1236 to i64
  %and19.i1238 = and i32 %conv12.i1235, 15
  %idxprom20.i1239 = zext i32 %and19.i1238 to i64
  %arrayidx21.i1240 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom14.i1237, i64 %idxprom20.i1239
  %387 = load i8, ptr %arrayidx21.i1240, align 1, !tbaa !9
  %388 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %conv26.i1242 = zext i8 %388 to i32
  %shr27.i1243 = lshr i32 %conv26.i1242, 4
  %idxprom28.i1244 = zext i32 %shr27.i1243 to i64
  %and33.i1245 = and i32 %conv26.i1242, 15
  %idxprom34.i1246 = zext i32 %and33.i1245 to i64
  %arrayidx35.i1247 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom28.i1244, i64 %idxprom34.i1246
  %389 = load i8, ptr %arrayidx35.i1247, align 1, !tbaa !9
  %390 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %conv40.i1249 = zext i8 %390 to i32
  %shr41.i1250 = lshr i32 %conv40.i1249, 4
  %idxprom42.i1251 = zext i32 %shr41.i1250 to i64
  %and47.i1252 = and i32 %conv40.i1249, 15
  %idxprom48.i1253 = zext i32 %and47.i1252 to i64
  %arrayidx49.i1254 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom42.i1251, i64 %idxprom48.i1253
  %391 = load i8, ptr %arrayidx49.i1254, align 1, !tbaa !9
  %conv54.i1256 = zext i8 %372 to i32
  %shr55.i1257 = lshr i32 %conv54.i1256, 4
  %idxprom56.i1258 = zext i32 %shr55.i1257 to i64
  %and61.i1259 = and i32 %conv54.i1256, 15
  %idxprom62.i1260 = zext i32 %and61.i1259 to i64
  %arrayidx63.i1261 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom56.i1258, i64 %idxprom62.i1260
  %392 = load i8, ptr %arrayidx63.i1261, align 1, !tbaa !9
  %conv68.i1263 = zext i8 %375 to i32
  %shr69.i1264 = lshr i32 %conv68.i1263, 4
  %idxprom70.i1265 = zext i32 %shr69.i1264 to i64
  %and75.i1266 = and i32 %conv68.i1263, 15
  %idxprom76.i1267 = zext i32 %and75.i1266 to i64
  %arrayidx77.i1268 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom70.i1265, i64 %idxprom76.i1267
  %393 = load i8, ptr %arrayidx77.i1268, align 1, !tbaa !9
  %conv82.i1270 = zext i8 %374 to i32
  %shr83.i1271 = lshr i32 %conv82.i1270, 4
  %idxprom84.i1272 = zext i32 %shr83.i1271 to i64
  %and89.i1273 = and i32 %conv82.i1270, 15
  %idxprom90.i1274 = zext i32 %and89.i1273 to i64
  %arrayidx91.i1275 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom84.i1272, i64 %idxprom90.i1274
  %394 = load i8, ptr %arrayidx91.i1275, align 1, !tbaa !9
  %conv96.i1277 = zext i8 %373 to i32
  %shr97.i1278 = lshr i32 %conv96.i1277, 4
  %idxprom98.i1279 = zext i32 %shr97.i1278 to i64
  %and103.i1280 = and i32 %conv96.i1277, 15
  %idxprom104.i1281 = zext i32 %and103.i1280 to i64
  %arrayidx105.i1282 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom98.i1279, i64 %idxprom104.i1281
  %395 = load i8, ptr %arrayidx105.i1282, align 1, !tbaa !9
  %conv110.i1284 = zext i8 %378 to i32
  %shr111.i1285 = lshr i32 %conv110.i1284, 4
  %idxprom112.i1286 = zext i32 %shr111.i1285 to i64
  %and117.i1287 = and i32 %conv110.i1284, 15
  %idxprom118.i1288 = zext i32 %and117.i1287 to i64
  %arrayidx119.i1289 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom112.i1286, i64 %idxprom118.i1288
  %396 = load i8, ptr %arrayidx119.i1289, align 1, !tbaa !9
  %conv124.i1291 = zext i8 %376 to i32
  %shr125.i1292 = lshr i32 %conv124.i1291, 4
  %idxprom126.i1293 = zext i32 %shr125.i1292 to i64
  %and131.i1294 = and i32 %conv124.i1291, 15
  %idxprom132.i1295 = zext i32 %and131.i1294 to i64
  %arrayidx133.i1296 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom126.i1293, i64 %idxprom132.i1295
  %397 = load i8, ptr %arrayidx133.i1296, align 1, !tbaa !9
  %conv138.i1298 = zext i8 %379 to i32
  %shr139.i1299 = lshr i32 %conv138.i1298, 4
  %idxprom140.i1300 = zext i32 %shr139.i1299 to i64
  %and145.i1301 = and i32 %conv138.i1298, 15
  %idxprom146.i1302 = zext i32 %and145.i1301 to i64
  %arrayidx147.i1303 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom140.i1300, i64 %idxprom146.i1302
  %398 = load i8, ptr %arrayidx147.i1303, align 1, !tbaa !9
  %conv152.i1305 = zext i8 %377 to i32
  %shr153.i1306 = lshr i32 %conv152.i1305, 4
  %idxprom154.i1307 = zext i32 %shr153.i1306 to i64
  %and159.i1308 = and i32 %conv152.i1305, 15
  %idxprom160.i1309 = zext i32 %and159.i1308 to i64
  %arrayidx161.i1310 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom154.i1307, i64 %idxprom160.i1309
  %399 = load i8, ptr %arrayidx161.i1310, align 1, !tbaa !9
  %conv166.i1312 = zext i8 %382 to i32
  %shr167.i1313 = lshr i32 %conv166.i1312, 4
  %idxprom168.i1314 = zext i32 %shr167.i1313 to i64
  %and173.i1315 = and i32 %conv166.i1312, 15
  %idxprom174.i1316 = zext i32 %and173.i1315 to i64
  %arrayidx175.i1317 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom168.i1314, i64 %idxprom174.i1316
  %400 = load i8, ptr %arrayidx175.i1317, align 1, !tbaa !9
  %conv180.i1319 = zext i8 %383 to i32
  %shr181.i1320 = lshr i32 %conv180.i1319, 4
  %idxprom182.i1321 = zext i32 %shr181.i1320 to i64
  %and187.i1322 = and i32 %conv180.i1319, 15
  %idxprom188.i1323 = zext i32 %and187.i1322 to i64
  %arrayidx189.i1324 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom182.i1321, i64 %idxprom188.i1323
  %401 = load i8, ptr %arrayidx189.i1324, align 1, !tbaa !9
  %conv194.i1326 = zext i8 %380 to i32
  %shr195.i1327 = lshr i32 %conv194.i1326, 4
  %idxprom196.i1328 = zext i32 %shr195.i1327 to i64
  %and201.i1329 = and i32 %conv194.i1326, 15
  %idxprom202.i1330 = zext i32 %and201.i1329 to i64
  %arrayidx203.i1331 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom196.i1328, i64 %idxprom202.i1330
  %402 = load i8, ptr %arrayidx203.i1331, align 1, !tbaa !9
  %conv208.i1333 = zext i8 %381 to i32
  %shr209.i1334 = lshr i32 %conv208.i1333, 4
  %idxprom210.i1335 = zext i32 %shr209.i1334 to i64
  %and215.i1336 = and i32 %conv208.i1333, 15
  %idxprom216.i1337 = zext i32 %and215.i1336 to i64
  %arrayidx217.i1338 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom210.i1335, i64 %idxprom216.i1337
  %403 = load i8, ptr %arrayidx217.i1338, align 1, !tbaa !9
  %arrayidx90 = getelementptr inbounds i32, ptr %key, i64 28
  %404 = load i32, ptr %arrayidx90, align 4, !tbaa !32
  %shr.i1339 = lshr i32 %404, 24
  %shr3.i1340 = lshr i32 %404, 16
  %shr7.i1341 = lshr i32 %404, 8
  %405 = trunc i32 %shr.i1339 to i8
  %conv18.i1342 = xor i8 %385, %405
  store i8 %conv18.i1342, ptr %state, align 16, !tbaa !9
  %406 = trunc i32 %shr3.i1340 to i8
  %conv25.i1344 = xor i8 %392, %406
  store i8 %conv25.i1344, ptr %arrayidx4, align 4, !tbaa !9
  %407 = trunc i32 %shr7.i1341 to i8
  %conv32.i1346 = xor i8 %396, %407
  store i8 %conv32.i1346, ptr %arrayidx7, align 8, !tbaa !9
  %408 = trunc i32 %404 to i8
  %conv39.i1348 = xor i8 %400, %408
  store i8 %conv39.i1348, ptr %arrayidx10, align 4, !tbaa !9
  %arrayidx40.i1349 = getelementptr inbounds i32, ptr %key, i64 29
  %409 = load i32, ptr %arrayidx40.i1349, align 4, !tbaa !32
  %shr41.i1350 = lshr i32 %409, 24
  %shr45.i1351 = lshr i32 %409, 16
  %shr49.i1352 = lshr i32 %409, 8
  %410 = trunc i32 %shr41.i1350 to i8
  %conv61.i1354 = xor i8 %387, %410
  store i8 %conv61.i1354, ptr %arrayidx14, align 1, !tbaa !9
  %411 = trunc i32 %shr45.i1351 to i8
  %conv68.i1356 = xor i8 %393, %411
  store i8 %conv68.i1356, ptr %arrayidx17, align 1, !tbaa !9
  %412 = trunc i32 %shr49.i1352 to i8
  %conv75.i1358 = xor i8 %397, %412
  store i8 %conv75.i1358, ptr %arrayidx20, align 1, !tbaa !9
  %413 = trunc i32 %409 to i8
  %conv82.i1360 = xor i8 %401, %413
  store i8 %conv82.i1360, ptr %arrayidx23, align 1, !tbaa !9
  %arrayidx83.i1361 = getelementptr inbounds i32, ptr %key, i64 30
  %414 = load i32, ptr %arrayidx83.i1361, align 4, !tbaa !32
  %shr84.i1362 = lshr i32 %414, 24
  %shr88.i1363 = lshr i32 %414, 16
  %shr92.i1364 = lshr i32 %414, 8
  %415 = trunc i32 %shr84.i1362 to i8
  %conv104.i1366 = xor i8 %389, %415
  store i8 %conv104.i1366, ptr %arrayidx26, align 2, !tbaa !9
  %416 = trunc i32 %shr88.i1363 to i8
  %conv111.i1368 = xor i8 %394, %416
  store i8 %conv111.i1368, ptr %arrayidx29, align 2, !tbaa !9
  %417 = trunc i32 %shr92.i1364 to i8
  %conv118.i1370 = xor i8 %398, %417
  store i8 %conv118.i1370, ptr %arrayidx32, align 2, !tbaa !9
  %418 = trunc i32 %414 to i8
  %conv125.i1372 = xor i8 %402, %418
  store i8 %conv125.i1372, ptr %arrayidx35, align 2, !tbaa !9
  %arrayidx126.i1373 = getelementptr inbounds i32, ptr %key, i64 31
  %419 = load i32, ptr %arrayidx126.i1373, align 4, !tbaa !32
  %shr127.i1374 = lshr i32 %419, 24
  %shr131.i1375 = lshr i32 %419, 16
  %shr135.i1376 = lshr i32 %419, 8
  %420 = trunc i32 %shr127.i1374 to i8
  %conv147.i1378 = xor i8 %391, %420
  store i8 %conv147.i1378, ptr %arrayidx38, align 1, !tbaa !9
  %421 = trunc i32 %shr131.i1375 to i8
  %conv154.i1380 = xor i8 %395, %421
  store i8 %conv154.i1380, ptr %arrayidx41, align 1, !tbaa !9
  %422 = trunc i32 %shr135.i1376 to i8
  %conv161.i1382 = xor i8 %399, %422
  store i8 %conv161.i1382, ptr %arrayidx44, align 1, !tbaa !9
  %423 = trunc i32 %419 to i8
  %conv168.i1384 = xor i8 %403, %423
  store i8 %conv168.i1384, ptr %arrayidx47, align 1, !tbaa !9
  call void @InvMixColumns(ptr noundef nonnull %state)
  %424 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %425 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %426 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %427 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %428 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %429 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %430 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %431 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %432 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %433 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %434 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %435 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %436 = load i8, ptr %state, align 16, !tbaa !9
  %conv.i1397 = zext i8 %436 to i32
  %shr.i1398 = lshr i32 %conv.i1397, 4
  %idxprom.i1399 = zext i32 %shr.i1398 to i64
  %and.i1400 = and i32 %conv.i1397, 15
  %idxprom6.i1401 = zext i32 %and.i1400 to i64
  %arrayidx7.i1402 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom.i1399, i64 %idxprom6.i1401
  %437 = load i8, ptr %arrayidx7.i1402, align 1, !tbaa !9
  %438 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %conv12.i1404 = zext i8 %438 to i32
  %shr13.i1405 = lshr i32 %conv12.i1404, 4
  %idxprom14.i1406 = zext i32 %shr13.i1405 to i64
  %and19.i1407 = and i32 %conv12.i1404, 15
  %idxprom20.i1408 = zext i32 %and19.i1407 to i64
  %arrayidx21.i1409 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom14.i1406, i64 %idxprom20.i1408
  %439 = load i8, ptr %arrayidx21.i1409, align 1, !tbaa !9
  %440 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %conv26.i1411 = zext i8 %440 to i32
  %shr27.i1412 = lshr i32 %conv26.i1411, 4
  %idxprom28.i1413 = zext i32 %shr27.i1412 to i64
  %and33.i1414 = and i32 %conv26.i1411, 15
  %idxprom34.i1415 = zext i32 %and33.i1414 to i64
  %arrayidx35.i1416 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom28.i1413, i64 %idxprom34.i1415
  %441 = load i8, ptr %arrayidx35.i1416, align 1, !tbaa !9
  %442 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %conv40.i1418 = zext i8 %442 to i32
  %shr41.i1419 = lshr i32 %conv40.i1418, 4
  %idxprom42.i1420 = zext i32 %shr41.i1419 to i64
  %and47.i1421 = and i32 %conv40.i1418, 15
  %idxprom48.i1422 = zext i32 %and47.i1421 to i64
  %arrayidx49.i1423 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom42.i1420, i64 %idxprom48.i1422
  %443 = load i8, ptr %arrayidx49.i1423, align 1, !tbaa !9
  %conv54.i1425 = zext i8 %424 to i32
  %shr55.i1426 = lshr i32 %conv54.i1425, 4
  %idxprom56.i1427 = zext i32 %shr55.i1426 to i64
  %and61.i1428 = and i32 %conv54.i1425, 15
  %idxprom62.i1429 = zext i32 %and61.i1428 to i64
  %arrayidx63.i1430 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom56.i1427, i64 %idxprom62.i1429
  %444 = load i8, ptr %arrayidx63.i1430, align 1, !tbaa !9
  %conv68.i1432 = zext i8 %427 to i32
  %shr69.i1433 = lshr i32 %conv68.i1432, 4
  %idxprom70.i1434 = zext i32 %shr69.i1433 to i64
  %and75.i1435 = and i32 %conv68.i1432, 15
  %idxprom76.i1436 = zext i32 %and75.i1435 to i64
  %arrayidx77.i1437 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom70.i1434, i64 %idxprom76.i1436
  %445 = load i8, ptr %arrayidx77.i1437, align 1, !tbaa !9
  %conv82.i1439 = zext i8 %426 to i32
  %shr83.i1440 = lshr i32 %conv82.i1439, 4
  %idxprom84.i1441 = zext i32 %shr83.i1440 to i64
  %and89.i1442 = and i32 %conv82.i1439, 15
  %idxprom90.i1443 = zext i32 %and89.i1442 to i64
  %arrayidx91.i1444 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom84.i1441, i64 %idxprom90.i1443
  %446 = load i8, ptr %arrayidx91.i1444, align 1, !tbaa !9
  %conv96.i1446 = zext i8 %425 to i32
  %shr97.i1447 = lshr i32 %conv96.i1446, 4
  %idxprom98.i1448 = zext i32 %shr97.i1447 to i64
  %and103.i1449 = and i32 %conv96.i1446, 15
  %idxprom104.i1450 = zext i32 %and103.i1449 to i64
  %arrayidx105.i1451 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom98.i1448, i64 %idxprom104.i1450
  %447 = load i8, ptr %arrayidx105.i1451, align 1, !tbaa !9
  %conv110.i1453 = zext i8 %430 to i32
  %shr111.i1454 = lshr i32 %conv110.i1453, 4
  %idxprom112.i1455 = zext i32 %shr111.i1454 to i64
  %and117.i1456 = and i32 %conv110.i1453, 15
  %idxprom118.i1457 = zext i32 %and117.i1456 to i64
  %arrayidx119.i1458 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom112.i1455, i64 %idxprom118.i1457
  %448 = load i8, ptr %arrayidx119.i1458, align 1, !tbaa !9
  %conv124.i1460 = zext i8 %428 to i32
  %shr125.i1461 = lshr i32 %conv124.i1460, 4
  %idxprom126.i1462 = zext i32 %shr125.i1461 to i64
  %and131.i1463 = and i32 %conv124.i1460, 15
  %idxprom132.i1464 = zext i32 %and131.i1463 to i64
  %arrayidx133.i1465 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom126.i1462, i64 %idxprom132.i1464
  %449 = load i8, ptr %arrayidx133.i1465, align 1, !tbaa !9
  %conv138.i1467 = zext i8 %431 to i32
  %shr139.i1468 = lshr i32 %conv138.i1467, 4
  %idxprom140.i1469 = zext i32 %shr139.i1468 to i64
  %and145.i1470 = and i32 %conv138.i1467, 15
  %idxprom146.i1471 = zext i32 %and145.i1470 to i64
  %arrayidx147.i1472 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom140.i1469, i64 %idxprom146.i1471
  %450 = load i8, ptr %arrayidx147.i1472, align 1, !tbaa !9
  %conv152.i1474 = zext i8 %429 to i32
  %shr153.i1475 = lshr i32 %conv152.i1474, 4
  %idxprom154.i1476 = zext i32 %shr153.i1475 to i64
  %and159.i1477 = and i32 %conv152.i1474, 15
  %idxprom160.i1478 = zext i32 %and159.i1477 to i64
  %arrayidx161.i1479 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom154.i1476, i64 %idxprom160.i1478
  %451 = load i8, ptr %arrayidx161.i1479, align 1, !tbaa !9
  %conv166.i1481 = zext i8 %434 to i32
  %shr167.i1482 = lshr i32 %conv166.i1481, 4
  %idxprom168.i1483 = zext i32 %shr167.i1482 to i64
  %and173.i1484 = and i32 %conv166.i1481, 15
  %idxprom174.i1485 = zext i32 %and173.i1484 to i64
  %arrayidx175.i1486 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom168.i1483, i64 %idxprom174.i1485
  %452 = load i8, ptr %arrayidx175.i1486, align 1, !tbaa !9
  %conv180.i1488 = zext i8 %435 to i32
  %shr181.i1489 = lshr i32 %conv180.i1488, 4
  %idxprom182.i1490 = zext i32 %shr181.i1489 to i64
  %and187.i1491 = and i32 %conv180.i1488, 15
  %idxprom188.i1492 = zext i32 %and187.i1491 to i64
  %arrayidx189.i1493 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom182.i1490, i64 %idxprom188.i1492
  %453 = load i8, ptr %arrayidx189.i1493, align 1, !tbaa !9
  %conv194.i1495 = zext i8 %432 to i32
  %shr195.i1496 = lshr i32 %conv194.i1495, 4
  %idxprom196.i1497 = zext i32 %shr195.i1496 to i64
  %and201.i1498 = and i32 %conv194.i1495, 15
  %idxprom202.i1499 = zext i32 %and201.i1498 to i64
  %arrayidx203.i1500 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom196.i1497, i64 %idxprom202.i1499
  %454 = load i8, ptr %arrayidx203.i1500, align 1, !tbaa !9
  %conv208.i1502 = zext i8 %433 to i32
  %shr209.i1503 = lshr i32 %conv208.i1502, 4
  %idxprom210.i1504 = zext i32 %shr209.i1503 to i64
  %and215.i1505 = and i32 %conv208.i1502, 15
  %idxprom216.i1506 = zext i32 %and215.i1505 to i64
  %arrayidx217.i1507 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom210.i1504, i64 %idxprom216.i1506
  %455 = load i8, ptr %arrayidx217.i1507, align 1, !tbaa !9
  %arrayidx95 = getelementptr inbounds i32, ptr %key, i64 24
  %456 = load i32, ptr %arrayidx95, align 4, !tbaa !32
  %shr.i1508 = lshr i32 %456, 24
  %shr3.i1509 = lshr i32 %456, 16
  %shr7.i1510 = lshr i32 %456, 8
  %457 = trunc i32 %shr.i1508 to i8
  %conv18.i1511 = xor i8 %437, %457
  store i8 %conv18.i1511, ptr %state, align 16, !tbaa !9
  %458 = trunc i32 %shr3.i1509 to i8
  %conv25.i1513 = xor i8 %444, %458
  store i8 %conv25.i1513, ptr %arrayidx4, align 4, !tbaa !9
  %459 = trunc i32 %shr7.i1510 to i8
  %conv32.i1515 = xor i8 %448, %459
  store i8 %conv32.i1515, ptr %arrayidx7, align 8, !tbaa !9
  %460 = trunc i32 %456 to i8
  %conv39.i1517 = xor i8 %452, %460
  store i8 %conv39.i1517, ptr %arrayidx10, align 4, !tbaa !9
  %arrayidx40.i1518 = getelementptr inbounds i32, ptr %key, i64 25
  %461 = load i32, ptr %arrayidx40.i1518, align 4, !tbaa !32
  %shr41.i1519 = lshr i32 %461, 24
  %shr45.i1520 = lshr i32 %461, 16
  %shr49.i1521 = lshr i32 %461, 8
  %462 = trunc i32 %shr41.i1519 to i8
  %conv61.i1523 = xor i8 %439, %462
  store i8 %conv61.i1523, ptr %arrayidx14, align 1, !tbaa !9
  %463 = trunc i32 %shr45.i1520 to i8
  %conv68.i1525 = xor i8 %445, %463
  store i8 %conv68.i1525, ptr %arrayidx17, align 1, !tbaa !9
  %464 = trunc i32 %shr49.i1521 to i8
  %conv75.i1527 = xor i8 %449, %464
  store i8 %conv75.i1527, ptr %arrayidx20, align 1, !tbaa !9
  %465 = trunc i32 %461 to i8
  %conv82.i1529 = xor i8 %453, %465
  store i8 %conv82.i1529, ptr %arrayidx23, align 1, !tbaa !9
  %arrayidx83.i1530 = getelementptr inbounds i32, ptr %key, i64 26
  %466 = load i32, ptr %arrayidx83.i1530, align 4, !tbaa !32
  %shr84.i1531 = lshr i32 %466, 24
  %shr88.i1532 = lshr i32 %466, 16
  %shr92.i1533 = lshr i32 %466, 8
  %467 = trunc i32 %shr84.i1531 to i8
  %conv104.i1535 = xor i8 %441, %467
  store i8 %conv104.i1535, ptr %arrayidx26, align 2, !tbaa !9
  %468 = trunc i32 %shr88.i1532 to i8
  %conv111.i1537 = xor i8 %446, %468
  store i8 %conv111.i1537, ptr %arrayidx29, align 2, !tbaa !9
  %469 = trunc i32 %shr92.i1533 to i8
  %conv118.i1539 = xor i8 %450, %469
  store i8 %conv118.i1539, ptr %arrayidx32, align 2, !tbaa !9
  %470 = trunc i32 %466 to i8
  %conv125.i1541 = xor i8 %454, %470
  store i8 %conv125.i1541, ptr %arrayidx35, align 2, !tbaa !9
  %arrayidx126.i1542 = getelementptr inbounds i32, ptr %key, i64 27
  %471 = load i32, ptr %arrayidx126.i1542, align 4, !tbaa !32
  %shr127.i1543 = lshr i32 %471, 24
  %shr131.i1544 = lshr i32 %471, 16
  %shr135.i1545 = lshr i32 %471, 8
  %472 = trunc i32 %shr127.i1543 to i8
  %conv147.i1547 = xor i8 %443, %472
  store i8 %conv147.i1547, ptr %arrayidx38, align 1, !tbaa !9
  %473 = trunc i32 %shr131.i1544 to i8
  %conv154.i1549 = xor i8 %447, %473
  store i8 %conv154.i1549, ptr %arrayidx41, align 1, !tbaa !9
  %474 = trunc i32 %shr135.i1545 to i8
  %conv161.i1551 = xor i8 %451, %474
  store i8 %conv161.i1551, ptr %arrayidx44, align 1, !tbaa !9
  %475 = trunc i32 %471 to i8
  %conv168.i1553 = xor i8 %455, %475
  store i8 %conv168.i1553, ptr %arrayidx47, align 1, !tbaa !9
  call void @InvMixColumns(ptr noundef nonnull %state)
  %476 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %477 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %478 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %479 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %480 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %481 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %482 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %483 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %484 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %485 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %486 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %487 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %488 = load i8, ptr %state, align 16, !tbaa !9
  %conv.i1566 = zext i8 %488 to i32
  %shr.i1567 = lshr i32 %conv.i1566, 4
  %idxprom.i1568 = zext i32 %shr.i1567 to i64
  %and.i1569 = and i32 %conv.i1566, 15
  %idxprom6.i1570 = zext i32 %and.i1569 to i64
  %arrayidx7.i1571 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom.i1568, i64 %idxprom6.i1570
  %489 = load i8, ptr %arrayidx7.i1571, align 1, !tbaa !9
  %490 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %conv12.i1573 = zext i8 %490 to i32
  %shr13.i1574 = lshr i32 %conv12.i1573, 4
  %idxprom14.i1575 = zext i32 %shr13.i1574 to i64
  %and19.i1576 = and i32 %conv12.i1573, 15
  %idxprom20.i1577 = zext i32 %and19.i1576 to i64
  %arrayidx21.i1578 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom14.i1575, i64 %idxprom20.i1577
  %491 = load i8, ptr %arrayidx21.i1578, align 1, !tbaa !9
  %492 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %conv26.i1580 = zext i8 %492 to i32
  %shr27.i1581 = lshr i32 %conv26.i1580, 4
  %idxprom28.i1582 = zext i32 %shr27.i1581 to i64
  %and33.i1583 = and i32 %conv26.i1580, 15
  %idxprom34.i1584 = zext i32 %and33.i1583 to i64
  %arrayidx35.i1585 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom28.i1582, i64 %idxprom34.i1584
  %493 = load i8, ptr %arrayidx35.i1585, align 1, !tbaa !9
  %494 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %conv40.i1587 = zext i8 %494 to i32
  %shr41.i1588 = lshr i32 %conv40.i1587, 4
  %idxprom42.i1589 = zext i32 %shr41.i1588 to i64
  %and47.i1590 = and i32 %conv40.i1587, 15
  %idxprom48.i1591 = zext i32 %and47.i1590 to i64
  %arrayidx49.i1592 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom42.i1589, i64 %idxprom48.i1591
  %495 = load i8, ptr %arrayidx49.i1592, align 1, !tbaa !9
  %conv54.i1594 = zext i8 %476 to i32
  %shr55.i1595 = lshr i32 %conv54.i1594, 4
  %idxprom56.i1596 = zext i32 %shr55.i1595 to i64
  %and61.i1597 = and i32 %conv54.i1594, 15
  %idxprom62.i1598 = zext i32 %and61.i1597 to i64
  %arrayidx63.i1599 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom56.i1596, i64 %idxprom62.i1598
  %496 = load i8, ptr %arrayidx63.i1599, align 1, !tbaa !9
  %conv68.i1601 = zext i8 %479 to i32
  %shr69.i1602 = lshr i32 %conv68.i1601, 4
  %idxprom70.i1603 = zext i32 %shr69.i1602 to i64
  %and75.i1604 = and i32 %conv68.i1601, 15
  %idxprom76.i1605 = zext i32 %and75.i1604 to i64
  %arrayidx77.i1606 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom70.i1603, i64 %idxprom76.i1605
  %497 = load i8, ptr %arrayidx77.i1606, align 1, !tbaa !9
  %conv82.i1608 = zext i8 %478 to i32
  %shr83.i1609 = lshr i32 %conv82.i1608, 4
  %idxprom84.i1610 = zext i32 %shr83.i1609 to i64
  %and89.i1611 = and i32 %conv82.i1608, 15
  %idxprom90.i1612 = zext i32 %and89.i1611 to i64
  %arrayidx91.i1613 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom84.i1610, i64 %idxprom90.i1612
  %498 = load i8, ptr %arrayidx91.i1613, align 1, !tbaa !9
  %conv96.i1615 = zext i8 %477 to i32
  %shr97.i1616 = lshr i32 %conv96.i1615, 4
  %idxprom98.i1617 = zext i32 %shr97.i1616 to i64
  %and103.i1618 = and i32 %conv96.i1615, 15
  %idxprom104.i1619 = zext i32 %and103.i1618 to i64
  %arrayidx105.i1620 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom98.i1617, i64 %idxprom104.i1619
  %499 = load i8, ptr %arrayidx105.i1620, align 1, !tbaa !9
  %conv110.i1622 = zext i8 %482 to i32
  %shr111.i1623 = lshr i32 %conv110.i1622, 4
  %idxprom112.i1624 = zext i32 %shr111.i1623 to i64
  %and117.i1625 = and i32 %conv110.i1622, 15
  %idxprom118.i1626 = zext i32 %and117.i1625 to i64
  %arrayidx119.i1627 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom112.i1624, i64 %idxprom118.i1626
  %500 = load i8, ptr %arrayidx119.i1627, align 1, !tbaa !9
  %conv124.i1629 = zext i8 %480 to i32
  %shr125.i1630 = lshr i32 %conv124.i1629, 4
  %idxprom126.i1631 = zext i32 %shr125.i1630 to i64
  %and131.i1632 = and i32 %conv124.i1629, 15
  %idxprom132.i1633 = zext i32 %and131.i1632 to i64
  %arrayidx133.i1634 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom126.i1631, i64 %idxprom132.i1633
  %501 = load i8, ptr %arrayidx133.i1634, align 1, !tbaa !9
  %conv138.i1636 = zext i8 %483 to i32
  %shr139.i1637 = lshr i32 %conv138.i1636, 4
  %idxprom140.i1638 = zext i32 %shr139.i1637 to i64
  %and145.i1639 = and i32 %conv138.i1636, 15
  %idxprom146.i1640 = zext i32 %and145.i1639 to i64
  %arrayidx147.i1641 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom140.i1638, i64 %idxprom146.i1640
  %502 = load i8, ptr %arrayidx147.i1641, align 1, !tbaa !9
  %conv152.i1643 = zext i8 %481 to i32
  %shr153.i1644 = lshr i32 %conv152.i1643, 4
  %idxprom154.i1645 = zext i32 %shr153.i1644 to i64
  %and159.i1646 = and i32 %conv152.i1643, 15
  %idxprom160.i1647 = zext i32 %and159.i1646 to i64
  %arrayidx161.i1648 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom154.i1645, i64 %idxprom160.i1647
  %503 = load i8, ptr %arrayidx161.i1648, align 1, !tbaa !9
  %conv166.i1650 = zext i8 %486 to i32
  %shr167.i1651 = lshr i32 %conv166.i1650, 4
  %idxprom168.i1652 = zext i32 %shr167.i1651 to i64
  %and173.i1653 = and i32 %conv166.i1650, 15
  %idxprom174.i1654 = zext i32 %and173.i1653 to i64
  %arrayidx175.i1655 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom168.i1652, i64 %idxprom174.i1654
  %504 = load i8, ptr %arrayidx175.i1655, align 1, !tbaa !9
  %conv180.i1657 = zext i8 %487 to i32
  %shr181.i1658 = lshr i32 %conv180.i1657, 4
  %idxprom182.i1659 = zext i32 %shr181.i1658 to i64
  %and187.i1660 = and i32 %conv180.i1657, 15
  %idxprom188.i1661 = zext i32 %and187.i1660 to i64
  %arrayidx189.i1662 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom182.i1659, i64 %idxprom188.i1661
  %505 = load i8, ptr %arrayidx189.i1662, align 1, !tbaa !9
  %conv194.i1664 = zext i8 %484 to i32
  %shr195.i1665 = lshr i32 %conv194.i1664, 4
  %idxprom196.i1666 = zext i32 %shr195.i1665 to i64
  %and201.i1667 = and i32 %conv194.i1664, 15
  %idxprom202.i1668 = zext i32 %and201.i1667 to i64
  %arrayidx203.i1669 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom196.i1666, i64 %idxprom202.i1668
  %506 = load i8, ptr %arrayidx203.i1669, align 1, !tbaa !9
  %conv208.i1671 = zext i8 %485 to i32
  %shr209.i1672 = lshr i32 %conv208.i1671, 4
  %idxprom210.i1673 = zext i32 %shr209.i1672 to i64
  %and215.i1674 = and i32 %conv208.i1671, 15
  %idxprom216.i1675 = zext i32 %and215.i1674 to i64
  %arrayidx217.i1676 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom210.i1673, i64 %idxprom216.i1675
  %507 = load i8, ptr %arrayidx217.i1676, align 1, !tbaa !9
  %arrayidx100 = getelementptr inbounds i32, ptr %key, i64 20
  %508 = load i32, ptr %arrayidx100, align 4, !tbaa !32
  %shr.i1677 = lshr i32 %508, 24
  %shr3.i1678 = lshr i32 %508, 16
  %shr7.i1679 = lshr i32 %508, 8
  %509 = trunc i32 %shr.i1677 to i8
  %conv18.i1680 = xor i8 %489, %509
  store i8 %conv18.i1680, ptr %state, align 16, !tbaa !9
  %510 = trunc i32 %shr3.i1678 to i8
  %conv25.i1682 = xor i8 %496, %510
  store i8 %conv25.i1682, ptr %arrayidx4, align 4, !tbaa !9
  %511 = trunc i32 %shr7.i1679 to i8
  %conv32.i1684 = xor i8 %500, %511
  store i8 %conv32.i1684, ptr %arrayidx7, align 8, !tbaa !9
  %512 = trunc i32 %508 to i8
  %conv39.i1686 = xor i8 %504, %512
  store i8 %conv39.i1686, ptr %arrayidx10, align 4, !tbaa !9
  %arrayidx40.i1687 = getelementptr inbounds i32, ptr %key, i64 21
  %513 = load i32, ptr %arrayidx40.i1687, align 4, !tbaa !32
  %shr41.i1688 = lshr i32 %513, 24
  %shr45.i1689 = lshr i32 %513, 16
  %shr49.i1690 = lshr i32 %513, 8
  %514 = trunc i32 %shr41.i1688 to i8
  %conv61.i1692 = xor i8 %491, %514
  store i8 %conv61.i1692, ptr %arrayidx14, align 1, !tbaa !9
  %515 = trunc i32 %shr45.i1689 to i8
  %conv68.i1694 = xor i8 %497, %515
  store i8 %conv68.i1694, ptr %arrayidx17, align 1, !tbaa !9
  %516 = trunc i32 %shr49.i1690 to i8
  %conv75.i1696 = xor i8 %501, %516
  store i8 %conv75.i1696, ptr %arrayidx20, align 1, !tbaa !9
  %517 = trunc i32 %513 to i8
  %conv82.i1698 = xor i8 %505, %517
  store i8 %conv82.i1698, ptr %arrayidx23, align 1, !tbaa !9
  %arrayidx83.i1699 = getelementptr inbounds i32, ptr %key, i64 22
  %518 = load i32, ptr %arrayidx83.i1699, align 4, !tbaa !32
  %shr84.i1700 = lshr i32 %518, 24
  %shr88.i1701 = lshr i32 %518, 16
  %shr92.i1702 = lshr i32 %518, 8
  %519 = trunc i32 %shr84.i1700 to i8
  %conv104.i1704 = xor i8 %493, %519
  store i8 %conv104.i1704, ptr %arrayidx26, align 2, !tbaa !9
  %520 = trunc i32 %shr88.i1701 to i8
  %conv111.i1706 = xor i8 %498, %520
  store i8 %conv111.i1706, ptr %arrayidx29, align 2, !tbaa !9
  %521 = trunc i32 %shr92.i1702 to i8
  %conv118.i1708 = xor i8 %502, %521
  store i8 %conv118.i1708, ptr %arrayidx32, align 2, !tbaa !9
  %522 = trunc i32 %518 to i8
  %conv125.i1710 = xor i8 %506, %522
  store i8 %conv125.i1710, ptr %arrayidx35, align 2, !tbaa !9
  %arrayidx126.i1711 = getelementptr inbounds i32, ptr %key, i64 23
  %523 = load i32, ptr %arrayidx126.i1711, align 4, !tbaa !32
  %shr127.i1712 = lshr i32 %523, 24
  %shr131.i1713 = lshr i32 %523, 16
  %shr135.i1714 = lshr i32 %523, 8
  %524 = trunc i32 %shr127.i1712 to i8
  %conv147.i1716 = xor i8 %495, %524
  store i8 %conv147.i1716, ptr %arrayidx38, align 1, !tbaa !9
  %525 = trunc i32 %shr131.i1713 to i8
  %conv154.i1718 = xor i8 %499, %525
  store i8 %conv154.i1718, ptr %arrayidx41, align 1, !tbaa !9
  %526 = trunc i32 %shr135.i1714 to i8
  %conv161.i1720 = xor i8 %503, %526
  store i8 %conv161.i1720, ptr %arrayidx44, align 1, !tbaa !9
  %527 = trunc i32 %523 to i8
  %conv168.i1722 = xor i8 %507, %527
  store i8 %conv168.i1722, ptr %arrayidx47, align 1, !tbaa !9
  call void @InvMixColumns(ptr noundef nonnull %state)
  %528 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %529 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %530 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %531 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %532 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %533 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %534 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %535 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %536 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %537 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %538 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %539 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %540 = load i8, ptr %state, align 16, !tbaa !9
  %conv.i1735 = zext i8 %540 to i32
  %shr.i1736 = lshr i32 %conv.i1735, 4
  %idxprom.i1737 = zext i32 %shr.i1736 to i64
  %and.i1738 = and i32 %conv.i1735, 15
  %idxprom6.i1739 = zext i32 %and.i1738 to i64
  %arrayidx7.i1740 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom.i1737, i64 %idxprom6.i1739
  %541 = load i8, ptr %arrayidx7.i1740, align 1, !tbaa !9
  %542 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %conv12.i1742 = zext i8 %542 to i32
  %shr13.i1743 = lshr i32 %conv12.i1742, 4
  %idxprom14.i1744 = zext i32 %shr13.i1743 to i64
  %and19.i1745 = and i32 %conv12.i1742, 15
  %idxprom20.i1746 = zext i32 %and19.i1745 to i64
  %arrayidx21.i1747 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom14.i1744, i64 %idxprom20.i1746
  %543 = load i8, ptr %arrayidx21.i1747, align 1, !tbaa !9
  %544 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %conv26.i1749 = zext i8 %544 to i32
  %shr27.i1750 = lshr i32 %conv26.i1749, 4
  %idxprom28.i1751 = zext i32 %shr27.i1750 to i64
  %and33.i1752 = and i32 %conv26.i1749, 15
  %idxprom34.i1753 = zext i32 %and33.i1752 to i64
  %arrayidx35.i1754 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom28.i1751, i64 %idxprom34.i1753
  %545 = load i8, ptr %arrayidx35.i1754, align 1, !tbaa !9
  %546 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %conv40.i1756 = zext i8 %546 to i32
  %shr41.i1757 = lshr i32 %conv40.i1756, 4
  %idxprom42.i1758 = zext i32 %shr41.i1757 to i64
  %and47.i1759 = and i32 %conv40.i1756, 15
  %idxprom48.i1760 = zext i32 %and47.i1759 to i64
  %arrayidx49.i1761 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom42.i1758, i64 %idxprom48.i1760
  %547 = load i8, ptr %arrayidx49.i1761, align 1, !tbaa !9
  %conv54.i1763 = zext i8 %528 to i32
  %shr55.i1764 = lshr i32 %conv54.i1763, 4
  %idxprom56.i1765 = zext i32 %shr55.i1764 to i64
  %and61.i1766 = and i32 %conv54.i1763, 15
  %idxprom62.i1767 = zext i32 %and61.i1766 to i64
  %arrayidx63.i1768 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom56.i1765, i64 %idxprom62.i1767
  %548 = load i8, ptr %arrayidx63.i1768, align 1, !tbaa !9
  %conv68.i1770 = zext i8 %531 to i32
  %shr69.i1771 = lshr i32 %conv68.i1770, 4
  %idxprom70.i1772 = zext i32 %shr69.i1771 to i64
  %and75.i1773 = and i32 %conv68.i1770, 15
  %idxprom76.i1774 = zext i32 %and75.i1773 to i64
  %arrayidx77.i1775 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom70.i1772, i64 %idxprom76.i1774
  %549 = load i8, ptr %arrayidx77.i1775, align 1, !tbaa !9
  %conv82.i1777 = zext i8 %530 to i32
  %shr83.i1778 = lshr i32 %conv82.i1777, 4
  %idxprom84.i1779 = zext i32 %shr83.i1778 to i64
  %and89.i1780 = and i32 %conv82.i1777, 15
  %idxprom90.i1781 = zext i32 %and89.i1780 to i64
  %arrayidx91.i1782 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom84.i1779, i64 %idxprom90.i1781
  %550 = load i8, ptr %arrayidx91.i1782, align 1, !tbaa !9
  %conv96.i1784 = zext i8 %529 to i32
  %shr97.i1785 = lshr i32 %conv96.i1784, 4
  %idxprom98.i1786 = zext i32 %shr97.i1785 to i64
  %and103.i1787 = and i32 %conv96.i1784, 15
  %idxprom104.i1788 = zext i32 %and103.i1787 to i64
  %arrayidx105.i1789 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom98.i1786, i64 %idxprom104.i1788
  %551 = load i8, ptr %arrayidx105.i1789, align 1, !tbaa !9
  %conv110.i1791 = zext i8 %534 to i32
  %shr111.i1792 = lshr i32 %conv110.i1791, 4
  %idxprom112.i1793 = zext i32 %shr111.i1792 to i64
  %and117.i1794 = and i32 %conv110.i1791, 15
  %idxprom118.i1795 = zext i32 %and117.i1794 to i64
  %arrayidx119.i1796 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom112.i1793, i64 %idxprom118.i1795
  %552 = load i8, ptr %arrayidx119.i1796, align 1, !tbaa !9
  %conv124.i1798 = zext i8 %532 to i32
  %shr125.i1799 = lshr i32 %conv124.i1798, 4
  %idxprom126.i1800 = zext i32 %shr125.i1799 to i64
  %and131.i1801 = and i32 %conv124.i1798, 15
  %idxprom132.i1802 = zext i32 %and131.i1801 to i64
  %arrayidx133.i1803 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom126.i1800, i64 %idxprom132.i1802
  %553 = load i8, ptr %arrayidx133.i1803, align 1, !tbaa !9
  %conv138.i1805 = zext i8 %535 to i32
  %shr139.i1806 = lshr i32 %conv138.i1805, 4
  %idxprom140.i1807 = zext i32 %shr139.i1806 to i64
  %and145.i1808 = and i32 %conv138.i1805, 15
  %idxprom146.i1809 = zext i32 %and145.i1808 to i64
  %arrayidx147.i1810 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom140.i1807, i64 %idxprom146.i1809
  %554 = load i8, ptr %arrayidx147.i1810, align 1, !tbaa !9
  %conv152.i1812 = zext i8 %533 to i32
  %shr153.i1813 = lshr i32 %conv152.i1812, 4
  %idxprom154.i1814 = zext i32 %shr153.i1813 to i64
  %and159.i1815 = and i32 %conv152.i1812, 15
  %idxprom160.i1816 = zext i32 %and159.i1815 to i64
  %arrayidx161.i1817 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom154.i1814, i64 %idxprom160.i1816
  %555 = load i8, ptr %arrayidx161.i1817, align 1, !tbaa !9
  %conv166.i1819 = zext i8 %538 to i32
  %shr167.i1820 = lshr i32 %conv166.i1819, 4
  %idxprom168.i1821 = zext i32 %shr167.i1820 to i64
  %and173.i1822 = and i32 %conv166.i1819, 15
  %idxprom174.i1823 = zext i32 %and173.i1822 to i64
  %arrayidx175.i1824 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom168.i1821, i64 %idxprom174.i1823
  %556 = load i8, ptr %arrayidx175.i1824, align 1, !tbaa !9
  %conv180.i1826 = zext i8 %539 to i32
  %shr181.i1827 = lshr i32 %conv180.i1826, 4
  %idxprom182.i1828 = zext i32 %shr181.i1827 to i64
  %and187.i1829 = and i32 %conv180.i1826, 15
  %idxprom188.i1830 = zext i32 %and187.i1829 to i64
  %arrayidx189.i1831 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom182.i1828, i64 %idxprom188.i1830
  %557 = load i8, ptr %arrayidx189.i1831, align 1, !tbaa !9
  %conv194.i1833 = zext i8 %536 to i32
  %shr195.i1834 = lshr i32 %conv194.i1833, 4
  %idxprom196.i1835 = zext i32 %shr195.i1834 to i64
  %and201.i1836 = and i32 %conv194.i1833, 15
  %idxprom202.i1837 = zext i32 %and201.i1836 to i64
  %arrayidx203.i1838 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom196.i1835, i64 %idxprom202.i1837
  %558 = load i8, ptr %arrayidx203.i1838, align 1, !tbaa !9
  %conv208.i1840 = zext i8 %537 to i32
  %shr209.i1841 = lshr i32 %conv208.i1840, 4
  %idxprom210.i1842 = zext i32 %shr209.i1841 to i64
  %and215.i1843 = and i32 %conv208.i1840, 15
  %idxprom216.i1844 = zext i32 %and215.i1843 to i64
  %arrayidx217.i1845 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom210.i1842, i64 %idxprom216.i1844
  %559 = load i8, ptr %arrayidx217.i1845, align 1, !tbaa !9
  %arrayidx105 = getelementptr inbounds i32, ptr %key, i64 16
  %560 = load i32, ptr %arrayidx105, align 4, !tbaa !32
  %shr.i1846 = lshr i32 %560, 24
  %shr3.i1847 = lshr i32 %560, 16
  %shr7.i1848 = lshr i32 %560, 8
  %561 = trunc i32 %shr.i1846 to i8
  %conv18.i1849 = xor i8 %541, %561
  store i8 %conv18.i1849, ptr %state, align 16, !tbaa !9
  %562 = trunc i32 %shr3.i1847 to i8
  %conv25.i1851 = xor i8 %548, %562
  store i8 %conv25.i1851, ptr %arrayidx4, align 4, !tbaa !9
  %563 = trunc i32 %shr7.i1848 to i8
  %conv32.i1853 = xor i8 %552, %563
  store i8 %conv32.i1853, ptr %arrayidx7, align 8, !tbaa !9
  %564 = trunc i32 %560 to i8
  %conv39.i1855 = xor i8 %556, %564
  store i8 %conv39.i1855, ptr %arrayidx10, align 4, !tbaa !9
  %arrayidx40.i1856 = getelementptr inbounds i32, ptr %key, i64 17
  %565 = load i32, ptr %arrayidx40.i1856, align 4, !tbaa !32
  %shr41.i1857 = lshr i32 %565, 24
  %shr45.i1858 = lshr i32 %565, 16
  %shr49.i1859 = lshr i32 %565, 8
  %566 = trunc i32 %shr41.i1857 to i8
  %conv61.i1861 = xor i8 %543, %566
  store i8 %conv61.i1861, ptr %arrayidx14, align 1, !tbaa !9
  %567 = trunc i32 %shr45.i1858 to i8
  %conv68.i1863 = xor i8 %549, %567
  store i8 %conv68.i1863, ptr %arrayidx17, align 1, !tbaa !9
  %568 = trunc i32 %shr49.i1859 to i8
  %conv75.i1865 = xor i8 %553, %568
  store i8 %conv75.i1865, ptr %arrayidx20, align 1, !tbaa !9
  %569 = trunc i32 %565 to i8
  %conv82.i1867 = xor i8 %557, %569
  store i8 %conv82.i1867, ptr %arrayidx23, align 1, !tbaa !9
  %arrayidx83.i1868 = getelementptr inbounds i32, ptr %key, i64 18
  %570 = load i32, ptr %arrayidx83.i1868, align 4, !tbaa !32
  %shr84.i1869 = lshr i32 %570, 24
  %shr88.i1870 = lshr i32 %570, 16
  %shr92.i1871 = lshr i32 %570, 8
  %571 = trunc i32 %shr84.i1869 to i8
  %conv104.i1873 = xor i8 %545, %571
  store i8 %conv104.i1873, ptr %arrayidx26, align 2, !tbaa !9
  %572 = trunc i32 %shr88.i1870 to i8
  %conv111.i1875 = xor i8 %550, %572
  store i8 %conv111.i1875, ptr %arrayidx29, align 2, !tbaa !9
  %573 = trunc i32 %shr92.i1871 to i8
  %conv118.i1877 = xor i8 %554, %573
  store i8 %conv118.i1877, ptr %arrayidx32, align 2, !tbaa !9
  %574 = trunc i32 %570 to i8
  %conv125.i1879 = xor i8 %558, %574
  store i8 %conv125.i1879, ptr %arrayidx35, align 2, !tbaa !9
  %arrayidx126.i1880 = getelementptr inbounds i32, ptr %key, i64 19
  %575 = load i32, ptr %arrayidx126.i1880, align 4, !tbaa !32
  %shr127.i1881 = lshr i32 %575, 24
  %shr131.i1882 = lshr i32 %575, 16
  %shr135.i1883 = lshr i32 %575, 8
  %576 = trunc i32 %shr127.i1881 to i8
  %conv147.i1885 = xor i8 %547, %576
  store i8 %conv147.i1885, ptr %arrayidx38, align 1, !tbaa !9
  %577 = trunc i32 %shr131.i1882 to i8
  %conv154.i1887 = xor i8 %551, %577
  store i8 %conv154.i1887, ptr %arrayidx41, align 1, !tbaa !9
  %578 = trunc i32 %shr135.i1883 to i8
  %conv161.i1889 = xor i8 %555, %578
  store i8 %conv161.i1889, ptr %arrayidx44, align 1, !tbaa !9
  %579 = trunc i32 %575 to i8
  %conv168.i1891 = xor i8 %559, %579
  store i8 %conv168.i1891, ptr %arrayidx47, align 1, !tbaa !9
  call void @InvMixColumns(ptr noundef nonnull %state)
  %580 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %581 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %582 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %583 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %584 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %585 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %586 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %587 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %588 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %589 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %590 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %591 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %592 = load i8, ptr %state, align 16, !tbaa !9
  %conv.i1904 = zext i8 %592 to i32
  %shr.i1905 = lshr i32 %conv.i1904, 4
  %idxprom.i1906 = zext i32 %shr.i1905 to i64
  %and.i1907 = and i32 %conv.i1904, 15
  %idxprom6.i1908 = zext i32 %and.i1907 to i64
  %arrayidx7.i1909 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom.i1906, i64 %idxprom6.i1908
  %593 = load i8, ptr %arrayidx7.i1909, align 1, !tbaa !9
  %594 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %conv12.i1911 = zext i8 %594 to i32
  %shr13.i1912 = lshr i32 %conv12.i1911, 4
  %idxprom14.i1913 = zext i32 %shr13.i1912 to i64
  %and19.i1914 = and i32 %conv12.i1911, 15
  %idxprom20.i1915 = zext i32 %and19.i1914 to i64
  %arrayidx21.i1916 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom14.i1913, i64 %idxprom20.i1915
  %595 = load i8, ptr %arrayidx21.i1916, align 1, !tbaa !9
  %596 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %conv26.i1918 = zext i8 %596 to i32
  %shr27.i1919 = lshr i32 %conv26.i1918, 4
  %idxprom28.i1920 = zext i32 %shr27.i1919 to i64
  %and33.i1921 = and i32 %conv26.i1918, 15
  %idxprom34.i1922 = zext i32 %and33.i1921 to i64
  %arrayidx35.i1923 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom28.i1920, i64 %idxprom34.i1922
  %597 = load i8, ptr %arrayidx35.i1923, align 1, !tbaa !9
  %598 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %conv40.i1925 = zext i8 %598 to i32
  %shr41.i1926 = lshr i32 %conv40.i1925, 4
  %idxprom42.i1927 = zext i32 %shr41.i1926 to i64
  %and47.i1928 = and i32 %conv40.i1925, 15
  %idxprom48.i1929 = zext i32 %and47.i1928 to i64
  %arrayidx49.i1930 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom42.i1927, i64 %idxprom48.i1929
  %599 = load i8, ptr %arrayidx49.i1930, align 1, !tbaa !9
  %conv54.i1932 = zext i8 %580 to i32
  %shr55.i1933 = lshr i32 %conv54.i1932, 4
  %idxprom56.i1934 = zext i32 %shr55.i1933 to i64
  %and61.i1935 = and i32 %conv54.i1932, 15
  %idxprom62.i1936 = zext i32 %and61.i1935 to i64
  %arrayidx63.i1937 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom56.i1934, i64 %idxprom62.i1936
  %600 = load i8, ptr %arrayidx63.i1937, align 1, !tbaa !9
  %conv68.i1939 = zext i8 %583 to i32
  %shr69.i1940 = lshr i32 %conv68.i1939, 4
  %idxprom70.i1941 = zext i32 %shr69.i1940 to i64
  %and75.i1942 = and i32 %conv68.i1939, 15
  %idxprom76.i1943 = zext i32 %and75.i1942 to i64
  %arrayidx77.i1944 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom70.i1941, i64 %idxprom76.i1943
  %601 = load i8, ptr %arrayidx77.i1944, align 1, !tbaa !9
  %conv82.i1946 = zext i8 %582 to i32
  %shr83.i1947 = lshr i32 %conv82.i1946, 4
  %idxprom84.i1948 = zext i32 %shr83.i1947 to i64
  %and89.i1949 = and i32 %conv82.i1946, 15
  %idxprom90.i1950 = zext i32 %and89.i1949 to i64
  %arrayidx91.i1951 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom84.i1948, i64 %idxprom90.i1950
  %602 = load i8, ptr %arrayidx91.i1951, align 1, !tbaa !9
  %conv96.i1953 = zext i8 %581 to i32
  %shr97.i1954 = lshr i32 %conv96.i1953, 4
  %idxprom98.i1955 = zext i32 %shr97.i1954 to i64
  %and103.i1956 = and i32 %conv96.i1953, 15
  %idxprom104.i1957 = zext i32 %and103.i1956 to i64
  %arrayidx105.i1958 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom98.i1955, i64 %idxprom104.i1957
  %603 = load i8, ptr %arrayidx105.i1958, align 1, !tbaa !9
  %conv110.i1960 = zext i8 %586 to i32
  %shr111.i1961 = lshr i32 %conv110.i1960, 4
  %idxprom112.i1962 = zext i32 %shr111.i1961 to i64
  %and117.i1963 = and i32 %conv110.i1960, 15
  %idxprom118.i1964 = zext i32 %and117.i1963 to i64
  %arrayidx119.i1965 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom112.i1962, i64 %idxprom118.i1964
  %604 = load i8, ptr %arrayidx119.i1965, align 1, !tbaa !9
  %conv124.i1967 = zext i8 %584 to i32
  %shr125.i1968 = lshr i32 %conv124.i1967, 4
  %idxprom126.i1969 = zext i32 %shr125.i1968 to i64
  %and131.i1970 = and i32 %conv124.i1967, 15
  %idxprom132.i1971 = zext i32 %and131.i1970 to i64
  %arrayidx133.i1972 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom126.i1969, i64 %idxprom132.i1971
  %605 = load i8, ptr %arrayidx133.i1972, align 1, !tbaa !9
  %conv138.i1974 = zext i8 %587 to i32
  %shr139.i1975 = lshr i32 %conv138.i1974, 4
  %idxprom140.i1976 = zext i32 %shr139.i1975 to i64
  %and145.i1977 = and i32 %conv138.i1974, 15
  %idxprom146.i1978 = zext i32 %and145.i1977 to i64
  %arrayidx147.i1979 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom140.i1976, i64 %idxprom146.i1978
  %606 = load i8, ptr %arrayidx147.i1979, align 1, !tbaa !9
  %conv152.i1981 = zext i8 %585 to i32
  %shr153.i1982 = lshr i32 %conv152.i1981, 4
  %idxprom154.i1983 = zext i32 %shr153.i1982 to i64
  %and159.i1984 = and i32 %conv152.i1981, 15
  %idxprom160.i1985 = zext i32 %and159.i1984 to i64
  %arrayidx161.i1986 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom154.i1983, i64 %idxprom160.i1985
  %607 = load i8, ptr %arrayidx161.i1986, align 1, !tbaa !9
  %conv166.i1988 = zext i8 %590 to i32
  %shr167.i1989 = lshr i32 %conv166.i1988, 4
  %idxprom168.i1990 = zext i32 %shr167.i1989 to i64
  %and173.i1991 = and i32 %conv166.i1988, 15
  %idxprom174.i1992 = zext i32 %and173.i1991 to i64
  %arrayidx175.i1993 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom168.i1990, i64 %idxprom174.i1992
  %608 = load i8, ptr %arrayidx175.i1993, align 1, !tbaa !9
  %conv180.i1995 = zext i8 %591 to i32
  %shr181.i1996 = lshr i32 %conv180.i1995, 4
  %idxprom182.i1997 = zext i32 %shr181.i1996 to i64
  %and187.i1998 = and i32 %conv180.i1995, 15
  %idxprom188.i1999 = zext i32 %and187.i1998 to i64
  %arrayidx189.i2000 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom182.i1997, i64 %idxprom188.i1999
  %609 = load i8, ptr %arrayidx189.i2000, align 1, !tbaa !9
  %conv194.i2002 = zext i8 %588 to i32
  %shr195.i2003 = lshr i32 %conv194.i2002, 4
  %idxprom196.i2004 = zext i32 %shr195.i2003 to i64
  %and201.i2005 = and i32 %conv194.i2002, 15
  %idxprom202.i2006 = zext i32 %and201.i2005 to i64
  %arrayidx203.i2007 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom196.i2004, i64 %idxprom202.i2006
  %610 = load i8, ptr %arrayidx203.i2007, align 1, !tbaa !9
  %conv208.i2009 = zext i8 %589 to i32
  %shr209.i2010 = lshr i32 %conv208.i2009, 4
  %idxprom210.i2011 = zext i32 %shr209.i2010 to i64
  %and215.i2012 = and i32 %conv208.i2009, 15
  %idxprom216.i2013 = zext i32 %and215.i2012 to i64
  %arrayidx217.i2014 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom210.i2011, i64 %idxprom216.i2013
  %611 = load i8, ptr %arrayidx217.i2014, align 1, !tbaa !9
  %arrayidx110 = getelementptr inbounds i32, ptr %key, i64 12
  %612 = load i32, ptr %arrayidx110, align 4, !tbaa !32
  %shr.i2015 = lshr i32 %612, 24
  %shr3.i2016 = lshr i32 %612, 16
  %shr7.i2017 = lshr i32 %612, 8
  %613 = trunc i32 %shr.i2015 to i8
  %conv18.i2018 = xor i8 %593, %613
  store i8 %conv18.i2018, ptr %state, align 16, !tbaa !9
  %614 = trunc i32 %shr3.i2016 to i8
  %conv25.i2020 = xor i8 %600, %614
  store i8 %conv25.i2020, ptr %arrayidx4, align 4, !tbaa !9
  %615 = trunc i32 %shr7.i2017 to i8
  %conv32.i2022 = xor i8 %604, %615
  store i8 %conv32.i2022, ptr %arrayidx7, align 8, !tbaa !9
  %616 = trunc i32 %612 to i8
  %conv39.i2024 = xor i8 %608, %616
  store i8 %conv39.i2024, ptr %arrayidx10, align 4, !tbaa !9
  %arrayidx40.i2025 = getelementptr inbounds i32, ptr %key, i64 13
  %617 = load i32, ptr %arrayidx40.i2025, align 4, !tbaa !32
  %shr41.i2026 = lshr i32 %617, 24
  %shr45.i2027 = lshr i32 %617, 16
  %shr49.i2028 = lshr i32 %617, 8
  %618 = trunc i32 %shr41.i2026 to i8
  %conv61.i2030 = xor i8 %595, %618
  store i8 %conv61.i2030, ptr %arrayidx14, align 1, !tbaa !9
  %619 = trunc i32 %shr45.i2027 to i8
  %conv68.i2032 = xor i8 %601, %619
  store i8 %conv68.i2032, ptr %arrayidx17, align 1, !tbaa !9
  %620 = trunc i32 %shr49.i2028 to i8
  %conv75.i2034 = xor i8 %605, %620
  store i8 %conv75.i2034, ptr %arrayidx20, align 1, !tbaa !9
  %621 = trunc i32 %617 to i8
  %conv82.i2036 = xor i8 %609, %621
  store i8 %conv82.i2036, ptr %arrayidx23, align 1, !tbaa !9
  %arrayidx83.i2037 = getelementptr inbounds i32, ptr %key, i64 14
  %622 = load i32, ptr %arrayidx83.i2037, align 4, !tbaa !32
  %shr84.i2038 = lshr i32 %622, 24
  %shr88.i2039 = lshr i32 %622, 16
  %shr92.i2040 = lshr i32 %622, 8
  %623 = trunc i32 %shr84.i2038 to i8
  %conv104.i2042 = xor i8 %597, %623
  store i8 %conv104.i2042, ptr %arrayidx26, align 2, !tbaa !9
  %624 = trunc i32 %shr88.i2039 to i8
  %conv111.i2044 = xor i8 %602, %624
  store i8 %conv111.i2044, ptr %arrayidx29, align 2, !tbaa !9
  %625 = trunc i32 %shr92.i2040 to i8
  %conv118.i2046 = xor i8 %606, %625
  store i8 %conv118.i2046, ptr %arrayidx32, align 2, !tbaa !9
  %626 = trunc i32 %622 to i8
  %conv125.i2048 = xor i8 %610, %626
  store i8 %conv125.i2048, ptr %arrayidx35, align 2, !tbaa !9
  %arrayidx126.i2049 = getelementptr inbounds i32, ptr %key, i64 15
  %627 = load i32, ptr %arrayidx126.i2049, align 4, !tbaa !32
  %shr127.i2050 = lshr i32 %627, 24
  %shr131.i2051 = lshr i32 %627, 16
  %shr135.i2052 = lshr i32 %627, 8
  %628 = trunc i32 %shr127.i2050 to i8
  %conv147.i2054 = xor i8 %599, %628
  store i8 %conv147.i2054, ptr %arrayidx38, align 1, !tbaa !9
  %629 = trunc i32 %shr131.i2051 to i8
  %conv154.i2056 = xor i8 %603, %629
  store i8 %conv154.i2056, ptr %arrayidx41, align 1, !tbaa !9
  %630 = trunc i32 %shr135.i2052 to i8
  %conv161.i2058 = xor i8 %607, %630
  store i8 %conv161.i2058, ptr %arrayidx44, align 1, !tbaa !9
  %631 = trunc i32 %627 to i8
  %conv168.i2060 = xor i8 %611, %631
  store i8 %conv168.i2060, ptr %arrayidx47, align 1, !tbaa !9
  call void @InvMixColumns(ptr noundef nonnull %state)
  %632 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %633 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %634 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %635 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %636 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %637 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %638 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %639 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %640 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %641 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %642 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %643 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %644 = load i8, ptr %state, align 16, !tbaa !9
  %conv.i2073 = zext i8 %644 to i32
  %shr.i2074 = lshr i32 %conv.i2073, 4
  %idxprom.i2075 = zext i32 %shr.i2074 to i64
  %and.i2076 = and i32 %conv.i2073, 15
  %idxprom6.i2077 = zext i32 %and.i2076 to i64
  %arrayidx7.i2078 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom.i2075, i64 %idxprom6.i2077
  %645 = load i8, ptr %arrayidx7.i2078, align 1, !tbaa !9
  %646 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %conv12.i2080 = zext i8 %646 to i32
  %shr13.i2081 = lshr i32 %conv12.i2080, 4
  %idxprom14.i2082 = zext i32 %shr13.i2081 to i64
  %and19.i2083 = and i32 %conv12.i2080, 15
  %idxprom20.i2084 = zext i32 %and19.i2083 to i64
  %arrayidx21.i2085 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom14.i2082, i64 %idxprom20.i2084
  %647 = load i8, ptr %arrayidx21.i2085, align 1, !tbaa !9
  store i8 %647, ptr %arrayidx14, align 1, !tbaa !9
  %648 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %conv26.i2087 = zext i8 %648 to i32
  %shr27.i2088 = lshr i32 %conv26.i2087, 4
  %idxprom28.i2089 = zext i32 %shr27.i2088 to i64
  %and33.i2090 = and i32 %conv26.i2087, 15
  %idxprom34.i2091 = zext i32 %and33.i2090 to i64
  %arrayidx35.i2092 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom28.i2089, i64 %idxprom34.i2091
  %649 = load i8, ptr %arrayidx35.i2092, align 1, !tbaa !9
  store i8 %649, ptr %arrayidx26, align 2, !tbaa !9
  %650 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %conv40.i2094 = zext i8 %650 to i32
  %shr41.i2095 = lshr i32 %conv40.i2094, 4
  %idxprom42.i2096 = zext i32 %shr41.i2095 to i64
  %and47.i2097 = and i32 %conv40.i2094, 15
  %idxprom48.i2098 = zext i32 %and47.i2097 to i64
  %arrayidx49.i2099 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom42.i2096, i64 %idxprom48.i2098
  %651 = load i8, ptr %arrayidx49.i2099, align 1, !tbaa !9
  store i8 %651, ptr %arrayidx38, align 1, !tbaa !9
  %conv54.i2101 = zext i8 %632 to i32
  %shr55.i2102 = lshr i32 %conv54.i2101, 4
  %idxprom56.i2103 = zext i32 %shr55.i2102 to i64
  %and61.i2104 = and i32 %conv54.i2101, 15
  %idxprom62.i2105 = zext i32 %and61.i2104 to i64
  %arrayidx63.i2106 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom56.i2103, i64 %idxprom62.i2105
  %652 = load i8, ptr %arrayidx63.i2106, align 1, !tbaa !9
  %conv68.i2108 = zext i8 %635 to i32
  %shr69.i2109 = lshr i32 %conv68.i2108, 4
  %idxprom70.i2110 = zext i32 %shr69.i2109 to i64
  %and75.i2111 = and i32 %conv68.i2108, 15
  %idxprom76.i2112 = zext i32 %and75.i2111 to i64
  %arrayidx77.i2113 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom70.i2110, i64 %idxprom76.i2112
  %653 = load i8, ptr %arrayidx77.i2113, align 1, !tbaa !9
  store i8 %653, ptr %arrayidx17, align 1, !tbaa !9
  %conv82.i2115 = zext i8 %634 to i32
  %shr83.i2116 = lshr i32 %conv82.i2115, 4
  %idxprom84.i2117 = zext i32 %shr83.i2116 to i64
  %and89.i2118 = and i32 %conv82.i2115, 15
  %idxprom90.i2119 = zext i32 %and89.i2118 to i64
  %arrayidx91.i2120 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom84.i2117, i64 %idxprom90.i2119
  %654 = load i8, ptr %arrayidx91.i2120, align 1, !tbaa !9
  store i8 %654, ptr %arrayidx29, align 2, !tbaa !9
  %conv96.i2122 = zext i8 %633 to i32
  %shr97.i2123 = lshr i32 %conv96.i2122, 4
  %idxprom98.i2124 = zext i32 %shr97.i2123 to i64
  %and103.i2125 = and i32 %conv96.i2122, 15
  %idxprom104.i2126 = zext i32 %and103.i2125 to i64
  %arrayidx105.i2127 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom98.i2124, i64 %idxprom104.i2126
  %655 = load i8, ptr %arrayidx105.i2127, align 1, !tbaa !9
  store i8 %655, ptr %arrayidx41, align 1, !tbaa !9
  %conv110.i2129 = zext i8 %638 to i32
  %shr111.i2130 = lshr i32 %conv110.i2129, 4
  %idxprom112.i2131 = zext i32 %shr111.i2130 to i64
  %and117.i2132 = and i32 %conv110.i2129, 15
  %idxprom118.i2133 = zext i32 %and117.i2132 to i64
  %arrayidx119.i2134 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom112.i2131, i64 %idxprom118.i2133
  %656 = load i8, ptr %arrayidx119.i2134, align 1, !tbaa !9
  %conv124.i2136 = zext i8 %636 to i32
  %shr125.i2137 = lshr i32 %conv124.i2136, 4
  %idxprom126.i2138 = zext i32 %shr125.i2137 to i64
  %and131.i2139 = and i32 %conv124.i2136, 15
  %idxprom132.i2140 = zext i32 %and131.i2139 to i64
  %arrayidx133.i2141 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom126.i2138, i64 %idxprom132.i2140
  %657 = load i8, ptr %arrayidx133.i2141, align 1, !tbaa !9
  %conv138.i2143 = zext i8 %639 to i32
  %shr139.i2144 = lshr i32 %conv138.i2143, 4
  %idxprom140.i2145 = zext i32 %shr139.i2144 to i64
  %and145.i2146 = and i32 %conv138.i2143, 15
  %idxprom146.i2147 = zext i32 %and145.i2146 to i64
  %arrayidx147.i2148 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom140.i2145, i64 %idxprom146.i2147
  %658 = load i8, ptr %arrayidx147.i2148, align 1, !tbaa !9
  %conv152.i2150 = zext i8 %637 to i32
  %shr153.i2151 = lshr i32 %conv152.i2150, 4
  %idxprom154.i2152 = zext i32 %shr153.i2151 to i64
  %and159.i2153 = and i32 %conv152.i2150, 15
  %idxprom160.i2154 = zext i32 %and159.i2153 to i64
  %arrayidx161.i2155 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom154.i2152, i64 %idxprom160.i2154
  %659 = load i8, ptr %arrayidx161.i2155, align 1, !tbaa !9
  store i8 %659, ptr %arrayidx44, align 1, !tbaa !9
  %conv166.i2157 = zext i8 %642 to i32
  %shr167.i2158 = lshr i32 %conv166.i2157, 4
  %idxprom168.i2159 = zext i32 %shr167.i2158 to i64
  %and173.i2160 = and i32 %conv166.i2157, 15
  %idxprom174.i2161 = zext i32 %and173.i2160 to i64
  %arrayidx175.i2162 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom168.i2159, i64 %idxprom174.i2161
  %660 = load i8, ptr %arrayidx175.i2162, align 1, !tbaa !9
  %conv180.i2164 = zext i8 %643 to i32
  %shr181.i2165 = lshr i32 %conv180.i2164, 4
  %idxprom182.i2166 = zext i32 %shr181.i2165 to i64
  %and187.i2167 = and i32 %conv180.i2164, 15
  %idxprom188.i2168 = zext i32 %and187.i2167 to i64
  %arrayidx189.i2169 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom182.i2166, i64 %idxprom188.i2168
  %661 = load i8, ptr %arrayidx189.i2169, align 1, !tbaa !9
  %conv194.i2171 = zext i8 %640 to i32
  %shr195.i2172 = lshr i32 %conv194.i2171, 4
  %idxprom196.i2173 = zext i32 %shr195.i2172 to i64
  %and201.i2174 = and i32 %conv194.i2171, 15
  %idxprom202.i2175 = zext i32 %and201.i2174 to i64
  %arrayidx203.i2176 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom196.i2173, i64 %idxprom202.i2175
  %662 = load i8, ptr %arrayidx203.i2176, align 1, !tbaa !9
  %conv208.i2178 = zext i8 %641 to i32
  %shr209.i2179 = lshr i32 %conv208.i2178, 4
  %idxprom210.i2180 = zext i32 %shr209.i2179 to i64
  %and215.i2181 = and i32 %conv208.i2178, 15
  %idxprom216.i2182 = zext i32 %and215.i2181 to i64
  %arrayidx217.i2183 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom210.i2180, i64 %idxprom216.i2182
  %663 = load i8, ptr %arrayidx217.i2183, align 1, !tbaa !9
  %arrayidx115 = getelementptr inbounds i32, ptr %key, i64 8
  %664 = load i32, ptr %arrayidx115, align 4, !tbaa !32
  %shr.i2184 = lshr i32 %664, 24
  %shr3.i2185 = lshr i32 %664, 16
  %shr7.i2186 = lshr i32 %664, 8
  %665 = trunc i32 %shr.i2184 to i8
  %conv18.i2187 = xor i8 %645, %665
  store i8 %conv18.i2187, ptr %state, align 16, !tbaa !9
  %666 = trunc i32 %shr3.i2185 to i8
  %conv25.i2189 = xor i8 %652, %666
  store i8 %conv25.i2189, ptr %arrayidx4, align 4, !tbaa !9
  %667 = trunc i32 %shr7.i2186 to i8
  %conv32.i2191 = xor i8 %656, %667
  store i8 %conv32.i2191, ptr %arrayidx7, align 8, !tbaa !9
  %668 = trunc i32 %664 to i8
  %conv39.i2193 = xor i8 %660, %668
  store i8 %conv39.i2193, ptr %arrayidx10, align 4, !tbaa !9
  %arrayidx40.i2194 = getelementptr inbounds i32, ptr %key, i64 9
  %669 = load i32, ptr %arrayidx40.i2194, align 4, !tbaa !32
  %shr41.i2195 = lshr i32 %669, 24
  %shr45.i2196 = lshr i32 %669, 16
  %shr49.i2197 = lshr i32 %669, 8
  %670 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %671 = trunc i32 %shr41.i2195 to i8
  %conv61.i2199 = xor i8 %670, %671
  store i8 %conv61.i2199, ptr %arrayidx14, align 1, !tbaa !9
  %672 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %673 = trunc i32 %shr45.i2196 to i8
  %conv68.i2201 = xor i8 %672, %673
  store i8 %conv68.i2201, ptr %arrayidx17, align 1, !tbaa !9
  %674 = trunc i32 %shr49.i2197 to i8
  %conv75.i2203 = xor i8 %657, %674
  store i8 %conv75.i2203, ptr %arrayidx20, align 1, !tbaa !9
  %675 = trunc i32 %669 to i8
  %conv82.i2205 = xor i8 %661, %675
  store i8 %conv82.i2205, ptr %arrayidx23, align 1, !tbaa !9
  %arrayidx83.i2206 = getelementptr inbounds i32, ptr %key, i64 10
  %676 = load i32, ptr %arrayidx83.i2206, align 4, !tbaa !32
  %shr84.i2207 = lshr i32 %676, 24
  %shr88.i2208 = lshr i32 %676, 16
  %shr92.i2209 = lshr i32 %676, 8
  %677 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %678 = trunc i32 %shr84.i2207 to i8
  %conv104.i2211 = xor i8 %677, %678
  store i8 %conv104.i2211, ptr %arrayidx26, align 2, !tbaa !9
  %679 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %680 = trunc i32 %shr88.i2208 to i8
  %conv111.i2213 = xor i8 %679, %680
  store i8 %conv111.i2213, ptr %arrayidx29, align 2, !tbaa !9
  %681 = trunc i32 %shr92.i2209 to i8
  %conv118.i2215 = xor i8 %658, %681
  store i8 %conv118.i2215, ptr %arrayidx32, align 2, !tbaa !9
  %682 = trunc i32 %676 to i8
  %conv125.i2217 = xor i8 %662, %682
  store i8 %conv125.i2217, ptr %arrayidx35, align 2, !tbaa !9
  %arrayidx126.i2218 = getelementptr inbounds i32, ptr %key, i64 11
  %683 = load i32, ptr %arrayidx126.i2218, align 4, !tbaa !32
  %shr127.i2219 = lshr i32 %683, 24
  %shr131.i2220 = lshr i32 %683, 16
  %shr135.i2221 = lshr i32 %683, 8
  %684 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %685 = trunc i32 %shr127.i2219 to i8
  %conv147.i2223 = xor i8 %684, %685
  store i8 %conv147.i2223, ptr %arrayidx38, align 1, !tbaa !9
  %686 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %687 = trunc i32 %shr131.i2220 to i8
  %conv154.i2225 = xor i8 %686, %687
  store i8 %conv154.i2225, ptr %arrayidx41, align 1, !tbaa !9
  %688 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %689 = trunc i32 %shr135.i2221 to i8
  %conv161.i2227 = xor i8 %688, %689
  store i8 %conv161.i2227, ptr %arrayidx44, align 1, !tbaa !9
  %690 = trunc i32 %683 to i8
  %conv168.i2229 = xor i8 %663, %690
  store i8 %conv168.i2229, ptr %arrayidx47, align 1, !tbaa !9
  call void @InvMixColumns(ptr noundef nonnull %state)
  %691 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %692 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %693 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %694 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %695 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %696 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  store i8 %696, ptr %arrayidx44, align 1, !tbaa !9
  %697 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %698 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %699 = load <4 x i8>, ptr %arrayidx10, align 4, !tbaa !9
  %700 = shufflevector <4 x i8> %699, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i8> %700, ptr %arrayidx10, align 4, !tbaa !9
  %701 = load i8, ptr %state, align 16, !tbaa !9
  %conv.i2242 = zext i8 %701 to i32
  %shr.i2243 = lshr i32 %conv.i2242, 4
  %idxprom.i2244 = zext i32 %shr.i2243 to i64
  %and.i2245 = and i32 %conv.i2242, 15
  %idxprom6.i2246 = zext i32 %and.i2245 to i64
  %arrayidx7.i2247 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom.i2244, i64 %idxprom6.i2246
  %702 = load i8, ptr %arrayidx7.i2247, align 1, !tbaa !9
  store i8 %702, ptr %state, align 16, !tbaa !9
  %703 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %conv12.i2249 = zext i8 %703 to i32
  %shr13.i2250 = lshr i32 %conv12.i2249, 4
  %idxprom14.i2251 = zext i32 %shr13.i2250 to i64
  %and19.i2252 = and i32 %conv12.i2249, 15
  %idxprom20.i2253 = zext i32 %and19.i2252 to i64
  %arrayidx21.i2254 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom14.i2251, i64 %idxprom20.i2253
  %704 = load i8, ptr %arrayidx21.i2254, align 1, !tbaa !9
  store i8 %704, ptr %arrayidx14, align 1, !tbaa !9
  %705 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %conv26.i2256 = zext i8 %705 to i32
  %shr27.i2257 = lshr i32 %conv26.i2256, 4
  %idxprom28.i2258 = zext i32 %shr27.i2257 to i64
  %and33.i2259 = and i32 %conv26.i2256, 15
  %idxprom34.i2260 = zext i32 %and33.i2259 to i64
  %arrayidx35.i2261 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom28.i2258, i64 %idxprom34.i2260
  %706 = load i8, ptr %arrayidx35.i2261, align 1, !tbaa !9
  store i8 %706, ptr %arrayidx26, align 2, !tbaa !9
  %707 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %conv40.i2263 = zext i8 %707 to i32
  %shr41.i2264 = lshr i32 %conv40.i2263, 4
  %idxprom42.i2265 = zext i32 %shr41.i2264 to i64
  %and47.i2266 = and i32 %conv40.i2263, 15
  %idxprom48.i2267 = zext i32 %and47.i2266 to i64
  %arrayidx49.i2268 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom42.i2265, i64 %idxprom48.i2267
  %708 = load i8, ptr %arrayidx49.i2268, align 1, !tbaa !9
  store i8 %708, ptr %arrayidx38, align 1, !tbaa !9
  %conv54.i2270 = zext i8 %691 to i32
  %shr55.i2271 = lshr i32 %conv54.i2270, 4
  %idxprom56.i2272 = zext i32 %shr55.i2271 to i64
  %and61.i2273 = and i32 %conv54.i2270, 15
  %idxprom62.i2274 = zext i32 %and61.i2273 to i64
  %arrayidx63.i2275 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom56.i2272, i64 %idxprom62.i2274
  %709 = load i8, ptr %arrayidx63.i2275, align 1, !tbaa !9
  store i8 %709, ptr %arrayidx4, align 4, !tbaa !9
  %conv68.i2277 = zext i8 %694 to i32
  %shr69.i2278 = lshr i32 %conv68.i2277, 4
  %idxprom70.i2279 = zext i32 %shr69.i2278 to i64
  %and75.i2280 = and i32 %conv68.i2277, 15
  %idxprom76.i2281 = zext i32 %and75.i2280 to i64
  %arrayidx77.i2282 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom70.i2279, i64 %idxprom76.i2281
  %710 = load i8, ptr %arrayidx77.i2282, align 1, !tbaa !9
  store i8 %710, ptr %arrayidx17, align 1, !tbaa !9
  %conv82.i2284 = zext i8 %693 to i32
  %shr83.i2285 = lshr i32 %conv82.i2284, 4
  %idxprom84.i2286 = zext i32 %shr83.i2285 to i64
  %and89.i2287 = and i32 %conv82.i2284, 15
  %idxprom90.i2288 = zext i32 %and89.i2287 to i64
  %arrayidx91.i2289 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom84.i2286, i64 %idxprom90.i2288
  %711 = load i8, ptr %arrayidx91.i2289, align 1, !tbaa !9
  store i8 %711, ptr %arrayidx29, align 2, !tbaa !9
  %conv96.i2291 = zext i8 %692 to i32
  %shr97.i2292 = lshr i32 %conv96.i2291, 4
  %idxprom98.i2293 = zext i32 %shr97.i2292 to i64
  %and103.i2294 = and i32 %conv96.i2291, 15
  %idxprom104.i2295 = zext i32 %and103.i2294 to i64
  %arrayidx105.i2296 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom98.i2293, i64 %idxprom104.i2295
  %712 = load i8, ptr %arrayidx105.i2296, align 1, !tbaa !9
  store i8 %712, ptr %arrayidx41, align 1, !tbaa !9
  %conv110.i2298 = zext i8 %697 to i32
  %shr111.i2299 = lshr i32 %conv110.i2298, 4
  %idxprom112.i2300 = zext i32 %shr111.i2299 to i64
  %and117.i2301 = and i32 %conv110.i2298, 15
  %idxprom118.i2302 = zext i32 %and117.i2301 to i64
  %arrayidx119.i2303 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom112.i2300, i64 %idxprom118.i2302
  %713 = load i8, ptr %arrayidx119.i2303, align 1, !tbaa !9
  %conv124.i2305 = zext i8 %695 to i32
  %shr125.i2306 = lshr i32 %conv124.i2305, 4
  %idxprom126.i2307 = zext i32 %shr125.i2306 to i64
  %and131.i2308 = and i32 %conv124.i2305, 15
  %idxprom132.i2309 = zext i32 %and131.i2308 to i64
  %arrayidx133.i2310 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom126.i2307, i64 %idxprom132.i2309
  %714 = load i8, ptr %arrayidx133.i2310, align 1, !tbaa !9
  %conv138.i2312 = zext i8 %698 to i32
  %shr139.i2313 = lshr i32 %conv138.i2312, 4
  %idxprom140.i2314 = zext i32 %shr139.i2313 to i64
  %and145.i2315 = and i32 %conv138.i2312, 15
  %idxprom146.i2316 = zext i32 %and145.i2315 to i64
  %arrayidx147.i2317 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom140.i2314, i64 %idxprom146.i2316
  %715 = load i8, ptr %arrayidx147.i2317, align 1, !tbaa !9
  %716 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %conv152.i2319 = zext i8 %716 to i32
  %shr153.i2320 = lshr i32 %conv152.i2319, 4
  %idxprom154.i2321 = zext i32 %shr153.i2320 to i64
  %and159.i2322 = and i32 %conv152.i2319, 15
  %idxprom160.i2323 = zext i32 %and159.i2322 to i64
  %arrayidx161.i2324 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom154.i2321, i64 %idxprom160.i2323
  %717 = load i8, ptr %arrayidx161.i2324, align 1, !tbaa !9
  store i8 %717, ptr %arrayidx44, align 1, !tbaa !9
  %718 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %conv166.i2326 = zext i8 %718 to i32
  %shr167.i2327 = lshr i32 %conv166.i2326, 4
  %idxprom168.i2328 = zext i32 %shr167.i2327 to i64
  %and173.i2329 = and i32 %conv166.i2326, 15
  %idxprom174.i2330 = zext i32 %and173.i2329 to i64
  %arrayidx175.i2331 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom168.i2328, i64 %idxprom174.i2330
  %719 = load i8, ptr %arrayidx175.i2331, align 1, !tbaa !9
  %720 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %conv180.i2333 = zext i8 %720 to i32
  %shr181.i2334 = lshr i32 %conv180.i2333, 4
  %idxprom182.i2335 = zext i32 %shr181.i2334 to i64
  %and187.i2336 = and i32 %conv180.i2333, 15
  %idxprom188.i2337 = zext i32 %and187.i2336 to i64
  %arrayidx189.i2338 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom182.i2335, i64 %idxprom188.i2337
  %721 = load i8, ptr %arrayidx189.i2338, align 1, !tbaa !9
  %722 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %conv194.i2340 = zext i8 %722 to i32
  %shr195.i2341 = lshr i32 %conv194.i2340, 4
  %idxprom196.i2342 = zext i32 %shr195.i2341 to i64
  %and201.i2343 = and i32 %conv194.i2340, 15
  %idxprom202.i2344 = zext i32 %and201.i2343 to i64
  %arrayidx203.i2345 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom196.i2342, i64 %idxprom202.i2344
  %723 = load i8, ptr %arrayidx203.i2345, align 1, !tbaa !9
  %724 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %conv208.i2347 = zext i8 %724 to i32
  %shr209.i2348 = lshr i32 %conv208.i2347, 4
  %idxprom210.i2349 = zext i32 %shr209.i2348 to i64
  %and215.i2350 = and i32 %conv208.i2347, 15
  %idxprom216.i2351 = zext i32 %and215.i2350 to i64
  %arrayidx217.i2352 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom210.i2349, i64 %idxprom216.i2351
  %725 = load i8, ptr %arrayidx217.i2352, align 1, !tbaa !9
  %arrayidx120 = getelementptr inbounds i32, ptr %key, i64 4
  %726 = load <4 x i32>, ptr %arrayidx120, align 4, !tbaa !32
  %727 = extractelement <4 x i32> %726, i64 0
  %shr7.i2355 = lshr i32 %727, 8
  %728 = trunc i32 %shr7.i2355 to i8
  %conv32.i2360 = xor i8 %713, %728
  store i8 %conv32.i2360, ptr %arrayidx7, align 8, !tbaa !9
  %729 = trunc i32 %727 to i8
  %conv39.i2362 = xor i8 %719, %729
  store i8 %conv39.i2362, ptr %arrayidx10, align 4, !tbaa !9
  %730 = extractelement <4 x i32> %726, i64 1
  %shr49.i2366 = lshr i32 %730, 8
  %731 = trunc i32 %shr49.i2366 to i8
  %conv75.i2372 = xor i8 %714, %731
  store i8 %conv75.i2372, ptr %arrayidx20, align 1, !tbaa !9
  %732 = trunc i32 %730 to i8
  %conv82.i2374 = xor i8 %721, %732
  store i8 %conv82.i2374, ptr %arrayidx23, align 1, !tbaa !9
  %733 = extractelement <4 x i32> %726, i64 2
  %shr92.i2378 = lshr i32 %733, 8
  %734 = trunc i32 %shr92.i2378 to i8
  %conv118.i2384 = xor i8 %715, %734
  store i8 %conv118.i2384, ptr %arrayidx32, align 2, !tbaa !9
  %735 = trunc i32 %733 to i8
  %conv125.i2386 = xor i8 %723, %735
  store i8 %conv125.i2386, ptr %arrayidx35, align 2, !tbaa !9
  %736 = lshr <4 x i32> %726, <i32 24, i32 24, i32 24, i32 24>
  %737 = extractelement <4 x i32> %726, i64 3
  %shr135.i2390 = lshr i32 %737, 8
  %738 = load <4 x i8>, ptr %state, align 16, !tbaa !9
  %739 = trunc <4 x i32> %736 to <4 x i8>
  %740 = xor <4 x i8> %738, %739
  store <4 x i8> %740, ptr %state, align 16, !tbaa !9
  %741 = lshr <4 x i32> %726, <i32 16, i32 16, i32 16, i32 16>
  %742 = load <4 x i8>, ptr %arrayidx4, align 4, !tbaa !9
  %743 = trunc <4 x i32> %741 to <4 x i8>
  %744 = xor <4 x i8> %742, %743
  store <4 x i8> %744, ptr %arrayidx4, align 4, !tbaa !9
  %745 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %746 = trunc i32 %shr135.i2390 to i8
  %conv161.i2396 = xor i8 %745, %746
  store i8 %conv161.i2396, ptr %arrayidx44, align 1, !tbaa !9
  %747 = trunc i32 %737 to i8
  %conv168.i2398 = xor i8 %725, %747
  store i8 %conv168.i2398, ptr %arrayidx47, align 1, !tbaa !9
  call void @InvMixColumns(ptr noundef nonnull %state)
  %748 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %749 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %750 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %751 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %752 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %753 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  store i8 %753, ptr %arrayidx44, align 1, !tbaa !9
  %754 = load i8, ptr %arrayidx32, align 2, !tbaa !9
  %755 = load i8, ptr %arrayidx7, align 8, !tbaa !9
  %756 = load <4 x i8>, ptr %arrayidx10, align 4, !tbaa !9
  %757 = shufflevector <4 x i8> %756, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i8> %757, ptr %arrayidx10, align 4, !tbaa !9
  %758 = load i8, ptr %state, align 16, !tbaa !9
  %conv.i2411 = zext i8 %758 to i32
  %shr.i2412 = lshr i32 %conv.i2411, 4
  %idxprom.i2413 = zext i32 %shr.i2412 to i64
  %and.i2414 = and i32 %conv.i2411, 15
  %idxprom6.i2415 = zext i32 %and.i2414 to i64
  %arrayidx7.i2416 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom.i2413, i64 %idxprom6.i2415
  %759 = load i8, ptr %arrayidx7.i2416, align 1, !tbaa !9
  store i8 %759, ptr %state, align 16, !tbaa !9
  %760 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %conv12.i2418 = zext i8 %760 to i32
  %shr13.i2419 = lshr i32 %conv12.i2418, 4
  %idxprom14.i2420 = zext i32 %shr13.i2419 to i64
  %and19.i2421 = and i32 %conv12.i2418, 15
  %idxprom20.i2422 = zext i32 %and19.i2421 to i64
  %arrayidx21.i2423 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom14.i2420, i64 %idxprom20.i2422
  %761 = load i8, ptr %arrayidx21.i2423, align 1, !tbaa !9
  store i8 %761, ptr %arrayidx14, align 1, !tbaa !9
  %762 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %conv26.i2425 = zext i8 %762 to i32
  %shr27.i2426 = lshr i32 %conv26.i2425, 4
  %idxprom28.i2427 = zext i32 %shr27.i2426 to i64
  %and33.i2428 = and i32 %conv26.i2425, 15
  %idxprom34.i2429 = zext i32 %and33.i2428 to i64
  %arrayidx35.i2430 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom28.i2427, i64 %idxprom34.i2429
  %763 = load i8, ptr %arrayidx35.i2430, align 1, !tbaa !9
  store i8 %763, ptr %arrayidx26, align 2, !tbaa !9
  %764 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %conv40.i2432 = zext i8 %764 to i32
  %shr41.i2433 = lshr i32 %conv40.i2432, 4
  %idxprom42.i2434 = zext i32 %shr41.i2433 to i64
  %and47.i2435 = and i32 %conv40.i2432, 15
  %idxprom48.i2436 = zext i32 %and47.i2435 to i64
  %arrayidx49.i2437 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom42.i2434, i64 %idxprom48.i2436
  %765 = load i8, ptr %arrayidx49.i2437, align 1, !tbaa !9
  store i8 %765, ptr %arrayidx38, align 1, !tbaa !9
  %conv54.i2439 = zext i8 %748 to i32
  %shr55.i2440 = lshr i32 %conv54.i2439, 4
  %idxprom56.i2441 = zext i32 %shr55.i2440 to i64
  %and61.i2442 = and i32 %conv54.i2439, 15
  %idxprom62.i2443 = zext i32 %and61.i2442 to i64
  %arrayidx63.i2444 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom56.i2441, i64 %idxprom62.i2443
  %766 = load i8, ptr %arrayidx63.i2444, align 1, !tbaa !9
  store i8 %766, ptr %arrayidx4, align 4, !tbaa !9
  %conv68.i2446 = zext i8 %751 to i32
  %shr69.i2447 = lshr i32 %conv68.i2446, 4
  %idxprom70.i2448 = zext i32 %shr69.i2447 to i64
  %and75.i2449 = and i32 %conv68.i2446, 15
  %idxprom76.i2450 = zext i32 %and75.i2449 to i64
  %arrayidx77.i2451 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom70.i2448, i64 %idxprom76.i2450
  %767 = load i8, ptr %arrayidx77.i2451, align 1, !tbaa !9
  store i8 %767, ptr %arrayidx17, align 1, !tbaa !9
  %conv82.i2453 = zext i8 %750 to i32
  %shr83.i2454 = lshr i32 %conv82.i2453, 4
  %idxprom84.i2455 = zext i32 %shr83.i2454 to i64
  %and89.i2456 = and i32 %conv82.i2453, 15
  %idxprom90.i2457 = zext i32 %and89.i2456 to i64
  %arrayidx91.i2458 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom84.i2455, i64 %idxprom90.i2457
  %768 = load i8, ptr %arrayidx91.i2458, align 1, !tbaa !9
  store i8 %768, ptr %arrayidx29, align 2, !tbaa !9
  %conv96.i2460 = zext i8 %749 to i32
  %shr97.i2461 = lshr i32 %conv96.i2460, 4
  %idxprom98.i2462 = zext i32 %shr97.i2461 to i64
  %and103.i2463 = and i32 %conv96.i2460, 15
  %idxprom104.i2464 = zext i32 %and103.i2463 to i64
  %arrayidx105.i2465 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom98.i2462, i64 %idxprom104.i2464
  %769 = load i8, ptr %arrayidx105.i2465, align 1, !tbaa !9
  store i8 %769, ptr %arrayidx41, align 1, !tbaa !9
  %conv110.i2467 = zext i8 %754 to i32
  %shr111.i2468 = lshr i32 %conv110.i2467, 4
  %idxprom112.i2469 = zext i32 %shr111.i2468 to i64
  %and117.i2470 = and i32 %conv110.i2467, 15
  %idxprom118.i2471 = zext i32 %and117.i2470 to i64
  %arrayidx119.i2472 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom112.i2469, i64 %idxprom118.i2471
  %770 = load i8, ptr %arrayidx119.i2472, align 1, !tbaa !9
  %conv124.i2474 = zext i8 %752 to i32
  %shr125.i2475 = lshr i32 %conv124.i2474, 4
  %idxprom126.i2476 = zext i32 %shr125.i2475 to i64
  %and131.i2477 = and i32 %conv124.i2474, 15
  %idxprom132.i2478 = zext i32 %and131.i2477 to i64
  %arrayidx133.i2479 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom126.i2476, i64 %idxprom132.i2478
  %771 = load i8, ptr %arrayidx133.i2479, align 1, !tbaa !9
  %conv138.i2481 = zext i8 %755 to i32
  %shr139.i2482 = lshr i32 %conv138.i2481, 4
  %idxprom140.i2483 = zext i32 %shr139.i2482 to i64
  %and145.i2484 = and i32 %conv138.i2481, 15
  %idxprom146.i2485 = zext i32 %and145.i2484 to i64
  %arrayidx147.i2486 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom140.i2483, i64 %idxprom146.i2485
  %772 = load i8, ptr %arrayidx147.i2486, align 1, !tbaa !9
  %773 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %conv152.i2488 = zext i8 %773 to i32
  %shr153.i2489 = lshr i32 %conv152.i2488, 4
  %idxprom154.i2490 = zext i32 %shr153.i2489 to i64
  %and159.i2491 = and i32 %conv152.i2488, 15
  %idxprom160.i2492 = zext i32 %and159.i2491 to i64
  %arrayidx161.i2493 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom154.i2490, i64 %idxprom160.i2492
  %774 = load i8, ptr %arrayidx161.i2493, align 1, !tbaa !9
  store i8 %774, ptr %arrayidx44, align 1, !tbaa !9
  %775 = load i8, ptr %arrayidx10, align 4, !tbaa !9
  %conv166.i2495 = zext i8 %775 to i32
  %shr167.i2496 = lshr i32 %conv166.i2495, 4
  %idxprom168.i2497 = zext i32 %shr167.i2496 to i64
  %and173.i2498 = and i32 %conv166.i2495, 15
  %idxprom174.i2499 = zext i32 %and173.i2498 to i64
  %arrayidx175.i2500 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom168.i2497, i64 %idxprom174.i2499
  %776 = load i8, ptr %arrayidx175.i2500, align 1, !tbaa !9
  %777 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %conv180.i2502 = zext i8 %777 to i32
  %shr181.i2503 = lshr i32 %conv180.i2502, 4
  %idxprom182.i2504 = zext i32 %shr181.i2503 to i64
  %and187.i2505 = and i32 %conv180.i2502, 15
  %idxprom188.i2506 = zext i32 %and187.i2505 to i64
  %arrayidx189.i2507 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom182.i2504, i64 %idxprom188.i2506
  %778 = load i8, ptr %arrayidx189.i2507, align 1, !tbaa !9
  %779 = load i8, ptr %arrayidx35, align 2, !tbaa !9
  %conv194.i2509 = zext i8 %779 to i32
  %shr195.i2510 = lshr i32 %conv194.i2509, 4
  %idxprom196.i2511 = zext i32 %shr195.i2510 to i64
  %and201.i2512 = and i32 %conv194.i2509, 15
  %idxprom202.i2513 = zext i32 %and201.i2512 to i64
  %arrayidx203.i2514 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom196.i2511, i64 %idxprom202.i2513
  %780 = load i8, ptr %arrayidx203.i2514, align 1, !tbaa !9
  %781 = load i8, ptr %arrayidx47, align 1, !tbaa !9
  %conv208.i2516 = zext i8 %781 to i32
  %shr209.i2517 = lshr i32 %conv208.i2516, 4
  %idxprom210.i2518 = zext i32 %shr209.i2517 to i64
  %and215.i2519 = and i32 %conv208.i2516, 15
  %idxprom216.i2520 = zext i32 %and215.i2519 to i64
  %arrayidx217.i2521 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom210.i2518, i64 %idxprom216.i2520
  %782 = load i8, ptr %arrayidx217.i2521, align 1, !tbaa !9
  %783 = load i32, ptr %key, align 4, !tbaa !32
  %shr.i2522 = lshr i32 %783, 24
  %shr3.i2523 = lshr i32 %783, 16
  %shr7.i2524 = lshr i32 %783, 8
  %784 = load i8, ptr %state, align 16, !tbaa !9
  %785 = trunc i32 %shr.i2522 to i8
  %conv18.i2525 = xor i8 %784, %785
  %786 = load i8, ptr %arrayidx4, align 4, !tbaa !9
  %787 = trunc i32 %shr3.i2523 to i8
  %conv25.i2527 = xor i8 %786, %787
  %788 = trunc i32 %shr7.i2524 to i8
  %conv32.i2529 = xor i8 %770, %788
  %789 = trunc i32 %783 to i8
  %conv39.i2531 = xor i8 %776, %789
  %arrayidx40.i2532 = getelementptr inbounds i32, ptr %key, i64 1
  %790 = load i32, ptr %arrayidx40.i2532, align 4, !tbaa !32
  %shr41.i2533 = lshr i32 %790, 24
  %shr45.i2534 = lshr i32 %790, 16
  %shr49.i2535 = lshr i32 %790, 8
  %791 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %792 = trunc i32 %shr41.i2533 to i8
  %conv61.i2537 = xor i8 %791, %792
  %793 = load i8, ptr %arrayidx17, align 1, !tbaa !9
  %794 = trunc i32 %shr45.i2534 to i8
  %conv68.i2539 = xor i8 %793, %794
  %795 = trunc i32 %shr49.i2535 to i8
  %conv75.i2541 = xor i8 %771, %795
  %796 = trunc i32 %790 to i8
  %conv82.i2543 = xor i8 %778, %796
  %arrayidx83.i2544 = getelementptr inbounds i32, ptr %key, i64 2
  %797 = load i32, ptr %arrayidx83.i2544, align 4, !tbaa !32
  %shr84.i2545 = lshr i32 %797, 24
  %shr88.i2546 = lshr i32 %797, 16
  %shr92.i2547 = lshr i32 %797, 8
  %798 = load i8, ptr %arrayidx26, align 2, !tbaa !9
  %799 = trunc i32 %shr84.i2545 to i8
  %conv104.i2549 = xor i8 %798, %799
  %800 = load i8, ptr %arrayidx29, align 2, !tbaa !9
  %801 = trunc i32 %shr88.i2546 to i8
  %conv111.i2551 = xor i8 %800, %801
  %802 = trunc i32 %shr92.i2547 to i8
  %conv118.i2553 = xor i8 %772, %802
  %803 = trunc i32 %797 to i8
  %conv125.i2555 = xor i8 %780, %803
  %arrayidx126.i2556 = getelementptr inbounds i32, ptr %key, i64 3
  %804 = load i32, ptr %arrayidx126.i2556, align 4, !tbaa !32
  %shr127.i2557 = lshr i32 %804, 24
  %shr131.i2558 = lshr i32 %804, 16
  %shr135.i2559 = lshr i32 %804, 8
  %805 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %806 = trunc i32 %shr127.i2557 to i8
  %conv147.i2561 = xor i8 %805, %806
  %807 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %808 = trunc i32 %shr131.i2558 to i8
  %conv154.i2563 = xor i8 %807, %808
  %809 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %810 = trunc i32 %shr135.i2559 to i8
  %conv161.i2565 = xor i8 %809, %810
  %811 = trunc i32 %804 to i8
  %conv168.i2567 = xor i8 %782, %811
  store i8 %conv18.i2525, ptr %out, align 1, !tbaa !9
  %arrayidx131 = getelementptr inbounds i8, ptr %out, i64 1
  store i8 %conv25.i2527, ptr %arrayidx131, align 1, !tbaa !9
  %arrayidx134 = getelementptr inbounds i8, ptr %out, i64 2
  store i8 %conv32.i2529, ptr %arrayidx134, align 1, !tbaa !9
  %arrayidx137 = getelementptr inbounds i8, ptr %out, i64 3
  store i8 %conv39.i2531, ptr %arrayidx137, align 1, !tbaa !9
  %arrayidx140 = getelementptr inbounds i8, ptr %out, i64 4
  store i8 %conv61.i2537, ptr %arrayidx140, align 1, !tbaa !9
  %arrayidx143 = getelementptr inbounds i8, ptr %out, i64 5
  store i8 %conv68.i2539, ptr %arrayidx143, align 1, !tbaa !9
  %arrayidx146 = getelementptr inbounds i8, ptr %out, i64 6
  store i8 %conv75.i2541, ptr %arrayidx146, align 1, !tbaa !9
  %arrayidx149 = getelementptr inbounds i8, ptr %out, i64 7
  store i8 %conv82.i2543, ptr %arrayidx149, align 1, !tbaa !9
  %arrayidx152 = getelementptr inbounds i8, ptr %out, i64 8
  store i8 %conv104.i2549, ptr %arrayidx152, align 1, !tbaa !9
  %arrayidx155 = getelementptr inbounds i8, ptr %out, i64 9
  store i8 %conv111.i2551, ptr %arrayidx155, align 1, !tbaa !9
  %arrayidx158 = getelementptr inbounds i8, ptr %out, i64 10
  store i8 %conv118.i2553, ptr %arrayidx158, align 1, !tbaa !9
  %arrayidx161 = getelementptr inbounds i8, ptr %out, i64 11
  store i8 %conv125.i2555, ptr %arrayidx161, align 1, !tbaa !9
  %arrayidx164 = getelementptr inbounds i8, ptr %out, i64 12
  store i8 %conv147.i2561, ptr %arrayidx164, align 1, !tbaa !9
  %arrayidx167 = getelementptr inbounds i8, ptr %out, i64 13
  store i8 %conv154.i2563, ptr %arrayidx167, align 1, !tbaa !9
  %arrayidx170 = getelementptr inbounds i8, ptr %out, i64 14
  store i8 %conv161.i2565, ptr %arrayidx170, align 1, !tbaa !9
  %arrayidx173 = getelementptr inbounds i8, ptr %out, i64 15
  store i8 %conv168.i2567, ptr %arrayidx173, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @increment_iv(ptr nocapture noundef %iv, i32 noundef %counter_size) local_unnamed_addr #0 {
entry:
  %cmp.not14 = icmp slt i32 %counter_size, 1
  br i1 %cmp.not14, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %sub = sub nsw i32 16, %counter_size
  %0 = sext i32 %sub to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %indvars.iv = phi i64 [ 15, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i8, ptr %iv, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %inc = add i8 %1, 1
  store i8 %inc, ptr %arrayidx, align 1, !tbaa !9
  %cmp3.not = icmp eq i8 %inc, 0
  %2 = icmp ne i64 %indvars.iv, %0
  %or.cond.not18 = select i1 %cmp3.not, i1 %2, i1 false
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp.not.not = icmp sgt i64 %indvars.iv, %0
  %or.cond17 = select i1 %or.cond.not18, i1 %cmp.not.not, i1 false
  br i1 %or.cond17, label %for.body, label %for.end, !llvm.loop !36

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @aes_encrypt_ctr(ptr noundef readonly %in, i64 noundef %in_len, ptr noundef %out, ptr noundef %key, i32 noundef %keysize, ptr nocapture noundef readonly %iv) local_unnamed_addr #2 {
entry:
  %iv_buf = alloca [16 x i8], align 16
  %out_buf = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv_buf) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out_buf) #16
  %cmp.not = icmp eq ptr %in, %out
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %out, ptr align 1 %in, i64 %in_len, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %iv_buf, ptr noundef nonnull align 1 dereferenceable(16) %iv, i64 16, i1 false)
  %sub = add i64 %in_len, -16
  %or.cond = icmp ugt i64 %in_len, 16
  br i1 %or.cond, label %for.body, label %if.end8

for.body:                                         ; preds = %increment_iv.exit, %if.end
  %idx.039 = phi i64 [ %add, %increment_iv.exit ], [ 0, %if.end ]
  call void @aes_encrypt(ptr noundef nonnull %iv_buf, ptr noundef nonnull %out_buf, ptr noundef %key, i32 noundef %keysize)
  %arrayidx = getelementptr inbounds i8, ptr %out, i64 %idx.039
  %0 = load <16 x i8>, ptr %out_buf, align 16, !tbaa !9
  %1 = load <16 x i8>, ptr %arrayidx, align 1, !tbaa !9
  %2 = xor <16 x i8> %1, %0
  store <16 x i8> %2, ptr %arrayidx, align 1, !tbaa !9
  br label %for.body.i29

for.body.i29:                                     ; preds = %for.body.i29, %for.body
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i29 ], [ 15, %for.body ]
  %arrayidx.i27 = getelementptr inbounds i8, ptr %iv_buf, i64 %indvars.iv.i
  %3 = load i8, ptr %arrayidx.i27, align 1, !tbaa !9
  %inc.i28 = add i8 %3, 1
  store i8 %inc.i28, ptr %arrayidx.i27, align 1, !tbaa !9
  %cmp3.not.i = icmp eq i8 %inc.i28, 0
  %4 = icmp ne i64 %indvars.iv.i, 0
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %or.cond17.i = select i1 %cmp3.not.i, i1 %4, i1 false
  br i1 %or.cond17.i, label %for.body.i29, label %increment_iv.exit, !llvm.loop !36

increment_iv.exit:                                ; preds = %for.body.i29
  %add = add i64 %idx.039, 16
  %cmp3 = icmp ult i64 %add, %sub
  br i1 %cmp3, label %for.body, label %if.end8, !llvm.loop !37

if.end8:                                          ; preds = %increment_iv.exit, %if.end
  %idx.1 = phi i64 [ 0, %if.end ], [ %add, %increment_iv.exit ]
  call void @aes_encrypt(ptr noundef nonnull %iv_buf, ptr noundef nonnull %out_buf, ptr noundef %key, i32 noundef %keysize)
  %arrayidx12 = getelementptr inbounds i8, ptr %out, i64 %idx.1
  %sub13 = sub i64 %in_len, %idx.1
  %cmp8.not.i = icmp eq i64 %idx.1, %in_len
  br i1 %cmp8.not.i, label %xor_buf.exit37, label %iter.check

iter.check:                                       ; preds = %if.end8
  %min.iters.check = icmp ult i64 %sub13, 8
  br i1 %min.iters.check, label %for.body.i36.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check40 = icmp ult i64 %sub13, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %sub13, -32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %5 = getelementptr inbounds i8, ptr %out_buf, i64 %index
  %wide.load = load <16 x i8>, ptr %5, align 16, !tbaa !9
  %6 = getelementptr inbounds i8, ptr %5, i64 16
  %wide.load41 = load <16 x i8>, ptr %6, align 16, !tbaa !9
  %7 = getelementptr inbounds i8, ptr %arrayidx12, i64 %index
  %wide.load42 = load <16 x i8>, ptr %7, align 1, !tbaa !9
  %8 = getelementptr inbounds i8, ptr %7, i64 16
  %wide.load43 = load <16 x i8>, ptr %8, align 1, !tbaa !9
  %9 = xor <16 x i8> %wide.load42, %wide.load
  %10 = xor <16 x i8> %wide.load43, %wide.load41
  store <16 x i8> %9, ptr %7, align 1, !tbaa !9
  store <16 x i8> %10, ptr %8, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32
  %11 = icmp eq i64 %index.next, %n.vec
  br i1 %11, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %sub13, %n.vec
  br i1 %cmp.n, label %xor_buf.exit37, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = and i64 %sub13, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body.i36.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check, %vector.main.loop.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %sub13, -8
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ]
  %12 = getelementptr inbounds i8, ptr %out_buf, i64 %index47
  %wide.load48 = load <8 x i8>, ptr %12, align 8, !tbaa !9
  %13 = getelementptr inbounds i8, ptr %arrayidx12, i64 %index47
  %wide.load49 = load <8 x i8>, ptr %13, align 1, !tbaa !9
  %14 = xor <8 x i8> %wide.load49, %wide.load48
  store <8 x i8> %14, ptr %13, align 1, !tbaa !9
  %index.next50 = add nuw i64 %index47, 8
  %15 = icmp eq i64 %index.next50, %n.vec45
  br i1 %15, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %sub13, %n.vec45
  br i1 %cmp.n46, label %xor_buf.exit37, label %for.body.i36.preheader

for.body.i36.preheader:                           ; preds = %vec.epilog.middle.block, %vec.epilog.iter.check, %iter.check
  %idx.09.i30.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ]
  br label %for.body.i36

for.body.i36:                                     ; preds = %for.body.i36, %for.body.i36.preheader
  %idx.09.i30 = phi i64 [ %inc.i34, %for.body.i36 ], [ %idx.09.i30.ph, %for.body.i36.preheader ]
  %arrayidx.i31 = getelementptr inbounds i8, ptr %out_buf, i64 %idx.09.i30
  %16 = load i8, ptr %arrayidx.i31, align 1, !tbaa !9
  %arrayidx1.i32 = getelementptr inbounds i8, ptr %arrayidx12, i64 %idx.09.i30
  %17 = load i8, ptr %arrayidx1.i32, align 1, !tbaa !9
  %xor7.i33 = xor i8 %17, %16
  store i8 %xor7.i33, ptr %arrayidx1.i32, align 1, !tbaa !9
  %inc.i34 = add nuw i64 %idx.09.i30, 1
  %exitcond.not.i35 = icmp eq i64 %inc.i34, %sub13
  br i1 %exitcond.not.i35, label %xor_buf.exit37, label %for.body.i36, !llvm.loop !40

xor_buf.exit37:                                   ; preds = %for.body.i36, %vec.epilog.middle.block, %middle.block, %if.end8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out_buf) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv_buf) #16
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @aes_decrypt_ctr(ptr noundef %in, i64 noundef %in_len, ptr noundef %out, ptr noundef %key, i32 noundef %keysize, ptr nocapture noundef readonly %iv) local_unnamed_addr #2 {
entry:
  tail call void @aes_encrypt_ctr(ptr noundef %in, i64 noundef %in_len, ptr noundef %out, ptr noundef %key, i32 noundef %keysize, ptr noundef %iv)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @aes_encrypt_ccm(ptr nocapture noundef readonly %payload, i32 noundef %payload_len, ptr nocapture noundef readonly %assoc, i16 noundef zeroext %assoc_len, ptr nocapture noundef readonly %nonce, i16 noundef zeroext %nonce_len, ptr noundef %out, ptr nocapture noundef writeonly %out_len, i32 noundef %mac_len, ptr nocapture noundef readonly %key_str, i32 noundef %keysize) local_unnamed_addr #5 {
entry:
  %temp_iv = alloca [16 x i8], align 16
  %counter = alloca [16 x i8], align 16
  %mac = alloca [16 x i8], align 16
  %key = alloca [60 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %temp_iv) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %counter) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mac) #16
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %key) #16
  switch i32 %mac_len, label %cleanup [
    i32 16, label %if.end
    i32 14, label %if.end
    i32 12, label %if.end
    i32 10, label %if.end
    i32 8, label %if.end
    i32 6, label %if.end
    i32 4, label %if.end
  ]

if.end:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %conv = zext i16 %nonce_len to i32
  %0 = add i16 %nonce_len, -14
  %or.cond70 = icmp ult i16 %0, -7
  br i1 %or.cond70, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end
  %conv19 = zext i16 %assoc_len to i32
  %cmp20 = icmp ugt i16 %assoc_len, -32768
  br i1 %cmp20, label %cleanup, label %if.end23

if.end23:                                         ; preds = %if.end18
  %add = add i32 %payload_len, 48
  %add25 = add i32 %add, %conv19
  %conv26 = zext i32 %add25 to i64
  %call = tail call noalias ptr @malloc(i64 noundef %conv26) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end23
  call void @aes_key_setup(ptr noundef %key_str, ptr noundef nonnull %key, i32 noundef %keysize)
  %sub = sub nsw i32 15, %conv
  %div.i139.lhs.trunc = shl nuw nsw i32 %mac_len, 2
  %div.i139.zext = add nuw nsw i32 %div.i139.lhs.trunc, 56
  %shl.i = and i32 %div.i139.zext, 56
  %sub1.i = sub nsw i32 6, %conv
  %and2.i = and i32 %sub1.i, 7
  %or.i = or i32 %shl.i, %and2.i
  %conv.i = trunc i32 %or.i to i8
  %cmp.i.not = icmp eq i16 %assoc_len, 0
  %conv6.i = or i8 %conv.i, 64
  %storemerge.i = select i1 %cmp.i.not, i8 %conv.i, i8 %conv6.i
  store i8 %storemerge.i, ptr %call, align 1, !tbaa !9
  %arrayidx7.i = getelementptr inbounds i8, ptr %call, i64 1
  %conv8.i = zext i16 %nonce_len to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %arrayidx7.i, ptr align 1 %nonce, i64 %conv8.i, i1 false)
  %add9.i = add nuw nsw i32 %conv, 1
  %idxprom.i = zext i32 %add9.i to i64
  %arrayidx10.i = getelementptr inbounds i8, ptr %call, i64 %idxprom.i
  %conv12.i = sext i32 %sub to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %arrayidx10.i, i8 0, i64 %conv12.i, i1 false)
  %conv14.i = trunc i32 %payload_len to i8
  %arrayidx15.i = getelementptr inbounds i8, ptr %call, i64 15
  store i8 %conv14.i, ptr %arrayidx15.i, align 1, !tbaa !9
  %1 = lshr i32 %payload_len, 8
  %conv17.i = trunc i32 %1 to i8
  %arrayidx18.i = getelementptr inbounds i8, ptr %call, i64 14
  store i8 %conv17.i, ptr %arrayidx18.i, align 1, !tbaa !9
  %conv.i113 = trunc i16 %assoc_len to i8
  %arrayidx.i = getelementptr inbounds i8, ptr %call, i64 17
  store i8 %conv.i113, ptr %arrayidx.i, align 1, !tbaa !9
  %2 = lshr i16 %assoc_len, 8
  %conv2.i = trunc i16 %2 to i8
  %arrayidx4.i = getelementptr inbounds i8, ptr %call, i64 16
  store i8 %conv2.i, ptr %arrayidx4.i, align 1, !tbaa !9
  %arrayidx7.i115 = getelementptr inbounds i8, ptr %call, i64 18
  %conv8.i116 = zext i16 %assoc_len to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %arrayidx7.i115, ptr align 1 %assoc, i64 %conv8.i116, i1 false)
  %add9.i117 = add nuw nsw i32 %conv19, 18
  %rem.i141 = and i32 %add9.i117, 15
  %sub.i118 = sub nuw nsw i32 16, %rem.i141
  %idxprom10.i = zext i32 %add9.i117 to i64
  %arrayidx11.i = getelementptr inbounds i8, ptr %call, i64 %idxprom10.i
  %conv12.i119 = zext i32 %sub.i118 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %arrayidx11.i, i8 0, i64 %conv12.i119, i1 false)
  %add13.i = add nuw nsw i32 %sub.i118, %add9.i117
  %idxprom.i120 = zext i32 %add13.i to i64
  %arrayidx.i121 = getelementptr inbounds i8, ptr %call, i64 %idxprom.i120
  %conv.i122 = sext i32 %payload_len to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %arrayidx.i121, ptr align 1 %payload, i64 %conv.i122, i1 false)
  %add.i123 = add nsw i32 %add13.i, %payload_len
  %rem.i124 = srem i32 %add.i123, 16
  %cmp.not.i = icmp eq i32 %rem.i124, 0
  %sub.i125 = sub nsw i32 16, %rem.i124
  %spec.select.i = select i1 %cmp.not.i, i32 0, i32 %sub.i125
  %idxprom2.i = sext i32 %add.i123 to i64
  %arrayidx3.i = getelementptr inbounds i8, ptr %call, i64 %idxprom2.i
  %conv4.i = zext i32 %spec.select.i to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %arrayidx3.i, i8 0, i64 %conv4.i, i1 false)
  %add5.i126 = add nsw i32 %spec.select.i, %add.i123
  %3 = getelementptr inbounds i8, ptr %counter, i64 1
  %4 = trunc i32 %sub to i8
  %5 = add i8 %4, 7
  %conv.i127 = and i8 %5, 7
  store i8 %conv.i127, ptr %counter, align 16, !tbaa !9
  %6 = icmp ugt i16 %nonce_len, 14
  %7 = sub nsw i64 15, %conv8.i
  %8 = select i1 %6, i64 0, i64 %7
  %9 = getelementptr i8, ptr %3, i64 %conv8.i
  call void @llvm.memset.p0.i64(ptr align 1 %9, i8 0, i64 %8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr align 1 %nonce, i64 %conv8.i, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %temp_iv, i8 0, i64 16, i1 false)
  %conv36 = sext i32 %add5.i126 to i64
  %call40 = call i32 @aes_encrypt_cbc_mac(ptr noundef nonnull %call, i64 noundef %conv36, ptr noundef nonnull %mac, ptr noundef nonnull %key, i32 noundef %keysize, ptr noundef nonnull %temp_iv)
  %conv41 = zext i32 %payload_len to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %out, ptr align 1 %payload, i64 %conv41, i1 false)
  %arrayidx = getelementptr inbounds i8, ptr %out, i64 %conv41
  %conv43 = zext i32 %mac_len to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx, ptr nonnull align 16 %mac, i64 %conv43, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %temp_iv, ptr noundef nonnull align 16 dereferenceable(16) %counter, i64 16, i1 false)
  %cmp.not14.i = icmp ugt i32 %mac_len, 14
  br i1 %cmp.not14.i, label %increment_iv.exit, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end28
  %sub.i129 = add nuw nsw i32 %mac_len, 1
  %10 = zext i32 %sub.i129 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ 15, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx.i130 = getelementptr inbounds i8, ptr %temp_iv, i64 %indvars.iv.i
  %11 = load i8, ptr %arrayidx.i130, align 1, !tbaa !9
  %inc.i = add i8 %11, 1
  store i8 %inc.i, ptr %arrayidx.i130, align 1, !tbaa !9
  %cmp3.not.i = icmp eq i8 %inc.i, 0
  %12 = icmp ne i64 %indvars.iv.i, %10
  %or.cond.not18.i = select i1 %cmp3.not.i, i1 %12, i1 false
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %cmp.not.not.i = icmp ugt i64 %indvars.iv.i, %10
  %or.cond17.i = select i1 %or.cond.not18.i, i1 %cmp.not.not.i, i1 false
  br i1 %or.cond17.i, label %for.body.i, label %increment_iv.exit, !llvm.loop !36

increment_iv.exit:                                ; preds = %for.body.i, %if.end28
  call void @aes_encrypt_ctr(ptr noundef %out, i64 noundef %conv41, ptr noundef %out, ptr noundef nonnull %key, i32 noundef %keysize, ptr noundef nonnull %temp_iv)
  call void @aes_encrypt_ctr(ptr noundef %arrayidx, i64 noundef %conv43, ptr noundef %arrayidx, ptr noundef nonnull %key, i32 noundef %keysize, ptr noundef nonnull %counter)
  call void @free(ptr noundef %call) #16
  %add58 = add i32 %mac_len, %payload_len
  store i32 %add58, ptr %out_len, align 4, !tbaa !32
  br label %cleanup

cleanup:                                          ; preds = %increment_iv.exit, %if.end23, %if.end18, %if.end, %entry
  %retval.0 = phi i32 [ 1, %increment_iv.exit ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end18 ], [ 0, %if.end23 ]
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %key) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mac) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %counter) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %temp_iv) #16
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @aes_key_setup(ptr nocapture noundef readonly %key, ptr nocapture noundef %w, i32 noundef %keysize) local_unnamed_addr #2 {
entry:
  switch i32 %keysize, label %cleanup [
    i32 128, label %sw.epilog
    i32 192, label %sw.bb1
    i32 256, label %sw.bb2
  ]

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry
  %Nr.0 = phi i64 [ 60, %sw.bb2 ], [ 52, %sw.bb1 ], [ 44, %entry ]
  %cmp38 = phi i1 [ true, %sw.bb2 ], [ false, %sw.bb1 ], [ false, %entry ]
  %exitcond.not.3 = phi i1 [ false, %sw.bb2 ], [ false, %sw.bb1 ], [ true, %entry ]
  %exitcond.not.5 = phi i1 [ false, %sw.bb2 ], [ true, %sw.bb1 ], [ false, %entry ]
  %Nk.0 = phi i32 [ 8, %sw.bb2 ], [ 6, %sw.bb1 ], [ 4, %entry ]
  %wide.trip.count = zext i32 %Nk.0 to i64
  %0 = load i8, ptr %key, align 1, !tbaa !9
  %conv = zext i8 %0 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx5 = getelementptr inbounds i8, ptr %key, i64 1
  %1 = load i8, ptr %arrayidx5, align 1, !tbaa !9
  %conv6 = zext i8 %1 to i32
  %shl7 = shl nuw nsw i32 %conv6, 16
  %or = or i32 %shl7, %shl
  %arrayidx11 = getelementptr inbounds i8, ptr %key, i64 2
  %2 = load i8, ptr %arrayidx11, align 1, !tbaa !9
  %conv12 = zext i8 %2 to i32
  %shl13 = shl nuw nsw i32 %conv12, 8
  %or14 = or i32 %or, %shl13
  %arrayidx18 = getelementptr inbounds i8, ptr %key, i64 3
  %3 = load i8, ptr %arrayidx18, align 1, !tbaa !9
  %conv19 = zext i8 %3 to i32
  %or20 = or i32 %or14, %conv19
  store i32 %or20, ptr %w, align 4, !tbaa !32
  %arrayidx.1 = getelementptr inbounds i8, ptr %key, i64 4
  %4 = load i8, ptr %arrayidx.1, align 1, !tbaa !9
  %conv.1 = zext i8 %4 to i32
  %shl.1 = shl nuw i32 %conv.1, 24
  %arrayidx5.1 = getelementptr inbounds i8, ptr %key, i64 5
  %5 = load i8, ptr %arrayidx5.1, align 1, !tbaa !9
  %conv6.1 = zext i8 %5 to i32
  %shl7.1 = shl nuw nsw i32 %conv6.1, 16
  %or.1 = or i32 %shl7.1, %shl.1
  %arrayidx11.1 = getelementptr inbounds i8, ptr %key, i64 6
  %6 = load i8, ptr %arrayidx11.1, align 1, !tbaa !9
  %conv12.1 = zext i8 %6 to i32
  %shl13.1 = shl nuw nsw i32 %conv12.1, 8
  %or14.1 = or i32 %or.1, %shl13.1
  %arrayidx18.1 = getelementptr inbounds i8, ptr %key, i64 7
  %7 = load i8, ptr %arrayidx18.1, align 1, !tbaa !9
  %conv19.1 = zext i8 %7 to i32
  %or20.1 = or i32 %or14.1, %conv19.1
  %arrayidx22.1 = getelementptr inbounds i32, ptr %w, i64 1
  store i32 %or20.1, ptr %arrayidx22.1, align 4, !tbaa !32
  %arrayidx.2 = getelementptr inbounds i8, ptr %key, i64 8
  %8 = load i8, ptr %arrayidx.2, align 1, !tbaa !9
  %conv.2 = zext i8 %8 to i32
  %shl.2 = shl nuw i32 %conv.2, 24
  %arrayidx5.2 = getelementptr inbounds i8, ptr %key, i64 9
  %9 = load i8, ptr %arrayidx5.2, align 1, !tbaa !9
  %conv6.2 = zext i8 %9 to i32
  %shl7.2 = shl nuw nsw i32 %conv6.2, 16
  %or.2 = or i32 %shl7.2, %shl.2
  %arrayidx11.2 = getelementptr inbounds i8, ptr %key, i64 10
  %10 = load i8, ptr %arrayidx11.2, align 1, !tbaa !9
  %conv12.2 = zext i8 %10 to i32
  %shl13.2 = shl nuw nsw i32 %conv12.2, 8
  %or14.2 = or i32 %or.2, %shl13.2
  %arrayidx18.2 = getelementptr inbounds i8, ptr %key, i64 11
  %11 = load i8, ptr %arrayidx18.2, align 1, !tbaa !9
  %conv19.2 = zext i8 %11 to i32
  %or20.2 = or i32 %or14.2, %conv19.2
  %arrayidx22.2 = getelementptr inbounds i32, ptr %w, i64 2
  store i32 %or20.2, ptr %arrayidx22.2, align 4, !tbaa !32
  %arrayidx.3 = getelementptr inbounds i8, ptr %key, i64 12
  %12 = load i8, ptr %arrayidx.3, align 1, !tbaa !9
  %conv.3 = zext i8 %12 to i32
  %shl.3 = shl nuw i32 %conv.3, 24
  %arrayidx5.3 = getelementptr inbounds i8, ptr %key, i64 13
  %13 = load i8, ptr %arrayidx5.3, align 1, !tbaa !9
  %conv6.3 = zext i8 %13 to i32
  %shl7.3 = shl nuw nsw i32 %conv6.3, 16
  %or.3 = or i32 %shl7.3, %shl.3
  %arrayidx11.3 = getelementptr inbounds i8, ptr %key, i64 14
  %14 = load i8, ptr %arrayidx11.3, align 1, !tbaa !9
  %conv12.3 = zext i8 %14 to i32
  %shl13.3 = shl nuw nsw i32 %conv12.3, 8
  %or14.3 = or i32 %or.3, %shl13.3
  %arrayidx18.3 = getelementptr inbounds i8, ptr %key, i64 15
  %15 = load i8, ptr %arrayidx18.3, align 1, !tbaa !9
  %conv19.3 = zext i8 %15 to i32
  %or20.3 = or i32 %or14.3, %conv19.3
  %arrayidx22.3 = getelementptr inbounds i32, ptr %w, i64 3
  store i32 %or20.3, ptr %arrayidx22.3, align 4, !tbaa !32
  br i1 %exitcond.not.3, label %for.body28.preheader, label %for.body.4, !llvm.loop !41

for.body28.preheader:                             ; preds = %for.body.6, %for.body.4, %sw.epilog
  %16 = zext i32 %Nk.0 to i64
  %17 = shl nuw nsw i64 %wide.trip.count, 2
  %18 = add nsw i64 %17, -4
  %uglygep = getelementptr i8, ptr %w, i64 %18
  %load_initial = load i32, ptr %uglygep, align 4
  br label %for.body28

for.body.4:                                       ; preds = %sw.epilog
  %arrayidx.4 = getelementptr inbounds i8, ptr %key, i64 16
  %19 = load i8, ptr %arrayidx.4, align 1, !tbaa !9
  %conv.4 = zext i8 %19 to i32
  %shl.4 = shl nuw i32 %conv.4, 24
  %arrayidx5.4 = getelementptr inbounds i8, ptr %key, i64 17
  %20 = load i8, ptr %arrayidx5.4, align 1, !tbaa !9
  %conv6.4 = zext i8 %20 to i32
  %shl7.4 = shl nuw nsw i32 %conv6.4, 16
  %or.4 = or i32 %shl7.4, %shl.4
  %arrayidx11.4 = getelementptr inbounds i8, ptr %key, i64 18
  %21 = load i8, ptr %arrayidx11.4, align 1, !tbaa !9
  %conv12.4 = zext i8 %21 to i32
  %shl13.4 = shl nuw nsw i32 %conv12.4, 8
  %or14.4 = or i32 %or.4, %shl13.4
  %arrayidx18.4 = getelementptr inbounds i8, ptr %key, i64 19
  %22 = load i8, ptr %arrayidx18.4, align 1, !tbaa !9
  %conv19.4 = zext i8 %22 to i32
  %or20.4 = or i32 %or14.4, %conv19.4
  %arrayidx22.4 = getelementptr inbounds i32, ptr %w, i64 4
  store i32 %or20.4, ptr %arrayidx22.4, align 4, !tbaa !32
  %arrayidx.5 = getelementptr inbounds i8, ptr %key, i64 20
  %23 = load i8, ptr %arrayidx.5, align 1, !tbaa !9
  %conv.5 = zext i8 %23 to i32
  %shl.5 = shl nuw i32 %conv.5, 24
  %arrayidx5.5 = getelementptr inbounds i8, ptr %key, i64 21
  %24 = load i8, ptr %arrayidx5.5, align 1, !tbaa !9
  %conv6.5 = zext i8 %24 to i32
  %shl7.5 = shl nuw nsw i32 %conv6.5, 16
  %or.5 = or i32 %shl7.5, %shl.5
  %arrayidx11.5 = getelementptr inbounds i8, ptr %key, i64 22
  %25 = load i8, ptr %arrayidx11.5, align 1, !tbaa !9
  %conv12.5 = zext i8 %25 to i32
  %shl13.5 = shl nuw nsw i32 %conv12.5, 8
  %or14.5 = or i32 %or.5, %shl13.5
  %arrayidx18.5 = getelementptr inbounds i8, ptr %key, i64 23
  %26 = load i8, ptr %arrayidx18.5, align 1, !tbaa !9
  %conv19.5 = zext i8 %26 to i32
  %or20.5 = or i32 %or14.5, %conv19.5
  %arrayidx22.5 = getelementptr inbounds i32, ptr %w, i64 5
  store i32 %or20.5, ptr %arrayidx22.5, align 4, !tbaa !32
  br i1 %exitcond.not.5, label %for.body28.preheader, label %for.body.6, !llvm.loop !41

for.body.6:                                       ; preds = %for.body.4
  %arrayidx.6 = getelementptr inbounds i8, ptr %key, i64 24
  %27 = load i8, ptr %arrayidx.6, align 1, !tbaa !9
  %conv.6 = zext i8 %27 to i32
  %shl.6 = shl nuw i32 %conv.6, 24
  %arrayidx5.6 = getelementptr inbounds i8, ptr %key, i64 25
  %28 = load i8, ptr %arrayidx5.6, align 1, !tbaa !9
  %conv6.6 = zext i8 %28 to i32
  %shl7.6 = shl nuw nsw i32 %conv6.6, 16
  %or.6 = or i32 %shl7.6, %shl.6
  %arrayidx11.6 = getelementptr inbounds i8, ptr %key, i64 26
  %29 = load i8, ptr %arrayidx11.6, align 1, !tbaa !9
  %conv12.6 = zext i8 %29 to i32
  %shl13.6 = shl nuw nsw i32 %conv12.6, 8
  %or14.6 = or i32 %or.6, %shl13.6
  %arrayidx18.6 = getelementptr inbounds i8, ptr %key, i64 27
  %30 = load i8, ptr %arrayidx18.6, align 1, !tbaa !9
  %conv19.6 = zext i8 %30 to i32
  %or20.6 = or i32 %or14.6, %conv19.6
  %arrayidx22.6 = getelementptr inbounds i32, ptr %w, i64 6
  store i32 %or20.6, ptr %arrayidx22.6, align 4, !tbaa !32
  %arrayidx.7 = getelementptr inbounds i8, ptr %key, i64 28
  %31 = load i8, ptr %arrayidx.7, align 1, !tbaa !9
  %conv.7 = zext i8 %31 to i32
  %shl.7 = shl nuw i32 %conv.7, 24
  %arrayidx5.7 = getelementptr inbounds i8, ptr %key, i64 29
  %32 = load i8, ptr %arrayidx5.7, align 1, !tbaa !9
  %conv6.7 = zext i8 %32 to i32
  %shl7.7 = shl nuw nsw i32 %conv6.7, 16
  %or.7 = or i32 %shl7.7, %shl.7
  %arrayidx11.7 = getelementptr inbounds i8, ptr %key, i64 30
  %33 = load i8, ptr %arrayidx11.7, align 1, !tbaa !9
  %conv12.7 = zext i8 %33 to i32
  %shl13.7 = shl nuw nsw i32 %conv12.7, 8
  %or14.7 = or i32 %or.7, %shl13.7
  %arrayidx18.7 = getelementptr inbounds i8, ptr %key, i64 31
  %34 = load i8, ptr %arrayidx18.7, align 1, !tbaa !9
  %conv19.7 = zext i8 %34 to i32
  %or20.7 = or i32 %or14.7, %conv19.7
  %arrayidx22.7 = getelementptr inbounds i32, ptr %w, i64 7
  store i32 %or20.7, ptr %arrayidx22.7, align 4, !tbaa !32
  br label %for.body28.preheader

for.body28:                                       ; preds = %if.end45, %for.body28.preheader
  %store_forwarded = phi i32 [ %load_initial, %for.body28.preheader ], [ %xor49, %if.end45 ]
  %indvars.iv133 = phi i64 [ %wide.trip.count, %for.body28.preheader ], [ %indvars.iv.next134, %if.end45 ]
  %35 = trunc i64 %indvars.iv133 to i32
  %rem = urem i32 %35, %Nk.0
  %cmp31 = icmp eq i32 %rem, 0
  br i1 %cmp31, label %if.then, label %if.else

if.then:                                          ; preds = %for.body28
  %or34 = tail call i32 @llvm.fshl.i32(i32 %store_forwarded, i32 %store_forwarded, i32 8)
  %shr.i = lshr i32 %or34, 4
  %and.i = and i32 %shr.i, 15
  %idxprom.i = zext i32 %and.i to i64
  %and1.i = and i32 %or34, 15
  %idxprom2.i = zext i32 %and1.i to i64
  %arrayidx3.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom.i, i64 %idxprom2.i
  %36 = load i8, ptr %arrayidx3.i, align 1, !tbaa !9
  %conv.i = zext i8 %36 to i32
  %shr4.i = lshr i32 %or34, 12
  %and5.i = and i32 %shr4.i, 15
  %idxprom6.i = zext i32 %and5.i to i64
  %shr8.i = lshr i32 %or34, 8
  %and9.i = and i32 %shr8.i, 15
  %idxprom10.i = zext i32 %and9.i to i64
  %arrayidx11.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom6.i, i64 %idxprom10.i
  %37 = load i8, ptr %arrayidx11.i, align 1, !tbaa !9
  %conv12.i = zext i8 %37 to i32
  %shl.i = shl nuw nsw i32 %conv12.i, 8
  %add.i = or i32 %shl.i, %conv.i
  %shr13.i = lshr i32 %or34, 20
  %and14.i = and i32 %shr13.i, 15
  %idxprom15.i = zext i32 %and14.i to i64
  %shr17.i = lshr i32 %or34, 16
  %and18.i = and i32 %shr17.i, 15
  %idxprom19.i = zext i32 %and18.i to i64
  %arrayidx20.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom15.i, i64 %idxprom19.i
  %38 = load i8, ptr %arrayidx20.i, align 1, !tbaa !9
  %conv21.i = zext i8 %38 to i32
  %shl22.i = shl nuw nsw i32 %conv21.i, 16
  %add23.i = or i32 %add.i, %shl22.i
  %shr24.i = lshr i32 %or34, 28
  %idxprom26.i = zext i32 %shr24.i to i64
  %shr28.i = lshr i32 %or34, 24
  %and29.i = and i32 %shr28.i, 15
  %idxprom30.i = zext i32 %and29.i to i64
  %arrayidx31.i = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom26.i, i64 %idxprom30.i
  %39 = load i8, ptr %arrayidx31.i, align 1, !tbaa !9
  %conv32.i = zext i8 %39 to i32
  %shl33.i = shl nuw i32 %conv32.i, 24
  %add34.i = or i32 %add23.i, %shl33.i
  %40 = trunc i64 %indvars.iv133 to i32
  %41 = add i32 %40, -1
  %div.udiv = udiv i32 %41, %Nk.0
  %idxprom36 = zext i32 %div.udiv to i64
  %arrayidx37 = getelementptr inbounds [15 x i32], ptr @__const.aes_key_setup.Rcon, i64 0, i64 %idxprom36
  %42 = load i32, ptr %arrayidx37, align 4, !tbaa !32
  %xor = xor i32 %add34.i, %42
  br label %if.end45

if.else:                                          ; preds = %for.body28
  %cmp41 = icmp eq i32 %rem, 4
  %or.cond = select i1 %cmp38, i1 %cmp41, i1 false
  br i1 %or.cond, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.else
  %shr.i89 = lshr i32 %store_forwarded, 4
  %and.i90 = and i32 %shr.i89, 15
  %idxprom.i91 = zext i32 %and.i90 to i64
  %and1.i92 = and i32 %store_forwarded, 15
  %idxprom2.i93 = zext i32 %and1.i92 to i64
  %arrayidx3.i94 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom.i91, i64 %idxprom2.i93
  %43 = load i8, ptr %arrayidx3.i94, align 1, !tbaa !9
  %conv.i95 = zext i8 %43 to i32
  %shr4.i96 = lshr i32 %store_forwarded, 12
  %and5.i97 = and i32 %shr4.i96, 15
  %idxprom6.i98 = zext i32 %and5.i97 to i64
  %shr8.i99 = lshr i32 %store_forwarded, 8
  %and9.i100 = and i32 %shr8.i99, 15
  %idxprom10.i101 = zext i32 %and9.i100 to i64
  %arrayidx11.i102 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom6.i98, i64 %idxprom10.i101
  %44 = load i8, ptr %arrayidx11.i102, align 1, !tbaa !9
  %conv12.i103 = zext i8 %44 to i32
  %shl.i104 = shl nuw nsw i32 %conv12.i103, 8
  %add.i105 = or i32 %shl.i104, %conv.i95
  %shr13.i106 = lshr i32 %store_forwarded, 20
  %and14.i107 = and i32 %shr13.i106, 15
  %idxprom15.i108 = zext i32 %and14.i107 to i64
  %shr17.i109 = lshr i32 %store_forwarded, 16
  %and18.i110 = and i32 %shr17.i109, 15
  %idxprom19.i111 = zext i32 %and18.i110 to i64
  %arrayidx20.i112 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom15.i108, i64 %idxprom19.i111
  %45 = load i8, ptr %arrayidx20.i112, align 1, !tbaa !9
  %conv21.i113 = zext i8 %45 to i32
  %shl22.i114 = shl nuw nsw i32 %conv21.i113, 16
  %add23.i115 = or i32 %add.i105, %shl22.i114
  %shr24.i116 = lshr i32 %store_forwarded, 28
  %idxprom26.i117 = zext i32 %shr24.i116 to i64
  %shr28.i118 = lshr i32 %store_forwarded, 24
  %and29.i119 = and i32 %shr28.i118, 15
  %idxprom30.i120 = zext i32 %and29.i119 to i64
  %arrayidx31.i121 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom26.i117, i64 %idxprom30.i120
  %46 = load i8, ptr %arrayidx31.i121, align 1, !tbaa !9
  %conv32.i122 = zext i8 %46 to i32
  %shl33.i123 = shl nuw i32 %conv32.i122, 24
  %add34.i124 = or i32 %add23.i115, %shl33.i123
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.else, %if.then
  %temp.0 = phi i32 [ %xor, %if.then ], [ %add34.i124, %if.then43 ], [ %store_forwarded, %if.else ]
  %47 = sub nuw nsw i64 %indvars.iv133, %16
  %arrayidx48 = getelementptr inbounds i32, ptr %w, i64 %47
  %48 = load i32, ptr %arrayidx48, align 4, !tbaa !32
  %xor49 = xor i32 %48, %temp.0
  %arrayidx51 = getelementptr inbounds i32, ptr %w, i64 %indvars.iv133
  store i32 %xor49, ptr %arrayidx51, align 4, !tbaa !32
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next134, %Nr.0
  br i1 %exitcond139.not, label %cleanup, label %for.body28, !llvm.loop !42

cleanup:                                          ; preds = %if.end45, %entry
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ccm_prepare_first_format_blk(ptr nocapture noundef writeonly %buf, i32 noundef %assoc_len, i32 noundef %payload_len, i32 noundef %payload_len_store_size, i32 noundef %mac_len, ptr nocapture noundef readonly %nonce, i32 noundef %nonce_len) local_unnamed_addr #4 {
entry:
  %sub = add nsw i32 %mac_len, -2
  %div = sdiv i32 %sub, 2
  %and = shl i32 %div, 3
  %shl = and i32 %and, 56
  %sub1 = add i32 %payload_len_store_size, 7
  %and2 = and i32 %sub1, 7
  %or = or i32 %shl, %and2
  %conv = trunc i32 %or to i8
  %cmp = icmp sgt i32 %assoc_len, 0
  %conv6 = or i8 %conv, 64
  %storemerge = select i1 %cmp, i8 %conv6, i8 %conv
  store i8 %storemerge, ptr %buf, align 1, !tbaa !9
  %arrayidx7 = getelementptr inbounds i8, ptr %buf, i64 1
  %conv8 = sext i32 %nonce_len to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %arrayidx7, ptr align 1 %nonce, i64 %conv8, i1 false)
  %add9 = add nsw i32 %nonce_len, 1
  %idxprom = sext i32 %add9 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %buf, i64 %idxprom
  %sub11 = sub nsw i32 15, %nonce_len
  %conv12 = sext i32 %sub11 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %arrayidx10, i8 0, i64 %conv12, i1 false)
  %conv14 = trunc i32 %payload_len to i8
  %arrayidx15 = getelementptr inbounds i8, ptr %buf, i64 15
  store i8 %conv14, ptr %arrayidx15, align 1, !tbaa !9
  %0 = lshr i32 %payload_len, 8
  %conv17 = trunc i32 %0 to i8
  %arrayidx18 = getelementptr inbounds i8, ptr %buf, i64 14
  store i8 %conv17, ptr %arrayidx18, align 1, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ccm_format_assoc_data(ptr nocapture noundef writeonly %buf, ptr nocapture noundef %end_of_buf, ptr nocapture noundef readonly %assoc, i32 noundef %assoc_len) local_unnamed_addr #4 {
entry:
  %conv = trunc i32 %assoc_len to i8
  %0 = load i32, ptr %end_of_buf, align 4, !tbaa !32
  %add = add nsw i32 %0, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %buf, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !9
  %1 = lshr i32 %assoc_len, 8
  %conv2 = trunc i32 %1 to i8
  %2 = load i32, ptr %end_of_buf, align 4, !tbaa !32
  %idxprom3 = sext i32 %2 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %buf, i64 %idxprom3
  store i8 %conv2, ptr %arrayidx4, align 1, !tbaa !9
  %3 = load i32, ptr %end_of_buf, align 4, !tbaa !32
  %add5 = add nsw i32 %3, 2
  store i32 %add5, ptr %end_of_buf, align 4, !tbaa !32
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %buf, i64 %idxprom6
  %conv8 = sext i32 %assoc_len to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx7, ptr align 1 %assoc, i64 %conv8, i1 false)
  %4 = load i32, ptr %end_of_buf, align 4, !tbaa !32
  %add9 = add nsw i32 %4, %assoc_len
  store i32 %add9, ptr %end_of_buf, align 4, !tbaa !32
  %rem = srem i32 %add9, 16
  %sub = sub nsw i32 16, %rem
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %buf, i64 %idxprom10
  %conv12 = zext i32 %sub to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %arrayidx11, i8 0, i64 %conv12, i1 false)
  %5 = load i32, ptr %end_of_buf, align 4, !tbaa !32
  %add13 = add nsw i32 %5, %sub
  store i32 %add13, ptr %end_of_buf, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ccm_format_payload_data(ptr nocapture noundef writeonly %buf, ptr nocapture noundef %end_of_buf, ptr nocapture noundef readonly %payload, i32 noundef %payload_len) local_unnamed_addr #4 {
entry:
  %0 = load i32, ptr %end_of_buf, align 4, !tbaa !32
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds i8, ptr %buf, i64 %idxprom
  %conv = sext i32 %payload_len to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx, ptr align 1 %payload, i64 %conv, i1 false)
  %1 = load i32, ptr %end_of_buf, align 4, !tbaa !32
  %add = add nsw i32 %1, %payload_len
  store i32 %add, ptr %end_of_buf, align 4, !tbaa !32
  %rem = srem i32 %add, 16
  %cmp.not = icmp eq i32 %rem, 0
  %sub = sub nsw i32 16, %rem
  %spec.select = select i1 %cmp.not, i32 0, i32 %sub
  %idxprom2 = sext i32 %add to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %buf, i64 %idxprom2
  %conv4 = zext i32 %spec.select to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %arrayidx3, i8 0, i64 %conv4, i1 false)
  %2 = load i32, ptr %end_of_buf, align 4, !tbaa !32
  %add5 = add nsw i32 %spec.select, %2
  store i32 %add5, ptr %end_of_buf, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ccm_prepare_first_ctr_blk(ptr nocapture noundef writeonly %counter, ptr nocapture noundef readonly %nonce, i32 noundef %nonce_len, i32 noundef %payload_len_store_size) local_unnamed_addr #4 {
entry:
  %0 = getelementptr inbounds i8, ptr %counter, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 15, i1 false)
  %1 = trunc i32 %payload_len_store_size to i8
  %2 = add i8 %1, 7
  %conv = and i8 %2, 7
  store i8 %conv, ptr %counter, align 1, !tbaa !9
  %arrayidx1 = getelementptr inbounds i8, ptr %counter, i64 1
  %conv2 = sext i32 %nonce_len to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %arrayidx1, ptr align 1 %nonce, i64 %conv2, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @aes_decrypt_ccm(ptr nocapture noundef readonly %ciphertext, i32 noundef %ciphertext_len, ptr nocapture noundef readonly %assoc, i16 noundef zeroext %assoc_len, ptr nocapture noundef readonly %nonce, i16 noundef zeroext %nonce_len, ptr noundef %plaintext, ptr nocapture noundef %plaintext_len, i32 noundef %mac_len, ptr noundef writeonly %mac_auth, ptr nocapture noundef readonly %key_str, i32 noundef %keysize) local_unnamed_addr #5 {
entry:
  %temp_iv = alloca [16 x i8], align 16
  %counter = alloca [16 x i8], align 16
  %mac = alloca [16 x i8], align 16
  %mac_buf = alloca [16 x i8], align 16
  %key = alloca [60 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %temp_iv) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %counter) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mac) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mac_buf) #16
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %key) #16
  %cmp.not = icmp ugt i32 %ciphertext_len, %mac_len
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %assoc_len to i32
  %add = add i32 %ciphertext_len, 48
  %add1 = add i32 %add, %conv
  %conv2 = zext i32 %add1 to i64
  %call = tail call noalias ptr @malloc(i64 noundef %conv2) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  call void @aes_key_setup(ptr noundef %key_str, ptr noundef nonnull %key, i32 noundef %keysize)
  %sub = sub i32 %ciphertext_len, %mac_len
  store i32 %sub, ptr %plaintext_len, align 4, !tbaa !32
  %conv5 = zext i16 %nonce_len to i32
  %sub6 = sub nsw i32 15, %conv5
  %conv7 = zext i32 %sub to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %plaintext, ptr align 1 %ciphertext, i64 %conv7, i1 false)
  %0 = load i32, ptr %plaintext_len, align 4, !tbaa !32
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds i8, ptr %ciphertext, i64 %idxprom
  %conv9 = zext i32 %mac_len to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %mac, ptr align 1 %arrayidx, i64 %conv9, i1 false)
  %1 = getelementptr inbounds i8, ptr %counter, i64 1
  %2 = trunc i32 %sub6 to i8
  %3 = add i8 %2, 7
  %conv.i = and i8 %3, 7
  store i8 %conv.i, ptr %counter, align 16, !tbaa !9
  %conv2.i = zext i16 %nonce_len to i64
  %4 = icmp ugt i16 %nonce_len, 14
  %5 = sub nsw i64 15, %conv2.i
  %6 = select i1 %4, i64 0, i64 %5
  %7 = getelementptr i8, ptr %1, i64 %conv2.i
  call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 %6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %nonce, i64 %conv2.i, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %temp_iv, ptr noundef nonnull align 16 dereferenceable(16) %counter, i64 16, i1 false)
  %notsub = add i32 %mac_len, -16
  %cmp.not14.i = icmp sgt i32 %notsub, -2
  br i1 %cmp.not14.i, label %increment_iv.exit, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end4
  %sub.i = add nsw i32 %mac_len, 1
  %8 = sext i32 %sub.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ 15, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds i8, ptr %temp_iv, i64 %indvars.iv.i
  %9 = load i8, ptr %arrayidx.i, align 1, !tbaa !9
  %inc.i = add i8 %9, 1
  store i8 %inc.i, ptr %arrayidx.i, align 1, !tbaa !9
  %cmp3.not.i = icmp eq i8 %inc.i, 0
  %10 = icmp ne i64 %indvars.iv.i, %8
  %or.cond.not18.i = select i1 %cmp3.not.i, i1 %10, i1 false
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %cmp.not.not.i = icmp sgt i64 %indvars.iv.i, %8
  %or.cond17.i = select i1 %or.cond.not18.i, i1 %cmp.not.not.i, i1 false
  br i1 %or.cond17.i, label %for.body.i, label %increment_iv.exit, !llvm.loop !36

increment_iv.exit:                                ; preds = %for.body.i, %if.end4
  call void @aes_encrypt_ctr(ptr noundef %plaintext, i64 noundef %idxprom, ptr noundef %plaintext, ptr noundef nonnull %key, i32 noundef %keysize, ptr noundef nonnull %temp_iv)
  %cmp19.not = icmp eq ptr %mac_auth, null
  br i1 %cmp19.not, label %if.end46, label %if.then21

if.then21:                                        ; preds = %increment_iv.exit
  call void @aes_encrypt_ctr(ptr noundef nonnull %mac, i64 noundef %conv9, ptr noundef nonnull %mac, ptr noundef nonnull %key, i32 noundef %keysize, ptr noundef nonnull %counter)
  %11 = load i32, ptr %plaintext_len, align 4, !tbaa !32
  %sub.i90 = add nsw i32 %mac_len, -2
  %div.i = sdiv i32 %sub.i90, 2
  %and.i = shl i32 %div.i, 3
  %shl.i = and i32 %and.i, 56
  %sub1.i = sub nsw i32 6, %conv5
  %and2.i = and i32 %sub1.i, 7
  %or.i = or i32 %shl.i, %and2.i
  %conv.i91 = trunc i32 %or.i to i8
  %cmp.i.not = icmp eq i16 %assoc_len, 0
  %conv6.i = or i8 %conv.i91, 64
  %storemerge.i = select i1 %cmp.i.not, i8 %conv.i91, i8 %conv6.i
  store i8 %storemerge.i, ptr %call, align 1, !tbaa !9
  %arrayidx7.i = getelementptr inbounds i8, ptr %call, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %arrayidx7.i, ptr align 1 %nonce, i64 %conv2.i, i1 false)
  %add9.i = add nuw nsw i32 %conv5, 1
  %idxprom.i = zext i32 %add9.i to i64
  %arrayidx10.i = getelementptr inbounds i8, ptr %call, i64 %idxprom.i
  %conv12.i = sext i32 %sub6 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %arrayidx10.i, i8 0, i64 %conv12.i, i1 false)
  %conv14.i = trunc i32 %11 to i8
  %arrayidx15.i = getelementptr inbounds i8, ptr %call, i64 15
  store i8 %conv14.i, ptr %arrayidx15.i, align 1, !tbaa !9
  %12 = lshr i32 %11, 8
  %conv17.i = trunc i32 %12 to i8
  %arrayidx18.i = getelementptr inbounds i8, ptr %call, i64 14
  store i8 %conv17.i, ptr %arrayidx18.i, align 1, !tbaa !9
  %conv.i92 = trunc i16 %assoc_len to i8
  %arrayidx.i94 = getelementptr inbounds i8, ptr %call, i64 17
  store i8 %conv.i92, ptr %arrayidx.i94, align 1, !tbaa !9
  %13 = lshr i16 %assoc_len, 8
  %conv2.i95 = trunc i16 %13 to i8
  %arrayidx4.i = getelementptr inbounds i8, ptr %call, i64 16
  store i8 %conv2.i95, ptr %arrayidx4.i, align 1, !tbaa !9
  %arrayidx7.i96 = getelementptr inbounds i8, ptr %call, i64 18
  %conv8.i97 = zext i16 %assoc_len to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %arrayidx7.i96, ptr align 1 %assoc, i64 %conv8.i97, i1 false)
  %add9.i98 = add nuw nsw i32 %conv, 18
  %rem.i = and i32 %add9.i98, 15
  %sub.i99 = sub nuw nsw i32 16, %rem.i
  %idxprom10.i = zext i32 %add9.i98 to i64
  %arrayidx11.i = getelementptr inbounds i8, ptr %call, i64 %idxprom10.i
  %conv12.i100 = zext i32 %sub.i99 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %arrayidx11.i, i8 0, i64 %conv12.i100, i1 false)
  %add13.i = add nuw nsw i32 %sub.i99, %add9.i98
  %idxprom.i101 = zext i32 %add13.i to i64
  %arrayidx.i102 = getelementptr inbounds i8, ptr %call, i64 %idxprom.i101
  %conv.i103 = sext i32 %11 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %arrayidx.i102, ptr align 1 %plaintext, i64 %conv.i103, i1 false)
  %add.i104 = add nsw i32 %11, %add13.i
  %rem.i105 = srem i32 %add.i104, 16
  %cmp.not.i = icmp eq i32 %rem.i105, 0
  %sub.i106 = sub nsw i32 16, %rem.i105
  %spec.select.i = select i1 %cmp.not.i, i32 0, i32 %sub.i106
  %idxprom2.i = sext i32 %add.i104 to i64
  %arrayidx3.i = getelementptr inbounds i8, ptr %call, i64 %idxprom2.i
  %conv4.i = zext i32 %spec.select.i to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %arrayidx3.i, i8 0, i64 %conv4.i, i1 false)
  %add5.i107 = add nsw i32 %spec.select.i, %add.i104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %temp_iv, i8 0, i64 16, i1 false)
  %conv33 = sext i32 %add5.i107 to i64
  %call37 = call i32 @aes_encrypt_cbc_mac(ptr noundef nonnull %call, i64 noundef %conv33, ptr noundef nonnull %mac_buf, ptr noundef nonnull %key, i32 noundef %keysize, ptr noundef nonnull %temp_iv)
  %bcmp = call i32 @bcmp(ptr nonnull %mac, ptr nonnull %mac_buf, i64 %conv9)
  %tobool42.not = icmp eq i32 %bcmp, 0
  br i1 %tobool42.not, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.then21
  store i32 1, ptr %mac_auth, align 4, !tbaa !32
  br label %if.end46

if.else:                                          ; preds = %if.then21
  store i32 0, ptr %mac_auth, align 4, !tbaa !32
  %14 = load i32, ptr %plaintext_len, align 4, !tbaa !32
  %conv44 = zext i32 %14 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %plaintext, i8 0, i64 %conv44, i1 false)
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then43, %increment_iv.exit
  call void @free(ptr noundef %call) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end, %entry
  %retval.0 = phi i32 [ 1, %if.end46 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %key) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mac_buf) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mac) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %counter) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %temp_iv) #16
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @SubWord(i32 noundef %word) local_unnamed_addr #9 {
entry:
  %shr = lshr i32 %word, 4
  %and = and i32 %shr, 15
  %idxprom = zext i32 %and to i64
  %and1 = and i32 %word, 15
  %idxprom2 = zext i32 %and1 to i64
  %arrayidx3 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom, i64 %idxprom2
  %0 = load i8, ptr %arrayidx3, align 1, !tbaa !9
  %conv = zext i8 %0 to i32
  %shr4 = lshr i32 %word, 12
  %and5 = and i32 %shr4, 15
  %idxprom6 = zext i32 %and5 to i64
  %shr8 = lshr i32 %word, 8
  %and9 = and i32 %shr8, 15
  %idxprom10 = zext i32 %and9 to i64
  %arrayidx11 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom6, i64 %idxprom10
  %1 = load i8, ptr %arrayidx11, align 1, !tbaa !9
  %conv12 = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv12, 8
  %add = or i32 %shl, %conv
  %shr13 = lshr i32 %word, 20
  %and14 = and i32 %shr13, 15
  %idxprom15 = zext i32 %and14 to i64
  %shr17 = lshr i32 %word, 16
  %and18 = and i32 %shr17, 15
  %idxprom19 = zext i32 %and18 to i64
  %arrayidx20 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom15, i64 %idxprom19
  %2 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %conv21 = zext i8 %2 to i32
  %shl22 = shl nuw nsw i32 %conv21, 16
  %add23 = or i32 %add, %shl22
  %shr24 = lshr i32 %word, 28
  %idxprom26 = zext i32 %shr24 to i64
  %shr28 = lshr i32 %word, 24
  %and29 = and i32 %shr28, 15
  %idxprom30 = zext i32 %and29 to i64
  %arrayidx31 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom26, i64 %idxprom30
  %3 = load i8, ptr %arrayidx31, align 1, !tbaa !9
  %conv32 = zext i8 %3 to i32
  %shl33 = shl nuw i32 %conv32, 24
  %add34 = or i32 %add23, %shl33
  ret i32 %add34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @AddRoundKey(ptr nocapture noundef %state, ptr nocapture noundef readonly %w) local_unnamed_addr #10 {
entry:
  %0 = load i32, ptr %w, align 4, !tbaa !32
  %shr = lshr i32 %0, 24
  %shr3 = lshr i32 %0, 16
  %shr7 = lshr i32 %0, 8
  %1 = load i8, ptr %state, align 1, !tbaa !9
  %2 = trunc i32 %shr to i8
  %conv18 = xor i8 %1, %2
  store i8 %conv18, ptr %state, align 1, !tbaa !9
  %arrayidx21 = getelementptr inbounds [4 x i8], ptr %state, i64 1
  %3 = load i8, ptr %arrayidx21, align 1, !tbaa !9
  %4 = trunc i32 %shr3 to i8
  %conv25 = xor i8 %3, %4
  store i8 %conv25, ptr %arrayidx21, align 1, !tbaa !9
  %arrayidx28 = getelementptr inbounds [4 x i8], ptr %state, i64 2
  %5 = load i8, ptr %arrayidx28, align 1, !tbaa !9
  %6 = trunc i32 %shr7 to i8
  %conv32 = xor i8 %5, %6
  store i8 %conv32, ptr %arrayidx28, align 1, !tbaa !9
  %arrayidx35 = getelementptr inbounds [4 x i8], ptr %state, i64 3
  %7 = load i8, ptr %arrayidx35, align 1, !tbaa !9
  %8 = trunc i32 %0 to i8
  %conv39 = xor i8 %7, %8
  store i8 %conv39, ptr %arrayidx35, align 1, !tbaa !9
  %arrayidx40 = getelementptr inbounds i32, ptr %w, i64 1
  %9 = load i32, ptr %arrayidx40, align 4, !tbaa !32
  %shr41 = lshr i32 %9, 24
  %shr45 = lshr i32 %9, 16
  %shr49 = lshr i32 %9, 8
  %arrayidx58 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 1
  %10 = load i8, ptr %arrayidx58, align 1, !tbaa !9
  %11 = trunc i32 %shr41 to i8
  %conv61 = xor i8 %10, %11
  store i8 %conv61, ptr %arrayidx58, align 1, !tbaa !9
  %arrayidx65 = getelementptr inbounds [4 x i8], ptr %state, i64 1, i64 1
  %12 = load i8, ptr %arrayidx65, align 1, !tbaa !9
  %13 = trunc i32 %shr45 to i8
  %conv68 = xor i8 %12, %13
  store i8 %conv68, ptr %arrayidx65, align 1, !tbaa !9
  %arrayidx72 = getelementptr inbounds [4 x i8], ptr %state, i64 2, i64 1
  %14 = load i8, ptr %arrayidx72, align 1, !tbaa !9
  %15 = trunc i32 %shr49 to i8
  %conv75 = xor i8 %14, %15
  store i8 %conv75, ptr %arrayidx72, align 1, !tbaa !9
  %arrayidx79 = getelementptr inbounds [4 x i8], ptr %state, i64 3, i64 1
  %16 = load i8, ptr %arrayidx79, align 1, !tbaa !9
  %17 = trunc i32 %9 to i8
  %conv82 = xor i8 %16, %17
  store i8 %conv82, ptr %arrayidx79, align 1, !tbaa !9
  %arrayidx83 = getelementptr inbounds i32, ptr %w, i64 2
  %18 = load i32, ptr %arrayidx83, align 4, !tbaa !32
  %shr84 = lshr i32 %18, 24
  %shr88 = lshr i32 %18, 16
  %shr92 = lshr i32 %18, 8
  %arrayidx101 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 2
  %19 = load i8, ptr %arrayidx101, align 1, !tbaa !9
  %20 = trunc i32 %shr84 to i8
  %conv104 = xor i8 %19, %20
  store i8 %conv104, ptr %arrayidx101, align 1, !tbaa !9
  %arrayidx108 = getelementptr inbounds [4 x i8], ptr %state, i64 1, i64 2
  %21 = load i8, ptr %arrayidx108, align 1, !tbaa !9
  %22 = trunc i32 %shr88 to i8
  %conv111 = xor i8 %21, %22
  store i8 %conv111, ptr %arrayidx108, align 1, !tbaa !9
  %arrayidx115 = getelementptr inbounds [4 x i8], ptr %state, i64 2, i64 2
  %23 = load i8, ptr %arrayidx115, align 1, !tbaa !9
  %24 = trunc i32 %shr92 to i8
  %conv118 = xor i8 %23, %24
  store i8 %conv118, ptr %arrayidx115, align 1, !tbaa !9
  %arrayidx122 = getelementptr inbounds [4 x i8], ptr %state, i64 3, i64 2
  %25 = load i8, ptr %arrayidx122, align 1, !tbaa !9
  %26 = trunc i32 %18 to i8
  %conv125 = xor i8 %25, %26
  store i8 %conv125, ptr %arrayidx122, align 1, !tbaa !9
  %arrayidx126 = getelementptr inbounds i32, ptr %w, i64 3
  %27 = load i32, ptr %arrayidx126, align 4, !tbaa !32
  %shr127 = lshr i32 %27, 24
  %shr131 = lshr i32 %27, 16
  %shr135 = lshr i32 %27, 8
  %arrayidx144 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 3
  %28 = load i8, ptr %arrayidx144, align 1, !tbaa !9
  %29 = trunc i32 %shr127 to i8
  %conv147 = xor i8 %28, %29
  store i8 %conv147, ptr %arrayidx144, align 1, !tbaa !9
  %arrayidx151 = getelementptr inbounds [4 x i8], ptr %state, i64 1, i64 3
  %30 = load i8, ptr %arrayidx151, align 1, !tbaa !9
  %31 = trunc i32 %shr131 to i8
  %conv154 = xor i8 %30, %31
  store i8 %conv154, ptr %arrayidx151, align 1, !tbaa !9
  %arrayidx158 = getelementptr inbounds [4 x i8], ptr %state, i64 2, i64 3
  %32 = load i8, ptr %arrayidx158, align 1, !tbaa !9
  %33 = trunc i32 %shr135 to i8
  %conv161 = xor i8 %32, %33
  store i8 %conv161, ptr %arrayidx158, align 1, !tbaa !9
  %arrayidx165 = getelementptr inbounds [4 x i8], ptr %state, i64 3, i64 3
  %34 = load i8, ptr %arrayidx165, align 1, !tbaa !9
  %35 = trunc i32 %27 to i8
  %conv168 = xor i8 %34, %35
  store i8 %conv168, ptr %arrayidx165, align 1, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @SubBytes(ptr nocapture noundef %state) local_unnamed_addr #10 {
entry:
  %0 = load i8, ptr %state, align 1, !tbaa !9
  %conv = zext i8 %0 to i32
  %shr = lshr i32 %conv, 4
  %idxprom = zext i32 %shr to i64
  %and = and i32 %conv, 15
  %idxprom6 = zext i32 %and to i64
  %arrayidx7 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom, i64 %idxprom6
  %1 = load i8, ptr %arrayidx7, align 1, !tbaa !9
  store i8 %1, ptr %state, align 1, !tbaa !9
  %arrayidx11 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 1
  %2 = load i8, ptr %arrayidx11, align 1, !tbaa !9
  %conv12 = zext i8 %2 to i32
  %shr13 = lshr i32 %conv12, 4
  %idxprom14 = zext i32 %shr13 to i64
  %and19 = and i32 %conv12, 15
  %idxprom20 = zext i32 %and19 to i64
  %arrayidx21 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom14, i64 %idxprom20
  %3 = load i8, ptr %arrayidx21, align 1, !tbaa !9
  store i8 %3, ptr %arrayidx11, align 1, !tbaa !9
  %arrayidx25 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 2
  %4 = load i8, ptr %arrayidx25, align 1, !tbaa !9
  %conv26 = zext i8 %4 to i32
  %shr27 = lshr i32 %conv26, 4
  %idxprom28 = zext i32 %shr27 to i64
  %and33 = and i32 %conv26, 15
  %idxprom34 = zext i32 %and33 to i64
  %arrayidx35 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom28, i64 %idxprom34
  %5 = load i8, ptr %arrayidx35, align 1, !tbaa !9
  store i8 %5, ptr %arrayidx25, align 1, !tbaa !9
  %arrayidx39 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 3
  %6 = load i8, ptr %arrayidx39, align 1, !tbaa !9
  %conv40 = zext i8 %6 to i32
  %shr41 = lshr i32 %conv40, 4
  %idxprom42 = zext i32 %shr41 to i64
  %and47 = and i32 %conv40, 15
  %idxprom48 = zext i32 %and47 to i64
  %arrayidx49 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom42, i64 %idxprom48
  %7 = load i8, ptr %arrayidx49, align 1, !tbaa !9
  store i8 %7, ptr %arrayidx39, align 1, !tbaa !9
  %arrayidx52 = getelementptr inbounds [4 x i8], ptr %state, i64 1
  %8 = load i8, ptr %arrayidx52, align 1, !tbaa !9
  %conv54 = zext i8 %8 to i32
  %shr55 = lshr i32 %conv54, 4
  %idxprom56 = zext i32 %shr55 to i64
  %and61 = and i32 %conv54, 15
  %idxprom62 = zext i32 %and61 to i64
  %arrayidx63 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom56, i64 %idxprom62
  %9 = load i8, ptr %arrayidx63, align 1, !tbaa !9
  store i8 %9, ptr %arrayidx52, align 1, !tbaa !9
  %arrayidx67 = getelementptr inbounds [4 x i8], ptr %state, i64 1, i64 1
  %10 = load i8, ptr %arrayidx67, align 1, !tbaa !9
  %conv68 = zext i8 %10 to i32
  %shr69 = lshr i32 %conv68, 4
  %idxprom70 = zext i32 %shr69 to i64
  %and75 = and i32 %conv68, 15
  %idxprom76 = zext i32 %and75 to i64
  %arrayidx77 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom70, i64 %idxprom76
  %11 = load i8, ptr %arrayidx77, align 1, !tbaa !9
  store i8 %11, ptr %arrayidx67, align 1, !tbaa !9
  %arrayidx81 = getelementptr inbounds [4 x i8], ptr %state, i64 1, i64 2
  %12 = load i8, ptr %arrayidx81, align 1, !tbaa !9
  %conv82 = zext i8 %12 to i32
  %shr83 = lshr i32 %conv82, 4
  %idxprom84 = zext i32 %shr83 to i64
  %and89 = and i32 %conv82, 15
  %idxprom90 = zext i32 %and89 to i64
  %arrayidx91 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom84, i64 %idxprom90
  %13 = load i8, ptr %arrayidx91, align 1, !tbaa !9
  store i8 %13, ptr %arrayidx81, align 1, !tbaa !9
  %arrayidx95 = getelementptr inbounds [4 x i8], ptr %state, i64 1, i64 3
  %14 = load i8, ptr %arrayidx95, align 1, !tbaa !9
  %conv96 = zext i8 %14 to i32
  %shr97 = lshr i32 %conv96, 4
  %idxprom98 = zext i32 %shr97 to i64
  %and103 = and i32 %conv96, 15
  %idxprom104 = zext i32 %and103 to i64
  %arrayidx105 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom98, i64 %idxprom104
  %15 = load i8, ptr %arrayidx105, align 1, !tbaa !9
  store i8 %15, ptr %arrayidx95, align 1, !tbaa !9
  %arrayidx108 = getelementptr inbounds [4 x i8], ptr %state, i64 2
  %16 = load i8, ptr %arrayidx108, align 1, !tbaa !9
  %conv110 = zext i8 %16 to i32
  %shr111 = lshr i32 %conv110, 4
  %idxprom112 = zext i32 %shr111 to i64
  %and117 = and i32 %conv110, 15
  %idxprom118 = zext i32 %and117 to i64
  %arrayidx119 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom112, i64 %idxprom118
  %17 = load i8, ptr %arrayidx119, align 1, !tbaa !9
  store i8 %17, ptr %arrayidx108, align 1, !tbaa !9
  %arrayidx123 = getelementptr inbounds [4 x i8], ptr %state, i64 2, i64 1
  %18 = load i8, ptr %arrayidx123, align 1, !tbaa !9
  %conv124 = zext i8 %18 to i32
  %shr125 = lshr i32 %conv124, 4
  %idxprom126 = zext i32 %shr125 to i64
  %and131 = and i32 %conv124, 15
  %idxprom132 = zext i32 %and131 to i64
  %arrayidx133 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom126, i64 %idxprom132
  %19 = load i8, ptr %arrayidx133, align 1, !tbaa !9
  store i8 %19, ptr %arrayidx123, align 1, !tbaa !9
  %arrayidx137 = getelementptr inbounds [4 x i8], ptr %state, i64 2, i64 2
  %20 = load i8, ptr %arrayidx137, align 1, !tbaa !9
  %conv138 = zext i8 %20 to i32
  %shr139 = lshr i32 %conv138, 4
  %idxprom140 = zext i32 %shr139 to i64
  %and145 = and i32 %conv138, 15
  %idxprom146 = zext i32 %and145 to i64
  %arrayidx147 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom140, i64 %idxprom146
  %21 = load i8, ptr %arrayidx147, align 1, !tbaa !9
  store i8 %21, ptr %arrayidx137, align 1, !tbaa !9
  %arrayidx151 = getelementptr inbounds [4 x i8], ptr %state, i64 2, i64 3
  %22 = load i8, ptr %arrayidx151, align 1, !tbaa !9
  %conv152 = zext i8 %22 to i32
  %shr153 = lshr i32 %conv152, 4
  %idxprom154 = zext i32 %shr153 to i64
  %and159 = and i32 %conv152, 15
  %idxprom160 = zext i32 %and159 to i64
  %arrayidx161 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom154, i64 %idxprom160
  %23 = load i8, ptr %arrayidx161, align 1, !tbaa !9
  store i8 %23, ptr %arrayidx151, align 1, !tbaa !9
  %arrayidx164 = getelementptr inbounds [4 x i8], ptr %state, i64 3
  %24 = load i8, ptr %arrayidx164, align 1, !tbaa !9
  %conv166 = zext i8 %24 to i32
  %shr167 = lshr i32 %conv166, 4
  %idxprom168 = zext i32 %shr167 to i64
  %and173 = and i32 %conv166, 15
  %idxprom174 = zext i32 %and173 to i64
  %arrayidx175 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom168, i64 %idxprom174
  %25 = load i8, ptr %arrayidx175, align 1, !tbaa !9
  store i8 %25, ptr %arrayidx164, align 1, !tbaa !9
  %arrayidx179 = getelementptr inbounds [4 x i8], ptr %state, i64 3, i64 1
  %26 = load i8, ptr %arrayidx179, align 1, !tbaa !9
  %conv180 = zext i8 %26 to i32
  %shr181 = lshr i32 %conv180, 4
  %idxprom182 = zext i32 %shr181 to i64
  %and187 = and i32 %conv180, 15
  %idxprom188 = zext i32 %and187 to i64
  %arrayidx189 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom182, i64 %idxprom188
  %27 = load i8, ptr %arrayidx189, align 1, !tbaa !9
  store i8 %27, ptr %arrayidx179, align 1, !tbaa !9
  %arrayidx193 = getelementptr inbounds [4 x i8], ptr %state, i64 3, i64 2
  %28 = load i8, ptr %arrayidx193, align 1, !tbaa !9
  %conv194 = zext i8 %28 to i32
  %shr195 = lshr i32 %conv194, 4
  %idxprom196 = zext i32 %shr195 to i64
  %and201 = and i32 %conv194, 15
  %idxprom202 = zext i32 %and201 to i64
  %arrayidx203 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom196, i64 %idxprom202
  %29 = load i8, ptr %arrayidx203, align 1, !tbaa !9
  store i8 %29, ptr %arrayidx193, align 1, !tbaa !9
  %arrayidx207 = getelementptr inbounds [4 x i8], ptr %state, i64 3, i64 3
  %30 = load i8, ptr %arrayidx207, align 1, !tbaa !9
  %conv208 = zext i8 %30 to i32
  %shr209 = lshr i32 %conv208, 4
  %idxprom210 = zext i32 %shr209 to i64
  %and215 = and i32 %conv208, 15
  %idxprom216 = zext i32 %and215 to i64
  %arrayidx217 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_sbox, i64 0, i64 %idxprom210, i64 %idxprom216
  %31 = load i8, ptr %arrayidx217, align 1, !tbaa !9
  store i8 %31, ptr %arrayidx207, align 1, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @InvSubBytes(ptr nocapture noundef %state) local_unnamed_addr #10 {
entry:
  %0 = load i8, ptr %state, align 1, !tbaa !9
  %conv = zext i8 %0 to i32
  %shr = lshr i32 %conv, 4
  %idxprom = zext i32 %shr to i64
  %and = and i32 %conv, 15
  %idxprom6 = zext i32 %and to i64
  %arrayidx7 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom, i64 %idxprom6
  %1 = load i8, ptr %arrayidx7, align 1, !tbaa !9
  store i8 %1, ptr %state, align 1, !tbaa !9
  %arrayidx11 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 1
  %2 = load i8, ptr %arrayidx11, align 1, !tbaa !9
  %conv12 = zext i8 %2 to i32
  %shr13 = lshr i32 %conv12, 4
  %idxprom14 = zext i32 %shr13 to i64
  %and19 = and i32 %conv12, 15
  %idxprom20 = zext i32 %and19 to i64
  %arrayidx21 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom14, i64 %idxprom20
  %3 = load i8, ptr %arrayidx21, align 1, !tbaa !9
  store i8 %3, ptr %arrayidx11, align 1, !tbaa !9
  %arrayidx25 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 2
  %4 = load i8, ptr %arrayidx25, align 1, !tbaa !9
  %conv26 = zext i8 %4 to i32
  %shr27 = lshr i32 %conv26, 4
  %idxprom28 = zext i32 %shr27 to i64
  %and33 = and i32 %conv26, 15
  %idxprom34 = zext i32 %and33 to i64
  %arrayidx35 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom28, i64 %idxprom34
  %5 = load i8, ptr %arrayidx35, align 1, !tbaa !9
  store i8 %5, ptr %arrayidx25, align 1, !tbaa !9
  %arrayidx39 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 3
  %6 = load i8, ptr %arrayidx39, align 1, !tbaa !9
  %conv40 = zext i8 %6 to i32
  %shr41 = lshr i32 %conv40, 4
  %idxprom42 = zext i32 %shr41 to i64
  %and47 = and i32 %conv40, 15
  %idxprom48 = zext i32 %and47 to i64
  %arrayidx49 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom42, i64 %idxprom48
  %7 = load i8, ptr %arrayidx49, align 1, !tbaa !9
  store i8 %7, ptr %arrayidx39, align 1, !tbaa !9
  %arrayidx52 = getelementptr inbounds [4 x i8], ptr %state, i64 1
  %8 = load i8, ptr %arrayidx52, align 1, !tbaa !9
  %conv54 = zext i8 %8 to i32
  %shr55 = lshr i32 %conv54, 4
  %idxprom56 = zext i32 %shr55 to i64
  %and61 = and i32 %conv54, 15
  %idxprom62 = zext i32 %and61 to i64
  %arrayidx63 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom56, i64 %idxprom62
  %9 = load i8, ptr %arrayidx63, align 1, !tbaa !9
  store i8 %9, ptr %arrayidx52, align 1, !tbaa !9
  %arrayidx67 = getelementptr inbounds [4 x i8], ptr %state, i64 1, i64 1
  %10 = load i8, ptr %arrayidx67, align 1, !tbaa !9
  %conv68 = zext i8 %10 to i32
  %shr69 = lshr i32 %conv68, 4
  %idxprom70 = zext i32 %shr69 to i64
  %and75 = and i32 %conv68, 15
  %idxprom76 = zext i32 %and75 to i64
  %arrayidx77 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom70, i64 %idxprom76
  %11 = load i8, ptr %arrayidx77, align 1, !tbaa !9
  store i8 %11, ptr %arrayidx67, align 1, !tbaa !9
  %arrayidx81 = getelementptr inbounds [4 x i8], ptr %state, i64 1, i64 2
  %12 = load i8, ptr %arrayidx81, align 1, !tbaa !9
  %conv82 = zext i8 %12 to i32
  %shr83 = lshr i32 %conv82, 4
  %idxprom84 = zext i32 %shr83 to i64
  %and89 = and i32 %conv82, 15
  %idxprom90 = zext i32 %and89 to i64
  %arrayidx91 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom84, i64 %idxprom90
  %13 = load i8, ptr %arrayidx91, align 1, !tbaa !9
  store i8 %13, ptr %arrayidx81, align 1, !tbaa !9
  %arrayidx95 = getelementptr inbounds [4 x i8], ptr %state, i64 1, i64 3
  %14 = load i8, ptr %arrayidx95, align 1, !tbaa !9
  %conv96 = zext i8 %14 to i32
  %shr97 = lshr i32 %conv96, 4
  %idxprom98 = zext i32 %shr97 to i64
  %and103 = and i32 %conv96, 15
  %idxprom104 = zext i32 %and103 to i64
  %arrayidx105 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom98, i64 %idxprom104
  %15 = load i8, ptr %arrayidx105, align 1, !tbaa !9
  store i8 %15, ptr %arrayidx95, align 1, !tbaa !9
  %arrayidx108 = getelementptr inbounds [4 x i8], ptr %state, i64 2
  %16 = load i8, ptr %arrayidx108, align 1, !tbaa !9
  %conv110 = zext i8 %16 to i32
  %shr111 = lshr i32 %conv110, 4
  %idxprom112 = zext i32 %shr111 to i64
  %and117 = and i32 %conv110, 15
  %idxprom118 = zext i32 %and117 to i64
  %arrayidx119 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom112, i64 %idxprom118
  %17 = load i8, ptr %arrayidx119, align 1, !tbaa !9
  store i8 %17, ptr %arrayidx108, align 1, !tbaa !9
  %arrayidx123 = getelementptr inbounds [4 x i8], ptr %state, i64 2, i64 1
  %18 = load i8, ptr %arrayidx123, align 1, !tbaa !9
  %conv124 = zext i8 %18 to i32
  %shr125 = lshr i32 %conv124, 4
  %idxprom126 = zext i32 %shr125 to i64
  %and131 = and i32 %conv124, 15
  %idxprom132 = zext i32 %and131 to i64
  %arrayidx133 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom126, i64 %idxprom132
  %19 = load i8, ptr %arrayidx133, align 1, !tbaa !9
  store i8 %19, ptr %arrayidx123, align 1, !tbaa !9
  %arrayidx137 = getelementptr inbounds [4 x i8], ptr %state, i64 2, i64 2
  %20 = load i8, ptr %arrayidx137, align 1, !tbaa !9
  %conv138 = zext i8 %20 to i32
  %shr139 = lshr i32 %conv138, 4
  %idxprom140 = zext i32 %shr139 to i64
  %and145 = and i32 %conv138, 15
  %idxprom146 = zext i32 %and145 to i64
  %arrayidx147 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom140, i64 %idxprom146
  %21 = load i8, ptr %arrayidx147, align 1, !tbaa !9
  store i8 %21, ptr %arrayidx137, align 1, !tbaa !9
  %arrayidx151 = getelementptr inbounds [4 x i8], ptr %state, i64 2, i64 3
  %22 = load i8, ptr %arrayidx151, align 1, !tbaa !9
  %conv152 = zext i8 %22 to i32
  %shr153 = lshr i32 %conv152, 4
  %idxprom154 = zext i32 %shr153 to i64
  %and159 = and i32 %conv152, 15
  %idxprom160 = zext i32 %and159 to i64
  %arrayidx161 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom154, i64 %idxprom160
  %23 = load i8, ptr %arrayidx161, align 1, !tbaa !9
  store i8 %23, ptr %arrayidx151, align 1, !tbaa !9
  %arrayidx164 = getelementptr inbounds [4 x i8], ptr %state, i64 3
  %24 = load i8, ptr %arrayidx164, align 1, !tbaa !9
  %conv166 = zext i8 %24 to i32
  %shr167 = lshr i32 %conv166, 4
  %idxprom168 = zext i32 %shr167 to i64
  %and173 = and i32 %conv166, 15
  %idxprom174 = zext i32 %and173 to i64
  %arrayidx175 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom168, i64 %idxprom174
  %25 = load i8, ptr %arrayidx175, align 1, !tbaa !9
  store i8 %25, ptr %arrayidx164, align 1, !tbaa !9
  %arrayidx179 = getelementptr inbounds [4 x i8], ptr %state, i64 3, i64 1
  %26 = load i8, ptr %arrayidx179, align 1, !tbaa !9
  %conv180 = zext i8 %26 to i32
  %shr181 = lshr i32 %conv180, 4
  %idxprom182 = zext i32 %shr181 to i64
  %and187 = and i32 %conv180, 15
  %idxprom188 = zext i32 %and187 to i64
  %arrayidx189 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom182, i64 %idxprom188
  %27 = load i8, ptr %arrayidx189, align 1, !tbaa !9
  store i8 %27, ptr %arrayidx179, align 1, !tbaa !9
  %arrayidx193 = getelementptr inbounds [4 x i8], ptr %state, i64 3, i64 2
  %28 = load i8, ptr %arrayidx193, align 1, !tbaa !9
  %conv194 = zext i8 %28 to i32
  %shr195 = lshr i32 %conv194, 4
  %idxprom196 = zext i32 %shr195 to i64
  %and201 = and i32 %conv194, 15
  %idxprom202 = zext i32 %and201 to i64
  %arrayidx203 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom196, i64 %idxprom202
  %29 = load i8, ptr %arrayidx203, align 1, !tbaa !9
  store i8 %29, ptr %arrayidx193, align 1, !tbaa !9
  %arrayidx207 = getelementptr inbounds [4 x i8], ptr %state, i64 3, i64 3
  %30 = load i8, ptr %arrayidx207, align 1, !tbaa !9
  %conv208 = zext i8 %30 to i32
  %shr209 = lshr i32 %conv208, 4
  %idxprom210 = zext i32 %shr209 to i64
  %and215 = and i32 %conv208, 15
  %idxprom216 = zext i32 %and215 to i64
  %arrayidx217 = getelementptr inbounds [16 x [16 x i8]], ptr @aes_invsbox, i64 0, i64 %idxprom210, i64 %idxprom216
  %31 = load i8, ptr %arrayidx217, align 1, !tbaa !9
  store i8 %31, ptr %arrayidx207, align 1, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ShiftRows(ptr nocapture noundef %state) local_unnamed_addr #10 {
entry:
  %arrayidx = getelementptr inbounds [4 x i8], ptr %state, i64 1
  %0 = load <8 x i8>, ptr %arrayidx, align 1, !tbaa !9
  %1 = shufflevector <8 x i8> %0, <8 x i8> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 6, i32 7, i32 4, i32 5>
  store <8 x i8> %1, ptr %arrayidx, align 1, !tbaa !9
  %arrayidx37 = getelementptr inbounds [4 x i8], ptr %state, i64 3
  %2 = load <4 x i8>, ptr %arrayidx37, align 1, !tbaa !9
  %3 = shufflevector <4 x i8> %2, <4 x i8> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i8> %3, ptr %arrayidx37, align 1, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @InvShiftRows(ptr nocapture noundef %state) local_unnamed_addr #10 {
entry:
  %arrayidx = getelementptr inbounds [4 x i8], ptr %state, i64 1
  %0 = load <8 x i8>, ptr %arrayidx, align 1, !tbaa !9
  %1 = shufflevector <8 x i8> %0, <8 x i8> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 6, i32 7, i32 4, i32 5>
  store <8 x i8> %1, ptr %arrayidx, align 1, !tbaa !9
  %arrayidx37 = getelementptr inbounds [4 x i8], ptr %state, i64 3
  %2 = load <4 x i8>, ptr %arrayidx37, align 1, !tbaa !9
  %3 = shufflevector <4 x i8> %2, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i8> %3, ptr %arrayidx37, align 1, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @MixColumns(ptr nocapture noundef %state) local_unnamed_addr #10 {
entry:
  %0 = load i8, ptr %state, align 1, !tbaa !9
  %arrayidx3 = getelementptr inbounds [4 x i8], ptr %state, i64 1
  %1 = load i8, ptr %arrayidx3, align 1, !tbaa !9
  %arrayidx6 = getelementptr inbounds [4 x i8], ptr %state, i64 2
  %2 = load i8, ptr %arrayidx6, align 1, !tbaa !9
  %arrayidx9 = getelementptr inbounds [4 x i8], ptr %state, i64 3
  %3 = load i8, ptr %arrayidx9, align 1, !tbaa !9
  %idxprom = zext i8 %0 to i64
  %arrayidx13 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx13, align 2, !tbaa !9
  %idxprom18 = zext i8 %1 to i64
  %arrayidx19 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom18, i64 1
  %5 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %6 = xor i8 %5, %4
  %7 = xor i8 %6, %2
  %xor37666 = xor i8 %7, %3
  store i8 %xor37666, ptr %state, align 1, !tbaa !9
  %8 = load i8, ptr %arrayidx19, align 2, !tbaa !9
  %idxprom53 = zext i8 %2 to i64
  %arrayidx54 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom53
  %arrayidx55 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom53, i64 1
  %9 = load i8, ptr %arrayidx55, align 1, !tbaa !9
  %10 = xor i8 %8, %9
  %11 = xor i8 %10, %0
  %xor67669 = xor i8 %11, %3
  store i8 %xor67669, ptr %arrayidx3, align 1, !tbaa !9
  %12 = load i8, ptr %arrayidx54, align 2, !tbaa !9
  %idxprom90 = zext i8 %3 to i64
  %arrayidx91 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom90
  %arrayidx92 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom90, i64 1
  %13 = load i8, ptr %arrayidx92, align 1, !tbaa !9
  %14 = xor i8 %12, %13
  %15 = xor i8 %14, %0
  %xor97672 = xor i8 %15, %1
  store i8 %xor97672, ptr %arrayidx6, align 1, !tbaa !9
  %arrayidx102 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom, i64 1
  %16 = load i8, ptr %arrayidx102, align 1, !tbaa !9
  %17 = load i8, ptr %arrayidx91, align 2, !tbaa !9
  %18 = xor i8 %16, %17
  %19 = xor i8 %18, %1
  %xor127675 = xor i8 %19, %2
  store i8 %xor127675, ptr %arrayidx9, align 1, !tbaa !9
  %arrayidx130 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 1
  %20 = load i8, ptr %arrayidx130, align 1, !tbaa !9
  %arrayidx133 = getelementptr inbounds [4 x i8], ptr %state, i64 1, i64 1
  %21 = load i8, ptr %arrayidx133, align 1, !tbaa !9
  %arrayidx136 = getelementptr inbounds [4 x i8], ptr %state, i64 2, i64 1
  %22 = load i8, ptr %arrayidx136, align 1, !tbaa !9
  %arrayidx139 = getelementptr inbounds [4 x i8], ptr %state, i64 3, i64 1
  %23 = load i8, ptr %arrayidx139, align 1, !tbaa !9
  %idxprom142 = zext i8 %20 to i64
  %arrayidx143 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom142
  %24 = load i8, ptr %arrayidx143, align 2, !tbaa !9
  %idxprom148 = zext i8 %21 to i64
  %arrayidx149 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom148
  %arrayidx150 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom148, i64 1
  %25 = load i8, ptr %arrayidx150, align 1, !tbaa !9
  %26 = xor i8 %25, %24
  %27 = xor i8 %26, %22
  %xor169678 = xor i8 %27, %23
  store i8 %xor169678, ptr %arrayidx130, align 1, !tbaa !9
  %28 = load i8, ptr %arrayidx149, align 2, !tbaa !9
  %idxprom185 = zext i8 %22 to i64
  %arrayidx186 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom185
  %arrayidx187 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom185, i64 1
  %29 = load i8, ptr %arrayidx187, align 1, !tbaa !9
  %30 = xor i8 %28, %29
  %31 = xor i8 %30, %20
  %xor199681 = xor i8 %31, %23
  store i8 %xor199681, ptr %arrayidx133, align 1, !tbaa !9
  %32 = load i8, ptr %arrayidx186, align 2, !tbaa !9
  %idxprom222 = zext i8 %23 to i64
  %arrayidx223 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom222
  %arrayidx224 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom222, i64 1
  %33 = load i8, ptr %arrayidx224, align 1, !tbaa !9
  %34 = xor i8 %32, %33
  %35 = xor i8 %34, %20
  %xor229684 = xor i8 %35, %21
  store i8 %xor229684, ptr %arrayidx136, align 1, !tbaa !9
  %arrayidx234 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom142, i64 1
  %36 = load i8, ptr %arrayidx234, align 1, !tbaa !9
  %37 = load i8, ptr %arrayidx223, align 2, !tbaa !9
  %38 = xor i8 %36, %37
  %39 = xor i8 %38, %21
  %xor259687 = xor i8 %39, %22
  store i8 %xor259687, ptr %arrayidx139, align 1, !tbaa !9
  %arrayidx262 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 2
  %40 = load i8, ptr %arrayidx262, align 1, !tbaa !9
  %arrayidx265 = getelementptr inbounds [4 x i8], ptr %state, i64 1, i64 2
  %41 = load i8, ptr %arrayidx265, align 1, !tbaa !9
  %arrayidx268 = getelementptr inbounds [4 x i8], ptr %state, i64 2, i64 2
  %42 = load i8, ptr %arrayidx268, align 1, !tbaa !9
  %arrayidx271 = getelementptr inbounds [4 x i8], ptr %state, i64 3, i64 2
  %43 = load i8, ptr %arrayidx271, align 1, !tbaa !9
  %idxprom274 = zext i8 %40 to i64
  %arrayidx275 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom274
  %44 = load i8, ptr %arrayidx275, align 2, !tbaa !9
  %idxprom280 = zext i8 %41 to i64
  %arrayidx281 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom280
  %arrayidx282 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom280, i64 1
  %45 = load i8, ptr %arrayidx282, align 1, !tbaa !9
  %46 = xor i8 %45, %44
  %47 = xor i8 %46, %42
  %xor301690 = xor i8 %47, %43
  store i8 %xor301690, ptr %arrayidx262, align 1, !tbaa !9
  %48 = load i8, ptr %arrayidx281, align 2, !tbaa !9
  %idxprom317 = zext i8 %42 to i64
  %arrayidx318 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom317
  %arrayidx319 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom317, i64 1
  %49 = load i8, ptr %arrayidx319, align 1, !tbaa !9
  %50 = xor i8 %48, %49
  %51 = xor i8 %50, %40
  %xor331693 = xor i8 %51, %43
  store i8 %xor331693, ptr %arrayidx265, align 1, !tbaa !9
  %52 = load i8, ptr %arrayidx318, align 2, !tbaa !9
  %idxprom354 = zext i8 %43 to i64
  %arrayidx355 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom354
  %arrayidx356 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom354, i64 1
  %53 = load i8, ptr %arrayidx356, align 1, !tbaa !9
  %54 = xor i8 %52, %53
  %55 = xor i8 %54, %40
  %xor361696 = xor i8 %55, %41
  store i8 %xor361696, ptr %arrayidx268, align 1, !tbaa !9
  %arrayidx366 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom274, i64 1
  %56 = load i8, ptr %arrayidx366, align 1, !tbaa !9
  %57 = load i8, ptr %arrayidx355, align 2, !tbaa !9
  %58 = xor i8 %56, %57
  %59 = xor i8 %58, %41
  %xor391699 = xor i8 %59, %42
  store i8 %xor391699, ptr %arrayidx271, align 1, !tbaa !9
  %arrayidx394 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 3
  %60 = load i8, ptr %arrayidx394, align 1, !tbaa !9
  %arrayidx397 = getelementptr inbounds [4 x i8], ptr %state, i64 1, i64 3
  %61 = load i8, ptr %arrayidx397, align 1, !tbaa !9
  %arrayidx400 = getelementptr inbounds [4 x i8], ptr %state, i64 2, i64 3
  %62 = load i8, ptr %arrayidx400, align 1, !tbaa !9
  %arrayidx403 = getelementptr inbounds [4 x i8], ptr %state, i64 3, i64 3
  %63 = load i8, ptr %arrayidx403, align 1, !tbaa !9
  %idxprom406 = zext i8 %60 to i64
  %arrayidx407 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom406
  %64 = load i8, ptr %arrayidx407, align 2, !tbaa !9
  %idxprom412 = zext i8 %61 to i64
  %arrayidx413 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom412
  %arrayidx414 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom412, i64 1
  %65 = load i8, ptr %arrayidx414, align 1, !tbaa !9
  %66 = xor i8 %65, %64
  %67 = xor i8 %66, %62
  %xor433702 = xor i8 %67, %63
  store i8 %xor433702, ptr %arrayidx394, align 1, !tbaa !9
  %68 = load i8, ptr %arrayidx413, align 2, !tbaa !9
  %idxprom449 = zext i8 %62 to i64
  %arrayidx450 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom449
  %arrayidx451 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom449, i64 1
  %69 = load i8, ptr %arrayidx451, align 1, !tbaa !9
  %70 = xor i8 %68, %69
  %71 = xor i8 %70, %60
  %xor463705 = xor i8 %71, %63
  store i8 %xor463705, ptr %arrayidx397, align 1, !tbaa !9
  %72 = load i8, ptr %arrayidx450, align 2, !tbaa !9
  %idxprom486 = zext i8 %63 to i64
  %arrayidx487 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom486
  %arrayidx488 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom486, i64 1
  %73 = load i8, ptr %arrayidx488, align 1, !tbaa !9
  %74 = xor i8 %72, %73
  %75 = xor i8 %74, %60
  %xor493708 = xor i8 %75, %61
  store i8 %xor493708, ptr %arrayidx400, align 1, !tbaa !9
  %arrayidx498 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom406, i64 1
  %76 = load i8, ptr %arrayidx498, align 1, !tbaa !9
  %77 = load i8, ptr %arrayidx487, align 2, !tbaa !9
  %78 = xor i8 %76, %77
  %79 = xor i8 %78, %61
  %xor523711 = xor i8 %79, %62
  store i8 %xor523711, ptr %arrayidx403, align 1, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @InvMixColumns(ptr nocapture noundef %state) local_unnamed_addr #10 {
entry:
  %0 = load i8, ptr %state, align 1, !tbaa !9
  %arrayidx3 = getelementptr inbounds [4 x i8], ptr %state, i64 1
  %1 = load i8, ptr %arrayidx3, align 1, !tbaa !9
  %arrayidx6 = getelementptr inbounds [4 x i8], ptr %state, i64 2
  %2 = load i8, ptr %arrayidx6, align 1, !tbaa !9
  %arrayidx9 = getelementptr inbounds [4 x i8], ptr %state, i64 3
  %3 = load i8, ptr %arrayidx9, align 1, !tbaa !9
  %idxprom = zext i8 %0 to i64
  %arrayidx14 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom, i64 5
  %4 = load i8, ptr %arrayidx14, align 1, !tbaa !9
  %idxprom18 = zext i8 %1 to i64
  %arrayidx20 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom18, i64 3
  %5 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %xor760 = xor i8 %5, %4
  %idxprom26 = zext i8 %2 to i64
  %arrayidx28 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom26, i64 4
  %6 = load i8, ptr %arrayidx28, align 2, !tbaa !9
  %xor33761 = xor i8 %6, %xor760
  %idxprom36 = zext i8 %3 to i64
  %arrayidx38 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom36, i64 2
  %7 = load i8, ptr %arrayidx38, align 2, !tbaa !9
  %xor43762 = xor i8 %7, %xor33761
  store i8 %xor43762, ptr %state, align 1, !tbaa !9
  %arrayidx48 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom, i64 2
  %8 = load i8, ptr %arrayidx48, align 2, !tbaa !9
  %arrayidx54 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom18, i64 5
  %9 = load i8, ptr %arrayidx54, align 1, !tbaa !9
  %xor59763 = xor i8 %9, %8
  %arrayidx64 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom26, i64 3
  %10 = load i8, ptr %arrayidx64, align 1, !tbaa !9
  %xor69764 = xor i8 %10, %xor59763
  %arrayidx74 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom36, i64 4
  %11 = load i8, ptr %arrayidx74, align 2, !tbaa !9
  %xor79765 = xor i8 %11, %xor69764
  store i8 %xor79765, ptr %arrayidx3, align 1, !tbaa !9
  %arrayidx84 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom, i64 4
  %12 = load i8, ptr %arrayidx84, align 2, !tbaa !9
  %arrayidx90 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom18, i64 2
  %13 = load i8, ptr %arrayidx90, align 2, !tbaa !9
  %xor95766 = xor i8 %13, %12
  %arrayidx100 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom26, i64 5
  %14 = load i8, ptr %arrayidx100, align 1, !tbaa !9
  %xor105767 = xor i8 %14, %xor95766
  %arrayidx110 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom36, i64 3
  %15 = load i8, ptr %arrayidx110, align 1, !tbaa !9
  %xor115768 = xor i8 %15, %xor105767
  store i8 %xor115768, ptr %arrayidx6, align 1, !tbaa !9
  %arrayidx120 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom, i64 3
  %16 = load i8, ptr %arrayidx120, align 1, !tbaa !9
  %arrayidx126 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom18, i64 4
  %17 = load i8, ptr %arrayidx126, align 2, !tbaa !9
  %xor131769 = xor i8 %17, %16
  %arrayidx136 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom26, i64 2
  %18 = load i8, ptr %arrayidx136, align 2, !tbaa !9
  %xor141770 = xor i8 %18, %xor131769
  %arrayidx146 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom36, i64 5
  %19 = load i8, ptr %arrayidx146, align 1, !tbaa !9
  %xor151771 = xor i8 %19, %xor141770
  store i8 %xor151771, ptr %arrayidx9, align 1, !tbaa !9
  %arrayidx154 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 1
  %20 = load i8, ptr %arrayidx154, align 1, !tbaa !9
  %arrayidx157 = getelementptr inbounds [4 x i8], ptr %state, i64 1, i64 1
  %21 = load i8, ptr %arrayidx157, align 1, !tbaa !9
  %arrayidx160 = getelementptr inbounds [4 x i8], ptr %state, i64 2, i64 1
  %22 = load i8, ptr %arrayidx160, align 1, !tbaa !9
  %arrayidx163 = getelementptr inbounds [4 x i8], ptr %state, i64 3, i64 1
  %23 = load i8, ptr %arrayidx163, align 1, !tbaa !9
  %idxprom166 = zext i8 %20 to i64
  %arrayidx168 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom166, i64 5
  %24 = load i8, ptr %arrayidx168, align 1, !tbaa !9
  %idxprom172 = zext i8 %21 to i64
  %arrayidx174 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom172, i64 3
  %25 = load i8, ptr %arrayidx174, align 1, !tbaa !9
  %xor179772 = xor i8 %25, %24
  %idxprom182 = zext i8 %22 to i64
  %arrayidx184 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom182, i64 4
  %26 = load i8, ptr %arrayidx184, align 2, !tbaa !9
  %xor189773 = xor i8 %26, %xor179772
  %idxprom192 = zext i8 %23 to i64
  %arrayidx194 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom192, i64 2
  %27 = load i8, ptr %arrayidx194, align 2, !tbaa !9
  %xor199774 = xor i8 %27, %xor189773
  store i8 %xor199774, ptr %arrayidx154, align 1, !tbaa !9
  %arrayidx204 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom166, i64 2
  %28 = load i8, ptr %arrayidx204, align 2, !tbaa !9
  %arrayidx210 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom172, i64 5
  %29 = load i8, ptr %arrayidx210, align 1, !tbaa !9
  %xor215775 = xor i8 %29, %28
  %arrayidx220 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom182, i64 3
  %30 = load i8, ptr %arrayidx220, align 1, !tbaa !9
  %xor225776 = xor i8 %30, %xor215775
  %arrayidx230 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom192, i64 4
  %31 = load i8, ptr %arrayidx230, align 2, !tbaa !9
  %xor235777 = xor i8 %31, %xor225776
  store i8 %xor235777, ptr %arrayidx157, align 1, !tbaa !9
  %arrayidx240 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom166, i64 4
  %32 = load i8, ptr %arrayidx240, align 2, !tbaa !9
  %arrayidx246 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom172, i64 2
  %33 = load i8, ptr %arrayidx246, align 2, !tbaa !9
  %xor251778 = xor i8 %33, %32
  %arrayidx256 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom182, i64 5
  %34 = load i8, ptr %arrayidx256, align 1, !tbaa !9
  %xor261779 = xor i8 %34, %xor251778
  %arrayidx266 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom192, i64 3
  %35 = load i8, ptr %arrayidx266, align 1, !tbaa !9
  %xor271780 = xor i8 %35, %xor261779
  store i8 %xor271780, ptr %arrayidx160, align 1, !tbaa !9
  %arrayidx276 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom166, i64 3
  %36 = load i8, ptr %arrayidx276, align 1, !tbaa !9
  %arrayidx282 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom172, i64 4
  %37 = load i8, ptr %arrayidx282, align 2, !tbaa !9
  %xor287781 = xor i8 %37, %36
  %arrayidx292 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom182, i64 2
  %38 = load i8, ptr %arrayidx292, align 2, !tbaa !9
  %xor297782 = xor i8 %38, %xor287781
  %arrayidx302 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom192, i64 5
  %39 = load i8, ptr %arrayidx302, align 1, !tbaa !9
  %xor307783 = xor i8 %39, %xor297782
  store i8 %xor307783, ptr %arrayidx163, align 1, !tbaa !9
  %arrayidx310 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 2
  %40 = load i8, ptr %arrayidx310, align 1, !tbaa !9
  %arrayidx313 = getelementptr inbounds [4 x i8], ptr %state, i64 1, i64 2
  %41 = load i8, ptr %arrayidx313, align 1, !tbaa !9
  %arrayidx316 = getelementptr inbounds [4 x i8], ptr %state, i64 2, i64 2
  %42 = load i8, ptr %arrayidx316, align 1, !tbaa !9
  %arrayidx319 = getelementptr inbounds [4 x i8], ptr %state, i64 3, i64 2
  %43 = load i8, ptr %arrayidx319, align 1, !tbaa !9
  %idxprom322 = zext i8 %40 to i64
  %arrayidx324 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom322, i64 5
  %44 = load i8, ptr %arrayidx324, align 1, !tbaa !9
  %idxprom328 = zext i8 %41 to i64
  %arrayidx330 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom328, i64 3
  %45 = load i8, ptr %arrayidx330, align 1, !tbaa !9
  %xor335784 = xor i8 %45, %44
  %idxprom338 = zext i8 %42 to i64
  %arrayidx340 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom338, i64 4
  %46 = load i8, ptr %arrayidx340, align 2, !tbaa !9
  %xor345785 = xor i8 %46, %xor335784
  %idxprom348 = zext i8 %43 to i64
  %arrayidx350 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom348, i64 2
  %47 = load i8, ptr %arrayidx350, align 2, !tbaa !9
  %xor355786 = xor i8 %47, %xor345785
  store i8 %xor355786, ptr %arrayidx310, align 1, !tbaa !9
  %arrayidx360 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom322, i64 2
  %48 = load i8, ptr %arrayidx360, align 2, !tbaa !9
  %arrayidx366 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom328, i64 5
  %49 = load i8, ptr %arrayidx366, align 1, !tbaa !9
  %xor371787 = xor i8 %49, %48
  %arrayidx376 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom338, i64 3
  %50 = load i8, ptr %arrayidx376, align 1, !tbaa !9
  %xor381788 = xor i8 %50, %xor371787
  %arrayidx386 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom348, i64 4
  %51 = load i8, ptr %arrayidx386, align 2, !tbaa !9
  %xor391789 = xor i8 %51, %xor381788
  store i8 %xor391789, ptr %arrayidx313, align 1, !tbaa !9
  %arrayidx396 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom322, i64 4
  %52 = load i8, ptr %arrayidx396, align 2, !tbaa !9
  %arrayidx402 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom328, i64 2
  %53 = load i8, ptr %arrayidx402, align 2, !tbaa !9
  %xor407790 = xor i8 %53, %52
  %arrayidx412 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom338, i64 5
  %54 = load i8, ptr %arrayidx412, align 1, !tbaa !9
  %xor417791 = xor i8 %54, %xor407790
  %arrayidx422 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom348, i64 3
  %55 = load i8, ptr %arrayidx422, align 1, !tbaa !9
  %xor427792 = xor i8 %55, %xor417791
  store i8 %xor427792, ptr %arrayidx316, align 1, !tbaa !9
  %arrayidx432 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom322, i64 3
  %56 = load i8, ptr %arrayidx432, align 1, !tbaa !9
  %arrayidx438 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom328, i64 4
  %57 = load i8, ptr %arrayidx438, align 2, !tbaa !9
  %xor443793 = xor i8 %57, %56
  %arrayidx448 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom338, i64 2
  %58 = load i8, ptr %arrayidx448, align 2, !tbaa !9
  %xor453794 = xor i8 %58, %xor443793
  %arrayidx458 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom348, i64 5
  %59 = load i8, ptr %arrayidx458, align 1, !tbaa !9
  %xor463795 = xor i8 %59, %xor453794
  store i8 %xor463795, ptr %arrayidx319, align 1, !tbaa !9
  %arrayidx466 = getelementptr inbounds [4 x i8], ptr %state, i64 0, i64 3
  %60 = load i8, ptr %arrayidx466, align 1, !tbaa !9
  %arrayidx469 = getelementptr inbounds [4 x i8], ptr %state, i64 1, i64 3
  %61 = load i8, ptr %arrayidx469, align 1, !tbaa !9
  %arrayidx472 = getelementptr inbounds [4 x i8], ptr %state, i64 2, i64 3
  %62 = load i8, ptr %arrayidx472, align 1, !tbaa !9
  %arrayidx475 = getelementptr inbounds [4 x i8], ptr %state, i64 3, i64 3
  %63 = load i8, ptr %arrayidx475, align 1, !tbaa !9
  %idxprom478 = zext i8 %60 to i64
  %arrayidx480 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom478, i64 5
  %64 = load i8, ptr %arrayidx480, align 1, !tbaa !9
  %idxprom484 = zext i8 %61 to i64
  %arrayidx486 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom484, i64 3
  %65 = load i8, ptr %arrayidx486, align 1, !tbaa !9
  %xor491796 = xor i8 %65, %64
  %idxprom494 = zext i8 %62 to i64
  %arrayidx496 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom494, i64 4
  %66 = load i8, ptr %arrayidx496, align 2, !tbaa !9
  %xor501797 = xor i8 %66, %xor491796
  %idxprom504 = zext i8 %63 to i64
  %arrayidx506 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom504, i64 2
  %67 = load i8, ptr %arrayidx506, align 2, !tbaa !9
  %xor511798 = xor i8 %67, %xor501797
  store i8 %xor511798, ptr %arrayidx466, align 1, !tbaa !9
  %arrayidx516 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom478, i64 2
  %68 = load i8, ptr %arrayidx516, align 2, !tbaa !9
  %arrayidx522 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom484, i64 5
  %69 = load i8, ptr %arrayidx522, align 1, !tbaa !9
  %xor527799 = xor i8 %69, %68
  %arrayidx532 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom494, i64 3
  %70 = load i8, ptr %arrayidx532, align 1, !tbaa !9
  %xor537800 = xor i8 %70, %xor527799
  %arrayidx542 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom504, i64 4
  %71 = load i8, ptr %arrayidx542, align 2, !tbaa !9
  %xor547801 = xor i8 %71, %xor537800
  store i8 %xor547801, ptr %arrayidx469, align 1, !tbaa !9
  %arrayidx552 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom478, i64 4
  %72 = load i8, ptr %arrayidx552, align 2, !tbaa !9
  %arrayidx558 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom484, i64 2
  %73 = load i8, ptr %arrayidx558, align 2, !tbaa !9
  %xor563802 = xor i8 %73, %72
  %arrayidx568 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom494, i64 5
  %74 = load i8, ptr %arrayidx568, align 1, !tbaa !9
  %xor573803 = xor i8 %74, %xor563802
  %arrayidx578 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom504, i64 3
  %75 = load i8, ptr %arrayidx578, align 1, !tbaa !9
  %xor583804 = xor i8 %75, %xor573803
  store i8 %xor583804, ptr %arrayidx472, align 1, !tbaa !9
  %arrayidx588 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom478, i64 3
  %76 = load i8, ptr %arrayidx588, align 1, !tbaa !9
  %arrayidx594 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom484, i64 4
  %77 = load i8, ptr %arrayidx594, align 2, !tbaa !9
  %xor599805 = xor i8 %77, %76
  %arrayidx604 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom494, i64 2
  %78 = load i8, ptr %arrayidx604, align 2, !tbaa !9
  %xor609806 = xor i8 %78, %xor599805
  %arrayidx614 = getelementptr inbounds [256 x [6 x i8]], ptr @gf_mul, i64 0, i64 %idxprom504, i64 5
  %79 = load i8, ptr %arrayidx614, align 1, !tbaa !9
  %xor619807 = xor i8 %79, %xor609806
  store i8 %xor619807, ptr %arrayidx475, align 1, !tbaa !9
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_hex(ptr nocapture noundef readonly %str, i32 noundef %len) local_unnamed_addr #11 {
entry:
  %cmp3 = icmp sgt i32 %len, 0
  br i1 %cmp3, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %len to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i8, ptr %str, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %0 to i32
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %conv)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !43

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @aes_ecb_test() local_unnamed_addr #13 {
land.rhs:
  %key_schedule = alloca [60 x i32], align 16
  %enc_buf = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %key_schedule) #16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %enc_buf) #16
  call void @aes_key_setup(ptr noundef nonnull @__const.aes_ctr_test.key, ptr noundef nonnull %key_schedule, i32 noundef 256)
  call void @aes_encrypt(ptr noundef nonnull @__const.aes_ecb_test.plaintext, ptr noundef nonnull %enc_buf, ptr noundef nonnull %key_schedule, i32 noundef 256)
  %bcmp34 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %enc_buf, ptr noundef nonnull dereferenceable(16) @__const.aes_ecb_test.ciphertext, i64 16)
  %tobool10.not = icmp eq i32 %bcmp34, 0
  call void @aes_decrypt(ptr noundef nonnull @__const.aes_ecb_test.ciphertext, ptr noundef nonnull %enc_buf, ptr noundef nonnull %key_schedule, i32 noundef 256)
  br i1 %tobool10.not, label %land.end25, label %land.end25.1

land.end25:                                       ; preds = %land.rhs
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %enc_buf, ptr noundef nonnull dereferenceable(16) @__const.aes_ecb_test.plaintext, i64 16)
  %tobool23.not.not = icmp eq i32 %bcmp, 0
  call void @aes_encrypt(ptr noundef nonnull getelementptr inbounds ([2 x [16 x i8]], ptr @__const.aes_ecb_test.plaintext, i64 0, i64 1), ptr noundef nonnull %enc_buf, ptr noundef nonnull %key_schedule, i32 noundef 256)
  br i1 %tobool23.not.not, label %land.rhs.1, label %land.end25.1

land.rhs.1:                                       ; preds = %land.end25
  %bcmp34.1 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %enc_buf, ptr noundef nonnull dereferenceable(16) getelementptr inbounds ([2 x [16 x i8]], ptr @__const.aes_ecb_test.ciphertext, i64 0, i64 1), i64 16)
  %tobool10.not.1 = icmp eq i32 %bcmp34.1, 0
  call void @aes_decrypt(ptr noundef nonnull getelementptr inbounds ([2 x [16 x i8]], ptr @__const.aes_ecb_test.ciphertext, i64 0, i64 1), ptr noundef nonnull %enc_buf, ptr noundef nonnull %key_schedule, i32 noundef 256)
  br i1 %tobool10.not.1, label %land.rhs17.1, label %land.end25.1

land.rhs17.1:                                     ; preds = %land.rhs.1
  %bcmp.1 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %enc_buf, ptr noundef nonnull dereferenceable(16) getelementptr inbounds ([2 x [16 x i8]], ptr @__const.aes_ecb_test.plaintext, i64 0, i64 1), i64 16)
  %tobool23.not.1 = icmp eq i32 %bcmp.1, 0
  %0 = zext i1 %tobool23.not.1 to i32
  br label %land.end25.1

land.end25.1:                                     ; preds = %land.rhs17.1, %land.rhs.1, %land.end25, %land.rhs
  %land.ext26.1 = phi i32 [ 0, %land.rhs.1 ], [ %0, %land.rhs17.1 ], [ 0, %land.rhs ], [ 0, %land.end25 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %enc_buf) #16
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %key_schedule) #16
  ret i32 %land.ext26.1
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @aes_cbc_test() local_unnamed_addr #13 {
entry:
  %key_schedule = alloca [60 x i32], align 16
  %enc_buf = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %key_schedule) #16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %enc_buf) #16
  call void @aes_key_setup(ptr noundef nonnull @__const.aes_ctr_test.key, ptr noundef nonnull %key_schedule, i32 noundef 256)
  %call = call i32 @aes_encrypt_cbc(ptr noundef nonnull @__const.aes_ctr_test.plaintext, i64 noundef 32, ptr noundef nonnull %enc_buf, ptr noundef nonnull %key_schedule, i32 noundef 256, ptr noundef nonnull @__const.aes_cbc_test.iv)
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(32) %enc_buf, ptr noundef nonnull dereferenceable(32) @__const.aes_cbc_test.ciphertext, i64 32)
  %tobool12.not = icmp eq i32 %bcmp, 0
  %call19 = call i32 @aes_decrypt_cbc(ptr noundef nonnull @__const.aes_cbc_test.ciphertext, i64 noundef 32, ptr noundef nonnull %enc_buf, ptr noundef nonnull %key_schedule, i32 noundef 256, ptr noundef nonnull @__const.aes_cbc_test.iv)
  br i1 %tobool12.not, label %land.rhs21, label %land.end28

land.rhs21:                                       ; preds = %entry
  %bcmp32 = call i32 @bcmp(ptr noundef nonnull dereferenceable(32) %enc_buf, ptr noundef nonnull dereferenceable(32) @__const.aes_ctr_test.plaintext, i64 32)
  %tobool26.not = icmp eq i32 %bcmp32, 0
  %0 = zext i1 %tobool26.not to i32
  br label %land.end28

land.end28:                                       ; preds = %land.rhs21, %entry
  %land.ext29 = phi i32 [ 0, %entry ], [ %0, %land.rhs21 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %enc_buf) #16
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %key_schedule) #16
  ret i32 %land.ext29
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @aes_ctr_test() local_unnamed_addr #13 {
entry:
  %key_schedule = alloca [60 x i32], align 16
  %enc_buf = alloca [128 x i8], align 16
  %plaintext = alloca [1 x [32 x i8]], align 16
  %ciphertext = alloca [1 x [32 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %key_schedule) #16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %enc_buf) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %plaintext) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %plaintext, ptr noundef nonnull align 16 dereferenceable(32) @__const.aes_ctr_test.plaintext, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ciphertext) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %ciphertext, ptr noundef nonnull align 16 dereferenceable(32) @__const.aes_ctr_test.ciphertext, i64 32, i1 false)
  call void @aes_key_setup(ptr noundef nonnull @__const.aes_ctr_test.key, ptr noundef nonnull %key_schedule, i32 noundef 256)
  call void @aes_encrypt_ctr(ptr noundef nonnull %plaintext, i64 noundef 32, ptr noundef nonnull %enc_buf, ptr noundef nonnull %key_schedule, i32 noundef 256, ptr noundef nonnull @__const.aes_ctr_test.iv)
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(32) %enc_buf, ptr noundef nonnull dereferenceable(32) %ciphertext, i64 32)
  %tobool11.not = icmp eq i32 %bcmp, 0
  call void @aes_encrypt_ctr(ptr noundef nonnull %ciphertext, i64 noundef 32, ptr noundef nonnull %enc_buf, ptr noundef nonnull %key_schedule, i32 noundef 256, ptr noundef nonnull @__const.aes_ctr_test.iv)
  br i1 %tobool11.not, label %land.rhs19, label %land.end26

land.rhs19:                                       ; preds = %entry
  %bcmp30 = call i32 @bcmp(ptr noundef nonnull dereferenceable(32) %enc_buf, ptr noundef nonnull dereferenceable(32) %plaintext, i64 32)
  %tobool24.not = icmp eq i32 %bcmp30, 0
  %0 = zext i1 %tobool24.not to i32
  br label %land.end26

land.end26:                                       ; preds = %land.rhs19, %entry
  %land.ext27 = phi i32 [ 0, %entry ], [ %0, %land.rhs19 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ciphertext) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %plaintext) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %enc_buf) #16
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %key_schedule) #16
  ret i32 %land.ext27
}

; Function Attrs: nounwind uwtable
define dso_local i32 @aes_ccm_test() local_unnamed_addr #5 {
entry:
  %mac_auth = alloca i32, align 4
  %enc_buf_len = alloca i32, align 4
  %enc_buf = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mac_auth) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enc_buf_len) #16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %enc_buf) #16
  %call = call i32 @aes_encrypt_ccm(ptr noundef nonnull @__const.aes_ccm_test.plaintext, i32 noundef 4, ptr noundef nonnull @__const.aes_ccm_test.assoc, i16 noundef zeroext 8, ptr noundef nonnull @__const.aes_ccm_test.iv, i16 noundef zeroext 7, ptr noundef nonnull %enc_buf, ptr noundef nonnull %enc_buf_len, i32 noundef 4, ptr noundef nonnull @__const.aes_ccm_test.key, i32 noundef 128)
  %0 = load i32, ptr %enc_buf_len, align 4, !tbaa !32
  %conv = zext i32 %0 to i64
  %bcmp = call i32 @bcmp(ptr nonnull %enc_buf, ptr nonnull @__const.aes_ccm_test.ciphertext, i64 %conv)
  %tobool12.not = icmp eq i32 %bcmp, 0
  %call22 = call i32 @aes_decrypt_ccm(ptr noundef nonnull @__const.aes_ccm_test.ciphertext, i32 noundef 8, ptr noundef nonnull @__const.aes_ccm_test.assoc, i16 noundef zeroext 8, ptr noundef nonnull @__const.aes_ccm_test.iv, i16 noundef zeroext 7, ptr noundef nonnull %enc_buf, ptr noundef nonnull %enc_buf_len, i32 noundef 4, ptr noundef nonnull %mac_auth, ptr noundef nonnull @__const.aes_ccm_test.key, i32 noundef 128)
  br i1 %tobool12.not, label %land.lhs.true, label %land.end32.thread

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %enc_buf_len, align 4, !tbaa !32
  %conv27 = zext i32 %1 to i64
  %bcmp130 = call i32 @bcmp(ptr nonnull %enc_buf, ptr nonnull @__const.aes_ccm_test.plaintext, i64 %conv27)
  %tobool29.not = icmp eq i32 %bcmp130, 0
  br i1 %tobool29.not, label %land.end32, label %land.end32.thread

land.end32.thread:                                ; preds = %land.lhs.true, %entry
  %call43134 = call i32 @aes_encrypt_ccm(ptr noundef nonnull getelementptr inbounds (<{ <{ i8, i8, i8, i8, [28 x i8] }>, <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }> }>, ptr @__const.aes_ccm_test.plaintext, i64 0, i32 1, i32 0, i64 0), i32 noundef 16, ptr noundef nonnull getelementptr inbounds (<{ <{ [8 x i8], [24 x i8] }>, <{ [16 x i8], [16 x i8] }>, <{ [20 x i8], [12 x i8] }> }>, ptr @__const.aes_ccm_test.assoc, i64 0, i32 1, i32 0, i64 0), i16 noundef zeroext 16, ptr noundef nonnull getelementptr inbounds (<{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ [8 x i8], [8 x i8] }>, [16 x i8] }>, ptr @__const.aes_ccm_test.iv, i64 0, i32 1, i32 0, i64 0), i16 noundef zeroext 8, ptr noundef nonnull %enc_buf, ptr noundef nonnull %enc_buf_len, i32 noundef 6, ptr noundef nonnull @__const.aes_ccm_test.key, i32 noundef 128)
  br label %land.end75.critedge

land.end32:                                       ; preds = %land.lhs.true
  %2 = load i32, ptr %mac_auth, align 4, !tbaa !32
  %tobool31.not = icmp eq i32 %2, 0
  %call43 = call i32 @aes_encrypt_ccm(ptr noundef nonnull getelementptr inbounds (<{ <{ i8, i8, i8, i8, [28 x i8] }>, <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }> }>, ptr @__const.aes_ccm_test.plaintext, i64 0, i32 1, i32 0, i64 0), i32 noundef 16, ptr noundef nonnull getelementptr inbounds (<{ <{ [8 x i8], [24 x i8] }>, <{ [16 x i8], [16 x i8] }>, <{ [20 x i8], [12 x i8] }> }>, ptr @__const.aes_ccm_test.assoc, i64 0, i32 1, i32 0, i64 0), i16 noundef zeroext 16, ptr noundef nonnull getelementptr inbounds (<{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ [8 x i8], [8 x i8] }>, [16 x i8] }>, ptr @__const.aes_ccm_test.iv, i64 0, i32 1, i32 0, i64 0), i16 noundef zeroext 8, ptr noundef nonnull %enc_buf, ptr noundef nonnull %enc_buf_len, i32 noundef 6, ptr noundef nonnull @__const.aes_ccm_test.key, i32 noundef 128)
  br i1 %tobool31.not, label %land.end75.critedge, label %land.rhs45

land.rhs45:                                       ; preds = %land.end32
  %3 = load i32, ptr %enc_buf_len, align 4, !tbaa !32
  %conv49 = zext i32 %3 to i64
  %bcmp129 = call i32 @bcmp(ptr nonnull %enc_buf, ptr nonnull getelementptr inbounds (<{ <{ [8 x i8], [40 x i8] }>, <{ [22 x i8], [26 x i8] }>, <{ [32 x i8], [16 x i8] }> }>, ptr @__const.aes_ccm_test.ciphertext, i64 0, i32 1, i32 0, i64 0), i64 %conv49)
  %tobool51.not = icmp eq i32 %bcmp129, 0
  %call64 = call i32 @aes_decrypt_ccm(ptr noundef nonnull getelementptr inbounds (<{ <{ [8 x i8], [40 x i8] }>, <{ [22 x i8], [26 x i8] }>, <{ [32 x i8], [16 x i8] }> }>, ptr @__const.aes_ccm_test.ciphertext, i64 0, i32 1, i32 0, i64 0), i32 noundef 22, ptr noundef nonnull getelementptr inbounds (<{ <{ [8 x i8], [24 x i8] }>, <{ [16 x i8], [16 x i8] }>, <{ [20 x i8], [12 x i8] }> }>, ptr @__const.aes_ccm_test.assoc, i64 0, i32 1, i32 0, i64 0), i16 noundef zeroext 16, ptr noundef nonnull getelementptr inbounds (<{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ [8 x i8], [8 x i8] }>, [16 x i8] }>, ptr @__const.aes_ccm_test.iv, i64 0, i32 1, i32 0, i64 0), i16 noundef zeroext 8, ptr noundef nonnull %enc_buf, ptr noundef nonnull %enc_buf_len, i32 noundef 6, ptr noundef nonnull %mac_auth, ptr noundef nonnull @__const.aes_ccm_test.key, i32 noundef 128)
  br i1 %tobool51.not, label %land.lhs.true66, label %land.end75.thread

land.lhs.true66:                                  ; preds = %land.rhs45
  %4 = load i32, ptr %enc_buf_len, align 4, !tbaa !32
  %conv70 = zext i32 %4 to i64
  %bcmp128 = call i32 @bcmp(ptr nonnull %enc_buf, ptr nonnull getelementptr inbounds (<{ <{ i8, i8, i8, i8, [28 x i8] }>, <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }> }>, ptr @__const.aes_ccm_test.plaintext, i64 0, i32 1, i32 0, i64 0), i64 %conv70)
  %tobool72.not = icmp eq i32 %bcmp128, 0
  br i1 %tobool72.not, label %land.end75, label %land.end75.thread

land.end75.critedge:                              ; preds = %land.end32, %land.end32.thread
  %call64.c = call i32 @aes_decrypt_ccm(ptr noundef nonnull getelementptr inbounds (<{ <{ [8 x i8], [40 x i8] }>, <{ [22 x i8], [26 x i8] }>, <{ [32 x i8], [16 x i8] }> }>, ptr @__const.aes_ccm_test.ciphertext, i64 0, i32 1, i32 0, i64 0), i32 noundef 22, ptr noundef nonnull getelementptr inbounds (<{ <{ [8 x i8], [24 x i8] }>, <{ [16 x i8], [16 x i8] }>, <{ [20 x i8], [12 x i8] }> }>, ptr @__const.aes_ccm_test.assoc, i64 0, i32 1, i32 0, i64 0), i16 noundef zeroext 16, ptr noundef nonnull getelementptr inbounds (<{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ [8 x i8], [8 x i8] }>, [16 x i8] }>, ptr @__const.aes_ccm_test.iv, i64 0, i32 1, i32 0, i64 0), i16 noundef zeroext 8, ptr noundef nonnull %enc_buf, ptr noundef nonnull %enc_buf_len, i32 noundef 6, ptr noundef nonnull %mac_auth, ptr noundef nonnull @__const.aes_ccm_test.key, i32 noundef 128)
  br label %land.end75.thread

land.end75.thread:                                ; preds = %land.end75.critedge, %land.lhs.true66, %land.rhs45
  %call86140 = call i32 @aes_encrypt_ccm(ptr noundef nonnull getelementptr inbounds (<{ <{ i8, i8, i8, i8, [28 x i8] }>, <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }> }>, ptr @__const.aes_ccm_test.plaintext, i64 0, i32 2, i32 0, i64 0), i32 noundef 24, ptr noundef nonnull getelementptr inbounds (<{ <{ [8 x i8], [24 x i8] }>, <{ [16 x i8], [16 x i8] }>, <{ [20 x i8], [12 x i8] }> }>, ptr @__const.aes_ccm_test.assoc, i64 0, i32 2, i32 0, i64 0), i16 noundef zeroext 20, ptr noundef nonnull getelementptr inbounds (<{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ [8 x i8], [8 x i8] }>, [16 x i8] }>, ptr @__const.aes_ccm_test.iv, i64 0, i32 2), i16 noundef zeroext 12, ptr noundef nonnull %enc_buf, ptr noundef nonnull %enc_buf_len, i32 noundef 8, ptr noundef nonnull @__const.aes_ccm_test.key, i32 noundef 128)
  br label %land.end118.critedge

land.end75:                                       ; preds = %land.lhs.true66
  %5 = load i32, ptr %mac_auth, align 4, !tbaa !32
  %tobool74.not = icmp eq i32 %5, 0
  %call86 = call i32 @aes_encrypt_ccm(ptr noundef nonnull getelementptr inbounds (<{ <{ i8, i8, i8, i8, [28 x i8] }>, <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }> }>, ptr @__const.aes_ccm_test.plaintext, i64 0, i32 2, i32 0, i64 0), i32 noundef 24, ptr noundef nonnull getelementptr inbounds (<{ <{ [8 x i8], [24 x i8] }>, <{ [16 x i8], [16 x i8] }>, <{ [20 x i8], [12 x i8] }> }>, ptr @__const.aes_ccm_test.assoc, i64 0, i32 2, i32 0, i64 0), i16 noundef zeroext 20, ptr noundef nonnull getelementptr inbounds (<{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ [8 x i8], [8 x i8] }>, [16 x i8] }>, ptr @__const.aes_ccm_test.iv, i64 0, i32 2), i16 noundef zeroext 12, ptr noundef nonnull %enc_buf, ptr noundef nonnull %enc_buf_len, i32 noundef 8, ptr noundef nonnull @__const.aes_ccm_test.key, i32 noundef 128)
  br i1 %tobool74.not, label %land.end118.critedge, label %land.rhs88

land.rhs88:                                       ; preds = %land.end75
  %6 = load i32, ptr %enc_buf_len, align 4, !tbaa !32
  %conv92 = zext i32 %6 to i64
  %bcmp127 = call i32 @bcmp(ptr nonnull %enc_buf, ptr nonnull getelementptr inbounds (<{ <{ [8 x i8], [40 x i8] }>, <{ [22 x i8], [26 x i8] }>, <{ [32 x i8], [16 x i8] }> }>, ptr @__const.aes_ccm_test.ciphertext, i64 0, i32 2, i32 0, i64 0), i64 %conv92)
  %tobool94.not = icmp eq i32 %bcmp127, 0
  %call107 = call i32 @aes_decrypt_ccm(ptr noundef nonnull getelementptr inbounds (<{ <{ [8 x i8], [40 x i8] }>, <{ [22 x i8], [26 x i8] }>, <{ [32 x i8], [16 x i8] }> }>, ptr @__const.aes_ccm_test.ciphertext, i64 0, i32 2, i32 0, i64 0), i32 noundef 32, ptr noundef nonnull getelementptr inbounds (<{ <{ [8 x i8], [24 x i8] }>, <{ [16 x i8], [16 x i8] }>, <{ [20 x i8], [12 x i8] }> }>, ptr @__const.aes_ccm_test.assoc, i64 0, i32 2, i32 0, i64 0), i16 noundef zeroext 20, ptr noundef nonnull getelementptr inbounds (<{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ [8 x i8], [8 x i8] }>, [16 x i8] }>, ptr @__const.aes_ccm_test.iv, i64 0, i32 2), i16 noundef zeroext 12, ptr noundef nonnull %enc_buf, ptr noundef nonnull %enc_buf_len, i32 noundef 8, ptr noundef nonnull %mac_auth, ptr noundef nonnull @__const.aes_ccm_test.key, i32 noundef 128)
  br i1 %tobool94.not, label %land.lhs.true109, label %land.end118

land.lhs.true109:                                 ; preds = %land.rhs88
  %7 = load i32, ptr %enc_buf_len, align 4, !tbaa !32
  %conv113 = zext i32 %7 to i64
  %bcmp126 = call i32 @bcmp(ptr nonnull %enc_buf, ptr nonnull getelementptr inbounds (<{ <{ i8, i8, i8, i8, [28 x i8] }>, <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }> }>, ptr @__const.aes_ccm_test.plaintext, i64 0, i32 2, i32 0, i64 0), i64 %conv113)
  %tobool115.not = icmp eq i32 %bcmp126, 0
  br i1 %tobool115.not, label %land.rhs116, label %land.end118

land.rhs116:                                      ; preds = %land.lhs.true109
  %8 = load i32, ptr %mac_auth, align 4, !tbaa !32
  %tobool117 = icmp ne i32 %8, 0
  %9 = zext i1 %tobool117 to i32
  br label %land.end118

land.end118.critedge:                             ; preds = %land.end75, %land.end75.thread
  %call107.c = call i32 @aes_decrypt_ccm(ptr noundef nonnull getelementptr inbounds (<{ <{ [8 x i8], [40 x i8] }>, <{ [22 x i8], [26 x i8] }>, <{ [32 x i8], [16 x i8] }> }>, ptr @__const.aes_ccm_test.ciphertext, i64 0, i32 2, i32 0, i64 0), i32 noundef 32, ptr noundef nonnull getelementptr inbounds (<{ <{ [8 x i8], [24 x i8] }>, <{ [16 x i8], [16 x i8] }>, <{ [20 x i8], [12 x i8] }> }>, ptr @__const.aes_ccm_test.assoc, i64 0, i32 2, i32 0, i64 0), i16 noundef zeroext 20, ptr noundef nonnull getelementptr inbounds (<{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ [8 x i8], [8 x i8] }>, [16 x i8] }>, ptr @__const.aes_ccm_test.iv, i64 0, i32 2), i16 noundef zeroext 12, ptr noundef nonnull %enc_buf, ptr noundef nonnull %enc_buf_len, i32 noundef 8, ptr noundef nonnull %mac_auth, ptr noundef nonnull @__const.aes_ccm_test.key, i32 noundef 128)
  br label %land.end118

land.end118:                                      ; preds = %land.end118.critedge, %land.rhs116, %land.lhs.true109, %land.rhs88
  %land.ext119 = phi i32 [ 0, %land.lhs.true109 ], [ 0, %land.rhs88 ], [ %9, %land.rhs116 ], [ 0, %land.end118.critedge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %enc_buf) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enc_buf_len) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mac_auth) #16
  ret i32 %land.ext119
}

; Function Attrs: nounwind uwtable
define dso_local i32 @aes_test() local_unnamed_addr #5 {
entry:
  %call = tail call i32 @aes_ecb_test()
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.end18, label %land.rhs3

land.rhs3:                                        ; preds = %entry
  %call4 = tail call i32 @aes_cbc_test()
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.end18, label %land.rhs9

land.rhs9:                                        ; preds = %land.rhs3
  %call10 = tail call i32 @aes_ctr_test()
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.end18, label %land.rhs15

land.rhs15:                                       ; preds = %land.rhs9
  %call16 = tail call i32 @aes_ccm_test()
  %tobool17 = icmp ne i32 %call16, 0
  %0 = zext i1 %tobool17 to i32
  br label %land.end18

land.end18:                                       ; preds = %land.rhs15, %land.rhs9, %land.rhs3, %entry
  %land.ext19 = phi i32 [ 0, %land.rhs9 ], [ %0, %land.rhs15 ], [ 0, %entry ], [ 0, %land.rhs3 ]
  ret i32 %land.ext19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readnone %argv) local_unnamed_addr #5 {
entry:
  %call.i = tail call i32 @aes_ecb_test()
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %aes_test.exit188.thread.sink.split, label %land.rhs3.i

land.rhs3.i:                                      ; preds = %entry
  %call4.i = tail call i32 @aes_cbc_test()
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %aes_test.exit188.thread.sink.split, label %land.rhs9.i

land.rhs9.i:                                      ; preds = %land.rhs3.i
  %call10.i = tail call i32 @aes_ctr_test()
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.rhs9.i53, label %aes_test.exit

aes_test.exit:                                    ; preds = %land.rhs9.i
  %call16.i = tail call i32 @aes_ccm_test()
  %call16.i.fr = freeze i32 %call16.i
  %tobool17.i.not = icmp eq i32 %call16.i.fr, 0
  %.str.3..str.2 = select i1 %tobool17.i.not, ptr @.str.3, ptr @.str.2
  br label %land.rhs9.i53

land.rhs9.i53:                                    ; preds = %aes_test.exit, %land.rhs9.i
  %.str.2.sink = phi ptr [ %.str.3..str.2, %aes_test.exit ], [ @.str.3, %land.rhs9.i ]
  %call1192 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %.str.2.sink)
  %call10.i51 = tail call i32 @aes_ctr_test()
  %tobool11.not.i52 = icmp eq i32 %call10.i51, 0
  br i1 %tobool11.not.i52, label %land.rhs9.i66, label %aes_test.exit58

aes_test.exit58:                                  ; preds = %land.rhs9.i53
  %call16.i54 = tail call i32 @aes_ccm_test()
  %call16.i54.fr = freeze i32 %call16.i54
  %tobool17.i55.not = icmp eq i32 %call16.i54.fr, 0
  %.str.3..str.2343 = select i1 %tobool17.i55.not, ptr @.str.3, ptr @.str.2
  br label %land.rhs9.i66

land.rhs9.i66:                                    ; preds = %aes_test.exit58, %land.rhs9.i53
  %.str.2.sink333 = phi ptr [ %.str.3..str.2343, %aes_test.exit58 ], [ @.str.3, %land.rhs9.i53 ]
  %call5202 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %.str.2.sink333)
  %call10.i64 = tail call i32 @aes_ctr_test()
  %tobool11.not.i65 = icmp eq i32 %call10.i64, 0
  br i1 %tobool11.not.i65, label %land.rhs9.i79, label %aes_test.exit71

aes_test.exit71:                                  ; preds = %land.rhs9.i66
  %call16.i67 = tail call i32 @aes_ccm_test()
  %call16.i67.fr = freeze i32 %call16.i67
  %tobool17.i68.not = icmp eq i32 %call16.i67.fr, 0
  %.str.3..str.2344 = select i1 %tobool17.i68.not, ptr @.str.3, ptr @.str.2
  br label %land.rhs9.i79

land.rhs9.i79:                                    ; preds = %aes_test.exit71, %land.rhs9.i66
  %.str.2.sink334 = phi ptr [ %.str.3..str.2344, %aes_test.exit71 ], [ @.str.3, %land.rhs9.i66 ]
  %call9213 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %.str.2.sink334)
  %call10.i77 = tail call i32 @aes_ctr_test()
  %tobool11.not.i78 = icmp eq i32 %call10.i77, 0
  br i1 %tobool11.not.i78, label %land.rhs9.i92, label %aes_test.exit84

aes_test.exit84:                                  ; preds = %land.rhs9.i79
  %call16.i80 = tail call i32 @aes_ccm_test()
  %call16.i80.fr = freeze i32 %call16.i80
  %tobool17.i81.not = icmp eq i32 %call16.i80.fr, 0
  %.str.3..str.2345 = select i1 %tobool17.i81.not, ptr @.str.3, ptr @.str.2
  br label %land.rhs9.i92

land.rhs9.i92:                                    ; preds = %aes_test.exit84, %land.rhs9.i79
  %.str.2.sink335 = phi ptr [ %.str.3..str.2345, %aes_test.exit84 ], [ @.str.3, %land.rhs9.i79 ]
  %call13224 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %.str.2.sink335)
  %call10.i90 = tail call i32 @aes_ctr_test()
  %tobool11.not.i91 = icmp eq i32 %call10.i90, 0
  br i1 %tobool11.not.i91, label %land.rhs9.i105, label %aes_test.exit97

aes_test.exit97:                                  ; preds = %land.rhs9.i92
  %call16.i93 = tail call i32 @aes_ccm_test()
  %call16.i93.fr = freeze i32 %call16.i93
  %tobool17.i94.not = icmp eq i32 %call16.i93.fr, 0
  %.str.3..str.2346 = select i1 %tobool17.i94.not, ptr @.str.3, ptr @.str.2
  br label %land.rhs9.i105

land.rhs9.i105:                                   ; preds = %aes_test.exit97, %land.rhs9.i92
  %.str.2.sink336 = phi ptr [ %.str.3..str.2346, %aes_test.exit97 ], [ @.str.3, %land.rhs9.i92 ]
  %call17235 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %.str.2.sink336)
  %call10.i103 = tail call i32 @aes_ctr_test()
  %tobool11.not.i104 = icmp eq i32 %call10.i103, 0
  br i1 %tobool11.not.i104, label %land.rhs9.i118, label %aes_test.exit110

aes_test.exit110:                                 ; preds = %land.rhs9.i105
  %call16.i106 = tail call i32 @aes_ccm_test()
  %call16.i106.fr = freeze i32 %call16.i106
  %tobool17.i107.not = icmp eq i32 %call16.i106.fr, 0
  %.str.3..str.2347 = select i1 %tobool17.i107.not, ptr @.str.3, ptr @.str.2
  br label %land.rhs9.i118

land.rhs9.i118:                                   ; preds = %aes_test.exit110, %land.rhs9.i105
  %.str.2.sink337 = phi ptr [ %.str.3..str.2347, %aes_test.exit110 ], [ @.str.3, %land.rhs9.i105 ]
  %call21246 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %.str.2.sink337)
  %call10.i116 = tail call i32 @aes_ctr_test()
  %tobool11.not.i117 = icmp eq i32 %call10.i116, 0
  br i1 %tobool11.not.i117, label %land.rhs9.i131, label %aes_test.exit123

aes_test.exit123:                                 ; preds = %land.rhs9.i118
  %call16.i119 = tail call i32 @aes_ccm_test()
  %call16.i119.fr = freeze i32 %call16.i119
  %tobool17.i120.not = icmp eq i32 %call16.i119.fr, 0
  %.str.3..str.2348 = select i1 %tobool17.i120.not, ptr @.str.3, ptr @.str.2
  br label %land.rhs9.i131

land.rhs9.i131:                                   ; preds = %aes_test.exit123, %land.rhs9.i118
  %.str.2.sink338 = phi ptr [ %.str.3..str.2348, %aes_test.exit123 ], [ @.str.3, %land.rhs9.i118 ]
  %call25257 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %.str.2.sink338)
  %call10.i129 = tail call i32 @aes_ctr_test()
  %tobool11.not.i130 = icmp eq i32 %call10.i129, 0
  br i1 %tobool11.not.i130, label %land.rhs9.i144, label %aes_test.exit136

aes_test.exit136:                                 ; preds = %land.rhs9.i131
  %call16.i132 = tail call i32 @aes_ccm_test()
  %call16.i132.fr = freeze i32 %call16.i132
  %tobool17.i133.not = icmp eq i32 %call16.i132.fr, 0
  %.str.3..str.2349 = select i1 %tobool17.i133.not, ptr @.str.3, ptr @.str.2
  br label %land.rhs9.i144

land.rhs9.i144:                                   ; preds = %aes_test.exit136, %land.rhs9.i131
  %.str.2.sink339 = phi ptr [ %.str.3..str.2349, %aes_test.exit136 ], [ @.str.3, %land.rhs9.i131 ]
  %call29268 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %.str.2.sink339)
  %call10.i142 = tail call i32 @aes_ctr_test()
  %tobool11.not.i143 = icmp eq i32 %call10.i142, 0
  br i1 %tobool11.not.i143, label %land.rhs9.i157, label %aes_test.exit149

aes_test.exit149:                                 ; preds = %land.rhs9.i144
  %call16.i145 = tail call i32 @aes_ccm_test()
  %call16.i145.fr = freeze i32 %call16.i145
  %tobool17.i146.not = icmp eq i32 %call16.i145.fr, 0
  %.str.3..str.2350 = select i1 %tobool17.i146.not, ptr @.str.3, ptr @.str.2
  br label %land.rhs9.i157

land.rhs9.i157:                                   ; preds = %aes_test.exit149, %land.rhs9.i144
  %.str.2.sink340 = phi ptr [ %.str.3..str.2350, %aes_test.exit149 ], [ @.str.3, %land.rhs9.i144 ]
  %call33279 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %.str.2.sink340)
  %call10.i155 = tail call i32 @aes_ctr_test()
  %tobool11.not.i156 = icmp eq i32 %call10.i155, 0
  br i1 %tobool11.not.i156, label %land.rhs9.i170, label %aes_test.exit162

aes_test.exit162:                                 ; preds = %land.rhs9.i157
  %call16.i158 = tail call i32 @aes_ccm_test()
  %call16.i158.fr = freeze i32 %call16.i158
  %tobool17.i159.not = icmp eq i32 %call16.i158.fr, 0
  %.str.3..str.2351 = select i1 %tobool17.i159.not, ptr @.str.3, ptr @.str.2
  br label %land.rhs9.i170

land.rhs9.i170:                                   ; preds = %aes_test.exit162, %land.rhs9.i157
  %.str.2.sink341 = phi ptr [ %.str.3..str.2351, %aes_test.exit162 ], [ @.str.3, %land.rhs9.i157 ]
  %call37290 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %.str.2.sink341)
  %call10.i168 = tail call i32 @aes_ctr_test()
  %tobool11.not.i169 = icmp eq i32 %call10.i168, 0
  br i1 %tobool11.not.i169, label %land.rhs9.i183, label %aes_test.exit175

aes_test.exit175:                                 ; preds = %land.rhs9.i170
  %call16.i171 = tail call i32 @aes_ccm_test()
  %call16.i171.fr = freeze i32 %call16.i171
  %tobool17.i172.not = icmp eq i32 %call16.i171.fr, 0
  %.str.3..str.2352 = select i1 %tobool17.i172.not, ptr @.str.3, ptr @.str.2
  br label %land.rhs9.i183

land.rhs9.i183:                                   ; preds = %aes_test.exit175, %land.rhs9.i170
  %.str.2.sink342 = phi ptr [ %.str.3..str.2352, %aes_test.exit175 ], [ @.str.3, %land.rhs9.i170 ]
  %call41301 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %.str.2.sink342)
  %call10.i181 = tail call i32 @aes_ctr_test()
  %tobool11.not.i182 = icmp eq i32 %call10.i181, 0
  br i1 %tobool11.not.i182, label %aes_test.exit188.thread, label %aes_test.exit188

aes_test.exit188:                                 ; preds = %land.rhs9.i183
  %call16.i184 = tail call i32 @aes_ccm_test()
  %call16.i184.fr = freeze i32 %call16.i184
  %tobool17.i185.not = icmp eq i32 %call16.i184.fr, 0
  br i1 %tobool17.i185.not, label %aes_test.exit188.thread, label %0

aes_test.exit188.thread.sink.split:               ; preds = %land.rhs3.i, %entry
  %call1196312 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.3)
  %call5207314 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.3)
  %call9218316 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.3)
  %call13229318 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.3)
  %call17240320 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.3)
  %call21251322 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.3)
  %call25262324 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.3)
  %call29273326 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.3)
  %call33284328 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.3)
  %call37295330 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.3)
  %call41306332 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.3)
  br label %aes_test.exit188.thread

aes_test.exit188.thread:                          ; preds = %aes_test.exit188.thread.sink.split, %aes_test.exit188, %land.rhs9.i183
  br label %0

0:                                                ; preds = %aes_test.exit188.thread, %aes_test.exit188
  %1 = phi ptr [ @.str.3, %aes_test.exit188.thread ], [ @.str.2, %aes_test.exit188 ]
  %call45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %1)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @llvm.x86.sse2.lfence() #16

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind willreturn memory(argmem: read) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }

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
!12 = !{!13}
!13 = distinct !{!13, !14}
!14 = distinct !{!14, !"LVerDomain"}
!15 = !{!16}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !18, !19, !20}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!25}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !18, !19, !20}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !18, !19}
!30 = distinct !{!30, !18, !31}
!31 = !{!"llvm.loop.peeled.count", i32 1}
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !10, i64 0}
!34 = distinct !{!34, !18, !31}
!35 = distinct !{!35, !18, !31}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18, !19, !20}
!39 = distinct !{!39, !18, !19, !20}
!40 = distinct !{!40, !18, !20, !19}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
