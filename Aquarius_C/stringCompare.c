#include<stdio.h>
#include<string.h>

int main()
{
	char a[100], b[100];
	
	
	printf("Enter first string to evaluate\n");
	gets(a);
	
	printf("Enter second string to evaluate\n");
	gets(b);
	

	if (strcmp(a,b)==0)
		printf("That was a match.\n");
		else
		printf("That didn't match.\n");
		

	
	return 0;
}
