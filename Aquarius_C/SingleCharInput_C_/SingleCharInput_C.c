#include <stdio.h>
/* 
Single Character Input C 
Compiles for AQUARIUS using z88dk
To compile I use a batch file in the z88dk directory that looks like:
	
CALL z88dkenv.bat
zcc +aquansi -lm -create-app -o SingleCharInput SingleCharInput_C.c

Where "SingleCharInput_C.c" is the filename to be compiled
and "SingleCharInput" is the output file name
The result is files  "_SingleCharInput.caq"  and "SingleCharInput.caq"

Run Virtual Aquarius
In  BASIC type CLOAD and press RETURN key twice
Choose File > Play Cassette File > "_SingleCharInput.caq"
AQUARIUS should return "Found: LOADR"
Type RUN and press RETURN key twice
Choose File > Play Cassette File > "SingleCharInput.caq"
The screen should turn black and you will be asked to enter text.
Do some typing to test the program, try control keys, see multi char output.

Press ENTER to drop back to BASIC
*/  

// custom names for keys
#define UP       'w'  /* arrow up     */
#define DOWN     's' /* arrow down   */
#define LEFT     'a'  /* arrow left   */
#define RIGHT    'd'  /* arrow right  */

main()
{
int flag=1;	
char k;
 //clear screen to black on white
	printf ("%c2J",155);
	// loop until flat is not 2
  while (flag!=2)
	{	
		// put key down number into variable k
		k=getk()
		
			// handle input conditions
	        switch( k ) {
	                case UP:
	                	printf("%d= %c =UP\n",k,k);
	                        break;
	                case DOWN:
	                	printf("%d= %c =DOWN\n",k,k);
	                        break;
	                case RIGHT:
	                	printf("%d= %c =RIGHT\n",k,k);
	                        break;
	                case LEFT:
	                	printf("%d= %c =LEFT\n",k,k);
	                        break;
	                //quit on return key
	                case 13:
	                        flag=2;
	                        break;
	               // print any key pressed 
	                default:
	                	if (k != 0) printf("%d = %c\n",k,k);
	        }        
	}
}
		

