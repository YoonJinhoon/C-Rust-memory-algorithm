	.file	"divide_conquer.c"
	.text
	.globl	find_max_divide_conquer
	.type	find_max_divide_conquer, @function
find_max_divide_conquer:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.L2
	movl	$-1, %eax
	jmp	.L3
.L2:
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.L4
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	jmp	.L3
.L4:
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	find_max_divide_conquer
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	find_max_divide_conquer
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	find_max_divide_conquer, .-find_max_divide_conquer
	.section	.rodata
.LC0:
	.string	"Array 1 Max: %d\n"
.LC1:
	.string	"Array 2 Max: %d\n"
.LC2:
	.string	"Array 3 Max: %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$3, -48(%rbp)
	movl	$5, -44(%rbp)
	movl	$1, -40(%rbp)
	movl	$8, -36(%rbp)
	movl	$2, -32(%rbp)
	movl	$9, -28(%rbp)
	movl	$4, -24(%rbp)
	movl	$7, -108(%rbp)
	movl	-108(%rbp), %eax
	leal	-1(%rax), %edx
	leaq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	find_max_divide_conquer
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, -80(%rbp)
	movl	$20, -76(%rbp)
	movl	$30, -72(%rbp)
	movl	$40, -68(%rbp)
	movl	$50, -64(%rbp)
	movl	$5, -100(%rbp)
	movl	-100(%rbp), %eax
	leal	-1(%rax), %edx
	leaq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	find_max_divide_conquer
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$100, -84(%rbp)
	movl	$1, -92(%rbp)
	movl	-92(%rbp), %eax
	leal	-1(%rax), %edx
	leaq	-84(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	find_max_divide_conquer
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
