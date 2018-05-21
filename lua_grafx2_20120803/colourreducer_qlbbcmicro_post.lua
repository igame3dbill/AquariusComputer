
w,h=getpicturesize()
ok,xcell,ycell=inputbox("test","xcell",8,1,16,4,"ycell",8,1,16,4);
--ok=inputbox("test");
if ok==true then
  for y=0,h-1,1 do
    for x=0,w-1,1 do
      c=getpicturepixel(x,y)
      r,g,b=getcolor(c)
      c2=0 
      if b>127 then
        c2=c2+1
        end
      if r>127 then
        c2=c2+2
        end
      if g>127 then
        c2=c2+4
        end
      putpicturepixel(x,y,c2)
      end;end
  for c=0,255,1 do
    setcolor(c,0,0,0)
    end
  setcolor(1,0x00,0x00,0xFF);setcolor(2,0xFF,0x00,0x00);setcolor(3,0xFF,0x00,0xFF)
  setcolor(4,0x00,0xFF,0x00);setcolor(5,0x00,0xFF,0xFF);setcolor(6,0xFF,0xFF,0x00)
  setcolor(7,0xFF,0xFF,0xFF)
  end

