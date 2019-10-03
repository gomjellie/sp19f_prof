
iter:
	gcc -o fact_itor fact_iter.c

recursive:
	gcc -o fact_recursive fact_recursive.c

all: fact_iter.c
	gcc -Og -o fact_iter fact_iter.c

clean:
	ls -1 |grep -v 'Makefile' |grep -v '\.' |xargs rm

