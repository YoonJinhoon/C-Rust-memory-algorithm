	.file	"divide_conquer.c"
	.text
	.p2align 4
	.globl	find_max_divide_conquer
	.type	find_max_divide_conquer, @function
find_max_divide_conquer:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movslq	%edx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	cmpl	%r12d, %esi
	jg	.L60
	movq	%rdi, %rbx
	je	.L3
	movl	%r12d, %eax
	subl	%esi, %eax
	movl	%eax, %ebp
	sarl	%ebp
	addl	%esi, %ebp
	cmpl	%ebp, %esi
	je	.L81
	movl	%eax, %r15d
	sarl	$2, %r15d
	addl	%esi, %r15d
	cmpl	%r15d, %esi
	je	.L82
	movl	%eax, %r14d
	sarl	$3, %r14d
	addl	%esi, %r14d
	cmpl	%r14d, %esi
	je	.L83
	movl	%eax, %ecx
	sarl	$4, %ecx
	leal	(%rcx,%rsi), %r13d
	cmpl	%r13d, %esi
	je	.L84
	sarl	$5, %eax
	leal	(%rax,%rsi), %edx
	movl	%edx, 12(%rsp)
	call	find_max_divide_conquer
	movl	12(%rsp), %edx
	movq	%rbx, %rdi
	movl	%eax, 8(%rsp)
	leal	1(%rdx), %esi
	movl	%r13d, %edx
	call	find_max_divide_conquer
	movl	8(%rsp), %r8d
	cmpl	%eax, %r8d
	cmovl	%eax, %r8d
.L12:
	leal	1(%r13), %esi
	cmpl	%r14d, %esi
	jg	.L61
	je	.L85
	movl	%r14d, %edx
	movq	%rbx, %rdi
	movl	%r8d, 12(%rsp)
	subl	%esi, %edx
	sarl	%edx
	addl	%esi, %edx
	movl	%edx, 8(%rsp)
	call	find_max_divide_conquer
	movl	8(%rsp), %edx
	movq	%rbx, %rdi
	movl	%eax, %r13d
	leal	1(%rdx), %esi
	movl	%r14d, %edx
	call	find_max_divide_conquer
	movl	12(%rsp), %r8d
	cmpl	%eax, %r13d
	cmovl	%eax, %r13d
.L13:
	cmpl	%r8d, %r13d
	cmovl	%r8d, %r13d
.L10:
	leal	1(%r14), %esi
	cmpl	%r15d, %esi
	jg	.L62
	je	.L86
	movl	%r15d, %edx
	movq	%rbx, %rdi
	subl	%esi, %edx
	sarl	%edx
	addl	%esi, %edx
	movl	%edx, 8(%rsp)
	call	find_max_divide_conquer
	movl	8(%rsp), %edx
	movq	%rbx, %rdi
	movl	%eax, %r14d
	leal	1(%rdx), %esi
	movl	%r15d, %edx
	call	find_max_divide_conquer
	cmpl	%eax, %r14d
	cmovl	%eax, %r14d
.L15:
	cmpl	%r13d, %r14d
	cmovl	%r13d, %r14d
.L8:
	leal	1(%r15), %esi
	cmpl	%ebp, %esi
	jg	.L63
	je	.L18
	movl	%ebp, %eax
	subl	%esi, %eax
	movl	%eax, %r13d
	sarl	%r13d
	addl	%esi, %r13d
	cmpl	%r13d, %esi
	je	.L87
	movl	%eax, %ecx
	sarl	$2, %ecx
	addl	%esi, %ecx
	cmpl	%ecx, %esi
	je	.L88
	sarl	$3, %eax
	movq	%rbx, %rdi
	movl	%ecx, 8(%rsp)
	leal	(%rax,%rsi), %r15d
	movl	%r15d, %edx
	call	find_max_divide_conquer
	movl	8(%rsp), %edx
	leal	1(%r15), %esi
	movq	%rbx, %rdi
	movl	%eax, 12(%rsp)
	call	find_max_divide_conquer
	movl	12(%rsp), %r8d
	movl	8(%rsp), %ecx
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	movl	%eax, %r15d
.L23:
	leal	1(%rcx), %esi
	movl	%r13d, %edx
	movq	%rbx, %rdi
	call	find_max_divide_conquer
	cmpl	%r15d, %eax
	cmovge	%eax, %r15d
