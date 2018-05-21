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

int main()
{
   char text[72]; // max string length for AQUARIUS.
   int cIn;
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
