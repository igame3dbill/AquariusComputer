#define WHITE=37
#define CYAN=36
#define MAGENTA=35
#define BLUE=34
#define YELLOW=33
#define GREEN=32
#define RED=31
#define WHITESCREEN=47
#define CYANSCREEN=46
#define MAGENTASCEEN=45
#define BLUESCREEN=44
#define YELLOWSCREEN=43
#define GREENSCREEN=42
#define REDSCREEN=41


	printf ("%c[%umWHITE %u.\n",27,WHITE,WHITE);
	printf ("%c[%umCYAN %u.\n",27,CYAN,CYAN);
	printf ("%c[%umMAGENTA %u.\n",27,MAGENTA,MAGENTA);
	printf ("%c[%umBLUE %u.\n",27,BLUE,BLUE);
	printf ("%c[%umYELLOW %u.\n",27,GREEN,GREEN);
	printf ("%c[%umGREEN %u.\n",27,RED,RED);
	
	printf ("%c[%umWHITESCREEN %u.\n",27,WHITESCREEN,WHITESCREEN);
	printf ("%c[%umCYANSCREEN %u.\n",27,CYANSCREEN,CYANSCREEN);
	printf ("%c[%umMAGENTASCREEN %u.\n",27,MAGENTASCREEN,MAGENTASCREEN);
	printf ("%c[%umBLUESCREEN %u.\n",27,BLUESCREEN,BLUESCREEN);
	printf ("%c[%umYELLOWSCREEN %u.\n",27,GREENSCREEN,GREENSCREEN);
	printf ("%c[%umGREENSCREEN %u.\n",27,REDSCREEN,REDSCREEN);
