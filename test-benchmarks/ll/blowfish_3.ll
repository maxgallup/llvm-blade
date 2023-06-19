; ModuleID = 'blowfish.c'
source_filename = "blowfish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BLOWFISH_KEY = type { [18 x i32], [4 x [256 x i32]] }

@p_perm = internal unnamed_addr constant [18 x i32] [i32 608135816, i32 -2052912941, i32 320440878, i32 57701188, i32 -1542899678, i32 698298832, i32 137296536, i32 -330404727, i32 1160258022, i32 953160567, i32 -1101764913, i32 887688300, i32 -1062458953, i32 -914599715, i32 1065670069, i32 -1253635817, i32 -1843997223, i32 -1988494565], align 16
@s_perm = internal unnamed_addr constant [4 x [256 x i32]] [[256 x i32] [i32 -785314906, i32 -1730169428, i32 805139163, i32 -803545161, i32 -1193168915, i32 1780907670, i32 -1166241723, i32 -248741991, i32 614570311, i32 -1282315017, i32 134345442, i32 -2054226922, i32 1667834072, i32 1901547113, i32 -1537671517, i32 -191677058, i32 227898511, i32 1921955416, i32 1904987480, i32 -2112533778, i32 2069144605, i32 -1034266187, i32 -1674521287, i32 720527379, i32 -976113629, i32 677414384, i32 -901678824, i32 -1193592593, i32 -1904616272, i32 1614419982, i32 1822297739, i32 -1340175810, i32 -686458943, i32 -1120842969, i32 2024746970, i32 1432378464, i32 -430627341, i32 -1437226092, i32 1464375394, i32 1676153920, i32 1439316330, i32 715854006, i32 -1261675468, i32 289532110, i32 -1588296017, i32 2087905683, i32 -1276242927, i32 1668267050, i32 732546397, i32 1947742710, i32 -832815594, i32 -1685613794, i32 -1344882125, i32 1814351708, i32 2050118529, i32 680887927, i32 999245976, i32 1800124847, i32 -994056165, i32 1713906067, i32 1641548236, i32 -81679983, i32 1216130144, i32 1575780402, i32 -276538019, i32 -377129551, i32 -601480446, i32 -345695352, i32 596196993, i32 -745100091, i32 258830323, i32 -2081144263, i32 772490370, i32 -1534844924, i32 1774776394, i32 -1642095778, i32 566650946, i32 -152474470, i32 1728879713, i32 -1412200208, i32 1783734482, i32 -665571480, i32 -1777359064, i32 -1420741725, i32 1861159788, i32 326777828, i32 -1170476976, i32 2130389656, i32 -1578015459, i32 967770486, i32 1724537150, i32 -2109534584, i32 -1930525159, i32 1164943284, i32 2105845187, i32 998989502, i32 -529566248, i32 -2050940813, i32 1075463327, i32 1455516326, i32 1322494562, i32 910128902, i32 469688178, i32 1117454909, i32 936433444, i32 -804646328, i32 -619713837, i32 1240580251, i32 122909385, i32 -2137449605, i32 634681816, i32 -152510729, i32 -469872614, i32 -1233564613, i32 -1754472259, i32 79693498, i32 -1045868618, i32 1084186820, i32 1583128258, i32 426386531, i32 1761308591, i32 1047286709, i32 322548459, i32 995290223, i32 1845252383, i32 -1691314900, i32 -863943356, i32 -1352745719, i32 -1092366332, i32 -567063811, i32 1712269319, i32 422464435, i32 -1060394921, i32 1170764815, i32 -771006663, i32 -1177289765, i32 1434042557, i32 442511882, i32 -694091578, i32 1076654713, i32 1738483198, i32 -81812532, i32 -1901729288, i32 -617471240, i32 1014306527, i32 -43947243, i32 793779912, i32 -1392160085, i32 842905082, i32 -48003232, i32 1395751752, i32 1040244610, i32 -1638115397, i32 -898659168, i32 445077038, i32 -552113701, i32 -717051658, i32 679411651, i32 -1402522938, i32 -1940957837, i32 1767581616, i32 -1144366904, i32 -503340195, i32 -1192226400, i32 284835224, i32 -48135240, i32 1258075500, i32 768725851, i32 -1705778055, i32 -1225243291, i32 -762426948, i32 1274779536, i32 -505548070, i32 -1530167757, i32 1660621633, i32 -823867672, i32 -283063590, i32 913787905, i32 -797008130, i32 737222580, i32 -1780753843, i32 -1366257256, i32 -357724559, i32 1804850592, i32 -795946544, i32 -1345903136, i32 -1908647121, i32 -1904896841, i32 -1879645445, i32 -233690268, i32 -2004305902, i32 -1878134756, i32 1336762016, i32 1754252060, i32 -774901359, i32 -1280786003, i32 791618072, i32 -1106372745, i32 -361419266, i32 -1962795103, i32 -442446833, i32 -1250986776, i32 413987798, i32 -829824359, i32 -1264037920, i32 -49028937, i32 2093235073, i32 -760370983, i32 375366246, i32 -2137688315, i32 -1815317740, i32 555357303, i32 -424861595, i32 2008414854, i32 -950779147, i32 -73583153, i32 -338841844, i32 2067696032, i32 -700376109, i32 -1373733303, i32 2428461, i32 544322398, i32 577241275, i32 1471733935, i32 610547355, i32 -267798242, i32 1432588573, i32 1507829418, i32 2025931657, i32 -648391809, i32 545086370, i32 48609733, i32 -2094660746, i32 1653985193, i32 298326376, i32 1316178497, i32 -1287180854, i32 2064951626, i32 458293330, i32 -1705826027, i32 -703637697, i32 -1130641692, i32 727753846, i32 -2115603456, i32 146436021, i32 1461446943, i32 -224990101, i32 705550613, i32 -1235000031, i32 -407242314, i32 -13368018, i32 -981117340, i32 1404054877, i32 -1449160799, i32 146425753, i32 1854211946], [256 x i32] [i32 1266315497, i32 -1246549692, i32 -613086930, i32 -1004984797, i32 -1385257296, i32 1235738493, i32 -1662099272, i32 -1880247706, i32 -324367247, i32 1771706367, i32 1449415276, i32 -1028546847, i32 422970021, i32 1963543593, i32 -1604775104, i32 -468174274, i32 1062508698, i32 1531092325, i32 1804592342, i32 -1711849514, i32 -1580033017, i32 -269995787, i32 1294809318, i32 -265986623, i32 1289560198, i32 -2072974554, i32 1669523910, i32 35572830, i32 157838143, i32 1052438473, i32 1016535060, i32 1802137761, i32 1753167236, i32 1386275462, i32 -1214491899, i32 -1437595849, i32 1040679964, i32 2145300060, i32 -1904392980, i32 1461121720, i32 -1338320329, i32 -263189491, i32 -266592508, i32 33600511, i32 -1374882534, i32 1018524850, i32 629373528, i32 -603381315, i32 -779021319, i32 2091462646, i32 -1808644237, i32 586499841, i32 988145025, i32 935516892, i32 -927631820, i32 -1695294041, i32 -1455136442, i32 265290510, i32 -322386114, i32 -1535828415, i32 -499593831, i32 1005194799, i32 847297441, i32 406762289, i32 1314163512, i32 1332590856, i32 1866599683, i32 -167115585, i32 750260880, i32 613907577, i32 1450815602, i32 -1129346641, i32 -560302305, i32 -644675568, i32 -1282691566, i32 -590397650, i32 1427272223, i32 778793252, i32 1343938022, i32 -1618686585, i32 2052605720, i32 1946737175, i32 -1130390852, i32 -380928628, i32 -327488454, i32 -612033030, i32 1661551462, i32 -1000029230, i32 -283371449, i32 840292616, i32 -582796489, i32 616741398, i32 312560963, i32 711312465, i32 1351876610, i32 322626781, i32 1910503582, i32 271666773, i32 -2119403562, i32 1594956187, i32 70604529, i32 -677132437, i32 1007753275, i32 1495573769, i32 -225450259, i32 -1745748998, i32 -1631928532, i32 504708206, i32 -2031925904, i32 -353800271, i32 -2045878774, i32 1514023603, i32 1998579484, i32 1312622330, i32 694541497, i32 -1712906993, i32 -2143385130, i32 1382467621, i32 776784248, i32 -1676627094, i32 -971698502, i32 -1797068168, i32 -1510196141, i32 503983604, i32 -218673497, i32 907881277, i32 423175695, i32 432175456, i32 1378068232, i32 -149744970, i32 -340918674, i32 -356311194, i32 -474200683, i32 -1501837181, i32 -1317062703, i32 26017576, i32 -1020076561, i32 -1100195163, i32 1700274565, i32 1756076034, i32 -288447217, i32 -617638597, i32 720338349, i32 1533947780, i32 354530856, i32 688349552, i32 -321042571, i32 1637815568, i32 332179504, i32 -345916010, i32 53804574, i32 -1442618417, i32 -1250730864, i32 1282449977, i32 -711025141, i32 -877994476, i32 -288586052, i32 1617046695, i32 -1666491221, i32 -1292663698, i32 1686838959, i32 431878346, i32 -1608291911, i32 1700445008, i32 1080580658, i32 1009431731, i32 832498133, i32 -1071531785, i32 -1688990951, i32 -2023776103, i32 -1778935426, i32 1648197032, i32 -130578278, i32 -1746719369, i32 300782431, i32 375919233, i32 238389289, i32 -941219882, i32 -1763778655, i32 2019080857, i32 1475708069, i32 455242339, i32 -1685863425, i32 448939670, i32 -843904277, i32 1395535956, i32 -1881585436, i32 1841049896, i32 1491858159, i32 885456874, i32 -30872223, i32 -293847949, i32 1565136089, i32 -396052509, i32 1108368660, i32 540939232, i32 1173283510, i32 -1549095958, i32 -613658859, i32 -87339056, i32 -951913406, i32 -278217803, i32 1699691293, i32 1103962373, i32 -669091426, i32 -2038084153, i32 -464828566, i32 1031889488, i32 -815619598, i32 1535977030, i32 -58162272, i32 -1043876189, i32 2132092099, i32 1774941330, i32 1199868427, i32 1452454533, i32 157007616, i32 -1390851939, i32 342012276, i32 595725824, i32 1480756522, i32 206960106, i32 497939518, i32 591360097, i32 863170706, i32 -1919713727, i32 -698356495, i32 1814182875, i32 2094937945, i32 -873565088, i32 1082520231, i32 -831049106, i32 -1509457788, i32 435703966, i32 -386934699, i32 1641649973, i32 -1452693590, i32 -989067582, i32 1510255612, i32 -2146710820, i32 -1639679442, i32 -1018874748, i32 -36346107, i32 236887753, i32 -613164077, i32 274041037, i32 1734335097, i32 -479771840, i32 -976997275, i32 1899903192, i32 1026095262, i32 -244449504, i32 356393447, i32 -1884275382, i32 -421290197, i32 -612127241], [256 x i32] [i32 -381855128, i32 -1803468553, i32 -162781668, i32 -1805047500, i32 1091903735, i32 1979897079, i32 -1124832466, i32 -727580568, i32 -737663887, i32 857797738, i32 1136121015, i32 1342202287, i32 507115054, i32 -1759230650, i32 337727348, i32 -1081374656, i32 1301675037, i32 -1766485585, i32 1895095763, i32 1721773893, i32 -1078195732, i32 62756741, i32 2142006736, i32 835421444, i32 -1762973773, i32 1442658625, i32 -635090970, i32 -1412822374, i32 676362277, i32 1392781812, i32 170690266, i32 -373920261, i32 1759253602, i32 -683120384, i32 1745797284, i32 664899054, i32 1329594018, i32 -393761396, i32 -1249058810, i32 2062866102, i32 -1429332356, i32 -751345684, i32 -830954599, i32 1080764994, i32 553557557, i32 -638351943, i32 -298199125, i32 991055499, i32 499776247, i32 1265440854, i32 648242737, i32 -354183246, i32 980351604, i32 -581221582, i32 1749149687, i32 -898096901, i32 -83167922, i32 -654396521, i32 1161844396, i32 -1169648345, i32 1431517754, i32 545492359, i32 -26498633, i32 -795437749, i32 1437099964, i32 -1592419752, i32 -861329053, i32 -1713251533, i32 -1507177898, i32 1060185593, i32 1593081372, i32 -1876348548, i32 -34019326, i32 69676912, i32 -2135222948, i32 86519011, i32 -1782508216, i32 -456757982, i32 1220612927, i32 -955283748, i32 133810670, i32 1090789135, i32 1078426020, i32 1569222167, i32 845107691, i32 -711212847, i32 -222510705, i32 1091646820, i32 628848692, i32 1613405280, i32 -537335645, i32 526609435, i32 236106946, i32 48312990, i32 -1352249391, i32 -892239595, i32 1797494240, i32 859738849, i32 992217954, i32 -289490654, i32 -2051890674, i32 -424014439, i32 -562951028, i32 765654824, i32 -804095931, i32 -1783130883, i32 1685915746, i32 -405998096, i32 1414112111, i32 -2021832454, i32 -1013056217, i32 -214004450, i32 172450625, i32 -1724973196, i32 980381355, i32 -185008841, i32 -1475158944, i32 -1578377736, i32 -1726226100, i32 -613520627, i32 -964995824, i32 1835478071, i32 660984891, i32 -590288892, i32 -248967737, i32 -872349789, i32 -1254551662, i32 1762651403, i32 1719377915, i32 -824476260, i32 -1601057013, i32 -652910941, i32 -1156370552, i32 1364962596, i32 2073328063, i32 1983633131, i32 926494387, i32 -871278215, i32 -2144935273, i32 -198299347, i32 1749200295, i32 -966120645, i32 309677260, i32 2016342300, i32 1779581495, i32 -1215147545, i32 111262694, i32 1274766160, i32 443224088, i32 298511866, i32 1025883608, i32 -488520759, i32 1145181785, i32 168956806, i32 -653464466, i32 -710153686, i32 1689216846, i32 -628709281, i32 -1094719096, i32 1692713982, i32 -1648590761, i32 -252198778, i32 1618508792, i32 1610833997, i32 -771914938, i32 -164094032, i32 2001055236, i32 -684262196, i32 -2092799181, i32 -266425487, i32 -1333771897, i32 1006657119, i32 2006996926, i32 -1108824540, i32 1430667929, i32 -1084739999, i32 1314452623, i32 -220332638, i32 -193663176, i32 -2021016126, i32 1399257539, i32 -927756684, i32 -1267338667, i32 1190975929, i32 2062231137, i32 -1960976508, i32 -2073424263, i32 -1856006686, i32 1181637006, i32 548689776, i32 -1932175983, i32 -922558900, i32 -1190417183, i32 -1149106736, i32 296247880, i32 1970579870, i32 -1216407114, i32 -525738999, i32 1714227617, i32 -1003338189, i32 -396747006, i32 166772364, i32 1251581989, i32 493813264, i32 448347421, i32 195405023, i32 -1584991729, i32 677966185, i32 -591930749, i32 1463355134, i32 -1578971493, i32 1338867538, i32 1343315457, i32 -1492745222, i32 -1610435132, i32 233230375, i32 -1694987225, i32 2000651841, i32 -1017099258, i32 1638401717, i32 -266896856, i32 -1057650976, i32 6314154, i32 819756386, i32 300326615, i32 590932579, i32 1405279636, i32 -1027467724, i32 -1144263082, i32 -1866680610, i32 -335774303, i32 -833020554, i32 1862657033, i32 1266418056, i32 963775037, i32 2089974820, i32 -2031914401, i32 1917689273, i32 448879540, i32 -744572676, i32 -313240200, i32 150775221, i32 -667058989, i32 1303187396, i32 508620638, i32 -1318983944, i32 -1568336679, i32 1817252668, i32 1876281319, i32 1457606340, i32 908771278, i32 -574175177, i32 -677760460, i32 -1838972398, i32 1729034894, i32 1080033504], [256 x i32] [i32 976866871, i32 -738527793, i32 -1413318857, i32 1522871579, i32 1555064734, i32 1336096578, i32 -746444992, i32 -1715692610, i32 -720269667, i32 -1089506539, i32 -701686658, i32 -956251013, i32 -1215554709, i32 564236357, i32 -1301368386, i32 1781952180, i32 1464380207, i32 -1131123079, i32 -962365742, i32 1699332808, i32 1393555694, i32 1183702653, i32 -713881059, i32 1288719814, i32 691649499, i32 -1447410096, i32 -1399511320, i32 -1101077756, i32 -1577396752, i32 1781354906, i32 1676643554, i32 -1702433246, i32 -1064713544, i32 1126444790, i32 -1524759638, i32 -1661808476, i32 -2084544070, i32 -1679201715, i32 -1880812208, i32 -1167828010, i32 673620729, i32 -1489356063, i32 1269405062, i32 -279616791, i32 -953159725, i32 -145557542, i32 1057255273, i32 2012875353, i32 -2132498155, i32 -2018474495, i32 -1693849939, i32 993977747, i32 -376373926, i32 -1640704105, i32 753973209, i32 36408145, i32 -1764381638, i32 25011837, i32 -774947114, i32 2088578344, i32 530523599, i32 -1376601957, i32 1524020338, i32 1518925132, i32 -534139791, i32 -535190042, i32 1202760957, i32 -309069157, i32 -388774771, i32 674977740, i32 -120232407, i32 2031300136, i32 2019492241, i32 -311074731, i32 -141160892, i32 -472686964, i32 352677332, i32 -1997247046, i32 60907813, i32 90501309, i32 -1007968747, i32 1016092578, i32 -1759044884, i32 -1455814870, i32 457141659, i32 509813237, i32 -174299397, i32 652014361, i32 1966332200, i32 -1319764491, i32 55981186, i32 -1967506245, i32 676427537, i32 -1039476232, i32 -1412673177, i32 -861040033, i32 1307055953, i32 942726286, i32 933058658, i32 -1826555503, i32 -361066302, i32 -79791154, i32 1361170020, i32 2001714738, i32 -1464409218, i32 -1020707514, i32 1222529897, i32 1679025792, i32 -1565652976, i32 -580013532, i32 1770335741, i32 151462246, i32 -1281735158, i32 1682292957, i32 1483529935, i32 471910574, i32 1539241949, i32 458788160, i32 -858652289, i32 1807016891, i32 -576558466, i32 978976581, i32 1043663428, i32 -1129001515, i32 1927990952, i32 -94075717, i32 -1922690386, i32 -1086558393, i32 -761535389, i32 1412390302, i32 -1362987237, i32 -162634896, i32 1947078029, i32 -413461673, i32 -126740879, i32 -1353482915, i32 1077988104, i32 1320477388, i32 886195818, i32 18198404, i32 -508558296, i32 -1785185763, i32 112762804, i32 -831610808, i32 1866414978, i32 891333506, i32 18488651, i32 661792760, i32 1628790961, i32 -409780260, i32 -1153795797, i32 876946877, i32 -1601685023, i32 1372485963, i32 791857591, i32 -1608533303, i32 -534984578, i32 -1127755274, i32 -822013501, i32 -1578587449, i32 445679433, i32 -732971622, i32 -790962485, i32 -720709064, i32 54117162, i32 -963561881, i32 -1913048708, i32 -525259953, i32 -140617289, i32 1140177722, i32 -220915201, i32 668550556, i32 -1080614356, i32 367459370, i32 261225585, i32 -1684794075, i32 -85617823, i32 -826893077, i32 -1029151655, i32 314222801, i32 -1228863650, i32 -486184436, i32 282218597, i32 -888953790, i32 -521376242, i32 379116347, i32 1285071038, i32 846784868, i32 -1625320142, i32 -523005217, i32 -744475605, i32 -1989021154, i32 453669953, i32 1268987020, i32 -977374944, i32 -1015663912, i32 -550133875, i32 -1684459730, i32 -435458233, i32 266596637, i32 -447948204, i32 517658769, i32 -832407089, i32 -851542417, i32 370717030, i32 -47440635, i32 -2070949179, i32 -151313767, i32 -182193321, i32 -1506642397, i32 -1817692879, i32 1456262402, i32 -1393524382, i32 1517677493, i32 1846949527, i32 -1999473716, i32 -560569710, i32 -2118563376, i32 1280348187, i32 1908823572, i32 -423180355, i32 846861322, i32 1172426758, i32 -1007518822, i32 -911584259, i32 1655181056, i32 -1155153950, i32 901632758, i32 1897031941, i32 -1308360158, i32 -1228157060, i32 -847864789, i32 1393639104, i32 373351379, i32 950779232, i32 625454576, i32 -1170726756, i32 -146354570, i32 2007998917, i32 544563296, i32 -2050228658, i32 -1964470824, i32 2058025392, i32 1291430526, i32 424198748, i32 50039436, i32 29584100, i32 -689184263, i32 -1865090967, i32 -1503863136, i32 1057563949, i32 -1039604065, i32 -1219600078, i32 -831004069, i32 1469046755, i32 985887462]], align 16
@__const.blowfish_test.key3 = private unnamed_addr constant [24 x i8] c"\F0\E1\D2\C3\B4\A5\96\87xiZK<-\1E\0F\00\11\223DUfw", align 16
@.str = private unnamed_addr constant [20 x i8] c"Blowfish tests: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SUCCEEDED\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @blowfish_encrypt(ptr nocapture noundef readonly %in, ptr nocapture noundef writeonly %out, ptr noundef readonly %keystruct) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %in, align 1, !tbaa !7
  %conv = zext i8 %0 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx1 = getelementptr inbounds i8, ptr %in, i64 1
  %1 = load i8, ptr %arrayidx1, align 1, !tbaa !7
  %conv2 = zext i8 %1 to i32
  %shl3 = shl nuw nsw i32 %conv2, 16
  %or = or i32 %shl3, %shl
  %arrayidx4 = getelementptr inbounds i8, ptr %in, i64 2
  %2 = load i8, ptr %arrayidx4, align 1, !tbaa !7
  %conv5 = zext i8 %2 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %arrayidx8 = getelementptr inbounds i8, ptr %in, i64 3
  %3 = load i8, ptr %arrayidx8, align 1, !tbaa !7
  %conv9 = zext i8 %3 to i32
  %or10 = or i32 %or7, %conv9
  %arrayidx11 = getelementptr inbounds i8, ptr %in, i64 4
  %4 = load i8, ptr %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %4 to i32
  %shl13 = shl nuw i32 %conv12, 24
  %arrayidx14 = getelementptr inbounds i8, ptr %in, i64 5
  %5 = load i8, ptr %arrayidx14, align 1, !tbaa !7
  %conv15 = zext i8 %5 to i32
  %shl16 = shl nuw nsw i32 %conv15, 16
  %or17 = or i32 %shl16, %shl13
  %arrayidx18 = getelementptr inbounds i8, ptr %in, i64 6
  %6 = load i8, ptr %arrayidx18, align 1, !tbaa !7
  %conv19 = zext i8 %6 to i32
  %shl20 = shl nuw nsw i32 %conv19, 8
  %or21 = or i32 %or17, %shl20
  %arrayidx22 = getelementptr inbounds i8, ptr %in, i64 7
  %7 = load i8, ptr %arrayidx22, align 1, !tbaa !7
  %conv23 = zext i8 %7 to i32
  %or24 = or i32 %or21, %conv23
  %8 = load i32, ptr %keystruct, align 4, !tbaa !10
  %xor = xor i32 %8, %or10
  %s = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1
  %shr = lshr i32 %xor, 24
  %idxprom = zext i32 %shr to i64
  %arrayidx27 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom
  %9 = load i32, ptr %arrayidx27, align 4, !tbaa !10
  %shr30 = lshr i32 %xor, 16
  %and = and i32 %shr30, 255
  %idxprom31 = zext i32 %and to i64
  %arrayidx32 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom31
  %10 = load i32, ptr %arrayidx32, align 4, !tbaa !10
  %add = add i32 %10, %9
  %shr35 = lshr i32 %xor, 8
  %and36 = and i32 %shr35, 255
  %idxprom37 = zext i32 %and36 to i64
  %arrayidx38 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom37
  %11 = load i32, ptr %arrayidx38, align 4, !tbaa !10
  %xor39 = xor i32 %add, %11
  %and42 = and i32 %xor, 255
  %idxprom43 = zext i32 %and42 to i64
  %arrayidx44 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom43
  %12 = load i32, ptr %arrayidx44, align 4, !tbaa !10
  %add45 = add i32 %xor39, %12
  %xor46 = xor i32 %add45, %or24
  %arrayidx48 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 1
  %13 = load i32, ptr %arrayidx48, align 4, !tbaa !10
  %xor49 = xor i32 %xor46, %13
  %shr52 = lshr i32 %xor49, 24
  %idxprom53 = zext i32 %shr52 to i64
  %arrayidx54 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom53
  %14 = load i32, ptr %arrayidx54, align 4, !tbaa !10
  %shr57 = lshr i32 %xor49, 16
  %and58 = and i32 %shr57, 255
  %idxprom59 = zext i32 %and58 to i64
  %arrayidx60 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom59
  %15 = load i32, ptr %arrayidx60, align 4, !tbaa !10
  %add61 = add i32 %15, %14
  %shr64 = lshr i32 %xor49, 8
  %and65 = and i32 %shr64, 255
  %idxprom66 = zext i32 %and65 to i64
  %arrayidx67 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom66
  %16 = load i32, ptr %arrayidx67, align 4, !tbaa !10
  %xor68 = xor i32 %add61, %16
  %and71 = and i32 %xor49, 255
  %idxprom72 = zext i32 %and71 to i64
  %arrayidx73 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom72
  %17 = load i32, ptr %arrayidx73, align 4, !tbaa !10
  %add74 = add i32 %xor68, %17
  %arrayidx77 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 2
  %18 = load i32, ptr %arrayidx77, align 4, !tbaa !10
  %19 = xor i32 %18, %add74
  %xor78 = xor i32 %19, %xor
  %shr81 = lshr i32 %xor78, 24
  %idxprom82 = zext i32 %shr81 to i64
  %arrayidx83 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom82
  %20 = load i32, ptr %arrayidx83, align 4, !tbaa !10
  %shr86 = lshr i32 %xor78, 16
  %and87 = and i32 %shr86, 255
  %idxprom88 = zext i32 %and87 to i64
  %arrayidx89 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom88
  %21 = load i32, ptr %arrayidx89, align 4, !tbaa !10
  %add90 = add i32 %21, %20
  %shr93 = lshr i32 %xor78, 8
  %and94 = and i32 %shr93, 255
  %idxprom95 = zext i32 %and94 to i64
  %arrayidx96 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom95
  %22 = load i32, ptr %arrayidx96, align 4, !tbaa !10
  %xor97 = xor i32 %add90, %22
  %and100 = and i32 %xor78, 255
  %idxprom101 = zext i32 %and100 to i64
  %arrayidx102 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom101
  %23 = load i32, ptr %arrayidx102, align 4, !tbaa !10
  %add103 = add i32 %xor97, %23
  %arrayidx106 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 3
  %24 = load i32, ptr %arrayidx106, align 4, !tbaa !10
  %25 = xor i32 %24, %add103
  %xor107 = xor i32 %25, %xor49
  %shr110 = lshr i32 %xor107, 24
  %idxprom111 = zext i32 %shr110 to i64
  %arrayidx112 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom111
  %26 = load i32, ptr %arrayidx112, align 4, !tbaa !10
  %shr115 = lshr i32 %xor107, 16
  %and116 = and i32 %shr115, 255
  %idxprom117 = zext i32 %and116 to i64
  %arrayidx118 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom117
  %27 = load i32, ptr %arrayidx118, align 4, !tbaa !10
  %add119 = add i32 %27, %26
  %shr122 = lshr i32 %xor107, 8
  %and123 = and i32 %shr122, 255
  %idxprom124 = zext i32 %and123 to i64
  %arrayidx125 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom124
  %28 = load i32, ptr %arrayidx125, align 4, !tbaa !10
  %xor126 = xor i32 %add119, %28
  %and129 = and i32 %xor107, 255
  %idxprom130 = zext i32 %and129 to i64
  %arrayidx131 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom130
  %29 = load i32, ptr %arrayidx131, align 4, !tbaa !10
  %add132 = add i32 %xor126, %29
  %arrayidx135 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 4
  %30 = load i32, ptr %arrayidx135, align 4, !tbaa !10
  %31 = xor i32 %30, %add132
  %xor136 = xor i32 %31, %xor78
  %shr139 = lshr i32 %xor136, 24
  %idxprom140 = zext i32 %shr139 to i64
  %arrayidx141 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom140
  %32 = load i32, ptr %arrayidx141, align 4, !tbaa !10
  %shr144 = lshr i32 %xor136, 16
  %and145 = and i32 %shr144, 255
  %idxprom146 = zext i32 %and145 to i64
  %arrayidx147 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom146
  %33 = load i32, ptr %arrayidx147, align 4, !tbaa !10
  %add148 = add i32 %33, %32
  %shr151 = lshr i32 %xor136, 8
  %and152 = and i32 %shr151, 255
  %idxprom153 = zext i32 %and152 to i64
  %arrayidx154 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom153
  %34 = load i32, ptr %arrayidx154, align 4, !tbaa !10
  %xor155 = xor i32 %add148, %34
  %and158 = and i32 %xor136, 255
  %idxprom159 = zext i32 %and158 to i64
  %arrayidx160 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom159
  %35 = load i32, ptr %arrayidx160, align 4, !tbaa !10
  %add161 = add i32 %xor155, %35
  %arrayidx164 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 5
  %36 = load i32, ptr %arrayidx164, align 4, !tbaa !10
  %37 = xor i32 %36, %add161
  %xor165 = xor i32 %37, %xor107
  %shr168 = lshr i32 %xor165, 24
  %idxprom169 = zext i32 %shr168 to i64
  %arrayidx170 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom169
  %38 = load i32, ptr %arrayidx170, align 4, !tbaa !10
  %shr173 = lshr i32 %xor165, 16
  %and174 = and i32 %shr173, 255
  %idxprom175 = zext i32 %and174 to i64
  %arrayidx176 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom175
  %39 = load i32, ptr %arrayidx176, align 4, !tbaa !10
  %add177 = add i32 %39, %38
  %shr180 = lshr i32 %xor165, 8
  %and181 = and i32 %shr180, 255
  %idxprom182 = zext i32 %and181 to i64
  %arrayidx183 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom182
  %40 = load i32, ptr %arrayidx183, align 4, !tbaa !10
  %xor184 = xor i32 %add177, %40
  %and187 = and i32 %xor165, 255
  %idxprom188 = zext i32 %and187 to i64
  %arrayidx189 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom188
  %41 = load i32, ptr %arrayidx189, align 4, !tbaa !10
  %add190 = add i32 %xor184, %41
  %arrayidx193 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 6
  %42 = load i32, ptr %arrayidx193, align 4, !tbaa !10
  %43 = xor i32 %42, %add190
  %xor194 = xor i32 %43, %xor136
  %shr197 = lshr i32 %xor194, 24
  %idxprom198 = zext i32 %shr197 to i64
  %arrayidx199 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom198
  %44 = load i32, ptr %arrayidx199, align 4, !tbaa !10
  %shr202 = lshr i32 %xor194, 16
  %and203 = and i32 %shr202, 255
  %idxprom204 = zext i32 %and203 to i64
  %arrayidx205 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom204
  %45 = load i32, ptr %arrayidx205, align 4, !tbaa !10
  %add206 = add i32 %45, %44
  %shr209 = lshr i32 %xor194, 8
  %and210 = and i32 %shr209, 255
  %idxprom211 = zext i32 %and210 to i64
  %arrayidx212 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom211
  %46 = load i32, ptr %arrayidx212, align 4, !tbaa !10
  %xor213 = xor i32 %add206, %46
  %and216 = and i32 %xor194, 255
  %idxprom217 = zext i32 %and216 to i64
  %arrayidx218 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom217
  %47 = load i32, ptr %arrayidx218, align 4, !tbaa !10
  %add219 = add i32 %xor213, %47
  %arrayidx222 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 7
  %48 = load i32, ptr %arrayidx222, align 4, !tbaa !10
  %49 = xor i32 %48, %add219
  %xor223 = xor i32 %49, %xor165
  %shr226 = lshr i32 %xor223, 24
  %idxprom227 = zext i32 %shr226 to i64
  %arrayidx228 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom227
  %50 = load i32, ptr %arrayidx228, align 4, !tbaa !10
  %shr231 = lshr i32 %xor223, 16
  %and232 = and i32 %shr231, 255
  %idxprom233 = zext i32 %and232 to i64
  %arrayidx234 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom233
  %51 = load i32, ptr %arrayidx234, align 4, !tbaa !10
  %add235 = add i32 %51, %50
  %shr238 = lshr i32 %xor223, 8
  %and239 = and i32 %shr238, 255
  %idxprom240 = zext i32 %and239 to i64
  %arrayidx241 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom240
  %52 = load i32, ptr %arrayidx241, align 4, !tbaa !10
  %xor242 = xor i32 %add235, %52
  %and245 = and i32 %xor223, 255
  %idxprom246 = zext i32 %and245 to i64
  %arrayidx247 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom246
  %53 = load i32, ptr %arrayidx247, align 4, !tbaa !10
  %add248 = add i32 %xor242, %53
  %arrayidx251 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 8
  %54 = load i32, ptr %arrayidx251, align 4, !tbaa !10
  %55 = xor i32 %54, %add248
  %xor252 = xor i32 %55, %xor194
  %shr255 = lshr i32 %xor252, 24
  %idxprom256 = zext i32 %shr255 to i64
  %arrayidx257 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom256
  %56 = load i32, ptr %arrayidx257, align 4, !tbaa !10
  %shr260 = lshr i32 %xor252, 16
  %and261 = and i32 %shr260, 255
  %idxprom262 = zext i32 %and261 to i64
  %arrayidx263 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom262
  %57 = load i32, ptr %arrayidx263, align 4, !tbaa !10
  %add264 = add i32 %57, %56
  %shr267 = lshr i32 %xor252, 8
  %and268 = and i32 %shr267, 255
  %idxprom269 = zext i32 %and268 to i64
  %arrayidx270 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom269
  %58 = load i32, ptr %arrayidx270, align 4, !tbaa !10
  %xor271 = xor i32 %add264, %58
  %and274 = and i32 %xor252, 255
  %idxprom275 = zext i32 %and274 to i64
  %arrayidx276 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom275
  %59 = load i32, ptr %arrayidx276, align 4, !tbaa !10
  %add277 = add i32 %xor271, %59
  %arrayidx280 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 9
  %60 = load i32, ptr %arrayidx280, align 4, !tbaa !10
  %61 = xor i32 %60, %add277
  %xor281 = xor i32 %61, %xor223
  %shr284 = lshr i32 %xor281, 24
  %idxprom285 = zext i32 %shr284 to i64
  %arrayidx286 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom285
  %62 = load i32, ptr %arrayidx286, align 4, !tbaa !10
  %shr289 = lshr i32 %xor281, 16
  %and290 = and i32 %shr289, 255
  %idxprom291 = zext i32 %and290 to i64
  %arrayidx292 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom291
  %63 = load i32, ptr %arrayidx292, align 4, !tbaa !10
  %add293 = add i32 %63, %62
  %shr296 = lshr i32 %xor281, 8
  %and297 = and i32 %shr296, 255
  %idxprom298 = zext i32 %and297 to i64
  %arrayidx299 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom298
  %64 = load i32, ptr %arrayidx299, align 4, !tbaa !10
  %xor300 = xor i32 %add293, %64
  %and303 = and i32 %xor281, 255
  %idxprom304 = zext i32 %and303 to i64
  %arrayidx305 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom304
  %65 = load i32, ptr %arrayidx305, align 4, !tbaa !10
  %add306 = add i32 %xor300, %65
  %arrayidx309 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 10
  %66 = load i32, ptr %arrayidx309, align 4, !tbaa !10
  %67 = xor i32 %66, %add306
  %xor310 = xor i32 %67, %xor252
  %shr313 = lshr i32 %xor310, 24
  %idxprom314 = zext i32 %shr313 to i64
  %arrayidx315 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom314
  %68 = load i32, ptr %arrayidx315, align 4, !tbaa !10
  %shr318 = lshr i32 %xor310, 16
  %and319 = and i32 %shr318, 255
  %idxprom320 = zext i32 %and319 to i64
  %arrayidx321 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom320
  %69 = load i32, ptr %arrayidx321, align 4, !tbaa !10
  %add322 = add i32 %69, %68
  %shr325 = lshr i32 %xor310, 8
  %and326 = and i32 %shr325, 255
  %idxprom327 = zext i32 %and326 to i64
  %arrayidx328 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom327
  %70 = load i32, ptr %arrayidx328, align 4, !tbaa !10
  %xor329 = xor i32 %add322, %70
  %and332 = and i32 %xor310, 255
  %idxprom333 = zext i32 %and332 to i64
  %arrayidx334 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom333
  %71 = load i32, ptr %arrayidx334, align 4, !tbaa !10
  %add335 = add i32 %xor329, %71
  %arrayidx338 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 11
  %72 = load i32, ptr %arrayidx338, align 4, !tbaa !10
  %73 = xor i32 %72, %add335
  %xor339 = xor i32 %73, %xor281
  %shr342 = lshr i32 %xor339, 24
  %idxprom343 = zext i32 %shr342 to i64
  %arrayidx344 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom343
  %74 = load i32, ptr %arrayidx344, align 4, !tbaa !10
  %shr347 = lshr i32 %xor339, 16
  %and348 = and i32 %shr347, 255
  %idxprom349 = zext i32 %and348 to i64
  %arrayidx350 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom349
  %75 = load i32, ptr %arrayidx350, align 4, !tbaa !10
  %add351 = add i32 %75, %74
  %shr354 = lshr i32 %xor339, 8
  %and355 = and i32 %shr354, 255
  %idxprom356 = zext i32 %and355 to i64
  %arrayidx357 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom356
  %76 = load i32, ptr %arrayidx357, align 4, !tbaa !10
  %xor358 = xor i32 %add351, %76
  %and361 = and i32 %xor339, 255
  %idxprom362 = zext i32 %and361 to i64
  %arrayidx363 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom362
  %77 = load i32, ptr %arrayidx363, align 4, !tbaa !10
  %add364 = add i32 %xor358, %77
  %arrayidx367 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 12
  %78 = load i32, ptr %arrayidx367, align 4, !tbaa !10
  %79 = xor i32 %78, %add364
  %xor368 = xor i32 %79, %xor310
  %shr371 = lshr i32 %xor368, 24
  %idxprom372 = zext i32 %shr371 to i64
  %arrayidx373 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom372
  %80 = load i32, ptr %arrayidx373, align 4, !tbaa !10
  %shr376 = lshr i32 %xor368, 16
  %and377 = and i32 %shr376, 255
  %idxprom378 = zext i32 %and377 to i64
  %arrayidx379 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom378
  %81 = load i32, ptr %arrayidx379, align 4, !tbaa !10
  %add380 = add i32 %81, %80
  %shr383 = lshr i32 %xor368, 8
  %and384 = and i32 %shr383, 255
  %idxprom385 = zext i32 %and384 to i64
  %arrayidx386 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom385
  %82 = load i32, ptr %arrayidx386, align 4, !tbaa !10
  %xor387 = xor i32 %add380, %82
  %and390 = and i32 %xor368, 255
  %idxprom391 = zext i32 %and390 to i64
  %arrayidx392 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom391
  %83 = load i32, ptr %arrayidx392, align 4, !tbaa !10
  %add393 = add i32 %xor387, %83
  %arrayidx396 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 13
  %84 = load i32, ptr %arrayidx396, align 4, !tbaa !10
  %85 = xor i32 %84, %add393
  %xor397 = xor i32 %85, %xor339
  %shr400 = lshr i32 %xor397, 24
  %idxprom401 = zext i32 %shr400 to i64
  %arrayidx402 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom401
  %86 = load i32, ptr %arrayidx402, align 4, !tbaa !10
  %shr405 = lshr i32 %xor397, 16
  %and406 = and i32 %shr405, 255
  %idxprom407 = zext i32 %and406 to i64
  %arrayidx408 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom407
  %87 = load i32, ptr %arrayidx408, align 4, !tbaa !10
  %add409 = add i32 %87, %86
  %shr412 = lshr i32 %xor397, 8
  %and413 = and i32 %shr412, 255
  %idxprom414 = zext i32 %and413 to i64
  %arrayidx415 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom414
  %88 = load i32, ptr %arrayidx415, align 4, !tbaa !10
  %xor416 = xor i32 %add409, %88
  %and419 = and i32 %xor397, 255
  %idxprom420 = zext i32 %and419 to i64
  %arrayidx421 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom420
  %89 = load i32, ptr %arrayidx421, align 4, !tbaa !10
  %add422 = add i32 %xor416, %89
  %arrayidx425 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 14
  %90 = load i32, ptr %arrayidx425, align 4, !tbaa !10
  %91 = xor i32 %90, %add422
  %xor426 = xor i32 %91, %xor368
  %shr429 = lshr i32 %xor426, 24
  %idxprom430 = zext i32 %shr429 to i64
  %arrayidx431 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom430
  %92 = load i32, ptr %arrayidx431, align 4, !tbaa !10
  %shr434 = lshr i32 %xor426, 16
  %and435 = and i32 %shr434, 255
  %idxprom436 = zext i32 %and435 to i64
  %arrayidx437 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom436
  %93 = load i32, ptr %arrayidx437, align 4, !tbaa !10
  %add438 = add i32 %93, %92
  %shr441 = lshr i32 %xor426, 8
  %and442 = and i32 %shr441, 255
  %idxprom443 = zext i32 %and442 to i64
  %arrayidx444 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom443
  %94 = load i32, ptr %arrayidx444, align 4, !tbaa !10
  %xor445 = xor i32 %add438, %94
  %and448 = and i32 %xor426, 255
  %idxprom449 = zext i32 %and448 to i64
  %arrayidx450 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom449
  %95 = load i32, ptr %arrayidx450, align 4, !tbaa !10
  %add451 = add i32 %xor445, %95
  %arrayidx454 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 15
  %96 = load i32, ptr %arrayidx454, align 4, !tbaa !10
  %97 = xor i32 %96, %add451
  %xor455 = xor i32 %97, %xor397
  %shr458 = lshr i32 %xor455, 24
  %idxprom459 = zext i32 %shr458 to i64
  %arrayidx460 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom459
  %98 = load i32, ptr %arrayidx460, align 4, !tbaa !10
  %shr463 = lshr i32 %xor455, 16
  %and464 = and i32 %shr463, 255
  %idxprom465 = zext i32 %and464 to i64
  %arrayidx466 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom465
  %99 = load i32, ptr %arrayidx466, align 4, !tbaa !10
  %add467 = add i32 %99, %98
  %shr470 = lshr i32 %xor455, 8
  %and471 = and i32 %shr470, 255
  %idxprom472 = zext i32 %and471 to i64
  %arrayidx473 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom472
  %100 = load i32, ptr %arrayidx473, align 4, !tbaa !10
  %xor474 = xor i32 %add467, %100
  %and477 = and i32 %xor455, 255
  %idxprom478 = zext i32 %and477 to i64
  %arrayidx479 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom478
  %101 = load i32, ptr %arrayidx479, align 4, !tbaa !10
  %add480 = add i32 %xor474, %101
  %arrayidx483 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 16
  %102 = load i32, ptr %arrayidx483, align 4, !tbaa !10
  %103 = xor i32 %102, %add480
  %xor484 = xor i32 %103, %xor426
  %arrayidx486 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 17
  %104 = load i32, ptr %arrayidx486, align 4, !tbaa !10
  %xor487 = xor i32 %104, %xor455
  %shr488 = lshr i32 %xor487, 24
  %conv489 = trunc i32 %shr488 to i8
  store i8 %conv489, ptr %out, align 1, !tbaa !7
  %shr491 = lshr i32 %xor487, 16
  %conv492 = trunc i32 %shr491 to i8
  %arrayidx493 = getelementptr inbounds i8, ptr %out, i64 1
  store i8 %conv492, ptr %arrayidx493, align 1, !tbaa !7
  %shr494 = lshr i32 %xor487, 8
  %conv495 = trunc i32 %shr494 to i8
  %arrayidx496 = getelementptr inbounds i8, ptr %out, i64 2
  store i8 %conv495, ptr %arrayidx496, align 1, !tbaa !7
  %conv497 = trunc i32 %xor487 to i8
  %arrayidx498 = getelementptr inbounds i8, ptr %out, i64 3
  store i8 %conv497, ptr %arrayidx498, align 1, !tbaa !7
  %shr499 = lshr i32 %xor484, 24
  %conv500 = trunc i32 %shr499 to i8
  %arrayidx501 = getelementptr inbounds i8, ptr %out, i64 4
  store i8 %conv500, ptr %arrayidx501, align 1, !tbaa !7
  %shr502 = lshr i32 %xor484, 16
  %conv503 = trunc i32 %shr502 to i8
  %arrayidx504 = getelementptr inbounds i8, ptr %out, i64 5
  store i8 %conv503, ptr %arrayidx504, align 1, !tbaa !7
  %shr505 = lshr i32 %xor484, 8
  %conv506 = trunc i32 %shr505 to i8
  %arrayidx507 = getelementptr inbounds i8, ptr %out, i64 6
  store i8 %conv506, ptr %arrayidx507, align 1, !tbaa !7
  %conv508 = trunc i32 %xor484 to i8
  %arrayidx509 = getelementptr inbounds i8, ptr %out, i64 7
  store i8 %conv508, ptr %arrayidx509, align 1, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @blowfish_decrypt(ptr nocapture noundef readonly %in, ptr nocapture noundef writeonly %out, ptr noundef readonly %keystruct) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %in, align 1, !tbaa !7
  %conv = zext i8 %0 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx1 = getelementptr inbounds i8, ptr %in, i64 1
  %1 = load i8, ptr %arrayidx1, align 1, !tbaa !7
  %conv2 = zext i8 %1 to i32
  %shl3 = shl nuw nsw i32 %conv2, 16
  %or = or i32 %shl3, %shl
  %arrayidx4 = getelementptr inbounds i8, ptr %in, i64 2
  %2 = load i8, ptr %arrayidx4, align 1, !tbaa !7
  %conv5 = zext i8 %2 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %arrayidx8 = getelementptr inbounds i8, ptr %in, i64 3
  %3 = load i8, ptr %arrayidx8, align 1, !tbaa !7
  %conv9 = zext i8 %3 to i32
  %or10 = or i32 %or7, %conv9
  %arrayidx11 = getelementptr inbounds i8, ptr %in, i64 4
  %4 = load i8, ptr %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %4 to i32
  %shl13 = shl nuw i32 %conv12, 24
  %arrayidx14 = getelementptr inbounds i8, ptr %in, i64 5
  %5 = load i8, ptr %arrayidx14, align 1, !tbaa !7
  %conv15 = zext i8 %5 to i32
  %shl16 = shl nuw nsw i32 %conv15, 16
  %or17 = or i32 %shl16, %shl13
  %arrayidx18 = getelementptr inbounds i8, ptr %in, i64 6
  %6 = load i8, ptr %arrayidx18, align 1, !tbaa !7
  %conv19 = zext i8 %6 to i32
  %shl20 = shl nuw nsw i32 %conv19, 8
  %or21 = or i32 %or17, %shl20
  %arrayidx22 = getelementptr inbounds i8, ptr %in, i64 7
  %7 = load i8, ptr %arrayidx22, align 1, !tbaa !7
  %conv23 = zext i8 %7 to i32
  %or24 = or i32 %or21, %conv23
  %arrayidx25 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 17
  %8 = load i32, ptr %arrayidx25, align 4, !tbaa !10
  %xor = xor i32 %8, %or10
  %s = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1
  %shr = lshr i32 %xor, 24
  %idxprom = zext i32 %shr to i64
  %arrayidx27 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom
  %9 = load i32, ptr %arrayidx27, align 4, !tbaa !10
  %shr30 = lshr i32 %xor, 16
  %and = and i32 %shr30, 255
  %idxprom31 = zext i32 %and to i64
  %arrayidx32 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom31
  %10 = load i32, ptr %arrayidx32, align 4, !tbaa !10
  %add = add i32 %10, %9
  %shr35 = lshr i32 %xor, 8
  %and36 = and i32 %shr35, 255
  %idxprom37 = zext i32 %and36 to i64
  %arrayidx38 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom37
  %11 = load i32, ptr %arrayidx38, align 4, !tbaa !10
  %xor39 = xor i32 %add, %11
  %and42 = and i32 %xor, 255
  %idxprom43 = zext i32 %and42 to i64
  %arrayidx44 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom43
  %12 = load i32, ptr %arrayidx44, align 4, !tbaa !10
  %add45 = add i32 %xor39, %12
  %xor46 = xor i32 %add45, %or24
  %arrayidx48 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 16
  %13 = load i32, ptr %arrayidx48, align 4, !tbaa !10
  %xor49 = xor i32 %xor46, %13
  %shr52 = lshr i32 %xor49, 24
  %idxprom53 = zext i32 %shr52 to i64
  %arrayidx54 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom53
  %14 = load i32, ptr %arrayidx54, align 4, !tbaa !10
  %shr57 = lshr i32 %xor49, 16
  %and58 = and i32 %shr57, 255
  %idxprom59 = zext i32 %and58 to i64
  %arrayidx60 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom59
  %15 = load i32, ptr %arrayidx60, align 4, !tbaa !10
  %add61 = add i32 %15, %14
  %shr64 = lshr i32 %xor49, 8
  %and65 = and i32 %shr64, 255
  %idxprom66 = zext i32 %and65 to i64
  %arrayidx67 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom66
  %16 = load i32, ptr %arrayidx67, align 4, !tbaa !10
  %xor68 = xor i32 %add61, %16
  %and71 = and i32 %xor49, 255
  %idxprom72 = zext i32 %and71 to i64
  %arrayidx73 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom72
  %17 = load i32, ptr %arrayidx73, align 4, !tbaa !10
  %add74 = add i32 %xor68, %17
  %arrayidx77 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 15
  %18 = load i32, ptr %arrayidx77, align 4, !tbaa !10
  %19 = xor i32 %18, %add74
  %xor78 = xor i32 %19, %xor
  %shr81 = lshr i32 %xor78, 24
  %idxprom82 = zext i32 %shr81 to i64
  %arrayidx83 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom82
  %20 = load i32, ptr %arrayidx83, align 4, !tbaa !10
  %shr86 = lshr i32 %xor78, 16
  %and87 = and i32 %shr86, 255
  %idxprom88 = zext i32 %and87 to i64
  %arrayidx89 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom88
  %21 = load i32, ptr %arrayidx89, align 4, !tbaa !10
  %add90 = add i32 %21, %20
  %shr93 = lshr i32 %xor78, 8
  %and94 = and i32 %shr93, 255
  %idxprom95 = zext i32 %and94 to i64
  %arrayidx96 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom95
  %22 = load i32, ptr %arrayidx96, align 4, !tbaa !10
  %xor97 = xor i32 %add90, %22
  %and100 = and i32 %xor78, 255
  %idxprom101 = zext i32 %and100 to i64
  %arrayidx102 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom101
  %23 = load i32, ptr %arrayidx102, align 4, !tbaa !10
  %add103 = add i32 %xor97, %23
  %arrayidx106 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 14
  %24 = load i32, ptr %arrayidx106, align 4, !tbaa !10
  %25 = xor i32 %24, %add103
  %xor107 = xor i32 %25, %xor49
  %shr110 = lshr i32 %xor107, 24
  %idxprom111 = zext i32 %shr110 to i64
  %arrayidx112 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom111
  %26 = load i32, ptr %arrayidx112, align 4, !tbaa !10
  %shr115 = lshr i32 %xor107, 16
  %and116 = and i32 %shr115, 255
  %idxprom117 = zext i32 %and116 to i64
  %arrayidx118 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom117
  %27 = load i32, ptr %arrayidx118, align 4, !tbaa !10
  %add119 = add i32 %27, %26
  %shr122 = lshr i32 %xor107, 8
  %and123 = and i32 %shr122, 255
  %idxprom124 = zext i32 %and123 to i64
  %arrayidx125 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom124
  %28 = load i32, ptr %arrayidx125, align 4, !tbaa !10
  %xor126 = xor i32 %add119, %28
  %and129 = and i32 %xor107, 255
  %idxprom130 = zext i32 %and129 to i64
  %arrayidx131 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom130
  %29 = load i32, ptr %arrayidx131, align 4, !tbaa !10
  %add132 = add i32 %xor126, %29
  %arrayidx135 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 13
  %30 = load i32, ptr %arrayidx135, align 4, !tbaa !10
  %31 = xor i32 %30, %add132
  %xor136 = xor i32 %31, %xor78
  %shr139 = lshr i32 %xor136, 24
  %idxprom140 = zext i32 %shr139 to i64
  %arrayidx141 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom140
  %32 = load i32, ptr %arrayidx141, align 4, !tbaa !10
  %shr144 = lshr i32 %xor136, 16
  %and145 = and i32 %shr144, 255
  %idxprom146 = zext i32 %and145 to i64
  %arrayidx147 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom146
  %33 = load i32, ptr %arrayidx147, align 4, !tbaa !10
  %add148 = add i32 %33, %32
  %shr151 = lshr i32 %xor136, 8
  %and152 = and i32 %shr151, 255
  %idxprom153 = zext i32 %and152 to i64
  %arrayidx154 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom153
  %34 = load i32, ptr %arrayidx154, align 4, !tbaa !10
  %xor155 = xor i32 %add148, %34
  %and158 = and i32 %xor136, 255
  %idxprom159 = zext i32 %and158 to i64
  %arrayidx160 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom159
  %35 = load i32, ptr %arrayidx160, align 4, !tbaa !10
  %add161 = add i32 %xor155, %35
  %arrayidx164 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 12
  %36 = load i32, ptr %arrayidx164, align 4, !tbaa !10
  %37 = xor i32 %36, %add161
  %xor165 = xor i32 %37, %xor107
  %shr168 = lshr i32 %xor165, 24
  %idxprom169 = zext i32 %shr168 to i64
  %arrayidx170 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom169
  %38 = load i32, ptr %arrayidx170, align 4, !tbaa !10
  %shr173 = lshr i32 %xor165, 16
  %and174 = and i32 %shr173, 255
  %idxprom175 = zext i32 %and174 to i64
  %arrayidx176 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom175
  %39 = load i32, ptr %arrayidx176, align 4, !tbaa !10
  %add177 = add i32 %39, %38
  %shr180 = lshr i32 %xor165, 8
  %and181 = and i32 %shr180, 255
  %idxprom182 = zext i32 %and181 to i64
  %arrayidx183 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom182
  %40 = load i32, ptr %arrayidx183, align 4, !tbaa !10
  %xor184 = xor i32 %add177, %40
  %and187 = and i32 %xor165, 255
  %idxprom188 = zext i32 %and187 to i64
  %arrayidx189 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom188
  %41 = load i32, ptr %arrayidx189, align 4, !tbaa !10
  %add190 = add i32 %xor184, %41
  %arrayidx193 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 11
  %42 = load i32, ptr %arrayidx193, align 4, !tbaa !10
  %43 = xor i32 %42, %add190
  %xor194 = xor i32 %43, %xor136
  %shr197 = lshr i32 %xor194, 24
  %idxprom198 = zext i32 %shr197 to i64
  %arrayidx199 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom198
  %44 = load i32, ptr %arrayidx199, align 4, !tbaa !10
  %shr202 = lshr i32 %xor194, 16
  %and203 = and i32 %shr202, 255
  %idxprom204 = zext i32 %and203 to i64
  %arrayidx205 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom204
  %45 = load i32, ptr %arrayidx205, align 4, !tbaa !10
  %add206 = add i32 %45, %44
  %shr209 = lshr i32 %xor194, 8
  %and210 = and i32 %shr209, 255
  %idxprom211 = zext i32 %and210 to i64
  %arrayidx212 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom211
  %46 = load i32, ptr %arrayidx212, align 4, !tbaa !10
  %xor213 = xor i32 %add206, %46
  %and216 = and i32 %xor194, 255
  %idxprom217 = zext i32 %and216 to i64
  %arrayidx218 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom217
  %47 = load i32, ptr %arrayidx218, align 4, !tbaa !10
  %add219 = add i32 %xor213, %47
  %arrayidx222 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 10
  %48 = load i32, ptr %arrayidx222, align 4, !tbaa !10
  %49 = xor i32 %48, %add219
  %xor223 = xor i32 %49, %xor165
  %shr226 = lshr i32 %xor223, 24
  %idxprom227 = zext i32 %shr226 to i64
  %arrayidx228 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom227
  %50 = load i32, ptr %arrayidx228, align 4, !tbaa !10
  %shr231 = lshr i32 %xor223, 16
  %and232 = and i32 %shr231, 255
  %idxprom233 = zext i32 %and232 to i64
  %arrayidx234 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom233
  %51 = load i32, ptr %arrayidx234, align 4, !tbaa !10
  %add235 = add i32 %51, %50
  %shr238 = lshr i32 %xor223, 8
  %and239 = and i32 %shr238, 255
  %idxprom240 = zext i32 %and239 to i64
  %arrayidx241 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom240
  %52 = load i32, ptr %arrayidx241, align 4, !tbaa !10
  %xor242 = xor i32 %add235, %52
  %and245 = and i32 %xor223, 255
  %idxprom246 = zext i32 %and245 to i64
  %arrayidx247 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom246
  %53 = load i32, ptr %arrayidx247, align 4, !tbaa !10
  %add248 = add i32 %xor242, %53
  %arrayidx251 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 9
  %54 = load i32, ptr %arrayidx251, align 4, !tbaa !10
  %55 = xor i32 %54, %add248
  %xor252 = xor i32 %55, %xor194
  %shr255 = lshr i32 %xor252, 24
  %idxprom256 = zext i32 %shr255 to i64
  %arrayidx257 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom256
  %56 = load i32, ptr %arrayidx257, align 4, !tbaa !10
  %shr260 = lshr i32 %xor252, 16
  %and261 = and i32 %shr260, 255
  %idxprom262 = zext i32 %and261 to i64
  %arrayidx263 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom262
  %57 = load i32, ptr %arrayidx263, align 4, !tbaa !10
  %add264 = add i32 %57, %56
  %shr267 = lshr i32 %xor252, 8
  %and268 = and i32 %shr267, 255
  %idxprom269 = zext i32 %and268 to i64
  %arrayidx270 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom269
  %58 = load i32, ptr %arrayidx270, align 4, !tbaa !10
  %xor271 = xor i32 %add264, %58
  %and274 = and i32 %xor252, 255
  %idxprom275 = zext i32 %and274 to i64
  %arrayidx276 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom275
  %59 = load i32, ptr %arrayidx276, align 4, !tbaa !10
  %add277 = add i32 %xor271, %59
  %arrayidx280 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 8
  %60 = load i32, ptr %arrayidx280, align 4, !tbaa !10
  %61 = xor i32 %60, %add277
  %xor281 = xor i32 %61, %xor223
  %shr284 = lshr i32 %xor281, 24
  %idxprom285 = zext i32 %shr284 to i64
  %arrayidx286 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom285
  %62 = load i32, ptr %arrayidx286, align 4, !tbaa !10
  %shr289 = lshr i32 %xor281, 16
  %and290 = and i32 %shr289, 255
  %idxprom291 = zext i32 %and290 to i64
  %arrayidx292 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom291
  %63 = load i32, ptr %arrayidx292, align 4, !tbaa !10
  %add293 = add i32 %63, %62
  %shr296 = lshr i32 %xor281, 8
  %and297 = and i32 %shr296, 255
  %idxprom298 = zext i32 %and297 to i64
  %arrayidx299 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom298
  %64 = load i32, ptr %arrayidx299, align 4, !tbaa !10
  %xor300 = xor i32 %add293, %64
  %and303 = and i32 %xor281, 255
  %idxprom304 = zext i32 %and303 to i64
  %arrayidx305 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom304
  %65 = load i32, ptr %arrayidx305, align 4, !tbaa !10
  %add306 = add i32 %xor300, %65
  %arrayidx309 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 7
  %66 = load i32, ptr %arrayidx309, align 4, !tbaa !10
  %67 = xor i32 %66, %add306
  %xor310 = xor i32 %67, %xor252
  %shr313 = lshr i32 %xor310, 24
  %idxprom314 = zext i32 %shr313 to i64
  %arrayidx315 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom314
  %68 = load i32, ptr %arrayidx315, align 4, !tbaa !10
  %shr318 = lshr i32 %xor310, 16
  %and319 = and i32 %shr318, 255
  %idxprom320 = zext i32 %and319 to i64
  %arrayidx321 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom320
  %69 = load i32, ptr %arrayidx321, align 4, !tbaa !10
  %add322 = add i32 %69, %68
  %shr325 = lshr i32 %xor310, 8
  %and326 = and i32 %shr325, 255
  %idxprom327 = zext i32 %and326 to i64
  %arrayidx328 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom327
  %70 = load i32, ptr %arrayidx328, align 4, !tbaa !10
  %xor329 = xor i32 %add322, %70
  %and332 = and i32 %xor310, 255
  %idxprom333 = zext i32 %and332 to i64
  %arrayidx334 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom333
  %71 = load i32, ptr %arrayidx334, align 4, !tbaa !10
  %add335 = add i32 %xor329, %71
  %arrayidx338 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 6
  %72 = load i32, ptr %arrayidx338, align 4, !tbaa !10
  %73 = xor i32 %72, %add335
  %xor339 = xor i32 %73, %xor281
  %shr342 = lshr i32 %xor339, 24
  %idxprom343 = zext i32 %shr342 to i64
  %arrayidx344 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom343
  %74 = load i32, ptr %arrayidx344, align 4, !tbaa !10
  %shr347 = lshr i32 %xor339, 16
  %and348 = and i32 %shr347, 255
  %idxprom349 = zext i32 %and348 to i64
  %arrayidx350 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom349
  %75 = load i32, ptr %arrayidx350, align 4, !tbaa !10
  %add351 = add i32 %75, %74
  %shr354 = lshr i32 %xor339, 8
  %and355 = and i32 %shr354, 255
  %idxprom356 = zext i32 %and355 to i64
  %arrayidx357 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom356
  %76 = load i32, ptr %arrayidx357, align 4, !tbaa !10
  %xor358 = xor i32 %add351, %76
  %and361 = and i32 %xor339, 255
  %idxprom362 = zext i32 %and361 to i64
  %arrayidx363 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom362
  %77 = load i32, ptr %arrayidx363, align 4, !tbaa !10
  %add364 = add i32 %xor358, %77
  %arrayidx367 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 5
  %78 = load i32, ptr %arrayidx367, align 4, !tbaa !10
  %79 = xor i32 %78, %add364
  %xor368 = xor i32 %79, %xor310
  %shr371 = lshr i32 %xor368, 24
  %idxprom372 = zext i32 %shr371 to i64
  %arrayidx373 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom372
  %80 = load i32, ptr %arrayidx373, align 4, !tbaa !10
  %shr376 = lshr i32 %xor368, 16
  %and377 = and i32 %shr376, 255
  %idxprom378 = zext i32 %and377 to i64
  %arrayidx379 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom378
  %81 = load i32, ptr %arrayidx379, align 4, !tbaa !10
  %add380 = add i32 %81, %80
  %shr383 = lshr i32 %xor368, 8
  %and384 = and i32 %shr383, 255
  %idxprom385 = zext i32 %and384 to i64
  %arrayidx386 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom385
  %82 = load i32, ptr %arrayidx386, align 4, !tbaa !10
  %xor387 = xor i32 %add380, %82
  %and390 = and i32 %xor368, 255
  %idxprom391 = zext i32 %and390 to i64
  %arrayidx392 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom391
  %83 = load i32, ptr %arrayidx392, align 4, !tbaa !10
  %add393 = add i32 %xor387, %83
  %arrayidx396 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 4
  %84 = load i32, ptr %arrayidx396, align 4, !tbaa !10
  %85 = xor i32 %84, %add393
  %xor397 = xor i32 %85, %xor339
  %shr400 = lshr i32 %xor397, 24
  %idxprom401 = zext i32 %shr400 to i64
  %arrayidx402 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom401
  %86 = load i32, ptr %arrayidx402, align 4, !tbaa !10
  %shr405 = lshr i32 %xor397, 16
  %and406 = and i32 %shr405, 255
  %idxprom407 = zext i32 %and406 to i64
  %arrayidx408 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom407
  %87 = load i32, ptr %arrayidx408, align 4, !tbaa !10
  %add409 = add i32 %87, %86
  %shr412 = lshr i32 %xor397, 8
  %and413 = and i32 %shr412, 255
  %idxprom414 = zext i32 %and413 to i64
  %arrayidx415 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom414
  %88 = load i32, ptr %arrayidx415, align 4, !tbaa !10
  %xor416 = xor i32 %add409, %88
  %and419 = and i32 %xor397, 255
  %idxprom420 = zext i32 %and419 to i64
  %arrayidx421 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom420
  %89 = load i32, ptr %arrayidx421, align 4, !tbaa !10
  %add422 = add i32 %xor416, %89
  %arrayidx425 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 3
  %90 = load i32, ptr %arrayidx425, align 4, !tbaa !10
  %91 = xor i32 %90, %add422
  %xor426 = xor i32 %91, %xor368
  %shr429 = lshr i32 %xor426, 24
  %idxprom430 = zext i32 %shr429 to i64
  %arrayidx431 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom430
  %92 = load i32, ptr %arrayidx431, align 4, !tbaa !10
  %shr434 = lshr i32 %xor426, 16
  %and435 = and i32 %shr434, 255
  %idxprom436 = zext i32 %and435 to i64
  %arrayidx437 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom436
  %93 = load i32, ptr %arrayidx437, align 4, !tbaa !10
  %add438 = add i32 %93, %92
  %shr441 = lshr i32 %xor426, 8
  %and442 = and i32 %shr441, 255
  %idxprom443 = zext i32 %and442 to i64
  %arrayidx444 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom443
  %94 = load i32, ptr %arrayidx444, align 4, !tbaa !10
  %xor445 = xor i32 %add438, %94
  %and448 = and i32 %xor426, 255
  %idxprom449 = zext i32 %and448 to i64
  %arrayidx450 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom449
  %95 = load i32, ptr %arrayidx450, align 4, !tbaa !10
  %add451 = add i32 %xor445, %95
  %arrayidx454 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 2
  %96 = load i32, ptr %arrayidx454, align 4, !tbaa !10
  %97 = xor i32 %96, %add451
  %xor455 = xor i32 %97, %xor397
  %shr458 = lshr i32 %xor455, 24
  %idxprom459 = zext i32 %shr458 to i64
  %arrayidx460 = getelementptr inbounds [256 x i32], ptr %s, i64 0, i64 %idxprom459
  %98 = load i32, ptr %arrayidx460, align 4, !tbaa !10
  %shr463 = lshr i32 %xor455, 16
  %and464 = and i32 %shr463, 255
  %idxprom465 = zext i32 %and464 to i64
  %arrayidx466 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %idxprom465
  %99 = load i32, ptr %arrayidx466, align 4, !tbaa !10
  %add467 = add i32 %99, %98
  %shr470 = lshr i32 %xor455, 8
  %and471 = and i32 %shr470, 255
  %idxprom472 = zext i32 %and471 to i64
  %arrayidx473 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %idxprom472
  %100 = load i32, ptr %arrayidx473, align 4, !tbaa !10
  %xor474 = xor i32 %add467, %100
  %and477 = and i32 %xor455, 255
  %idxprom478 = zext i32 %and477 to i64
  %arrayidx479 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %idxprom478
  %101 = load i32, ptr %arrayidx479, align 4, !tbaa !10
  %add480 = add i32 %xor474, %101
  %arrayidx483 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 1
  %102 = load i32, ptr %arrayidx483, align 4, !tbaa !10
  %103 = xor i32 %102, %add480
  %xor484 = xor i32 %103, %xor426
  %104 = load i32, ptr %keystruct, align 4, !tbaa !10
  %xor487 = xor i32 %104, %xor455
  %shr488 = lshr i32 %xor487, 24
  %conv489 = trunc i32 %shr488 to i8
  store i8 %conv489, ptr %out, align 1, !tbaa !7
  %shr491 = lshr i32 %xor487, 16
  %conv492 = trunc i32 %shr491 to i8
  %arrayidx493 = getelementptr inbounds i8, ptr %out, i64 1
  store i8 %conv492, ptr %arrayidx493, align 1, !tbaa !7
  %shr494 = lshr i32 %xor487, 8
  %conv495 = trunc i32 %shr494 to i8
  %arrayidx496 = getelementptr inbounds i8, ptr %out, i64 2
  store i8 %conv495, ptr %arrayidx496, align 1, !tbaa !7
  %conv497 = trunc i32 %xor487 to i8
  %arrayidx498 = getelementptr inbounds i8, ptr %out, i64 3
  store i8 %conv497, ptr %arrayidx498, align 1, !tbaa !7
  %shr499 = lshr i32 %xor484, 24
  %conv500 = trunc i32 %shr499 to i8
  %arrayidx501 = getelementptr inbounds i8, ptr %out, i64 4
  store i8 %conv500, ptr %arrayidx501, align 1, !tbaa !7
  %shr502 = lshr i32 %xor484, 16
  %conv503 = trunc i32 %shr502 to i8
  %arrayidx504 = getelementptr inbounds i8, ptr %out, i64 5
  store i8 %conv503, ptr %arrayidx504, align 1, !tbaa !7
  %shr505 = lshr i32 %xor484, 8
  %conv506 = trunc i32 %shr505 to i8
  %arrayidx507 = getelementptr inbounds i8, ptr %out, i64 6
  store i8 %conv506, ptr %arrayidx507, align 1, !tbaa !7
  %conv508 = trunc i32 %xor484 to i8
  %arrayidx509 = getelementptr inbounds i8, ptr %out, i64 7
  store i8 %conv508, ptr %arrayidx509, align 1, !tbaa !7
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @blowfish_key_setup(ptr nocapture noundef readonly %user_key, ptr noundef %keystruct, i64 noundef %len) local_unnamed_addr #2 {
entry:
  %block = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %block) #8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %keystruct, ptr noundef nonnull align 16 dereferenceable(72) @p_perm, i64 72, i1 false)
  %s = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %s, ptr noundef nonnull align 16 dereferenceable(4096) @s_perm, i64 4096, i1 false)
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv164 = phi i64 [ 0, %entry ], [ %indvars.iv.next165, %for.body ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %rem = urem i64 %indvars.iv, %len
  %arrayidx = getelementptr inbounds i8, ptr %user_key, i64 %rem
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !7
  %conv2 = zext i8 %0 to i32
  %shl = shl nuw i32 %conv2, 24
  %1 = or i64 %indvars.iv, 1
  %rem4 = urem i64 %1, %len
  %arrayidx5 = getelementptr inbounds i8, ptr %user_key, i64 %rem4
  %2 = load i8, ptr %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %2 to i32
  %shl7 = shl nuw nsw i32 %conv6, 16
  %or = or i32 %shl7, %shl
  %3 = or i64 %indvars.iv, 2
  %rem10 = urem i64 %3, %len
  %arrayidx11 = getelementptr inbounds i8, ptr %user_key, i64 %rem10
  %4 = load i8, ptr %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %4 to i32
  %shl13 = shl nuw nsw i32 %conv12, 8
  %or14 = or i32 %or, %shl13
  %5 = or i64 %indvars.iv, 3
  %rem17 = urem i64 %5, %len
  %arrayidx18 = getelementptr inbounds i8, ptr %user_key, i64 %rem17
  %6 = load i8, ptr %arrayidx18, align 1, !tbaa !7
  %conv19 = zext i8 %6 to i32
  %or20 = or i32 %or14, %conv19
  %arrayidx22 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 %indvars.iv164
  %7 = load i32, ptr %arrayidx22, align 4, !tbaa !10
  %xor = xor i32 %or20, %7
  store i32 %xor, ptr %arrayidx22, align 4, !tbaa !10
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not = icmp eq i64 %indvars.iv.next165, 18
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !12

for.end:                                          ; preds = %for.body
  store i64 0, ptr %block, align 8
  %arrayidx34 = getelementptr inbounds [8 x i8], ptr %block, i64 0, i64 1
  %arrayidx38 = getelementptr inbounds [8 x i8], ptr %block, i64 0, i64 2
  %arrayidx42 = getelementptr inbounds [8 x i8], ptr %block, i64 0, i64 3
  %arrayidx48 = getelementptr inbounds [8 x i8], ptr %block, i64 0, i64 4
  %arrayidx51 = getelementptr inbounds [8 x i8], ptr %block, i64 0, i64 5
  %arrayidx55 = getelementptr inbounds [8 x i8], ptr %block, i64 0, i64 6
  %arrayidx59 = getelementptr inbounds [8 x i8], ptr %block, i64 0, i64 7
  call void @blowfish_encrypt(ptr noundef nonnull %block, ptr noundef nonnull %block, ptr noundef nonnull %keystruct)
  %8 = load i8, ptr %block, align 8, !tbaa !7
  %conv32 = zext i8 %8 to i32
  %shl33 = shl nuw i32 %conv32, 24
  %9 = load i8, ptr %arrayidx34, align 1, !tbaa !7
  %conv35 = zext i8 %9 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %or37 = or i32 %shl36, %shl33
  %10 = load i8, ptr %arrayidx38, align 2, !tbaa !7
  %conv39 = zext i8 %10 to i32
  %shl40 = shl nuw nsw i32 %conv39, 8
  %or41 = or i32 %or37, %shl40
  %11 = load i8, ptr %arrayidx42, align 1, !tbaa !7
  %conv43 = zext i8 %11 to i32
  %or44 = or i32 %or41, %conv43
  store i32 %or44, ptr %keystruct, align 4, !tbaa !10
  %12 = load i8, ptr %arrayidx48, align 4, !tbaa !7
  %conv49 = zext i8 %12 to i32
  %shl50 = shl nuw i32 %conv49, 24
  %13 = load i8, ptr %arrayidx51, align 1, !tbaa !7
  %conv52 = zext i8 %13 to i32
  %shl53 = shl nuw nsw i32 %conv52, 16
  %or54 = or i32 %shl53, %shl50
  %14 = load i8, ptr %arrayidx55, align 2, !tbaa !7
  %conv56 = zext i8 %14 to i32
  %shl57 = shl nuw nsw i32 %conv56, 8
  %or58 = or i32 %or54, %shl57
  %15 = load i8, ptr %arrayidx59, align 1, !tbaa !7
  %conv60 = zext i8 %15 to i32
  %or61 = or i32 %or58, %conv60
  %arrayidx65 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 1
  store i32 %or61, ptr %arrayidx65, align 4, !tbaa !10
  call void @blowfish_encrypt(ptr noundef nonnull %block, ptr noundef nonnull %block, ptr noundef nonnull %keystruct)
  %16 = load i8, ptr %block, align 8, !tbaa !7
  %conv32.1 = zext i8 %16 to i32
  %shl33.1 = shl nuw i32 %conv32.1, 24
  %17 = load i8, ptr %arrayidx34, align 1, !tbaa !7
  %conv35.1 = zext i8 %17 to i32
  %shl36.1 = shl nuw nsw i32 %conv35.1, 16
  %or37.1 = or i32 %shl36.1, %shl33.1
  %18 = load i8, ptr %arrayidx38, align 2, !tbaa !7
  %conv39.1 = zext i8 %18 to i32
  %shl40.1 = shl nuw nsw i32 %conv39.1, 8
  %or41.1 = or i32 %or37.1, %shl40.1
  %19 = load i8, ptr %arrayidx42, align 1, !tbaa !7
  %conv43.1 = zext i8 %19 to i32
  %or44.1 = or i32 %or41.1, %conv43.1
  %arrayidx47.1 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 2
  store i32 %or44.1, ptr %arrayidx47.1, align 4, !tbaa !10
  %20 = load i8, ptr %arrayidx48, align 4, !tbaa !7
  %conv49.1 = zext i8 %20 to i32
  %shl50.1 = shl nuw i32 %conv49.1, 24
  %21 = load i8, ptr %arrayidx51, align 1, !tbaa !7
  %conv52.1 = zext i8 %21 to i32
  %shl53.1 = shl nuw nsw i32 %conv52.1, 16
  %or54.1 = or i32 %shl53.1, %shl50.1
  %22 = load i8, ptr %arrayidx55, align 2, !tbaa !7
  %conv56.1 = zext i8 %22 to i32
  %shl57.1 = shl nuw nsw i32 %conv56.1, 8
  %or58.1 = or i32 %or54.1, %shl57.1
  %23 = load i8, ptr %arrayidx59, align 1, !tbaa !7
  %conv60.1 = zext i8 %23 to i32
  %or61.1 = or i32 %or58.1, %conv60.1
  %arrayidx65.1 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 3
  store i32 %or61.1, ptr %arrayidx65.1, align 4, !tbaa !10
  call void @blowfish_encrypt(ptr noundef nonnull %block, ptr noundef nonnull %block, ptr noundef nonnull %keystruct)
  %24 = load i8, ptr %block, align 8, !tbaa !7
  %conv32.2 = zext i8 %24 to i32
  %shl33.2 = shl nuw i32 %conv32.2, 24
  %25 = load i8, ptr %arrayidx34, align 1, !tbaa !7
  %conv35.2 = zext i8 %25 to i32
  %shl36.2 = shl nuw nsw i32 %conv35.2, 16
  %or37.2 = or i32 %shl36.2, %shl33.2
  %26 = load i8, ptr %arrayidx38, align 2, !tbaa !7
  %conv39.2 = zext i8 %26 to i32
  %shl40.2 = shl nuw nsw i32 %conv39.2, 8
  %or41.2 = or i32 %or37.2, %shl40.2
  %27 = load i8, ptr %arrayidx42, align 1, !tbaa !7
  %conv43.2 = zext i8 %27 to i32
  %or44.2 = or i32 %or41.2, %conv43.2
  %arrayidx47.2 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 4
  store i32 %or44.2, ptr %arrayidx47.2, align 4, !tbaa !10
  %28 = load i8, ptr %arrayidx48, align 4, !tbaa !7
  %conv49.2 = zext i8 %28 to i32
  %shl50.2 = shl nuw i32 %conv49.2, 24
  %29 = load i8, ptr %arrayidx51, align 1, !tbaa !7
  %conv52.2 = zext i8 %29 to i32
  %shl53.2 = shl nuw nsw i32 %conv52.2, 16
  %or54.2 = or i32 %shl53.2, %shl50.2
  %30 = load i8, ptr %arrayidx55, align 2, !tbaa !7
  %conv56.2 = zext i8 %30 to i32
  %shl57.2 = shl nuw nsw i32 %conv56.2, 8
  %or58.2 = or i32 %or54.2, %shl57.2
  %31 = load i8, ptr %arrayidx59, align 1, !tbaa !7
  %conv60.2 = zext i8 %31 to i32
  %or61.2 = or i32 %or58.2, %conv60.2
  %arrayidx65.2 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 5
  store i32 %or61.2, ptr %arrayidx65.2, align 4, !tbaa !10
  call void @blowfish_encrypt(ptr noundef nonnull %block, ptr noundef nonnull %block, ptr noundef nonnull %keystruct)
  %32 = load i8, ptr %block, align 8, !tbaa !7
  %conv32.3 = zext i8 %32 to i32
  %shl33.3 = shl nuw i32 %conv32.3, 24
  %33 = load i8, ptr %arrayidx34, align 1, !tbaa !7
  %conv35.3 = zext i8 %33 to i32
  %shl36.3 = shl nuw nsw i32 %conv35.3, 16
  %or37.3 = or i32 %shl36.3, %shl33.3
  %34 = load i8, ptr %arrayidx38, align 2, !tbaa !7
  %conv39.3 = zext i8 %34 to i32
  %shl40.3 = shl nuw nsw i32 %conv39.3, 8
  %or41.3 = or i32 %or37.3, %shl40.3
  %35 = load i8, ptr %arrayidx42, align 1, !tbaa !7
  %conv43.3 = zext i8 %35 to i32
  %or44.3 = or i32 %or41.3, %conv43.3
  %arrayidx47.3 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 6
  store i32 %or44.3, ptr %arrayidx47.3, align 4, !tbaa !10
  %36 = load i8, ptr %arrayidx48, align 4, !tbaa !7
  %conv49.3 = zext i8 %36 to i32
  %shl50.3 = shl nuw i32 %conv49.3, 24
  %37 = load i8, ptr %arrayidx51, align 1, !tbaa !7
  %conv52.3 = zext i8 %37 to i32
  %shl53.3 = shl nuw nsw i32 %conv52.3, 16
  %or54.3 = or i32 %shl53.3, %shl50.3
  %38 = load i8, ptr %arrayidx55, align 2, !tbaa !7
  %conv56.3 = zext i8 %38 to i32
  %shl57.3 = shl nuw nsw i32 %conv56.3, 8
  %or58.3 = or i32 %or54.3, %shl57.3
  %39 = load i8, ptr %arrayidx59, align 1, !tbaa !7
  %conv60.3 = zext i8 %39 to i32
  %or61.3 = or i32 %or58.3, %conv60.3
  %arrayidx65.3 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 7
  store i32 %or61.3, ptr %arrayidx65.3, align 4, !tbaa !10
  call void @blowfish_encrypt(ptr noundef nonnull %block, ptr noundef nonnull %block, ptr noundef nonnull %keystruct)
  %40 = load i8, ptr %block, align 8, !tbaa !7
  %conv32.4 = zext i8 %40 to i32
  %shl33.4 = shl nuw i32 %conv32.4, 24
  %41 = load i8, ptr %arrayidx34, align 1, !tbaa !7
  %conv35.4 = zext i8 %41 to i32
  %shl36.4 = shl nuw nsw i32 %conv35.4, 16
  %or37.4 = or i32 %shl36.4, %shl33.4
  %42 = load i8, ptr %arrayidx38, align 2, !tbaa !7
  %conv39.4 = zext i8 %42 to i32
  %shl40.4 = shl nuw nsw i32 %conv39.4, 8
  %or41.4 = or i32 %or37.4, %shl40.4
  %43 = load i8, ptr %arrayidx42, align 1, !tbaa !7
  %conv43.4 = zext i8 %43 to i32
  %or44.4 = or i32 %or41.4, %conv43.4
  %arrayidx47.4 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 8
  store i32 %or44.4, ptr %arrayidx47.4, align 4, !tbaa !10
  %44 = load i8, ptr %arrayidx48, align 4, !tbaa !7
  %conv49.4 = zext i8 %44 to i32
  %shl50.4 = shl nuw i32 %conv49.4, 24
  %45 = load i8, ptr %arrayidx51, align 1, !tbaa !7
  %conv52.4 = zext i8 %45 to i32
  %shl53.4 = shl nuw nsw i32 %conv52.4, 16
  %or54.4 = or i32 %shl53.4, %shl50.4
  %46 = load i8, ptr %arrayidx55, align 2, !tbaa !7
  %conv56.4 = zext i8 %46 to i32
  %shl57.4 = shl nuw nsw i32 %conv56.4, 8
  %or58.4 = or i32 %or54.4, %shl57.4
  %47 = load i8, ptr %arrayidx59, align 1, !tbaa !7
  %conv60.4 = zext i8 %47 to i32
  %or61.4 = or i32 %or58.4, %conv60.4
  %arrayidx65.4 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 9
  store i32 %or61.4, ptr %arrayidx65.4, align 4, !tbaa !10
  call void @blowfish_encrypt(ptr noundef nonnull %block, ptr noundef nonnull %block, ptr noundef nonnull %keystruct)
  %48 = load i8, ptr %block, align 8, !tbaa !7
  %conv32.5 = zext i8 %48 to i32
  %shl33.5 = shl nuw i32 %conv32.5, 24
  %49 = load i8, ptr %arrayidx34, align 1, !tbaa !7
  %conv35.5 = zext i8 %49 to i32
  %shl36.5 = shl nuw nsw i32 %conv35.5, 16
  %or37.5 = or i32 %shl36.5, %shl33.5
  %50 = load i8, ptr %arrayidx38, align 2, !tbaa !7
  %conv39.5 = zext i8 %50 to i32
  %shl40.5 = shl nuw nsw i32 %conv39.5, 8
  %or41.5 = or i32 %or37.5, %shl40.5
  %51 = load i8, ptr %arrayidx42, align 1, !tbaa !7
  %conv43.5 = zext i8 %51 to i32
  %or44.5 = or i32 %or41.5, %conv43.5
  %arrayidx47.5 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 10
  store i32 %or44.5, ptr %arrayidx47.5, align 4, !tbaa !10
  %52 = load i8, ptr %arrayidx48, align 4, !tbaa !7
  %conv49.5 = zext i8 %52 to i32
  %shl50.5 = shl nuw i32 %conv49.5, 24
  %53 = load i8, ptr %arrayidx51, align 1, !tbaa !7
  %conv52.5 = zext i8 %53 to i32
  %shl53.5 = shl nuw nsw i32 %conv52.5, 16
  %or54.5 = or i32 %shl53.5, %shl50.5
  %54 = load i8, ptr %arrayidx55, align 2, !tbaa !7
  %conv56.5 = zext i8 %54 to i32
  %shl57.5 = shl nuw nsw i32 %conv56.5, 8
  %or58.5 = or i32 %or54.5, %shl57.5
  %55 = load i8, ptr %arrayidx59, align 1, !tbaa !7
  %conv60.5 = zext i8 %55 to i32
  %or61.5 = or i32 %or58.5, %conv60.5
  %arrayidx65.5 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 11
  store i32 %or61.5, ptr %arrayidx65.5, align 4, !tbaa !10
  call void @blowfish_encrypt(ptr noundef nonnull %block, ptr noundef nonnull %block, ptr noundef nonnull %keystruct)
  %56 = load i8, ptr %block, align 8, !tbaa !7
  %conv32.6 = zext i8 %56 to i32
  %shl33.6 = shl nuw i32 %conv32.6, 24
  %57 = load i8, ptr %arrayidx34, align 1, !tbaa !7
  %conv35.6 = zext i8 %57 to i32
  %shl36.6 = shl nuw nsw i32 %conv35.6, 16
  %or37.6 = or i32 %shl36.6, %shl33.6
  %58 = load i8, ptr %arrayidx38, align 2, !tbaa !7
  %conv39.6 = zext i8 %58 to i32
  %shl40.6 = shl nuw nsw i32 %conv39.6, 8
  %or41.6 = or i32 %or37.6, %shl40.6
  %59 = load i8, ptr %arrayidx42, align 1, !tbaa !7
  %conv43.6 = zext i8 %59 to i32
  %or44.6 = or i32 %or41.6, %conv43.6
  %arrayidx47.6 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 12
  store i32 %or44.6, ptr %arrayidx47.6, align 4, !tbaa !10
  %60 = load i8, ptr %arrayidx48, align 4, !tbaa !7
  %conv49.6 = zext i8 %60 to i32
  %shl50.6 = shl nuw i32 %conv49.6, 24
  %61 = load i8, ptr %arrayidx51, align 1, !tbaa !7
  %conv52.6 = zext i8 %61 to i32
  %shl53.6 = shl nuw nsw i32 %conv52.6, 16
  %or54.6 = or i32 %shl53.6, %shl50.6
  %62 = load i8, ptr %arrayidx55, align 2, !tbaa !7
  %conv56.6 = zext i8 %62 to i32
  %shl57.6 = shl nuw nsw i32 %conv56.6, 8
  %or58.6 = or i32 %or54.6, %shl57.6
  %63 = load i8, ptr %arrayidx59, align 1, !tbaa !7
  %conv60.6 = zext i8 %63 to i32
  %or61.6 = or i32 %or58.6, %conv60.6
  %arrayidx65.6 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 13
  store i32 %or61.6, ptr %arrayidx65.6, align 4, !tbaa !10
  call void @blowfish_encrypt(ptr noundef nonnull %block, ptr noundef nonnull %block, ptr noundef nonnull %keystruct)
  %64 = load i8, ptr %block, align 8, !tbaa !7
  %conv32.7 = zext i8 %64 to i32
  %shl33.7 = shl nuw i32 %conv32.7, 24
  %65 = load i8, ptr %arrayidx34, align 1, !tbaa !7
  %conv35.7 = zext i8 %65 to i32
  %shl36.7 = shl nuw nsw i32 %conv35.7, 16
  %or37.7 = or i32 %shl36.7, %shl33.7
  %66 = load i8, ptr %arrayidx38, align 2, !tbaa !7
  %conv39.7 = zext i8 %66 to i32
  %shl40.7 = shl nuw nsw i32 %conv39.7, 8
  %or41.7 = or i32 %or37.7, %shl40.7
  %67 = load i8, ptr %arrayidx42, align 1, !tbaa !7
  %conv43.7 = zext i8 %67 to i32
  %or44.7 = or i32 %or41.7, %conv43.7
  %arrayidx47.7 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 14
  store i32 %or44.7, ptr %arrayidx47.7, align 4, !tbaa !10
  %68 = load i8, ptr %arrayidx48, align 4, !tbaa !7
  %conv49.7 = zext i8 %68 to i32
  %shl50.7 = shl nuw i32 %conv49.7, 24
  %69 = load i8, ptr %arrayidx51, align 1, !tbaa !7
  %conv52.7 = zext i8 %69 to i32
  %shl53.7 = shl nuw nsw i32 %conv52.7, 16
  %or54.7 = or i32 %shl53.7, %shl50.7
  %70 = load i8, ptr %arrayidx55, align 2, !tbaa !7
  %conv56.7 = zext i8 %70 to i32
  %shl57.7 = shl nuw nsw i32 %conv56.7, 8
  %or58.7 = or i32 %or54.7, %shl57.7
  %71 = load i8, ptr %arrayidx59, align 1, !tbaa !7
  %conv60.7 = zext i8 %71 to i32
  %or61.7 = or i32 %or58.7, %conv60.7
  %arrayidx65.7 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 15
  store i32 %or61.7, ptr %arrayidx65.7, align 4, !tbaa !10
  call void @blowfish_encrypt(ptr noundef nonnull %block, ptr noundef nonnull %block, ptr noundef nonnull %keystruct)
  %72 = load i8, ptr %block, align 8, !tbaa !7
  %conv32.8 = zext i8 %72 to i32
  %shl33.8 = shl nuw i32 %conv32.8, 24
  %73 = load i8, ptr %arrayidx34, align 1, !tbaa !7
  %conv35.8 = zext i8 %73 to i32
  %shl36.8 = shl nuw nsw i32 %conv35.8, 16
  %or37.8 = or i32 %shl36.8, %shl33.8
  %74 = load i8, ptr %arrayidx38, align 2, !tbaa !7
  %conv39.8 = zext i8 %74 to i32
  %shl40.8 = shl nuw nsw i32 %conv39.8, 8
  %or41.8 = or i32 %or37.8, %shl40.8
  %75 = load i8, ptr %arrayidx42, align 1, !tbaa !7
  %conv43.8 = zext i8 %75 to i32
  %or44.8 = or i32 %or41.8, %conv43.8
  %arrayidx47.8 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 16
  store i32 %or44.8, ptr %arrayidx47.8, align 4, !tbaa !10
  %76 = load i8, ptr %arrayidx48, align 4, !tbaa !7
  %conv49.8 = zext i8 %76 to i32
  %shl50.8 = shl nuw i32 %conv49.8, 24
  %77 = load i8, ptr %arrayidx51, align 1, !tbaa !7
  %conv52.8 = zext i8 %77 to i32
  %shl53.8 = shl nuw nsw i32 %conv52.8, 16
  %or54.8 = or i32 %shl53.8, %shl50.8
  %78 = load i8, ptr %arrayidx55, align 2, !tbaa !7
  %conv56.8 = zext i8 %78 to i32
  %shl57.8 = shl nuw nsw i32 %conv56.8, 8
  %or58.8 = or i32 %or54.8, %shl57.8
  %79 = load i8, ptr %arrayidx59, align 1, !tbaa !7
  %conv60.8 = zext i8 %79 to i32
  %or61.8 = or i32 %or58.8, %conv60.8
  %arrayidx65.8 = getelementptr inbounds [18 x i32], ptr %keystruct, i64 0, i64 17
  store i32 %or61.8, ptr %arrayidx65.8, align 4, !tbaa !10
  br label %for.body76

for.body76:                                       ; preds = %for.end, %for.body76
  %indvars.iv173 = phi i64 [ 0, %for.end ], [ %indvars.iv.next174, %for.body76 ]
  call void @blowfish_encrypt(ptr noundef nonnull %block, ptr noundef nonnull %block, ptr noundef nonnull %keystruct)
  %80 = load i8, ptr %block, align 8, !tbaa !7
  %conv80 = zext i8 %80 to i32
  %shl81 = shl nuw i32 %conv80, 24
  %81 = load i8, ptr %arrayidx34, align 1, !tbaa !7
  %conv83 = zext i8 %81 to i32
  %shl84 = shl nuw nsw i32 %conv83, 16
  %or85 = or i32 %shl84, %shl81
  %82 = load i8, ptr %arrayidx38, align 2, !tbaa !7
  %conv87 = zext i8 %82 to i32
  %shl88 = shl nuw nsw i32 %conv87, 8
  %or89 = or i32 %or85, %shl88
  %83 = load i8, ptr %arrayidx42, align 1, !tbaa !7
  %conv91 = zext i8 %83 to i32
  %or92 = or i32 %or89, %conv91
  %arrayidx97 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 0, i64 %indvars.iv173
  store i32 %or92, ptr %arrayidx97, align 4, !tbaa !10
  %84 = load i8, ptr %arrayidx48, align 4, !tbaa !7
  %conv99 = zext i8 %84 to i32
  %shl100 = shl nuw i32 %conv99, 24
  %85 = load i8, ptr %arrayidx51, align 1, !tbaa !7
  %conv102 = zext i8 %85 to i32
  %shl103 = shl nuw nsw i32 %conv102, 16
  %or104 = or i32 %shl103, %shl100
  %86 = load i8, ptr %arrayidx55, align 2, !tbaa !7
  %conv106 = zext i8 %86 to i32
  %shl107 = shl nuw nsw i32 %conv106, 8
  %or108 = or i32 %or104, %shl107
  %87 = load i8, ptr %arrayidx59, align 1, !tbaa !7
  %conv110 = zext i8 %87 to i32
  %or111 = or i32 %or108, %conv110
  %88 = or i64 %indvars.iv173, 1
  %arrayidx117 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 0, i64 %88
  store i32 %or111, ptr %arrayidx117, align 4, !tbaa !10
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 2
  %cmp74 = icmp ult i64 %indvars.iv173, 254
  br i1 %cmp74, label %for.body76, label %for.body76.1, !llvm.loop !14

for.body76.1:                                     ; preds = %for.body76, %for.body76.1
  %indvars.iv173.1 = phi i64 [ %indvars.iv.next174.1, %for.body76.1 ], [ 0, %for.body76 ]
  call void @blowfish_encrypt(ptr noundef nonnull %block, ptr noundef nonnull %block, ptr noundef nonnull %keystruct)
  %89 = load i8, ptr %block, align 8, !tbaa !7
  %conv80.1 = zext i8 %89 to i32
  %shl81.1 = shl nuw i32 %conv80.1, 24
  %90 = load i8, ptr %arrayidx34, align 1, !tbaa !7
  %conv83.1 = zext i8 %90 to i32
  %shl84.1 = shl nuw nsw i32 %conv83.1, 16
  %or85.1 = or i32 %shl84.1, %shl81.1
  %91 = load i8, ptr %arrayidx38, align 2, !tbaa !7
  %conv87.1 = zext i8 %91 to i32
  %shl88.1 = shl nuw nsw i32 %conv87.1, 8
  %or89.1 = or i32 %or85.1, %shl88.1
  %92 = load i8, ptr %arrayidx42, align 1, !tbaa !7
  %conv91.1 = zext i8 %92 to i32
  %or92.1 = or i32 %or89.1, %conv91.1
  %arrayidx97.1 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %indvars.iv173.1
  store i32 %or92.1, ptr %arrayidx97.1, align 4, !tbaa !10
  %93 = load i8, ptr %arrayidx48, align 4, !tbaa !7
  %conv99.1 = zext i8 %93 to i32
  %shl100.1 = shl nuw i32 %conv99.1, 24
  %94 = load i8, ptr %arrayidx51, align 1, !tbaa !7
  %conv102.1 = zext i8 %94 to i32
  %shl103.1 = shl nuw nsw i32 %conv102.1, 16
  %or104.1 = or i32 %shl103.1, %shl100.1
  %95 = load i8, ptr %arrayidx55, align 2, !tbaa !7
  %conv106.1 = zext i8 %95 to i32
  %shl107.1 = shl nuw nsw i32 %conv106.1, 8
  %or108.1 = or i32 %or104.1, %shl107.1
  %96 = load i8, ptr %arrayidx59, align 1, !tbaa !7
  %conv110.1 = zext i8 %96 to i32
  %or111.1 = or i32 %or108.1, %conv110.1
  %97 = or i64 %indvars.iv173.1, 1
  %arrayidx117.1 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 1, i64 %97
  store i32 %or111.1, ptr %arrayidx117.1, align 4, !tbaa !10
  %indvars.iv.next174.1 = add nuw nsw i64 %indvars.iv173.1, 2
  %cmp74.1 = icmp ult i64 %indvars.iv173.1, 254
  br i1 %cmp74.1, label %for.body76.1, label %for.body76.2, !llvm.loop !14

for.body76.2:                                     ; preds = %for.body76.1, %for.body76.2
  %indvars.iv173.2 = phi i64 [ %indvars.iv.next174.2, %for.body76.2 ], [ 0, %for.body76.1 ]
  call void @blowfish_encrypt(ptr noundef nonnull %block, ptr noundef nonnull %block, ptr noundef nonnull %keystruct)
  %98 = load i8, ptr %block, align 8, !tbaa !7
  %conv80.2 = zext i8 %98 to i32
  %shl81.2 = shl nuw i32 %conv80.2, 24
  %99 = load i8, ptr %arrayidx34, align 1, !tbaa !7
  %conv83.2 = zext i8 %99 to i32
  %shl84.2 = shl nuw nsw i32 %conv83.2, 16
  %or85.2 = or i32 %shl84.2, %shl81.2
  %100 = load i8, ptr %arrayidx38, align 2, !tbaa !7
  %conv87.2 = zext i8 %100 to i32
  %shl88.2 = shl nuw nsw i32 %conv87.2, 8
  %or89.2 = or i32 %or85.2, %shl88.2
  %101 = load i8, ptr %arrayidx42, align 1, !tbaa !7
  %conv91.2 = zext i8 %101 to i32
  %or92.2 = or i32 %or89.2, %conv91.2
  %arrayidx97.2 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %indvars.iv173.2
  store i32 %or92.2, ptr %arrayidx97.2, align 4, !tbaa !10
  %102 = load i8, ptr %arrayidx48, align 4, !tbaa !7
  %conv99.2 = zext i8 %102 to i32
  %shl100.2 = shl nuw i32 %conv99.2, 24
  %103 = load i8, ptr %arrayidx51, align 1, !tbaa !7
  %conv102.2 = zext i8 %103 to i32
  %shl103.2 = shl nuw nsw i32 %conv102.2, 16
  %or104.2 = or i32 %shl103.2, %shl100.2
  %104 = load i8, ptr %arrayidx55, align 2, !tbaa !7
  %conv106.2 = zext i8 %104 to i32
  %shl107.2 = shl nuw nsw i32 %conv106.2, 8
  %or108.2 = or i32 %or104.2, %shl107.2
  %105 = load i8, ptr %arrayidx59, align 1, !tbaa !7
  %conv110.2 = zext i8 %105 to i32
  %or111.2 = or i32 %or108.2, %conv110.2
  %106 = or i64 %indvars.iv173.2, 1
  %arrayidx117.2 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 2, i64 %106
  store i32 %or111.2, ptr %arrayidx117.2, align 4, !tbaa !10
  %indvars.iv.next174.2 = add nuw nsw i64 %indvars.iv173.2, 2
  %cmp74.2 = icmp ult i64 %indvars.iv173.2, 254
  br i1 %cmp74.2, label %for.body76.2, label %for.body76.3, !llvm.loop !14

for.body76.3:                                     ; preds = %for.body76.2, %for.body76.3
  %indvars.iv173.3 = phi i64 [ %indvars.iv.next174.3, %for.body76.3 ], [ 0, %for.body76.2 ]
  call void @blowfish_encrypt(ptr noundef nonnull %block, ptr noundef nonnull %block, ptr noundef nonnull %keystruct)
  %107 = load i8, ptr %block, align 8, !tbaa !7
  %conv80.3 = zext i8 %107 to i32
  %shl81.3 = shl nuw i32 %conv80.3, 24
  %108 = load i8, ptr %arrayidx34, align 1, !tbaa !7
  %conv83.3 = zext i8 %108 to i32
  %shl84.3 = shl nuw nsw i32 %conv83.3, 16
  %or85.3 = or i32 %shl84.3, %shl81.3
  %109 = load i8, ptr %arrayidx38, align 2, !tbaa !7
  %conv87.3 = zext i8 %109 to i32
  %shl88.3 = shl nuw nsw i32 %conv87.3, 8
  %or89.3 = or i32 %or85.3, %shl88.3
  %110 = load i8, ptr %arrayidx42, align 1, !tbaa !7
  %conv91.3 = zext i8 %110 to i32
  %or92.3 = or i32 %or89.3, %conv91.3
  %arrayidx97.3 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %indvars.iv173.3
  store i32 %or92.3, ptr %arrayidx97.3, align 4, !tbaa !10
  %111 = load i8, ptr %arrayidx48, align 4, !tbaa !7
  %conv99.3 = zext i8 %111 to i32
  %shl100.3 = shl nuw i32 %conv99.3, 24
  %112 = load i8, ptr %arrayidx51, align 1, !tbaa !7
  %conv102.3 = zext i8 %112 to i32
  %shl103.3 = shl nuw nsw i32 %conv102.3, 16
  %or104.3 = or i32 %shl103.3, %shl100.3
  %113 = load i8, ptr %arrayidx55, align 2, !tbaa !7
  %conv106.3 = zext i8 %113 to i32
  %shl107.3 = shl nuw nsw i32 %conv106.3, 8
  %or108.3 = or i32 %or104.3, %shl107.3
  %114 = load i8, ptr %arrayidx59, align 1, !tbaa !7
  %conv110.3 = zext i8 %114 to i32
  %or111.3 = or i32 %or108.3, %conv110.3
  %115 = or i64 %indvars.iv173.3, 1
  %arrayidx117.3 = getelementptr inbounds %struct.BLOWFISH_KEY, ptr %keystruct, i64 0, i32 1, i64 3, i64 %115
  store i32 %or111.3, ptr %arrayidx117.3, align 4, !tbaa !10
  %indvars.iv.next174.3 = add nuw nsw i64 %indvars.iv173.3, 2
  %cmp74.3 = icmp ult i64 %indvars.iv173.3, 254
  br i1 %cmp74.3, label %for.body76.3, label %for.inc121.3, !llvm.loop !14

for.inc121.3:                                     ; preds = %for.body76.3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %block) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @blowfish_test() local_unnamed_addr #4 {
entry:
  %key1 = alloca [8 x i8], align 8
  %key2 = alloca [8 x i8], align 8
  %p1 = alloca [8 x i8], align 8
  %p2 = alloca [8 x i8], align 8
  %p3 = alloca [8 x i8], align 8
  %c1 = alloca [8 x i8], align 8
  %c2 = alloca [8 x i8], align 8
  %c3 = alloca [8 x i8], align 8
  %enc_buf = alloca [8 x i8], align 1
  %key = alloca %struct.BLOWFISH_KEY, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key1) #8
  store i64 0, ptr %key1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key2) #8
  store i64 -1, ptr %key2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p1) #8
  store i64 0, ptr %p1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p2) #8
  store i64 -1, ptr %p2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p3) #8
  store i64 1167088121787636990, ptr %p3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c1) #8
  store i64 8709284797951244622, ptr %c1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c2) #8
  store i64 -8445552528255383983, ptr %c2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c3) #8
  store i64 -9164734006354574331, ptr %c3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %enc_buf) #8
  call void @llvm.lifetime.start.p0(i64 4168, ptr nonnull %key) #8
  call void @blowfish_key_setup(ptr noundef nonnull %key1, ptr noundef nonnull %key, i64 noundef 8)
  call void @blowfish_encrypt(ptr noundef nonnull %p1, ptr noundef nonnull %enc_buf, ptr noundef nonnull %key)
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %c1, ptr noundef nonnull dereferenceable(8) %enc_buf, i64 8)
  %tobool5.not = icmp eq i32 %bcmp, 0
  call void @blowfish_decrypt(ptr noundef nonnull %c1, ptr noundef nonnull %enc_buf, ptr noundef nonnull %key)
  br i1 %tobool5.not, label %land.rhs9, label %land.end27.critedge

