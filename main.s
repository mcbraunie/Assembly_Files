	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"Nothing 1"
	.text
	.globl	doNothing1
	.type	doNothing1, @function
doNothing1:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	doNothing1, .-doNothing1
	.section	.rodata
.LC1:
	.string	"Nothing 2"
	.text
	.globl	doNothing2
	.type	doNothing2, @function
doNothing2:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	doNothing2, .-doNothing2
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
	subq	$16, %rsp
	movl	$5, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L6
	movl	$0, %eax
	call	doNothing1
	jmp	.L8
.L6:
	movl	$0, %eax
	call	doNothing2
	jmp	.L8
.L9:
	movl	$0, %eax
	call	doNothing1
	addl	$1, -12(%rbp)
.L8:
	cmpl	$7, -12(%rbp)
	jle	.L9
	movl	$3, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L10
.L11:
	movl	$0, %eax
	call	doNothing1
	addl	$1, -8(%rbp)
.L10:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L11
.L12:
	movl	$0, %eax
	call	doNothing1
	addl	$1, -12(%rbp)
	cmpl	$8, -12(%rbp)
	jle	.L12
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-7ubuntu2) 11.2.0"
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
