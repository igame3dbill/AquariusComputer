sub aquariusputchar(txp as uinteger, typ as uinteger, tchr as ubyte, tatr as ubyte):
  poke $3000+typ*40+txp,tchr:poke $3400+typ*40+txp,tatr
  end sub
