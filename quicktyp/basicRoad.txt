1 ok = 0
5 rd$="         "
10 dim road$(256)
11 roaddepth =0
20 for e = 1 to 256 : road$(e) = chr$(32) : next e 

100 for i = 1 to 8
110 ri=2*rnd(1)-1
105 curves=8*rnd(1)+1
120 for rdrp=1 to  curves
200 n = n + ri
220 if n < 4 then n=8+(ri*-1)
300 for lr=1 to n: lrd$=lrd$+chr$(255): next lr
350 tr$=lrd$+rd$+rd$
400 for rr=1 to 36-len(tr$): rrd$=rrd$+chr$(255) : next rr
450 roaddepth = roaddepth+1
500 Road$(roaddepth) = tr$ + rrd$
700 lrd$="":rrd$=""

800 next rdrp
950 ri=2*rnd(1)-1


1000 next i

1200 for i = 1 to roaddepth: print Road$(i);"   ";i: next i

1500 ok =1
list:print
if ok = 0 then run



