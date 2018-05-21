/*
 *	Test the ANSI terminal
 *
 *	15/4/2000 Stefano Bodrato
 *
 *	Compile with zcc +zxansi ansitest.c
 */
#include "stdio.h"
#include <10x17manrightx4.h>
#include <10x17manLeftx4.h>
main()
{
int x;
int cav; // character ascii value
int sl; // string length
int i;
ints cnt;
/*
        CSI n J
        Clears part of the screen. If n is zero (or missing), clear from cursor to end of screen. 
		If n is one, clear from cursor to beginning of the screen. 
		If n is two, clear entire screen (and moves cursor to upper left on DOS
*/

  printf ("%c2J",155);
  

  for (x=37; x>29; x--){
  		//for ( i=cav; cav+15; x++){		
    	printf("%c[%um%c%u.\n",27,x,i);    	
	  //	}
  	cav=cav+15;
  }

  for (x=40; x<48; x++){

  	
    	printf("%c[%um%c%u\n",27,x,i); 	
	 
	  	cav=cav+15;
    //printf ("%c[%umBack text color %u.\n",27,x,x);
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

