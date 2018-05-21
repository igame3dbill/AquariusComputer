/* found here:
http://www.java2s.com/Code/C/Data-Type/TwoDimensionalarrays.htm
*/
#include <stdio.h>

void main()
{
   char t[3][3] = {
                        {'1','2','3'},
                        {'4','5','6'},
                        {'7','8','9'}
                      };

   printf("value of t[0][0] : %c\n", t[0][0]);
   printf("value of t[0]    : %c\n", *t[0]);
   printf("value of t       : %c\n", **t);
}