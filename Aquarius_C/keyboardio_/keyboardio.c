// Keyboardio.cpp : Defines the entry point for the console application.
//

//#include "stdafx.h"
#include <stdio.h>
#include <conio.h>


#define  EXTENDED_KEY = 0xE0
#define  ARROW_UP = 'H'
#define  ARROW_DOWN = 'P'
#define  ESCAPE = 0x1B

	int play=1;
	int ch;
	int ch2;
	
int main(){
printf ("%c2J",155);
    while(play==1){
         ch = getch();
        if ( ch == 0 && ch == 0xE0) {
             ch2 = getch();
            if (ch2 == 72) {
                printf("Up\n");
            } else if (ch2 == 80) {
                printf("Down\n");
            } else {
                printf("Extended key: %d %x %c\n", ch2, ch2, ch2);
            }
        } 
		else {
            printf("key: %d %x %c\n", ch, ch, ch);
        }
        	if (ch == 13) {
        	play=0;
        	return 0;
            break;
       		 }
       		if (ch==8){
       		
       			printf ("%c2J",155);
       		}
    }
    return 0;
}

