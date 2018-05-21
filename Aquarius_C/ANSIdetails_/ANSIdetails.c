/*
 *	Test the ANSI terminal
 *
 *	15/4/2000 Stefano Bodrato
 *
 *	Compile with zcc +zxansi ansitest.c
 */
// t for text s for screen
#define WHITE=37
#define CYAN=36
#define MAGENTA=35
#define BLUE=34
#define YELLOW=33
#define GREEN=32
#define RED=31
#define WHITESCREEN=47
#define CYANSCREEN=46
#define MAGENTASCEEN=45
#define BLUESCREEN=44
#define YELLOWSCREEN=43
#define GREENSCREEN=42
#define REDSCREEN=41



printf ("%c[%um WHITE %u.\n",27,WHITE,WHITE);
printf ("%c[%um CYAN %u.\n",27,CYAN,CYAN);
printf ("%c[%um MAGENTA %u.\n",27,MAGENTA,MAGENTA);
printf ("%c[%um BLUE %u.\n",27,BLUE,BLUE);
printf ("%c[%um YELLOW %u.\n",27,GREEN,GREEN);
printf ("%c[%um GREEN %u.\n",27,RED,RED);

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

	printf ("%c[%um WHITE %u.\n",27,WHITE,WHITE);
	printf ("%c[%um CYAN %u.\n",27,CYAN,CYAN);
	printf ("%c[%um MAGENTA %u.\n",27,MAGENTA,MAGENTA);
	printf ("%c[%um BLUE %u.\n",27,BLUE,BLUE);
	printf ("%c[%um YELLOW %u.\n",27,GREEN,GREEN);
	printf ("%c[%um GREEN %u.\n",27,RED,RED);
	
	printf ("%c[%um WHITESCREEN %u.\n",27,WHITESCREEN,WHITESCREEN);
	printf ("%c[%um CYANSCREEN %u.\n",27,CYANSCREEN,CYANSCREEN);
	printf ("%c[%um MAGENTASCREEN %u.\n",27,MAGENTASCREEN,MAGENTASCREEN);
	printf ("%c[%um BLUESCREEN %u.\n",27,BLUESCREEN,BLUESCREEN);
	printf ("%c[%um YELLOWSCREEN %u.\n",27,GREENSCREEN,GREENSCREEN);
	printf ("%c[%um GREENSCREEN %u.\n",27,REDSCREEN,REDSCREEN);

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

