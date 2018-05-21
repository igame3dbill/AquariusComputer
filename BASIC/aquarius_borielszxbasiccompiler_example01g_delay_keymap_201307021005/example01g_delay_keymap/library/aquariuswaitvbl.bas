sub aquariuswaitvbl():
  asm
    loopvbl:
    in a,($FD)
    and $01
    jp nz,loopvbl 
    end asm
  end sub


'- ;(or perhaps "jp z,loopvbl" ?)
'asm
'  halt
'  end asm

