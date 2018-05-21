#include <stdio.h>
#include <string.h>
/* 
User Input C 
Compiles for AQUARIUS using z88dk
To compile I use a batch file that contains the following:

CALL z88dkenv.bat
zcc +aquansi -lm -create-app -o UserInput UserInput_C.c

Where "UserInput_C.c" is the filename to be compiled
and "UserInput" is the output file name
The result is files  "_UserInput.caq"  and "UserInput.caq"

In AQUARIUS BASIC type CLOAD and type return twice

Choose File > Play Cassette File > "_UserInput.caq"
AQUARIUS should return "Found: LOADR"

Type RUN and press return twice
Choose File > Play Cassette File > "UserInput.caq"
Do some typing to test 
Press Control C to drop back to BASIC
*/  

int main()
{
   char text[72]; // max string length for AQUARIUS.
   char cIn;
   
   	//clear screen to black with white text
	printf ("%c2J",155);
 
      
   do {
   	fputs("enter some text: ", stdout);
   	fflush(stdout);
   
  	 if ( fgets(text, sizeof(text), stdin) != NULL )
  	 {
      	char *newline = strchr(text, '\n'); /* search for newline character */
     	 if ( newline != NULL )
     	 	{
         	*newline = '\0'; /* overwrite trailing newline */
      		}
      printf("text = \"%s\"\n", text);
      
      if (cIn == '@') break; 
   	}
   	//loop until CONTROL C
   }while((cIn = getchar()) != '\03')

   return 0;
}
