10 REM DISPLAY A MAZE.    
20 REM SEED WILL PRODUCE A DIFFERENT MAZE. 
30 REM 
40 REM WRITTEN BY JAMES L. DEAN 
50 REM 406 40TH STREET 
60 REM NEW ORLEANS, LA 70124 
70 REM DEFINT A-Z command not needed
80 PRINT 
90 PRINT "Number of columns"; 
100 INPUT C 
110 IF C > 1 THEN 140 
120 PRINT "? The number of columns must be at least 2" 
130 GOTO 90 
140 PRINT 
150 O=2*C 
160 P=O+1 
170 PRINT "Number of rows"; 
180 INPUT R 
190 IF R > 1 THEN 220 
200 PRINT "? The number of rows must be at least 2" 
210 GOTO 170 
220 PRINT 
230 W=2*R+1 
240 DIM Z(P*W+2*C*R+200) 
250 PRINT "Seed"; 
260 INPUT S 
270 PRINT 
280 S=ABS(S) 
290 FOR T=1 TO 8 
300 G=INT(S/29) 
310 H=S-29*G 
320 S=G 
330 IF H <> 0 THEN 350 
340 H=19 
350 Z(T)=H 
360 NEXT T 
370 Z(9)=-1 
380 Z(105)=0 
390 Z(10)=0 
400 Z(106)=1 
410 Z(11)=1 
420 Z(107)=0 
430 Z(12)=0 
440 Z(108)=-1 
450 V=8 
460 N=104 
470 FOR A=1 TO 4 
480   FOR B=1 TO 4 
490     IF A = B THEN 690 
500       FOR D=1 TO 4 
510         IF A = D THEN 680 
520         IF B = D THEN 680 
530           FOR E=1 TO 4 
540             IF A = E THEN 670 
550             IF B = E THEN 670 
560             IF D = E THEN 670 
570               Z(A+V)=Z(9) 
580               Z(A+N)=Z(105) 
590               Z(B+V)=Z(10) 
600               Z(B+N)=Z(106) 
610               Z(D+V)=Z(11) 
620               Z(D+N)=Z(107) 
630               Z(E+V)=Z(12) 
640               Z(E+N)=Z(108) 
650               N=N+4 
660               V=V+4 
670           NEXT E 
680       NEXT D 
690   NEXT B 
700 NEXT A 
710 T=201 
720 FOR U=1 TO W 
730   FOR M=1 TO P 
740     Z(T)=1 
750     T=T+1 
760   NEXT M 
770 NEXT U 
780 T=INT(C/2) 
790 T=C-2*T 
800 IF T <> 0 THEN 830 
810   X=C 
820 GOTO 840 
830 X=C+1 
840 T=INT(R/2) 
850 T=R-2*T 
860 IF T <> 0 THEN 890 
870   Y=R 
880 GOTO 900 
890 Y=R+1 
900 V=200+P*W 
910 F=V 
920 GOTO 1300 
930 Z(202)=0 
940 Z(200+P*(W-1)+O)=0 
950 PRINT ". "; 
960 T=1 
970 FOR M=3 TO P 
980   IF T = 0 THEN 1010 
990     PRINT "."; 
1000   GOTO 1020 
1010     PRINT "_"; 
1020   T=1-T 
1030 NEXT M 
1040 PRINT 
1050 U=3 
1060 V=200+P 
1070 N=V+P 
1080 IF U > W THEN 1760 
1090   T=1 
1100   FOR M=1 TO P 
1110     N=N+1 
1120     V=V+1 
1130     IF T <> 0 THEN 1190 
1140       IF Z(N) = 1 THEN 1170 
1150         PRINT " "; 
1160       GOTO 1230 
1170         PRINT "_"; 
1180     GOTO 1230 
1190       IF Z(V) = 1 THEN 1220 
1200         PRINT "."; 
1210       GOTO 1230 
1220         PRINT "!"; 
1230     T=1-T 
1240   NEXT M 
1250   PRINT 
1260   U=U+2 
1270   N=N+P 
1280   V=V+P 
1290 GOTO 1080 
1300 Z(200+P*(Y-1)+X)=0 
1310 I=1 
1320   J=Z(1) 
1330   G=1 
1340   FOR H=2 TO 8 
1350     T=Z(H) 
1360     Z(G)=T 
1370     J=J+T 
1380     IF J <= 29 THEN 1400 
1390       J=J-29 
1400     G=H 
1410   NEXT H 
1420   Z(8)=J 
1430 IF J > 24 THEN 1320 
1440 IF I > 4 THEN 1700 
1450   N=I+4*(J-1) 
1460   K=X+2*Z(8+N) 
1470   IF K <= 1 THEN 1680 
1480   IF K >= P THEN 1680 
1490     Q=Y+2*Z(104+N) 
1500     IF Q <= 1 THEN 1680 
1510     IF Q >= W THEN 1680 
1520       IF Z(200+P*(Q-1)+K) <> 1 THEN 1680 
1530         IF X <> K THEN 1560 
1540           Z(200+P*(((Y+Q)/2)-1)+K)=0 
1550         GOTO 1570 
1560           Z(200+P*(Q-1)+(X+K)/2)=0 
1570         X=K 
1580         Y=Q 
1590         V=V+1 
1600         Z(V)=I 
1610         V=V+1 
1620         Z(V)=J 
1630         GOTO 1300 
1640         N=I+4*(J-1) 
1650         X=X-2*Z(8+N) 
1660         Y=Y-2*Z(104+N) 
1670 GOTO 1440 
1680   I=I+1 
1690 GOTO 1440 
1700   J=Z(V) 
1710   V=V-1 
1720   I=Z(V) 
1730   V=V-1 
1740   IF F = V THEN 930 
1750 GOTO 1640 
1760 END 