#include "stdio.h"

main()
{
int x;
int BLACK  = 27;

/* Set default text attributes (white on black) */
    printf ("%c[m",27);

/* Clear screen in non-ANSI mode*/
  printf ("%c",12);

/*
  A stupid CSI escape code test (normally no use uses CSI)
*/
  printf ("If you can read this, CSI is not working.\n");
  
/*
   Clear Screen to black
*/
  printf ("%c2J",155);
  
/* this first line gets lost as 
 * the cursor position is out of the text area
*/
printf("\r\nIf this is the first thing you can read\n")
 
printf("CSI is OK.\n");


/*
        Set Graphic Rendition test
*/
  printf ("%c[1mBold Text\n", BLACK);
  printf ("%c[2mDim text\n",BLACK);
  printf ("%c[4mUnderlined Text\n",BLACK);
  printf ("%c[24mUn-underlined text\n",BLACK);
  printf ("%c[7mReverse Text\n",BLACK);
  printf ("%c[27mUn-reverse text\n",BLACK);

  for (x=37; x>29; x--)
  {
    printf ("%c[%umForeground %u.\n",27,x,x);
  }

  for (x=40; x<48; x++)
  {
    printf ("%c[%umBackground color %u.\n",27,x,x);
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

