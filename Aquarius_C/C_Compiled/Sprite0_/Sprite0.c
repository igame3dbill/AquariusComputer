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
#define UP       'w'  /* arrow up     */
#define DOWN     's' /* arrow down   */
#define LEFT     'a'  /* arrow left   */
#define RIGHT    'd'  /* arrow right  */

char man1[] = { 8,9,
  0x00 /* ........ */,
  0x08 /* ....#... */,
  0x3a /* ..###.#. */,
  0x5c /* .#.###.. */,
  0x50 /* .#.#.... */,
  0x18 /* ...##... */,
  0x14 /* ...#.#.. */,
  0x24 /* ..#..#.. */,
  0x00 /* ........ */
};

char man1mask[] = { 8,9,
  0xff /* ######## */,
  0xf7 /* ####.### */,
  0xc5 /* ##...#.# */,
  0xa3 /* #.#...## */,
  0xaf /* #.#.#### */,
  0xe7 /* ###..### */,
  0xeb /* ###.#.## */,
  0xdb /* ##.##.## */,
  0xff /* ######## */
};

char man2[] = { 8,9,
  0x00 /* ........ */,
  0x08 /* ....#... */,
  0x38 /* ..###... */,
  0x5e /* .#.####. */,
  0x30 /* ..##.... */,
  0x28 /* ..#.#... */,
  0x68 /* .##.#... */,
  0x10 /* ...#.... */,
  0x00 /* ........ */
};

char man2mask[] = { 8, 9,
  0xff /* ######## */,
  0xf7 /* ####.### */,
  0xc7 /* ##...### */,
  0xa1 /* #.#....# */,
  0xcf /* ##..#### */,
  0xd7 /* ##.#.### */,
  0x97 /* #..#.### */,
  0xef /* ###.#### */,
  0xff /* ######## */
};

char man3[] = { 8, 9,
  0x00 /* ........ */,
  0x08 /* ....#... */,
  0x18 /* ...##... */,
  0x3a /* ..###.#. */,
  0x3c /* ..####.. */,
  0x18 /* ...##... */,
  0x14 /* ...#.#.. */,
  0x24 /* ..#..#.. */,
  0x00 /* ........ */
};

char man3mask[] = { 8, 9,
  0xff /* ######## */,
  0xf7 /* ####.### */,
  0xe7 /* ###..### */,
  0xc5 /* ##...#.# */,
  0xc3 /* ##....## */,
  0xe7 /* ###..### */,
  0xeb /* ###.#.## */,
  0xdb /* ##.##.## */,
  0xff /* ######## */
};

char man4[] = { 8, 9,
  0x00 /* ........ */,
  0x10 /* ...#.... */,
  0x38 /* ..###... */,
  0x5e /* .#.####. */,
  0x30 /* ..##.... */,
  0x18 /* ...##... */,
  0x14 /* ...#.#.. */,
  0x22 /* ..#...#. */,
  0x00 /* ........ */
};
char man4mask[] = { 8, 9,
  0xff /* ######## */,
  0xef /* ###.#### */,
  0xc7 /* ##...### */,
  0xa1 /* #.#....# */,
  0xcf /* ##..#### */,
  0xe7 /* ###..### */,
  0xeb /* ###.#.## */,
  0xdd /* ##.###.# */,
  0xff /* ######## */
};





main()
{
int x,y,z;
int flag=1;
int speed=1;
int cnt=1;
char *ptr;

	printf ("%c2J",155);
  	printf ("%c[7mMove the Man with the W A S D keys.\n",27);
	printf ("%c[1mcolor attributes are not overwritten\n",27);

/*
        Restore default text attributes
*/
    printf ("%c[m",27);
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
			   
		//animate
		cnt=cnt+1;
		if (cnt==4) cnt=1;
		switch (cnt){
			case 1:
			putsprite(spr_or,x,y,man1);
			putsprite(spr_mask,x,y,man1mask); 
			break;
			case 2:
			putsprite(spr_or,x,y,man2);
			putsprite(spr_mask,x,y,man2mask); 
			break;
			case 3:
			putsprite(spr_or,x,y,man3);
			putsprite(spr_mask,x,y,man3mask); 
			break;		
		}
		   flag=0;
		}
	}
}
		