land.rhs9:                                        ; preds = %entry
  %bcmp73 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %p1, ptr noundef nonnull dereferenceable(8) %enc_buf, i64 8)
  %tobool13.not = icmp eq i32 %bcmp73, 0
  call void @blowfish_key_setup(ptr noundef nonnull %key2, ptr noundef nonnull %key, i64 noundef 8)
  call void @blowfish_encrypt(ptr noundef nonnull %p2, ptr noundef nonnull %enc_buf, ptr noundef nonnull %key)
  br i1 %tobool13.not, label %land.rhs21, label %land.end50.critedge

land.rhs21:                                       ; preds = %land.rhs9
  %bcmp72 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %c2, ptr noundef nonnull dereferenceable(8) %enc_buf, i64 8)
  %tobool25.not = icmp eq i32 %bcmp72, 0
  call void @blowfish_decrypt(ptr noundef nonnull %c2, ptr noundef nonnull %enc_buf, ptr noundef nonnull %key)
  br i1 %tobool25.not, label %land.rhs32, label %land.end50.critedge

land.end27.critedge:                              ; preds = %entry
  call void @blowfish_key_setup(ptr noundef nonnull %key2, ptr noundef nonnull %key, i64 noundef 8)
  br label %land.end50.critedge

land.rhs32:                                       ; preds = %land.rhs21
  %bcmp71 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %p2, ptr noundef nonnull dereferenceable(8) %enc_buf, i64 8)
  %tobool36.not = icmp eq i32 %bcmp71, 0
  call void @blowfish_key_setup(ptr noundef nonnull @__const.blowfish_test.key3, ptr noundef nonnull %key, i64 noundef 24)
  call void @blowfish_encrypt(ptr noundef nonnull %p3, ptr noundef nonnull %enc_buf, ptr noundef nonnull %key)
  br i1 %tobool36.not, label %land.rhs44, label %land.end61

