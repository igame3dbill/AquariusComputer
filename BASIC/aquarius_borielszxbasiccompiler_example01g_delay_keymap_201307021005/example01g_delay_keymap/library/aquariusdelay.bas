sub aquariusdelay(ttimd as uinteger):
  asm
    ld d,(ix+5)
    ld e,(ix+4)
    loopdelay:
    dec de
    ld a,d
    or e
    jp nz, loopdelay
    end asm
  end sub

