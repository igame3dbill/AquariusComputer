 /*
 *	Test the ANSI terminal
 *
 *	15/4/2000 Stefano Bodrato
 *
 *	Compile with zcc +zxansi ansitest.c
 */
#include "stdio.h"
#include "games.h"

#include <stdlib.h>
#include <graphics.h>
#include "10x17manrightx4.h"
#include "10x17manLeftx4.h"

#define UP       'w'  /* arrow up     */
#define DOWN     's' /* arrow down   */
#define LEFT     'a'  /* arrow left   */
#define RIGHT    'd'  /* arrow right  */

main()
{
	int x,y,z;
	int flag=1;
	int cnt=0;
	int face=0;
	int vx=0;
	int vy=0;
	int timer=0;
	char *ptr;
/*
        CSI n J
        Clears part of the screen. If n is zero (or missing), clear from cursor to end of screen. 
		If n is one, clear from cursor to beginning of the screen. 
		If n is two, clear entire screen (and moves cursor to upper left on DOS
*/
 x=35; 
 y=20;
  printf ("%c2J",155);
  
do {
 // get keyboard input , reset timer, set velocity and flag.
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
				// when no key down timer will stop man from running
				timer=timer+1;
					if(timer>10)
					{
					flag=0;
					timer=0;
					} 
				break;        			
	        }
	
	if (flag==1){
		// update sprite position
		
		x=x+vx;
		y=y+vy;
		if (x>89)x=1;
		if (x<-9)x=79;
		if (y>79)y=1;
		if (y<-10)y=71;
		
		
		//animate the sprite images
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

