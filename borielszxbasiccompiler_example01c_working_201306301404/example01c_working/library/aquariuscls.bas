sub aquariuscls(tchr as ubyte, tatr as ubyte):
  '- needs aquariusfillbytes.bas - not working properly?
  aquariusfillbytes(tchr,$03E8,$3000) '- chr
  aquariusfillbytes(tatr,$03E8,$3400) '- attr
  end sub
