-- picture offset - jul'12, from Paulo Silva
-- This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; version 2 of the License. See <http://www.gnu.org/licenses/>
w,h=getpicturesize()
ok,xoff,yoff=inputbox("Picture Offset","x",w/2,0,w,0,"y",h/2,0,h,0);
if ok==true then
  finalizepicture()
  setpicturesize(w,h*2)
  for y=0,h-1,1 do
    statusmessage("step 1:".. (math.floor(y*100/h)) .."%  " )
    for x=0,w-1,1 do
      c=getpicturepixel(x,y)
      putpicturepixel((x+xoff)%w,h+((y+yoff)%h),c)
      end;end
  for y=0,h-1,1 do
    statusmessage("step 2:".. (math.floor(y*100/h)) .."%  " )
    for x=0,w-1,1 do
      c=getpicturepixel(x,y+h)
      putpicturepixel(x,y,c)
      end;end
  finalizepicture()
  setpicturesize(w,h)
  end
