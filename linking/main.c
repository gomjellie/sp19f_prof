#include<stdio.h>

int add(int a, int b);
int sub(int a, int b);

int main()
{
	int a = 10;
	int b = 20;

	printf("add = %d\n", add(a,b));
	printf("sub = %d\n", sub(a,b));

	return 0;
}
