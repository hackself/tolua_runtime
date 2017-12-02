	.file	"lj_ccallback.c"
	.section	.text.unlikely,"x"
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	lj_ccallback_ptr2slot
	.def	lj_ccallback_ptr2slot;	.scl	2;	.type	32;	.endef
	.seh_proc	lj_ccallback_ptr2slot
lj_ccallback_ptr2slot:
	.seh_endprologue
	subq	184(%rcx), %rdx
	movl	$-1, %eax
	cmpq	$4095, %rdx
	movq	%rdx, %r8
	jbe	.L6
	rep ret
	.p2align 4,,10
.L6:
	leal	-8(%rdx), %r9d
	movl	$981706811, %ecx
	movl	%r9d, %edx
	shrl	$2, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%edx, %ecx
	shrl	$3, %ecx
	imull	$140, %ecx, %eax
	sall	$5, %ecx
	subl	%eax, %r9d
	shrl	$2, %r9d
	leal	(%r9,%rcx), %eax
	movl	%eax, %edx
	shrl	$5, %edx
	leal	(%rdx,%rdx,2), %edx
	leal	2(%rax,%rdx), %edx
	sall	$2, %edx
	cmpl	%r8d, %edx
	movl	$-1, %edx
	cmovne	%edx, %eax
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely,"x"
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	lj_ccallback_mcode_free
	.def	lj_ccallback_mcode_free;	.scl	2;	.type	32;	.endef
	.seh_proc	lj_ccallback_mcode_free
