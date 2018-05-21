100 FOR N=1TO 22
120 PRINT "--------------------------------"
130 NEXT N
140 FOR N=1TO INT (RND *32)
   150 PRINT AT INT (RND *21),INT (RND *31);"*"
   160 NEXT N
   170 PRINT AT 21,4;"----[A][N][Y][ ][K][E][Y][ ][F][O][R][ ][M][O][R][E]----"
  210 IF INKEY$ =""THEN GOTO 10
  220 PRINT AT 21,0;"--------------------------------"
  230 FOR N=1TO INT (RND *32)
  240 PRINT AT INT (RND *21),INT (RND *31);"*"
  250 NEXT N
  260 SCROLLw
  280 GOTO 220
 

N = 85 00 00 00 00
