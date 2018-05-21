#include <strings.h>

main()
{
  unsigned char nColor = 0;

  //set mode 0
  #asm
    ld  a,0
    call  $BC0E
  #endasm

  for(nColor = 0; nColor < 255; nColor++)
  {
    memset(0x3000, nColor, 0x37FF);
  }

  //wait char
  #asm
    call  $BB06
  #endasm
  
}

