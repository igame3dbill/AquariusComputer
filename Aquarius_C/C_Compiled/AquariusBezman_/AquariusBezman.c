/* Simple sample code using Ansi escape codes & putsprite with zd88k. To compile on Aquarius use 
"zcc +aquansi -create-app -o bezerk bezerk.c" from the command line. Based on spritest and ansitest 
examples that are part of the z88dk devkit. Mask is drawn AFTER the sprite, so we reduce the flicker, 
and being the mask just "a border", it is put faster. Sprites and Masks created using the Gimp then imported 
into the Z88DK Sprite Editor By Daniel McKinnon which was used to generate the Sprite code. 
Code may compile with little or no change on other targets. 

Barnie Giltrap 16/10/10 http://www.blue-horse.org.uk/ */



#include "stdio.h"

#include "games.h"

#include <stdlib.h>

#include <graphics.h>

#define UP       'k'  /* arrow up     */

#define DOWN     'm' /* arrow down   */

#define LEFT     'z'  /* arrow left   */

#define RIGHT    'x'  /* arrow right  */



char bezman[] = { 10, 14, 0x00 , 0x00 , 0x0C , 0x00 , 0x0C , 0x00 , 0x00 , 0x00 , 0x00 , 0x00 , 0x3F 
, 0x00 , 0x4C , 0x80 , 0x4C , 0x80 , 0x4C , 0x80 , 0x0C , 0x00 , 0x0C , 0x00 
, 0x0C , 0x00 , 0x0F , 0x00 , 0x00 , 0x00  };

char maskman[] = { 10, 14, 0x0C , 0x00 , 0x12 , 0x00 , 0x12 , 0x00 , 0x0C , 0x00 , 0x3F , 0x00 , 0x40 
, 0x80 , 0xB3 , 0x40 , 0xB3 , 0x40 , 0xB3 , 0x40 , 0x52 , 0x80 , 0x33 , 0x00 
, 0x13 , 0x00 , 0x10 , 0x80 , 0x0F , 0x00  };



char bezbot[] = { 10, 10, 0x00 , 0x00 , 0x1E , 0x00 , 0x33 , 0x00 , 0x7F , 0x80 , 0x5E , 0x80 , 0x5E 

, 0x80 , 0x12 , 0x00 , 0x12 , 0x00 , 0x33 , 0x00 , 0x00 , 0x00  };

	



char maskbot[] = { 10, 10, 0x1E , 0x00 , 0x21 , 0x00 , 0x4C , 0x80 , 0x80 , 0x40 , 0xA1 , 0x40 , 0xA1 

, 0x40 , 0x6D , 0x80 , 0x2D , 0x00 , 0x4C , 0x80 , 0x33 , 0x00  };





main()

{

int x,y,z;

int flag=1;

int speed=1;

char *ptr;


	printf ("%c2J",155);

  	printf ("%c[7mMove the Man with the Z X K M keys.\n",27);
	printf ("%c[1mcolor attributes are not overwritten\n",27);


  for (x=37; x>29; x--)

  {

    printf ("%c[%umFore text colour %u.\n",27,x,x);

  }



  for (x=40; x<48; x++)

  {

    printf ("%c[%umBack text color %u.\n",27,x,x);

  }



/*

        Restore default text attributes

*/

    printf ("%c[m",27);

/*printf ("%c[7mcolor attributes are not overwritten\n",27); */


for (x=40; x<70; x=x+10)	//bots bots everywhere!

  {

	

	putsprite(spr_or,x-10,x,bezbot);

	putsprite(spr_or,x+10,x,maskbot);

  }

  



  x=40;

  y=20;

  



  

  while (flag!=2)

	{

	        switch( getk() ) {

	                case UP:

	                	y=y-speed;

	                	flag=1;

	                        break;

	                case DOWN:

	                	y=y+speed;

	                	flag=1;

	                        break;

	                case RIGHT:

	                	x++;

	                	flag=1;

	                        break;

	                case LEFT:

	                	x--;

	                	flag=1;

	                        break;

	                case 13:

	                        flag=2;

	                        break;

	                default:

	                	speed=1;

	        }

	        

	        if (flag==1)

	        {

	           if (speed<4) speed=speed+1;

		putsprite(spr_or,x,y,bezman);

	  	putsprite(spr_mask,x,y,maskman); 

		   flag=0;

		}

	}

}
