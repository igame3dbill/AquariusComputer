#include <graphics.h>
#include <stdio.h>
#include <math.h>

main()
{
float x,y;
char z,buf;
	clg();

	for (x=-3.0; x<3.0; x=x+0.06)
	{
		buf=100;
		for (y=-3.0; y<3.0; y=y+0.2)
		{
			z = (char) 70.0 - (10.0 * (y + 3.0) + ( 10.0 * cos (x*x + y*y) ));
			if (buf>z)
			{
				buf = z;
				plot ( (char) (16.0 * (x+3.0)), (char) z);
			}
		}
	}
}
