#include <stdio.h>
#include <string.h>

int main()
{
int i=1;
char *cp;	
static char s[8];
strcpy(s, "string\0");


printf("The string is: %s\n",  s);
// c99 mode
for (char *cp=s; *cp; ++cp)
{	
printf("char %d is %c\n", i, *cp);
++i;
}
return 0;


}

