all: matrix_rc matrix_cr 

matrix_rc: matrix.c
	gcc -o matrix_rc -DROW_COL_ACCESS matrix.c

matrix_cr: matrix.c
	gcc -o matrix_cr matrix.c

clean:
	rm -f matrix_rc matrix_cr
