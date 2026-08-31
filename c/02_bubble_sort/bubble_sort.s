	.file	"bubble_sort.c"
	.text
	.section	.rodata
.LC0:
	.string	"\n--- Pass %d --- \n"
	.align 8
.LC1:
	.string	"Comparing arr[%d] (%d at %p) and arr[%d] (%d at %p)\n"
	.align 8
.LC2:
	.string	" -> Swapped! New values: arr[%d]=%d, arr[%d]=%d\n"
	.align 8
.LC3:
	.string	"No swaps in this pass. Array is already sorted!"
	.text
	.globl	bubble_sort
	.type	bubble_sort, @function
bubble_sort:
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
	movl	$0, -16(%rbp)
	jmp	.L2
.L8:
	movl	$0, -12(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -8(%rbp)
	jmp	.L3
.L5:
	movl	-8(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-8(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edi
	movl	-8(%rbp), %eax
	leal	1(%rax), %r8d
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-8(%rbp), %eax
	subq	$8, %rsp
	pushq	%rsi
	movl	%edi, %r9d
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-8(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L4
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-8(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$1, -12(%rbp)
	movl	-8(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %esi
	movl	-8(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-8(%rbp), %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L4:
	addl	$1, -8(%rbp)
.L3:
	movl	-28(%rbp), %eax
	subl	-16(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -8(%rbp)
	jl	.L5
	cmpl	$0, -12(%rbp)
	jne	.L6
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	jmp	.L7
.L6:
	addl	$1, -16(%rbp)
.L2:
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -16(%rbp)
	jl	.L8
	nop
.L7:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	bubble_sort, .-bubble_sort
	.section	.rodata
	.align 8
.LC4:
	.string	"Index %d | value: %2d | Address: %p\n"
	.align 8
.LC5:
	.string	"------------------------------------"
	.text
	.globl	print_array_with_addresses
	.type	print_array_with_addresses, @function
print_array_with_addresses:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -4(%rbp)
	jmp	.L10
.L11:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L10:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L11
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	print_array_with_addresses, .-print_array_with_addresses
	.section	.rodata
	.align 8
.LC6:
	.string	"=== Original Array & Memory Layout ==="
	.align 8
.LC7:
	.string	"\n=== Sorted Array & Memory Layout ==="
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$64, -48(%rbp)
	movl	$34, -44(%rbp)
	movl	$25, -40(%rbp)
	movl	$12, -36(%rbp)
	movl	$22, -32(%rbp)
	movl	$11, -28(%rbp)
	movl	$90, -24(%rbp)
	movl	$7, -52(%rbp)
	movl	-52(%rbp), %edx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	print_array_with_addresses
	movl	-52(%rbp), %edx
	leaq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bubble_sort
	movl	-52(%rbp), %edx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rdi
	call	print_array_with_addresses
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