land.rhs44:                                       ; preds = %land.rhs32
  %bcmp70 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %c3, ptr noundef nonnull dereferenceable(8) %enc_buf, i64 8)
  %tobool48.not = icmp eq i32 %bcmp70, 0
  call void @blowfish_decrypt(ptr noundef nonnull %c3, ptr noundef nonnull %enc_buf, ptr noundef nonnull %key)
  br i1 %tobool48.not, label %land.rhs55, label %land.end61

land.end50.critedge:                              ; preds = %land.rhs9, %land.end27.critedge, %land.rhs21
  call void @blowfish_key_setup(ptr noundef nonnull @__const.blowfish_test.key3, ptr noundef nonnull %key, i64 noundef 24)
  br label %land.end61

land.rhs55:                                       ; preds = %land.rhs44
  %bcmp69 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %p3, ptr noundef nonnull dereferenceable(8) %enc_buf, i64 8)
  %tobool59.not = icmp eq i32 %bcmp69, 0
  %0 = zext i1 %tobool59.not to i32
  br label %land.end61

land.end61:                                       ; preds = %land.rhs32, %land.end50.critedge, %land.rhs55, %land.rhs44
  %land.ext62 = phi i32 [ 0, %land.rhs44 ], [ %0, %land.rhs55 ], [ 0, %land.end50.critedge ], [ 0, %land.rhs32 ]
  call void @llvm.lifetime.end.p0(i64 4168, ptr nonnull %key) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key1) #8
  ret i32 %land.ext62
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #5 {
entry:
  %call = tail call i32 @blowfish_test()
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, ptr @.str.2, ptr @.str.1
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  ret i32 0