.L21:
	leal	1(%r13), %esi
	cmpl	%esi, %ebp
	jl	.L64
	je	.L25
	movl	%ebp, %eax
	subl	%esi, %eax
	movl	%eax, %r13d
	sarl	%r13d
	addl	%esi, %r13d
	cmpl	%esi, %r13d
	je	.L89
	sarl	$2, %eax
	movq	%rbx, %rdi
	leal	(%rax,%rsi), %edx
	movl	%edx, 12(%rsp)
	call	find_max_divide_conquer
	movl	12(%rsp), %edx
	movq	%rbx, %rdi
	movl	%eax, 8(%rsp)
	leal	1(%rdx), %esi
	movl	%r13d, %edx
	call	find_max_divide_conquer
	movl	8(%rsp), %ecx
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
.L28:
	leal	1(%r13), %esi
	cmpl	%esi, %ebp
	jl	.L65
	je	.L90
	movl	%ebp, %edx
	movq	%rbx, %rdi
	movl	%ecx, 12(%rsp)
	subl	%esi, %edx
	sarl	%edx
	addl	%esi, %edx
	movl	%edx, 8(%rsp)
	call	find_max_divide_conquer
	movl	8(%rsp), %edx
	movq	%rbx, %rdi
	movl	%eax, %r13d
	leal	1(%rdx), %esi
	movl	%ebp, %edx
	call	find_max_divide_conquer
	movl	12(%rsp), %ecx
	cmpl	%eax, %r13d
	cmovl	%eax, %r13d
.L29:
	cmpl	%ecx, %r13d
	cmovl	%ecx, %r13d
.L24:
	cmpl	%r15d, %r13d
	cmovl	%r15d, %r13d
.L17:
	cmpl	%r14d, %r13d
	cmovl	%r14d, %r13d
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L81:
	movslq	%ebp, %rax
	movl	(%rdi,%rax,4), %r13d
.L6:
	leal	1(%rbp), %esi
	cmpl	%esi, %r12d
	jl	.L66
	je	.L32
	movl	%r12d, %eax
	subl	%esi, %eax
	movl	%eax, %r15d
	sarl	%r15d
	addl	%esi, %r15d
	cmpl	%r15d, %esi
	je	.L91
	movl	%eax, %r14d
	sarl	$2, %r14d
	addl	%esi, %r14d
	cmpl	%r14d, %esi
	je	.L92
	movl	%eax, %ecx
	sarl	$3, %ecx
	leal	(%rcx,%rsi), %ebp
	cmpl	%ebp, %esi
	je	.L93
	sarl	$4, %eax
	movq	%rbx, %rdi
	leal	(%rax,%rsi), %edx
	movl	%edx, 12(%rsp)
	call	find_max_divide_conquer
	movl	12(%rsp), %edx
	movq	%rbx, %rdi
	movl	%eax, 8(%rsp)
	leal	1(%rdx), %esi
	movl	%ebp, %edx
	call	find_max_divide_conquer
	movl	8(%rsp), %r8d
	cmpl	%eax, %r8d
	cmovl	%eax, %r8d
.L39:
	leal	1(%rbp), %esi
	cmpl	%esi, %r14d
	jl	.L67
	je	.L94
	movl	%r14d, %edx
	movq	%rbx, %rdi
	movl	%r8d, 12(%rsp)
	subl	%esi, %edx
	sarl	%edx
	addl	%esi, %edx
	movl	%edx, 8(%rsp)
	call	find_max_divide_conquer
	movl	8(%rsp), %edx
	movq	%rbx, %rdi
	movl	%eax, %ebp
	leal	1(%rdx), %esi
	movl	%r14d, %edx
	call	find_max_divide_conquer
	movl	12(%rsp), %r8d
	cmpl	%eax, %ebp
	cmovl	%eax, %ebp
