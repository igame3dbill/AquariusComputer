-- picture resize - jul'12, from Paulo Silva
-- This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; version 2 of the License. See <http://www.gnu.org/licenses/>
w,h=getpicturesize()
ok,wn,hn=inputbox("Picture Resize","x",w,0,4096,0,"y",h,0,4096,0);
if ok==true  then
  if ((w~=wn) or (h~=hn)) then
    wnt=w;hnt=h
    if wn>w then wnt=wn;end
    if hn>h then hnt=hn;end
    finalizepicture()
    setpicturesize(wnt,hnt)
    -- some dirty code below, this can be significantly smaller
    if ((wn>=w) and (hn>=h)) then
      for y=hn-1,0,-1 do
        y2=math.floor((y*h)/hn)
        statusmessage("progress:"..(100-math.floor(y*100/hn)).."%  " )
        for x=wn-1,0,-1 do
          x2=math.floor((x*w)/wn)
          c=getpicturepixel(x2,y2)
          putpicturepixel(x,y,c)
          end;end;end
    if ((wn<w) and (hn>=h)) then
      for y=hn-1,0,-1 do
        y2=math.floor((y*h)/hn)
        statusmessage("progress:"..(100-math.floor(y*100/hn)).."%  " )
        for x=0,wn-1,1 do
          x2=math.floor((x*w)/wn)
          c=getpicturepixel(x2,y2)
          putpicturepixel(x,y,c)
          end;end;end
    if ((wn>=w) and (hn<h)) then
      for y=0,hn-1,1 do
        y2=math.floor((y*h)/hn)
        statusmessage("progress:"..(math.floor(y*100/hn)).."%  " )
        for x=wn-1,0,-1 do
          x2=math.floor((x*w)/wn)
          c=getpicturepixel(x2,y2)
          putpicturepixel(x,y,c)
          end;end;end
    if ((wn<w) and (hn<h)) then
      for y=0,hn-1,1 do
        y2=math.floor((y*h)/hn)
        statusmessage("progress:"..(math.floor(y*100/hn)).."%  " )
        for x=0,wn-1,1 do
          x2=math.floor((x*w)/wn)
          c=getpicturepixel(x2,y2)
          putpicturepixel(x,y,c)
          end;end;end
    finalizepicture()
    setpicturesize(wn,hn)
    end
  end
