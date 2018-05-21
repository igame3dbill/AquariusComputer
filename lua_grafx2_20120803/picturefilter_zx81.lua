-- picture converter - zx81 - from Paulo Silva, july 2012 - gpl licence
w,h=getpicturesize()
function grayscaleindexed(c)
  r,g,b=getcolor(c);return math.floor((b*11+r*30+g*59)/100);end
wo=w;ho=h
hn=ho+64+8;wn=wo+8
if wn<256 then wn=256;end
setpicturesize(wn,hn)
ok,pixp,blol=inputbox("zx81","pixel-perfect",0,0,1,0,"blocks only",0,0,1,0);
for y=0,h-1,1 do
  for x=0,w-1,1 do
    u=getpicturepixel(x,y)
    k=grayscaleindexed(u)
    putpicturepixel(x,y,k)
    end;end
for c=0,255,1 do setcolor(c,c,c,c);end
picdump1_st={
"44444444000044444444000000000000444444440000444444440000000000000404040444444444040404044444444444444444444444444444444444444444",
"44444444000044444444000000000000444444440000444444440000000000004040404044444444404040404404404444400044444404444444444444000044",
"44444444000044444444000000000000444444440000444444440000000000000404040444444444040404044404404444044404440000044444444440444404",
"44444444000044444444000000000000444444440000444444440000000000004040404044444444404040404444444440000444440404444440444444444044",
"44444444444444444444444444444444000044440000444400004444000044440404040404040404444444444444444444044444440000044444444444440444",
"44444444444444444444444444444444000044440000444400004444000044444040404040404040444444444444444444044444444404044444444444444444",
"44444444444444444444444444444444000044440000444400004444000044440404040404040404444444444444444440000004440000044440444444440444",
"44444444444444444444444444444444000044440000444400004444000044444040404040404040444444444444444444444444444404444444444444444444",
"44444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444",
"44444044440444444444444444444444444444444444444444444444444444444444444444444444444444444444444444000044444004444400004444000044",
"44440444444044444440444444444044444444444444044444444444444040444444440444404444444444444444444440444004440404444044440440444404",
"44440444444044444444044444440444440000044444044444444444444404444444404444444444444444444444444440440404444404444444440444440044",
"44440444444044444444404444404444444444444400000444000004440000044444044444444444444444444444444440404404444404444400004444444404",
"44440444444044444444044444440444440000044444044444444444444404444440444444404444444404444440044440044404444404444044444440444404",
"44444044440444444440444444444044444444444444044444444444444040444404444444404444444404444440044444000044440000044000000444000044",
"44444444444444444444444444444444444444444444444444444444444444444444444444044444444044444444444444444444444444444444444444444444",
"44444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444",
"44440444400000044400004440000004440000444400004444000044400000444400004440000444400000044000000444000044404444044400000444444404",
"44400444404444444044444444444404404444044044440440444404404444044044440440444044404444444044444440444404404444044444044444444404",
"44040444400000444000004444444044440000444044440440444404400000444044444440444404400000444000004440444444400000044444044444444404",
"40440444444444044044440444440444404444044400000440000004404444044044444440444404404444444044444440440004404444044444044440444404",
"40000004404444044044440444404444404444044444440440444404404444044044440440444044404444444044444440444404404444044444044440444404",
"44440444440000444400004444404444440000444400004440444404400000444400004440000444400000044044444444000044404444044400000444000044",
"44444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444",
"44444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444",
"40444044404444444044440440444404440000444000004444000044400000444400004400000004404444044044440440444404404444040444440440000004",
"40440444404444444004400440044404404444044044440440444404404444044044444444404444404444044044440440444404440440444044404444444044",
"40004444404444444040040440404404404444044044440440444404404444044400004444404444404444044044440440444404444004444404044444440444",
"40440444404444444044440440440404404444044000004440404404400000444444440444404444404444044044440440444404444004444440444444404444",
"40444044404444444044440440444004404444044044444440440404404440444044440444404444404444044404404440400404440440444440444444044444",
"40444404400000044044440440444404440000444044444444000044404444044400004444404444440000444440044444044044404444044440444440000004",
"44444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444"}
for y=0,table.getn(picdump1_st)-1,1 do
  tm_st=picdump1_st[y+1]
  for x=0,string.len(tm_st)-1,1 do
    a=tonumber( string.sub(tm_st,x+1,x+1),16)
    c=math.floor(a*255/4)
    putpicturepixel(x,ho+y+8,c)
    putpicturepixel(x,ho+y+32+8,255-c)
    putpicturepixel(x+128,ho+y+8,c)
    putpicturepixel(x+128,ho+y+32+8,255-c)
    end;end
if pixp~=1 then
  statusmessage("pixp~=1 ...")
  waitbreak(0)
  for y1=0,h-1,2 do for x1=0,w-1,2 do
    statusmessage("blur:".. (math.floor(y1*100/h)) .."%  " )
    waitbreak(0)
    kacm=0
    for y2=0,1,1 do for x2=0,1,1 do
      x=x1+x2;y=y1+y2;kacm=kacm+getpicturepixel(x,y)
      end;end
    for y2=0,1,1 do for x2=0,1,1 do
      x=x1+x2;y=y1+y2;putpicturepixel(x,y,math.floor(kacm/4))
      end;end
    end;end
  for y1=ho+8,ho+64+8-1,2 do for x1=128,256-1,2 do
    kacm=0
    for y2=0,1,1 do for x2=0,1,1 do
      x=x1+x2;y=y1+y2;kacm=kacm+getpicturepixel(x,y)
      end;end
    for y2=0,1,1 do for x2=0,1,1 do
      x=x1+x2;y=y1+y2;putpicturepixel(x,y,math.floor(kacm/4))
      end;end
    end;end
  end
yqst=1;xqlm=15;stxy1=1
if blol==1 then yqst=4;xqlm=10;end
if pixp~=1 then stxy1=2;end
for y1=0,ho-1,8 do for x1=0,wo-1,8 do dfi=65536;fgx=0;fgy=0
  statusmessage("converting:".. (math.floor(y1*100/ho)) .."%  " )
  waitbreak(0)
  for yq=0,7,yqst do for xq=0,xqlm,1 do cnt=0
    for y2=0,7,stxy1 do for x2=0,7,stxy1 do
      q1=getpicturepixel(x1+x2,y1+y2)
      q2=getpicturepixel(128+(xq*8)+x2,ho+8+(yq*8)+y2)
      dq=math.abs(q2-q1);cnt=cnt+dq
      end;end
    if cnt<dfi then dfi=cnt;fgx=xq;fgy=yq;end
    end;end
  for y2=0,7,1 do for x2=0,7,1 do
    c=getpicturepixel((fgx*8)+x2,ho+8+(fgy*8)+y2)
    putpicturepixel(x1+x2,y1+y2,c)
    end;end
  end;end
finalizepicture()
setpicturesize(w,h)
