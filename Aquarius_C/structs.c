#include<stdio.h>
#include<string.h>

struct Series
{
	char series[50];
	char author[50];
	char subject[100];
	int series_id;
	
};

int main()
{
	struct Series s1; /* Declare series1 of type Series */
	struct Series s2; /* Declare series2 of type Series */
	
	/* Series 1 specification */
	strcpy(s1.series, "C Programming");
	strcpy(s1.author, "Hitesh Choudhary");
	strcpy(s1.subject, "C Programming Videos");
	s1.series_id = 123;
	
	/* Series 2 specification */
	strcpy(s2.series, "C plus plus");
	strcpy(s2.author, "Anil Kumar");
	strcpy(s2.subject,"C plus plus series");
	s2.series_id = 456;
	
	/* print series1 information */
	printf("Series 1 title : %s\n", s1.series);
	printf("Series 1 author : %s\n", s1.author);
	printf("Series 1 subject : %s\n", s1.subject);
	printf("Series 1 series_id : %d\n", s1.series_id);
	
	printf("\n");
	
		/* print series1 information */
	printf("Series 2 title : %s\n", s2.series);
	printf("Series 2 author : %s\n", s2.author);
	printf("Series 2 subject : %s\n", s2.subject);
	printf("Series 2 series_id : %d\n", s2.series_id);
	
	
	return 0;
}