.L40:
	cmpl	%r8d, %ebp
	cmovl	%r8d, %ebp
.L37:
	leal	1(%r14), %esi
	cmpl	%r15d, %esi
	jg	.L68
	je	.L95
	movl	%r15d, %edx
	movq	%rbx, %rdi
	subl	%esi, %edx
	sarl	%edx
	addl	%esi, %edx
	movl	%edx, 8(%rsp)
	call	find_max_divide_conquer
	movl	8(%rsp), %edx
	movq	%rbx, %rdi
	movl	%eax, %r14d
	leal	1(%rdx), %esi
	movl	%r15d, %edx
	call	find_max_divide_conquer
	cmpl	%eax, %r14d
	cmovl	%eax, %r14d
.L42:
	cmpl	%ebp, %r14d
	cmovl	%ebp, %r14d
.L35:
	leal	1(%r15), %esi
	cmpl	%esi, %r12d
	jl	.L69
	je	.L45
	movl	%r12d, %eax
	subl	%esi, %eax
	movl	%eax, %ebp
	sarl	%ebp
	addl	%esi, %ebp
	cmpl	%ebp, %esi
	je	.L96
	movl	%eax, %r15d
	sarl	$2, %r15d
	addl	%esi, %r15d
	cmpl	%r15d, %esi
	je	.L97
	sarl	$3, %eax
	movq	%rbx, %rdi
	leal	(%rax,%rsi), %edx
	movl	%edx, 12(%rsp)
	call	find_max_divide_conquer
	movl	12(%rsp), %edx
	movq	%rbx, %rdi
	movl	%eax, 8(%rsp)
	leal	1(%rdx), %esi
	movl	%r15d, %edx
	call	find_max_divide_conquer
	movl	8(%rsp), %ecx
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
.L50:
	leal	1(%r15), %esi
	cmpl	%esi, %ebp
	jl	.L70
	je	.L98
	movl	%ebp, %edx
	movq	%rbx, %rdi
	movl	%ecx, 12(%rsp)
	subl	%esi, %edx
	sarl	%edx
	addl	%esi, %edx
	movl	%edx, 8(%rsp)
	call	find_max_divide_conquer
	movl	8(%rsp), %edx
	movq	%rbx, %rdi
	movl	%eax, %r15d
	leal	1(%rdx), %esi
	movl	%ebp, %edx
	call	find_max_divide_conquer
	movl	12(%rsp), %ecx
	cmpl	%eax, %r15d
	cmovl	%eax, %r15d
.L51:
	cmpl	%ecx, %r15d
	cmovl	%ecx, %r15d
.L48:
	leal	1(%rbp), %esi
	cmpl	%esi, %r12d
	jl	.L71
	je	.L54
	movl	%r12d, %eax
	subl	%esi, %eax
	movl	%eax, %ebp
	sarl	%ebp
	addl	%esi, %ebp
	cmpl	%esi, %ebp
	je	.L99
	sarl	$2, %eax
	movq	%rbx, %rdi
	leal	(%rax,%rsi), %edx
	movl	%edx, 12(%rsp)
	call	find_max_divide_conquer
	movl	12(%rsp), %edx
	movq	%rbx, %rdi
	movl	%eax, 8(%rsp)
	leal	1(%rdx), %esi
	movl	%ebp, %edx
	call	find_max_divide_conquer
	movl	8(%rsp), %ecx
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
.L57:
	leal	1(%rbp), %esi
	cmpl	%esi, %r12d
	jl	.L72
	je	.L100
	movl	%r12d, %edx
	movq	%rbx, %rdi
	movl	%ecx, 12(%rsp)
	subl	%esi, %edx
	sarl	%edx
	addl	%esi, %edx
	movl	%edx, 8(%rsp)
	call	find_max_divide_conquer
	movl	8(%rsp), %edx
	movq	%rbx, %rdi
	movl	%eax, %ebp
	leal	1(%rdx), %esi
	movl	%r12d, %edx
	call	find_max_divide_conquer
	movl	12(%rsp), %ecx
	cmpl	%eax, %ebp
	cmovge	%ebp, %eax
