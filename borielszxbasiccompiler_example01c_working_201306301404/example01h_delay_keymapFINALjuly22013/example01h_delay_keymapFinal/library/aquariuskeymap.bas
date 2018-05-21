function fastcall aquariuskeymap(tkeyr as ubyte) as ubyte:
  asm
    xor $FF
    ld b,a
    ld c,$FF
    in a,(c)
    end asm
  end function

