sub aquariuswaitvbl():
  asm
    loopvbl:
    in a,($FD)
    jr z,loopvbl 
    end asm
  end sub


