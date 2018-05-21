#include <stdio.h>
#include <string.h>

union Edu
{
	int i;
	float f;
	char str[20];
	
};

int main()
{
	union Edu data;
	
	data.i = 10;
	printf("data.i : %d\n", data.i);
	
	data.f = 220.5;
	printf("data.f : %f\n", data.f);
	
	strcpy(data.str, "C Programming video series");
	printf("data.str : %s\n", data.str);
	
	return 0;
	
}
