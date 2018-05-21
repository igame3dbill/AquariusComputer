1 REM Muziek op de mini-expander
2 REM (c) 1985 Joost van Surksum
3 REM
10 DATA 62,8,211,247,62,15,211,246
20 DATA 62,9,211,247,62,15,211,246
30 DATA 62,10,211,247,62,15,211,246
40 DATA 62,0,211,247,62,0,211,246
50 DATA 62,1,211,247,62,0,211,246
60 DATA 62,2,211,247,62,0,211,246
70 DATA 62,3,211,247,62,0,211,246
80 DATA 62,4,211,247,62,0,211,246
90 DATA 62,5,211,247,62,0,211,246
95 DATA 62,7,211,247,62,248,211,246
96 DATA 201
100 FORI=32000TO32080:READA:POKEI,A:NEXT
110 POKE14340,0:POKE14341,125
130 RESTORE1000
140 READ A1,A2,A3
141 IFSW=1ANDA1=-2THENSW=2:RESTORE1210:GOTO140
142 IFSW=2ANDA1=-2THEN140
145 IFSW=1ANDA1=-1THEN140
150 IFA1=-1THENSW=1:GOTO130
160 POKE32029,A1-INT(A1/256)*256
170 POKE32037,INT(A1/256)
180 POKE32045,A2-INT(A2/256)*256
190 POKE32053,INT(A2/256)
200 POKE32061,A3-INT(A3/256)*256
210 POKE32069,INT(A3/256)
220 X=USR(0)
230 FORI=0TO25:NEXT:REM Vertraging
240 GOTO140
300 REM--music on the mini expander ----
310 REM
320 REM with this programme is possible you
330 REM drietonige leaves melody
340 REM to hear. Below stand
350 REM  tone values: 
355 REM
360 REM C  : 3421
361 REM C# : 3228
362 REM D  : 3047
363 REM D# : 2876
364 REM E  : 2715
365 REM F  : 2562
366 REM F# : 2419
367 REM G  : 2283
368 REM G# : 2155
369 REM A  : 2034
370 REM A# : 1920
371 REM B  : 1813
375 REM
380 REM-Hogere oktaven get you by
390 REM the numbers concerned always
400 REM by sharing 2
410 REM-Een mean zero in data
420 REM silence for involved channel
430 REM -3 x -1 means: all over again
440 REM start.
450 REM -3 x 0 means: a tone-
460 REM period silence, afterwards further
470 REM goes. One can the duration
480 REM in rule 230 establish.
490 REM
1000 DATA 169,0,0
1001 DATA169,0,0
1003 DATA1710,214,0
1005 DATA0,214,0
1007 DATA855,679,570
1010 DATA0,0,0
1012 DATA679,855,169
1015 DATA0,0,169
1018 DATA1710,214,0
1020 DATA0,0,214
1023 DATA855,679,570
1025 DATA0,0,0
1027 DATA679,855,169
1028 DATA0,0,169
1030 DATA1710,142,0
1032 DATA0,0,0
1040 DATA679,855,142
1045 DATA0,0,169
1050 DATA855,679,214
1055 DATA0,0,169
1060 DATA1141,190,0
1065 DATA0,190,0
1070 DATA570,761,906
1075 DATA0,0,0
1080 DATA761,570,160
1085 DATA0,0,160
1090 DATA1141,226,0
1095 DATA0,0,226
1100 DATA570,761,906
1110 DATA0,0,0
1115 DATA570,761,190
1120 DATA0,0,190
1125 DATA1141,285,0
1130 DATA0,285,0
1135 DATA570,906,761
1136 DATA0,0,0
1140 DATA570,761,190
1145 DATA0,0,190
1150 DATA1141,0,160
1155 DATA0,0,160
1160 DATA570,761,160
1165 DATA0,0,190
1170 DATA453,570,761
1175 DATA0,0,190
1180 DATA1710,214,0
1185 DATA0,0,214
1190 DATA855,679,570
1195 DATA0,0,0
1200 DATA855,679,169
1205 DATA0,0,169
1207 DATA-1,-1,-1
1210 DATA1281,254,127
1215 DATA254,127,1281
1220 DATA254,214,127
1225 DATA254,0,0
1230 DATA254,160,254
1235 DATA254,0,0
1240 DATA1710,254,0
1245 DATA1710,254,0
1250 DATA254,214,127
1255 DATA254,0,0
1260 DATA254,160,0
1265 DATA254,0,0
1270 DATA5281,254,0
1275 DATA254,1281,0
1280 DATA269,0,0
1029 DATA269,0,0
1290 DATA254,0,0
1295 DATA254,0,0
1300 DATA1710,240,0
1305 DATA240,0,1710
1310 DATA226,0,0
1320 DATA226,0,0
1330 DATA190,0,0
1340 DATA190,0,0
1350 DATA214,1281,0
1355 DATA214,0,1281
1360 DATA214,214,127
1365 DATA214,0,0
1370 DATA214,160,0
1375 DATA214,0,0
612 DATA1710,214,0
1385 DATA214,0,1710
1390 DATA214,127,0
1395 DATA214,0,0
1400 DATA214,160,0
1402 DATA214,0,0
1405 DATA1281,254,0
1410 DATA254,0,1281
1415 DATA254,127,0
1420 DATA254,0,0
1425 DATA254,160,0
1430 DATA254,0,0
1435 DATA1710,254,0
1440 DATA254,0,1710
1445 DATA254,127,0
1450 DATA254,0,0
1455 DATA254,160,0
1460 DATA254,0,0
1465 DATA1141,285,0
1470 DATA0,285,1141
1475 DATA285,240,142
1480 DATA285,0,0
1485 DATA285,285,169
1490 DATA285,0,0
1495 DATA1141,285,0
1500 DATA285,0,1141
1501 DATA285,240,142
1502 DATA285,0,0
1503 DATA285,169,0
1504 DATA285,0,0
1505 DATA1710,285,0
1506 DATA285,0,1710
1509 DATA302,0,0
1510 DATA302,302,0
1515 DATA285,4,0
1520 DATA285,0,0
1525 DATA214,1710,0
1530 DATA214,0,1710
1535 DATA240,0,0
1540 DATA240,0,0
1545 DATA285,0,0
1550 DATA285,0,0
1555 DATA1281,254,0
1560 DATA254,0,1281
1565 DATA254,214,127
1573 DATA254,0,0
1575 DATA254,254,160
1580 DATA254,0,0
1585 DATA1710,254,127
1590 DATA1710,254,127
1595 DATA254,214,127
1600 DATA254,0,0
1605 DATA254,160,0
1610 DATA254,0,0
1615 DATA1281,320,0
1620 DATA1281,320,0
1625 DATA320,214,127
1630 DATA320,0,0
1635 DATA320,160,0
1640 DATA320,0,0
1645 DATA1710,320,0
1650 DATA1710,320,0
1655 DATA320,214,127
1660 DATA320,0,0
1655 DATA320,214,127
1660 DATA320,0,0
1665 DATA320,160,0
1670 DATA320,0,0
1672 DATA-2,-2,-2
1675 DATA1141,142,226
1680 DATA1141,142,226
1685 DATA1141,142,226
1690 DATA1141,142,226
1695 DATA169,169,169
1700 DATA169,169,169
9993 DATA0,0,0
9999 DATA -1,-1,-1