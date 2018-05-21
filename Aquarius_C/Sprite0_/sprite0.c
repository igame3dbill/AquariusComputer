/* Simple sample code using Ansi escape codes & putsprite with zd88k. To compile on Aquarius use 
"zcc +aquansi -create-app -o bezerk bezerk.c" from the command line. Based on spritest and ansitest 
examples that are part of the z88dk devkit. Mask is drawn AFTER the sprite, so we reduce the flicker, 
and being the mask just "a border", it is put faster. Sprites and Masks created using the Gimp then imported 
into the Z88DK Sprite Editor By Daniel McKinnon which was used to generate the Sprite code. 
Code may compile with little or no change on other targets. 

Barnie Giltrap 16/10/10 http://www.blue-horse.org.uk/ */

#include "stdio.h"
#include "games.h"
#include "mansprites.h"
#include <stdlib.h>
#include <graphics.h>

#define UP       'w'  /* arrow up     */
#define DOWN     's' /* arrow down   */
#define LEFT     'a'  /* arrow left   */
#define RIGHT    'd'  /* arrow right  */




int x,y,z;
int flag=1;
int cnt=0;
int face=0;
int vx=0;
int vy=0;
int timer=0;
char *ptr;
main()
{

	printf ("%c2J",155);
  	printf ("%c[7mMove the Man with the W A S D keys.\n",27);
	printf ("%c[1mcolor attributes are not overwritten\n",27);

/*
        Restore default text attributesaaaaaaaa
*/
    printf ("%c[m",27);
  x=40;
  y=20;

do {
 
	        switch( getk() ) {
	                case UP:
	                	timer =0;
							vy=-1;
							vx=0;
							flag=1;
	                        break;
	                case DOWN:	 
						timer =0;               	
							vy=1;
							vx=0;
							flag=1;
						
							
	                        break;
	                case RIGHT:
	                	timer =0;
							vx=1;
							vy=0;
							face=0;
	                		flag=1;         	
	                        break;
	                case LEFT:
	                	timer =0;
	                		vx=-1;
	                		vy=0;
	                		face=1;
	                		flag=1;
	                        break;
	                case 8:
	                	printf ("%c2J",155);
	                	break;
	               		 case 13:
	                		flag=2;
	                        return 0;
	                        break;
	                    default:
						timer=timer+1
						if(timer>20)
						{
								flag=0;
						timer=0;
						} 
						break;        			
	        }
	
			if (flag==1){
	  		x=x+vx;
			y=y+vy;
	        if (x>89)x=1;
	        if (x<-9)x=79;
	        if (y>79)y=1;
	        if (y<-10)y=71;
	  
			   
			//animate
			++cnt;
			if (cnt==4) cnt=0;
			if (face == 0){

					if( cnt<=1)
					{
					putsprite(spr_or,x,y,manright1);
					putsprite(spr_mask,x,y,manright1mask); 
					}		
					else 
					{
					putsprite(spr_or,x,y,manright2);
					putsprite(spr_mask,x,y,manright2mask);
					}
				}
			else{
			
				if(cnt<=1)
				{
				putsprite(spr_or,x,y,manleft1);
				putsprite(spr_mask,x,y,manleft1mask); 
				}
				else 
				{
				putsprite(spr_or,x,y,manleft2);
				putsprite(spr_mask,x,y,manleft2mask); 
				}
			}
		
	   }
	}while(flag!=2)
	
}
		

