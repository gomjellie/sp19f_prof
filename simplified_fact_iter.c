#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]) {
	int n, fact, i;
	
	n = atoi(argv[1]);

	fact = 1;

	for(i = 1; i <= n; i++) {
		fact = fact * i;	
	}
	printf("%d\n", fact);
	return 0;
}
