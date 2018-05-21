function fastcall aquariuskeymap(tkeyr as ubyte) as ubyte:
  asm
    out ($FF),a
    in a,($FF)
    end asm
  end function    


