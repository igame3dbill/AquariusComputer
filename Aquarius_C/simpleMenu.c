#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>

int main(void)
{
    //Variable used for reading the user input
    char option;
    //Variable used for controlling the while loop
    bool isRunning = true;

    while(isRunning==true)
    {
        //Clears the screen
        system("clear");        //For UNIX-based OSes

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
                     break;
            case '2':
                     //TO DO CODE
                     break;
            case '3':
                     //TO DO CODE
                     break;
            case '4':
                     //TO DO CODE
                     break;
            //...
            case 'x':
                     //Exits the system
                     isRunning = false;
                     return 0;
            default :
                     //User enters wrong input
                     //TO DO CODE
                     break;
        }
    }
    return 0;
}