lj_ccallback_mcode_free:
	.seh_endprologue
	movq	184(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L7
	movl	$32768, %r8d
	xorl	%edx, %edx
	rex.W jmp *__imp_VirtualFree(%rip)
	.p2align 4,,10
.L7:
	rep ret
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely,"x"
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	lj_ccallback_enter
	.def	lj_ccallback_enter;	.scl	2;	.type	32;	.endef
	.seh_proc	lj_ccallback_enter
lj_ccallback_enter:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	24(%rcx), %rbx
	movq	16(%rcx), %r13
	movq	%rcx, %rdi
	movl	244(%rbx), %eax
	testl	%eax, %eax
	jne	.L42
	movq	48(%r13), %rax
	andl	$-17, 596(%rbx)
	movl	$-1, 92(%rdx)
	movl	$0, 88(%rdx)
	movl	%r13d, 96(%rdx)
	movq	%rax, 104(%rdx)
	movq	%rdx, 48(%r13)
	movl	208(%rcx), %edx
	cmpl	200(%rcx), %edx
	movq	24(%r13), %rbx
	movq	176(%rcx), %r12
	jnb	.L41
	movq	192(%rcx), %rcx
	movl	%edx, %eax
	movzwl	(%rcx,%rax,2), %eax
	testw	%ax, %ax
	jne	.L14
.L41:
	movq	%r13, %rax
	movq	%r13, %rdx
	xorl	%esi, %esi
	xorl	%ebp, %ebp
.L13:
	leaq	16(%rbx), %r9
	movl	%eax, 8(%rbx)
	movl	$1, (%rbx)
	movl	%ebp, 4(%rbx)
	movq	%r9, %rax
	subq	16(%r13), %rax
	addl	$2, %eax
	testq	%rsi, %rsi
	movl	%eax, 12(%rbx)
	movq	%r9, 16(%r13)
	movq	%r9, 24(%r13)
	je	.L43
	cmpb	$0, 6(%rdx)
	jne	.L18
	movl	16(%rdx), %eax
	movq	48(%r13), %rcx
	addl	$4, %eax
	movl	%eax, 100(%rcx)
.L18:
	movl	32(%r13), %eax
	subq	%r9, %rax
	cmpq	$160, %rax
	jle	.L44
.L19:
	movzwl	8(%rsi), %ebx
	xorl	%esi, %esi
	testl	%ebx, %ebx
	je	.L20
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
	.p2align 4,,10
.L26:
	movq	(%rdi), %r8
	salq	$4, %rbx
	addq	%r8, %rbx
	movl	(%rbx), %eax
	movl	%eax, %edx
	shrl	$28, %edx
	cmpl	$8, %edx
	je	.L21
	.p2align 4,,10
.L22:
	movzwl	%ax, %eax
	salq	$4, %rax
	leaq	(%r8,%rax), %rdx
	movl	(%rdx), %eax
	movl	%eax, %ecx
	shrl	$28, %ecx
	cmpl	$8, %ecx
	je	.L22
	andl	$-201326592, %eax
	movl	4(%rdx), %r8d
	cmpl	$67108864, %eax
	je	.L45
	cmpl	$3, %r14d
	ja	.L24
	movl	%r14d, %eax
	addl	$1, %r14d
	leaq	112(%rdi,%rax,8), %rax
.L25:
	leaq	8(%r9), %r15
	movq	%rax, 32(%rsp)
	xorl	%r8d, %r8d
	movq	%rdi, %rcx
	call	lj_cconv_tv_ct
	movq	%r15, %r9
	addl	%eax, %esi
.L21:
	movzwl	8(%rbx), %ebx
	testl	%ebx, %ebx
	jne	.L26
.L20:
	movq	%r9, 24(%r13)
	jmp	.L27
	.p2align 4,,10
.L28:
	subl	$1, %esi
.L27:
	testl	%esi, %esi
	jle	.L46
	movl	8(%r13), %eax
	movl	36(%rax), %edi
	cmpl	%edi, 32(%rax)
	jb	.L28
	movq	%r13, %rcx
	call	lj_gc_step
	jmp	.L28
	.p2align 4,,10
.L24:
	addl	$7, %r8d
	movl	%ebp, %eax
	shrl	$3, %r8d
	leaq	(%r12,%rax,8), %rax
	addl	%r8d, %ebp
	jmp	.L25
	.p2align 4,,10
.L45:
	cmpl	$3, %r14d
	ja	.L24
	movl	%r14d, %eax
	addl	$1, %r14d
	leaq	48(%rdi,%rax,8), %rax
	jmp	.L25
	.p2align 4,,10
.L46:
	movq	%r13, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L14:
	movq	40(%rdi), %rcx
	movzwl	%ax, %esi
	salq	$4, %rsi
	addq	(%rdi), %rsi
	cmpl	24(%rcx), %edx
	movzwl	(%rsi), %ebp
	jnb	.L15
	movl	8(%rcx), %eax
	movslq	%edx, %rdx
	leaq	(%rax,%rdx,8), %rax
.L16:
	movl	(%rax), %edx
	movq	%rdx, %rax
	jmp	.L13
.L44:
	movl	$20, %edx
	movq	%r13, %rcx
	call	lj_state_growstack
	movq	16(%r13), %r9
	jmp	.L19
.L15:
	call	lj_tab_getinth
	jmp	.L16
.L43:
	movq	16(%rdi), %rcx
	movl	$3819, %edx
	call	lj_err_caller
.L42:
	movl	$3819, %edx
	movq	%r13, %rcx
	call	lj_err_str
	movq	24(%r13), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, 24(%r13)
	movl	%eax, (%rdx)
	movl	$-5, 4(%rdx)
	movq	224(%rbx), %rax
	testq	%rax, %rax
	je	.L11
	movq	%r13, %rcx
	call	*%rax
.L11:
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely,"x"
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	lj_ccallback_leave
	.def	lj_ccallback_leave;	.scl	2;	.type	32;	.endef
	.seh_proc	lj_ccallback_leave
lj_ccallback_leave:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	16(%rcx), %rsi
	movq	%rcx, %rdi
	movq	%rdx, %r9
	movq	24(%rsi), %r10
	movq	16(%rsi), %rbp
	cmpq	%rdx, %r10
	movq	%r10, 16(%rsi)
	ja	.L48
	movl	-8(%r10), %eax
	cmpb	$0, 6(%rax)
	jne	.L48
	movl	16(%rax), %eax
	movq	48(%rsi), %rdx
	movl	-56(%rax), %ecx
	leaq	4(%rax,%rcx,4), %rax
	movl	%eax, 100(%rdx)
.L48:
	movq	(%rdi), %r8
	movzwl	-12(%r10), %eax
	jmp	.L66
	.p2align 4,,10
.L68:
	movzwl	%ax, %eax
.L66:
	salq	$4, %rax
	leaq	(%r8,%rax), %rbx
	movl	(%rbx), %eax
	movl	%eax, %ecx
	shrl	$28, %ecx
	cmpl	$8, %ecx
	je	.L68
	cmpl	$4, %ecx
	je	.L51
	andl	$-201326592, %eax
	leaq	112(%rdi), %r12
	movl	$0, 32(%rsp)
	movl	%eax, %ecx
	leaq	48(%rdi), %rax
	movq	%rbx, %rdx
	cmpl	$67108864, %ecx
	movq	%rdi, %rcx
	cmove	%rax, %r12
	movq	%r12, %r8
	call	lj_cconv_ct_tv
	movl	(%rbx), %eax
	testl	$-201326592, %eax
	jne	.L67
	movl	4(%rbx), %edx
	cmpl	$3, %edx
	ja	.L67
	testl	$8388608, %eax
	jne	.L69
	cmpl	$1, %edx
	je	.L70
	movswl	(%r12), %eax
.L60:
	movl	%eax, (%r12)
.L67:
	movq	24(%rsi), %r10
.L51:
	movq	48(%rsi), %rax
	subq	$16, %r10
	movq	104(%rax), %rax
	movq	%r10, 24(%rsi)
	movq	%rbp, 16(%rsi)
	movq	%rax, 48(%rsi)
	movl	$0, 208(%rdi)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L69:
	cmpl	$1, %edx
	je	.L71
	movzwl	(%r12), %eax
	jmp	.L60
.L70:
	movsbl	(%r12), %eax
	jmp	.L60
.L71:
	movzbl	(%r12), %eax
	jmp	.L60
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely,"x"
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	lj_ccallback_new
	.def	lj_ccallback_new;	.scl	2;	.type	32;	.endef
	.seh_proc	lj_ccallback_new
lj_ccallback_new:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, %rbx
	movl	(%rdx), %ecx
	movq	%r8, %rsi
	movl	%ecx, %eax
	shrl	$28, %eax
	cmpl	$2, %eax
	jne	.L105
	cmpl	$8, 4(%rdx)
	jne	.L105
	movq	(%rbx), %r8
	.p2align 4,,10
.L74:
	movzwl	%cx, %r10d
	salq	$4, %r10
	leaq	(%r8,%r10), %rdx
	movl	(%rdx), %ecx
	movl	%ecx, %eax
	shrl	$28, %eax
	cmpl	$8, %eax
	je	.L74
	cmpl	$6, %eax
	jne	.L105
	movl	%ecx, %eax
	.p2align 4,,10
.L75:
	movzwl	%ax, %eax
	salq	$4, %rax
	leaq	(%r8,%rax), %r11
	movl	(%r11), %eax
	movl	%eax, %r9d
	shrl	$28, %r9d
	cmpl	$8, %r9d
	je	.L75
	movzwl	8(%rdx), %eax
	leal	-4(%r9), %edx
	cmpl	$1, %edx
	jbe	.L76
	cmpl	$2, %r9d
	je	.L76
	testl	%r9d, %r9d
	jne	.L105
	cmpl	$8, 4(%r11)
	ja	.L105
.L76:
	andl	$8388608, %ecx
	jne	.L105
	testl	%eax, %eax
	je	.L77
	xorl	%r11d, %r11d
	.p2align 4,,10
.L81:
	salq	$4, %rax
	leaq	(%r8,%rax), %r9
	movl	(%r9), %eax
	movl	%eax, %edx
	shrl	$28, %edx
	cmpl	$8, %edx
	je	.L78
	.p2align 4,,10
.L79:
	movzwl	%ax, %eax
	salq	$4, %rax
	leaq	(%r8,%rax), %rcx
	movl	(%rcx), %eax
	movl	%eax, %edx
	shrl	$28, %edx
	cmpl	$8, %edx
	je	.L79
	cmpl	$5, %edx
	je	.L80
	cmpl	$2, %edx
	je	.L80
	testl	%edx, %edx
	jne	.L105
	cmpl	$8, 4(%rcx)
	ja	.L105
.L80:
	addl	$1, %r11d
	cmpl	$16, %r11d
	jg	.L105
.L78:
	movzwl	8(%r9), %eax
	testl	%eax, %eax
	jne	.L81
.L77:
	movl	204(%rbx), %edi
	movl	200(%rbx), %edx
	sarq	$4, %r10
	movq	%r10, %r13
	movq	192(%rbx), %rbp
	cmpl	%edi, %edx
	jbe	.L95
.L84:
	movl	%edi, %eax
	leaq	0(%rbp,%rax,2), %rax
	cmpw	$0, (%rax)
	jne	.L139
.L82:
	movq	40(%rbx), %rbp
	movw	%r13w, (%rax)
	leal	1(%rdi), %eax
	movl	%eax, 204(%rbx)
	cmpl	%edi, 24(%rbp)
	jbe	.L92
	movl	8(%rbp), %edx
	movslq	%edi, %rax
	leaq	(%rdx,%rax,8), %rax
.L93:
	movl	%esi, (%rax)
	movl	$-9, 4(%rax)
	movzbl	4(%rbp), %eax
	testb	$4, %al
	jne	.L140
.L94:
	movl	%edi, %eax
	shrl	$5, %eax
	leal	(%rax,%rax,2), %eax
	leal	2(%rdi,%rax), %eax
	sall	$2, %eax
	addq	184(%rbx), %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L105:
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L92:
	movq	16(%rbx), %rcx
	movl	%edi, %r8d
	movq	%rbp, %rdx
	call	lj_tab_setinth
	jmp	.L93
.L139:
	addl	$1, %edi
	cmpl	%edi, %edx
	ja	.L84
.L95:
	cmpl	$927, %edi
	ja	.L138
	cmpq	$0, 184(%rbx)
	je	.L141
.L86:
	movq	16(%rbx), %rcx
	leaq	200(%rbx), %r8
	movq	%rbp, %rdx
	movl	$928, %r9d
	movl	$2, 32(%rsp)
	call	lj_mem_grow
	movl	200(%rbx), %r8d
	movl	%edi, %edx
	movq	%rax, 192(%rbx)
	leaq	(%rax,%rdx,2), %rbp
	xorl	%edx, %edx
	subl	%edi, %r8d
	movq	%rbp, %rcx
	addq	%r8, %r8
	call	memset
	movq	%rbp, %rax
	jmp	.L82
.L140:
	movq	16(%rbx), %rdx
	andl	$-5, %eax
	movl	8(%rdx), %edx
	movb	%al, 4(%rbp)
	movl	60(%rdx), %eax
	movl	%eax, 12(%rbp)
	movl	%ebp, 60(%rdx)
	jmp	.L94
.L141:
	xorl	%ecx, %ecx
	movl	$4, %r9d
	movl	$12288, %r8d
	movl	$4096, %edx
	call	*__imp_VirtualAlloc(%rip)
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L138
	movq	.refptr.lj_vm_ffi_callback(%rip), %rdx
	movq	%rax, 184(%rbx)
	movl	$-1, %r9d
	movq	24(%rbx), %r11
	xorl	%ecx, %ecx
	movq	%rdx, (%rax)
	leaq	8(%rax), %rdx
.L91:
	movl	%ecx, %r8d
	movb	$-80, (%rdx)
	movb	%cl, 1(%rdx)
	andl	$31, %r8d
	cmpl	$31, %r8d
	je	.L106
	cmpl	$927, %ecx
	je	.L106
	movl	%r9d, %r8d
	movb	$-21, 2(%rdx)
	addq	$4, %rdx
	andl	$31, %r8d
	leal	-2(,%r8,4), %r8d
	movb	%r8b, -1(%rdx)
.L90:
	addl	$1, %ecx
	subl	$1, %r9d
	cmpl	$928, %ecx
	jne	.L91
	leaq	4096(%r14), %rdx
	movq	%r14, %rcx
	call	lj_mcode_sync
	leaq	60(%rsp), %r9
	movl	$32, %r8d
	movl	$4096, %edx
	movq	%r14, %rcx
	call	*__imp_VirtualProtect(%rip)
	jmp	.L86
	.p2align 4,,10
.L106:
	movl	%ecx, %r8d
	movq	%r14, %r12
	movb	$85, 2(%rdx)
	shrl	$8, %r8d
	movb	$-76, 3(%rdx)
	movb	$-67, 5(%rdx)
	movb	%r8b, 4(%rdx)
	leaq	16(%rdx), %r8
	movl	%r11d, 6(%rdx)
	movb	$-1, 10(%rdx)
	movb	$37, 11(%rdx)
	subq	%r8, %r12
	movl	%r12d, 12(%rdx)
	movq	%r8, %rdx
	jmp	.L90
.L138:
	movq	16(%rbx), %rcx
	movl	$3832, %edx
	call	lj_err_caller
	nop
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE4:
	.text
.LHOTE4:
	.ident	"GCC: (Rev1, Built by MSYS2 project) 5.3.0"
	.def	lj_cconv_tv_ct;	.scl	2;	.type	32;	.endef
	.def	lj_gc_step;	.scl	2;	.type	32;	.endef
	.def	lj_state_growstack;	.scl	2;	.type	32;	.endef
	.def	lj_tab_getinth;	.scl	2;	.type	32;	.endef
	.def	lj_err_caller;	.scl	2;	.type	32;	.endef
	.def	lj_err_str;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	lj_cconv_ct_tv;	.scl	2;	.type	32;	.endef
	.def	lj_tab_setinth;	.scl	2;	.type	32;	.endef
	.def	lj_mem_grow;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	lj_mcode_sync;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.lj_vm_ffi_callback, "dr"
	.globl	.refptr.lj_vm_ffi_callback
	.linkonce	discard
.refptr.lj_vm_ffi_callback:
	.quad	lj_vm_ffi_callback
