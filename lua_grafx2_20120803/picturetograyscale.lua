-- picture to grayscale - from Paulo Silva, july 2012 - gpl licence
w,h=getpicturesize()
function grayscaleindexed(c)
  r,g,b=getcolor(c);return math.floor((b*11+r*30+g*59)/100);end
for y=0,h-1,1 do
  for x=0,w-1,1 do
    u=getpicturepixel(x,y)
    k=grayscaleindexed(u)
    putpicturepixel(x,y,k)
    end;end
for c=0,255,1 do setcolor(c,c,c,c);end
