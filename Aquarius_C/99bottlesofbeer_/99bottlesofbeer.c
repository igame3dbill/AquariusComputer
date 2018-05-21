
// 99 bottles by me
#include <stdio.h>
#include <string.h>


int main(void)
{
    int count = 99;
    // ascii will print if the array matches the string size exactly. Add one for the null.
    static char what[10];
	strcpy(what,"Bottles");
    do{
 
    if (count == 1){
    strcpy(what,Bottle);
    }
 
    printf("%d %s of beer on the wall ", count, Bottles);
    printf("%d %s of beer.\n", count, Bottles);
    printf("Take one down and pass it around\n\n");
 
    count--;
    }while(count > 0); 
    printf("No more beer.\n");
    return 0;
}
