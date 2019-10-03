#include<stdio.h>
#include<stdlib.h>

int main(int argc, char* argv[])
{
	int n, fact, i;
	
	if(argc < 2) {
		printf("Usage: a.out num\n");
		printf("E.g.: ./a.out 10\n");
		return 0;
	}
	n = atoi(argv[1]);

	fact = 1;

	for(i = 1; i <= n; i++) {
		fact = fact * i;	
	}
	printf("n's factorial = %d\n", fact);
	return 0;
}
