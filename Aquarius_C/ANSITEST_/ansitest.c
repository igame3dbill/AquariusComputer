/*
 *	Test the ANSI terminal
 *
 *	15/4/2000 Stefano Bodrato
 *
 *	Compile with zcc +zxansi ansitest.c
 */
#include "stdio.h"

main()
{
int x;

/*
        A stupid CSI escape code test
        (normally no use uses CSI)
        
        CSI n J
        Clears part of the screen. If n is zero (or missing), clear from cursor to end of screen. 
		If n is one, clear from cursor to beginning of the screen. 
		If n is two, clear entire screen (and moves cursor to upper left on DOS
*/
  printf ("If you can read this, CSI is not working.\n");
  printf ("%c2J",155);
  
  printf ("If this the firSt thing you can read, CSI is OK.\n");


/*
        Set Graphic Rendition test
*/
  printf ("%c[1mBold Text\n",27);
  printf ("%c[2mDim text\n",27);
  printf ("%c[4mUnderlined Text\n",27);
  printf ("%c[24mUn-underlined text\n",27);
  printf ("%c[7mReverse Text\n",27);
  printf ("%c[27mUn-reverse text\n",27);

  for (x=37; x>29; x--)
  {
    printf ("%c[%umFore text color %u.\n",27,x,x);
  }

  for (x=40; x<48; x++)
  {
    printf ("%c[%umBack text color %u.\n",27,x,x);
  }

/*
        Restore default text attributes
*/
    printf ("%c[m",27);

/*
        Cursor Position test
        "Draw" an X
*/

  for (x=0; x<11; x++)
  {
    printf ("%c[%u;%uH*\n",27,10+x,25+x);
    printf ("%c[%u;%uH*\n",27,20-x,25+x);
  }

}

