#include <stdio.h>
 
int main()
{
   char text[20];
   fputs("enter some text: ", stdout);
   fflush(stdout); /* http://c-faq.com/stdio/fflush.html */
   fgets(text, sizeof text, stdin);
   printf("text = \"%s\"\n", text);
   return 0;
}