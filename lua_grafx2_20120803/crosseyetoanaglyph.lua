-- crosseye to anaglyph - from Paulo Silva, july 2012 - gpl licence
ok,rbrc,rbcr,rbby,rbyb=inputbox("crosseye to anaglyph","rc",1,0,1,-1,"cr",0,0,1,-1,"by",0,0,1,-1,"yb",0,0,1,-1);
w,h=getpicturesize()
wm=math.floor(w/2)
function grayscaleindexed(c)
  r,g,b=getcolor(c);return math.floor((b*11+r*30+g*59)/100);end
for y=0,h-1,1 do
  statusmessage("step 1:".. (math.floor(y*100/h)) .."%  " )
  waitbreak(0)
  for x=0,w-1,1 do
    u=getpicturepixel(x,y)
    k=grayscaleindexed(u)
    putpicturepixel(x,y,k)
    end;end
for c=0,255,1 do setcolor(c,c,c,c);end
for y=0,h-1,1 do
  statusmessage("step 2:".. (math.floor(y*100/h)) .."%  " )
  waitbreak(0)
  for x=0,wm-1,1 do
    slt=getpicturepixel(x,y)
    srt=getpicturepixel(x+wm,y)
    k=(math.floor(slt/16))*16+(math.floor(srt/16))
    putpicturepixel(x,y,k)
    end;end
for c1=0,15,1 do
  for c2=0,15,1 do
    c1b=math.floor((c1*255)/15)
    c2b=math.floor((c2*255)/15)
    if rbrc==1 then setcolor(c1*16+c2,c1b,c2b,c2b);end
    if rbcr==1 then setcolor(c1*16+c2,c2b,c1b,c1b);end
    if rbby==1 then setcolor(c1*16+c2,c2b,c2b,c1b);end
    if rbyb==1 then setcolor(c1*16+c2,c1b,c1b,c2b);end
    end;end
finalizepicture()
setpicturesize(wm,h)

