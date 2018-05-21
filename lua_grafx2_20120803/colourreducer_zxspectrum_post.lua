-- cell colour reducer - zxspectrum - from Paulo Silva, july 2012 - gpl licence
w,h=getpicturesize()
ok,halfb,timx=inputbox("Modify cell pixel size",
  "halfbright",180,0,255,1,
  "timex 8x1",0,0,1,0);
-- print ("");print (halfb);print (timx);print ("")
xcell=8;ycell=8
if timx==1 then ycell=1;end
function grayscaleindexed(c)
  r,g,b=getcolor(c);return math.floor((b*11+r*30+g*59)/100);end
if ok==true then
  celcnt={};for n=0,255,1 do celcnt[n+1]=0;end
  for y1=0,h-1,ycell do
    --statusmessage( tostring(math.floor(y1/ycell*100)).."%")
    --statusmessage("testing...")
    --updatescreen()
    for x1=0,w-1,xcell do
      for i=0,255,1 do celcnt[i+1]=0;end
      for y2=0,ycell-1,1 do
        for x2=0,xcell-1,1 do
           x=x1+x2;y=y1+y2;u=getpicturepixel(x,y)
           celcnt[u+1]=celcnt[u+1]+(1000*xcell*ycell)+math.random(0,950);end;end
      ikattr=0;paattr=0;ikcnt=0;pacnt=0
      for i=0,255,1 do
        if ikcnt<celcnt[i+1] then ikcnt=celcnt[i+1];ikattr=i;end;end
      celcnt[ikattr+1]=0
      for i=0,255,1 do
        if pacnt<celcnt[i+1] then pacnt=celcnt[i+1];paattr=i;end;end
      if grayscaleindexed(ikattr)>grayscaleindexed(paattr) then tmpr=ikattr;ikattr=paattr;paattr=tmpr;end
      wmid=math.floor((grayscaleindexed(paattr)+grayscaleindexed(ikattr))/2)
      for y2=0,ycell-1,1 do
        for x2=0,xcell-1,1 do
          x=x1+x2;y=y1+y2;u=getpicturepixel(x,y)
          if u==ikattr then
            idou=ikattr
          elseif u==paattr then
            idou=paattr
          else
            idou=ikattr
            if grayscaleindexed(u)>wmid then idou=paattr;end
            end
          putpicturepixel(x,y,idou)
          end;end
      end;end
  for y=0,h-1,1 do
    for x=0,w-1,1 do
      c2=0;fb=1;c=getpicturepixel(x,y);r,g,b=getcolor(c)
      if (r<halfb) and ((g<halfb)and (b<halfb)) then fb=0;end
      if b>(halfb/2) then c2=c2+1;end
      if r>(halfb/2) then c2=c2+2;end
      if g>(halfb/2) then c2=c2+4;end
      c2=c2+(fb*8)
      putpicturepixel(x,y,c2)
      end;end
  for c=0,255,1 do setcolor(c,0x00,0x00,0x00);end
  setcolor( 0,0x00, 0x00,0x00);setcolor( 1,0x00, 0x00,halfb);setcolor( 2,halfb, 0x00,0x00);setcolor( 3,halfb,0x00,halfb)
  setcolor( 4,0x00,halfb,0x00);setcolor( 5,0x00,halfb,halfb);setcolor( 6,halfb,halfb,0x00);setcolor( 7,halfb,halfb,halfb)
  setcolor( 8,0x00, 0x00,0x00);setcolor( 9,0x00, 0x00, 0xFF);setcolor(10,0xFF, 0x00,0x00);setcolor(11,0xFF,0x00,0xFF)
  setcolor(12,0x00, 0xFF,0x00);setcolor(13,0x00, 0xFF, 0xFF);setcolor(14,0xFF, 0xFF,0x00);setcolor(15,0xFF,0xFF,0xFF)
  for y1=0,h-1,ycell do
    for x1=0,w-1,xcell do
      hbc=0
      for y2=0,ycell-1,1 do
        for x2=0,xcell-1,1 do
          x=x1+x2;y=y1+y2
          c=getpicturepixel(x,y)
          fb=math.floor(c/8)
          hbc=hbc+fb
          if c==0 then hbc=hbc+.5;end
          if c==8 then hbc=hbc-.5;end
          end;end
      hbc2=math.floor(hbc/(1+xcell*ycell/2))
      --print (hbc2)
      for y2=0,ycell-1,1 do
        for x2=0,xcell-1,1 do
          x=x1+x2;y=y1+y2;c=(getpicturepixel(x,y)%8)+(hbc2*8);putpicturepixel(x,y,c)
          end;end
      end;end
  end


