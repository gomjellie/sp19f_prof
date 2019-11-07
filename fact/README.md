# sp19f_prof
system programming 2019 fall 

## hw1. Analyze executables of "fact_iter.c"

```sh
- build and run 
make
./fact_iter 5 ## 5! 
```

## hw2. fact_iter.c 를 컴파일 한 후 실행파일을 assembly 언어로 disassemble 하여 main 함수의 소스코드가 어떻게 assembly 언어로 바뀌었는지 분석하시오. 

```sh
objdump -d ./fact_itor > fact_itor.dump
```


## hw3. factorial을 recursive 함수를 이용해 계산하는 소스코드 fact_recursive.c 를 만들고 위와 동일한 방식으로 소스코드를 분석하시오. 이 때 아래와 같은 명령어로 fact_recursive.c 을 컴파일할 수 있도록 Makefile 을 수정하시오. 

```sh
make iter # fact_iterator.c 가 컴파일 

make recursive # fact_recursive.c 가 컴파일 

make # 둘다 컴파일 

make clean # 모든 실행파일 삭제 
```