.L58:
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
.L53:
	cmpl	%r15d, %eax
	cmovl	%r15d, %eax
.L44:
	cmpl	%r14d, %eax
	cmovl	%r14d, %eax
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L3:
	movslq	%esi, %rsi
	movl	(%rdi,%rsi,4), %eax
.L1:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	.cfi_restore_state
	movl	(%rbx,%r12,4), %eax
.L31:
	cmpl	%r13d, %eax
	cmovl	%r13d, %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L92:
	.cfi_restore_state
	movslq	%r14d, %rax
	movl	(%rbx,%rax,4), %ebp
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L83:
	movslq	%r14d, %rax
	movl	(%rdi,%rax,4), %r13d
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L91:
	movslq	%r15d, %rax
	movl	(%rbx,%rax,4), %r14d
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L82:
	movslq	%r15d, %rax
	movl	(%rdi,%rax,4), %r14d
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L45:
	movl	(%rbx,%r12,4), %eax
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L18:
	movslq	%ebp, %rax
	movl	(%rbx,%rax,4), %r13d
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L86:
	movslq	%r15d, %rax
	movl	(%rbx,%rax,4), %r14d
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L25:
	movslq	%ebp, %rax
	movl	(%rbx,%rax,4), %r13d
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L87:
	movslq	%r13d, %rax
	movl	(%rbx,%rax,4), %r15d
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L95:
	movslq	%r15d, %rax
	movl	(%rbx,%rax,4), %r14d
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L54:
	movl	(%rbx,%r12,4), %eax
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L96:
	movslq	%ebp, %rax
	movl	(%rbx,%rax,4), %r15d
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L97:
	movslq	%r15d, %rax
	movl	(%rbx,%rax,4), %ecx
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L94:
	movslq	%r14d, %rax
	movl	(%rbx,%rax,4), %ebp
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L93:
	movslq	%ebp, %rax
	movl	(%rbx,%rax,4), %r8d
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L98:
	movslq	%ebp, %rax
	movl	(%rbx,%rax,4), %r15d
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L89:
	movslq	%r13d, %rax
	movl	(%rbx,%rax,4), %ecx
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L88:
	movslq	%ecx, %rax
	movl	(%rbx,%rax,4), %r15d
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L85:
	movslq	%r14d, %rax
	movl	(%rbx,%rax,4), %r13d
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L84:
	movslq	%r13d, %rax
	movl	(%rdi,%rax,4), %r8d
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L90:
	movslq	%ebp, %rax
	movl	(%rbx,%rax,4), %r13d
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L100:
	movl	(%rbx,%r12,4), %eax
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L99:
	movslq	%ebp, %rax
	movl	(%rbx,%rax,4), %ecx
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L60:
	movl	$-1, %eax
	jmp	.L1
.L66:
	movl	$-1, %eax
	jmp	.L31
.L69:
	movl	$-1, %eax
	jmp	.L44
.L63:
	movl	$-1, %r13d
	jmp	.L17
.L62:
	movl	$-1, %r14d
	jmp	.L15
.L68:
	movl	$-1, %r14d
	jmp	.L42
.L64:
	movl	$-1, %r13d
	jmp	.L24
.L71:
	movl	$-1, %eax
	jmp	.L53
.L70:
	movl	$-1, %r15d
	jmp	.L51
.L67:
	movl	$-1, %ebp
	jmp	.L40
.L65:
	movl	$-1, %r13d
	jmp	.L29
.L61:
	movl	$-1, %r13d
	jmp	.L13
.L72:
	movl	$-1, %eax
	jmp	.L58
	.cfi_endproc
.LFE23:
	.size	find_max_divide_conquer, .-find_max_divide_conquer
	.p2align 4
	.type	find_max_divide_conquer.part.0, @function
