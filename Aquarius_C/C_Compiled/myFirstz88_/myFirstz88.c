/* Simple sample code using Ansi escape codes & putsprite with zd88k. To compile on Aquarius use 
"zcc +aquansi -create-app -o bezerk bezerk.c" from the command line. Based on spritest and ansitest 
examples that are part of the z88dk devkit. */



#include "stdio.h"
#include "games.h"
#include <stdlib.h>
#include <graphics.h>


#define ANSI_COLOR_RED     "\x1b[31m"
#define ANSI_COLOR_GREEN   "\x1b[32m"
#define ANSI_COLOR_YELLOW  "\x1b[33m"
#define ANSI_COLOR_BLUE    "\x1b[34m"
#define ANSI_COLOR_MAGENTA "\x1b[35m"
#define ANSI_COLOR_CYAN    "\x1b[36m"
#define ANSI_COLOR_RESET   "\x1b[0m"


#define ANSI_RESET = "\x1b[0m"
#define BOLD_ON =  "\x1b[1m"
#define ITALICS_ON = "\x1b[3m"
#define UNDERLINE_ON = "\x1b[4m"
#define INVERSE_ON = "\x1b[7m"
#define STRIKE_ON  = "\x1b[9m"
#define BOLD_OFF =  "\x1b[22m"
#define ITALICS_OFF "\x1b[23m"
#define UNDERLINE_OFF "\x1b[24m"
#define INVERSE_OFF = "\x1b[27m"
#define STRIKE_OFF = "\x1b[29m"
#define FGBLACK = "\x1b[30m"
#define FGRED = "\x1b[31m"
#define FGGREEN = "\x1b[32m"
#define FGYELLOW = "\x1b[33m"
#define FGBLUE = "\x1b[34m"
#define FGMAGENTA = "\x1b[35m"
#define FGCYAN = "\x1b[36m"
#define FGWHITE = "\x1b[37m"

#define FGDEFAULT = "\x1b[39m"
#define BGBLACK = "\x1b[41m"
#define BGRED = "\x1b[42m"
#define BGGREEN = "\x1b[43m"
#define BGYELLOW = "\x1b[44m"
#define BGBLUE = "\x1b[45m"
#define BGMAGENTA "\x1b[46m"
#define BG_CYAN = "\x1b[47m"
//#define BGWHITE = "\x1b[48m"
//#define BGDEFAULT = "\x1b[48m]"

main()

{
	int x,y,z;
	char *ptr;
	char keypressed;
	
	//clear screen to black 
	printf ("%c2J",155);

	
	
	printf(ANSI_COLOR_RED  "This text is RED!"     ANSI_COLOR_RESET "\n");
	printf(ANSI_COLOR_GREEN   "This text is GREEN!"   ANSI_COLOR_RESET "\n");
	printf(ANSI_COLOR_YELLOW  "This text is YELLOW!"  ANSI_COLOR_RESET "\n");
	printf(ANSI_COLOR_BLUE    "This text is BLUE!"    ANSI_COLOR_RESET "\n");
	printf(ANSI_COLOR_MAGENTA "This text is MAGENTA!" ANSI_COLOR_RESET "\n");
	printf(ANSI_COLOR_CYAN    "This text is CYAN!"    ANSI_COLOR_RESET "\n");
	
}

