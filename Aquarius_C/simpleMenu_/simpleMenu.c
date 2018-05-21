#include<stdio.h>
#include<stdlib.h>
#include"graphics.h"

int mc=155;

int main(void)
{
    //Variable used for reading the user input
    char option;
    //Variable used for controlling the while loop
    int isRunning = 1;

    while(isRunning==1)
    {
        //Clears the screen
        //system("clear");        //For UNIX-based OSes

        //Clears the keyboard buffer
        fflush(stdin);
        //Outputs the options to console
        puts("\n[1]Option1"
             "\n[2]Option2"
             "\n[3]Option3"
             "\n[4]Option4"
             "\n.........."
             "\n[x]Exit");
        //Reads the user's option
        option = getchar();
        //Selects the course of action specified by the option
        switch(option)
        {
            case '1':
                     //TO DO CODE
					 printf ("%c2J",155);
					 fill(0,0);
                     break;
            case '2':
                     //TO DO CODE
					 mc=mc-1
					 printf ("%c2J  %d",mc, mc);
				
                     break;
            case '3':
			mc=mc+1
                     //TO DO CODE
					 printf ("%c2J  %d",mc, mc);
					 
                     break;
            case '4':
			mc=155
                     //TO DO CODE
					// printf ("%c2J",mc);
					 	 drawb(1,1,79,71);
                     break;
            //...
            case 'x':
                     //Exits the system
					 printf ("%c2J",155);
                     isRunning = 0;
                     return 0;
            default :
                     //User enters wrong input
                     //TO DO CODE
                     break;
        }
    }
    return 0;
}