find_max_divide_conquer.part.0:
.LFB25:
	.cfi_startproc
	movslq	%edx, %r10
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdi, %r11
	movl	%r10d, %eax
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	subl	%esi, %eax
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%eax, %r9d
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	sarl	%r9d
	addl	%esi, %r9d
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	cmpl	%r9d, %esi
	je	.L136
	movl	%eax, %ebp
	sarl	$2, %ebp
	addl	%esi, %ebp
	cmpl	%ebp, %esi
	je	.L137
	sarl	$3, %eax
	leal	(%rax,%rsi), %ebx
	movl	%ebx, %edx
	call	find_max_divide_conquer
	leal	1(%rbx), %esi
	movl	%ebp, %edx
	movq	%r11, %rdi
	movl	%eax, %r12d
	call	find_max_divide_conquer
	cmpl	%eax, %r12d
	cmovl	%eax, %r12d
.L105:
	leal	1(%rbp), %esi
	cmpl	%esi, %r9d
	jl	.L127
	je	.L107
	movl	%r9d, %eax
	subl	%esi, %eax
	movl	%eax, %ebp
	sarl	%ebp
	addl	%esi, %ebp
	cmpl	%ebp, %esi
	je	.L138
	sarl	$2, %eax
	movq	%r11, %rdi
	leal	(%rax,%rsi), %ebx
	movl	%ebx, %edx
	call	find_max_divide_conquer
	leal	1(%rbx), %esi
	movl	%ebp, %edx
	movq	%r11, %rdi
	movl	%eax, %r13d
	call	find_max_divide_conquer
	cmpl	%eax, %r13d
	cmovge	%r13d, %eax
	movl	%eax, %ebx
.L110:
	leal	1(%rbp), %esi
	movl	%r9d, %edx
	movq	%r11, %rdi
	call	find_max_divide_conquer
	cmpl	%ebx, %eax
	cmovge	%eax, %ebx
.L106:
	cmpl	%r12d, %ebx
	cmovl	%r12d, %ebx
.L103:
	leal	1(%r9), %esi
	cmpl	%esi, %r10d
	jl	.L128
	je	.L112
	movl	%r10d, %eax
	subl	%esi, %eax
	movl	%eax, %r9d
	sarl	%r9d
	addl	%esi, %r9d
	cmpl	%r9d, %esi
	je	.L139
	movl	%eax, %ebp
	sarl	$2, %ebp
	addl	%esi, %ebp
	cmpl	%ebp, %esi
	je	.L140
	sarl	$3, %eax
	movq	%r11, %rdi
	leal	(%rax,%rsi), %r12d
	movl	%r12d, %edx
	call	find_max_divide_conquer
	leal	1(%r12), %esi
	movl	%ebp, %edx
	movq	%r11, %rdi
	movl	%eax, %r13d
	call	find_max_divide_conquer
	cmpl	%eax, %r13d
	cmovge	%r13d, %eax
	movl	%eax, %r12d
.L117:
	leal	1(%rbp), %esi
	cmpl	%esi, %r9d
	jl	.L129
	je	.L141
	movl	%r9d, %r13d
	movq	%r11, %rdi
	subl	%esi, %r13d
	sarl	%r13d
	addl	%esi, %r13d
	movl	%r13d, %edx
	call	find_max_divide_conquer
	leal	1(%r13), %esi
	movl	%r9d, %edx
	movq	%r11, %rdi
	movl	%eax, %ebp
	call	find_max_divide_conquer
	cmpl	%eax, %ebp
	cmovl	%eax, %ebp
.L118:
	cmpl	%r12d, %ebp
	cmovl	%r12d, %ebp
.L115:
	leal	1(%r9), %esi
	cmpl	%esi, %r10d
	jl	.L130
	je	.L121
	movl	%r10d, %eax
	subl	%esi, %eax
	movl	%eax, %r9d
	sarl	%r9d
	addl	%esi, %r9d
	cmpl	%r9d, %esi
	je	.L142
	sarl	$2, %eax
	movq	%r11, %rdi
	leal	(%rax,%rsi), %r12d
	movl	%r12d, %edx
	call	find_max_divide_conquer
	leal	1(%r12), %esi
	movl	%r9d, %edx
	movq	%r11, %rdi
	movl	%eax, %r13d
	call	find_max_divide_conquer
	cmpl	%eax, %r13d
	cmovge	%r13d, %eax
	movl	%eax, %r12d
