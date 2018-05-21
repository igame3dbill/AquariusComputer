/*
 *	Test the ANSI terminal
 *
 *	15/4/2000 Stefano Bodrato
 *
 *	Compile with zcc +zxansi ansitest.c
 */
#include "stdio.h"
#include "10x17manrightx4.h"
#include "10x17manLeftx4.h"
main()
{
int x;

/*
        CSI n J
        Clears part of the screen. If n is zero (or missing), clear from cursor to end of screen. 
		If n is one, clear from cursor to beginning of the screen. 
		If n is two, clear entire screen (and moves cursor to upper left on DOS
*/

  printf ("%c2J",155);
  



}

