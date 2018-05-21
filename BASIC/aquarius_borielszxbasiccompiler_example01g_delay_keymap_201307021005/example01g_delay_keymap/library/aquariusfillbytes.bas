sub aquariusfillbytes(tvl as uinteger, tlen as uinteger, tram as uinteger):
  asm
    ld b,(ix+4)
    ld d,(ix+7)
    ld e,(ix+6)
    ld h,(ix+9)
    ld l,(ix+8)
   fillbytes:
    ld (hl),b
    inc hl
    dec de
    ld a,d
    or e
    jr nz,fillbytes
    end asm
  end sub

'- b  value
'- de count
'- hl ram-address


