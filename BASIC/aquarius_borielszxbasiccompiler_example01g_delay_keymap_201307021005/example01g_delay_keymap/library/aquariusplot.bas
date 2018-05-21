sub aquariusplot(txp as uinteger, typ as uinteger, tink as ubyte):
  '- work in progress... :S
  dim tbufcr as uinteger at $3900:dim tbufat as uinteger at $3902
  dim txmd as uinteger at $3904:dim tymd as uinteger at $3906
  dim txdv as uinteger at $3908:dim tydv as uinteger at $390A
  txmd=txp mod 2:txdv=int(txp/2)
  tymd=txp mod 3:tydv=int(txp/3)
  tbufcr=peek($3000+tymd*40+txmd)
  tbufat=peek($3400+tymd*40+txmd)
  end sub
