#include "library/aquariusfillbytes.bas"
#include "library/aquariuscls.bas"
#include "library/aquariusputchar.bas"
#include "library/aquariusputtile.bas"
'#include "library/aquariuswaitvbl.bas"
#include "library/aquariusdelay.bas"
#include "library/aquariuskeymap.bas"
#include "library/aquariuswritetext.bas"

dim ee0 as uinteger at $3800
dim ee1 as uinteger at $3802
dim xposp as uinteger at $3804
dim yposp as uinteger at $3806

xposp=10:yposp=10

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
  aquariusdelay(40000)
  next

aquariusputchar(38,2,code("a"),$4B)

aquariuswritetext(3,2,@text01,12,$B2)

loop01:
aquariusputtile(xposp,yposp,3,3,@tile02)
if ((aquariuskeymap(0) band 32)<>0) and xposp<37 then:xposp=xposp+1:end if
if ((aquariuskeymap(0) band 16)<>0) and xposp>0  then:xposp=xposp-1:end if
if ((aquariuskeymap(0) band  2)<>0) and yposp<22 then:yposp=yposp+1:end if
if ((aquariuskeymap(0) band  4)<>0) and yposp>0  then:yposp=yposp-1:end if
aquariusputtile(xposp,yposp,3,3,@tile01)

'aquariuswaitvbl()
aquariusdelay(5000)

poke $3005,$B5
poke $3405,255-aquariuskeymap(0)

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




