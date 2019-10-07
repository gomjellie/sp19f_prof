	.file	"fact_iter.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Usage: a.out num"
.LC1:
	.string	"E.g.: ./a.out 10"
.LC2:
	.string	"n's factorial = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB38:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpl	$1, %edi
	jg	.L2
	movl	$.LC0, %edi
	call	puts
	movl	$.LC1, %edi
	call	puts
	jmp	.L3
.L2:
	movq	8(%rsi), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol
	movl	$1, %ecx
	movl	$1, %edx
	jmp	.L4
.L5:
	imull	%ecx, %edx
	addl	$1, %ecx
.L4:
	cmpl	%eax, %ecx
	jle	.L5
	movl	$.LC2, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.L3:
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE38:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