.L124:
	leal	1(%r9), %esi
	cmpl	%esi, %r10d
	jl	.L131
	je	.L143
	movl	%r10d, %r13d
	movq	%r11, %rdi
	subl	%esi, %r13d
	sarl	%r13d
	addl	%esi, %r13d
	movl	%r13d, %edx
	call	find_max_divide_conquer
	leal	1(%r13), %esi
	movl	%r10d, %edx
	movq	%r11, %rdi
	movl	%eax, %r9d
	call	find_max_divide_conquer
	cmpl	%eax, %r9d
	cmovge	%r9d, %eax
.L125:
	cmpl	%r12d, %eax
	cmovl	%r12d, %eax
.L120:
	cmpl	%ebp, %eax
	cmovl	%ebp, %eax
.L111:
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L137:
	.cfi_restore_state
	movslq	%ebp, %rax
	movl	(%rdi,%rax,4), %r12d
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L136:
	movslq	%r9d, %rax
	movl	(%rdi,%rax,4), %ebx
	jmp	.L103
	.p2align 4,,10
	.p2align 3
.L112:
	movl	(%r11,%r10,4), %eax
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L107:
	.cfi_restore_state
	movslq	%r9d, %rax
	movl	(%r11,%rax,4), %ebx
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L121:
	movl	(%r11,%r10,4), %eax
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L139:
	movslq	%r9d, %rax
	movl	(%r11,%rax,4), %ebp
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L138:
	movslq	%ebp, %rax
	movl	(%r11,%rax,4), %ebx
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L143:
	movl	(%r11,%r10,4), %eax
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L142:
	movslq	%r9d, %rax
	movl	(%r11,%rax,4), %r12d
	jmp	.L124
	.p2align 4,,10
	.p2align 3
.L141:
	movslq	%r9d, %rax
	movl	(%r11,%rax,4), %ebp
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L140:
	movslq	%ebp, %rax
	movl	(%r11,%rax,4), %r12d
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L128:
	movl	$-1, %eax
	jmp	.L111
.L130:
	movl	$-1, %eax
	jmp	.L120
.L127:
	movl	$-1, %ebx
	jmp	.L106
.L129:
	movl	$-1, %ebp
	jmp	.L118
.L131:
	movl	$-1, %eax
	jmp	.L125
	.cfi_endproc
.LFE25:
	.size	find_max_divide_conquer.part.0, .-find_max_divide_conquer.part.0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"Array 1 Max: %d\n"
.LC4:
	.string	"Array 2 Max: %d\n"
.LC5:
	.string	"Array 3 Max: %d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	endbr64
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movdqa	.LC0(%rip), %xmm0
	xorl	%esi, %esi
	movl	$6, %edx
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movq	.LC1(%rip), %rax
	leaq	32(%rsp), %rdi
	movl	$4, 56(%rsp)
	movaps	%xmm0, 32(%rsp)
	movq	%rax, 48(%rsp)
	call	find_max_divide_conquer.part.0
	leaq	.LC2(%rip), %rsi
	movl	$2, %edi
	movl	%eax, %edx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	xorl	%esi, %esi
	movq	%rsp, %rdi
	movl	$4, %edx
	movdqa	.LC3(%rip), %xmm0
	movl	$50, 16(%rsp)
	movaps	%xmm0, (%rsp)
	call	find_max_divide_conquer.part.0
	leaq	.LC4(%rip), %rsi
	movl	$2, %edi
	movl	%eax, %edx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	xorl	%eax, %eax
	movl	$100, %edx
	leaq	.LC5(%rip), %rsi
	movl	$2, %edi
	call	__printf_chk@PLT
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L147
	xorl	%eax, %eax
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L147:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	3
	.long	5
	.long	1
	.long	8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	2
	.long	9
	.section	.rodata.cst16
	.align 16
.LC3:
	.long	10
	.long	20
	.long	30
	.long	40
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
