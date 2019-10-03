#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

int fact_recursive(int parent) {
    /**
     * 2! == 2
     * 1! == 1
     * 0! == 1
     * -1 == Err
     */
    if (parent < 2) {
        return 1;
    }

    return fact_recursive(parent - 1) * parent;
}

int main(int argc, char* argv[]) {
    /**
     * pass number argument like this
     * ./fact_recursive 10
     *
     * number argument must be same or bigger than 0
     * 
     * potential bug: overflow
     */
	int input_number, res;
	
	if(argc < 2) {
		puts("Usage: a.out num");
		puts("E.g.: ./a.out 10\n");
		return 0;
	}
	input_number = atoi(argv[1]);

    assert(input_number >= 0);

    res = fact_recursive(input_number);
	printf("n's factorial = %d\n", res);
	
    return 0;
}

