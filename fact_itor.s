
./fact_itor:     file format elf64-x86-64


Disassembly of section .init:

0000000000400438 <_init>:
  400438:	48 83 ec 08          	sub    $0x8,%rsp
  40043c:	48 8b 05 b5 0b 20 00 	mov    0x200bb5(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  400443:	48 85 c0             	test   %rax,%rax
  400446:	74 05                	je     40044d <_init+0x15>
  400448:	e8 63 00 00 00       	callq  4004b0 <atoi@plt+0x10>
  40044d:	48 83 c4 08          	add    $0x8,%rsp
  400451:	c3                   	retq   

Disassembly of section .plt:

0000000000400460 <puts@plt-0x10>:
  400460:	ff 35 a2 0b 20 00    	pushq  0x200ba2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400466:	ff 25 a4 0b 20 00    	jmpq   *0x200ba4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40046c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400470 <puts@plt>:
  400470:	ff 25 a2 0b 20 00    	jmpq   *0x200ba2(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400476:	68 00 00 00 00       	pushq  $0x0
  40047b:	e9 e0 ff ff ff       	jmpq   400460 <_init+0x28>

0000000000400480 <printf@plt>:
  400480:	ff 25 9a 0b 20 00    	jmpq   *0x200b9a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400486:	68 01 00 00 00       	pushq  $0x1
  40048b:	e9 d0 ff ff ff       	jmpq   400460 <_init+0x28>

0000000000400490 <__libc_start_main@plt>:
  400490:	ff 25 92 0b 20 00    	jmpq   *0x200b92(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400496:	68 02 00 00 00       	pushq  $0x2
  40049b:	e9 c0 ff ff ff       	jmpq   400460 <_init+0x28>

00000000004004a0 <atoi@plt>:
  4004a0:	ff 25 8a 0b 20 00    	jmpq   *0x200b8a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4004a6:	68 03 00 00 00       	pushq  $0x3
  4004ab:	e9 b0 ff ff ff       	jmpq   400460 <_init+0x28>

Disassembly of section .plt.got:

00000000004004b0 <.plt.got>:
  4004b0:	ff 25 42 0b 20 00    	jmpq   *0x200b42(%rip)        # 600ff8 <_DYNAMIC+0x1d0>
  4004b6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000004004c0 <_start>:
  4004c0:	31 ed                	xor    %ebp,%ebp
  4004c2:	49 89 d1             	mov    %rdx,%r9
  4004c5:	5e                   	pop    %rsi
  4004c6:	48 89 e2             	mov    %rsp,%rdx
  4004c9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4004cd:	50                   	push   %rax
  4004ce:	54                   	push   %rsp
  4004cf:	49 c7 c0 b0 06 40 00 	mov    $0x4006b0,%r8
  4004d6:	48 c7 c1 40 06 40 00 	mov    $0x400640,%rcx
  4004dd:	48 c7 c7 b6 05 40 00 	mov    $0x4005b6,%rdi
  4004e4:	e8 a7 ff ff ff       	callq  400490 <__libc_start_main@plt>
  4004e9:	f4                   	hlt    
  4004ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004004f0 <deregister_tm_clones>:
  4004f0:	b8 4f 10 60 00       	mov    $0x60104f,%eax
  4004f5:	55                   	push   %rbp
  4004f6:	48 2d 48 10 60 00    	sub    $0x601048,%rax
  4004fc:	48 83 f8 0e          	cmp    $0xe,%rax
  400500:	48 89 e5             	mov    %rsp,%rbp
  400503:	76 1b                	jbe    400520 <deregister_tm_clones+0x30>
  400505:	b8 00 00 00 00       	mov    $0x0,%eax
  40050a:	48 85 c0             	test   %rax,%rax
  40050d:	74 11                	je     400520 <deregister_tm_clones+0x30>
  40050f:	5d                   	pop    %rbp
  400510:	bf 48 10 60 00       	mov    $0x601048,%edi
  400515:	ff e0                	jmpq   *%rax
  400517:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40051e:	00 00 
  400520:	5d                   	pop    %rbp
  400521:	c3                   	retq   
  400522:	0f 1f 40 00          	nopl   0x0(%rax)
  400526:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40052d:	00 00 00 

0000000000400530 <register_tm_clones>:
  400530:	be 48 10 60 00       	mov    $0x601048,%esi
  400535:	55                   	push   %rbp
  400536:	48 81 ee 48 10 60 00 	sub    $0x601048,%rsi
  40053d:	48 c1 fe 03          	sar    $0x3,%rsi
  400541:	48 89 e5             	mov    %rsp,%rbp
  400544:	48 89 f0             	mov    %rsi,%rax
  400547:	48 c1 e8 3f          	shr    $0x3f,%rax
  40054b:	48 01 c6             	add    %rax,%rsi
  40054e:	48 d1 fe             	sar    %rsi
  400551:	74 15                	je     400568 <register_tm_clones+0x38>
  400553:	b8 00 00 00 00       	mov    $0x0,%eax
  400558:	48 85 c0             	test   %rax,%rax
  40055b:	74 0b                	je     400568 <register_tm_clones+0x38>
  40055d:	5d                   	pop    %rbp
  40055e:	bf 48 10 60 00       	mov    $0x601048,%edi
  400563:	ff e0                	jmpq   *%rax
  400565:	0f 1f 00             	nopl   (%rax)
  400568:	5d                   	pop    %rbp
  400569:	c3                   	retq   
  40056a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400570 <__do_global_dtors_aux>:
  400570:	80 3d d1 0a 20 00 00 	cmpb   $0x0,0x200ad1(%rip)        # 601048 <__TMC_END__>
  400577:	75 11                	jne    40058a <__do_global_dtors_aux+0x1a>
  400579:	55                   	push   %rbp
  40057a:	48 89 e5             	mov    %rsp,%rbp
  40057d:	e8 6e ff ff ff       	callq  4004f0 <deregister_tm_clones>
  400582:	5d                   	pop    %rbp
  400583:	c6 05 be 0a 20 00 01 	movb   $0x1,0x200abe(%rip)        # 601048 <__TMC_END__>
  40058a:	f3 c3                	repz retq 
  40058c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400590 <frame_dummy>:
  400590:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  400595:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400599:	75 05                	jne    4005a0 <frame_dummy+0x10>
  40059b:	eb 93                	jmp    400530 <register_tm_clones>
  40059d:	0f 1f 00             	nopl   (%rax)
  4005a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4005a5:	48 85 c0             	test   %rax,%rax
  4005a8:	74 f1                	je     40059b <frame_dummy+0xb>
  4005aa:	55                   	push   %rbp
  4005ab:	48 89 e5             	mov    %rsp,%rbp
  4005ae:	ff d0                	callq  *%rax
  4005b0:	5d                   	pop    %rbp
  4005b1:	e9 7a ff ff ff       	jmpq   400530 <register_tm_clones>

00000000004005b6 <main>:
  4005b6:	55                   	push   %rbp
  4005b7:	48 89 e5             	mov    %rsp,%rbp
  4005ba:	48 83 ec 20          	sub    $0x20,%rsp
  4005be:	89 7d ec             	mov    %edi,-0x14(%rbp)
  4005c1:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4005c5:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
  4005c9:	7f 1b                	jg     4005e6 <main+0x30>
  4005cb:	bf c4 06 40 00       	mov    $0x4006c4,%edi
  4005d0:	e8 9b fe ff ff       	callq  400470 <puts@plt>
  4005d5:	bf d5 06 40 00       	mov    $0x4006d5,%edi
  4005da:	e8 91 fe ff ff       	callq  400470 <puts@plt>
  4005df:	b8 00 00 00 00       	mov    $0x0,%eax
  4005e4:	eb 55                	jmp    40063b <main+0x85>
  4005e6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4005ea:	48 83 c0 08          	add    $0x8,%rax
  4005ee:	48 8b 00             	mov    (%rax),%rax
  4005f1:	48 89 c7             	mov    %rax,%rdi
  4005f4:	e8 a7 fe ff ff       	callq  4004a0 <atoi@plt>
  4005f9:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4005fc:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%rbp)
  400603:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
  40060a:	eb 0e                	jmp    40061a <main+0x64>
  40060c:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40060f:	0f af 45 f8          	imul   -0x8(%rbp),%eax
  400613:	89 45 f4             	mov    %eax,-0xc(%rbp)
  400616:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  40061a:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40061d:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  400620:	7e ea                	jle    40060c <main+0x56>
  400622:	8b 45 f4             	mov    -0xc(%rbp),%eax
  400625:	89 c6                	mov    %eax,%esi
  400627:	bf e6 06 40 00       	mov    $0x4006e6,%edi
  40062c:	b8 00 00 00 00       	mov    $0x0,%eax
  400631:	e8 4a fe ff ff       	callq  400480 <printf@plt>
  400636:	b8 00 00 00 00       	mov    $0x0,%eax
  40063b:	c9                   	leaveq 
  40063c:	c3                   	retq   
  40063d:	0f 1f 00             	nopl   (%rax)

0000000000400640 <__libc_csu_init>:
  400640:	41 57                	push   %r15
  400642:	41 56                	push   %r14
  400644:	41 89 ff             	mov    %edi,%r15d
  400647:	41 55                	push   %r13
  400649:	41 54                	push   %r12
  40064b:	4c 8d 25 be 07 20 00 	lea    0x2007be(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400652:	55                   	push   %rbp
  400653:	48 8d 2d be 07 20 00 	lea    0x2007be(%rip),%rbp        # 600e18 <__init_array_end>
  40065a:	53                   	push   %rbx
  40065b:	49 89 f6             	mov    %rsi,%r14
  40065e:	49 89 d5             	mov    %rdx,%r13
  400661:	4c 29 e5             	sub    %r12,%rbp
  400664:	48 83 ec 08          	sub    $0x8,%rsp
  400668:	48 c1 fd 03          	sar    $0x3,%rbp
  40066c:	e8 c7 fd ff ff       	callq  400438 <_init>
  400671:	48 85 ed             	test   %rbp,%rbp
  400674:	74 20                	je     400696 <__libc_csu_init+0x56>
  400676:	31 db                	xor    %ebx,%ebx
  400678:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40067f:	00 
  400680:	4c 89 ea             	mov    %r13,%rdx
  400683:	4c 89 f6             	mov    %r14,%rsi
  400686:	44 89 ff             	mov    %r15d,%edi
  400689:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40068d:	48 83 c3 01          	add    $0x1,%rbx
  400691:	48 39 eb             	cmp    %rbp,%rbx
  400694:	75 ea                	jne    400680 <__libc_csu_init+0x40>
  400696:	48 83 c4 08          	add    $0x8,%rsp
  40069a:	5b                   	pop    %rbx
  40069b:	5d                   	pop    %rbp
  40069c:	41 5c                	pop    %r12
  40069e:	41 5d                	pop    %r13
  4006a0:	41 5e                	pop    %r14
  4006a2:	41 5f                	pop    %r15
  4006a4:	c3                   	retq   
  4006a5:	90                   	nop
  4006a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006ad:	00 00 00 

00000000004006b0 <__libc_csu_fini>:
  4006b0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004006b4 <_fini>:
  4006b4:	48 83 ec 08          	sub    $0x8,%rsp
  4006b8:	48 83 c4 08          	add    $0x8,%rsp
  4006bc:	c3                   	retq   
