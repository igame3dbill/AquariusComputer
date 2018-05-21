#include<stdio.h>
#include<string.h>

int main()
{
	char a[100];
	
	
	printf("Enter  string to reverse.\n");
	gets(a);
	
	strrev(a);
	
	printf("Reverse of entered string is \n%s\n",a);

	
	return 0;
}
