-- picture canvas - jul'12, from Paulo Silva
-- This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; version 2 of the License. See <http://www.gnu.org/licenses/>
w,h=getpicturesize()
bgc=getbackcolor()

ok,wn,hn=inputbox("Picture Canvas","x",w,0,4096,0,"y",h,0,4096,0);

-- ok,wn,hn,xoff,yoff=inputbox("Picture Canvas","x",w,0,4096,0,"y",h,0,4096,0,"x offset",0,-4096,4096,0,"y offset",0,-4096,4096,0);
if ok==true  then
  finalizepicture()
  setpicturesize(wn,hn)
  end
  

