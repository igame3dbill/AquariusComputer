sub aquariuswritetext(txpos as uinteger,typos as uinteger, tstr as uinteger,tlen as uinteger,tatr as ubyte):
  dim txlp as uinteger at $3900:dim tylp as uinteger at $3902
    for txlp=0 to tlen-1
      poke $3000+typos*40+txpos+txlp,peek(tstr+txlp)
      poke $3400+typos*40+txpos+txlp,tatr
      next
  end sub
