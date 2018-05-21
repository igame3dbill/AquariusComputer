w,h=getpicturesize()
ok,op1,op2,op3,op4,op5,op6=inputbox("?","ibm-cga",0,0,1,-1,"aquarius",0,0,1,-1,"c64",0,0,1,-1,"thomson",0,0,1,-1,"msx1",0,0,1,-1,"mz700",0,0,1,-1)
if ok==true then
  rpal={};gpal={};bpal={};
  for n=0,255,1 do
    rpal[n+1],gpal[n+1],bpal[n+1]=getcolor(n)
    setcolor(n,0x00,0x00,0x00)
    end
  if op1==1 then -- ibm-cga
    setcolor( 0,0x00,0x00,0x00);setcolor( 1,0x00,0x00,0xAA);setcolor( 2,0x00,0xAA,0x00);setcolor( 3,0x00,0xAA,0xAA)
    setcolor( 4,0xAA,0x00,0x00);setcolor( 5,0xAA,0x00,0xAA);setcolor( 6,0xAA,0x55,0x00);setcolor( 7,0xAA,0xAA,0xAA)
    setcolor( 8,0x55,0x55,0x55);setcolor( 9,0x55,0x55,0xFF);setcolor(10,0x55,0xFF,0x55);setcolor(11,0x55,0xFF,0xFF)
    setcolor(12,0xFF,0x55,0x55);setcolor(13,0xFF,0x55,0xFF);setcolor(14,0xFF,0xFF,0x55);setcolor(15,0xFF,0xFF,0xFF)
    end
  if op2==1 then -- aquarius
    setcolor( 0,0x10,0x10,0x10);setcolor( 1,0xf0,0x10,0x10);setcolor( 2,0x10,0xf0,0x10);setcolor( 3,0xf0,0xe8,0x10)
    setcolor( 4,0x20,0x20,0xd8);setcolor( 5,0xf0,0x10,0xf0);setcolor( 6,0x30,0xc0,0xc0);setcolor( 7,0xf0,0xf0,0xf0)
    setcolor( 8,0xc0,0xc0,0xc0);setcolor( 9,0x28,0xa8,0xa8);setcolor(10,0xc0,0x20,0xc0);setcolor(11,0x40,0x10,0x88)
    setcolor(12,0xf0,0xf0,0x70);setcolor(13,0x20,0xc8,0x40);setcolor(14,0xa8,0x20,0x20);setcolor(15,0x30,0x30,0x30)
    end
  if op3==1 then -- c64
    setcolor( 0,0x00,0x00,0x00);setcolor( 1,0xff,0xff,0xff);setcolor( 2,0x88,0x39,0x32);setcolor( 3,0x67,0xB6,0xBD)
    setcolor( 4,0x8B,0x3F,0x96);setcolor( 5,0x55,0xA0,0x49);setcolor( 6,0x40,0x31,0x8D);setcolor( 7,0xBF,0xCE,0x72)
    setcolor( 8,0x8B,0x54,0x29);setcolor( 9,0x57,0x42,0x00);setcolor(10,0xB8,0x69,0x62);setcolor(11,0x50,0x50,0x50)
    setcolor(12,0x78,0x78,0x78);setcolor(13,0x94,0xE0,0x89);setcolor(14,0x78,0x69,0xC4);setcolor(15,0x9F,0x9F,0x9F)
    end
  if op4==1 then -- thomson
    setcolor( 0,0x00,0x00,0x00);setcolor( 1,0xff,0x00,0x00);setcolor( 2,0x00,0xff,0x00);setcolor( 3,0xff,0xff,0x00)
    setcolor( 4,0x00,0x00,0xff);setcolor( 5,0xff,0x00,0xff);setcolor( 6,0x00,0xff,0xff);setcolor( 7,0xff,0xff,0xff)
    setcolor( 8,0xbb,0xbb,0xbb);setcolor( 9,0xdd,0x77,0x77);setcolor(10,0x77,0xdd,0x77);setcolor(11,0xdd,0xdd,0x77)
    setcolor(12,0x77,0x77,0xdd);setcolor(13,0xdd,0x77,0xee);setcolor(14,0xbb,0xff,0xff);setcolor(15,0xee,0xbb,0x00)
    end
  if op5==1 then -- msx1
    setcolor( 0,0x00,0x00,0x00);setcolor( 1,0x00,0x00,0x00);setcolor( 2,0x3E,0xB8,0x49);setcolor( 3,0x74,0xD0,0x7D)
    setcolor( 4,0x59,0x55,0xE0);setcolor( 5,0x80,0x76,0xF1);setcolor( 6,0xB9,0x5E,0x51);setcolor( 7,0x65,0xDB,0xEF)
    setcolor( 8,0xDB,0x65,0x59);setcolor( 9,0xFF,0x89,0x7D);setcolor(10,0xCC,0xC3,0x5E);setcolor(11,0xDE,0xD0,0x87)
    setcolor(12,0x3A,0xA2,0x41);setcolor(13,0xB7,0x66,0xB5);setcolor(14,0xCC,0xCC,0xCC);setcolor(15,0xFF,0xFF,0xFF)
    end
  if op6==1 then -- mz700
    setcolor( 0,0x00,0x00,0x00);setcolor( 1,0x00,0x00,0xFF);setcolor( 2,0xFF,0x00,0x00);setcolor( 3,0xFF,0x00,0xFF)
    setcolor( 4,0x00,0xFF,0x00);setcolor( 5,0x00,0xFF,0xFF);setcolor( 6,0xFF,0xFF,0x00);setcolor( 7,0xFF,0xFF,0xFF)
    end
  for y=0,h-1,1 do
    for x=0,w-1,1 do
      c=getpicturepixel(x,y)
      c2=matchcolor(rpal[c+1],gpal[c+1],bpal[c+1])
      putpicturepixel(x,y,c2)
      end;end
  end

