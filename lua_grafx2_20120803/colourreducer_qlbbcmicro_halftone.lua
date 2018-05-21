-- cell colour reducer - sinclairql/bbcmicro - from Paulo Silva, july 2012 - gpl licence
w,h=getpicturesize()
ok,op1,op2,op3,op4,op5=inputbox("primary-clusters",
      "cluster 1",1,0,1,-1,"cluster 2",0,0,1,-1,"cluster 3",0,0,1,-1,"cluster 4",0,0,1,-1,"cluster 5",0,0,1,-1);
if ok==true then
  if op1==1 then
    ampl=5;clust={};clust[0+1]={0,1,2,3};clust[1+1]={2,3,0,1};clust[2+1]={0,1,2,3};clust[3+1]={2,3,0,1}
    end
  if op2==1 then
    ampl=5;clust={};clust[0+1]={0,2,0,2};clust[1+1]={1,3,1,3};clust[2+1]={2,0,2,0};clust[3+1]={3,1,3,1}
    end
  if op3==1 then
    ampl=3;clust={};clust[0+1]={0,1,0,1};clust[1+1]={1,0,1,0};clust[2+1]={0,1,0,1};clust[3+1]={1,0,1,0}
    end
  if op4==1 then
    ampl=9;clust={};clust[0+1]={0,1,4,2};clust[1+1]={3,6,7,5};clust[2+1]={4,2,0,1};clust[3+1]={7,5,3,6}
    end
  if op5==1 then
    ampl=17;clust={};clust[0+1]={00,12,03,15};clust[1+1]={08,04,11,07};clust[2+1]={02,14,01,13};clust[3+1]={10,06,09,05}
    end
  for y=0,h-1,1 do
    for x=0,w-1,1 do
      c=getpicturepixel(x,y)
      r,g,b=getcolor(c)
      patgf=math.floor(((1+clust[x%4+1][y%4+1])*255)/ampl)
      c2=0 
      if b>patgf then c2=c2+1;end
      if r>patgf then c2=c2+2;end
      if g>patgf then c2=c2+4;end
      putpicturepixel(x,y,c2)
      end;end
  for c=0,255,1 do setcolor(c,0,0,0);end
  setcolor(1,0x00,0x00,0xFF);setcolor(2,0xFF,0x00,0x00);setcolor(3,0xFF,0x00,0xFF)
  setcolor(4,0x00,0xFF,0x00);setcolor(5,0x00,0xFF,0xFF);setcolor(6,0xFF,0xFF,0x00)
  setcolor(7,0xFF,0xFF,0xFF)
  end

