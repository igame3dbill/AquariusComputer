#include "library/aquariusfillbytes.bas"
#include "library/aquariuscls.bas"
#include "library/aquariusputchar.bas"
#include "library/aquariusputtile.bas"
#include "library/aquariuswaitvbl.bas"
#include "library/aquariusdelay.bas"
#include "library/aquariuskeymap.bas"
#include "library/aquariuswritetext.bas"

dim ee0 as uinteger at $3800
dim ee1 as uinteger at $3802
dim xposp0 as uinteger at $3810:dim yposp0 as uinteger at $3812
dim xposp1 as uinteger at $3814:dim yposp1 as uinteger at $3816
dim xposp2 as uinteger at $3818:dim yposp2 as uinteger at $381A

xposp0=10:yposp0=10
xposp1=25:yposp1=10
xposp2=10:yposp2=18

'- aquariuscls($86,$78) '- not working properly, weird...
aquariusfillbytes($86,$03E8,$2FFF) '- chr
aquariusfillbytes($8F,$03E8,$3400) '- attr

for ee0=0 to 15:for ee1=0 to 15
  poke $3000+(7+ee1)*40+3+ee0,ee1*16+ee0
  poke $3400+(7+ee1)*40+3+ee0,$07
  poke $3400+(7+ee1)*40+21+ee0,ee1*16+ee0
  next:next

for ee0=0 to 15
  poke $3400+5*40+3+ee0,$11*ee0
  'aquariuswaitvbl()
  aquariusdelay(5000)
  next

aquariusputchar(38,2,code("a"),$4B)

aquariuswritetext(3,2,@text01,12,$B2)

loop01:

aquariusputtile(xposp0,yposp0,3,3,@tile03)
aquariusputtile(xposp1,yposp1,3,3,@tile03)
aquariusputtile(xposp2,yposp2,3,3,@tile03)

if ((aquariuskeymap(%10000000) band  2)<>0) and yposp0<22 then:yposp0=yposp0+1:end if  '- w
if ((aquariuskeymap(%01000000) band  4)<>0) and yposp0>0  then:yposp0=yposp0-1:end if  '- s
if ((aquariuskeymap(%00100000) band 16)<>0) and xposp0>0  then:xposp0=xposp0-1:end if  '- a
if ((aquariuskeymap(%01000000) band 32)<>0) and xposp0<37 then:xposp0=xposp0+1:end if  '- d

if ((aquariuskeymap(%00100000) band  2)<>0) and yposp1<22 then:yposp1=yposp1+1:end if  '- t
if ((aquariuskeymap(%00010000) band  4)<>0) and yposp1>0  then:yposp1=yposp1-1:end if  '- g
if ((aquariuskeymap(%00001000) band 16)<>0) and xposp1>0  then:xposp1=xposp1-1:end if  '- f
if ((aquariuskeymap(%00010000) band 32)<>0) and xposp1<37 then:xposp1=xposp1+1:end if  '- h

if ((aquariuskeymap(%00001000) band  2)<>0) and yposp2<22 then:yposp2=yposp2+1:end if  '- i
if ((aquariuskeymap(%00000100) band  4)<>0) and yposp2>0  then:yposp2=yposp2-1:end if  '- k
if ((aquariuskeymap(%00000010) band 16)<>0) and xposp2>0  then:xposp2=xposp2-1:end if  '- j
if ((aquariuskeymap(%00000100) band 32)<>0) and xposp2<37 then:xposp2=xposp2+1:end if  '- l

aquariusputtile(xposp0,yposp0,3,3,@tile01)
aquariusputtile(xposp1,yposp1,3,3,@tile01)
aquariusputtile(xposp2,yposp2,3,3,@tile01)

'aquariusdelay(5000)
aquariuswaitvbl()

poke $3006,$B5:poke $3406,255-aquariuskeymap(255)

poke $3408,255-aquariuskeymap(128)
poke $3409,255-aquariuskeymap(64)
poke $340A,255-aquariuskeymap(32)
poke $340B,255-aquariuskeymap(16)
poke $340C,255-aquariuskeymap(8)
poke $340D,255-aquariuskeymap(4)
poke $340E,255-aquariuskeymap(2)
poke $340F,255-aquariuskeymap(1)
aquariusfillbytes($B5,8,$3008)

goto loop01

text01:
asm
  defb "Hello World!"
  end asm

tile01:
asm
  defb $7C,$5B,$29
  defb $23,$40,$3D
  defb $7E,$2F,$20
  defb $80,$70,$60
  defb $80,$70,$80
  defb $10,$70,$80
  end asm

tile02:
asm
  defb $20,$20,$20
  defb $20,$20,$20
  defb $20,$20,$20
  defb $70,$70,$70
  defb $70,$70,$70
  defb $70,$70,$70
  end asm

tile03:
asm
  defb $86,$86,$86
  defb $86,$86,$86
  defb $86,$86,$86
  defb $8F,$8F,$8F
  defb $8F,$8F,$8F
  defb $8F,$8F,$8F
  end asm




