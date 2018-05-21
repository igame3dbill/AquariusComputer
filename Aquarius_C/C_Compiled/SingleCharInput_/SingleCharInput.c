#include <stdio.h>
#include <string.h>
/* 
User Input C 
Compiles for AQUARIUS using z88dk
To compile I use a batch file in the z88dk directory that looks like:
	
CALL z88dkenv.bat
zcc +aquansi -lm -create-app -o NewLineInput NewLineInput_C.c

Where "NewLineInput_C.c" is the filename to be compiled
and "NewLineInput" is the output file name
The result is files  "_NewLineInput.caq"  and "NewLineInput.caq"

Run Virtual Aquarius
In  BASIC type CLOAD and press RETURN key twice
Choose File > Play Cassette File > "_NewLineInput.caq"
AQUARIUS should return "Found: LOADR"
Type RUN and press RETURN key twice
Choose File > Play Cassette File > "NewLineInput.caq"
The screen should turn black and you willbe asked to enter text.
Do some typing to test the program, try control keys, see strange characters.

Press Control C to drop back to BASIC
*/  

/* Simple sample code using Ansi escape codes & putsprite with zd88k. To compile on Aquarius use 
"zcc +aquansi -create-app -o bezerk bezerk.c" from the command line. Based on spritest and ansitest 
examples that are part of the z88dk devkit. Mask is drawn AFTER the sprite, so we reduce the flicker, 
and being the mask just "a border", it is put faster. Sprites and Masks created using the Gimp then imported 
into the Z88DK Sprite Editor By Daniel McKinnon which was used to generate the Sprite code. 
Code may compile with little or no change on other targets. 

Barnie Giltrap 16/10/10 http://www.blue-horse.org.uk/ */

#include "stdio.h"
//#include "games.h"
//#include <stdlib.h>
#define UP       'w'  /* arrow up     */
#define DOWN     's' /* arrow down   */
#define LEFT     'a'  /* arrow left   */
#define RIGHT    'd'  /* arrow right  */

main()
{
char k;
 //clear screen to black on white
	printf ("%c2J",155);
/*
        Restore default text attributes
*/
    printf ("%c[m",27);
  while (flag!=2)
	{
		k=getk()
	        switch( k ) {
	                case UP:
	                	printf("UP");
	                        break;
	                case DOWN:
	                	printf("DOWN");
	                        break;
	                case RIGHT:
	                	printf("RIGHT");
	                        break;
	                case LEFT:
	                	printf("LEFT");
	                        break;
	                case 13:
	                        flag=2;
	                        break;
	                default:
	                	printf("%d",k);
	        }
	        

	}
}
		