for.body:                                         ; preds = %entry, %for.body
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}

^0 = module: (path: "", hash: (0, 0, 0, 0, 0))
^1 = gv: (name: "blowfish_test", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 72, funcFlags: (readNone: 1, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^2, relbf: 766), (callee: ^9, relbf: 364), (callee: ^5, relbf: 404), (callee: ^6, relbf: 295)), refs: (^13)))) ; guid = 1730735351569419592
^2 = gv: (name: "blowfish_key_setup", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 500, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^9, relbf: 34944)), refs: (^3, ^8)))) ; guid = 3490335167926557491
^3 = gv: (name: "p_perm", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 5493709458045933459
^4 = gv: (name: "printf") ; guid = 7383291119112528047
^5 = gv: (name: "bcmp") ; guid = 8597674443648877653
^6 = gv: (name: "blowfish_decrypt", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 471, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 1, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0)))) ; guid = 13331698788542745127
^7 = gv: (name: ".str.2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13877132428460614042
^8 = gv: (name: "s_perm", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15112827957908892217
^9 = gv: (name: "blowfish_encrypt", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 471, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 1, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0)))) ; guid = 15803261809724259000
^10 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 1, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^1, relbf: 256), (callee: ^4, relbf: 8160)), refs: (^7, ^11, ^12)))) ; guid = 15822663052811949562
^11 = gv: (name: ".str.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16077874076833532630
^12 = gv: (name: ".str", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17205282953791471058
^13 = gv: (name: "__const.blowfish_test.key3", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 17212796412055523107
^14 = flags: 8
^15 = blockcount: 22
