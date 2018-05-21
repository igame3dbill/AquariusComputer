// 99 bottles of beer mostly from 
// http://www.99-bottles-of-beer.net/language-c-844.html
#include <stdio.h>

int main(void)
{       	
        int b;
		int c;
        int t;
		int color =31;
		
		printf ("%c2J",155);
        for (b = 99; b >= 0; b--) {
			c = c + 1;
				if(c >= 5){
					c=0;
					//printf("%c2J",155);
				}
				color =color + 1;
				if (color == 39) color=42;
				if (color >= 47) color=31;	
			
				//slow it down
			for(t=100000; t<=0; t--);	
			for(t=100000; t<=0; t--);	
			for(t=100000; t<=0; t--);	
			for(t=100000; t<=0; t--);	
			for(t=100000; t<=0; t--);	
			
                switch (b) {
                case 0:
                        printf("No more bottles of beer on the wall, no more bottles of beer.\n");
						
                        printf("Go to the store and buy some more, 99 bottles of beer on the wall.\n");
                        break;
                case 1:
                        printf("1 bottle of beer on the wall\n 1 bottle of beer.\n");
                        printf("Take one down and pass it around, no more bottles of beer on the wall\n");
                        break;
                default:
                        printf("%d bottles of beer on the wall\n %d bottles of beer.\n", b, b);   
								//slow it down
									for(t=100000; t<=0; t--);	
									for(t=100000; t<=0; t--);	
									for(t=100000; t<=0; t--);	
									for(t=100000; t<=0; t--);	
									for(t=100000; t<=0; t--);	
								// you can break long line  by carriage rerturns before your semi colon finishes the line good to know.
                                  printf("%c[%umTake one down and pass it around\n %d %s of beer on the wall.\n\n",27,color
                                ,b - 1 ,((b - 1) > 1)? "bottles" : "bottle");
                        break;
                }
        }       
        
        return 0;
}

