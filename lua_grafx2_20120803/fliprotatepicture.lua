-- flip and rotate picture - Paulo Silva, July 2012
-- This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; version 2 of the License. See <http://www.gnu.org/licenses/>
w,h=getpicturesize();
ok,ibnorot,ibrotcw,ibrotccw,ibrotupdn,ibflipx,ibflipy=inputbox("flip picture","0º",0,0,1,-1,"90ºcw",1,0,1,-1,"90ºccw",0,0,1,-1,"180º",0,0,1,-1,"flip x",0,0,1,0,"flip y",0,0,1,0);  -- note: this file needed to be save in iso encoding, because the 'º' character
flipx=ibflipx;flipy=ibflipy;rotxy=0
if ibrotcw==1 then rotxy=(1+rotxy)%2;flipx=(1+flipx)%2;end
if ibrotccw==1 then rotxy=(1+rotxy)%2;flipy=(1+flipy)%2;end
if ibrotupdn==1 then flipx=(1+flipx)%2;flipy=(1+flipy)%2;end
wh=w;if h>wh then wh=h;end
if ok==true then
  if rotxy==1 then
    setpicturesize(wh,wh)
    for x=1,wh-1,1 do 
      for y=0,x-1,1 do 
        c1=getpicturepixel(x,y);c2=getpicturepixel(y,x) 
        putpicturepixel(x,y,c2);putpicturepixel(y,x,c1) 
        end;end
    finalizepicture()
    setpicturesize(h,w)
    tm=h;h=w;w=tm
    end
  if flipx==1 then
    for y=0,h-1,1 do 
      for x=0,w/2,1 do 
        c1=getpicturepixel(x,y);c2=getpicturepixel(w-x-1,y) 
        putpicturepixel(x,y,c2);putpicturepixel(w-x-1,y,c1) 
        end;end;end
  if flipy==1 then
    for y=0,h/2,1 do 
      for x=0,w-1,1 do 
        c1=getpicturepixel(x,y);c2=getpicturepixel(x,h-y-1) 
        putpicturepixel(x,y,c2);putpicturepixel(x,h-y-1,c1) 
        end;end;end
  end

