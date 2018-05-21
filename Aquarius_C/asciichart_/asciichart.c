#include <stdio.h>
// prints ascii value list
void main()
{
char cIn;
// ascii value, I force the zero character to print NULL.
int i,x,n, h;

// run until command C
do{
i=1;
 
//  column counter
x=0;
 
// variable number of columns
n=5;
  	
// half of characters
h = 120
	//clear screen to black with white text
	printf ("%c2J",155);
printf("0 NULL ");

do
{
    //  escape characters 
    if (i>6 && i<14) {
        if (i==7){printf("%d BELL ",i);}
        if (i==8){printf("%d BS ",i);}
        if (i==9){printf("%d TAB ",i);}
        if (i==10){printf("%d LF ",i);}
        if (i==11){printf("%d VT ",i);}
        if (i==12){printf("%d LF ",i);}
 
        // after the carriage return start new column and row 
        if (i==13){
        printf("%d CR \n",i); 
        x = 0;
        }
    } 
 
    // print the ascii value and the character 
    else{
    printf("%d %c ",i,i);
    }
// use longer rows after the escape characters are printed.
    if (i > 14){
    n = 6;
    }
    // make a new row every n chars.
    if (x == n) {
    printf("\n");
    x = 0;
    }
	if (i == h){
		printf("\n");
	while((cIn = getchar()) == '');	
	}
    // increment x and i
    x++;
    i++;
}
while(i<=255);
printf("\n");
// press any key to run again
while((cIn = getchar()) == '');
// press contraol C to exit into BASIC
}while(cIn = getchar() != '\03')
return 0;

}

