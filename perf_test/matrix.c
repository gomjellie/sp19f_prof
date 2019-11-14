#include<stdio.h>
#include<stdlib.h>

#define ROW 10000
#define COL 10000

int main()
{
	int** matrix;
	matrix = (int**) malloc(sizeof(int*)*ROW);

	if(!matrix)
		return -1;

	for(int i=0; i < ROW; i++)
		matrix[i] = (int*) malloc (sizeof(int)*COL);
	
	
	for(int i=0; i < ROW; i++)
		for(int j=0; j < COL; j++){
#ifdef ROW_COL_ACCESS
			matrix[i][j] = i+j;
#else
			matrix[j][i] = i+j;
#endif
	}			
	return 0;
}
