sub aquariusputtile(txpos as uinteger,typos as uinteger,txsiz as uinteger, tysiz as ubyte, tadr as uinteger):
  dim txlp as uinteger at $3900:dim tylp as uinteger at $3902
  for tylp=0 to tysiz-1
    for txlp=0 to txsiz-1
      poke $3000+(typos+tylp)*40+(txpos+txlp),peek(tadr+(tylp*txsiz)+txlp)
      poke $3400+(typos+tylp)*40+(txpos+txlp),peek(tadr+(txsiz*tysiz)+(tylp*txsiz)+txlp)
      next:next
  end sub
