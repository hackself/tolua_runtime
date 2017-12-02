	.file	"minilua.c"
	.section	.text.unlikely,"x"
LCOLDB0:
	.text
LHOTB0:
	.p2align 4,,15
	.def	_luaT_gettm;	.scl	3;	.type	32;	.endef
_luaT_gettm:
LFB75:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movzbl	7(%eax), %ecx
	movl	$1, %ebx
	movl	%eax, %edi
	sall	%cl, %ebx
	leal	-1(%ebx), %ecx
	andl	8(%esi), %ecx
	sall	$5, %ecx
	addl	16(%eax), %ecx
	jmp	L5
	.p2align 4,,10
L2:
	movl	28(%ecx), %ecx
	testl	%ecx, %ecx
	je	L3
L5:
	cmpl	$4, 24(%ecx)
	jne	L2
	cmpl	16(%ecx), %esi
	jne	L2
	movl	%ecx, %eax
	movl	8(%ecx), %ecx
	testl	%ecx, %ecx
	je	L3
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3:
	.cfi_restore_state
	movl	$1, %eax
	movl	%edx, %ecx
	sall	%cl, %eax
	orb	%al, 6(%edi)
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE75:
	.section	.text.unlikely,"x"
LCOLDE0:
	.text
LHOTE0:
	.section	.text.unlikely,"x"
LCOLDB1:
	.text
LHOTB1:
	.p2align 4,,15
	.def	_reallymarkobject;	.scl	3;	.type	32;	.endef
_reallymarkobject:
LFB136:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %esi
	movl	%edx, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movzbl	5(%edx), %eax
L19:
	andl	$-4, %eax
	movl	%eax, %ecx
	movb	%al, 5(%ebx)
	movzbl	4(%ebx), %eax
	subl	$5, %eax
	cmpb	$5, %al
	ja	L9
	movzbl	%al, %eax
	jmp	*L12(,%eax,4)
	.section .rdata,"dr"
	.align 4
L12:
	.long	L11
	.long	L13
	.long	L14
	.long	L15
	.long	L16
	.long	L17
	.text
	.p2align 4,,10
L16:
	movl	36(%esi), %eax
	movl	%eax, 68(%ebx)
	movl	%ebx, 36(%esi)
L9:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L15:
	.cfi_restore_state
	movl	36(%esi), %eax
	movl	%eax, 108(%ebx)
	movl	%ebx, 36(%esi)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L17:
	.cfi_restore_state
	movl	8(%ebx), %eax
	cmpl	$3, 8(%eax)
	jle	L20
	movl	(%eax), %edx
	testb	$3, 5(%edx)
	jne	L33
L20:
	leal	16(%ebx), %edx
	cmpl	%edx, %eax
	jne	L9
	orb	$4, 5(%ebx)
	jmp	L9
	.p2align 4,,10
L11:
	movl	36(%esi), %eax
	movl	%eax, 24(%ebx)
	movl	%ebx, 36(%esi)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L13:
	.cfi_restore_state
	movl	36(%esi), %eax
	movl	%eax, 8(%ebx)
	movl	%ebx, 36(%esi)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L14:
	.cfi_restore_state
	movl	8(%ebx), %edx
	movl	%ecx, %eax
	orl	$4, %eax
	movb	%al, 5(%ebx)
	testl	%edx, %edx
	je	L18
	testb	$3, 5(%edx)
	jne	L34
L18:
	movl	12(%ebx), %ebx
	movzbl	5(%ebx), %eax
	testb	$3, %al
	jne	L19
	jmp	L9
	.p2align 4,,10
L34:
	movl	%esi, %eax
	call	_reallymarkobject
	jmp	L18
	.p2align 4,,10
L33:
	movl	%esi, %eax
	call	_reallymarkobject
	movl	8(%ebx), %eax
	jmp	L20
	.cfi_endproc
LFE136:
	.section	.text.unlikely,"x"
LCOLDE1:
	.text
LHOTE1:
	.section	.text.unlikely,"x"
LCOLDB2:
	.text
LHOTB2:
	.p2align 4,,15
	.def	_luaZ_fill;	.scl	3;	.type	32;	.endef
_luaZ_fill:
LFB190:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$40, %esp
	.cfi_def_cfa_offset 48
	leal	28(%esp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebx), %eax
	movl	%eax, (%esp)
	call	*8(%ebx)
	testl	%eax, %eax
	je	L38
	movl	28(%esp), %edx
	testl	%edx, %edx
	je	L38
	subl	$1, %edx
	movl	%edx, (%ebx)
	leal	1(%eax), %edx
	movl	%edx, 4(%ebx)
	movzbl	(%eax), %eax
L36:
	addl	$40, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L38:
	.cfi_restore_state
	movl	$-1, %eax
	jmp	L36
	.cfi_endproc
LFE190:
	.section	.text.unlikely,"x"
LCOLDE2:
	.text
LHOTE2:
	.section	.text.unlikely,"x"
LCOLDB3:
	.text
LHOTB3:
	.p2align 4,,15
	.def	_getS;	.scl	3;	.type	32;	.endef
_getS:
LFB437:
	.cfi_startproc
	movl	8(%esp), %eax
	movl	4(%eax), %edx
	testl	%edx, %edx
	je	L42
	movl	12(%esp), %ecx
	movl	%edx, (%ecx)
	movl	$0, 4(%eax)
	movl	(%eax), %eax
	ret
	.p2align 4,,10
L42:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE437:
	.section	.text.unlikely,"x"
LCOLDE3:
	.text
LHOTE3:
	.section .rdata,"dr"
LC4:
	.ascii "\12\15\0"
	.section	.text.unlikely,"x"
LCOLDB5:
	.text
LHOTB5:
	.p2align 4,,15
	.def	_luaO_chunkid;	.scl	3;	.type	32;	.endef
_luaO_chunkid:
LFB73:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%ecx, %edi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	%edx, %esi
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movzbl	(%edx), %eax
	cmpb	$61, %al
	je	L51
	cmpb	$64, %al
	je	L52
	movl	%edx, (%esp)
	movl	$LC4, 4(%esp)
	call	_strcspn
	leal	-17(%edi), %ecx
	movl	$34, %edx
	movl	$1920234331, (%ebx)
	movl	$543649385, 4(%ebx)
	movw	%dx, 8(%ebx)
	cmpl	%ecx, %eax
	cmovbe	%eax, %ecx
	cmpb	$0, (%esi,%ecx)
	jne	L53
	leal	9(%ebx), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
L49:
	movl	%ebx, (%esp)
	call	_strlen
	addl	%eax, %ebx
	movl	$23842, %eax
	movw	%ax, (%ebx)
	movb	$0, 2(%ebx)
L43:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L53:
	.cfi_restore_state
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_strncat
	movl	%ebx, (%esp)
	call	_strlen
	movl	$3026478, (%ebx,%eax)
	jmp	L49
	.p2align 4,,10
L52:
	addl	$1, %esi
	subl	$8, %edi
	movl	%esi, (%esp)
	call	_strlen
	cmpl	%eax, %edi
	movb	$0, (%ebx)
	jnb	L47
	subl	%edi, %eax
	movl	$3026478, (%ebx)
	addl	%eax, %esi
L47:
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcat
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L51:
	.cfi_restore_state
	addl	$1, %esi
	movl	%ecx, 8(%esp)
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	_strncpy
	movb	$0, -1(%ebx,%edi)
	jmp	L43
	.cfi_endproc
LFE73:
	.section	.text.unlikely,"x"
LCOLDE5:
	.text
LHOTE5:
	.section	.text.unlikely,"x"
LCOLDB6:
	.text
LHOTB6:
	.p2align 4,,15
	.def	_l_alloc;	.scl	3;	.type	32;	.endef
_l_alloc:
LFB439:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	44(%esp), %eax
	movl	36(%esp), %edx
	testl	%eax, %eax
	je	L58
	movl	%eax, 36(%esp)
	movl	%edx, 32(%esp)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	jmp	_realloc
	.p2align 4,,10
L58:
	.cfi_restore_state
	movl	%edx, (%esp)
	call	_free
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE439:
	.section	.text.unlikely,"x"
LCOLDE6:
	.text
LHOTE6:
	.section	.text.unlikely,"x"
LCOLDB7:
	.text
LHOTB7:
	.p2align 4,,15
	.def	_luaD_rawrunprotected;	.scl	3;	.type	32;	.endef
_luaD_rawrunprotected:
LFB91:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$120, %esp
	movl	%eax, -92(%ebp)
	movl	%edx, -96(%ebp)
	movl	%eax, %edx
	movl	112(%eax), %eax
	movl	%ecx, -100(%ebp)
	movl	$0, -12(%ebp)
	movl	%eax, -80(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, 112(%edx)
	leal	-76(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__setjmp3
	testl	%eax, %eax
	jne	L63
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	movl	-96(%ebp), %eax
	call	*%eax
L63:
	movl	-80(%ebp), %eax
	movl	-92(%ebp), %ecx
	movl	%eax, 112(%ecx)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE91:
	.section	.text.unlikely,"x"
LCOLDE7:
	.text
LHOTE7:
	.section	.text.unlikely,"x"
LCOLDB8:
	.text
LHOTB8:
	.p2align 4,,15
	.def	_match_class;	.scl	3;	.type	32;	.endef
_match_class:
LFB522:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	%edx, (%esp)
	call	*__imp__tolower
	subl	$97, %eax
	cmpl	$25, %eax
	ja	L67
	jmp	*L69(,%eax,4)
	.section .rdata,"dr"
	.align 4
L69:
	.long	L68
	.long	L67
	.long	L70
	.long	L71
	.long	L67
	.long	L67
	.long	L67
	.long	L67
	.long	L67
	.long	L67
	.long	L67
	.long	L72
	.long	L67
	.long	L67
	.long	L67
	.long	L73
	.long	L67
	.long	L67
	.long	L74
	.long	L67
	.long	L75
	.long	L67
	.long	L76
	.long	L77
	.long	L67
	.long	L78
	.text
	.p2align 4,,10
L78:
	testl	%ebx, %ebx
	movl	__imp__islower, %edi
	sete	%bl
	movzbl	%bl, %ebx
	.p2align 4,,10
L79:
	movl	%esi, (%esp)
	call	*%edi
	testl	%eax, %eax
	movl	%ebx, %edx
	jne	L80
	testl	%ebx, %ebx
	sete	%dl
	movzbl	%dl, %edx
L80:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%edx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L68:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	*__imp__isalpha
	movl	__imp__islower, %edi
	movl	%eax, %ebx
	jmp	L79
	.p2align 4,,10
L70:
	movl	%ebx, (%esp)
	call	*__imp__iscntrl
	movl	__imp__islower, %edi
	movl	%eax, %ebx
	jmp	L79
	.p2align 4,,10
L71:
	subl	$48, %ebx
	movl	__imp__islower, %edi
	cmpl	$9, %ebx
	setbe	%bl
	movzbl	%bl, %ebx
	jmp	L79
	.p2align 4,,10
L72:
	movl	%ebx, (%esp)
	movl	__imp__islower, %edi
	call	*%edi
	movl	%eax, %ebx
	jmp	L79
	.p2align 4,,10
L73:
	movl	%ebx, (%esp)
	call	*__imp__ispunct
	movl	__imp__islower, %edi
	movl	%eax, %ebx
	jmp	L79
	.p2align 4,,10
L74:
	movl	%ebx, (%esp)
	call	*__imp__isspace
	movl	__imp__islower, %edi
	movl	%eax, %ebx
	jmp	L79
	.p2align 4,,10
L75:
	movl	%ebx, (%esp)
	call	*__imp__isupper
	movl	__imp__islower, %edi
	movl	%eax, %ebx
	jmp	L79
	.p2align 4,,10
L76:
	movl	%ebx, (%esp)
	call	*__imp__isalnum
	movl	__imp__islower, %edi
	movl	%eax, %ebx
	jmp	L79
	.p2align 4,,10
L77:
	movl	%ebx, (%esp)
	call	*__imp__isxdigit
	movl	__imp__islower, %edi
	movl	%eax, %ebx
	jmp	L79
	.p2align 4,,10
L67:
	xorl	%edx, %edx
	cmpl	%ebx, %esi
	sete	%dl
	jmp	L80
	.cfi_endproc
LFE522:
	.section	.text.unlikely,"x"
LCOLDE8:
	.text
LHOTE8:
	.section	.text.unlikely,"x"
LCOLDB10:
	.text
LHOTB10:
	.p2align 4,,15
	.def	_luaO_rawequalObj;	.scl	3;	.type	32;	.endef
_luaO_rawequalObj:
LFB68:
	.cfi_startproc
	movl	8(%eax), %ecx
	cmpl	8(%edx), %ecx
	je	L95
	xorl	%eax, %eax
	ret
	.p2align 4,,10
L95:
	cmpl	$1, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	je	L85
	jle	L96
	cmpl	$2, %ecx
	je	L85
	cmpl	$3, %ecx
	jne	L85
	fldl	(%eax)
	xorl	%eax, %eax
	fldl	(%edx)
	movl	$0, %edx
	fucomip	%st(1), %st
	fstp	%st(0)
	setnp	%al
	cmovne	%edx, %eax
L84:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L96:
	.cfi_restore_state
	testl	%ecx, %ecx
	movl	$1, %eax
	je	L84
L85:
	movl	(%edx), %eax
	cmpl	%eax, (%ebx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	sete	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
LFE68:
	.section	.text.unlikely,"x"
LCOLDE10:
	.text
LHOTE10:
	.section	.text.unlikely,"x"
LCOLDB12:
	.text
LHOTB12:
	.p2align 4,,15
	.def	_mainposition;	.scl	3;	.type	32;	.endef
_mainposition:
LFB110:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 24
	movl	8(%edx), %eax
	cmpl	$2, %eax
	je	L98
	jle	L110
	cmpl	$3, %eax
	je	L102
	cmpl	$4, %eax
	jne	L98
	movzbl	7(%ebx), %ecx
	movl	(%edx), %edx
	movl	$1, %eax
	sall	%cl, %eax
	subl	$1, %eax
	andl	8(%edx), %eax
	sall	$5, %eax
	addl	16(%ebx), %eax
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L102:
	.cfi_restore_state
	fldl	(%edx)
	fstl	(%esp)
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L104
	jne	L104
	movl	16(%ebx), %eax
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L98:
	.cfi_restore_state
	movzbl	7(%ebx), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	leal	-1(%eax), %ecx
	movl	(%edx), %eax
	orl	$1, %ecx
L109:
	xorl	%edx, %edx
	divl	%ecx
	movl	16(%ebx), %eax
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	sall	$5, %edx
	addl	%edx, %eax
	ret
	.p2align 4,,10
L110:
	.cfi_restore_state
	cmpl	$1, %eax
	jne	L98
	movzbl	7(%ebx), %ecx
	sall	%cl, %eax
	subl	$1, %eax
	andl	(%edx), %eax
	sall	$5, %eax
	addl	16(%ebx), %eax
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L104:
	.cfi_restore_state
	movzbl	7(%ebx), %ecx
	movl	$1, %esi
	movl	(%esp), %edx
	movl	4(%esp), %eax
	sall	%cl, %esi
	addl	%edx, %eax
	leal	-1(%esi), %ecx
	orl	$1, %ecx
	jmp	L109
	.cfi_endproc
LFE110:
	.section	.text.unlikely,"x"
LCOLDE12:
	.text
LHOTE12:
	.section	.text.unlikely,"x"
LCOLDB13:
	.text
LHOTB13:
	.p2align 4,,15
	.def	_luaT_gettmbyobj.isra.10;	.scl	3;	.type	32;	.endef
_luaT_gettmbyobj.isra.10:
LFB574:
	.cfi_startproc
	cmpl	$5, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	je	L114
	cmpl	$7, %ecx
	jne	L123
L114:
	movl	8(%edx), %ebx
L115:
	testl	%ebx, %ebx
	je	L119
	movl	(%eax), %eax
	movl	8(%esp), %edx
	movzbl	7(%ebx), %ecx
	movl	188(%eax,%edx,4), %edx
	movl	$1, %eax
	sall	%cl, %eax
	subl	$1, %eax
	andl	8(%edx), %eax
	sall	$5, %eax
	addl	16(%ebx), %eax
	jmp	L118
	.p2align 4,,10
L117:
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L119
L118:
	cmpl	$4, 24(%eax)
	jne	L117
	cmpl	16(%eax), %edx
	jne	L117
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L119:
	.cfi_restore_state
	movl	$_luaO_nilobject_, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L123:
	.cfi_restore_state
	movl	(%eax), %edx
	movl	152(%edx,%ecx,4), %ebx
	jmp	L115
	.cfi_endproc
LFE574:
	.section	.text.unlikely,"x"
LCOLDE13:
	.text
LHOTE13:
	.section	.text.unlikely,"x"
LCOLDB14:
	.text
LHOTB14:
	.p2align 4,,15
	.def	_luaC_separateudata.isra.12;	.scl	3;	.type	32;	.endef
_luaC_separateudata.isra.12:
LFB576:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	(%eax), %ebp
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	movl	112(%ebp), %esi
L125:
	movl	(%esi), %ebx
	testl	%ebx, %ebx
	je	L141
	.p2align 4,,10
L132:
	movzbl	5(%ebx), %edx
	movl	%edx, %eax
	andl	$3, %eax
	orl	%edi, %eax
	je	L140
	testb	$8, %dl
	jne	L140
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L129
	testb	$4, 6(%eax)
	je	L142
L129:
	orl	$8, %edx
	movb	%dl, 5(%ebx)
L140:
	movl	%ebx, %esi
	movl	(%esi), %ebx
	testl	%ebx, %ebx
	jne	L132
L141:
	movl	(%esp), %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L142:
	.cfi_restore_state
	movl	4(%esp), %ecx
	movl	(%ecx), %edx
	movl	196(%edx), %ecx
	movl	$2, %edx
	call	_luaT_gettm
	testl	%eax, %eax
	je	L143
	movl	16(%ebx), %eax
	movl	(%esp), %ecx
	orb	$8, 5(%ebx)
	leal	24(%ecx,%eax), %eax
	movl	%eax, (%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esi)
	movl	48(%ebp), %eax
	testl	%eax, %eax
	je	L144
	movl	(%eax), %eax
	movl	%eax, (%ebx)
	movl	48(%ebp), %eax
	movl	%ebx, (%eax)
	movl	%ebx, 48(%ebp)
	jmp	L125
L144:
	movl	%ebx, (%ebx)
	movl	%ebx, 48(%ebp)
	jmp	L125
L143:
	movzbl	5(%ebx), %edx
	jmp	L129
	.cfi_endproc
LFE576:
	.section	.text.unlikely,"x"
LCOLDE14:
	.text
LHOTE14:
	.section	.text.unlikely,"x"
LCOLDB15:
	.text
LHOTB15:
	.p2align 4,,15
	.def	_index2adr;	.scl	3;	.type	32;	.endef
_index2adr:
LFB352:
	.cfi_startproc
	testl	%edx, %edx
	jle	L146
	addl	$268435455, %edx
	movl	$_luaO_nilobject_, %ecx
	sall	$4, %edx
	addl	12(%eax), %edx
	cmpl	8(%eax), %edx
	cmovb	%edx, %ecx
L158:
	movl	%ecx, %eax
	ret
	.p2align 4,,10
L146:
	cmpl	$-9999, %edx
	jge	L159
	cmpl	$-10001, %edx
	je	L150
	cmpl	$-10000, %edx
	je	L151
	cmpl	$-10002, %edx
	leal	72(%eax), %ecx
	je	L158
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	$_luaO_nilobject_, %ecx
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %ebx
	movl	$-10002, %eax
	subl	%edx, %eax
	movzbl	7(%ebx), %esi
	cmpl	%esi, %eax
	jg	L147
	movl	$-10002, %eax
	subl	%edx, %eax
	sall	$4, %eax
	leal	8(%ebx,%eax), %ecx
L147:
	movl	%ecx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L159:
	movl	8(%eax), %ecx
	sall	$4, %edx
	addl	%edx, %ecx
	movl	%ecx, %eax
	ret
	.p2align 4,,10
L151:
	movl	16(%eax), %edx
	leal	96(%edx), %ecx
	jmp	L158
	.p2align 4,,10
L150:
	movl	20(%eax), %edx
	leal	88(%eax), %ecx
	movl	4(%edx), %edx
	movl	(%edx), %edx
	movl	12(%edx), %edx
	movl	$5, 96(%eax)
	movl	%edx, 88(%eax)
	jmp	L158
	.cfi_endproc
LFE352:
	.section	.text.unlikely,"x"
LCOLDE15:
	.text
LHOTE15:
	.section	.text.unlikely,"x"
LCOLDB16:
	.text
LHOTB16:
	.p2align 4,,15
	.def	_lua_insert;	.scl	3;	.type	32;	.endef
_lua_insert:
LFB359:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	call	_index2adr
	movl	8(%ebx), %ecx
	cmpl	%ecx, %eax
	movl	%ecx, %edx
	jnb	L163
	.p2align 4,,10
L164:
	movl	-12(%edx), %esi
	movl	-16(%edx), %ebx
	subl	$16, %edx
	movl	%esi, 20(%edx)
	movl	8(%edx), %esi
	movl	%ebx, 16(%edx)
	movl	%esi, 24(%edx)
	cmpl	%edx, %eax
	jb	L164
L163:
	movl	4(%ecx), %esi
	movl	(%ecx), %ebx
	movl	%esi, 4(%eax)
	movl	8(%ecx), %edx
	movl	%ebx, (%eax)
	movl	%edx, 8(%eax)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE359:
	.section	.text.unlikely,"x"
LCOLDE16:
	.text
LHOTE16:
	.section	.text.unlikely,"x"
LCOLDB17:
	.text
LHOTB17:
	.p2align 4,,15
	.def	_lua_pushvalue;	.scl	3;	.type	32;	.endef
_lua_pushvalue:
LFB361:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	call	_index2adr
	movl	8(%ebx), %edx
	movl	4(%eax), %edi
	movl	(%eax), %esi
	movl	%edi, 4(%edx)
	movl	8(%eax), %eax
	addl	$16, %edx
	movl	%esi, -16(%edx)
	movl	%eax, -8(%edx)
	movl	%edx, 8(%ebx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE361:
	.section	.text.unlikely,"x"
LCOLDE17:
	.text
LHOTE17:
	.section	.text.unlikely,"x"
LCOLDB18:
	.text
LHOTB18:
	.p2align 4,,15
	.def	_lua_setmetatable;	.scl	3;	.type	32;	.endef
_lua_setmetatable:
LFB397:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	call	_index2adr
	movl	8(%ebx), %edx
	movl	-8(%edx), %ecx
	testl	%ecx, %ecx
	je	L172
	movl	8(%eax), %ecx
	movl	-16(%edx), %edx
	cmpl	$5, %ecx
	movl	%edx, %esi
	jne	L202
	movl	(%eax), %ecx
	testl	%edx, %edx
	movl	%edx, 8(%ecx)
	je	L177
	testb	$3, 5(%edx)
	je	L177
	movl	(%eax), %eax
	movzbl	5(%eax), %edx
	testb	$4, %dl
	je	L177
	movl	16(%ebx), %ecx
	andl	$-5, %edx
	movb	%dl, 5(%eax)
	movl	40(%ecx), %edx
	movl	%edx, 24(%eax)
	movl	%eax, 40(%ecx)
	jmp	L177
	.p2align 4,,10
L172:
	movl	8(%eax), %ecx
	cmpl	$5, %ecx
	je	L201
	cmpl	$7, %ecx
	je	L201
	xorl	%esi, %esi
L173:
	movl	16(%ebx), %eax
	movl	%esi, 152(%eax,%ecx,4)
L177:
	subl	$16, 8(%ebx)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L202:
	.cfi_restore_state
	cmpl	$7, %ecx
	jne	L173
	movl	(%eax), %ecx
	testl	%edx, %edx
	movl	%edx, 8(%ecx)
	je	L177
	testb	$3, 5(%edx)
	je	L177
	movl	(%eax), %esi
	movzbl	5(%esi), %ecx
	testb	$4, %cl
	je	L177
	movl	16(%ebx), %eax
	cmpb	$1, 21(%eax)
	je	L203
	movzbl	20(%eax), %eax
	andl	$-8, %ecx
	andl	$3, %eax
	orl	%eax, %ecx
	movb	%cl, 5(%esi)
	jmp	L177
	.p2align 4,,10
L201:
	movl	(%eax), %eax
	movl	$0, 8(%eax)
	subl	$16, 8(%ebx)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L203:
	.cfi_restore_state
	call	_reallymarkobject
	jmp	L177
	.cfi_endproc
LFE397:
	.section	.text.unlikely,"x"
LCOLDE18:
	.text
LHOTE18:
	.section .rdata,"dr"
LC19:
	.ascii "\12\0"
	.section	.text.unlikely,"x"
LCOLDB20:
	.text
LHOTB20:
	.p2align 4,,15
	.def	_getF;	.scl	3;	.type	32;	.endef
_getF:
LFB434:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	36(%esp), %ebx
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L205
	movl	40(%esp), %eax
	movl	$0, (%ebx)
	movl	$1, (%eax)
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	$LC19, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L205:
	.cfi_restore_state
	movl	4(%ebx), %eax
	movl	%eax, (%esp)
	call	_feof
	testl	%eax, %eax
	jne	L208
	movl	4(%ebx), %eax
	leal	8(%ebx), %esi
	movl	$512, 8(%esp)
	movl	$1, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 12(%esp)
	call	_fread
	movl	40(%esp), %edx
	testl	%eax, %eax
	movl	%eax, (%edx)
	je	L208
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L208:
	.cfi_restore_state
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE434:
	.section	.text.unlikely,"x"
LCOLDE20:
	.text
LHOTE20:
	.section	.text.unlikely,"x"
LCOLDB21:
	.text
LHOTB21:
	.p2align 4,,15
	.def	_get_compTM.isra.35.constprop.168;	.scl	3;	.type	32;	.endef
_get_compTM.isra.35.constprop.168:
LFB671:
	.cfi_startproc
	testl	%edx, %edx
	je	L231
	testb	$16, 6(%edx)
	je	L232
L231:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
L232:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%ecx, %edi
	movl	%edx, %esi
	movl	$4, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	(%eax), %eax
	movl	204(%eax), %ecx
	movl	%esi, %eax
	call	_luaT_gettm
	testl	%eax, %eax
	movl	%eax, %ebx
	je	L216
	cmpl	%edi, %esi
	je	L217
	testl	%edi, %edi
	je	L216
	testb	$16, 6(%edi)
	je	L233
L216:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L233:
	.cfi_restore_state
	movl	0(%ebp), %eax
	movl	$4, %edx
	movl	204(%eax), %ecx
	movl	%edi, %eax
	call	_luaT_gettm
	testl	%eax, %eax
	movl	%eax, %edx
	je	L216
	movl	%ebx, %eax
	call	_luaO_rawequalObj
	testl	%eax, %eax
	je	L216
L217:
	addl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE671:
	.section	.text.unlikely,"x"
LCOLDE21:
	.text
LHOTE21:
	.section	.text.unlikely,"x"
LCOLDB22:
	.text
LHOTB22:
	.p2align 4,,15
	.def	_lua_setfenv.constprop.128;	.scl	3;	.type	32;	.endef
_lua_setfenv.constprop.128:
LFB711:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	8(%eax), %ecx
	movl	%eax, %ebx
	movl	-24(%ecx), %eax
	cmpl	$7, %eax
	je	L236
	cmpl	$8, %eax
	je	L237
	cmpl	$6, %eax
	je	L236
	movl	%ecx, %eax
	xorl	%esi, %esi
	subl	$16, %eax
	movl	%eax, 8(%ebx)
	movl	%esi, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L236:
	.cfi_restore_state
	movl	-32(%ecx), %eax
	movl	-16(%ecx), %edx
	movl	%edx, 12(%eax)
L239:
	movl	8(%ebx), %eax
	movl	-16(%eax), %edx
	testb	$3, 5(%edx)
	je	L248
	movl	-32(%ecx), %edi
	movl	$1, %esi
	movzbl	5(%edi), %ecx
	testb	$4, %cl
	je	L235
	movl	16(%ebx), %eax
	cmpb	$1, 21(%eax)
	je	L249
	movzbl	20(%eax), %eax
	andl	$-8, %ecx
	andl	$3, %eax
	orl	%eax, %ecx
	movb	%cl, 5(%edi)
	movl	8(%ebx), %eax
L235:
	subl	$16, %eax
	movl	%eax, 8(%ebx)
	movl	%esi, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L248:
	.cfi_restore_state
	movl	$1, %esi
	subl	$16, %eax
	movl	%eax, 8(%ebx)
	movl	%esi, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L237:
	.cfi_restore_state
	movl	-32(%ecx), %eax
	movl	-16(%ecx), %edx
	movl	$5, 80(%eax)
	movl	%edx, 72(%eax)
	jmp	L239
	.p2align 4,,10
L249:
	call	_reallymarkobject
	movl	8(%ebx), %eax
	jmp	L235
	.cfi_endproc
LFE711:
	.section	.text.unlikely,"x"
LCOLDE22:
	.text
LHOTE22:
	.section	.text.unlikely,"x"
LCOLDB23:
	.text
LHOTB23:
	.p2align 4,,15
	.def	_lua_getmetatable.constprop.151;	.scl	3;	.type	32;	.endef
_lua_getmetatable.constprop.151:
LFB688:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	12(%eax), %ecx
	movl	8(%eax), %edx
	cmpl	%edx, %ecx
	jnb	L256
	movl	8(%ecx), %ebx
	cmpl	$5, %ebx
	jne	L259
L253:
	movl	(%ecx), %ecx
	movl	8(%ecx), %ecx
	testl	%ecx, %ecx
	je	L257
L260:
	movl	%ecx, (%edx)
	movl	$5, 8(%edx)
	addl	$16, 8(%eax)
	movl	$1, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L256:
	.cfi_restore_state
	xorl	%ebx, %ebx
L251:
	movl	16(%eax), %ecx
	movl	152(%ecx,%ebx,4), %ecx
	testl	%ecx, %ecx
	jne	L260
L257:
	xorl	%eax, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L259:
	.cfi_restore_state
	cmpl	$7, %ebx
	je	L253
	jmp	L251
	.cfi_endproc
LFE688:
	.section	.text.unlikely,"x"
LCOLDE23:
	.text
LHOTE23:
	.section	.text.unlikely,"x"
LCOLDB24:
	.text
LHOTB24:
	.p2align 4,,15
	.def	_freeexp.isra.26.part.27;	.scl	3;	.type	32;	.endef
_freeexp.isra.26.part.27:
LFB591:
	.cfi_startproc
	movl	(%edx), %edx
	testb	$1, %dh
	je	L263
L261:
	rep ret
	.p2align 4,,10
L263:
	movzbl	50(%eax), %ecx
	cmpl	%ecx, %edx
	jl	L261
	subl	$1, 36(%eax)
	ret
	.cfi_endproc
LFE591:
	.section	.text.unlikely,"x"
LCOLDE24:
	.text
LHOTE24:
	.section	.text.unlikely,"x"
LCOLDB25:
	.text
LHOTB25:
	.p2align 4,,15
	.def	_luaH_getnum.part.8;	.scl	3;	.type	32;	.endef
_luaH_getnum.part.8:
LFB572:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	%edx, (%esp)
	fildl	(%esp)
	fstl	(%esp)
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L265
	jne	L265
	movl	16(%eax), %eax
	jmp	L271
	.p2align 4,,10
L268:
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L276
L271:
	cmpl	$3, 24(%eax)
	jne	L268
	fldl	16(%eax)
	fldl	(%esp)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L268
	jne	L268
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L276:
	.cfi_restore_state
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	$_luaO_nilobject_, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L265:
	.cfi_restore_state
	movl	4(%esp), %edx
	movzbl	7(%ebx), %ecx
	movl	(%esp), %eax
	addl	%edx, %eax
	movl	$1, %edx
	sall	%cl, %edx
	leal	-1(%edx), %ecx
	xorl	%edx, %edx
	orl	$1, %ecx
	divl	%ecx
	movl	16(%ebx), %eax
	sall	$5, %edx
	addl	%edx, %eax
	jmp	L271
	.cfi_endproc
LFE572:
	.section	.text.unlikely,"x"
LCOLDE25:
	.text
LHOTE25:
	.section	.text.unlikely,"x"
LCOLDB26:
	.text
LHOTB26:
	.p2align 4,,15
	.def	_luaH_getn;	.scl	3;	.type	32;	.endef
_luaH_getn:
LFB134:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	28(%eax), %esi
	testl	%esi, %esi
	movl	%esi, %edx
	je	L278
	movl	12(%eax), %ebx
	leal	268435455(%esi), %ecx
	sall	$4, %ecx
	movl	8(%ebx,%ecx), %ebp
	testl	%ebp, %ebp
	je	L279
L278:
	cmpl	$_dummynode_, 16(%eax)
	je	L283
	movl	%eax, %edi
	leal	1(%esi), %ebx
	jmp	L284
	.p2align 4,,10
L305:
	leal	268435455(%ebx), %eax
	sall	$4, %eax
	addl	12(%edi), %eax
L291:
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L293
	leal	(%ebx,%ebx), %eax
	cmpl	$2147483645, %eax
	ja	L304
	movl	28(%edi), %edx
	movl	%ebx, %esi
	movl	%eax, %ebx
L284:
	leal	-1(%ebx), %eax
	cmpl	%edx, %eax
	jb	L305
	movl	%ebx, %edx
	movl	%edi, %eax
	call	_luaH_getnum.part.8
	jmp	L291
	.p2align 4,,10
L307:
	leal	268435455(%ebp), %eax
	sall	$4, %eax
	addl	12(%edi), %eax
L295:
	movl	8(%eax), %eax
	testl	%eax, %eax
	cmove	%ebp, %ebx
	cmovne	%ebp, %esi
L293:
	movl	%ebx, %eax
	subl	%esi, %eax
	cmpl	$1, %eax
	jbe	L306
	leal	(%ebx,%esi), %ebp
	shrl	%ebp
	leal	-1(%ebp), %eax
	cmpl	28(%edi), %eax
	jb	L307
	movl	%ebp, %edx
	movl	%edi, %eax
	call	_luaH_getnum.part.8
	jmp	L295
	.p2align 4,,10
L279:
	xorl	%eax, %eax
	jmp	L280
	.p2align 4,,10
L282:
	leal	(%esi,%eax), %edx
	shrl	%edx
	leal	268435455(%edx), %ecx
	sall	$4, %ecx
	movl	8(%ebx,%ecx), %edi
	testl	%edi, %edi
	cmovne	%edx, %eax
	cmove	%edx, %esi
L280:
	movl	%esi, %edx
	subl	%eax, %edx
	cmpl	$1, %edx
	ja	L282
	movl	%eax, %edx
L283:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L306:
	.cfi_restore_state
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%edx, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L304:
	.cfi_restore_state
	xorl	%esi, %esi
	movl	$1, %ebx
	jmp	L286
	.p2align 4,,10
L309:
	movl	12(%edi), %eax
	addl	%esi, %eax
	addl	$16, %esi
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	je	L308
L289:
	addl	$1, %ebx
L286:
	leal	-1(%ebx), %ebp
	cmpl	28(%edi), %ebp
	jb	L309
	movl	%ebx, %edx
	movl	%edi, %eax
	addl	$16, %esi
	call	_luaH_getnum.part.8
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	jne	L289
L308:
	addl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	%ebp, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%edx, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE134:
	.section	.text.unlikely,"x"
LCOLDE26:
	.text
LHOTE26:
	.section	.text.unlikely,"x"
LCOLDB27:
	.text
LHOTB27:
	.p2align 4,,15
	.def	_lua_rawgeti;	.scl	3;	.type	32;	.endef
_lua_rawgeti:
LFB389:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %esi
	movl	%ecx, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	call	_index2adr
	movl	(%eax), %eax
	leal	-1(%ebx), %edx
	cmpl	28(%eax), %edx
	jnb	L311
	addl	$268435455, %ebx
	sall	$4, %ebx
	addl	12(%eax), %ebx
	movl	%ebx, %eax
L312:
	movl	8(%esi), %edx
	movl	4(%eax), %ebx
	movl	(%eax), %ecx
	movl	%ebx, 4(%edx)
	movl	8(%eax), %eax
	addl	$16, %edx
	movl	%ecx, -16(%edx)
	movl	%eax, -8(%edx)
	movl	%edx, 8(%esi)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L311:
	.cfi_restore_state
	movl	%ebx, %edx
	call	_luaH_getnum.part.8
	jmp	L312
	.cfi_endproc
LFE389:
	.section	.text.unlikely,"x"
LCOLDE27:
	.text
LHOTE27:
	.section	.text.unlikely,"x"
LCOLDB28:
	.text
LHOTB28:
	.p2align 4,,15
	.def	_lua_rawgeti.constprop.131;	.scl	3;	.type	32;	.endef
_lua_rawgeti.constprop.131:
LFB708:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	12(%eax), %esi
	movl	%eax, %ebx
	movl	8(%eax), %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %esi
	jnb	L315
	movl	(%esi), %eax
L315:
	leal	-1(%edx), %esi
	cmpl	28(%eax), %esi
	jnb	L316
	addl	$268435455, %edx
	sall	$4, %edx
	addl	12(%eax), %edx
	movl	%edx, %eax
L317:
	movl	4(%eax), %edi
	movl	(%eax), %esi
	addl	$16, %ecx
	movl	%edi, -12(%ecx)
	movl	8(%eax), %eax
	movl	%esi, -16(%ecx)
	movl	%eax, -8(%ecx)
	movl	%ecx, 8(%ebx)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L316:
	.cfi_restore_state
	call	_luaH_getnum.part.8
	movl	8(%ebx), %ecx
	jmp	L317
	.cfi_endproc
LFE708:
	.section	.text.unlikely,"x"
LCOLDE28:
	.text
LHOTE28:
	.section	.text.unlikely,"x"
LCOLDB29:
	.text
LHOTB29:
	.p2align 4,,15
	.def	_luaV_tonumber.part.47;	.scl	3;	.type	32;	.endef
_luaV_tonumber.part.47:
LFB611:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	(%eax), %ebp
	leal	60(%esp), %eax
	addl	$16, %ebp
	movl	%eax, 4(%esp)
	movl	%eax, 36(%esp)
	movl	%ebp, (%esp)
	call	___strtod
	movl	60(%esp), %ebx
	fstpl	24(%esp)
	cmpl	%ebx, %ebp
	je	L322
	movzbl	(%ebx), %esi
	movl	36(%esp), %eax
	movl	%esi, %edx
	andl	$-33, %edx
	cmpb	$88, %dl
	je	L333
L323:
	movl	%esi, %eax
	testb	%al, %al
	je	L324
	addl	$1, %ebx
	movl	__imp__isspace, %ebp
	jmp	L325
	.p2align 4,,10
L326:
	movl	%ebx, 60(%esp)
	addl	$1, %ebx
	movzbl	-1(%ebx), %esi
L325:
	movl	%esi, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	*%ebp
	testl	%eax, %eax
	jne	L326
	movl	%esi, %eax
	testb	%al, %al
	jne	L322
L324:
	fldl	24(%esp)
	movl	$3, 8(%edi)
	movl	%edi, %eax
	fstpl	(%edi)
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L322:
	.cfi_restore_state
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L333:
	.cfi_restore_state
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	call	_strtoul
	movl	$0, 28(%esp)
	movl	%eax, 24(%esp)
	movl	60(%esp), %ebx
	fildq	24(%esp)
	fstpl	24(%esp)
	movzbl	(%ebx), %esi
	jmp	L323
	.cfi_endproc
LFE611:
	.section	.text.unlikely,"x"
LCOLDE29:
	.text
LHOTE29:
	.section	.text.unlikely,"x"
LCOLDB30:
	.text
LHOTB30:
	.p2align 4,,15
	.def	_lua_tonumber;	.scl	3;	.type	32;	.endef
_lua_tonumber:
LFB369:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	call	_index2adr
	movl	8(%eax), %edx
	cmpl	$3, %edx
	je	L335
	cmpl	$4, %edx
	je	L336
L338:
	fldz
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L336:
	.cfi_restore_state
	movl	%esp, %edx
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	je	L338
L335:
	fldl	(%eax)
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE369:
	.section	.text.unlikely,"x"
LCOLDE30:
	.text
LHOTE30:
	.section	.text.unlikely,"x"
LCOLDB31:
	.text
LHOTB31:
	.p2align 4,,15
	.def	_lua_isnumber;	.scl	3;	.type	32;	.endef
_lua_isnumber:
LFB365:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	call	_index2adr
	movl	8(%eax), %edx
	cmpl	$3, %edx
	je	L348
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$4, %edx
	je	L351
L347:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L351:
	.cfi_restore_state
	movl	%esp, %edx
	movl	%ecx, %eax
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	L347
	.p2align 4,,10
L348:
	movl	$1, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE365:
	.section	.text.unlikely,"x"
LCOLDE31:
	.text
LHOTE31:
	.section	.text.unlikely,"x"
LCOLDB32:
	.text
LHOTB32:
	.p2align 4,,15
	.def	_luaH_get;	.scl	3;	.type	32;	.endef
_luaH_get:
LFB129:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	8(%edx), %esi
	cmpl	$3, %esi
	je	L354
	cmpl	$4, %esi
	je	L355
	testl	%esi, %esi
	movl	$_luaO_nilobject_, %ecx
	je	L356
L353:
	movl	%edx, %ebx
	xorl	%esi, %esi
	call	_mainposition
	movl	8(%ebx), %ecx
	jmp	L369
	.p2align 4,,10
L361:
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L370
L369:
	cmpl	24(%eax), %ecx
	jne	L361
	cmpl	$1, %ecx
	je	L362
	jle	L384
	cmpl	$2, %ecx
	je	L362
	cmpl	$3, %ecx
	jne	L362
	fldl	16(%eax)
	xorl	%edx, %edx
	fldl	(%ebx)
	fucomip	%st(1), %st
	fstp	%st(0)
	setnp	%dl
	cmovne	%esi, %edx
L368:
	testl	%edx, %edx
	je	L361
	.p2align 4,,10
L365:
	movl	%eax, %ecx
L356:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%ecx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L384:
	.cfi_restore_state
	testl	%ecx, %ecx
	je	L365
	.p2align 4,,10
L362:
	movl	(%ebx), %edx
	cmpl	%edx, 16(%eax)
	sete	%dl
	movzbl	%dl, %edx
	jmp	L368
	.p2align 4,,10
L370:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	$_luaO_nilobject_, %ecx
	movl	%ecx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L355:
	.cfi_restore_state
	movzbl	7(%eax), %ecx
	movl	(%edx), %ebx
	movl	$1, %edx
	sall	%cl, %edx
	subl	$1, %edx
	andl	8(%ebx), %edx
	sall	$5, %edx
	addl	16(%eax), %edx
	movl	%edx, %eax
	jmp	L358
	.p2align 4,,10
L357:
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L370
L358:
	cmpl	$4, 24(%eax)
	jne	L357
	cmpl	16(%eax), %ebx
	jne	L357
	movl	%eax, %ecx
	jmp	L356
	.p2align 4,,10
L354:
	fldl	(%edx)
	fnstcw	14(%esp)
	movzwl	14(%esp), %ecx
	movb	$12, %ch
	movw	%cx, 12(%esp)
	fldcw	12(%esp)
	fistl	4(%esp)
	fldcw	14(%esp)
	fildl	4(%esp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L353
	jne	L353
	movl	4(%esp), %esi
	leal	-1(%esi), %edx
	cmpl	28(%eax), %edx
	jnb	L360
	movl	%esi, %ecx
	addl	$268435455, %ecx
	sall	$4, %ecx
	addl	12(%eax), %ecx
	jmp	L356
L360:
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	movl	%esi, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_luaH_getnum.part.8
	.cfi_endproc
LFE129:
	.section	.text.unlikely,"x"
LCOLDE32:
	.text
LHOTE32:
	.section	.text.unlikely,"x"
LCOLDB33:
	.text
LHOTB33:
	.p2align 4,,15
	.def	_matchbracketclass;	.scl	3;	.type	32;	.endef
_matchbracketclass:
LFB523:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%ecx, %esi
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	cmpb	$94, 1(%edx)
	movl	$1, 20(%esp)
	je	L414
L386:
	movl	__imp__islower, %eax
	leal	1(%edx), %ebp
	cmpl	%esi, %ebp
	movl	%eax, 24(%esp)
	jnb	L415
	.p2align 4,,10
L406:
	movzbl	1(%edx), %eax
	cmpb	$37, %al
	je	L416
	cmpb	$45, 2(%edx)
	je	L417
L405:
	cmpl	%eax, %edi
	je	L412
L404:
	movl	%ebp, %edx
L418:
	leal	1(%edx), %ebp
	cmpl	%esi, %ebp
	jb	L406
L415:
	movl	20(%esp), %eax
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	xorl	$1, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L416:
	.cfi_restore_state
	movzbl	2(%edx), %ebx
	leal	2(%edx), %ebp
	movl	%ebx, (%esp)
	call	*__imp__tolower
	subl	$97, %eax
	cmpl	$25, %eax
	ja	L389
	jmp	*L391(,%eax,4)
	.section .rdata,"dr"
	.align 4
L391:
	.long	L390
	.long	L389
	.long	L392
	.long	L393
	.long	L389
	.long	L389
	.long	L389
	.long	L389
	.long	L389
	.long	L389
	.long	L389
	.long	L394
	.long	L389
	.long	L389
	.long	L389
	.long	L395
	.long	L389
	.long	L389
	.long	L396
	.long	L389
	.long	L397
	.long	L389
	.long	L398
	.long	L399
	.long	L389
	.long	L400
	.text
	.p2align 4,,10
L400:
	xorl	%eax, %eax
	movl	__imp__islower, %edx
	testl	%edi, %edi
	sete	%al
	movl	%eax, 16(%esp)
	.p2align 4,,10
L401:
	movl	%ebx, (%esp)
	call	*%edx
	testl	%eax, %eax
	movl	16(%esp), %ebx
	jne	L402
	testl	%ebx, %ebx
	sete	%bl
	movzbl	%bl, %ebx
L402:
	testl	%ebx, %ebx
	je	L404
L412:
	movl	20(%esp), %eax
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L399:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	*__imp__isxdigit
	movl	24(%esp), %edx
	movl	%eax, 16(%esp)
	jmp	L401
	.p2align 4,,10
L398:
	movl	%edi, (%esp)
	call	*__imp__isalnum
	movl	__imp__islower, %edx
	movl	%eax, 16(%esp)
	jmp	L401
	.p2align 4,,10
L397:
	movl	%edi, (%esp)
	call	*__imp__isupper
	movl	__imp__islower, %edx
	movl	%eax, 16(%esp)
	jmp	L401
	.p2align 4,,10
L396:
	movl	%edi, (%esp)
	call	*__imp__isspace
	movl	__imp__islower, %edx
	movl	%eax, 16(%esp)
	jmp	L401
	.p2align 4,,10
L395:
	movl	%edi, (%esp)
	call	*__imp__ispunct
	movl	__imp__islower, %edx
	movl	%eax, 16(%esp)
	jmp	L401
	.p2align 4,,10
L394:
	movl	__imp__islower, %edx
	movl	%edi, (%esp)
	movl	%edx, 28(%esp)
	call	*%edx
	movl	28(%esp), %edx
	movl	%eax, 16(%esp)
	jmp	L401
	.p2align 4,,10
L393:
	leal	-48(%edi), %eax
	movl	__imp__islower, %edx
	cmpl	$9, %eax
	setbe	%al
	movzbl	%al, %eax
	movl	%eax, 16(%esp)
	jmp	L401
	.p2align 4,,10
L392:
	movl	%edi, (%esp)
	call	*__imp__iscntrl
	movl	__imp__islower, %edx
	movl	%eax, 16(%esp)
	jmp	L401
	.p2align 4,,10
L390:
	movl	%edi, (%esp)
	call	*__imp__isalpha
	movl	__imp__islower, %edx
	movl	%eax, 16(%esp)
	jmp	L401
	.p2align 4,,10
L389:
	cmpl	%ebx, %edi
	sete	%bl
	movzbl	%bl, %ebx
	jmp	L402
	.p2align 4,,10
L417:
	leal	3(%edx), %ebx
	cmpl	%ebx, %esi
	jbe	L405
	cmpl	%edi, %eax
	jg	L410
	movzbl	3(%edx), %eax
	cmpl	%eax, %edi
	jle	L412
L410:
	movl	%ebx, %ebp
	movl	%ebp, %edx
	jmp	L418
	.p2align 4,,10
L414:
	addl	$1, %edx
	movl	$0, 20(%esp)
	jmp	L386
	.cfi_endproc
LFE523:
	.section	.text.unlikely,"x"
LCOLDE33:
	.text
LHOTE33:
	.section .rdata,"dr"
LC34:
	.ascii "C stack overflow\0"
LC35:
	.ascii "get length of\0"
LC36:
	.ascii "attempt to %s a %s value\0"
	.align 4
LC37:
	.ascii "'for' initial value must be a number\0"
LC38:
	.ascii "'for' limit must be a number\0"
LC39:
	.ascii "'for' step must be a number\0"
	.section	.text.unlikely,"x"
LCOLDB40:
	.text
LHOTB40:
	.p2align 4,,15
	.def	_luaD_call;	.scl	3;	.type	32;	.endef
_luaD_call:
LFB101:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebx
	subl	$124, %esp
	.cfi_def_cfa_offset 144
	movl	%eax, 48(%esp)
	movzwl	52(%eax), %eax
	movw	%ax, 24(%esp)
	addl	$1, %eax
	cmpw	$199, %ax
	movw	%ax, 52(%edi)
	jbe	L420
	cmpw	$200, %ax
	je	L745
	cmpw	$224, %ax
	ja	L746
L420:
	movl	48(%esp), %eax
	movl	%ebx, %edx
	call	_luaD_precall
	testl	%eax, %eax
	je	L747
L558:
	movl	48(%esp), %eax
	subw	$1, 52(%eax)
	movl	16(%eax), %eax
	movl	64(%eax), %edi
	cmpl	%edi, 68(%eax)
	jb	L419
	movl	48(%esp), %eax
	call	_luaC_step
L419:
	addl	$124, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L747:
	.cfi_restore_state
	movl	48(%esp), %eax
	movl	$1, 76(%esp)
	movl	20(%eax), %esi
	movl	12(%eax), %edi
	leal	104(%eax), %ecx
	movl	24(%eax), %ebp
	addl	$16, %eax
	movl	%eax, 84(%esp)
	movl	%ecx, 80(%esp)
	movl	%edi, 40(%esp)
	movl	%esi, 36(%esp)
	movl	%esi, %eax
	movl	%ebp, 24(%esp)
L423:
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 64(%esp)
	movl	16(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, 52(%esp)
	jmp	L424
L806:
	fstp	%st(0)
	.p2align 4,,10
L424:
	movl	24(%esp), %eax
	movl	(%eax), %ebp
	leal	4(%eax), %edi
	movl	40(%esp), %eax
	movl	%edi, 36(%esp)
	movl	%ebp, %ebx
	shrl	$6, %ebx
	movzbl	%bl, %ebx
	movl	%ebx, %esi
	sall	$4, %esi
	addl	%esi, %eax
	movl	%eax, 44(%esp)
	movl	%ebp, %eax
	andl	$63, %eax
	cmpl	$37, %eax
	ja	L623
	jmp	*L427(,%eax,4)
	.section .rdata,"dr"
	.align 4
L427:
	.long	L426
	.long	L428
	.long	L429
	.long	L430
	.long	L431
	.long	L432
	.long	L433
	.long	L434
	.long	L435
	.long	L436
	.long	L437
	.long	L438
	.long	L439
	.long	L440
	.long	L441
	.long	L442
	.long	L443
	.long	L444
	.long	L445
	.long	L446
	.long	L447
	.long	L448
	.long	L738
	.long	L450
	.long	L451
	.long	L452
	.long	L453
	.long	L454
	.long	L455
	.long	L456
	.long	L457
	.long	L458
	.long	L459
	.long	L460
	.long	L461
	.long	L462
	.long	L463
	.long	L464
	.text
	.p2align 4,,10
L459:
	movl	44(%esp), %eax
	movl	48(%esp), %ecx
	movl	36(%esp), %edi
	leal	32(%eax), %ebx
	movl	8(%eax), %eax
	movl	%edi, 24(%ecx)
	cmpl	$3, %eax
	je	L580
	cmpl	$4, %eax
	je	L581
L583:
	movl	48(%esp), %eax
	movl	$LC37, 4(%esp)
	movl	%eax, (%esp)
	call	_luaG_runerror
L582:
	movl	44(%esp), %eax
	fldl	(%eax)
	fsubl	(%ebx)
	movl	$3, 8(%eax)
	fstpl	(%eax)
L738:
	movl	36(%esp), %eax
	shrl	$14, %ebp
	leal	-524284(%eax,%ebp,4), %eax
	movl	%eax, 24(%esp)
	jmp	L424
	.p2align 4,,10
L448:
	movl	%ebp, %ecx
	movl	48(%esp), %eax
	movl	36(%esp), %edi
	shrl	$14, %ecx
	movl	%ebp, %ebx
	andl	$511, %ecx
	shrl	$23, %ebx
	movl	%ecx, %edx
	movl	%edi, 24(%eax)
	movl	%eax, %edi
	subl	%ebx, %edx
	addl	$1, %edx
	call	_luaV_concat
	movl	16(%edi), %eax
	movl	64(%eax), %ecx
	cmpl	%ecx, 68(%eax)
	jnb	L748
L514:
	movl	48(%esp), %eax
	sall	$4, %ebx
	movl	12(%eax), %eax
	addl	%eax, %ebx
	addl	%eax, %esi
	movl	%eax, 40(%esp)
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	movl	8(%ebx), %eax
	movl	%eax, 8(%esi)
	movl	36(%esp), %eax
	movl	%eax, 24(%esp)
	jmp	L424
	.p2align 4,,10
L447:
	movl	40(%esp), %eax
	shrl	$23, %ebp
	sall	$4, %ebp
	leal	(%eax,%ebp), %ebx
	movl	8(%ebx), %eax
	cmpl	$4, %eax
	je	L511
	cmpl	$5, %eax
	jne	L724
	movl	(%ebx), %eax
	call	_luaH_getn
	movl	%eax, 24(%esp)
	fildl	24(%esp)
	jmp	L736
	.p2align 4,,10
L446:
	movl	40(%esp), %eax
	shrl	$23, %ebp
	movl	$1, %edx
	sall	$4, %ebp
	addl	%ebp, %eax
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	je	L509
	xorl	%edx, %edx
	cmpl	$1, %ecx
	jne	L509
	movl	(%eax), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	sete	%dl
	.p2align 4,,10
L509:
	movl	44(%esp), %eax
	movl	%edx, (%eax)
	movl	$1, 8(%eax)
	movl	36(%esp), %eax
	movl	%eax, 24(%esp)
	jmp	L424
	.p2align 4,,10
L445:
	movl	40(%esp), %eax
	shrl	$23, %ebp
	sall	$4, %ebp
	leal	(%eax,%ebp), %ecx
	cmpl	$3, 8(%ecx)
	je	L749
	movl	%edi, %esi
	movl	48(%esp), %edi
	movl	44(%esp), %edx
	movl	%esi, 24(%edi)
	movl	%edi, %eax
	movl	$11, 4(%esp)
	movl	%ecx, (%esp)
	call	_Arith
	movl	12(%edi), %eax
	movl	%esi, 24(%esp)
	movl	%eax, 40(%esp)
	jmp	L424
	.p2align 4,,10
L444:
	movl	%ebp, %ecx
	shrl	$23, %ecx
	testb	$1, %ch
	jne	L750
	movl	%ebp, %eax
	sall	$4, %ecx
	addl	40(%esp), %ecx
	shrl	$14, %eax
	testb	$1, %ah
	je	L505
L799:
	movzbl	%al, %ebp
	movl	52(%esp), %eax
	sall	$4, %ebp
	addl	%ebp, %eax
L506:
	cmpl	$3, 8(%ecx)
	jne	L507
	cmpl	$3, 8(%eax)
	je	L751
L507:
	movl	48(%esp), %edi
	movl	36(%esp), %esi
	movl	%esi, 24(%edi)
	movl	$10, 4(%esp)
	jmp	L737
	.p2align 4,,10
L443:
	movl	%ebp, %ecx
	shrl	$23, %ecx
	testb	$1, %ch
	jne	L752
	movl	%ebp, %eax
	sall	$4, %ecx
	addl	40(%esp), %ecx
	shrl	$14, %eax
	testb	$1, %ah
	je	L500
L798:
	movzbl	%al, %ebp
	movl	52(%esp), %eax
	sall	$4, %ebp
	addl	%ebp, %eax
L501:
	cmpl	$3, 8(%ecx)
	jne	L502
	cmpl	$3, 8(%eax)
	je	L753
L502:
	movl	48(%esp), %edi
	movl	36(%esp), %esi
	movl	%esi, 24(%edi)
	movl	$9, 4(%esp)
	jmp	L737
	.p2align 4,,10
L442:
	movl	%ebp, %ecx
	shrl	$23, %ecx
	testb	$1, %ch
	jne	L754
	movl	%ebp, %eax
	sall	$4, %ecx
	addl	40(%esp), %ecx
	shrl	$14, %eax
	testb	$1, %ah
	je	L495
L797:
	movzbl	%al, %ebp
	movl	52(%esp), %eax
	sall	$4, %ebp
	addl	%ebp, %eax
L496:
	cmpl	$3, 8(%ecx)
	jne	L497
	cmpl	$3, 8(%eax)
	je	L755
L497:
	movl	48(%esp), %edi
	movl	36(%esp), %esi
	movl	%esi, 24(%edi)
	movl	$8, 4(%esp)
	jmp	L737
	.p2align 4,,10
L441:
	movl	%ebp, %ecx
	shrl	$23, %ecx
	testb	$1, %ch
	jne	L756
	movl	%ebp, %eax
	sall	$4, %ecx
	addl	40(%esp), %ecx
	shrl	$14, %eax
	testb	$1, %ah
	je	L490
L796:
	movzbl	%al, %ebp
	movl	52(%esp), %eax
	sall	$4, %ebp
	addl	%ebp, %eax
L491:
	cmpl	$3, 8(%ecx)
	jne	L492
	cmpl	$3, 8(%eax)
	je	L757
L492:
	movl	48(%esp), %edi
	movl	36(%esp), %esi
	movl	%esi, 24(%edi)
	movl	$7, 4(%esp)
	.p2align 4,,10
L737:
	movl	44(%esp), %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_Arith
	movl	12(%edi), %eax
	movl	%esi, 24(%esp)
	movl	%eax, 40(%esp)
	jmp	L424
	.p2align 4,,10
L440:
	movl	%ebp, %ecx
	shrl	$23, %ecx
	testb	$1, %ch
	jne	L758
	movl	%ebp, %eax
	sall	$4, %ecx
	addl	40(%esp), %ecx
	shrl	$14, %eax
	testb	$1, %ah
	je	L485
L801:
	movzbl	%al, %ebp
	movl	52(%esp), %eax
	sall	$4, %ebp
	addl	%ebp, %eax
L486:
	cmpl	$3, 8(%ecx)
	jne	L487
	cmpl	$3, 8(%eax)
	je	L759
L487:
	movl	48(%esp), %edi
	movl	36(%esp), %esi
	movl	%esi, 24(%edi)
	movl	$6, 4(%esp)
	jmp	L737
	.p2align 4,,10
L439:
	movl	%ebp, %ecx
	shrl	$23, %ecx
	testb	$1, %ch
	jne	L760
	movl	%ebp, %eax
	sall	$4, %ecx
	addl	40(%esp), %ecx
	shrl	$14, %eax
	testb	$1, %ah
	je	L480
L800:
	movzbl	%al, %ebp
	movl	52(%esp), %eax
	sall	$4, %ebp
	addl	%ebp, %eax
L481:
	cmpl	$3, 8(%ecx)
	jne	L482
	cmpl	$3, 8(%eax)
	je	L761
L482:
	movl	48(%esp), %edi
	movl	36(%esp), %esi
	movl	%esi, 24(%edi)
	movl	$5, 4(%esp)
	jmp	L737
	.p2align 4,,10
L438:
	movl	%ebp, %edx
	movl	44(%esp), %esi
	movl	36(%esp), %edi
	shrl	$23, %edx
	sall	$4, %edx
	addl	40(%esp), %edx
	movl	4(%edx), %ebx
	movl	(%edx), %ecx
	movl	%ebx, 20(%esi)
	movl	8(%edx), %eax
	movl	%ecx, 16(%esi)
	movl	%eax, 24(%esi)
	movl	48(%esp), %eax
	movl	%edi, 24(%eax)
	movl	%ebp, %eax
	shrl	$14, %eax
	testb	$1, %ah
	jne	L762
	andl	$511, %eax
	movl	40(%esp), %ecx
	movl	%eax, %ebp
	movl	%esi, %eax
	sall	$4, %ebp
	addl	%ebp, %ecx
L477:
	movl	48(%esp), %edi
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_luaV_gettable
	jmp	L735
	.p2align 4,,10
L437:
	movl	%ebp, %edx
	shrl	$14, %ebp
	movl	%ebp, %ebx
	shrl	$23, %edx
	andl	$511, %ebx
	movl	%ebx, %edi
	sarl	$3, %edi
	andl	$31, %edi
	jne	L763
	movl	%edx, %eax
	sarl	$3, %eax
	andl	$31, %eax
	jne	L764
L474:
	movl	48(%esp), %edi
	movl	%ebx, %ecx
	movl	%edi, %eax
	call	_luaH_new
	movl	44(%esp), %ecx
	movl	%eax, (%ecx)
	movl	%edi, %eax
	movl	36(%esp), %edi
	movl	$5, 8(%ecx)
	movl	%edi, 24(%eax)
	movl	16(%eax), %eax
	movl	64(%eax), %ecx
	cmpl	%ecx, 68(%eax)
	jnb	L765
L565:
	movl	48(%esp), %eax
	movl	12(%eax), %eax
	movl	%eax, 40(%esp)
	movl	36(%esp), %eax
	movl	%eax, 24(%esp)
	jmp	L424
	.p2align 4,,10
L436:
	movl	48(%esp), %eax
	movl	36(%esp), %ecx
	movl	%ebp, %edx
	shrl	$14, %edx
	testb	$1, %dh
	movl	%ecx, 24(%eax)
	jne	L766
	andl	$511, %edx
	shrl	$23, %ebp
	sall	$4, %edx
	addl	40(%esp), %edx
	testl	$256, %ebp
	je	L471
L795:
	movl	52(%esp), %eax
	andl	$-257, %ebp
	sall	$4, %ebp
	leal	(%eax,%ebp), %ecx
L472:
	movl	48(%esp), %edi
	movl	%edx, (%esp)
	movl	44(%esp), %edx
	movl	%edi, %eax
	call	_luaV_settable
L735:
	movl	12(%edi), %eax
	movl	%eax, 40(%esp)
	movl	36(%esp), %eax
	movl	%eax, 24(%esp)
	jmp	L424
	.p2align 4,,10
L435:
	movl	64(%esp), %eax
	shrl	$23, %ebp
	movl	44(%esp), %edi
	movl	20(%eax,%ebp,4), %ebx
	movl	4(%edi), %edx
	movl	(%edi), %eax
	movl	8(%ebx), %ecx
	movl	%edx, 4(%ecx)
	movl	%eax, (%ecx)
	movl	8(%edi), %eax
	movl	%eax, 8(%ecx)
	cmpl	$3, 8(%edi)
	movl	36(%esp), %eax
	movl	%eax, 24(%esp)
	jle	L424
	movl	(%edi), %edx
	testb	$3, 5(%edx)
	je	L424
	movzbl	5(%ebx), %ecx
	testb	$4, %cl
	je	L424
	movl	48(%esp), %eax
	movl	16(%eax), %eax
	cmpb	$1, 21(%eax)
	je	L767
	movzbl	20(%eax), %eax
	andl	$-8, %ecx
	andl	$3, %eax
	orl	%ecx, %eax
	movb	%al, 5(%ebx)
	jmp	L424
	.p2align 4,,10
L434:
	movl	64(%esp), %eax
	movl	44(%esp), %edi
	shrl	$14, %ebp
	movl	36(%esp), %esi
	movl	52(%esp), %ecx
	sall	$4, %ebp
	leal	96(%esp), %edx
	movl	12(%eax), %eax
	movl	$5, 104(%esp)
	addl	%ebp, %ecx
	movl	%eax, 96(%esp)
	movl	48(%esp), %eax
	movl	%esi, 24(%eax)
	movl	%edi, (%esp)
	movl	%eax, %edi
	call	_luaV_settable
L734:
	movl	12(%edi), %eax
	movl	%esi, 24(%esp)
	movl	%eax, 40(%esp)
	jmp	L424
	.p2align 4,,10
L433:
	movl	48(%esp), %eax
	movl	36(%esp), %ecx
	movl	%ecx, 24(%eax)
	movl	%ebp, %eax
	shrl	$14, %eax
	testb	$1, %ah
	jne	L768
	movl	40(%esp), %ecx
	andl	$511, %eax
	sall	$4, %eax
	addl	%eax, %ecx
L467:
	movl	44(%esp), %eax
	movl	48(%esp), %esi
	shrl	$23, %ebp
	movl	40(%esp), %edx
	sall	$4, %ebp
	movl	%eax, (%esp)
	movl	%esi, %eax
	addl	%ebp, %edx
	call	_luaV_gettable
	movl	12(%esi), %eax
	movl	%eax, 40(%esp)
	movl	36(%esp), %eax
	movl	%eax, 24(%esp)
	jmp	L424
	.p2align 4,,10
L432:
	movl	64(%esp), %eax
	movl	52(%esp), %edi
	shrl	$14, %ebp
	sall	$4, %ebp
	movl	36(%esp), %esi
	leal	96(%esp), %edx
	movl	12(%eax), %eax
	leal	(%edi,%ebp), %ecx
	movl	44(%esp), %edi
	movl	$5, 104(%esp)
	movl	%eax, 96(%esp)
	movl	48(%esp), %eax
	movl	%esi, 24(%eax)
	movl	%edi, (%esp)
	movl	%eax, %edi
	call	_luaV_gettable
	jmp	L734
	.p2align 4,,10
L431:
	movl	64(%esp), %eax
	shrl	$23, %ebp
	movl	20(%eax,%ebp,4), %eax
	movl	8(%eax), %ecx
L733:
	movl	(%ecx), %eax
	movl	4(%ecx), %edx
	movl	44(%esp), %edi
	movl	%eax, (%edi)
	movl	%edx, 4(%edi)
	movl	8(%ecx), %eax
	movl	%eax, 8(%edi)
	movl	36(%esp), %eax
	movl	%eax, 24(%esp)
	jmp	L424
	.p2align 4,,10
L430:
	movl	40(%esp), %eax
	shrl	$23, %ebp
	movl	44(%esp), %edx
	sall	$4, %ebp
	addl	%ebp, %eax
	.p2align 4,,10
L465:
	subl	$16, %eax
	movl	$0, 24(%eax)
	cmpl	%eax, %edx
	jbe	L465
L649:
	movl	36(%esp), %eax
	movl	%eax, 24(%esp)
	jmp	L424
	.p2align 4,,10
L429:
	movl	44(%esp), %ecx
	movl	%ebp, %eax
	shrl	$23, %eax
	movl	%eax, (%ecx)
	movl	24(%esp), %eax
	movl	$1, 8(%ecx)
	addl	$8, %eax
	andl	$8372224, %ebp
	cmove	36(%esp), %eax
	movl	%eax, 24(%esp)
	jmp	L424
	.p2align 4,,10
L428:
	movl	52(%esp), %eax
	shrl	$14, %ebp
	sall	$4, %ebp
L732:
	leal	(%eax,%ebp), %ecx
	jmp	L733
	.p2align 4,,10
L426:
	shrl	$23, %ebp
	movl	40(%esp), %eax
	sall	$4, %ebp
	jmp	L732
	.p2align 4,,10
L464:
	movl	48(%esp), %edi
	movl	64(%esp), %ecx
	shrl	$23, %ebp
	leal	-1(%ebp), %eax
	movl	20(%edi), %ebp
	movl	16(%ecx), %edx
	movl	0(%ebp), %ebx
	subl	4(%ebp), %ebx
	movzbl	73(%edx), %edx
	sarl	$4, %ebx
	subl	%edx, %ebx
	cmpl	$-1, %eax
	leal	-1(%ebx), %edi
	je	L769
L611:
	testl	%eax, %eax
	jle	L649
	movl	44(%esp), %edx
	movl	%ebx, %esi
	movl	%edi, 24(%esp)
	negl	%esi
	sall	$4, %esi
	subl	%edx, %esi
	movl	%edx, %ecx
	xorl	%edx, %edx
	addl	$8, %esi
	addl	$8, %ecx
	movl	%esi, 44(%esp)
	jmp	L615
	.p2align 4,,10
L770:
	movl	44(%esp), %edi
	leal	(%edi,%ecx), %ebx
	addl	0(%ebp), %ebx
	movl	(%ebx), %esi
	movl	4(%ebx), %edi
	movl	8(%ebx), %ebx
	movl	%esi, -8(%ecx)
	movl	%edi, -4(%ecx)
	movl	%ebx, (%ecx)
L614:
	addl	$1, %edx
	addl	$16, %ecx
	cmpl	%eax, %edx
	je	L649
L615:
	cmpl	%edx, 24(%esp)
	jg	L770
	movl	$0, (%ecx)
	jmp	L614
	.p2align 4,,10
L463:
	movl	64(%esp), %ecx
	shrl	$14, %ebp
	movl	16(%ecx), %eax
	movl	12(%ecx), %edi
	xorl	%ecx, %ecx
	movl	16(%eax), %edx
	movl	(%edx,%ebp,4), %ebp
	xorl	%edx, %edx
	movzbl	72(%ebp), %eax
	leal	-4(,%eax,4), %esi
	movl	%eax, %ebx
	movl	%eax, 68(%esp)
	leal	24(%esi), %eax
	movl	%eax, (%esp)
	movl	48(%esp), %eax
	call	_luaM_realloc_
	movl	48(%esp), %edx
	movl	%eax, %ecx
	movl	%eax, 56(%esp)
	movl	16(%edx), %eax
	movl	28(%eax), %edx
	movl	%edx, (%ecx)
	movl	%ecx, 28(%eax)
	movzbl	20(%eax), %eax
	movb	$6, 4(%ecx)
	movb	$0, 6(%ecx)
	movl	%edi, 12(%ecx)
	movb	%bl, 7(%ecx)
	andl	$3, %eax
	movb	%al, 5(%ecx)
	movl	68(%esp), %eax
	testl	%eax, %eax
	je	L597
	sall	$2, %eax
	movl	%eax, %edi
	subl	%eax, %esi
	movl	%eax, 72(%esp)
	cmpl	$4, %edi
	leal	24(%ecx,%esi), %eax
	jnb	L598
	testl	%edi, %edi
	je	L599
	movb	$0, (%eax)
L599:
	movl	56(%esp), %eax
	xorl	%edi, %edi
	movl	%ebp, 16(%eax)
	jmp	L609
	.p2align 4,,10
L772:
	movl	64(%esp), %eax
	movl	56(%esp), %ecx
	movl	20(%eax,%ebx,4), %eax
	movl	%eax, 20(%ecx,%edi,4)
	addl	$1, %edi
	cmpl	%edi, 68(%esp)
	je	L771
L609:
	movl	24(%esp), %eax
	movl	4(%eax,%edi,4), %ebx
	movl	%ebx, %eax
	shrl	$23, %ebx
	andl	$63, %eax
	cmpl	$4, %eax
	je	L772
	movl	48(%esp), %eax
	sall	$4, %ebx
	addl	40(%esp), %ebx
	movl	104(%eax), %edx
	movl	16(%eax), %ebp
	testl	%edx, %edx
	je	L645
	cmpl	8(%edx), %ebx
	movl	%edx, %esi
	ja	L645
	jne	L606
	jmp	L604
	.p2align 4,,10
L773:
	cmpl	8(%edx), %ebx
	ja	L603
	je	L604
	movl	%edx, %esi
L606:
	movl	(%edx), %edx
	testl	%edx, %edx
	jne	L773
L603:
	movl	48(%esp), %eax
	xorl	%edx, %edx
	movl	$32, (%esp)
	xorl	%ecx, %ecx
	call	_luaM_realloc_
	movb	$10, 4(%eax)
	movzbl	20(%ebp), %edx
	movl	%ebx, 8(%eax)
	andl	$3, %edx
	movb	%dl, 5(%eax)
	movl	(%esi), %edx
	movl	%edx, (%eax)
	leal	120(%ebp), %edx
	movl	%eax, (%esi)
	movl	%edx, 16(%eax)
	movl	140(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	%eax, 16(%edx)
	movl	%eax, 140(%ebp)
L607:
	movl	56(%esp), %ecx
	movl	%eax, 20(%ecx,%edi,4)
	addl	$1, %edi
	cmpl	%edi, 68(%esp)
	jne	L609
L771:
	movl	36(%esp), %eax
	addl	72(%esp), %eax
	movl	%eax, 24(%esp)
L622:
	movl	44(%esp), %eax
	movl	56(%esp), %edi
	movl	$6, 8(%eax)
	movl	%edi, (%eax)
	movl	48(%esp), %eax
	movl	24(%esp), %edi
	movl	%edi, 24(%eax)
	movl	16(%eax), %eax
	movl	64(%eax), %edi
	cmpl	%edi, 68(%eax)
	jnb	L774
L610:
	movl	48(%esp), %eax
	movl	12(%eax), %eax
	movl	%eax, 40(%esp)
	jmp	L424
	.p2align 4,,10
L462:
	movl	48(%esp), %eax
	movl	44(%esp), %edx
	call	_luaF_close
	movl	36(%esp), %eax
	movl	%eax, 24(%esp)
	jmp	L424
	.p2align 4,,10
L461:
	movl	%ebp, %edi
	movl	%ebp, %eax
	shrl	$14, %eax
	shrl	$23, %edi
	andl	$511, %eax
	testl	%edi, %edi
	jne	L591
	movl	48(%esp), %ecx
	movl	8(%ecx), %edi
	movl	20(%ecx), %edx
	movl	%edi, 56(%esp)
	subl	44(%esp), %edi
	movl	8(%edx), %edx
	sarl	$4, %edi
	movl	%edx, 8(%ecx)
	subl	$1, %edi
L591:
	testl	%eax, %eax
	je	L775
	movl	36(%esp), %esi
	movl	%esi, 24(%esp)
L592:
	movl	44(%esp), %ecx
	cmpl	$5, 8(%ecx)
	jne	L424
	leal	-1(%eax), %ebx
	movl	(%ecx), %ebp
	imull	$50, %ebx, %ebx
	addl	%edi, %ebx
	cmpl	28(%ebp), %ebx
	jg	L776
L593:
	testl	%edi, %edi
	jle	L424
	movl	%edi, %esi
	movl	%ebx, %eax
	movl	%ebx, %ecx
	sall	$4, %esi
	addl	44(%esp), %esi
	movl	48(%esp), %ebx
	subl	%edi, %eax
	movl	%eax, 36(%esp)
	.p2align 4,,10
L596:
	movl	%ebp, %edx
	movl	%ebx, %eax
	leal	-1(%ecx), %edi
	call	_luaH_setnum
	movl	(%esi), %edx
	movl	4(%esi), %ecx
	movl	%edx, (%eax)
	movl	%ecx, 4(%eax)
	movl	8(%esi), %edx
	movl	%edx, 8(%eax)
	cmpl	$3, 8(%esi)
	jle	L595
	movl	(%esi), %eax
	testb	$3, 5(%eax)
	je	L595
	movzbl	5(%ebp), %eax
	testb	$4, %al
	je	L595
	movl	16(%ebx), %edx
	andl	$-5, %eax
	movb	%al, 5(%ebp)
	movl	40(%edx), %eax
	movl	%eax, 24(%ebp)
	movl	%ebp, 40(%edx)
	.p2align 4,,10
L595:
	subl	$16, %esi
	cmpl	36(%esp), %edi
	movl	%edi, %ecx
	jne	L596
	jmp	L424
	.p2align 4,,10
L460:
	movl	44(%esp), %edi
	movl	48(%esp), %ecx
	movl	32(%edi), %eax
	movl	36(%edi), %edx
	movl	%eax, 80(%edi)
	movl	40(%edi), %eax
	movl	%edx, 84(%edi)
	movl	20(%edi), %edx
	movl	%eax, 88(%edi)
	movl	16(%edi), %eax
	movl	%edx, 68(%edi)
	movl	4(%edi), %edx
	movl	%eax, 64(%edi)
	movl	24(%edi), %eax
	movl	%edx, 52(%edi)
	movl	36(%esp), %edx
	movl	%eax, 72(%edi)
	movl	(%edi), %eax
	movl	%eax, 48(%edi)
	movl	8(%edi), %eax
	movl	%eax, 56(%edi)
	leal	96(%edi), %eax
	movl	%edx, 24(%ecx)
	leal	48(%edi), %edx
	movl	%eax, 8(%ecx)
	movl	%ecx, %eax
	movl	%ebp, %ecx
	shrl	$14, %ecx
	movl	%eax, %edi
	andl	$511, %ecx
	call	_luaD_call
	movl	12(%edi), %eax
	movl	%edi, %ecx
	movl	%eax, 40(%esp)
	movl	%eax, %edi
	movl	20(%ecx), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%ecx)
	leal	48(%edi,%esi), %ecx
	movl	8(%ecx), %ebx
	testl	%ebx, %ebx
	je	L589
	movl	(%ecx), %eax
	movl	4(%ecx), %edx
	movl	%ebx, -8(%ecx)
	movl	%eax, -16(%ecx)
	movl	24(%esp), %eax
	movl	%edx, -12(%ecx)
	movl	36(%esp), %edx
	movl	4(%eax), %eax
	shrl	$14, %eax
	leal	-524284(%edx,%eax,4), %eax
	movl	%eax, 36(%esp)
L589:
	movl	36(%esp), %eax
	addl	$4, %eax
	movl	%eax, 24(%esp)
	jmp	L424
	.p2align 4,,10
L458:
	movl	44(%esp), %eax
	fldl	32(%eax)
	fldl	(%eax)
	fadd	%st(1), %st
	fldl	16(%eax)
	fldz
	fxch	%st(3)
	fucomip	%st(3), %st
	fstp	%st(2)
	jbe	L725
	fxch	%st(1)
	fucomip	%st(1), %st
	movl	%edi, %ecx
	setnb	%al
L579:
	testb	%al, %al
	movl	%ecx, 24(%esp)
	je	L806
	shrl	$14, %ebp
	leal	-524284(%ecx,%ebp,4), %eax
	movl	%eax, 24(%esp)
	movl	44(%esp), %eax
	fstl	(%eax)
	movl	$3, 8(%eax)
	movl	$3, 56(%eax)
	fstpl	48(%eax)
	jmp	L424
	.p2align 4,,10
L457:
	movl	%ebp, %ecx
	movl	44(%esp), %esi
	shrl	$23, %ecx
	testl	%ecx, %ecx
	jne	L777
L569:
	movl	48(%esp), %eax
	movl	104(%eax), %edx
	testl	%edx, %edx
	je	L570
	movl	40(%esp), %edx
	call	_luaF_close
L570:
	movl	48(%esp), %ecx
	movl	20(%ecx), %edi
	leal	-24(%edi), %eax
	movl	16(%edi), %ebp
	movl	-24(%edi), %ebx
	movl	%eax, %edx
	movl	%eax, 36(%esp)
	movl	4(%edi), %eax
	movl	%edx, 20(%ecx)
	movl	-12(%edi), %edx
	testl	%ebp, %ebp
	movl	%ebx, 12(%ecx)
	movl	%edx, 24(%ecx)
	je	L571
	movl	8(%ecx), %ecx
	movl	%ebp, %edx
	cmpl	%ecx, %esi
	jnb	L572
	movl	%edi, 24(%esp)
	movl	%ebp, 40(%esp)
	jmp	L574
	.p2align 4,,10
L779:
	cmpl	%ecx, %esi
	jnb	L778
L574:
	addl	$16, %esi
	movl	-16(%esi), %edi
	movl	-12(%esi), %ebp
	addl	$16, %eax
	subl	$1, %edx
	movl	%edi, -16(%eax)
	movl	%ebp, -12(%eax)
	movl	-8(%esi), %ebx
	movl	%ebx, -8(%eax)
	jne	L779
	movl	24(%esp), %edi
	movl	40(%esp), %ebp
L573:
	subl	$1, 76(%esp)
	movl	48(%esp), %ecx
	movl	%eax, 8(%ecx)
	je	L558
	cmpl	$-1, %ebp
	je	L576
	movl	24(%ecx), %edx
	movl	12(%ecx), %ebx
	movl	%ecx, %esi
L621:
	movl	-16(%edi), %eax
	movl	%eax, 8(%esi)
L561:
	movl	%edx, 24(%esp)
	movl	%ebx, 40(%esp)
	movl	36(%esp), %eax
	jmp	L423
	.p2align 4,,10
L456:
	shrl	$23, %ebp
	testl	%ebp, %ebp
	jne	L780
L563:
	movl	48(%esp), %eax
	movl	44(%esp), %edx
	movl	$-1, %ecx
	movl	%edi, 24(%eax)
	call	_luaD_precall
	testl	%eax, %eax
	je	L564
	cmpl	$1, %eax
	je	L565
	jmp	L558
	.p2align 4,,10
L455:
	movl	%ebp, %edx
	shrl	$14, %ebp
	shrl	$23, %edx
	andl	$511, %ebp
	testl	%edx, %edx
	leal	-1(%ebp), %ebx
	jne	L781
L557:
	movl	36(%esp), %ecx
	movl	48(%esp), %eax
	movl	44(%esp), %edx
	movl	%ecx, 24(%eax)
	movl	%ebx, %ecx
	call	_luaD_precall
	testl	%eax, %eax
	je	L559
	cmpl	$1, %eax
	jne	L558
	cmpl	$-1, %ebx
	je	L565
	movl	48(%esp), %edi
	movl	20(%edi), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%edi)
	jmp	L565
	.p2align 4,,10
L454:
	movl	%ebp, %edx
	movl	$1, %ecx
	shrl	$23, %edx
	sall	$4, %edx
	addl	40(%esp), %edx
	movl	8(%edx), %ebx
	testl	%ebx, %ebx
	jne	L782
L555:
	shrl	$14, %ebp
	andl	$511, %ebp
	cmpl	%ecx, %ebp
	je	L589
	movl	(%edx), %eax
	movl	44(%esp), %ecx
	movl	4(%edx), %edx
	movl	%eax, (%ecx)
	movl	%ebx, 8(%ecx)
	movl	%edx, 4(%ecx)
	jmp	L742
	.p2align 4,,10
L453:
	movl	44(%esp), %eax
	movl	8(%eax), %edx
	movl	$1, %eax
	testl	%edx, %edx
	jne	L783
L553:
	shrl	$14, %ebp
	andl	$511, %ebp
	cmpl	%eax, %ebp
	je	L589
L742:
	movl	24(%esp), %eax
	movl	36(%esp), %edi
	movl	4(%eax), %eax
	shrl	$14, %eax
	leal	-524284(%edi,%eax,4), %eax
	movl	%eax, 36(%esp)
	movl	36(%esp), %eax
	addl	$4, %eax
	movl	%eax, 24(%esp)
	jmp	L424
	.p2align 4,,10
L451:
	movl	36(%esp), %ecx
	movl	48(%esp), %eax
	movl	%ecx, 24(%eax)
	movl	%ebp, %ecx
	shrl	$14, %ecx
	testb	$1, %ch
	jne	L784
	andl	$511, %ecx
	shrl	$23, %ebp
	sall	$4, %ecx
	addl	40(%esp), %ecx
	testl	$256, %ebp
	je	L536
L794:
	movl	52(%esp), %eax
	andl	$-257, %ebp
	sall	$4, %ebp
	leal	(%eax,%ebp), %edx
L537:
	movl	48(%esp), %eax
	call	_luaV_lessthan
	cmpl	%ebx, %eax
	jne	L552
	movl	24(%esp), %eax
	movl	36(%esp), %edi
	movl	4(%eax), %eax
	shrl	$14, %eax
	leal	-524284(%edi,%eax,4), %eax
	movl	%eax, 36(%esp)
	jmp	L552
	.p2align 4,,10
L452:
	movl	48(%esp), %eax
	movl	36(%esp), %edi
	movl	%edi, 24(%eax)
	movl	%ebp, %eax
	shrl	$14, %eax
	testb	$1, %ah
	jne	L785
	movl	40(%esp), %esi
	andl	$511, %eax
	shrl	$23, %ebp
	sall	$4, %eax
	testl	$256, %ebp
	leal	(%esi,%eax), %edi
	je	L541
L792:
	movl	52(%esp), %eax
	andl	$-257, %ebp
	movl	8(%edi), %ecx
	sall	$4, %ebp
	leal	(%eax,%ebp), %esi
	movl	8(%esi), %edx
	cmpl	%ecx, %edx
	jne	L740
L793:
	cmpl	$3, %edx
	je	L786
	cmpl	$4, %edx
	je	L787
	movl	48(%esp), %eax
	movl	$14, (%esp)
	movl	%edi, %ecx
	movl	%esi, %edx
	call	_call_orderTM
	cmpl	$-1, %eax
	jne	L544
	movl	48(%esp), %eax
	movl	$13, (%esp)
	movl	%esi, %ecx
	movl	%edi, %edx
	call	_call_orderTM
	cmpl	$-1, %eax
	je	L551
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	L544
	.p2align 4,,10
L450:
	movl	%ebp, %edi
	shrl	$23, %edi
	testl	$256, %edi
	jne	L788
	movl	%ebp, %eax
	sall	$4, %edi
	addl	40(%esp), %edi
	shrl	$14, %eax
	testb	$1, %ah
	je	L517
L791:
	movzbl	%al, %ebp
	movl	52(%esp), %eax
	sall	$4, %ebp
	leal	(%eax,%ebp), %esi
L518:
	movl	48(%esp), %eax
	movl	36(%esp), %ecx
	movl	%ecx, 24(%eax)
	movl	8(%edi), %eax
	cmpl	8(%esi), %eax
	je	L789
L519:
	xorl	%eax, %eax
L544:
	cmpl	%eax, %ebx
	je	L790
L552:
	movl	48(%esp), %eax
	movl	12(%eax), %eax
	movl	%eax, 40(%esp)
	movl	36(%esp), %eax
	addl	$4, %eax
	movl	%eax, 24(%esp)
	jmp	L424
L775:
	movl	24(%esp), %ecx
	movl	4(%ecx), %eax
	addl	$8, %ecx
	movl	%ecx, 24(%esp)
	jmp	L592
L788:
	movl	%ebp, %eax
	andl	$-257, %edi
	shrl	$14, %eax
	sall	$4, %edi
	addl	52(%esp), %edi
	testb	$1, %ah
	jne	L791
L517:
	andl	$511, %eax
	movl	40(%esp), %esi
	movl	%eax, %ebp
	sall	$4, %ebp
	addl	%ebp, %esi
	jmp	L518
L764:
	andl	$7, %edx
	leal	-1(%eax), %ecx
	addl	$8, %edx
	sall	%cl, %edx
	jmp	L474
L785:
	movl	52(%esp), %edi
	movzbl	%al, %eax
	shrl	$23, %ebp
	sall	$4, %eax
	addl	%eax, %edi
	testl	$256, %ebp
	jne	L792
L541:
	movl	40(%esp), %esi
	sall	$4, %ebp
	movl	8(%edi), %ecx
	addl	%ebp, %esi
	movl	8(%esi), %edx
	cmpl	%ecx, %edx
	je	L793
L740:
	movl	48(%esp), %eax
	call	_luaG_ordererror.isra.60
	cmpl	%eax, %ebx
	jne	L552
L790:
	movl	24(%esp), %eax
	movl	36(%esp), %ecx
	movl	4(%eax), %eax
	shrl	$14, %eax
	leal	-524284(%ecx,%eax,4), %eax
	movl	%eax, 36(%esp)
	jmp	L552
L783:
	xorl	%eax, %eax
	cmpl	$1, %edx
	jne	L553
	movl	44(%esp), %eax
	movl	(%eax), %edi
	xorl	%eax, %eax
	testl	%edi, %edi
	sete	%al
	jmp	L553
L782:
	xorl	%ecx, %ecx
	cmpl	$1, %ebx
	jne	L555
	movl	(%edx), %esi
	xorl	%ecx, %ecx
	testl	%esi, %esi
	sete	%cl
	jmp	L555
L781:
	movl	44(%esp), %eax
	movl	48(%esp), %ecx
	sall	$4, %edx
	addl	%edx, %eax
	movl	%eax, 8(%ecx)
	jmp	L557
L780:
	movl	44(%esp), %eax
	movl	48(%esp), %edi
	sall	$4, %ebp
	addl	%ebp, %eax
	movl	%eax, 8(%edi)
	movl	36(%esp), %edi
	jmp	L563
L784:
	movzbl	%cl, %ecx
	shrl	$23, %ebp
	sall	$4, %ecx
	addl	52(%esp), %ecx
	testl	$256, %ebp
	jne	L794
L536:
	movl	40(%esp), %edx
	sall	$4, %ebp
	addl	%ebp, %edx
	jmp	L537
L777:
	addl	$268435455, %ecx
	sall	$4, %ecx
	leal	(%esi,%ecx), %eax
	movl	48(%esp), %ecx
	movl	%eax, 8(%ecx)
	jmp	L569
L768:
	movl	52(%esp), %ecx
	movzbl	%al, %eax
	sall	$4, %eax
	addl	%eax, %ecx
	jmp	L467
L766:
	movzbl	%dl, %edx
	shrl	$23, %ebp
	sall	$4, %edx
	addl	52(%esp), %edx
	testl	$256, %ebp
	jne	L795
L471:
	movl	40(%esp), %ecx
	sall	$4, %ebp
	addl	%ebp, %ecx
	jmp	L472
L756:
	movl	%ebp, %eax
	andb	$254, %ch
	shrl	$14, %eax
	sall	$4, %ecx
	addl	52(%esp), %ecx
	testb	$1, %ah
	jne	L796
L490:
	andl	$511, %eax
	movl	%eax, %ebp
	movl	40(%esp), %eax
	sall	$4, %ebp
	addl	%ebp, %eax
	jmp	L491
L754:
	movl	%ebp, %eax
	andb	$254, %ch
	shrl	$14, %eax
	sall	$4, %ecx
	addl	52(%esp), %ecx
	testb	$1, %ah
	jne	L797
L495:
	andl	$511, %eax
	movl	%eax, %ebp
	movl	40(%esp), %eax
	sall	$4, %ebp
	addl	%ebp, %eax
	jmp	L496
L752:
	movl	%ebp, %eax
	andb	$254, %ch
	shrl	$14, %eax
	sall	$4, %ecx
	addl	52(%esp), %ecx
	testb	$1, %ah
	jne	L798
L500:
	andl	$511, %eax
	movl	%eax, %ebp
	movl	40(%esp), %eax
	sall	$4, %ebp
	addl	%ebp, %eax
	jmp	L501
L750:
	movl	%ebp, %eax
	andb	$254, %ch
	shrl	$14, %eax
	sall	$4, %ecx
	addl	52(%esp), %ecx
	testb	$1, %ah
	jne	L799
L505:
	andl	$511, %eax
	movl	%eax, %ebp
	movl	40(%esp), %eax
	sall	$4, %ebp
	addl	%ebp, %eax
	jmp	L506
L760:
	movl	%ebp, %eax
	andb	$254, %ch
	shrl	$14, %eax
	sall	$4, %ecx
	addl	52(%esp), %ecx
	testb	$1, %ah
	jne	L800
L480:
	andl	$511, %eax
	movl	%eax, %ebp
	movl	40(%esp), %eax
	sall	$4, %ebp
	addl	%ebp, %eax
	jmp	L481
L758:
	movl	%ebp, %eax
	andb	$254, %ch
	shrl	$14, %eax
	sall	$4, %ecx
	addl	52(%esp), %ecx
	testb	$1, %ah
	jne	L801
L485:
	andl	$511, %eax
	movl	%eax, %ebp
	movl	40(%esp), %eax
	sall	$4, %ebp
	addl	%ebp, %eax
	jmp	L486
L762:
	movzbl	%al, %ebp
	movl	52(%esp), %eax
	sall	$4, %ebp
	leal	(%eax,%ebp), %ecx
	movl	%esi, %eax
	jmp	L477
L763:
	andl	$7, %ebp
	leal	-1(%edi), %ecx
	movl	%edx, %eax
	leal	8(%ebp), %ebx
	sarl	$3, %eax
	sall	%cl, %ebx
	andl	$31, %eax
	je	L474
	jmp	L764
L749:
	fldl	(%ecx)
	fchs
L736:
	movl	44(%esp), %eax
	fstpl	(%eax)
	movl	$3, 8(%eax)
	movl	36(%esp), %eax
	movl	%eax, 24(%esp)
	jmp	L424
L598:
	movl	$0, (%eax)
	leal	4(%eax), %edi
	movl	72(%esp), %esi
	andl	$-4, %edi
	movl	$0, -4(%eax,%esi)
	subl	%edi, %eax
	leal	(%esi,%eax), %ecx
	xorl	%eax, %eax
	shrl	$2, %ecx
	rep stosl
	jmp	L599
L724:
	movl	48(%esp), %eax
	movl	$_luaO_nilobject_, %ecx
	movl	%ebx, %edx
	movl	%edi, 24(%eax)
	movl	44(%esp), %edi
	movl	$12, 4(%esp)
	movl	%edi, (%esp)
	call	_call_binTM
	testl	%eax, %eax
	jne	L565
	movl	8(%ebx), %eax
	movl	$LC35, 8(%esp)
	movl	$LC36, 4(%esp)
	movl	_luaT_typenames(,%eax,4), %eax
	movl	%eax, 12(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	_luaG_runerror
	jmp	L565
L746:
	movl	%edi, %eax
	movl	$5, %edx
	movl	%ecx, 24(%esp)
	call	_luaD_throw
	movl	24(%esp), %ecx
	jmp	L420
L745:
	movl	$LC34, 4(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 24(%esp)
	call	_luaG_runerror
	movl	24(%esp), %ecx
	jmp	L420
L789:
	cmpl	$7, %eax
	ja	L520
	jmp	*L522(,%eax,4)
	.section .rdata,"dr"
	.align 4
L522:
	.long	L521
	.long	L520
	.long	L520
	.long	L525
	.long	L520
	.long	L526
	.long	L520
	.long	L526
	.text
	.p2align 4,,10
L604:
	movzbl	5(%edx), %eax
	movzbl	20(%ebp), %ecx
	movl	%eax, %esi
	xorl	$3, %ecx
	movl	%eax, %ebp
	andl	$3, %esi
	movl	%edx, %eax
	movl	%esi, %ebx
	testb	%bl, %cl
	je	L607
	movl	%ebp, %ebx
	xorl	$3, %ebx
	movb	%bl, 5(%edx)
	jmp	L607
L576:
	movl	24(%ecx), %edx
	movl	12(%ecx), %ebx
	jmp	L561
L778:
	movl	24(%esp), %edi
	movl	40(%esp), %ebp
L572:
	testl	%edx, %edx
	leal	-1(%edx), %ecx
	jle	L573
	movl	%eax, %ebx
	.p2align 4,,10
L575:
	subl	$1, %ecx
	addl	$16, %ebx
	movl	$0, -8(%ebx)
	cmpl	$-1, %ecx
	jne	L575
	sall	$4, %edx
	addl	%edx, %eax
	jmp	L573
L581:
	movl	44(%esp), %eax
	movl	%eax, %edx
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	je	L583
L580:
	movl	44(%esp), %eax
	movl	24(%eax), %eax
	cmpl	$3, %eax
	je	L727
	cmpl	$4, %eax
	je	L584
L585:
	movl	48(%esp), %eax
	movl	$LC38, 4(%esp)
	movl	%eax, (%esp)
	call	_luaG_runerror
	jmp	L582
L584:
	movl	44(%esp), %eax
	addl	$16, %eax
	movl	%eax, %edx
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	je	L585
L727:
	movl	44(%esp), %eax
	movl	40(%eax), %eax
	cmpl	$3, %eax
	je	L582
	cmpl	$4, %eax
	je	L587
L588:
	movl	48(%esp), %eax
	movl	$LC39, 4(%esp)
	movl	%eax, (%esp)
	call	_luaG_runerror
	fldl	0
	fstp	%st(0)
	ud2
L511:
	movl	(%ebx), %eax
	xorl	%edx, %edx
	movl	%edx, 28(%esp)
	movl	12(%eax), %eax
	movl	%eax, 24(%esp)
	movl	44(%esp), %eax
	fildq	24(%esp)
	movl	$3, 8(%eax)
	fstpl	(%eax)
	movl	36(%esp), %eax
	movl	%eax, 24(%esp)
	jmp	L424
L559:
	movl	48(%esp), %eax
	addl	$1, 76(%esp)
	movl	20(%eax), %edi
	movl	24(%eax), %edx
	movl	12(%eax), %ebx
	movl	%edi, 36(%esp)
	jmp	L561
L564:
	movl	48(%esp), %eax
	movl	104(%eax), %ecx
	movl	20(%eax), %esi
	testl	%ecx, %ecx
	movl	-20(%esi), %ebp
	movl	4(%esi), %edi
	je	L638
	movl	-24(%esi), %edx
	call	_luaF_close
	movl	48(%esp), %eax
	movl	-20(%esi), %ebx
	movl	20(%eax), %eax
	movl	%eax, 40(%esp)
	movl	48(%esp), %eax
L566:
	subl	%edi, %ebx
	movl	8(%eax), %ecx
	addl	(%esi), %ebx
	cmpl	%ecx, %edi
	movl	%ebx, -24(%esi)
	movl	%ebx, 12(%eax)
	jnb	L639
	movl	%ebp, %edx
	movl	%edi, %eax
	movl	%esi, 24(%esp)
	movl	%ebx, 36(%esp)
	.p2align 4,,10
L568:
	movl	4(%eax), %esi
	movl	(%eax), %ebx
	addl	$16, %eax
	addl	$16, %edx
	movl	%ebx, -16(%edx)
	movl	%esi, -12(%edx)
	movl	-8(%eax), %esi
	movl	%esi, -8(%edx)
	cmpl	%ecx, %eax
	jb	L568
	notl	%edi
	movl	24(%esp), %esi
	movl	36(%esp), %ebx
	leal	(%edi,%ecx), %eax
	andl	$-16, %eax
	addl	$16, %eax
L567:
	addl	%eax, %ebp
	movl	48(%esp), %eax
	movl	40(%esp), %edi
	movl	24(%eax), %edx
	subl	$24, %edi
	movl	%ebp, 8(%eax)
	movl	%edi, 36(%esp)
	movl	%ebp, -16(%esi)
	addl	$1, -4(%esi)
	movl	%edx, -12(%esi)
	movl	%edi, 20(%eax)
	jmp	L561
L645:
	movl	80(%esp), %esi
	jmp	L603
L774:
	movl	48(%esp), %eax
	call	_luaC_step
	jmp	L610
L765:
	movl	48(%esp), %eax
	call	_luaC_step
	jmp	L565
L748:
	movl	48(%esp), %eax
	call	_luaC_step
	jmp	L514
L769:
	movl	48(%esp), %eax
	movl	36(%esp), %ecx
	movl	%edi, %edx
	sall	$4, %edx
	movl	%ecx, 24(%eax)
	movl	%eax, %ecx
	movl	28(%eax), %eax
	subl	8(%ecx), %eax
	cmpl	%edx, %eax
	jle	L802
L612:
	movl	48(%esp), %ecx
	movl	12(%ecx), %eax
	addl	%eax, %esi
	movl	%eax, 40(%esp)
	movl	%edi, %eax
	sall	$4, %eax
	movl	%esi, 44(%esp)
	addl	%esi, %eax
	movl	%eax, 8(%ecx)
	movl	%edi, %eax
	jmp	L611
L725:
	fucomi	%st(1), %st
	fstp	%st(1)
	movl	%edi, %ecx
	setnb	%al
	jmp	L579
L587:
	movl	%ebx, %edx
	movl	%ebx, %eax
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	L582
	jmp	L588
	.p2align 4,,10
L757:
	fldl	(%ecx)
	fmull	(%eax)
	jmp	L736
L753:
	fldl	(%ecx)
	fldl	(%eax)
	fld	%st(1)
	fstpl	56(%esp)
	fdivr	%st, %st(1)
	fstpl	24(%esp)
	fstpl	(%esp)
	call	_floor
	fldl	24(%esp)
	movl	44(%esp), %eax
	fmulp	%st, %st(1)
	movl	$3, 8(%eax)
	fldl	56(%esp)
	fsubp	%st, %st(1)
	fstpl	(%eax)
	movl	36(%esp), %eax
	movl	%eax, 24(%esp)
	jmp	L424
L755:
	fldl	(%ecx)
	fdivl	(%eax)
	jmp	L736
L759:
	fldl	(%ecx)
	fsubl	(%eax)
	jmp	L736
L761:
	fldl	(%ecx)
	faddl	(%eax)
	jmp	L736
L520:
	movl	(%esi), %eax
	cmpl	%eax, (%edi)
	sete	%al
	movzbl	%al, %eax
	jmp	L544
L526:
	movl	(%edi), %eax
	movl	(%esi), %edx
	cmpl	%edx, %eax
	je	L521
	movl	8(%edx), %ecx
	movl	8(%eax), %edx
	movl	84(%esp), %eax
	call	_get_compTM.isra.35.constprop.168
	testl	%eax, %eax
	je	L519
	movl	48(%esp), %ebp
	leal	8(%esi), %ecx
	movl	8(%ebp), %edx
	movl	%ecx, 12(%esp)
	leal	8(%edi), %ecx
	movl	%esi, 8(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, %ecx
	movl	%ebp, %eax
	call	_callTMres.isra.49
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L519
	cmpl	$1, %edx
	je	L803
L521:
	movl	$1, %eax
	jmp	L544
L525:
	fldl	(%edi)
	xorl	%eax, %eax
	movl	$0, %edx
	fldl	(%esi)
	fucomip	%st(1), %st
	fstp	%st(0)
	setnp	%al
	cmovne	%edx, %eax
	jmp	L544
L786:
	fldl	(%edi)
	xorl	%eax, %eax
	fldl	(%esi)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	setnb	%al
	jmp	L544
L638:
	movl	%esi, 40(%esp)
	movl	%ebp, %ebx
	jmp	L566
L787:
	movl	(%esi), %edx
	movl	(%edi), %eax
	movl	%ebx, 40(%esp)
	movl	12(%edx), %edi
	leal	16(%edx), %esi
	movl	12(%eax), %ebp
	movl	%edi, %ecx
	leal	16(%eax), %edi
	movl	%ecx, %ebx
	jmp	L550
	.p2align 4,,10
L805:
	movl	%esi, (%esp)
	call	_strlen
	cmpl	%ebp, %eax
	je	L804
	cmpl	%ebx, %eax
	je	L632
	addl	$1, %eax
	addl	%eax, %esi
	subl	%eax, %ebx
	addl	%eax, %edi
	subl	%eax, %ebp
L550:
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	_strcoll
	cmpl	$0, %eax
	je	L805
	setle	%al
	movl	40(%esp), %ebx
	movzbl	%al, %eax
	jmp	L544
L597:
	movl	36(%esp), %eax
	movl	%ebp, 16(%ecx)
	movl	%eax, 24(%esp)
	jmp	L622
L776:
	cmpl	$_dummynode_, 16(%ebp)
	je	L643
	movzbl	7(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
L594:
	movl	%eax, (%esp)
	movl	48(%esp), %eax
	movl	%ebx, %ecx
	movl	%ebp, %edx
	call	_resize
	jmp	L593
L802:
	movl	%edi, %edx
	movl	%ecx, %eax
	call	_luaD_growstack
	jmp	L612
L751:
	fldl	(%eax)
	fstpl	8(%esp)
	fldl	(%ecx)
	fstpl	(%esp)
	call	_pow
	jmp	L736
L571:
	subl	$1, 76(%esp)
	movl	%ecx, %esi
	movl	%eax, 8(%ecx)
	jne	L621
	jmp	L558
	.p2align 4,,10
L632:
	movl	40(%esp), %ebx
	movl	$1, %eax
	jmp	L544
L804:
	movl	%ebx, %eax
	movl	40(%esp), %ebx
	cmpl	%eax, %ebp
	sete	%al
	movzbl	%al, %eax
	jmp	L544
L639:
	xorl	%eax, %eax
	jmp	L567
L767:
	call	_reallymarkobject
	jmp	L424
L551:
	movl	8(%edi), %ecx
	movl	8(%esi), %edx
	jmp	L740
L803:
	movl	(%eax), %ebp
	testl	%ebp, %ebp
	je	L519
	jmp	L521
	.p2align 4,,10
L643:
	xorl	%eax, %eax
	jmp	L594
	.p2align 4,,10
L623:
	movl	%edi, 24(%esp)
	jmp	L424
	.cfi_endproc
LFE101:
	.section	.text.unlikely,"x"
LCOLDE40:
	.text
LHOTE40:
	.section	.text.unlikely,"x"
LCOLDB41:
	.text
LHOTB41:
	.p2align 4,,15
	.def	_luaG_errormsg;	.scl	3;	.type	32;	.endef
_luaG_errormsg:
LFB188:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	116(%eax), %esi
	testl	%esi, %esi
	je	L808
	addl	32(%eax), %esi
	cmpl	$6, 8(%esi)
	je	L809
	movl	$5, %edx
	call	_luaD_throw
L809:
	movl	8(%ebx), %ecx
	movl	-16(%ecx), %eax
	movl	-12(%ecx), %edx
	movl	%eax, (%ecx)
	movl	-8(%ecx), %eax
	movl	%edx, 4(%ecx)
	movl	%eax, 8(%ecx)
	movl	(%esi), %eax
	movl	4(%esi), %edx
	movl	%eax, -16(%ecx)
	movl	%edx, -12(%ecx)
	movl	8(%esi), %eax
	movl	%eax, -8(%ecx)
	movl	28(%ebx), %eax
	subl	%ecx, %eax
	cmpl	$16, %eax
	jle	L815
L810:
	leal	16(%ecx), %eax
	leal	-16(%ecx), %edx
	movl	$1, %ecx
	movl	%eax, 8(%ebx)
	movl	%ebx, %eax
	call	_luaD_call
L808:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%ebx, %eax
	movl	$2, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_luaD_throw
	.p2align 4,,10
L815:
	.cfi_restore_state
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaD_growstack
	movl	8(%ebx), %ecx
	jmp	L810
	.cfi_endproc
LFE188:
	.section	.text.unlikely,"x"
LCOLDE41:
	.text
LHOTE41:
	.section .rdata,"dr"
LC42:
	.ascii "%s:%d: %s\0"
	.section	.text.unlikely,"x"
LCOLDB43:
	.text
LHOTB43:
	.p2align 4,,15
	.def	_luaG_runerror;	.scl	3;	.type	32;	.endef
_luaG_runerror:
LFB189:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$108, %esp
	.cfi_def_cfa_offset 128
	movl	128(%esp), %ebx
	movl	132(%esp), %edx
	leal	136(%esp), %ecx
	movl	%ebx, %eax
	call	_luaO_pushvfstring
	movl	20(%ebx), %edx
	movl	%eax, %esi
	movl	4(%edx), %eax
	cmpl	$6, 8(%eax)
	je	L825
L817:
	movl	%ebx, %eax
	call	_luaG_errormsg
	addl	$108, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L825:
	.cfi_restore_state
	movl	(%eax), %eax
	cmpb	$0, 6(%eax)
	jne	L817
	movl	24(%ebx), %edi
	movl	%edi, 12(%edx)
	movl	16(%eax), %ecx
	subl	12(%ecx), %edi
	sarl	$2, %edi
	subl	$1, %edi
	js	L821
	movl	20(%ecx), %edx
	testl	%edx, %edx
	je	L822
	movl	(%edx,%edi,4), %edi
L818:
	cmpb	$0, 6(%eax)
	jne	L820
	movl	32(%ecx), %edx
	leal	36(%esp), %ebp
	movl	$60, %ecx
	movl	%ebp, %eax
	addl	$16, %edx
	call	_luaO_chunkid
	movl	%esi, 16(%esp)
	movl	%edi, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	%ebx, (%esp)
	movl	$LC42, 4(%esp)
	call	_luaO_pushfstring
	movl	%ebx, %eax
	call	_luaG_errormsg
	addl	$108, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L820:
	.cfi_restore_state
	movl	32, %eax
	ud2
	.p2align 4,,10
L822:
	xorl	%edi, %edi
	jmp	L818
L821:
	orl	$-1, %edi
	jmp	L818
	.cfi_endproc
LFE189:
	.section	.text.unlikely,"x"
LCOLDE43:
	.text
LHOTE43:
	.section .rdata,"dr"
	.align 4
LC44:
	.ascii "memory allocation error: block too big\0"
	.section	.text.unlikely,"x"
LCOLDB45:
	.text
LHOTB45:
	.p2align 4,,15
	.def	_luaD_reallocCI;	.scl	3;	.type	32;	.endef
_luaD_reallocCI:
LFB94:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%edx, %esi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	40(%eax), %ebp
	leal	1(%edx), %eax
	cmpl	$178956970, %eax
	jbe	L830
	leal	(%esi,%esi,2), %edi
	movl	$LC44, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaG_runerror
	sall	$3, %edi
	xorl	%eax, %eax
L828:
	movl	%eax, 40(%ebx)
	movl	%eax, %edx
	leal	-24(%eax,%edi), %eax
	movl	%esi, 48(%ebx)
	subl	%ebp, %edx
	addl	%edx, 20(%ebx)
	movl	%eax, 36(%ebx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L830:
	.cfi_restore_state
	movl	48(%ebx), %eax
	leal	(%edx,%edx,2), %edi
	movl	%ebp, %edx
	sall	$3, %edi
	leal	(%eax,%eax,2), %ecx
	movl	%edi, (%esp)
	movl	%ebx, %eax
	sall	$3, %ecx
	call	_luaM_realloc_
	jmp	L828
	.cfi_endproc
LFE94:
	.section	.text.unlikely,"x"
LCOLDE45:
	.text
LHOTE45:
	.section .rdata,"dr"
LC46:
	.ascii "not enough memory\0"
LC47:
	.ascii "error in error handling\0"
	.section	.text.unlikely,"x"
LCOLDB48:
	.text
LHOTB48:
	.p2align 4,,15
	.def	_luaD_throw;	.scl	3;	.type	32;	.endef
_luaD_throw:
LFB90:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	112(%eax), %eax
	testl	%eax, %eax
	je	L832
	movl	%edx, 68(%eax)
	addl	$4, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_longjmp
L832:
	movl	16(%ebx), %eax
	movb	%dl, 6(%ebx)
	cmpl	$0, 88(%eax)
	je	L833
	movl	40(%ebx), %eax
	movl	(%eax), %edx
	movl	%eax, 20(%ebx)
	movl	%ebx, %eax
	movl	%edx, 12(%ebx)
	call	_luaF_close
	cmpl	$4, %esi
	movl	12(%ebx), %edi
	je	L835
	jg	L836
	cmpl	$2, %esi
	jl	L834
	movl	8(%ebx), %ecx
	movl	-16(%ecx), %eax
	movl	-12(%ecx), %edx
	movl	%eax, (%edi)
	movl	%edx, 4(%edi)
	movl	-8(%ecx), %eax
	movl	%eax, 8(%edi)
L834:
	addl	$16, %edi
	movzwl	54(%ebx), %eax
	cmpl	$20000, 48(%ebx)
	movl	%edi, 8(%ebx)
	movb	$1, 57(%ebx)
	movw	%ax, 52(%ebx)
	jle	L839
	movl	20(%ebx), %eax
	subl	40(%ebx), %eax
	cmpl	$479975, %eax
	jg	L839
	movl	$20000, %edx
	movl	%ebx, %eax
	call	_luaD_reallocCI
L839:
	movl	16(%ebx), %eax
	movl	$0, 116(%ebx)
	movl	$0, 112(%ebx)
	movl	%ebx, (%esp)
	call	*88(%eax)
L833:
	movl	$1, (%esp)
	call	_exit
L835:
	movl	$17, %ecx
	movl	$LC46, %edx
	movl	%ebx, %eax
	call	_luaS_newlstr
	movl	$4, 8(%edi)
	movl	%eax, (%edi)
	jmp	L834
L836:
	cmpl	$5, %esi
	jne	L834
	movl	$23, %ecx
	movl	$LC47, %edx
	movl	%ebx, %eax
	call	_luaS_newlstr
	movl	$4, 8(%edi)
	movl	%eax, (%edi)
	jmp	L834
	.cfi_endproc
LFE90:
	.section	.text.unlikely,"x"
LCOLDE48:
	.text
LHOTE48:
	.section	.text.unlikely,"x"
LCOLDB49:
	.text
LHOTB49:
	.p2align 4,,15
	.def	_luaM_realloc_;	.scl	3;	.type	32;	.endef
_luaM_realloc_:
LFB64:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%ecx, %ebp
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	16(%eax), %esi
	movl	48(%esp), %ebx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ebx, 12(%esp)
	movl	16(%esi), %eax
	movl	%eax, (%esp)
	call	*12(%esi)
	testl	%eax, %eax
	jne	L843
	testl	%ebx, %ebx
	je	L843
	movl	$4, %edx
	movl	%edi, %eax
	call	_luaD_throw
	.p2align 4,,10
L843:
	addl	68(%esi), %ebx
	subl	%ebp, %ebx
	movl	%ebx, 68(%esi)
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE64:
	.section	.text.unlikely,"x"
LCOLDE49:
	.text
LHOTE49:
	.section	.text.unlikely,"x"
LCOLDB50:
	.text
LHOTB50:
	.p2align 4,,15
	.def	_luaM_realloc_.constprop.162;	.scl	3;	.type	32;	.endef
_luaM_realloc_.constprop.162:
LFB677:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%ecx, %esi
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	16(%eax), %ebx
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebx), %eax
	movl	%eax, (%esp)
	call	*12(%ebx)
	subl	%esi, 68(%ebx)
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE677:
	.section	.text.unlikely,"x"
LCOLDE50:
	.text
LHOTE50:
	.section	.text.unlikely,"x"
LCOLDB51:
	.text
LHOTB51:
	.p2align 4,,15
	.def	_luaS_resize;	.scl	3;	.type	32;	.endef
_luaS_resize:
LFB105:
	.cfi_startproc
	movl	16(%eax), %ecx
	cmpb	$2, 21(%ecx)
	je	L873
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	%eax, 28(%esp)
	leal	1(%edx), %eax
	movl	%edx, 24(%esp)
	cmpl	$1073741823, %eax
	jbe	L875
	movl	%ebx, (%esp)
	movl	$LC44, 4(%esp)
	xorl	%ebx, %ebx
	call	_luaG_runerror
L856:
	movl	28(%esp), %eax
	movl	16(%eax), %esi
	movl	24(%esp), %eax
	testl	%eax, %eax
	jle	L860
	movl	24(%esp), %eax
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_memset
L860:
	movl	8(%esi), %ecx
	testl	%ecx, %ecx
	jle	L876
	movl	24(%esp), %eax
	movl	(%esi), %edx
	xorl	%ebp, %ebp
	leal	-1(%eax), %edi
	.p2align 4,,10
L864:
	movl	(%edx,%ebp,4), %eax
	testl	%eax, %eax
	je	L862
	movl	%esi, 20(%esp)
	.p2align 4,,10
L863:
	movl	8(%eax), %edx
	movl	(%eax), %ecx
	andl	%edi, %edx
	testl	%ecx, %ecx
	leal	(%ebx,%edx,4), %edx
	movl	(%edx), %esi
	movl	%esi, (%eax)
	movl	%eax, (%edx)
	movl	%ecx, %eax
	jne	L863
	movl	20(%esp), %esi
	movl	(%esi), %edx
	movl	8(%esi), %ecx
L862:
	addl	$1, %ebp
	cmpl	%ecx, %ebp
	jl	L864
L861:
	movl	28(%esp), %eax
	sall	$2, %ecx
	call	_luaM_realloc_.constprop.162
	movl	24(%esp), %eax
	movl	%ebx, (%esi)
	movl	%eax, 8(%esi)
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
L873:
	rep ret
L875:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	0(,%edx,4), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_luaM_realloc_
	movl	%eax, %ebx
	jmp	L856
L876:
	movl	(%esi), %edx
	jmp	L861
	.cfi_endproc
LFE105:
	.section	.text.unlikely,"x"
LCOLDE51:
	.text
LHOTE51:
	.section	.text.unlikely,"x"
LCOLDB52:
	.text
LHOTB52:
	.p2align 4,,15
	.def	_luaS_newlstr;	.scl	3;	.type	32;	.endef
_luaS_newlstr:
LFB107:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	shrl	$5, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	addl	$1, %ebp
	movl	%edx, %edi
	movl	%ecx, %esi
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	cmpl	%ebp, %ecx
	movl	%eax, 20(%esp)
	jb	L885
	movl	%ecx, %ebx
	.p2align 4,,10
L879:
	movl	%ebx, %edx
	movl	%ebx, %eax
	shrl	$2, %eax
	sall	$5, %edx
	addl	%eax, %edx
	movzbl	-1(%edi,%ecx), %eax
	subl	%ebp, %ecx
	addl	%edx, %eax
	xorl	%eax, %ebx
	cmpl	%ecx, %ebp
	jbe	L879
	movl	20(%esp), %eax
L878:
	movl	16(%eax), %eax
	movl	%eax, %ecx
	movl	%eax, 28(%esp)
	movl	8(%eax), %eax
	movl	(%ecx), %edx
	movl	%eax, 24(%esp)
	subl	$1, %eax
	andl	%ebx, %eax
	movl	(%edx,%eax,4), %ebp
	testl	%ebp, %ebp
	jne	L883
	jmp	L880
	.p2align 4,,10
L881:
	movl	0(%ebp), %ebp
	testl	%ebp, %ebp
	je	L880
L883:
	cmpl	12(%ebp), %esi
	jne	L881
	leal	16(%ebp), %eax
	movl	%esi, 8(%esp)
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L881
	movl	28(%esp), %eax
	movzbl	5(%ebp), %ebx
	movzbl	20(%eax), %ecx
	movl	%ebp, %eax
	movl	%ebx, %esi
	andl	$3, %esi
	movl	%esi, %edx
	xorl	$3, %ecx
	testb	%dl, %cl
	je	L882
	xorl	$3, %ebx
	movb	%bl, 5(%ebp)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L880:
	.cfi_restore_state
	leal	1(%esi), %eax
	cmpl	$-19, %eax
	ja	L901
L884:
	leal	17(%esi), %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%eax, (%esp)
	movl	20(%esp), %eax
	call	_luaM_realloc_
	movl	%esi, 12(%eax)
	movl	%ebx, 8(%eax)
	movl	%eax, %ebp
	movl	20(%esp), %eax
	movl	16(%eax), %eax
	movzbl	20(%eax), %eax
	movb	$4, 4(%ebp)
	movb	$0, 6(%ebp)
	andl	$3, %eax
	movb	%al, 5(%ebp)
	leal	16(%ebp), %eax
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	20(%esp), %edi
	movb	$0, 16(%ebp,%esi)
	movl	16(%edi), %eax
	movl	8(%eax), %esi
	leal	-1(%esi), %edx
	andl	%edx, %ebx
	movl	(%eax), %edx
	movl	(%edx,%ebx,4), %edx
	movl	%edx, 0(%ebp)
	movl	(%eax), %edx
	movl	4(%eax), %esi
	movl	%ebp, (%edx,%ebx,4)
	leal	1(%esi), %edx
	movl	%edx, 4(%eax)
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jbe	L887
	cmpl	$1073741822, %eax
	jg	L887
	leal	(%eax,%eax), %edx
	movl	%edi, %eax
	call	_luaS_resize
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebp, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L887:
	.cfi_restore_state
	movl	%ebp, %eax
L882:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L901:
	.cfi_restore_state
	movl	20(%esp), %eax
	movl	$LC44, 4(%esp)
	movl	%eax, (%esp)
	call	_luaG_runerror
	jmp	L884
L885:
	movl	%ecx, %ebx
	jmp	L878
	.cfi_endproc
LFE107:
	.section	.text.unlikely,"x"
LCOLDE52:
	.text
LHOTE52:
	.section	.text.unlikely,"x"
LCOLDB53:
	.text
LHOTB53:
	.p2align 4,,15
	.def	_luaD_seterrorobj;	.scl	3;	.type	32;	.endef
_luaD_seterrorobj:
LFB87:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %esi
	movl	%ecx, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	cmpl	$4, %edx
	je	L904
	jg	L905
	cmpl	$2, %edx
	jl	L903
	movl	8(%eax), %ecx
	movl	-16(%ecx), %eax
	movl	-12(%ecx), %edx
	movl	%eax, (%ebx)
	movl	%edx, 4(%ebx)
	movl	-8(%ecx), %eax
	movl	%eax, 8(%ebx)
L903:
	addl	$16, %ebx
	movl	%ebx, 8(%esi)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L905:
	.cfi_restore_state
	cmpl	$5, %edx
	jne	L903
	movl	$23, %ecx
	movl	$LC47, %edx
	addl	$16, %ebx
	call	_luaS_newlstr
	movl	$4, -8(%ebx)
	movl	%eax, -16(%ebx)
	movl	%ebx, 8(%esi)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L904:
	.cfi_restore_state
	movl	$17, %ecx
	movl	$LC46, %edx
	addl	$16, %ebx
	call	_luaS_newlstr
	movl	$4, -8(%ebx)
	movl	%eax, -16(%ebx)
	movl	%ebx, 8(%esi)
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE87:
	.section	.text.unlikely,"x"
LCOLDE53:
	.text
LHOTE53:
	.section .rdata,"dr"
LC54:
	.ascii "%.14g\0"
	.section	.text.unlikely,"x"
LCOLDB55:
	.text
LHOTB55:
	.p2align 4,,15
	.def	_luaV_tostring.part.52;	.scl	3;	.type	32;	.endef
_luaV_tostring.part.52:
LFB616:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edx, %ebx
	subl	$48, %esp
	.cfi_def_cfa_offset 64
	fldl	(%edx)
	leal	16(%esp), %edi
	movl	$LC54, 4(%esp)
	fstpl	8(%esp)
	movl	%edi, (%esp)
	call	_sprintf
	movl	%edi, %ecx
L911:
	movl	(%ecx), %edx
	addl	$4, %ecx
	leal	-16843009(%edx), %eax
	notl	%edx
	andl	%edx, %eax
	andl	$-2139062144, %eax
	je	L911
	movl	%eax, %edx
	shrl	$16, %edx
	testl	$32896, %eax
	cmove	%edx, %eax
	leal	2(%ecx), %edx
	cmove	%edx, %ecx
	movl	%eax, %edx
	addb	%al, %dl
	movl	%edi, %edx
	movl	%esi, %eax
	sbbl	$3, %ecx
	subl	%edi, %ecx
	call	_luaS_newlstr
	movl	$4, 8(%ebx)
	movl	%eax, (%ebx)
	addl	$48, %esp
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE616:
	.section	.text.unlikely,"x"
LCOLDE55:
	.text
LHOTE55:
	.section	.text.unlikely,"x"
LCOLDB56:
	.text
LHOTB56:
	.p2align 4,,15
	.def	_lua_objlen;	.scl	3;	.type	32;	.endef
_lua_objlen:
LFB373:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %esi
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	call	_index2adr
	movl	%eax, %ebx
	movl	8(%eax), %eax
	cmpl	$4, %eax
	je	L926
	jle	L927
	cmpl	$5, %eax
	je	L921
	cmpl	$7, %eax
	jne	L924
	movl	(%ebx), %eax
	movl	16(%eax), %eax
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L921:
	.cfi_restore_state
	movl	(%ebx), %eax
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_luaH_getn
	.p2align 4,,10
L927:
	.cfi_restore_state
	cmpl	$3, %eax
	jne	L924
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_luaV_tostring.part.52
	testl	%eax, %eax
	je	L924
L926:
	movl	(%ebx), %eax
	movl	12(%eax), %eax
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L924:
	.cfi_restore_state
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE373:
	.section	.text.unlikely,"x"
LCOLDE56:
	.text
LHOTE56:
	.section	.text.unlikely,"x"
LCOLDB57:
	.text
LHOTB57:
	.p2align 4,,15
	.def	_luaF_close;	.scl	3;	.type	32;	.endef
_luaF_close:
LFB83:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %esi
	movl	%eax, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	16(%eax), %edi
	.p2align 4,,10
L929:
	movl	104(%ebx), %ebp
	testl	%ebp, %ebp
	je	L928
L946:
	movl	8(%ebp), %ecx
	cmpl	%esi, %ecx
	jb	L928
	movl	0(%ebp), %eax
	movl	%eax, 104(%ebx)
	movzbl	20(%edi), %eax
	xorl	$3, %eax
	andb	5(%ebp), %al
	testb	$3, %al
	je	L930
	leal	16(%ebp), %eax
	cmpl	%eax, %ecx
	je	L931
	movl	16(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	16(%ebp), %edx
	movl	%eax, 20(%edx)
L931:
	movl	%ebp, %edx
	movl	$32, %ecx
	movl	%ebx, %eax
	call	_luaM_realloc_.constprop.162
	movl	104(%ebx), %ebp
	testl	%ebp, %ebp
	jne	L946
L928:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L930:
	.cfi_restore_state
	movl	20(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	16(%ebp), %edx
	movl	%eax, 20(%edx)
	movl	4(%ecx), %edx
	movl	(%ecx), %eax
	movl	%edx, 20(%ebp)
	movl	16(%ebx), %edx
	movl	%eax, 16(%ebp)
	leal	16(%ebp), %eax
	movl	8(%ecx), %ecx
	movl	%eax, 8(%ebp)
	movl	28(%edx), %eax
	movl	%ecx, 24(%ebp)
	movl	%eax, 0(%ebp)
	movl	%ebp, 28(%edx)
	movzbl	5(%ebp), %eax
	testb	$7, %al
	jne	L929
	cmpb	$1, 21(%edx)
	je	L947
	movzbl	20(%edx), %edx
	andl	$-8, %eax
	andl	$3, %edx
	orl	%edx, %eax
	movb	%al, 5(%ebp)
	jmp	L929
	.p2align 4,,10
L947:
	orl	$4, %eax
	cmpl	$3, %ecx
	movb	%al, 5(%ebp)
	jle	L929
	movl	16(%ebp), %edx
	testb	$3, 5(%edx)
	je	L929
	movl	16(%ebx), %ecx
	cmpb	$1, 21(%ecx)
	je	L948
	movzbl	20(%ecx), %edx
	andl	$-8, %eax
	andl	$3, %edx
	orl	%edx, %eax
	movb	%al, 5(%ebp)
	jmp	L929
L948:
	movl	%ecx, %eax
	call	_reallymarkobject
	jmp	L929
	.cfi_endproc
LFE83:
	.section	.text.unlikely,"x"
LCOLDE57:
	.text
LHOTE57:
	.section	.text.unlikely,"x"
LCOLDB58:
	.text
LHOTB58:
	.p2align 4,,15
	.def	_freeobj;	.scl	3;	.type	32;	.endef
_freeobj:
LFB148:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movzbl	4(%edx), %esi
	leal	-4(%esi), %ecx
	cmpb	$6, %cl
	ja	L949
	movzbl	%cl, %ecx
	movl	%edx, %ebx
	movl	%eax, %esi
	jmp	*L952(,%ecx,4)
	.section .rdata,"dr"
	.align 4
L952:
	.long	L951
	.long	L953
	.long	L954
	.long	L955
	.long	L956
	.long	L957
	.long	L958
	.text
	.p2align 4,,10
L957:
	movl	44(%edx), %eax
	movl	12(%edx), %edx
	leal	0(,%eax,4), %ecx
	movl	%esi, %eax
	call	_luaM_realloc_.constprop.162
	movl	52(%ebx), %eax
	movl	16(%ebx), %edx
	leal	0(,%eax,4), %ecx
	movl	%esi, %eax
	call	_luaM_realloc_.constprop.162
	movl	40(%ebx), %ecx
	movl	8(%ebx), %edx
	movl	%esi, %eax
	sall	$4, %ecx
	call	_luaM_realloc_.constprop.162
	movl	48(%ebx), %eax
	movl	20(%ebx), %edx
	leal	0(,%eax,4), %ecx
	movl	%esi, %eax
	call	_luaM_realloc_.constprop.162
	movl	56(%ebx), %eax
	movl	24(%ebx), %edx
	leal	(%eax,%eax,2), %ecx
	movl	%esi, %eax
	sall	$2, %ecx
	call	_luaM_realloc_.constprop.162
	movl	36(%ebx), %eax
	movl	28(%ebx), %edx
	leal	0(,%eax,4), %ecx
	movl	%esi, %eax
	call	_luaM_realloc_.constprop.162
	movl	$76, %ecx
L967:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%ebx, %edx
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_luaM_realloc_.constprop.162
	.p2align 4,,10
L958:
	.cfi_restore_state
	leal	16(%edx), %eax
	cmpl	%eax, 8(%edx)
	je	L968
	movl	20(%edx), %eax
	movl	16(%edx), %edx
	movl	%edx, 16(%eax)
	movl	16(%ebx), %edx
	movl	%eax, 20(%edx)
L968:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%ebx, %edx
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	movl	$32, %ecx
	jmp	_luaM_realloc_.constprop.162
	.p2align 4,,10
L951:
	.cfi_restore_state
	movl	16(%eax), %eax
	subl	$1, 4(%eax)
	movl	12(%edx), %eax
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%ebx, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	leal	17(%eax), %ecx
	movl	%esi, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_luaM_realloc_.constprop.162
	.p2align 4,,10
L953:
	.cfi_restore_state
	movl	16(%edx), %edx
	cmpl	$_dummynode_, %edx
	je	L962
	movzbl	7(%ebx), %ecx
	movl	$32, %eax
	sall	%cl, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	call	_luaM_realloc_.constprop.162
L962:
	movl	28(%ebx), %ecx
	movl	12(%ebx), %edx
	movl	%esi, %eax
	sall	$4, %ecx
	call	_luaM_realloc_.constprop.162
	jmp	L968
	.p2align 4,,10
L954:
	cmpb	$0, 6(%edx)
	movzbl	7(%edx), %eax
	jne	L969
	leal	20(,%eax,4), %ecx
	jmp	L967
	.p2align 4,,10
L955:
	movl	16(%edx), %eax
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%ebx, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	leal	24(%eax), %ecx
	movl	%esi, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_luaM_realloc_.constprop.162
	.p2align 4,,10
L956:
	.cfi_restore_state
	movl	32(%edx), %edx
	movl	%ebx, %eax
	call	_luaF_close
	movl	48(%ebx), %eax
	movl	40(%ebx), %edx
	leal	(%eax,%eax,2), %ecx
	movl	%esi, %eax
	sall	$3, %ecx
	call	_luaM_realloc_.constprop.162
	movl	44(%ebx), %ecx
	movl	32(%ebx), %edx
	movl	%esi, %eax
	sall	$4, %ecx
	call	_luaM_realloc_.constprop.162
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%ebx, %edx
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	movl	$120, %ecx
	jmp	_luaM_realloc_.constprop.162
	.p2align 4,,10
L949:
	.cfi_restore_state
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L969:
	.cfi_restore_state
	sall	$4, %eax
	leal	24(%eax), %ecx
	jmp	L967
	.cfi_endproc
LFE148:
	.section	.text.unlikely,"x"
LCOLDE58:
	.text
LHOTE58:
	.section	.text.unlikely,"x"
LCOLDB59:
	.text
LHOTB59:
	.p2align 4,,15
	.def	_sweeplist.constprop.163;	.scl	3;	.type	32;	.endef
_sweeplist.constprop.163:
LFB676:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	$-2, %esi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	16(%eax), %ebp
	movl	%eax, 12(%esp)
	movzbl	20(%ebp), %eax
	xorl	$3, %eax
	movb	%al, 11(%esp)
	.p2align 4,,10
L971:
	movl	(%edi), %ebx
	testl	%ebx, %ebx
	je	L979
L982:
	subl	$1, %esi
	je	L979
	cmpb	$8, 4(%ebx)
	je	L981
L972:
	movzbl	5(%ebx), %eax
	movl	%eax, %edx
	xorl	$3, %edx
	testb	%dl, 11(%esp)
	je	L973
	movzbl	20(%ebp), %edx
	andl	$-8, %eax
	movl	%ebx, %edi
	andl	$3, %edx
	orl	%edx, %eax
	movb	%al, 5(%ebx)
	movl	(%edi), %ebx
	testl	%ebx, %ebx
	jne	L982
L979:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L973:
	.cfi_restore_state
	movl	(%ebx), %eax
	movl	%eax, (%edi)
	cmpl	28(%ebp), %ebx
	je	L983
L975:
	movl	12(%esp), %eax
	movl	%ebx, %edx
	call	_freeobj
	jmp	L971
	.p2align 4,,10
L981:
	movl	12(%esp), %eax
	leal	104(%ebx), %edx
	call	_sweeplist.constprop.163
	jmp	L972
	.p2align 4,,10
L983:
	movl	(%ebx), %eax
	movl	%eax, 28(%ebp)
	jmp	L975
	.cfi_endproc
LFE676:
	.section	.text.unlikely,"x"
LCOLDE59:
	.text
LHOTE59:
	.section	.text.unlikely,"x"
LCOLDB60:
	.text
LHOTB60:
	.p2align 4,,15
	.def	_close_state;	.scl	3;	.type	32;	.endef
_close_state:
LFB168:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	xorl	%ebx, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	32(%eax), %edx
	movl	16(%eax), %ebp
	call	_luaF_close
	movl	16(%esi), %edi
	movl	%esi, %eax
	leal	28(%edi), %edx
	movb	$67, 20(%edi)
	call	_sweeplist.constprop.163
	movl	8(%edi), %eax
	testl	%eax, %eax
	jle	L987
	.p2align 4,,10
L988:
	movl	(%edi), %eax
	leal	(%eax,%ebx,4), %edx
	movl	%esi, %eax
	addl	$1, %ebx
	call	_sweeplist.constprop.163
	cmpl	8(%edi), %ebx
	jl	L988
L987:
	movl	16(%esi), %eax
	movl	8(%eax), %ecx
	movl	(%eax), %edx
	movl	%esi, %eax
	sall	$2, %ecx
	call	_luaM_realloc_.constprop.162
	movl	60(%ebp), %ecx
	movl	52(%ebp), %edx
	movl	%esi, %eax
	call	_luaM_realloc_.constprop.162
	movl	%eax, 52(%ebp)
	movl	48(%esi), %eax
	movl	40(%esi), %edx
	movl	$0, 60(%ebp)
	leal	(%eax,%eax,2), %ecx
	movl	%esi, %eax
	sall	$3, %ecx
	call	_luaM_realloc_.constprop.162
	movl	44(%esi), %ecx
	movl	32(%esi), %edx
	movl	%esi, %eax
	sall	$4, %ecx
	call	_luaM_realloc_.constprop.162
	movl	%esi, 4(%esp)
	movl	$0, 12(%esp)
	movl	$376, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	*12(%ebp)
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE168:
	.section	.text.unlikely,"x"
LCOLDE60:
	.text
LHOTE60:
	.section	.text.unlikely,"x"
LCOLDB61:
	.text
LHOTB61:
	.p2align 4,,15
	.def	_setarrayvector.isra.53;	.scl	3;	.type	32;	.endef
_setarrayvector.isra.53:
LFB617:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %edi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%ecx, %esi
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	leal	1(%ebx), %edx
	cmpl	$268435455, %edx
	ja	L994
	movl	%ebx, %edx
	movl	(%ecx), %ecx
	sall	$4, %edx
	movl	%edx, (%esp)
	movl	(%edi), %edx
	sall	$4, %ecx
	call	_luaM_realloc_
L995:
	movl	(%esi), %edx
	movl	%eax, (%edi)
	cmpl	%edx, %ebx
	jle	L998
	movl	%ebx, %ecx
	sall	$4, %edx
	sall	$4, %ecx
	addl	%eax, %edx
	addl	%ecx, %eax
	.p2align 4,,10
L997:
	movl	$0, 8(%edx)
	addl	$16, %edx
	cmpl	%eax, %edx
	jne	L997
L998:
	movl	%ebx, (%esi)
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L994:
	.cfi_restore_state
	movl	%eax, (%esp)
	movl	$LC44, 4(%esp)
	call	_luaG_runerror
	xorl	%eax, %eax
	jmp	L995
	.cfi_endproc
LFE617:
	.section	.text.unlikely,"x"
LCOLDE61:
	.text
LHOTE61:
	.section	.text.unlikely,"x"
LCOLDB62:
	.text
LHOTB62:
	.p2align 4,,15
	.def	_luaD_reallocstack;	.scl	3;	.type	32;	.endef
_luaD_reallocstack:
LFB93:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	leal	6(%edx), %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	movl	%edx, %edi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	32(%eax), %ebx
	leal	7(%edx), %eax
	cmpl	$268435455, %eax
	jbe	L1016
	movl	$LC44, 4(%esp)
	movl	%esi, (%esp)
	call	_luaG_runerror
	xorl	%eax, %eax
L1004:
	movl	%eax, %edx
	sall	$4, %edi
	movl	%eax, 32(%esi)
	subl	%ebx, %edx
	addl	%edx, 8(%esi)
	movl	104(%esi), %edx
	addl	%eax, %edi
	movl	%ebp, 44(%esi)
	movl	%edi, 28(%esi)
	testl	%edx, %edx
	je	L1005
	.p2align 4,,10
L1007:
	subl	%ebx, %eax
	addl	%eax, 8(%edx)
	movl	(%edx), %edx
	movl	32(%esi), %eax
	testl	%edx, %edx
	jne	L1007
L1005:
	movl	40(%esi), %edx
	movl	20(%esi), %edi
	cmpl	%edi, %edx
	ja	L1010
	.p2align 4,,10
L1012:
	movl	%eax, %ecx
	subl	%ebx, %ecx
	addl	%ecx, 8(%edx)
	movl	%eax, %ecx
	subl	%ebx, %ecx
	addl	%ecx, (%edx)
	movl	%eax, %ecx
	subl	%ebx, %ecx
	addl	%ecx, 4(%edx)
	addl	$24, %edx
	cmpl	%edi, %edx
	jbe	L1012
L1010:
	subl	%ebx, %eax
	addl	%eax, 12(%esi)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1016:
	.cfi_restore_state
	movl	44(%esi), %ecx
	movl	%ebp, %eax
	movl	%ebx, %edx
	sall	$4, %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	sall	$4, %ecx
	call	_luaM_realloc_
	jmp	L1004
	.cfi_endproc
LFE93:
	.section	.text.unlikely,"x"
LCOLDE62:
	.text
LHOTE62:
	.section	.text.unlikely,"x"
LCOLDB63:
	.text
LHOTB63:
	.p2align 4,,15
	.def	_propagatemark;	.scl	3;	.type	32;	.endef
_propagatemark:
LFB144:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	36(%eax), %ebx
	movzbl	4(%ebx), %eax
	orb	$4, 5(%ebx)
	cmpb	$6, %al
	je	L1019
	jbe	L1216
	cmpb	$8, %al
	je	L1022
	cmpb	$9, %al
	jne	L1101
	movl	68(%ebx), %eax
	movl	%eax, 36(%ebp)
	movl	32(%ebx), %eax
	testl	%eax, %eax
	je	L1082
	andb	$-4, 5(%eax)
L1082:
	movl	40(%ebx), %ecx
	xorl	%esi, %esi
	testl	%ecx, %ecx
	jg	L1161
	.p2align 4,,10
L1088:
	movl	36(%ebx), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	L1085
	.p2align 4,,10
L1160:
	movl	28(%ebx), %edx
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	L1091
	andb	$-4, 5(%edx)
	movl	36(%ebx), %ecx
L1091:
	addl	$1, %eax
	cmpl	%ecx, %eax
	jl	L1160
L1085:
	movl	52(%ebx), %edi
	xorl	%esi, %esi
	testl	%edi, %edi
	jg	L1159
	.p2align 4,,10
L1090:
	movl	56(%ebx), %ecx
	testl	%ecx, %ecx
	jle	L1095
	xorl	%edx, %edx
	.p2align 4,,10
L1097:
	movl	24(%ebx), %esi
	leal	(%edx,%edx,2), %eax
	leal	(%esi,%eax,4), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1096
	andb	$-4, 5(%eax)
	movl	56(%ebx), %ecx
L1096:
	addl	$1, %edx
	cmpl	%ecx, %edx
	jl	L1097
	movl	52(%ebx), %edi
L1095:
	movl	48(%ebx), %eax
	addl	44(%ebx), %eax
	movl	36(%ebx), %edx
	leal	19(%eax,%edx), %eax
	movl	40(%ebx), %edx
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	leal	(%eax,%edx,4), %eax
	addl	%eax, %edi
	leal	(%ecx,%ecx,2), %eax
	addl	%eax, %edi
	leal	0(,%edi,4), %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1022:
	.cfi_restore_state
	movl	108(%ebx), %eax
	movl	%eax, 36(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, 108(%ebx)
	movl	%ebx, 40(%ebp)
	andb	$-5, 5(%ebx)
	cmpl	$3, 80(%ebx)
	jle	L1069
	movl	72(%ebx), %edx
	testb	$3, 5(%edx)
	jne	L1217
L1069:
	movl	40(%ebx), %eax
	movl	20(%ebx), %ecx
	movl	8(%ebx), %edx
	cmpl	%ecx, %eax
	movl	%eax, 24(%esp)
	movl	%edx, %edi
	ja	L1070
	.p2align 4,,10
L1071:
	movl	8(%eax), %esi
	cmpl	%esi, %edi
	cmovb	%esi, %edi
	addl	$24, %eax
	cmpl	%ecx, %eax
	jbe	L1071
L1070:
	movl	32(%ebx), %esi
	cmpl	%esi, %edx
	jbe	L1106
	movl	%edx, %eax
	jmp	L1074
	.p2align 4,,10
L1073:
	addl	$16, %esi
	cmpl	%eax, %esi
	jnb	L1218
L1074:
	cmpl	$3, 8(%esi)
	jle	L1073
	movl	(%esi), %edx
	testb	$3, 5(%edx)
	je	L1073
	movl	%ebp, %eax
	addl	$16, %esi
	call	_reallymarkobject
	movl	8(%ebx), %eax
	cmpl	%eax, %esi
	jb	L1074
	.p2align 4,,10
L1218:
	movl	20(%ebx), %ecx
	movl	40(%ebx), %eax
	movl	32(%ebx), %ebp
	jmp	L1209
	.p2align 4,,10
L1158:
	movl	$0, 8(%esi)
	addl	$16, %esi
L1209:
	cmpl	%edi, %esi
	jbe	L1158
	movl	48(%ebx), %esi
	cmpl	$20000, %esi
	jg	L1219
	subl	%eax, %ecx
	sarl	$3, %ecx
	imull	$-1431655765, %ecx, %eax
	sall	$2, %eax
	cmpl	%eax, %esi
	jle	L1081
	cmpl	$16, %esi
	jg	L1220
L1081:
	subl	%ebp, %edi
	movl	44(%ebx), %edx
	sarl	$4, %edi
	leal	0(,%edi,4), %eax
	cmpl	%edx, %eax
	jge	L1210
	cmpl	$90, %edx
	jle	L1210
	sarl	%edx
	movl	%ebx, %eax
	call	_luaD_reallocstack
	movl	44(%ebx), %edx
L1210:
	movl	48(%ebx), %esi
L1080:
	leal	(%esi,%esi,2), %eax
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	sall	$4, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	leal	120(%edx,%eax,8), %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1221:
	.cfi_restore_state
	movl	%ebp, %eax
	call	_reallymarkobject
	movl	40(%ebx), %ecx
	.p2align 4,,10
L1086:
	addl	$1, %esi
	cmpl	%ecx, %esi
	jge	L1088
L1161:
	movl	%esi, %eax
	sall	$4, %eax
	addl	8(%ebx), %eax
	cmpl	$3, 8(%eax)
	jle	L1086
	movl	(%eax), %edx
	testb	$3, 5(%edx)
	je	L1086
	jmp	L1221
	.p2align 4,,10
L1222:
	movl	%ebp, %eax
	call	_reallymarkobject
	movl	52(%ebx), %edi
L1093:
	addl	$1, %esi
	cmpl	%edi, %esi
	jge	L1090
L1159:
	movl	16(%ebx), %eax
	movl	(%eax,%esi,4), %edx
	testl	%edx, %edx
	je	L1093
	testb	$3, 5(%edx)
	je	L1093
	jmp	L1222
	.p2align 4,,10
L1216:
	cmpb	$5, %al
	jne	L1101
	movl	24(%ebx), %eax
	movl	%eax, 36(%ebp)
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L1102
	testb	$3, 5(%eax)
	jne	L1223
L1025:
	testb	$8, 6(%eax)
	je	L1224
L1102:
	movl	$0, 24(%esp)
L1024:
	movl	28(%ebx), %eax
	leal	-1(%eax), %esi
	movl	%esi, %edi
	sall	$4, %edi
	jmp	L1034
	.p2align 4,,10
L1226:
	movl	%ebp, %eax
	call	_reallymarkobject
	.p2align 4,,10
L1035:
	subl	$1, %esi
	subl	$16, %edi
L1034:
	cmpl	$-1, %esi
	je	L1225
	movl	12(%ebx), %eax
	addl	%edi, %eax
	cmpl	$3, 8(%eax)
	jle	L1035
	movl	(%eax), %edx
	testb	$3, 5(%edx)
	je	L1035
	jmp	L1226
	.p2align 4,,10
L1101:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1019:
	.cfi_restore_state
	movl	8(%ebx), %eax
	movl	%eax, 36(%ebp)
	movl	12(%ebx), %edx
	testb	$3, 5(%edx)
	jne	L1227
L1059:
	cmpb	$0, 6(%ebx)
	je	L1060
	movzbl	7(%ebx), %ecx
	testb	%cl, %cl
	je	L1103
	leal	32(%ebx), %esi
	xorl	%edi, %edi
	jmp	L1063
	.p2align 4,,10
L1062:
	addl	$1, %edi
	movzbl	%cl, %eax
	addl	$16, %esi
	cmpl	%eax, %edi
	jge	L1064
L1063:
	cmpl	$3, (%esi)
	jle	L1062
	movl	-8(%esi), %edx
	testb	$3, 5(%edx)
	je	L1062
	movl	%ebp, %eax
	call	_reallymarkobject
	movzbl	7(%ebx), %ecx
	jmp	L1062
	.p2align 4,,10
L1060:
	movl	16(%ebx), %edx
	testb	$3, 5(%edx)
	jne	L1228
	xorl	%eax, %eax
	cmpb	$0, 7(%ebx)
	je	L1068
L1098:
	xorl	%esi, %esi
	jmp	L1067
	.p2align 4,,10
L1066:
	movzbl	7(%ebx), %eax
	addl	$1, %esi
	cmpl	%eax, %esi
	jge	L1064
L1067:
	movl	20(%ebx,%esi,4), %edx
	testb	$3, 5(%edx)
	je	L1066
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L1066
	.p2align 4,,10
L1227:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L1059
	.p2align 4,,10
L1068:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	leal	20(,%eax,4), %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1228:
	.cfi_restore_state
	movl	%ebp, %eax
	call	_reallymarkobject
	cmpb	$0, 7(%ebx)
	jne	L1098
	xorl	%eax, %eax
	.p2align 4,,10
L1064:
	cmpb	$0, 6(%ebx)
	je	L1068
L1061:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	sall	$4, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	addl	$24, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1219:
	.cfi_restore_state
	movl	44(%ebx), %edx
	jmp	L1080
	.p2align 4,,10
L1225:
	movzbl	7(%ebx), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, %edi
	movl	24(%esp), %eax
	testl	%eax, %eax
	jne	L1229
	movl	%edi, %eax
	leal	-1(%edi), %edi
	xorl	%ecx, %ecx
	movl	%ebp, 24(%esp)
	movl	%ecx, %ebp
	movl	%ebx, %ecx
	sall	$5, %edi
	movl	%eax, %ebx
	jmp	L1038
	.p2align 4,,10
L1052:
	cmpl	$3, 24(%esi)
	jle	L1055
	movl	16(%esi), %edx
	testb	$3, 5(%edx)
	jne	L1230
L1055:
	cmpl	$3, 8(%esi)
	jle	L1054
	movl	(%esi), %edx
	testb	$3, 5(%edx)
	jne	L1231
	.p2align 4,,10
L1054:
	addl	$1, %ebp
	subl	$32, %edi
L1038:
	cmpl	%ebp, %ebx
	je	L1232
	movl	16(%ecx), %esi
	addl	%edi, %esi
	movl	8(%esi), %eax
	testl	%eax, %eax
	jne	L1052
	cmpl	$3, 24(%esi)
	jle	L1054
	movl	$11, 24(%esi)
	jmp	L1054
	.p2align 4,,10
L1224:
	movl	200(%ebp), %ecx
	movl	$3, %edx
	call	_luaT_gettm
	testl	%eax, %eax
	je	L1102
	cmpl	$4, 8(%eax)
	jne	L1102
	movl	(%eax), %edx
	movl	$107, 4(%esp)
	leal	16(%edx), %esi
	movl	%esi, (%esp)
	call	_strchr
	testl	%eax, %eax
	movl	$118, 4(%esp)
	movl	%esi, (%esp)
	setne	28(%esp)
	movzbl	28(%esp), %ecx
	movl	%eax, %edi
	movl	%ecx, 24(%esp)
	call	_strchr
	testl	%eax, %eax
	movl	%eax, %ecx
	setne	%dl
	cmpb	$0, 28(%esp)
	movzbl	%dl, %eax
	jne	L1028
	testb	%dl, %dl
	jne	L1028
L1030:
	testl	%ecx, %ecx
	je	L1024
	movzbl	7(%ebx), %ecx
	movl	$1, %esi
	sall	%cl, %esi
	testl	%edi, %edi
	movl	%esi, %eax
	je	L1032
	leal	-1(%esi), %edx
	sall	$5, %edx
	jmp	L1045
	.p2align 4,,10
L1233:
	movl	16(%ebx), %ecx
	addl	%edx, %ecx
	movl	8(%ecx), %esi
	testl	%esi, %esi
	jne	L1044
	cmpl	$3, 24(%ecx)
	jle	L1044
	movl	$11, 24(%ecx)
L1044:
	subl	$32, %edx
L1045:
	subl	$1, %eax
	cmpl	$-1, %eax
	jne	L1233
L1058:
	andb	$-5, 5(%ebx)
L1031:
	movl	28(%ebx), %eax
	movzbl	7(%ebx), %ecx
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	addl	$2, %eax
	sall	$4, %eax
	movl	%eax, %edi
	movl	$32, %eax
	sall	%cl, %eax
	addl	%edi, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1220:
	.cfi_restore_state
	movl	%esi, %edx
	movl	%ebx, %eax
	sarl	%edx
	call	_luaD_reallocCI
	jmp	L1081
	.p2align 4,,10
L1229:
	leal	-1(%edi), %esi
	movl	%edi, %eax
	movl	%ebp, %ecx
	xorl	%edi, %edi
	movl	%eax, %ebp
	sall	$5, %esi
	jmp	L1042
	.p2align 4,,10
L1235:
	cmpl	$3, %edx
	jle	L1041
	movl	(%eax), %edx
	testb	$3, 5(%edx)
	jne	L1234
	.p2align 4,,10
L1041:
	addl	$1, %edi
	subl	$32, %esi
L1042:
	cmpl	%edi, %ebp
	je	L1039
	movl	16(%ebx), %eax
	addl	%esi, %eax
	movl	8(%eax), %edx
	testl	%edx, %edx
	jne	L1235
	cmpl	$3, 24(%eax)
	jle	L1041
	movl	$11, 24(%eax)
	jmp	L1041
	.p2align 4,,10
L1217:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L1069
L1106:
	movl	%esi, %ebp
	movl	24(%esp), %eax
	jmp	L1209
	.p2align 4,,10
L1039:
	movl	24(%esp), %edi
	testl	%edi, %edi
	je	L1031
	jmp	L1058
	.p2align 4,,10
L1223:
	movl	%eax, %edx
	movl	%ebp, %eax
	call	_reallymarkobject
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jne	L1025
	jmp	L1102
	.p2align 4,,10
L1032:
	leal	-1(%esi), %edi
	xorl	%ecx, %ecx
	sall	$5, %edi
	jmp	L1051
	.p2align 4,,10
L1237:
	cmpl	$3, 24(%eax)
	jle	L1050
	movl	16(%eax), %edx
	testb	$3, 5(%edx)
	jne	L1236
	.p2align 4,,10
L1050:
	addl	$1, %ecx
	subl	$32, %edi
L1051:
	cmpl	%ecx, %esi
	je	L1058
	movl	16(%ebx), %eax
	addl	%edi, %eax
	movl	8(%eax), %edx
	testl	%edx, %edx
	jne	L1237
	cmpl	$3, 24(%eax)
	jle	L1050
	movl	$11, 24(%eax)
	jmp	L1050
	.p2align 4,,10
L1232:
	movl	%ecx, %ebx
	jmp	L1031
	.p2align 4,,10
L1028:
	movl	24(%esp), %esi
	sall	$4, %eax
	sall	$3, %esi
	orl	%esi, %eax
	movzbl	5(%ebx), %esi
	andl	$-25, %esi
	orl	%esi, %eax
	testb	%dl, 28(%esp)
	movb	%al, 5(%ebx)
	movl	44(%ebp), %eax
	movl	%eax, 24(%ebx)
	movl	%ebx, 44(%ebp)
	jne	L1058
	jmp	L1030
L1234:
	movl	%ecx, %eax
	movl	%ecx, 28(%esp)
	call	_reallymarkobject
	movl	28(%esp), %ecx
	jmp	L1041
L1230:
	movl	24(%esp), %eax
	movl	%ecx, 28(%esp)
	call	_reallymarkobject
	movl	28(%esp), %ecx
	jmp	L1055
L1231:
	movl	24(%esp), %eax
	movl	%ecx, 28(%esp)
	call	_reallymarkobject
	movl	28(%esp), %ecx
	jmp	L1054
L1236:
	movl	%ebp, %eax
	movl	%ecx, 24(%esp)
	call	_reallymarkobject
	movl	24(%esp), %ecx
	jmp	L1050
L1103:
	xorl	%eax, %eax
	jmp	L1061
	.cfi_endproc
LFE144:
	.section	.text.unlikely,"x"
LCOLDE63:
	.text
LHOTE63:
	.section	.text.unlikely,"x"
LCOLDB64:
	.text
LHOTB64:
	.p2align 4,,15
	.def	_luaD_growstack;	.scl	3;	.type	32;	.endef
_luaD_growstack:
LFB95:
	.cfi_startproc
	movl	44(%eax), %ecx
	cmpl	%edx, %ecx
	jge	L1240
	addl	%ecx, %edx
	jmp	_luaD_reallocstack
	.p2align 4,,10
L1240:
	leal	(%ecx,%ecx), %edx
	jmp	_luaD_reallocstack
	.cfi_endproc
LFE95:
	.section	.text.unlikely,"x"
LCOLDE64:
	.text
LHOTE64:
	.section	.text.unlikely,"x"
LCOLDB65:
	.text
LHOTB65:
	.p2align 4,,15
	.def	_callTMres.isra.49;	.scl	3;	.type	32;	.endef
_callTMres.isra.49:
LFB613:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %esi
	movl	%eax, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	8(%eax), %edx
	movl	4(%ecx), %ebp
	subl	32(%eax), %esi
	movl	(%ecx), %edi
	movl	%ebp, 4(%edx)
	movl	8(%ecx), %eax
	movl	%edi, (%edx)
	movl	%eax, 8(%edx)
	movl	32(%esp), %eax
	movl	(%eax), %edi
	movl	4(%eax), %ebp
	movl	36(%esp), %eax
	movl	%edi, 16(%edx)
	movl	%ebp, 20(%edx)
	movl	(%eax), %eax
	movl	%eax, 24(%edx)
	movl	40(%esp), %eax
	movl	(%eax), %edi
	movl	4(%eax), %ebp
	movl	44(%esp), %eax
	movl	%edi, 32(%edx)
	movl	%ebp, 36(%edx)
	movl	(%eax), %eax
	movl	%eax, 40(%edx)
	movl	28(%ebx), %eax
	subl	%edx, %eax
	cmpl	$48, %eax
	jg	L1242
	movl	$3, %edx
	movl	%ebx, %eax
	call	_luaD_growstack
	movl	8(%ebx), %edx
L1242:
	leal	48(%edx), %eax
	movl	$1, %ecx
	movl	%eax, 8(%ebx)
	movl	%ebx, %eax
	call	_luaD_call
	movl	8(%ebx), %ecx
	addl	32(%ebx), %esi
	leal	-16(%ecx), %eax
	movl	-12(%ecx), %edx
	movl	%eax, 8(%ebx)
	movl	-16(%ecx), %eax
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	movl	-8(%ecx), %eax
	movl	%eax, 8(%esi)
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE613:
	.section	.text.unlikely,"x"
LCOLDE65:
	.text
LHOTE65:
	.section	.text.unlikely,"x"
LCOLDB66:
	.text
LHOTB66:
	.p2align 4,,15
	.def	_call_binTM;	.scl	3;	.type	32;	.endef
_call_binTM:
LFB342:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	leal	16(%eax), %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	movl	%edx, %ebx
	movl	%ecx, %edi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	8(%edx), %ecx
	movl	52(%esp), %eax
	movl	%eax, (%esp)
	movl	(%edx), %edx
	movl	%ebp, %eax
	call	_luaT_gettmbyobj.isra.10
	movl	8(%eax), %edx
	movl	%eax, %ecx
	testl	%edx, %edx
	je	L1253
L1245:
	leal	8(%edi), %eax
	movl	48(%esp), %edx
	movl	%edi, 8(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 12(%esp)
	leal	8(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, %eax
	call	_callTMres.isra.49
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1253:
	.cfi_restore_state
	movl	52(%esp), %eax
	movl	8(%edi), %ecx
	movl	(%edi), %edx
	movl	%eax, (%esp)
	movl	%ebp, %eax
	call	_luaT_gettmbyobj.isra.10
	movl	%eax, %ecx
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L1245
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE342:
	.section	.text.unlikely,"x"
LCOLDE66:
	.text
LHOTE66:
	.section	.text.unlikely,"x"
LCOLDB67:
	.text
LHOTB67:
	.p2align 4,,15
	.def	_call_orderTM;	.scl	3;	.type	32;	.endef
_call_orderTM:
LFB344:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%ecx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%eax, %esi
	addl	$16, %eax
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	8(%edx), %ecx
	movl	64(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	movl	(%ebx), %edx
	call	_luaT_gettmbyobj.isra.10
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	je	L1257
	movl	64(%esp), %edx
	movl	%eax, %ebp
	movl	8(%edi), %ecx
	movl	28(%esp), %eax
	movl	%edx, (%esp)
	movl	(%edi), %edx
	call	_luaT_gettmbyobj.isra.10
	movl	%eax, %edx
	movl	%ebp, %eax
	call	_luaO_rawequalObj
	testl	%eax, %eax
	je	L1257
	leal	8(%edi), %eax
	movl	8(%esi), %edx
	movl	%edi, 8(%esp)
	movl	%ebx, (%esp)
	movl	%ebp, %ecx
	movl	%eax, 12(%esp)
	leal	8(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, %eax
	call	_callTMres.isra.49
	movl	8(%esi), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	je	L1255
	cmpl	$1, %eax
	je	L1263
	movl	$1, %eax
L1255:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1257:
	.cfi_restore_state
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$-1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1263:
	.cfi_restore_state
	movl	(%edx), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	setne	%al
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE344:
	.section	.text.unlikely,"x"
LCOLDE67:
	.text
LHOTE67:
	.section	.text.unlikely,"x"
LCOLDB68:
	.text
LHOTB68:
	.p2align 4,,15
	.def	_pushstr;	.scl	3;	.type	32;	.endef
_pushstr:
LFB70:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %edi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	8(%eax), %esi
	movl	%edx, (%esp)
	call	_strlen
	movl	%edi, %edx
	movl	%eax, %ecx
	movl	%ebx, %eax
	call	_luaS_newlstr
	movl	%eax, (%esi)
	movl	8(%ebx), %eax
	movl	28(%ebx), %edx
	movl	$4, 8(%esi)
	subl	%eax, %edx
	cmpl	$16, %edx
	jg	L1265
	movl	%ebx, %eax
	movl	$1, %edx
	call	_luaD_growstack
	movl	8(%ebx), %eax
L1265:
	addl	$16, %eax
	movl	%eax, 8(%ebx)
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE70:
	.section	.text.unlikely,"x"
LCOLDE68:
	.text
LHOTE68:
	.section .rdata,"dr"
LC69:
	.ascii "perform arithmetic on\0"
	.section	.text.unlikely,"x"
LCOLDB70:
	.text
LHOTB70:
	.p2align 4,,15
	.def	_Arith;	.scl	3;	.type	32;	.endef
_Arith:
LFB350:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %esi
	movl	%ecx, %ebx
	subl	$92, %esp
	.cfi_def_cfa_offset 112
	movl	8(%ecx), %eax
	movl	112(%esp), %edi
	cmpl	$3, %eax
	je	L1268
	cmpl	$4, %eax
	je	L1295
L1269:
	movl	116(%esp), %eax
	movl	%esi, (%esp)
	movl	%edi, %ecx
	movl	%ebx, %edx
	movl	%eax, 4(%esp)
	movl	%ebp, %eax
	call	_call_binTM
	testl	%eax, %eax
	je	L1296
	jmp	L1267
	.p2align 4,,10
L1298:
	fstp	%st(0)
	fstp	%st(0)
L1267:
	addl	$92, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1295:
	.cfi_restore_state
	leal	32(%esp), %edx
	movl	%ecx, %eax
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	movl	%eax, %ecx
	je	L1269
L1268:
	movl	8(%edi), %eax
	cmpl	$3, %eax
	je	L1284
	cmpl	$4, %eax
	jne	L1269
	leal	48(%esp), %edx
	movl	%edi, %eax
	movl	%ecx, 16(%esp)
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	movl	16(%esp), %ecx
	jne	L1270
	jmp	L1269
	.p2align 4,,10
L1284:
	movl	%edi, %eax
L1270:
	fldl	(%ecx)
	fldl	(%eax)
	movl	116(%esp), %eax
	subl	$5, %eax
	cmpl	$6, %eax
	ja	L1298
	jmp	*L1273(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1273:
	.long	L1272
	.long	L1294
	.long	L1275
	.long	L1276
	.long	L1277
	.long	L1278
	.long	L1279
	.text
	.p2align 4,,10
L1277:
	fld	%st(1)
	fstpl	24(%esp)
	fdivr	%st, %st(1)
	fstpl	16(%esp)
	fstpl	(%esp)
	call	_floor
	fldl	16(%esp)
	fmulp	%st, %st(1)
	fldl	24(%esp)
	fxch	%st(1)
L1294:
	fsubrp	%st, %st(1)
	movl	$3, 8(%esi)
	fstpl	(%esi)
	addl	$92, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1272:
	.cfi_restore_state
	faddp	%st, %st(1)
	movl	$3, 8(%esi)
	fstpl	(%esi)
	jmp	L1267
	.p2align 4,,10
L1279:
	fstp	%st(0)
	fchs
	movl	$3, 8(%esi)
	fstpl	(%esi)
	jmp	L1267
	.p2align 4,,10
L1278:
	fstpl	8(%esp)
	fstpl	(%esp)
	call	_pow
	movl	$3, 8(%esi)
	fstpl	(%esi)
	jmp	L1267
	.p2align 4,,10
L1276:
	fdivrp	%st, %st(1)
	movl	$3, 8(%esi)
	fstpl	(%esi)
	jmp	L1267
	.p2align 4,,10
L1275:
	fmulp	%st, %st(1)
	movl	$3, 8(%esi)
	fstpl	(%esi)
	jmp	L1267
	.p2align 4,,10
L1296:
	movl	8(%ebx), %eax
	cmpl	$3, %eax
	je	L1293
	cmpl	$4, %eax
	je	L1297
L1281:
	movl	_luaT_typenames(,%eax,4), %eax
	movl	$LC69, 8(%esp)
	movl	$LC36, 4(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 12(%esp)
	call	_luaG_runerror
	jmp	L1267
	.p2align 4,,10
L1293:
	movl	8(%edi), %eax
	jmp	L1281
L1297:
	leal	64(%esp), %edx
	movl	%ebx, %eax
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	jne	L1293
	movl	8(%ebx), %eax
	jmp	L1281
	.cfi_endproc
LFE350:
	.section	.text.unlikely,"x"
LCOLDE70:
	.text
LHOTE70:
	.section .rdata,"dr"
LC71:
	.ascii "concatenate\0"
LC72:
	.ascii "string length overflow\0"
	.section	.text.unlikely,"x"
LCOLDB73:
	.text
LHOTB73:
	.p2align 4,,15
	.def	_luaV_concat;	.scl	3;	.type	32;	.endef
_luaV_concat:
LFB349:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$92, %esp
	.cfi_def_cfa_offset 112
	movl	%eax, 24(%esp)
	addl	$16, %eax
	movl	%edx, 16(%esp)
	movl	%ecx, 36(%esp)
	movl	%eax, 44(%esp)
	jmp	L1321
	.p2align 4,,10
L1301:
	movl	20(%esp), %eax
	movl	%ebx, %ecx
	movl	-32(%eax), %edx
	leal	-32(%eax), %edi
	movl	44(%esp), %eax
	movl	$15, (%esp)
	call	_luaT_gettmbyobj.isra.10
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	je	L1343
L1303:
	movl	20(%esp), %ecx
	movl	%esi, 8(%esp)
	movl	%edi, (%esp)
	movl	%ecx, %edx
	subl	$8, %edx
	movl	%edx, 12(%esp)
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	24(%esp), %eax
	subl	$24, %edx
	movl	%edx, 4(%esp)
	movl	%edi, %edx
	call	_callTMres.isra.49
	movl	$1, 28(%esp)
L1305:
	movl	28(%esp), %edi
	subl	%edi, 16(%esp)
	movl	16(%esp), %eax
	subl	%edi, 36(%esp)
	cmpl	$1, %eax
	jle	L1344
L1321:
	movl	36(%esp), %eax
	movl	24(%esp), %edi
	addl	$1, %eax
	sall	$4, %eax
	addl	12(%edi), %eax
	movl	-24(%eax), %ebx
	movl	%eax, %ecx
	movl	%eax, 20(%esp)
	leal	-16(%ecx), %esi
	leal	-3(%ebx), %eax
	cmpl	$1, %eax
	ja	L1301
	movl	-8(%ecx), %eax
	cmpl	$4, %eax
	je	L1302
	cmpl	$3, %eax
	leal	-16(%ecx), %esi
	jne	L1301
	movl	%edi, %eax
	movl	%esi, %edx
	call	_luaV_tostring.part.52
	testl	%eax, %eax
	je	L1345
	.p2align 4,,10
L1302:
	movl	20(%esp), %edi
	movl	-16(%edi), %eax
	movl	12(%eax), %ebp
	testl	%ebp, %ebp
	je	L1306
	cmpl	$1, 16(%esp)
	leal	-32(%edi), %ebx
	movl	$1, %esi
	movl	$-3, %edi
	jle	L1346
	.p2align 4,,10
L1332:
	movl	8(%ebx), %eax
	cmpl	$4, %eax
	je	L1311
	cmpl	$3, %eax
	je	L1312
	movl	%esi, %ebx
	sall	$4, %ebx
	negl	%ebx
	movl	%ebx, 40(%esp)
	leal	-1(%esi), %ebx
	movl	%ebx, 28(%esp)
L1308:
	movl	24(%esp), %eax
	movl	16(%eax), %edi
	movl	60(%edi), %ecx
	cmpl	%ecx, %ebp
	jbe	L1347
L1315:
	cmpl	$31, %ebp
	jbe	L1325
	leal	1(%ebp), %eax
	cmpl	$-3, %eax
	jbe	L1348
	movl	24(%esp), %eax
	movl	$LC44, 4(%esp)
	movl	%eax, (%esp)
	call	_luaG_runerror
	xorl	%eax, %eax
L1319:
	movl	%eax, 52(%edi)
	movl	%ebp, 60(%edi)
	movl	%eax, 32(%esp)
L1316:
	movl	20(%esp), %ebp
	sall	$4, %esi
	movl	%ebx, %edi
	subl	%esi, %ebp
	xorl	%esi, %esi
	jmp	L1320
	.p2align 4,,10
L1349:
	subl	$1, %edi
L1320:
	movl	0(%ebp), %eax
	movl	32(%esp), %ecx
	addl	$16, %ebp
	movl	12(%eax), %ebx
	addl	%esi, %ecx
	addl	$16, %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	movl	%ebx, 8(%esp)
	addl	%ebx, %esi
	call	_memcpy
	testl	%edi, %edi
	jne	L1349
	movl	20(%esp), %ebx
	addl	40(%esp), %ebx
	movl	%esi, %ecx
	movl	32(%esp), %edx
	movl	24(%esp), %eax
	call	_luaS_newlstr
	movl	$4, 8(%ebx)
	movl	%eax, (%ebx)
	jmp	L1305
	.p2align 4,,10
L1312:
	fldl	(%ebx)
	leal	48(%esp), %eax
	movl	$LC54, 4(%esp)
	fstpl	8(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	leal	48(%esp), %ecx
L1313:
	movl	(%ecx), %edx
	addl	$4, %ecx
	leal	-16843009(%edx), %eax
	notl	%edx
	andl	%edx, %eax
	andl	$-2139062144, %eax
	je	L1313
	movl	%eax, %edx
	shrl	$16, %edx
	testl	$32896, %eax
	cmove	%edx, %eax
	leal	2(%ecx), %edx
	cmove	%edx, %ecx
	movl	%eax, %edx
	addb	%al, %dl
	leal	48(%esp), %eax
	sbbl	$3, %ecx
	subl	%eax, %ecx
	movl	%eax, %edx
	movl	24(%esp), %eax
	call	_luaS_newlstr
	movl	$4, 8(%ebx)
	movl	%eax, (%ebx)
	.p2align 4,,10
L1311:
	movl	(%ebx), %eax
	movl	%edi, %edx
	subl	%ebp, %edx
	movl	12(%eax), %eax
	cmpl	%edx, %eax
	jnb	L1350
L1309:
	addl	%eax, %ebp
	addl	$1, %esi
	subl	$16, %ebx
	cmpl	%esi, 16(%esp)
	jne	L1332
	movl	16(%esp), %esi
	movl	%esi, %ebx
	leal	-1(%esi), %eax
	sall	$4, %ebx
	negl	%ebx
	movl	%eax, 28(%esp)
	movl	%ebx, 40(%esp)
	movl	%eax, %ebx
	movl	24(%esp), %eax
	movl	16(%eax), %edi
	movl	60(%edi), %ecx
	cmpl	%ecx, %ebp
	ja	L1315
L1347:
	movl	52(%edi), %eax
	movl	%eax, 32(%esp)
	jmp	L1316
	.p2align 4,,10
L1350:
	movl	%eax, 28(%esp)
	movl	24(%esp), %eax
	movl	$LC72, 4(%esp)
	movl	%eax, (%esp)
	call	_luaG_runerror
	movl	28(%esp), %eax
	jmp	L1309
	.p2align 4,,10
L1343:
	movl	20(%esp), %eax
	movl	-16(%eax), %edx
	movl	-8(%eax), %ecx
	movl	44(%esp), %eax
	movl	$15, (%esp)
	call	_luaT_gettmbyobj.isra.10
	movl	8(%eax), %edx
	testl	%edx, %edx
	jne	L1303
	subl	$3, %ebx
	cmpl	$2, %ebx
	cmovnb	%edi, %esi
	movl	8(%esi), %eax
	movl	$LC71, 8(%esp)
	movl	$LC36, 4(%esp)
	movl	_luaT_typenames(,%eax,4), %eax
	movl	%eax, 12(%esp)
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	_luaG_runerror
	movl	$1, 28(%esp)
	jmp	L1305
	.p2align 4,,10
L1306:
	cmpl	$3, -24(%edi)
	movl	$1, 28(%esp)
	jne	L1305
	movl	24(%esp), %eax
	movl	%edi, %edx
	subl	$32, %edx
	call	_luaV_tostring.part.52
	jmp	L1305
	.p2align 4,,10
L1344:
	addl	$92, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1325:
	.cfi_restore_state
	movl	$32, %ebp
L1317:
	movl	52(%edi), %edx
	movl	%ebp, (%esp)
	call	_luaM_realloc_
	jmp	L1319
L1346:
	movl	$0, 28(%esp)
	movl	$-16, 40(%esp)
	xorl	%ebx, %ebx
	jmp	L1308
L1345:
	movl	20(%esp), %eax
	movl	-24(%eax), %ebx
	jmp	L1301
L1348:
	movl	24(%esp), %eax
	jmp	L1317
	.cfi_endproc
LFE349:
	.section	.text.unlikely,"x"
LCOLDE73:
	.text
LHOTE73:
	.section .rdata,"dr"
LC74:
	.ascii "(null)\0"
LC75:
	.ascii "\0"
LC76:
	.ascii "%p\0"
LC77:
	.ascii "%\0"
	.section	.text.unlikely,"x"
LCOLDB78:
	.text
LHOTB78:
	.p2align 4,,15
	.def	_luaO_pushvfstring;	.scl	3;	.type	32;	.endef
_luaO_pushvfstring:
LFB71:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%ecx, %esi
	movl	$LC75, %edx
	movl	%eax, %ebx
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	call	_pushstr
	movl	%edi, %edx
	movl	$1, 28(%esp)
	movl	%esi, %edi
	jmp	L1366
	.p2align 4,,10
L1356:
	cmpb	$112, %dl
	je	L1359
	cmpb	$115, %dl
	je	L1360
	cmpb	$102, %dl
	je	L1373
L1354:
	movb	%dl, 41(%esp)
	leal	40(%esp), %edx
	movl	%ebx, %eax
	movb	$37, 40(%esp)
	movb	$0, 42(%esp)
	call	_pushstr
	.p2align 4,,10
L1363:
	addl	$2, 28(%esp)
	leal	2(%esi), %edx
L1366:
	movl	%edx, (%esp)
	movl	$37, 4(%esp)
	movl	%edx, 24(%esp)
	call	_strchr
	testl	%eax, %eax
	movl	%eax, %esi
	movl	24(%esp), %edx
	je	L1352
	movl	8(%ebx), %ebp
	movl	%eax, %ecx
	movl	%ebx, %eax
	subl	%edx, %ecx
	call	_luaS_newlstr
	movl	%eax, 0(%ebp)
	movl	8(%ebx), %eax
	movl	28(%ebx), %edx
	movl	$4, 8(%ebp)
	subl	%eax, %edx
	cmpl	$16, %edx
	jle	L1374
	leal	16(%eax), %edx
	movl	%edx, 8(%ebx)
	movzbl	1(%esi), %edx
	cmpb	$100, %dl
	je	L1355
L1375:
	jg	L1356
	cmpb	$37, %dl
	je	L1357
	cmpb	$99, %dl
	jne	L1354
	movl	(%edi), %eax
	leal	4(%edi), %ebp
	leal	40(%esp), %edx
	movb	$0, 41(%esp)
	movl	%ebp, %edi
	movb	%al, 40(%esp)
	movl	%ebx, %eax
	call	_pushstr
	jmp	L1363
	.p2align 4,,10
L1374:
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaD_growstack
	movl	8(%ebx), %eax
	leal	16(%eax), %edx
	movl	%edx, 8(%ebx)
	movzbl	1(%esi), %edx
	cmpb	$100, %dl
	jne	L1375
L1355:
	leal	4(%edi), %ebp
	fildl	(%edi)
L1371:
	fstpl	16(%eax)
	movl	$3, 24(%eax)
	movl	28(%ebx), %edx
	movl	8(%ebx), %eax
	subl	%eax, %edx
	cmpl	$16, %edx
	jle	L1376
L1365:
	addl	$16, %eax
	movl	%ebp, %edi
	movl	%eax, 8(%ebx)
	jmp	L1363
	.p2align 4,,10
L1357:
	movl	$LC77, %edx
	movl	%ebx, %eax
	call	_pushstr
	jmp	L1363
	.p2align 4,,10
L1373:
	leal	8(%edi), %ebp
	fldl	(%edi)
	jmp	L1371
	.p2align 4,,10
L1360:
	movl	(%edi), %edx
	movl	$LC74, %eax
	leal	4(%edi), %ebp
	movl	%ebp, %edi
	testl	%edx, %edx
	cmove	%eax, %edx
	movl	%ebx, %eax
	call	_pushstr
	jmp	L1363
	.p2align 4,,10
L1359:
	movl	(%edi), %eax
	movl	$LC76, 4(%esp)
	leal	4(%edi), %ebp
	movl	%ebp, %edi
	movl	%eax, 8(%esp)
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	leal	40(%esp), %edx
	movl	%ebx, %eax
	call	_pushstr
	jmp	L1363
	.p2align 4,,10
L1352:
	movl	%ebx, %eax
	call	_pushstr
	movl	8(%ebx), %ecx
	subl	12(%ebx), %ecx
	movl	%ebx, %eax
	movl	28(%esp), %edi
	sarl	$4, %ecx
	leal	1(%edi), %edx
	subl	$1, %ecx
	call	_luaV_concat
	movl	%edi, %eax
	movl	8(%ebx), %edi
	sall	$4, %eax
	subl	%eax, %edi
	movl	%edi, 8(%ebx)
	movl	-16(%edi), %eax
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	addl	$16, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1376:
	.cfi_restore_state
	movl	%ebx, %eax
	movl	$1, %edx
	call	_luaD_growstack
	movl	8(%ebx), %eax
	jmp	L1365
	.cfi_endproc
LFE71:
	.section	.text.unlikely,"x"
LCOLDE78:
	.text
LHOTE78:
	.section	.text.unlikely,"x"
LCOLDB79:
	.text
LHOTB79:
	.p2align 4,,15
	.def	_luaO_pushfstring;	.scl	3;	.type	32;	.endef
_luaO_pushfstring:
LFB72:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	20(%esp), %edx
	movl	16(%esp), %eax
	leal	24(%esp), %ecx
	call	_luaO_pushvfstring
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE72:
	.section	.text.unlikely,"x"
LCOLDE79:
	.text
LHOTE79:
	.section .rdata,"dr"
	.align 4
LC80:
	.ascii "main function has more than %d %s\0"
	.align 4
LC81:
	.ascii "function at line %d has more than %d %s\0"
	.section	.text.unlikely,"x"
LCOLDB82:
	.text
LHOTB82:
	.p2align 4,,15
	.def	_errorlimit;	.scl	3;	.type	32;	.endef
_errorlimit:
LFB269:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$112, %esp
	.cfi_def_cfa_offset 128
	movl	(%eax), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	L1383
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC81, 4(%esp)
	movl	16(%ebx), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	movl	%eax, %esi
L1381:
	movl	12(%ebx), %ebx
	leal	32(%esp), %edi
	movl	$80, %ecx
	movl	64(%ebx), %eax
	leal	16(%eax), %edx
	movl	%edi, %eax
	call	_luaO_chunkid
	movl	%esi, 16(%esp)
	movl	4(%ebx), %eax
	movl	%edi, 8(%esp)
	movl	$LC42, 4(%esp)
	movl	%eax, 12(%esp)
	movl	52(%ebx), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	movl	52(%ebx), %eax
	movl	$3, %edx
	call	_luaD_throw
L1383:
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$LC80, 4(%esp)
	movl	16(%ebx), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	movl	%eax, %esi
	jmp	L1381
	.cfi_endproc
LFE269:
	.section	.text.unlikely,"x"
LCOLDE82:
	.text
LHOTE82:
	.section .rdata,"dr"
LC83:
	.ascii "stack overflow\0"
	.section	.text.unlikely,"x"
LCOLDB84:
	.text
LHOTB84:
	.p2align 4,,15
	.def	_growCI;	.scl	3;	.type	32;	.endef
_growCI:
LFB96:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	48(%eax), %edx
	cmpl	$20000, %edx
	jg	L1388
	addl	%edx, %edx
	call	_luaD_reallocCI
	cmpl	$20000, 48(%ebx)
	jg	L1389
	movl	20(%ebx), %eax
	addl	$24, %eax
	movl	%eax, 20(%ebx)
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1389:
	.cfi_restore_state
	movl	%ebx, (%esp)
	movl	$LC83, 4(%esp)
	call	_luaG_runerror
	movl	20(%ebx), %eax
	addl	$24, %eax
	movl	%eax, 20(%ebx)
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1388:
	.cfi_restore_state
	movl	$5, %edx
	call	_luaD_throw
	.cfi_endproc
LFE96:
	.section	.text.unlikely,"x"
LCOLDE84:
	.text
LHOTE84:
	.section .rdata,"dr"
LC85:
	.ascii "call\0"
	.section	.text.unlikely,"x"
LCOLDB86:
	.text
LHOTB86:
	.p2align 4,,15
	.def	_luaD_precall;	.scl	3;	.type	32;	.endef
_luaD_precall:
LFB99:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %esi
	movl	%eax, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	8(%edx), %edi
	movl	%ecx, 20(%esp)
	cmpl	$6, %edi
	je	L1446
	movl	$16, (%esp)
	movl	(%edx), %edx
	leal	16(%eax), %eax
	movl	%edi, %ecx
	call	_luaT_gettmbyobj.isra.10
	movl	%esi, %ecx
	subl	32(%ebx), %ecx
	cmpl	$6, 8(%eax)
	movl	%eax, %ebp
	je	L1392
	movl	_luaT_typenames(,%edi,4), %eax
	movl	$LC85, 8(%esp)
	movl	$LC36, 4(%esp)
	movl	%ebx, (%esp)
	movl	%ecx, 16(%esp)
	movl	%eax, 12(%esp)
	call	_luaG_runerror
	movl	16(%esp), %ecx
L1392:
	movl	8(%ebx), %eax
	cmpl	%eax, %esi
	movl	%eax, %edx
	jnb	L1397
	movl	%ebp, 16(%esp)
	.p2align 4,,10
L1429:
	movl	-16(%edx), %edi
	movl	-12(%edx), %ebp
	subl	$16, %edx
	movl	%edi, 16(%edx)
	movl	8(%edx), %edi
	movl	%ebp, 20(%edx)
	movl	%edi, 24(%edx)
	cmpl	%edx, %esi
	jb	L1429
	movl	16(%esp), %ebp
L1397:
	movl	28(%ebx), %edi
	movl	%edi, 16(%esp)
	subl	%eax, %edi
	cmpl	$16, %edi
	jle	L1447
L1395:
	addl	32(%ebx), %ecx
	movl	0(%ebp), %eax
	movl	4(%ebp), %edx
	addl	$16, 8(%ebx)
	movl	%eax, (%ecx)
	movl	%ecx, %esi
	movl	%edx, 4(%ecx)
	movl	8(%ebp), %eax
	movl	%eax, 8(%ecx)
L1391:
	movl	(%esi), %ecx
	movl	%esi, %edi
	movl	20(%ebx), %eax
	movl	24(%ebx), %esi
	subl	32(%ebx), %edi
	movl	%esi, 12(%eax)
	cmpb	$0, 6(%ecx)
	jne	L1398
	movl	16(%ecx), %ebp
	movl	16(%esp), %edx
	subl	8(%ebx), %edx
	movzbl	75(%ebp), %ecx
	movl	%ecx, %esi
	sall	$4, %esi
	cmpl	%esi, %edx
	jle	L1448
	addl	32(%ebx), %edi
	cmpb	$0, 74(%ebp)
	movl	%edi, 24(%esp)
	jne	L1400
L1454:
	movzbl	73(%ebp), %edx
	leal	16(%edi), %esi
	sall	$4, %edx
	addl	%esi, %edx
	cmpl	%edx, 8(%ebx)
	ja	L1449
L1401:
	cmpl	36(%ebx), %eax
	je	L1450
	addl	$24, %eax
	movl	%eax, 20(%ebx)
L1406:
	movl	24(%esp), %ecx
	movl	%esi, (%eax)
	movl	%ecx, 4(%eax)
	movl	%esi, 12(%ebx)
	movzbl	75(%ebp), %edx
	movl	20(%esp), %ecx
	sall	$4, %edx
	addl	%edx, %esi
	movl	12(%ebp), %edx
	movl	%esi, 8(%eax)
	movl	%edx, 24(%ebx)
	movl	$0, 20(%eax)
	movl	%ecx, 16(%eax)
	movl	8(%ebx), %eax
	cmpl	%eax, %esi
	jbe	L1410
	.p2align 4,,10
L1428:
	movl	$0, 8(%eax)
	addl	$16, %eax
	cmpl	%eax, %esi
	ja	L1428
L1410:
	movl	%esi, 8(%ebx)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1398:
	.cfi_restore_state
	movl	16(%esp), %edx
	subl	8(%ebx), %edx
	cmpl	$320, %edx
	jle	L1451
	cmpl	36(%ebx), %eax
	je	L1452
L1412:
	addl	$24, %eax
	movl	%eax, 20(%ebx)
	movl	%eax, %edx
L1413:
	addl	32(%ebx), %edi
	movl	8(%ebx), %ecx
	addl	$320, %ecx
	movl	%edi, 4(%eax)
	addl	$16, %edi
	movl	%edi, (%eax)
	movl	%edi, 12(%ebx)
	movl	%ecx, 8(%eax)
	movl	20(%esp), %ecx
	movl	%ecx, 16(%eax)
	movl	4(%edx), %eax
	movl	(%eax), %eax
	movl	%ebx, (%esp)
	call	*16(%eax)
	movl	%eax, %edx
	movl	$2, %eax
	testl	%edx, %edx
	jns	L1453
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1447:
	.cfi_restore_state
	movl	%ebx, %eax
	movl	$1, %edx
	movl	%ecx, 24(%esp)
	call	_luaD_growstack
	movl	28(%ebx), %eax
	movl	24(%esp), %ecx
	movl	%eax, 16(%esp)
	jmp	L1395
	.p2align 4,,10
L1446:
	movl	28(%eax), %eax
	movl	%eax, 16(%esp)
	jmp	L1391
	.p2align 4,,10
L1449:
	movl	%edx, 8(%ebx)
	jmp	L1401
	.p2align 4,,10
L1448:
	movl	%ebx, %eax
	movl	%ecx, %edx
	call	_luaD_growstack
	addl	32(%ebx), %edi
	cmpb	$0, 74(%ebp)
	movl	20(%ebx), %eax
	movl	%edi, 24(%esp)
	je	L1454
L1400:
	movl	8(%ebx), %ecx
	movl	%ecx, %edx
	subl	24(%esp), %edx
	movl	%ecx, %esi
	movl	%ecx, 28(%esp)
	movzbl	73(%ebp), %ecx
	sarl	$4, %edx
	leal	-1(%edx), %edi
	movl	%edx, 16(%esp)
	cmpl	%ecx, %edi
	jge	L1402
	leal	8(%esi), %esi
	movl	%edi, %edx
	.p2align 4,,10
L1403:
	addl	$1, %edx
	movl	$0, (%esi)
	addl	$16, %esi
	cmpl	%edx, %ecx
	jne	L1403
	leal	1(%ecx), %edx
	movl	%edx, %esi
	subl	16(%esp), %esi
	addl	%edx, %edi
	subl	16(%esp), %edi
	sall	$4, %esi
	addl	28(%esp), %esi
	movl	%esi, 8(%ebx)
L1402:
	sall	$4, %edi
	testl	%ecx, %ecx
	je	L1401
	movl	%esi, %edx
	sall	$4, %ecx
	movl	%esi, 28(%esp)
	subl	%edi, %edx
	addl	$8, %edx
	movl	%edx, 16(%esp)
	movl	%esi, %edx
	subl	%edi, %edx
	leal	8(%edx,%ecx), %ecx
	movl	16(%esp), %edx
	movl	%ecx, %edi
	movl	%esi, %ecx
	movl	%edi, 16(%esp)
	jmp	L1404
	.p2align 4,,10
L1455:
	movl	8(%ebx), %ecx
L1404:
	leal	16(%ecx), %esi
	addl	$16, %edx
	movl	%esi, 8(%ebx)
	movl	-24(%edx), %esi
	movl	-20(%edx), %edi
	movl	%esi, (%ecx)
	movl	%edi, 4(%ecx)
	movl	-16(%edx), %esi
	movl	%esi, 8(%ecx)
	movl	$0, -16(%edx)
	cmpl	16(%esp), %edx
	jne	L1455
	movl	28(%esp), %esi
	jmp	L1401
	.p2align 4,,10
L1451:
	movl	%ebx, %eax
	movl	$20, %edx
	call	_luaD_growstack
	movl	20(%ebx), %eax
	cmpl	36(%ebx), %eax
	jne	L1412
	jmp	L1452
	.p2align 4,,10
L1453:
	movl	8(%ebx), %ebp
	movl	20(%ebx), %eax
	sall	$4, %edx
	movl	%ebp, %ecx
	movl	16(%eax), %edi
	movl	4(%eax), %esi
	subl	%edx, %ecx
	leal	-24(%eax), %edx
	movl	%edx, 20(%ebx)
	movl	-24(%eax), %edx
	testl	%edi, %edi
	movl	-12(%eax), %eax
	movl	%edx, 12(%ebx)
	movl	%eax, 24(%ebx)
	jne	L1444
	jmp	L1414
	.p2align 4,,10
L1456:
	addl	$16, %ecx
	movl	-16(%ecx), %eax
	movl	-12(%ecx), %edx
	addl	$16, %esi
	subl	$1, %edi
	movl	%eax, -16(%esi)
	movl	%edx, -12(%esi)
	movl	-8(%ecx), %eax
	movl	%eax, -8(%esi)
	je	L1414
L1444:
	cmpl	%ecx, %ebp
	ja	L1456
	testl	%edi, %edi
	leal	-1(%edi), %eax
	jle	L1414
	movl	%esi, %edx
	.p2align 4,,10
L1417:
	subl	$1, %eax
	addl	$16, %edx
	movl	$0, -8(%edx)
	cmpl	$-1, %eax
	jne	L1417
	sall	$4, %edi
	addl	%edi, %esi
L1414:
	movl	%esi, 8(%ebx)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L1452:
	.cfi_restore_state
	movl	%ebx, %eax
	call	_growCI
	movl	20(%ebx), %edx
	jmp	L1413
L1450:
	movl	%ebx, %eax
	call	_growCI
	jmp	L1406
	.cfi_endproc
LFE99:
	.section	.text.unlikely,"x"
LCOLDE86:
	.text
LHOTE86:
	.section .rdata,"dr"
LC87:
	.ascii "table overflow\0"
	.section	.text.unlikely,"x"
LCOLDB88:
	.text
LHOTB88:
	.p2align 4,,15
	.def	_setnodevector;	.scl	3;	.type	32;	.endef
_setnodevector:
LFB119:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$32, %esp
	.cfi_def_cfa_offset 48
	testl	%ecx, %ecx
	je	L1472
	subl	$1, %ecx
	movl	$-1, %edx
	cmpl	$255, %ecx
	jbe	L1460
	.p2align 4,,10
L1461:
	shrl	$8, %ecx
	addl	$8, %edx
	cmpl	$255, %ecx
	ja	L1461
L1460:
	movzbl	_log_2.5931(%ecx), %ecx
	leal	1(%edx,%ecx), %edi
	cmpl	$30, %edi
	jg	L1473
L1462:
	movl	$1, %ebx
	movl	%edi, %ecx
	sall	%cl, %ebx
	leal	1(%ebx), %edx
	cmpl	$134217727, %edx
	jbe	L1474
	movl	%eax, (%esp)
	movl	$LC44, 4(%esp)
	call	_luaG_runerror
	xorl	%eax, %eax
L1464:
	xorl	%edx, %edx
	testl	%ebx, %ebx
	movl	%eax, 16(%esi)
	movl	%eax, %ecx
	jg	L1470
	jmp	L1475
	.p2align 4,,10
L1476:
	movl	16(%esi), %ecx
L1470:
	movl	%edx, %eax
	addl	$1, %edx
	sall	$5, %eax
	addl	%ecx, %eax
	cmpl	%edx, %ebx
	movl	$0, 28(%eax)
	movl	$0, 24(%eax)
	movl	$0, 8(%eax)
	jne	L1476
	sall	$5, %ebx
	addl	16(%esi), %ebx
	movl	%edi, %edx
L1459:
	movl	%ebx, 20(%esi)
	movb	%dl, 7(%esi)
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1474:
	.cfi_restore_state
	movl	%ebx, %edx
	xorl	%ecx, %ecx
	sall	$5, %edx
	movl	%edx, (%esp)
	xorl	%edx, %edx
	call	_luaM_realloc_
	jmp	L1464
	.p2align 4,,10
L1472:
	movl	$_dummynode_, 16(%edx)
	movl	$_dummynode_, %ebx
	xorl	%edx, %edx
	movl	%ebx, 20(%esi)
	movb	%dl, 7(%esi)
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1473:
	.cfi_restore_state
	movl	%eax, (%esp)
	movl	$LC87, 4(%esp)
	movl	%eax, 28(%esp)
	call	_luaG_runerror
	movl	28(%esp), %eax
	jmp	L1462
L1475:
	sall	$5, %ebx
	movl	%edi, %edx
	addl	%eax, %ebx
	jmp	L1459
	.cfi_endproc
LFE119:
	.section	.text.unlikely,"x"
LCOLDE88:
	.text
LHOTE88:
	.section	.text.unlikely,"x"
LCOLDB89:
	.text
LHOTB89:
	.p2align 4,,15
	.def	_luaH_new;	.scl	3;	.type	32;	.endef
_luaH_new:
LFB123:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	movl	%ecx, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	$32, (%esp)
	call	_luaM_realloc_
	movl	%eax, %ebx
	movl	16(%esi), %eax
	leal	28(%ebx), %ecx
	movl	28(%eax), %edx
	movl	%edx, (%ebx)
	movl	%ebx, 28(%eax)
	leal	12(%ebx), %edx
	movzbl	20(%eax), %eax
	movb	$5, 4(%ebx)
	movl	$0, 8(%ebx)
	movb	$-1, 6(%ebx)
	movl	$0, 12(%ebx)
	movl	$0, 28(%ebx)
	movb	$0, 7(%ebx)
	movl	$_dummynode_, 16(%ebx)
	andl	$3, %eax
	movb	%al, 5(%ebx)
	movl	%ebp, (%esp)
	movl	%esi, %eax
	call	_setarrayvector.isra.53
	movl	%esi, %eax
	movl	%edi, %ecx
	movl	%ebx, %edx
	call	_setnodevector
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE123:
	.section	.text.unlikely,"x"
LCOLDE89:
	.text
LHOTE89:
	.section .rdata,"dr"
LC90:
	.ascii "index\0"
LC91:
	.ascii "loop in gettable\0"
	.section	.text.unlikely,"x"
LCOLDB92:
	.text
LHOTB92:
	.p2align 4,,15
	.def	_luaV_gettable;	.scl	3;	.type	32;	.endef
_luaV_gettable:
LFB340:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %esi
	movl	$100, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	8(%edx), %edx
	movl	%ecx, 28(%esp)
	movl	%ebx, 20(%esp)
	cmpl	$5, %edx
	je	L1511
	.p2align 4,,10
L1480:
	cmpl	$7, %edx
	jne	L1509
	movl	(%esi), %eax
	movl	8(%eax), %ebp
	testl	%ebp, %ebp
	je	L1499
L1515:
	movzbl	7(%ebp), %ecx
	movl	16(%edi), %eax
	movl	$1, %ebx
	movl	188(%eax), %eax
	sall	%cl, %ebx
	movl	%ebx, %ecx
	movl	20(%esp), %ebx
	subl	$1, %ecx
	andl	8(%eax), %ecx
	sall	$5, %ecx
	addl	16(%ebp), %ecx
	jmp	L1493
	.p2align 4,,10
L1492:
	movl	28(%ecx), %ecx
	testl	%ecx, %ecx
	je	L1512
L1493:
	cmpl	$4, 24(%ecx)
	jne	L1492
	cmpl	16(%ecx), %eax
	jne	L1492
	movl	8(%ecx), %eax
	movl	%ebx, 20(%esp)
	testl	%eax, %eax
	je	L1491
	movl	%eax, %edx
L1485:
	cmpl	$6, %edx
	je	L1513
L1494:
	subl	$1, 20(%esp)
	je	L1514
	cmpl	$5, %edx
	movl	%ecx, %esi
	jne	L1480
L1511:
	movl	(%esi), %ebp
	movl	28(%esp), %edx
	movl	%ebp, %eax
	call	_luaH_get
	movl	8(%eax), %edx
	testl	%edx, %edx
	jne	L1481
	movl	8(%ebp), %ebp
	testl	%ebp, %ebp
	je	L1498
	movzbl	6(%ebp), %edx
	movb	%dl, 24(%esp)
	andl	$1, %edx
	jne	L1498
	movzbl	7(%ebp), %ecx
	movl	16(%edi), %edx
	movl	$1, %ebx
	movl	188(%edx), %edx
	sall	%cl, %ebx
	movl	%ebx, %ecx
	movl	20(%esp), %ebx
	subl	$1, %ecx
	andl	8(%edx), %ecx
	sall	$5, %ecx
	addl	16(%ebp), %ecx
	jmp	L1486
	.p2align 4,,10
L1483:
	movl	28(%ecx), %ecx
	testl	%ecx, %ecx
	je	L1484
L1486:
	cmpl	$4, 24(%ecx)
	jne	L1483
	cmpl	16(%ecx), %edx
	jne	L1483
	movl	8(%ecx), %edx
	movl	%ebx, 20(%esp)
	testl	%edx, %edx
	jne	L1485
	.p2align 4,,10
L1484:
	movzbl	24(%esp), %edx
	orl	$1, %edx
	movb	%dl, 6(%ebp)
	movl	8(%eax), %edx
	jmp	L1481
	.p2align 4,,10
L1512:
	movl	%ebx, 20(%esp)
	movl	$_luaO_nilobject_, %ecx
L1491:
	movl	_luaT_typenames(,%edx,4), %eax
	movl	$LC90, 8(%esp)
	movl	$LC36, 4(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 24(%esp)
	movl	%eax, 12(%esp)
	call	_luaG_runerror
	movl	24(%esp), %ecx
	movl	8(%ecx), %edx
	cmpl	$6, %edx
	jne	L1494
L1513:
	movl	28(%esp), %ebx
	movl	64(%esp), %edx
	movl	%esi, (%esp)
	movl	%ebx, %eax
	movl	%ebx, 8(%esp)
	addl	$8, %eax
	movl	%eax, 12(%esp)
	leal	8(%esi), %eax
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	_callTMres.isra.49
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1509:
	.cfi_restore_state
	movl	16(%edi), %eax
	movl	152(%eax,%edx,4), %ebp
	testl	%ebp, %ebp
	jne	L1515
L1499:
	movl	$_luaO_nilobject_, %ecx
	jmp	L1491
L1498:
	xorl	%edx, %edx
L1481:
	movl	4(%eax), %ebx
	movl	(%eax), %ecx
	movl	64(%esp), %eax
	movl	%ecx, (%eax)
	movl	%ebx, 4(%eax)
	movl	%edx, 8(%eax)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L1514:
	.cfi_restore_state
	movl	%edi, (%esp)
	movl	$LC91, 4(%esp)
	call	_luaG_runerror
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE340:
	.section	.text.unlikely,"x"
LCOLDE92:
	.text
LHOTE92:
	.section	.text.unlikely,"x"
LCOLDB93:
	.text
LHOTB93:
	.p2align 4,,15
	.def	_lua_getfield;	.scl	3;	.type	32;	.endef
_lua_getfield:
LFB387:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 48
	call	_index2adr
	movl	%esi, (%esp)
	movl	%eax, %edi
	call	_strlen
	movl	%esi, %edx
	movl	%eax, %ecx
	movl	%ebx, %eax
	call	_luaS_newlstr
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	leal	16(%esp), %ecx
	movl	%edi, %edx
	movl	$4, 24(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_luaV_gettable
	addl	$16, 8(%ebx)
	addl	$32, %esp
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE387:
	.section	.text.unlikely,"x"
LCOLDE93:
	.text
LHOTE93:
	.section .rdata,"dr"
	.align 4
LC94:
	.ascii "attempt to compare two %s values\0"
LC95:
	.ascii "attempt to compare %s with %s\0"
	.section	.text.unlikely,"x"
LCOLDB96:
	.text
LHOTB96:
	.p2align 4,,15
	.def	_luaG_ordererror.isra.60;	.scl	3;	.type	32;	.endef
_luaG_ordererror.isra.60:
LFB624:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	_luaT_typenames(,%ecx,4), %ecx
	movl	_luaT_typenames(,%edx,4), %edx
	movzbl	2(%ecx), %ebx
	cmpb	%bl, 2(%edx)
	je	L1522
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$LC95, 4(%esp)
	call	_luaG_runerror
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1522:
	.cfi_restore_state
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	$LC94, 4(%esp)
	call	_luaG_runerror
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE624:
	.section	.text.unlikely,"x"
LCOLDE96:
	.text
LHOTE96:
	.section	.text.unlikely,"x"
LCOLDB97:
	.text
LHOTB97:
	.p2align 4,,15
	.def	_luaV_lessthan;	.scl	3;	.type	32;	.endef
_luaV_lessthan:
LFB346:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	8(%edx), %ebp
	movl	8(%ecx), %ebx
	cmpl	%ebx, %ebp
	jne	L1536
	cmpl	$3, %ebp
	je	L1537
	cmpl	$4, %ebp
	movl	%ecx, %esi
	movl	%edx, %ebx
	movl	%eax, %edi
	je	L1538
	movl	$13, (%esp)
	call	_call_orderTM
	cmpl	$-1, %eax
	je	L1539
L1526:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1536:
	.cfi_restore_state
	movl	%ebx, %ecx
	movl	%ebp, %edx
L1535:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	_luaG_ordererror.isra.60
	.p2align 4,,10
L1537:
	.cfi_restore_state
	fldl	(%ecx)
	xorl	%eax, %eax
	fldl	(%edx)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1538:
	.cfi_restore_state
	movl	(%ecx), %eax
	movl	(%edx), %edx
	leal	16(%eax), %esi
	leal	16(%edx), %ebx
	movl	12(%edx), %ebp
	movl	12(%eax), %edi
	jmp	L1530
	.p2align 4,,10
L1540:
	movl	%ebx, (%esp)
	call	_strlen
	cmpl	%edi, %eax
	je	L1531
	cmpl	%ebp, %eax
	je	L1532
	addl	$1, %eax
	addl	%eax, %ebx
	subl	%eax, %ebp
	addl	%eax, %esi
	subl	%eax, %edi
L1530:
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcoll
	testl	%eax, %eax
	je	L1540
	shrl	$31, %eax
	jmp	L1526
	.p2align 4,,10
L1539:
	movl	8(%esi), %ecx
	movl	8(%ebx), %edx
	movl	%edi, %eax
	jmp	L1535
	.p2align 4,,10
L1531:
	xorl	%eax, %eax
	jmp	L1526
	.p2align 4,,10
L1532:
	movl	$1, %eax
	jmp	L1526
	.cfi_endproc
LFE346:
	.section	.text.unlikely,"x"
LCOLDE97:
	.text
LHOTE97:
	.section	.text.unlikely,"x"
LCOLDB98:
	.text
LHOTB98:
	.p2align 4,,15
	.def	_luaM_growaux_;	.scl	3;	.type	32;	.endef
_luaM_growaux_:
LFB62:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebp
	movl	%ecx, %esi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	(%ecx), %edx
	movl	52(%esp), %ebx
	movl	%ebx, %eax
	shrl	$31, %eax
	addl	%ebx, %eax
	sarl	%eax
	cmpl	%eax, %edx
	jl	L1542
	cmpl	%ebx, %edx
	jge	L1550
L1549:
	xorl	%edx, %edx
	movl	$-3, %eax
	leal	1(%ebx), %ecx
	divl	48(%esp)
	cmpl	%ecx, %eax
	jb	L1545
L1551:
	movl	48(%esp), %eax
	movl	48(%esp), %ecx
	movl	%ebp, %edx
	imull	(%esi), %ecx
	imull	%ebx, %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_luaM_realloc_
	movl	%ebx, (%esi)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1542:
	.cfi_restore_state
	leal	(%edx,%edx), %ebx
	cmpl	$3, %ebx
	jg	L1549
	xorl	%edx, %edx
	movl	$-3, %eax
	movl	$5, %ecx
	divl	48(%esp)
	movl	$4, %ebx
	cmpl	%ecx, %eax
	jnb	L1551
L1545:
	movl	%edi, (%esp)
	movl	$LC44, 4(%esp)
	call	_luaG_runerror
	movl	%ebx, (%esi)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1550:
	.cfi_restore_state
	movl	56(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_luaG_runerror
	jmp	L1549
	.cfi_endproc
LFE62:
	.section	.text.unlikely,"x"
LCOLDE98:
	.text
LHOTE98:
	.section .rdata,"dr"
LC99:
	.ascii "local variables\0"
LC100:
	.ascii "too many local variables\0"
	.section	.text.unlikely,"x"
LCOLDB101:
	.text
LHOTB101:
	.p2align 4,,15
	.def	_new_localvar;	.scl	3;	.type	32;	.endef
_new_localvar:
LFB279:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	48(%eax), %ebx
	movzbl	50(%ebx), %eax
	addl	%ecx, %eax
	cmpl	$199, %eax
	movl	%eax, 24(%esp)
	jg	L1568
	movl	(%ebx), %esi
	movl	%edx, %ebp
	movswl	48(%ebx), %edx
	movl	56(%esi), %eax
	movl	%eax, %ecx
	movl	%eax, 28(%esp)
	movl	%edx, %eax
	cmpl	%edx, %ecx
	jle	L1569
L1554:
	movl	24(%esi), %ecx
	leal	(%edx,%edx,2), %edx
	leal	(%ecx,%edx,4), %edx
	movl	%ebp, (%edx)
	testb	$3, 5(%ebp)
	je	L1557
	movzbl	5(%esi), %edx
	testb	$4, %dl
	je	L1557
	movl	52(%edi), %eax
	movl	16(%eax), %eax
	cmpb	$1, 21(%eax)
	je	L1570
	movzbl	20(%eax), %eax
	andl	$-8, %edx
	andl	$3, %eax
	orl	%eax, %edx
	movb	%dl, 5(%esi)
	movzwl	48(%ebx), %eax
L1557:
	movl	24(%esp), %edi
	leal	1(%eax), %edx
	movw	%dx, 48(%ebx)
	movw	%ax, 172(%ebx,%edi,2)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1568:
	.cfi_restore_state
	movl	$LC99, %ecx
	movl	$200, %edx
	movl	%ebx, %eax
	call	_errorlimit
	.p2align 4,,10
L1569:
	movl	24(%esi), %edx
	movl	52(%edi), %eax
	leal	56(%esi), %ecx
	movl	$LC100, 8(%esp)
	movl	$32767, 4(%esp)
	movl	$12, (%esp)
	call	_luaM_growaux_
	movl	56(%esi), %ecx
	cmpl	%ecx, 28(%esp)
	movl	%eax, 24(%esi)
	jge	L1567
	movl	28(%esp), %edx
	leal	(%ecx,%ecx,2), %ecx
	leal	(%edx,%edx,2), %edx
	leal	(%eax,%edx,4), %edx
	leal	(%eax,%ecx,4), %eax
	.p2align 4,,10
L1556:
	movl	$0, (%edx)
	addl	$12, %edx
	cmpl	%edx, %eax
	jne	L1556
L1567:
	movswl	48(%ebx), %edx
	movl	%edx, %eax
	jmp	L1554
L1570:
	movl	%ebp, %edx
	call	_reallymarkobject
	movzwl	48(%ebx), %eax
	jmp	L1557
	.cfi_endproc
LFE279:
	.section	.text.unlikely,"x"
LCOLDE101:
	.text
LHOTE101:
	.section .rdata,"dr"
LC102:
	.ascii "upvalues\0"
	.section	.text.unlikely,"x"
LCOLDB103:
	.text
LHOTB103:
	.p2align 4,,15
	.def	_singlevaraux;	.scl	3;	.type	32;	.endef
_singlevaraux:
LFB285:
	.cfi_startproc
	testl	%eax, %eax
	je	L1621
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movzbl	50(%eax), %ebx
	leal	-1(%ebx), %edi
	cmpl	$-1, %edi
	je	L1574
	movl	(%eax), %esi
	movzwl	170(%eax,%ebx,2), %ebx
	movl	24(%esi), %esi
	leal	(%ebx,%ebx,2), %ebx
	cmpl	(%esi,%ebx,4), %edx
	jne	L1577
	jmp	L1575
	.p2align 4,,10
L1578:
	movzwl	172(%eax,%edi,2), %ebx
	leal	(%ebx,%ebx,2), %ebx
	cmpl	(%esi,%ebx,4), %edx
	je	L1575
L1577:
	subl	$1, %edi
	cmpl	$-1, %edi
	jne	L1578
L1574:
	movl	%eax, %ebx
	movl	8(%eax), %eax
	movl	$0, (%esp)
	movl	%ecx, %esi
	movl	%edx, 24(%esp)
	call	_singlevaraux
	cmpl	$8, %eax
	je	L1602
	movl	(%ebx), %eax
	movzbl	72(%eax), %edi
	movl	%eax, 28(%esp)
	testl	%edi, %edi
	je	L1581
	movl	(%esi), %ebp
	leal	51(%ebx), %eax
	xorl	%edx, %edx
	jmp	L1584
	.p2align 4,,10
L1582:
	addl	$1, %edx
	addl	$2, %eax
	cmpl	%edi, %edx
	je	L1622
L1584:
	movzbl	(%eax), %ecx
	cmpl	%ebp, %ecx
	jne	L1582
	movzbl	1(%eax), %ecx
	cmpl	8(%esi), %ecx
	jne	L1582
	movl	%edx, %eax
	jmp	L1583
	.p2align 4,,10
L1575:
	movl	64(%esp), %edx
	movl	$-1, 16(%ecx)
	movl	$-1, 20(%ecx)
	movl	$6, (%ecx)
	movl	%edi, 8(%ecx)
	testl	%edx, %edx
	jne	L1620
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	L1619
	jmp	L1620
	.p2align 4,,10
L1623:
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1620
L1619:
	movzbl	8(%eax), %edx
	cmpl	%edi, %edx
	jg	L1623
	movb	$1, 9(%eax)
L1620:
	movl	$6, %eax
L1602:
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1621:
	movl	$-1, 16(%ecx)
	movl	$-1, 20(%ecx)
	movl	$8, %eax
	movl	$8, (%ecx)
	movl	$255, 8(%ecx)
	ret
L1622:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	$60, %edx
	je	L1624
L1581:
	movl	28(%esp), %eax
	movl	36(%eax), %ebp
	cmpl	%edi, %ebp
	jle	L1585
	movl	28(%eax), %eax
L1586:
	movl	24(%esp), %ecx
	movl	%ecx, (%eax,%edi,4)
	testb	$3, 5(%ecx)
	je	L1590
	movl	28(%esp), %eax
	movzbl	5(%eax), %edx
	testb	$4, %dl
	je	L1590
	movl	16(%ebx), %eax
	movl	16(%eax), %eax
	cmpb	$1, 21(%eax)
	je	L1625
	movzbl	20(%eax), %eax
	movl	28(%esp), %ecx
	andl	$-8, %edx
	andl	$3, %eax
	orl	%edx, %eax
	movb	%al, 5(%ecx)
L1590:
	movl	28(%esp), %ecx
	movl	(%esi), %edx
	movzbl	72(%ecx), %eax
	movb	%dl, 51(%ebx,%eax,2)
	movzbl	72(%ecx), %eax
	movl	8(%esi), %edx
	movb	%dl, 52(%ebx,%eax,2)
	movzbl	72(%ecx), %eax
	leal	1(%eax), %edx
	movb	%dl, 72(%ecx)
L1583:
	movl	%eax, 8(%esi)
	movl	$7, (%esi)
	movl	$7, %eax
	jmp	L1602
L1624:
	movl	$LC102, %ecx
	movl	%ebx, %eax
	call	_errorlimit
L1585:
	movl	28(%eax), %edx
	movl	%eax, %edi
	leal	36(%eax), %ecx
	movl	16(%ebx), %eax
	movl	$LC75, 8(%esp)
	movl	$2147483645, 4(%esp)
	movl	$4, (%esp)
	call	_luaM_growaux_
	movl	36(%edi), %ecx
	movl	%eax, 28(%edi)
	cmpl	%ecx, %ebp
	jge	L1587
	leal	0(,%ebp,4), %edx
	jmp	L1588
	.p2align 4,,10
L1626:
	movl	28(%edi), %eax
L1588:
	addl	$1, %ebp
	movl	$0, (%eax,%edx)
	addl	$4, %edx
	cmpl	%ecx, %ebp
	jne	L1626
	movl	28(%esp), %ecx
	movl	28(%ecx), %eax
	movzbl	72(%ecx), %edi
	jmp	L1586
L1625:
	movl	%ecx, %edx
	call	_reallymarkobject
	jmp	L1590
L1587:
	movl	28(%esp), %ecx
	movzbl	72(%ecx), %edi
	jmp	L1586
	.cfi_endproc
LFE285:
	.section	.text.unlikely,"x"
LCOLDE103:
	.text
LHOTE103:
	.section .rdata,"dr"
LC104:
	.ascii "lexical element too long\0"
	.section	.text.unlikely,"x"
LCOLDB105:
	.text
LHOTB105:
	.p2align 4,,15
	.def	_save;	.scl	3;	.type	32;	.endef
_save:
LFB193:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$124, %esp
	.cfi_def_cfa_offset 144
	movl	60(%eax), %ebx
	movl	4(%ebx), %edx
	movl	8(%ebx), %ecx
	leal	1(%edx), %ebp
	cmpl	%ecx, %ebp
	jbe	L1632
	cmpl	$2147483645, %ecx
	movl	%eax, %esi
	ja	L1633
	leal	(%ecx,%ecx), %ebp
	movl	52(%eax), %eax
	movl	%ebp, (%esp)
	movl	(%ebx), %edx
	call	_luaM_realloc_
	movl	4(%ebx), %edx
	movl	%ebp, 8(%ebx)
	movl	%edi, %ecx
	movl	%eax, (%ebx)
	leal	1(%edx), %ebp
	movl	%ebp, 4(%ebx)
	movb	%cl, (%eax,%edx)
	addl	$124, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1632:
	.cfi_restore_state
	movl	(%ebx), %eax
	movl	%edi, %ecx
	movl	%ebp, 4(%ebx)
	movb	%cl, (%eax,%edx)
	addl	$124, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1633:
	.cfi_restore_state
	movl	64(%eax), %eax
	leal	32(%esp), %ebx
	movl	$80, %ecx
	leal	16(%eax), %edx
	movl	%ebx, %eax
	call	_luaO_chunkid
	movl	$LC104, 16(%esp)
	movl	4(%esi), %eax
	movl	%ebx, 8(%esp)
	movl	$LC42, 4(%esp)
	movl	%eax, 12(%esp)
	movl	52(%esi), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	movl	52(%esi), %eax
	movl	$3, %edx
	call	_luaD_throw
	.cfi_endproc
LFE193:
	.section	.text.unlikely,"x"
LCOLDE105:
	.text
LHOTE105:
	.section .rdata,"dr"
LC106:
	.ascii "char(%d)\0"
LC107:
	.ascii "%c\0"
LC108:
	.ascii "%s near '%s'\0"
	.section	.text.unlikely,"x"
LCOLDB109:
	.text
LHOTB109:
	.p2align 4,,15
	.def	_luaX_lexerror;	.scl	3;	.type	32;	.endef
_luaX_lexerror:
LFB197:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%ecx, %edi
	movl	$80, %ecx
	subl	$124, %esp
	.cfi_def_cfa_offset 144
	movl	64(%eax), %eax
	leal	32(%esp), %esi
	leal	16(%eax), %edx
	movl	%esi, %eax
	call	_luaO_chunkid
	movl	4(%ebx), %eax
	movl	%ebp, 16(%esp)
	movl	%esi, 8(%esp)
	movl	$LC42, 4(%esp)
	movl	%eax, 12(%esp)
	movl	52(%ebx), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	testl	%edi, %edi
	jne	L1645
L1635:
	movl	52(%ebx), %eax
	movl	$3, %edx
	call	_luaD_throw
L1645:
	movl	%eax, %esi
	leal	-284(%edi), %eax
	cmpl	$2, %eax
	jbe	L1646
	cmpl	$256, %edi
	jg	L1639
	movl	%edi, (%esp)
	call	*__imp__iscntrl
	testl	%eax, %eax
	movl	%edi, 8(%esp)
	je	L1640
	movl	52(%ebx), %eax
	movl	$LC106, 4(%esp)
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	jmp	L1638
L1639:
	movl	_luaX_tokens-1028(,%edi,4), %eax
L1638:
	movl	%eax, 12(%esp)
	movl	52(%ebx), %eax
	movl	%esi, 8(%esp)
	movl	$LC108, 4(%esp)
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	jmp	L1635
L1646:
	movl	%ebx, %eax
	xorl	%edx, %edx
	call	_save
	movl	60(%ebx), %eax
	movl	(%eax), %eax
	jmp	L1638
L1640:
	movl	52(%ebx), %eax
	movl	$LC107, 4(%esp)
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	jmp	L1638
	.cfi_endproc
LFE197:
	.section	.text.unlikely,"x"
LCOLDE109:
	.text
LHOTE109:
	.section .rdata,"dr"
LC110:
	.ascii "chunk has too many lines\0"
	.section	.text.unlikely,"x"
LCOLDB111:
	.text
LHOTB111:
	.p2align 4,,15
	.def	_inclinenumber;	.scl	3;	.type	32;	.endef
_inclinenumber:
LFB200:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	(%eax), %esi
	movl	56(%eax), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L1648
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L1649:
	cmpl	$10, %eax
	movl	%eax, (%ebx)
	sete	%cl
	cmpl	$13, %eax
	sete	%dl
	orb	%dl, %cl
	je	L1650
	cmpl	%esi, %eax
	je	L1650
	movl	56(%ebx), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L1651
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
	movl	%eax, (%ebx)
L1650:
	movl	4(%ebx), %eax
	addl	$1, %eax
	cmpl	$2147483644, %eax
	movl	%eax, 4(%ebx)
	jg	L1661
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1661:
	.cfi_restore_state
	movl	16(%ebx), %ecx
	movl	$LC110, %edx
	movl	%ebx, %eax
	call	_luaX_lexerror
	.p2align 4,,10
L1648:
	call	_luaZ_fill
	jmp	L1649
	.p2align 4,,10
L1651:
	call	_luaZ_fill
	movl	%eax, (%ebx)
	jmp	L1650
	.cfi_endproc
LFE200:
	.section	.text.unlikely,"x"
LCOLDE111:
	.text
LHOTE111:
	.section .rdata,"dr"
LC112:
	.ascii "control structure too long\0"
	.section	.text.unlikely,"x"
LCOLDB113:
	.text
LHOTB113:
	.p2align 4,,15
	.def	_luaK_concat;	.scl	3;	.type	32;	.endef
_luaK_concat:
LFB227:
	.cfi_startproc
	cmpl	$-1, %ecx
	je	L1677
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	(%edx), %ebx
	cmpl	$-1, %ebx
	je	L1678
	movl	(%eax), %edx
	movl	12(%edx), %ebp
	.p2align 4,,10
L1666:
	leal	0(%ebp,%ebx,4), %edi
	movl	(%edi), %esi
	movl	%esi, %edx
	shrl	$14, %edx
	subl	$131071, %edx
	cmpl	$-1, %edx
	je	L1679
	addl	$1, %ebx
	addl	%ebx, %edx
	cmpl	$-1, %edx
	je	L1665
	movl	%edx, %ebx
	jmp	L1666
	.p2align 4,,10
L1679:
	addl	$1, %ebx
L1665:
	subl	%ebx, %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	movl	%ebx, %edx
	xorl	%ecx, %edx
	subl	%ebx, %edx
	cmpl	$131071, %edx
	jg	L1680
	addl	$131071, %ecx
	andl	$16383, %esi
	sall	$14, %ecx
	orl	%ecx, %esi
	movl	%esi, (%edi)
L1662:
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
L1677:
	rep ret
	.p2align 4,,10
L1680:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	12(%eax), %eax
	movl	$LC112, %edx
	movl	16(%eax), %ecx
	call	_luaX_lexerror
	.p2align 4,,10
L1678:
	movl	%ecx, (%edx)
	jmp	L1662
	.cfi_endproc
LFE227:
	.section	.text.unlikely,"x"
LCOLDE113:
	.text
LHOTE113:
	.section .rdata,"dr"
	.align 4
LC114:
	.ascii "function or expression too complex\0"
	.section	.text.unlikely,"x"
LCOLDB115:
	.text
LHOTB115:
	.p2align 4,,15
	.def	_luaK_checkstack;	.scl	3;	.type	32;	.endef
_luaK_checkstack:
LFB228:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	(%eax), %ecx
	addl	36(%eax), %edx
	movzbl	75(%ecx), %ebx
	cmpl	%ebx, %edx
	jle	L1681
	cmpl	$249, %edx
	jg	L1685
	movb	%dl, 75(%ecx)
L1681:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1685:
	.cfi_restore_state
	movl	12(%eax), %eax
	movl	$LC114, %edx
	movl	16(%eax), %ecx
	call	_luaX_lexerror
	.cfi_endproc
LFE228:
	.section	.text.unlikely,"x"
LCOLDE115:
	.text
LHOTE115:
	.section	.text.unlikely,"x"
LCOLDB116:
	.text
LHOTB116:
	.p2align 4,,15
	.def	_luaK_setreturns.isra.92;	.scl	3;	.type	32;	.endef
_luaK_setreturns.isra.92:
LFB656:
	.cfi_startproc
	cmpl	$13, %edx
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	je	L1690
	cmpl	$14, %edx
	je	L1691
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1690:
	.cfi_restore_state
	movl	(%eax), %eax
	movl	(%ecx), %edx
	movl	12(%eax), %eax
	leal	(%eax,%edx,4), %ecx
	movl	16(%esp), %eax
	movl	(%ecx), %edx
	addl	$1, %eax
	sall	$14, %eax
	andl	$8372224, %eax
	andl	$-8372225, %edx
	orl	%edx, %eax
	movl	%eax, (%ecx)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1691:
	.cfi_restore_state
	movl	%eax, %ebx
	movl	(%eax), %eax
	movl	(%ecx), %edx
	movl	12(%eax), %eax
	leal	(%eax,%edx,4), %esi
	movl	16(%esp), %edx
	movl	(%esi), %edi
	addl	$1, %edx
	sall	$23, %edx
	andl	$8388607, %edi
	orl	%edi, %edx
	movl	%edx, (%esi)
	movl	(%ecx), %edx
	leal	(%eax,%edx,4), %ecx
	movl	36(%ebx), %eax
	movl	(%ecx), %edx
	sall	$6, %eax
	andl	$16320, %eax
	andl	$-16321, %edx
	orl	%edx, %eax
	movl	$1, %edx
	movl	%eax, (%ecx)
	movl	%ebx, %eax
	call	_luaK_checkstack
	addl	$1, 36(%ebx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE656:
	.section	.text.unlikely,"x"
LCOLDE116:
	.text
LHOTE116:
	.section	.text.unlikely,"x"
LCOLDB117:
	.text
LHOTB117:
	.p2align 4,,15
	.def	_patchlistaux;	.scl	3;	.type	32;	.endef
_patchlistaux:
LFB223:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	cmpl	$-1, %edx
	movl	%ecx, 4(%esp)
	je	L1692
	movl	%eax, %ebp
	movl	(%eax), %eax
	movl	%ebp, 8(%esp)
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	movl	48(%esp), %eax
	sall	$6, %eax
	andl	$16320, %eax
	movl	%eax, 12(%esp)
L1702:
	movl	(%esp), %eax
	leal	1(%edx), %esi
	leal	(%eax,%edx,4), %ecx
	movl	(%ecx), %ebx
	movl	%ebx, %edi
	shrl	$14, %edi
	subl	$131071, %edi
	leal	(%edi,%esi), %eax
	cmpl	$-1, %edi
	movl	$-1, %edi
	cmove	%edi, %eax
	testl	%edx, %edx
	jle	L1709
	movl	-4(%ecx), %edx
	leal	-4(%ecx), %ebp
	movl	%edx, %edi
	andl	$63, %edi
	cmpb	$0, _luaP_opmodes(%edi)
	js	L1696
L1709:
	movl	%ebx, %edx
	movl	%ecx, %ebp
L1696:
	movl	%edx, %edi
	andl	$63, %edi
	cmpl	$27, %edi
	je	L1715
	movl	52(%esp), %edx
	subl	%esi, %edx
	movl	%edx, %edi
	sarl	$31, %edi
	movl	%edi, %esi
	xorl	%edx, %esi
	subl	%edi, %esi
	cmpl	$131071, %esi
	jg	L1714
	addl	$131071, %edx
	andl	$16383, %ebx
	sall	$14, %edx
	orl	%edx, %ebx
	movl	%ebx, (%ecx)
L1701:
	cmpl	$-1, %eax
	je	L1692
	movl	%eax, %edx
	jmp	L1702
	.p2align 4,,10
L1692:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1714:
	.cfi_restore_state
	movl	8(%esp), %ebp
	movl	$LC112, %edx
	movl	12(%ebp), %eax
	movl	16(%eax), %ecx
	call	_luaX_lexerror
	.p2align 4,,10
L1715:
	movl	%edx, %ebx
	shrl	$23, %ebx
	cmpl	$255, 48(%esp)
	je	L1699
	cmpl	%ebx, 48(%esp)
	je	L1699
	movl	12(%esp), %ebx
	andl	$-16321, %edx
	orl	%edx, %ebx
L1700:
	movl	4(%esp), %edx
	movl	%ebx, 0(%ebp)
	subl	%esi, %edx
	movl	%edx, %esi
	sarl	$31, %esi
	movl	%esi, %ebx
	xorl	%edx, %ebx
	subl	%esi, %ebx
	cmpl	$131071, %ebx
	jg	L1714
	movl	(%ecx), %ebx
	addl	$131071, %edx
	sall	$14, %edx
	andl	$16383, %ebx
	orl	%ebx, %edx
	movl	%edx, (%ecx)
	jmp	L1701
	.p2align 4,,10
L1699:
	andl	$8372224, %edx
	sall	$6, %ebx
	orl	$26, %edx
	orl	%edx, %ebx
	jmp	L1700
	.cfi_endproc
LFE223:
	.section	.text.unlikely,"x"
LCOLDE117:
	.text
LHOTE117:
	.section .rdata,"dr"
LC118:
	.ascii "code size overflow\0"
	.section	.text.unlikely,"x"
LCOLDB119:
	.text
LHOTB119:
	.p2align 4,,15
	.def	_luaK_code;	.scl	3;	.type	32;	.endef
_luaK_code:
LFB263:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%ecx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebp
	movl	%eax, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	24(%eax), %ecx
	movl	(%eax), %esi
	movl	32(%eax), %edx
	movl	$255, (%esp)
	movl	%ecx, 4(%esp)
	call	_patchlistaux
	movl	24(%ebx), %edx
	cmpl	44(%esi), %edx
	movl	$-1, 32(%ebx)
	jge	L1717
	movl	12(%esi), %eax
L1718:
	movl	%ebp, (%eax,%edx,4)
	movl	24(%ebx), %edx
	cmpl	48(%esi), %edx
	jge	L1719
	movl	20(%esi), %eax
L1720:
	movl	%edi, (%eax,%edx,4)
	movl	24(%ebx), %eax
	leal	1(%eax), %edx
	movl	%edx, 24(%ebx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1719:
	.cfi_restore_state
	movl	20(%esi), %edx
	movl	16(%ebx), %eax
	leal	48(%esi), %ecx
	movl	$LC118, 8(%esp)
	movl	$2147483645, 4(%esp)
	movl	$4, (%esp)
	call	_luaM_growaux_
	movl	24(%ebx), %edx
	movl	%eax, 20(%esi)
	jmp	L1720
	.p2align 4,,10
L1717:
	movl	12(%esi), %edx
	movl	16(%ebx), %eax
	leal	44(%esi), %ecx
	movl	$LC118, 8(%esp)
	movl	$2147483645, 4(%esp)
	movl	$4, (%esp)
	call	_luaM_growaux_
	movl	24(%ebx), %edx
	movl	%eax, 12(%esi)
	jmp	L1718
	.cfi_endproc
LFE263:
	.section	.text.unlikely,"x"
LCOLDE119:
	.text
LHOTE119:
	.section	.text.unlikely,"x"
LCOLDB120:
	.text
LHOTB120:
	.p2align 4,,15
	.def	_luaK_dischargevars;	.scl	3;	.type	32;	.endef
_luaK_dischargevars:
LFB239:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	(%edx), %esi
	leal	-6(%esi), %ecx
	cmpl	$8, %ecx
	ja	L1722
	movl	%edx, %ebx
	jmp	*L1725(,%ecx,4)
	.section .rdata,"dr"
	.align 4
L1725:
	.long	L1724
	.long	L1726
	.long	L1727
	.long	L1728
	.long	L1722
	.long	L1722
	.long	L1722
	.long	L1729
	.long	L1729
	.text
	.p2align 4,,10
L1728:
	movl	12(%edx), %edx
	testb	$1, %dh
	je	L1734
L1730:
	movl	8(%ebx), %esi
	testl	$256, %esi
	je	L1735
L1731:
	movl	12(%eax), %edx
	sall	$23, %esi
	movl	8(%edx), %ecx
	movl	12(%ebx), %edx
	sall	$14, %edx
	orl	$6, %edx
	orl	%esi, %edx
	call	_luaK_code
	movl	$11, (%ebx)
	movl	%eax, 8(%ebx)
L1722:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1729:
	.cfi_restore_state
	cmpl	$13, %esi
	je	L1736
	movl	(%eax), %eax
	movl	8(%edx), %edx
	movl	12(%eax), %eax
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$8388607, %eax
	orl	$16777216, %eax
	movl	%eax, (%edx)
	movl	$11, (%ebx)
	jmp	L1722
	.p2align 4,,10
L1724:
	movl	$12, (%edx)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1726:
	.cfi_restore_state
	movl	12(%eax), %edx
	movl	8(%edx), %ecx
	movl	8(%ebx), %edx
	sall	$23, %edx
	orl	$4, %edx
	call	_luaK_code
	movl	$11, (%ebx)
	movl	%eax, 8(%ebx)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1727:
	.cfi_restore_state
	movl	12(%eax), %edx
	movl	8(%edx), %ecx
	movl	8(%ebx), %edx
	sall	$14, %edx
	orl	$5, %edx
	call	_luaK_code
	movl	$11, (%ebx)
	movl	%eax, 8(%ebx)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1735:
	.cfi_restore_state
	movzbl	50(%eax), %edx
	cmpl	%edx, %esi
	jl	L1731
	subl	$1, 36(%eax)
	movl	8(%ebx), %esi
	jmp	L1731
	.p2align 4,,10
L1734:
	movzbl	50(%eax), %ecx
	cmpl	%ecx, %edx
	jl	L1730
	subl	$1, 36(%eax)
	jmp	L1730
	.p2align 4,,10
L1736:
	movl	(%eax), %eax
	movl	$12, (%edx)
	movl	8(%edx), %edx
	movl	12(%eax), %eax
	movl	(%eax,%edx,4), %eax
	shrl	$6, %eax
	andl	$255, %eax
	movl	%eax, 8(%ebx)
	jmp	L1722
	.cfi_endproc
LFE239:
	.section	.text.unlikely,"x"
LCOLDE120:
	.text
LHOTE120:
	.section	.text.unlikely,"x"
LCOLDB121:
	.text
LHOTB121:
	.p2align 4,,15
	.def	_luaK_nil;	.scl	3;	.type	32;	.endef
_luaK_nil:
LFB212:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	24(%eax), %ebx
	cmpl	28(%eax), %ebx
	jle	L1738
	testl	%ebx, %ebx
	jne	L1739
	movzbl	50(%eax), %ebx
	cmpl	%edx, %ebx
	jle	L1737
L1738:
	movl	12(%eax), %ebx
	movl	8(%ebx), %esi
	leal	-1(%edx,%ecx), %ebx
	sall	$6, %edx
	orl	$3, %edx
	sall	$23, %ebx
	orl	%ebx, %edx
	movl	%esi, %ecx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	_luaK_code
	.p2align 4,,10
L1739:
	.cfi_restore_state
	movl	(%eax), %esi
	movl	12(%esi), %esi
	leal	-4(%esi,%ebx,4), %esi
	movl	(%esi), %edi
	movl	%edi, %ebx
	andl	$63, %edi
	cmpl	$3, %edi
	jne	L1738
	movl	%ebx, %edi
	movl	%ebx, %ebp
	shrl	$6, %edi
	movl	%edi, %ebx
	movzbl	%bl, %edi
	cmpl	%edi, %edx
	jl	L1738
	movl	%ebp, %edi
	movl	%ebp, %ebx
	shrl	$23, %edi
	leal	1(%edi), %ebp
	cmpl	%ebp, %edx
	jg	L1738
	leal	-1(%edx,%ecx), %eax
	cmpl	%eax, %edi
	jge	L1737
	andl	$8388607, %ebx
	sall	$23, %eax
	orl	%eax, %ebx
	movl	%ebx, (%esi)
L1737:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE212:
	.section	.text.unlikely,"x"
LCOLDE121:
	.text
LHOTE121:
	.section	.text.unlikely,"x"
LCOLDB122:
	.text
LHOTB122:
	.p2align 4,,15
	.def	_luaK_setlist;	.scl	3;	.type	32;	.endef
_luaK_setlist:
LFB266:
	.cfi_startproc
	subl	$1, %ecx
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$1374389535, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	movl	%ecx, %eax
	imull	%edx
	sarl	$31, %ecx
	movl	$0, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebp
	sarl	$4, %edx
	subl	%ecx, %edx
	leal	1(%edx), %ebx
	movl	%ebp, %edx
	sall	$23, %edx
	cmpl	$-1, %ebp
	cmovne	%edx, %eax
	movl	12(%esi), %edx
	movl	8(%edx), %ecx
	movl	%edi, %edx
	sall	$6, %edx
	orl	$34, %edx
	cmpl	$511, %ebx
	jle	L1748
	orl	%eax, %edx
	movl	%esi, %eax
	addl	$1, %edi
	call	_luaK_code
	movl	12(%esi), %eax
	movl	%ebx, %edx
	movl	8(%eax), %ecx
	movl	%esi, %eax
	call	_luaK_code
	movl	%edi, 36(%esi)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1748:
	.cfi_restore_state
	sall	$14, %ebx
	addl	$1, %edi
	orl	%ebx, %edx
	orl	%eax, %edx
	movl	%esi, %eax
	call	_luaK_code
	movl	%edi, 36(%esi)
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE266:
	.section	.text.unlikely,"x"
LCOLDE122:
	.text
LHOTE122:
	.section	.text.unlikely,"x"
LCOLDB123:
	.text
LHOTB123:
	.p2align 4,,15
	.def	_luaK_jump;	.scl	3;	.type	32;	.endef
_luaK_jump:
LFB213:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	movl	$2147450902, %edx
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%eax), %esi
	movl	$-1, 32(%eax)
	movl	12(%eax), %eax
	movl	8(%eax), %ecx
	movl	%ebx, %eax
	call	_luaK_code
	leal	12(%esp), %edx
	movl	%eax, 12(%esp)
	movl	%esi, %ecx
	movl	%ebx, %eax
	call	_luaK_concat
	movl	12(%esp), %eax
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE213:
	.section	.text.unlikely,"x"
LCOLDE123:
	.text
LHOTE123:
	.section	.text.unlikely,"x"
LCOLDB124:
	.text
LHOTB124:
	.p2align 4,,15
	.def	_leaveblock;	.scl	3;	.type	32;	.endef
_leaveblock:
LFB290:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	20(%eax), %eax
	movl	%eax, %edi
	movl	%eax, 8(%esp)
	movl	(%eax), %eax
	movl	%eax, 20(%ebx)
	movl	12(%ebx), %eax
	movzbl	8(%edi), %esi
	movl	48(%eax), %edx
	movl	%eax, 12(%esp)
	movzbl	50(%edx), %eax
	cmpb	8(%edi), %al
	jbe	L1756
	movl	(%edx), %ebp
	movl	24(%edx), %edi
	.p2align 4,,10
L1755:
	subl	$1, %eax
	movl	24(%ebp), %ecx
	movb	%al, 50(%edx)
	movzbl	%al, %eax
	movzwl	172(%edx,%eax,2), %eax
	leal	(%eax,%eax,2), %eax
	movl	%edi, 8(%ecx,%eax,4)
	movzbl	50(%edx), %ecx
	cmpl	%ecx, %esi
	movl	%ecx, %eax
	jl	L1755
L1756:
	movl	8(%esp), %eax
	cmpb	$0, 9(%eax)
	je	L1754
	movl	12(%esp), %eax
	movl	8(%eax), %ecx
	movl	8(%esp), %eax
	movzbl	8(%eax), %edx
	movl	%ebx, %eax
	sall	$6, %edx
	orl	$35, %edx
	call	_luaK_code
L1754:
	movzbl	50(%ebx), %eax
	leal	32(%ebx), %edx
	movl	%eax, 36(%ebx)
	movl	8(%esp), %eax
	movl	4(%eax), %ecx
	movl	24(%ebx), %eax
	movl	%eax, 28(%ebx)
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	_luaK_concat
	.cfi_endproc
LFE290:
	.section	.text.unlikely,"x"
LCOLDE124:
	.text
LHOTE124:
	.section	.text.unlikely,"x"
LCOLDB125:
	.text
LHOTB125:
	.p2align 4,,15
	.def	_skip_sep;	.scl	3;	.type	32;	.endef
_skip_sep:
LFB205:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	(%eax), %edi
	movl	%eax, %ebx
	movl	%edi, %edx
	call	_save
	movl	56(%ebx), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L1761
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L1762:
	xorl	%esi, %esi
	cmpl	$61, %eax
	movl	%eax, (%ebx)
	je	L1766
	jmp	L1763
	.p2align 4,,10
L1773:
	movl	4(%eax), %edx
	addl	$1, %esi
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
	cmpl	$61, %eax
	movl	%eax, (%ebx)
	jne	L1763
L1766:
	movl	$61, %edx
	movl	%ebx, %eax
	call	_save
	movl	56(%ebx), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	jne	L1773
	call	_luaZ_fill
	addl	$1, %esi
	cmpl	$61, %eax
	movl	%eax, (%ebx)
	je	L1766
L1763:
	movl	%esi, %edx
	cmpl	%eax, %edi
	movl	%esi, %eax
	notl	%edx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	cmovne	%edx, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1761:
	.cfi_restore_state
	call	_luaZ_fill
	jmp	L1762
	.cfi_endproc
LFE205:
	.section	.text.unlikely,"x"
LCOLDE125:
	.text
LHOTE125:
	.section	.text.unlikely,"x"
LCOLDB126:
	.text
LHOTB126:
	.p2align 4,,15
	.def	_check_next;	.scl	3;	.type	32;	.endef
_check_next:
LFB202:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	(%eax), %esi
	movl	%edx, (%esp)
	movl	%esi, 4(%esp)
	call	_strchr
	testl	%eax, %eax
	je	L1778
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_save
	movl	56(%ebx), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L1776
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L1777:
	movl	%eax, (%ebx)
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1776:
	.cfi_restore_state
	call	_luaZ_fill
	jmp	L1777
	.p2align 4,,10
L1778:
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE202:
	.section	.text.unlikely,"x"
LCOLDE126:
	.text
LHOTE126:
	.section .rdata,"dr"
LC127:
	.ascii "Ee\0"
LC128:
	.ascii "+-\0"
LC129:
	.ascii "malformed number\0"
	.section	.text.unlikely,"x"
LCOLDB130:
	.text
LHOTB130:
	.p2align 4,,15
	.def	_read_numeral;	.scl	3;	.type	32;	.endef
_read_numeral:
LFB204:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	(%eax), %edx
	.p2align 4,,10
L1802:
	movl	%ebx, %eax
	call	_save
	movl	56(%ebx), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L1781
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %edx
L1782:
	leal	-48(%edx), %eax
	movl	%edx, (%ebx)
	cmpl	$9, %eax
	jbe	L1802
	cmpl	$46, %edx
	je	L1802
	movl	$LC127, %edx
	movl	%ebx, %eax
	call	_check_next
	testl	%eax, %eax
	jne	L1806
L1784:
	movl	(%ebx), %esi
	movl	__imp__isalnum, %edi
	.p2align 4,,10
L1785:
	movl	%esi, (%esp)
	call	*%edi
	cmpl	$95, %esi
	je	L1788
	testl	%eax, %eax
	je	L1807
L1788:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_save
	movl	56(%ebx), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L1786
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %esi
	movl	%esi, (%ebx)
	jmp	L1785
	.p2align 4,,10
L1786:
	call	_luaZ_fill
	movl	%eax, %esi
	movl	%esi, (%ebx)
	jmp	L1785
	.p2align 4,,10
L1781:
	call	_luaZ_fill
	movl	%eax, %edx
	jmp	L1782
	.p2align 4,,10
L1807:
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_save
	movl	60(%ebx), %edx
	movzbl	68(%ebx), %ecx
	movl	4(%edx), %eax
	movl	(%edx), %edx
	.p2align 4,,10
L1789:
	subl	$1, %eax
	cmpl	$-1, %eax
	je	L1808
L1791:
	cmpb	$46, (%edx,%eax)
	jne	L1789
	movb	%cl, (%edx,%eax)
	subl	$1, %eax
	cmpl	$-1, %eax
	jne	L1791
L1808:
	movl	60(%ebx), %eax
	leal	60(%esp), %edx
	movl	%edx, 36(%esp)
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 24(%esp)
	call	___strtod
	movl	60(%esp), %esi
	movl	24(%esp), %eax
	fstpl	0(%ebp)
	movl	36(%esp), %edx
	cmpl	%esi, %eax
	je	L1797
	movzbl	(%esi), %edi
	movl	%edi, %ecx
	andl	$-33, %ecx
	cmpb	$88, %cl
	je	L1809
L1793:
	movl	%edi, %eax
	testb	%al, %al
	je	L1780
	addl	$1, %esi
	movl	__imp__isspace, %ebp
	jmp	L1795
	.p2align 4,,10
L1796:
	movl	%esi, 60(%esp)
	addl	$1, %esi
	movzbl	-1(%esi), %edi
L1795:
	movl	%edi, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	*%ebp
	testl	%eax, %eax
	jne	L1796
	movl	%edi, %eax
	testb	%al, %al
	jne	L1797
L1780:
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1797:
	.cfi_restore_state
	movl	$284, %ecx
	movl	$LC129, %edx
	movl	%ebx, %eax
	call	_luaX_lexerror
	.p2align 4,,10
L1806:
	movl	$LC128, %edx
	movl	%ebx, %eax
	call	_check_next
	jmp	L1784
	.p2align 4,,10
L1809:
	movl	$16, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strtoul
	movl	$0, 28(%esp)
	movl	%eax, 24(%esp)
	fildq	24(%esp)
	movl	60(%esp), %esi
	fstpl	0(%ebp)
	movzbl	(%esi), %edi
	jmp	L1793
	.cfi_endproc
LFE204:
	.section	.text.unlikely,"x"
LCOLDE130:
	.text
LHOTE130:
	.section	.text.unlikely,"x"
LCOLDB131:
	.text
LHOTB131:
	.p2align 4,,15
	.def	_f_luaopen;	.scl	3;	.type	32;	.endef
_f_luaopen:
LFB166:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xorl	%ecx, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	xorl	%edx, %edx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %ebx
	movl	16(%ebx), %eax
	movl	$192, (%esp)
	movl	%eax, 28(%esp)
	movl	%ebx, %eax
	call	_luaM_realloc_
	movl	%eax, 40(%ebx)
	movl	%eax, 20(%ebx)
	addl	$168, %eax
	movl	%eax, 36(%ebx)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$8, 48(%ebx)
	movl	%ebx, %eax
	movl	$720, (%esp)
	call	_luaM_realloc_
	leal	624(%eax), %edx
	leal	16(%eax), %ecx
	movl	%eax, 32(%ebx)
	movl	$45, 44(%ebx)
	movl	%edx, 28(%ebx)
	movl	20(%ebx), %edx
	movl	%eax, 4(%edx)
	movl	%ecx, 8(%ebx)
	addl	$336, %eax
	movl	$0, -328(%eax)
	movl	%ecx, (%edx)
	movl	%ecx, 12(%ebx)
	movl	%eax, 8(%edx)
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_luaH_new
	movl	16(%ebx), %esi
	movl	%eax, 72(%ebx)
	xorl	%edx, %edx
	movl	$5, 80(%ebx)
	movl	$2, %ecx
	movl	%ebx, %eax
	call	_luaH_new
	movl	%eax, 96(%esi)
	movl	16(%ebx), %edi
	movl	$5, 104(%esi)
	cmpb	$2, 21(%edi)
	je	L1811
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$128, (%esp)
	movl	%ebx, %eax
	call	_luaM_realloc_
	leal	4(%eax), %edi
	movl	%eax, %ecx
	movl	16(%ebx), %ebp
	movl	%eax, %esi
	movl	$0, (%eax)
	movl	$0, 124(%eax)
	andl	$-4, %edi
	xorl	%eax, %eax
	subl	%edi, %ecx
	subl	$-128, %ecx
	shrl	$2, %ecx
	rep stosl
	movl	8(%ebp), %ecx
	movl	0(%ebp), %edx
	testl	%ecx, %ecx
	jle	L1813
	xorl	%edi, %edi
	.p2align 4,,10
L1816:
	movl	(%edx,%edi,4), %eax
	testl	%eax, %eax
	je	L1814
	movl	%ebx, 64(%esp)
	.p2align 4,,10
L1815:
	movl	8(%eax), %edx
	movl	(%eax), %ecx
	andl	$31, %edx
	testl	%ecx, %ecx
	leal	(%esi,%edx,4), %edx
	movl	(%edx), %ebx
	movl	%ebx, (%eax)
	movl	%eax, (%edx)
	movl	%ecx, %eax
	jne	L1815
	movl	64(%esp), %ebx
	movl	0(%ebp), %edx
	movl	8(%ebp), %ecx
L1814:
	addl	$1, %edi
	cmpl	%ecx, %edi
	jl	L1816
L1813:
	sall	$2, %ecx
	movl	%ebx, %eax
	call	_luaM_realloc_.constprop.162
	movl	16(%ebx), %edi
	movl	$32, 8(%ebp)
	movl	%esi, 0(%ebp)
L1811:
	movl	$7, %ecx
	xorl	%esi, %esi
	jmp	L1819
	.p2align 4,,10
L1817:
	movl	_luaT_eventname.6010(,%esi,4), %eax
	movl	16(%ebx), %edi
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, %ecx
L1819:
	movl	_luaT_eventname.6010(,%esi,4), %edx
	movl	%ebx, %eax
	call	_luaS_newlstr
	leal	44(%esi), %edx
	addl	$1, %esi
	movl	%eax, 12(%edi,%edx,4)
	movl	16(%ebx), %eax
	movl	12(%eax,%edx,4), %eax
	orb	$32, 5(%eax)
	cmpl	$17, %esi
	jne	L1817
	movl	$1, %esi
	movl	%ebx, 64(%esp)
	movl	$3, %ecx
	movl	%esi, %ebx
	movl	64(%esp), %esi
	jmp	L1818
	.p2align 4,,10
L1827:
	movl	_luaX_tokens(,%ebx,4), %eax
	addl	$1, %ebx
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, %ecx
L1818:
	movl	_luaX_tokens-4(,%ebx,4), %edx
	movl	%esi, %eax
	call	_luaS_newlstr
	orb	$32, 5(%eax)
	cmpl	$21, %ebx
	movb	%bl, 6(%eax)
	jne	L1827
	movl	%esi, %eax
	movl	$17, %ecx
	movl	$LC46, %edx
	call	_luaS_newlstr
	movl	28(%esp), %edi
	orb	$32, 5(%eax)
	movl	68(%edi), %eax
	movl	%eax, 28(%esp)
	sall	$2, %eax
	movl	%eax, 64(%edi)
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE166:
	.section	.text.unlikely,"x"
LCOLDE131:
	.text
LHOTE131:
	.section .rdata,"dr"
LC132:
	.ascii "table index is nil\0"
LC133:
	.ascii "table index is NaN\0"
	.section	.text.unlikely,"x"
LCOLDB134:
	.text
LHOTB134:
	.p2align 4,,15
	.def	_resize;	.scl	3;	.type	32;	.endef
_resize:
LFB120:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%ecx, %esi
	movl	%edx, %ebx
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movzbl	7(%edx), %ecx
	movl	%eax, 28(%esp)
	movl	28(%edx), %eax
	movl	80(%esp), %edi
	movl	%ecx, 36(%esp)
	movl	16(%edx), %ecx
	cmpl	%esi, %eax
	movl	%eax, 24(%esp)
	movl	%ecx, 32(%esp)
	jl	L1854
	movl	28(%esp), %eax
	movl	%edi, %ecx
	call	_setnodevector
	cmpl	%esi, 24(%esp)
	jle	L1830
	leal	1(%esi), %ecx
	movl	%esi, %eax
	movl	%esi, 28(%ebx)
	sall	$4, %eax
	movl	%ebx, 20(%esp)
	movl	%eax, 44(%esp)
	movl	%ecx, 40(%esp)
	movl	%ecx, %ebp
	movl	%eax, %esi
	jmp	L1833
	.p2align 4,,10
L1832:
	addl	$16, %esi
	addl	$1, %ebp
	cmpl	%edi, 24(%esp)
	jle	L1855
L1833:
	movl	20(%esp), %eax
	movl	%ebp, %edi
	movl	12(%eax), %ebx
	addl	%esi, %ebx
	movl	8(%ebx), %edx
	testl	%edx, %edx
	je	L1832
	movl	%eax, %edx
	movl	28(%esp), %eax
	movl	%ebp, %ecx
	movl	%ebp, %edi
	addl	$16, %esi
	addl	$1, %ebp
	call	_luaH_setnum
	movl	(%ebx), %edx
	movl	4(%ebx), %ecx
	cmpl	%edi, 24(%esp)
	movl	%edx, (%eax)
	movl	%ecx, 4(%eax)
	movl	8(%ebx), %edx
	movl	%edx, 8(%eax)
	jg	L1833
L1855:
	cmpl	$268435455, 40(%esp)
	movl	20(%esp), %ebx
	jbe	L1856
	movl	28(%esp), %eax
	movl	$LC44, 4(%esp)
	movl	%eax, (%esp)
	call	_luaG_runerror
	xorl	%eax, %eax
L1835:
	movl	%eax, 12(%ebx)
L1830:
	movzbl	36(%esp), %ecx
	movl	$1, %edi
	sall	%cl, %edi
	movl	32(%esp), %ecx
	movl	%edi, %eax
	sall	$5, %eax
	subl	$1, %edi
	leal	-16(%ecx,%eax), %esi
	jns	L1844
	jmp	L1845
	.p2align 4,,10
L1839:
	subl	$1, %edi
	subl	$32, %esi
	cmpl	$-1, %edi
	je	L1845
L1844:
	movl	-8(%esi), %eax
	testl	%eax, %eax
	je	L1839
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_luaH_get
	cmpl	$_luaO_nilobject_, %eax
	movb	$0, 6(%ebx)
	je	L1857
L1840:
	movl	-16(%esi), %edx
	movl	-12(%esi), %ecx
	subl	$1, %edi
	subl	$32, %esi
	movl	%edx, (%eax)
	movl	%ecx, 4(%eax)
	movl	24(%esi), %edx
	cmpl	$-1, %edi
	movl	%edx, 8(%eax)
	jne	L1844
L1845:
	cmpl	$_dummynode_, 32(%esp)
	je	L1858
	movzbl	36(%esp), %ecx
	movl	$32, %eax
	movl	32(%esp), %edx
	sall	%cl, %eax
	movl	%eax, %ecx
	movl	28(%esp), %eax
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	_luaM_realloc_.constprop.162
	.p2align 4,,10
L1857:
	.cfi_restore_state
	movl	8(%esi), %eax
	testl	%eax, %eax
	je	L1859
	cmpl	$3, %eax
	je	L1860
L1842:
	movl	28(%esp), %eax
	movl	%esi, %ecx
	movl	%ebx, %edx
	call	_newkey
	jmp	L1840
	.p2align 4,,10
L1856:
	movl	44(%esp), %eax
	movl	24(%esp), %ecx
	movl	12(%ebx), %edx
	movl	%eax, (%esp)
	movl	28(%esp), %eax
	sall	$4, %ecx
	call	_luaM_realloc_
	jmp	L1835
	.p2align 4,,10
L1854:
	movl	%esi, (%esp)
	movl	28(%esp), %esi
	leal	28(%edx), %ecx
	leal	12(%edx), %edx
	movl	%esi, %eax
	call	_setarrayvector.isra.53
	movl	%edi, %ecx
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_setnodevector
	jmp	L1830
	.p2align 4,,10
L1858:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1859:
	.cfi_restore_state
	movl	28(%esp), %eax
	movl	$LC132, 4(%esp)
	movl	%eax, (%esp)
	call	_luaG_runerror
	jmp	L1842
	.p2align 4,,10
L1860:
	fldl	(%esi)
	fucomip	%st(0), %st
	jnp	L1842
	movl	28(%esp), %eax
	movl	$LC133, 4(%esp)
	movl	%eax, (%esp)
	call	_luaG_runerror
	jmp	L1842
	.cfi_endproc
LFE120:
	.section	.text.unlikely,"x"
LCOLDE134:
	.text
LHOTE134:
	.section	.text.unlikely,"x"
LCOLDB135:
	.text
LHOTB135:
	.p2align 4,,15
	.def	_newkey;	.scl	3;	.type	32;	.endef
_newkey:
LFB126:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$204, %esp
	.cfi_def_cfa_offset 224
	movl	%eax, 44(%esp)
	movl	%edx, 28(%esp)
	movl	%edx, %eax
	movl	%ecx, %edx
	movl	%ecx, 32(%esp)
	call	_mainposition
	movl	8(%eax), %ecx
	movl	%eax, %ebp
	testl	%ecx, %ecx
	jne	L1903
	cmpl	$_dummynode_, %eax
	je	L1903
L1862:
	movl	32(%esp), %ecx
	movl	(%ecx), %eax
	movl	4(%ecx), %edx
	movl	%eax, 16(%ebp)
	movl	%edx, 20(%ebp)
	movl	8(%ecx), %eax
	movl	%eax, 24(%ebp)
	cmpl	$3, 8(%ecx)
	jle	L1890
	movl	(%ecx), %eax
	testb	$3, 5(%eax)
	je	L1890
	movl	28(%esp), %ecx
	movzbl	5(%ecx), %eax
	testb	$4, %al
	je	L1890
	movl	44(%esp), %edi
	andl	$-5, %eax
	movl	16(%edi), %edx
	movb	%al, 5(%ecx)
	movl	40(%edx), %eax
	movl	%eax, 24(%ecx)
	movl	%ecx, 40(%edx)
L1890:
	addl	$204, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebp, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1903:
	.cfi_restore_state
	movl	28(%esp), %eax
	movl	16(%eax), %ebx
	movl	20(%eax), %esi
	jmp	L1864
	.p2align 4,,10
L1866:
	movl	24(%edi), %edx
	testl	%edx, %edx
	je	L1865
	movl	%edi, %esi
L1864:
	cmpl	%esi, %ebx
	leal	-32(%esi), %edi
	jb	L1866
	movl	28(%esp), %esi
	xorl	%eax, %eax
	movl	$31, %ecx
	movl	$0, 36(%esp)
	movl	$1, %edx
	movl	%ebx, 48(%esp)
	movl	%edi, 20(%esi)
	leal	68(%esp), %edi
	rep stosl
	movl	28(%esi), %eax
	movl	$1, %edi
	movl	%eax, 40(%esp)
	leal	68(%esp), %eax
	movl	%eax, 52(%esp)
	movl	%eax, %ebp
L1867:
	movl	40(%esp), %eax
	cmpl	%eax, %edi
	jle	L1870
	cmpl	%eax, %edx
	jg	L1871
	movl	%eax, %esi
L1872:
	movl	28(%esp), %ecx
	movl	%edx, %eax
	sall	$4, %eax
	addl	12(%ecx), %eax
	xorl	%ecx, %ecx
	.p2align 4,,10
L1874:
	cmpl	$1, -8(%eax)
	sbbl	%ebx, %ebx
	addl	$1, %edx
	addl	$16, %eax
	cmpl	%edx, %esi
	leal	1(%ecx,%ebx), %ecx
	jge	L1874
L1873:
	leal	192(%esp), %eax
	addl	%ecx, 0(%ebp)
	addl	$4, %ebp
	addl	%ecx, 36(%esp)
	addl	%edi, %edi
	cmpl	%eax, %ebp
	jne	L1867
L1871:
	movl	28(%esp), %eax
	movl	$1, %edx
	movl	48(%esp), %ebx
	xorl	%esi, %esi
	xorl	%edi, %edi
	movzbl	7(%eax), %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	sall	$5, %eax
	addl	%eax, %ebx
	jmp	L1875
	.p2align 4,,10
L1876:
	subl	$32, %ebx
L1875:
	subl	$1, %edx
	cmpl	$-1, %edx
	je	L1926
	movl	-24(%ebx), %eax
	testl	%eax, %eax
	je	L1876
	xorl	%ecx, %ecx
	cmpl	$3, -8(%ebx)
	je	L1927
L1877:
	addl	%ecx, %esi
	addl	$1, %edi
	jmp	L1876
	.p2align 4,,10
L1865:
	movl	28(%esp), %eax
	leal	16(%ebp), %edx
	movl	%edi, 20(%eax)
	call	_mainposition
	cmpl	%eax, %ebp
	jne	L1917
	movl	28(%ebp), %eax
	movl	%eax, -4(%esi)
	movl	%edi, 28(%ebp)
	movl	%edi, %ebp
	jmp	L1862
	.p2align 4,,10
L1902:
	movl	%edx, %eax
L1917:
	movl	28(%eax), %edx
	cmpl	%edx, %ebp
	jne	L1902
	movl	%edi, 28(%eax)
	movl	0(%ebp), %eax
	movl	%eax, -32(%esi)
	movl	4(%ebp), %eax
	movl	%eax, -28(%esi)
	movl	8(%ebp), %eax
	movl	%eax, -24(%esi)
	movl	12(%ebp), %eax
	movl	%eax, -20(%esi)
	movl	16(%ebp), %eax
	movl	%eax, -16(%esi)
	movl	20(%ebp), %eax
	movl	%eax, -12(%esi)
	movl	24(%ebp), %eax
	movl	%eax, -8(%esi)
	movl	28(%ebp), %eax
	movl	%eax, -4(%esi)
	movl	$0, 28(%ebp)
	movl	$0, 8(%ebp)
	jmp	L1862
	.p2align 4,,10
L1870:
	cmpl	%edi, %edx
	jg	L1891
	movl	%edi, %esi
	jmp	L1872
L1891:
	xorl	%ecx, %ecx
	jmp	L1873
L1926:
	movl	36(%esp), %eax
	xorl	%ebp, %ebp
	addl	%eax, %esi
	addl	%eax, %edi
	movl	32(%esp), %eax
	cmpl	$3, 8(%eax)
	je	L1928
L1882:
	leal	1(%edi), %eax
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	addl	%esi, %ebp
	movl	%eax, 40(%esp)
	je	L1886
	movl	$1, %edx
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movl	%ebp, 36(%esp)
	movl	52(%esp), %esi
	jmp	L1888
	.p2align 4,,10
L1929:
	addl	%edx, %edx
	addl	$4, %esi
	movl	%edx, %ebx
	sarl	%ebx
	cmpl	%ebx, %ebp
	jle	L1886
L1888:
	movl	(%esi), %ebp
	testl	%ebp, %ebp
	jle	L1887
	addl	%ebp, %eax
	cmpl	%eax, %ebx
	cmovl	%edx, %ecx
	cmovl	%eax, %edi
L1887:
	movl	36(%esp), %ebp
	cmpl	%eax, %ebp
	jne	L1929
L1886:
	movl	40(%esp), %eax
	movl	28(%esp), %ebx
	subl	%edi, %eax
	movl	44(%esp), %edi
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_resize
	movl	32(%esp), %ecx
	addl	$204, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %edx
	movl	%edi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	_luaH_set
L1928:
	.cfi_restore_state
	fldl	(%eax)
	fnstcw	62(%esp)
	movzwl	62(%esp), %eax
	movb	$12, %ah
	movw	%ax, 60(%esp)
	fldcw	60(%esp)
	fistl	36(%esp)
	fldcw	62(%esp)
	fildl	36(%esp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L1897
	jne	L1897
	movl	36(%esp), %eax
	subl	$1, %eax
	cmpl	$1073741823, %eax
	ja	L1882
	cmpl	$255, %eax
	jle	L1899
	.p2align 4,,10
L1885:
	shrl	$8, %eax
	addl	$8, %edx
	cmpl	$255, %eax
	ja	L1885
L1884:
	movzbl	_log_2.5931(%eax), %eax
	movl	$1, %ebp
	leal	1(%edx,%eax), %eax
	addl	$1, 68(%esp,%eax,4)
	jmp	L1882
L1927:
	fldl	-16(%ebx)
	fnstcw	62(%esp)
	movzwl	62(%esp), %eax
	movb	$12, %ah
	movw	%ax, 60(%esp)
	fldcw	60(%esp)
	fistl	40(%esp)
	fldcw	62(%esp)
	fildl	40(%esp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L1893
	jne	L1893
	movl	40(%esp), %eax
	subl	$1, %eax
	cmpl	$1073741823, %eax
	ja	L1877
	cmpl	$255, %eax
	movl	$-1, %ecx
	jle	L1879
	.p2align 4,,10
L1880:
	shrl	$8, %eax
	addl	$8, %ecx
	cmpl	$255, %eax
	ja	L1880
L1879:
	movzbl	_log_2.5931(%eax), %eax
	leal	1(%ecx,%eax), %eax
	movl	$1, %ecx
	addl	$1, 68(%esp,%eax,4)
	jmp	L1877
L1893:
	xorl	%ecx, %ecx
	jmp	L1877
L1897:
	xorl	%ebp, %ebp
	jmp	L1882
L1899:
	movl	$-1, %edx
	jmp	L1884
	.cfi_endproc
LFE126:
	.section	.text.unlikely,"x"
LCOLDE135:
	.text
LHOTE135:
	.section	.text.unlikely,"x"
LCOLDB136:
	.text
LHOTB136:
	.p2align 4,,15
	.def	_luaH_set;	.scl	3;	.type	32;	.endef
_luaH_set:
LFB130:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %edi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edx, %ebx
	movl	%ecx, %edx
	movl	%ebx, %eax
	movl	%ecx, %esi
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	call	_luaH_get
	cmpl	$_luaO_nilobject_, %eax
	movb	$0, 6(%ebx)
	je	L1937
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1937:
	.cfi_restore_state
	movl	8(%esi), %eax
	testl	%eax, %eax
	je	L1938
	cmpl	$3, %eax
	je	L1939
L1933:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%esi, %ecx
	movl	%ebx, %edx
	movl	%edi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_newkey
	.p2align 4,,10
L1938:
	.cfi_restore_state
	movl	$LC132, 4(%esp)
	movl	%edi, (%esp)
	call	_luaG_runerror
	jmp	L1933
	.p2align 4,,10
L1939:
	fldl	(%esi)
	fucomip	%st(0), %st
	jnp	L1933
	movl	$LC133, 4(%esp)
	movl	%edi, (%esp)
	call	_luaG_runerror
	jmp	L1933
	.cfi_endproc
LFE130:
	.section	.text.unlikely,"x"
LCOLDE136:
	.text
LHOTE136:
	.section	.text.unlikely,"x"
LCOLDB137:
	.text
LHOTB137:
	.p2align 4,,15
	.def	_luaH_setnum;	.scl	3;	.type	32;	.endef
_luaH_setnum:
LFB131:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %esi
	leal	-1(%ecx), %eax
	movl	%edx, %ebx
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	cmpl	28(%edx), %eax
	jnb	L1941
	leal	268435455(%ecx), %eax
	sall	$4, %eax
	addl	12(%edx), %eax
	cmpl	$_luaO_nilobject_, %eax
	je	L1946
L1943:
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1941:
	.cfi_restore_state
	movl	%ecx, %edx
	movl	%ebx, %eax
	movl	%ecx, 12(%esp)
	call	_luaH_getnum.part.8
	cmpl	$_luaO_nilobject_, %eax
	movl	12(%esp), %ecx
	jne	L1943
L1946:
	movl	%ecx, 12(%esp)
	leal	16(%esp), %ecx
	movl	%ebx, %edx
	fildl	12(%esp)
	movl	%esi, %eax
	movl	$3, 24(%esp)
	fstpl	16(%esp)
	call	_newkey
	addl	$36, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE131:
	.section	.text.unlikely,"x"
LCOLDE137:
	.text
LHOTE137:
	.section	.text.unlikely,"x"
LCOLDB138:
	.text
LHOTB138:
	.p2align 4,,15
	.def	_lua_rawseti;	.scl	3;	.type	32;	.endef
_lua_rawseti:
LFB396:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%ecx, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	call	_index2adr
	movl	8(%ebx), %esi
	movl	(%eax), %edx
	movl	%ebp, %ecx
	movl	%eax, %edi
	movl	%ebx, %eax
	call	_luaH_setnum
	movl	-16(%esi), %edx
	movl	-12(%esi), %ecx
	movl	%edx, (%eax)
	movl	%ecx, 4(%eax)
	movl	-8(%esi), %edx
	movl	%edx, 8(%eax)
	movl	8(%ebx), %eax
	cmpl	$3, -8(%eax)
	jle	L1948
	movl	-16(%eax), %eax
	testb	$3, 5(%eax)
	je	L1948
	movl	(%edi), %eax
	movzbl	5(%eax), %edx
	testb	$4, %dl
	je	L1948
	movl	16(%ebx), %ecx
	andl	$-5, %edx
	movb	%dl, 5(%eax)
	movl	40(%ecx), %edx
	movl	%edx, 24(%eax)
	movl	%eax, 40(%ecx)
L1948:
	subl	$16, 8(%ebx)
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE396:
	.section	.text.unlikely,"x"
LCOLDE138:
	.text
LHOTE138:
	.section	.text.unlikely,"x"
LCOLDB139:
	.text
LHOTB139:
	.p2align 4,,15
	.def	_lua_rawseti.constprop.129;	.scl	3;	.type	32;	.endef
_lua_rawseti.constprop.129:
LFB710:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	12(%eax), %edi
	movl	%eax, %ebx
	movl	8(%eax), %esi
	cmpl	%esi, %edi
	jnb	L1959
	movl	(%edi), %eax
L1957:
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	%ebx, %eax
	call	_luaH_setnum
	movl	-16(%esi), %edx
	movl	-12(%esi), %ecx
	movl	%edx, (%eax)
	movl	%ecx, 4(%eax)
	movl	-8(%esi), %edx
	movl	%edx, 8(%eax)
	movl	8(%ebx), %eax
	cmpl	$3, -8(%eax)
	jle	L1958
	movl	-16(%eax), %eax
	testb	$3, 5(%eax)
	je	L1958
	movl	(%edi), %eax
	movzbl	5(%eax), %edx
	testb	$4, %dl
	je	L1958
	movl	16(%ebx), %ecx
	andl	$-5, %edx
	movb	%dl, 5(%eax)
	movl	40(%ecx), %edx
	movl	%edx, 24(%eax)
	movl	%eax, 40(%ecx)
L1958:
	subl	$16, 8(%ebx)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1959:
	.cfi_restore_state
	xorl	%eax, %eax
	movl	$_luaO_nilobject_, %edi
	jmp	L1957
	.cfi_endproc
LFE710:
	.section	.text.unlikely,"x"
LCOLDE139:
	.text
LHOTE139:
	.section	.text.unlikely,"x"
LCOLDB140:
	.text
LHOTB140:
	.p2align 4,,15
	.def	_luaH_new.constprop.166;	.scl	3;	.type	32;	.endef
_luaH_new.constprop.166:
LFB673:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	$32, (%esp)
	call	_luaM_realloc_
	movl	%eax, %ebx
	movl	16(%esi), %eax
	xorl	%ecx, %ecx
	movl	28(%eax), %edx
	movl	%edx, (%ebx)
	movl	%ebx, 28(%eax)
	xorl	%edx, %edx
	movzbl	20(%eax), %eax
	movb	$5, 4(%ebx)
	movl	$0, 8(%ebx)
	movb	$-1, 6(%ebx)
	movl	$0, 12(%ebx)
	movl	$0, 28(%ebx)
	movb	$0, 7(%ebx)
	movl	$_dummynode_, 16(%ebx)
	andl	$3, %eax
	movb	%al, 5(%ebx)
	movl	$0, (%esp)
	movl	%esi, %eax
	call	_luaM_realloc_
	movl	28(%ebx), %ecx
	movl	%eax, 12(%ebx)
	movl	%ecx, %edx
	sall	$4, %edx
	addl	%eax, %edx
	testl	%ecx, %ecx
	jns	L1970
	.p2align 4,,10
L1971:
	movl	$0, 8(%edx)
	addl	$16, %edx
	cmpl	%edx, %eax
	jne	L1971
L1970:
	movl	$0, 28(%ebx)
	movl	$_dummynode_, 16(%ebx)
	movl	%ebx, %eax
	movb	$0, 7(%ebx)
	movl	$_dummynode_, 20(%ebx)
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE673:
	.section	.text.unlikely,"x"
LCOLDE140:
	.text
LHOTE140:
	.section .rdata,"dr"
LC141:
	.ascii "main\0"
LC142:
	.ascii "Lua\0"
LC143:
	.ascii "=[C]\0"
LC144:
	.ascii "tail\0"
LC145:
	.ascii "=(tail call)\0"
LC146:
	.ascii "C\0"
	.section	.text.unlikely,"x"
LCOLDB147:
	.text
LHOTB147:
	.p2align 4,,15
	.def	_lua_getinfo;	.scl	3;	.type	32;	.endef
_lua_getinfo:
LFB181:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%ecx, %edi
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	cmpb	$62, (%edx)
	movl	%edx, 16(%esp)
	je	L2038
	movl	96(%ecx), %eax
	testl	%eax, %eax
	je	L1978
	leal	(%eax,%eax,2), %edx
	movl	40(%ebp), %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, %edx
	movl	4(%eax), %eax
	movl	(%eax), %ebx
L1977:
	testl	%ebx, %ebx
	je	L1978
	movl	16(%esp), %esi
	leal	36(%edi), %ecx
	movl	$1, 20(%esp)
	movl	%ecx, 24(%esp)
	movzbl	(%esi), %eax
	testb	%al, %al
	je	L2039
	movl	%ebp, 28(%esp)
	movl	%edx, %ebp
	.p2align 4,,10
L2025:
	subl	$76, %eax
	cmpb	$41, %al
	ja	L2011
	movzbl	%al, %eax
	jmp	*L1985(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1985:
	.long	L1983
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L1986
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L1983
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L1987
	.long	L2011
	.long	L1988
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L2011
	.long	L1989
	.text
	.p2align 4,,10
L1987:
	testl	%ebp, %ebp
	je	L1995
	movl	4(%ebp), %eax
	cmpl	$6, 8(%eax)
	je	L2040
L1995:
	movl	$-1, %eax
L1994:
	movl	%eax, 20(%edi)
L1983:
	addl	$1, %esi
	movzbl	(%esi), %eax
	testb	%al, %al
	jne	L2025
L2043:
	movl	28(%esp), %ebp
	movl	16(%esp), %eax
L1980:
	movl	$102, 4(%esp)
	movl	%eax, (%esp)
	call	_strchr
	testl	%eax, %eax
	je	L2041
	movl	8(%ebp), %eax
	movl	%ebx, (%eax)
	movl	$6, 8(%eax)
	movl	8(%ebp), %eax
L1999:
	movl	28(%ebp), %edx
	subl	%eax, %edx
	cmpl	$16, %edx
	jle	L2042
L2000:
	addl	$16, %eax
	movl	%eax, 8(%ebp)
	movl	16(%esp), %eax
	movl	$76, 4(%esp)
	movl	%eax, (%esp)
	call	_strchr
	testl	%eax, %eax
	je	L2019
	testl	%ebx, %ebx
	je	L2002
	cmpb	$0, 6(%ebx)
	je	L2003
L2002:
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
L2004:
	movl	28(%ebp), %edx
	subl	%eax, %edx
	cmpl	$16, %edx
	jg	L2008
	movl	%ebp, %eax
	movl	$1, %edx
	call	_luaD_growstack
	movl	8(%ebp), %eax
L2008:
	addl	$16, %eax
	movl	%eax, 8(%ebp)
L2019:
	movl	20(%esp), %eax
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L1989:
	.cfi_restore_state
	movzbl	7(%ebx), %eax
	addl	$1, %esi
	movl	%eax, 24(%edi)
	movzbl	(%esi), %eax
	testb	%al, %al
	jne	L2025
	jmp	L2043
	.p2align 4,,10
L1986:
	cmpb	$0, 6(%ebx)
	jne	L2044
	movl	16(%ebx), %eax
	movl	32(%eax), %edx
	addl	$16, %edx
	movl	%edx, 16(%edi)
	movl	16(%ebx), %ecx
	movl	60(%ecx), %eax
	movl	64(%ecx), %ecx
	testl	%eax, %eax
	movl	%eax, 28(%edi)
	movl	%ecx, 32(%edi)
	movl	$LC141, %eax
	movl	$LC142, %ecx
	cmovne	%ecx, %eax
	movl	%eax, 12(%edi)
L1991:
	movl	24(%esp), %eax
	addl	$1, %esi
	movl	$60, %ecx
	call	_luaO_chunkid
	movzbl	(%esi), %eax
	testb	%al, %al
	jne	L2025
	jmp	L2043
	.p2align 4,,10
L1988:
	addl	$1, %esi
	movl	$LC75, 8(%edi)
	movl	$0, 4(%edi)
	movzbl	(%esi), %eax
	testb	%al, %al
	jne	L2025
	jmp	L2043
	.p2align 4,,10
L2011:
	addl	$1, %esi
	movzbl	(%esi), %eax
	movl	$0, 20(%esp)
	testb	%al, %al
	jne	L2025
	jmp	L2043
	.p2align 4,,10
L2044:
	movl	$LC143, 16(%edi)
	movl	$-1, 28(%edi)
	movl	$LC143, %edx
	movl	$-1, 32(%edi)
	movl	$LC146, 12(%edi)
	jmp	L1991
	.p2align 4,,10
L2040:
	movl	(%eax), %eax
	cmpb	$0, 6(%eax)
	jne	L1995
	movl	28(%esp), %ecx
	cmpl	20(%ecx), %ebp
	je	L1996
	movl	12(%ebp), %edx
L1997:
	movl	16(%eax), %eax
	subl	12(%eax), %edx
	sarl	$2, %edx
	subl	$1, %edx
	js	L1995
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L2013
	movl	(%eax,%edx,4), %eax
	jmp	L1994
	.p2align 4,,10
L2038:
	movl	8(%eax), %eax
	addl	$1, 16(%esp)
	xorl	%edx, %edx
	movl	-16(%eax), %ebx
	subl	$16, %eax
	movl	%eax, 8(%ebp)
	jmp	L1977
	.p2align 4,,10
L2042:
	movl	%ebp, %eax
	movl	$1, %edx
	call	_luaD_growstack
	movl	8(%ebp), %eax
	jmp	L2000
	.p2align 4,,10
L2041:
	movl	16(%esp), %eax
	movl	$76, 4(%esp)
	movl	%eax, (%esp)
	call	_strchr
	testl	%eax, %eax
	je	L2019
	cmpb	$0, 6(%ebx)
	jne	L2002
L2003:
	movl	%ebp, %eax
	xorl	%esi, %esi
	call	_luaH_new.constprop.166
	movl	%eax, 16(%esp)
	movl	16(%ebx), %eax
	movl	20(%eax), %edi
	movl	48(%eax), %eax
	testl	%eax, %eax
	jle	L2007
	.p2align 4,,10
L2024:
	movl	(%edi,%esi,4), %ecx
	movl	16(%esp), %edx
	movl	%ebp, %eax
	addl	$1, %esi
	call	_luaH_setnum
	movl	$1, (%eax)
	movl	$1, 8(%eax)
	movl	16(%ebx), %eax
	cmpl	48(%eax), %esi
	jl	L2024
L2007:
	movl	8(%ebp), %eax
	movl	16(%esp), %ebx
	movl	$5, 8(%eax)
	movl	%ebx, (%eax)
	movl	8(%ebp), %eax
	jmp	L2004
	.p2align 4,,10
L2013:
	xorl	%eax, %eax
	jmp	L1994
L2039:
	movl	%esi, %eax
	jmp	L1980
	.p2align 4,,10
L1978:
	leal	36(%edi), %eax
	movl	$60, %ecx
	movl	$LC145, %edx
	movl	$LC75, 8(%edi)
	movl	$LC75, 4(%edi)
	movl	$LC144, 12(%edi)
	movl	$-1, 20(%edi)
	movl	$-1, 28(%edi)
	movl	$-1, 32(%edi)
	movl	$LC145, 16(%edi)
	call	_luaO_chunkid
	movl	16(%esp), %eax
	movl	$0, 24(%edi)
	movl	$102, 4(%esp)
	movl	%eax, (%esp)
	call	_strchr
	testl	%eax, %eax
	je	L2045
	movl	8(%ebp), %eax
	xorl	%ebx, %ebx
	movl	$1, 20(%esp)
	movl	$0, 8(%eax)
	jmp	L1999
L1996:
	movl	24(%ecx), %edx
	movl	%edx, 12(%ebp)
	jmp	L1997
L2045:
	movl	16(%esp), %eax
	movl	$76, 4(%esp)
	movl	%eax, (%esp)
	call	_strchr
	testl	%eax, %eax
	movl	$1, 20(%esp)
	jne	L2002
	jmp	L2019
	.cfi_endproc
LFE181:
	.section	.text.unlikely,"x"
LCOLDE147:
	.text
LHOTE147:
	.section	.text.unlikely,"x"
LCOLDB148:
	.text
LHOTB148:
	.p2align 4,,15
	.def	_open_func;	.scl	3;	.type	32;	.endef
_open_func:
LFB292:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	52(%eax), %edi
	movl	$76, (%esp)
	movl	%edi, %eax
	call	_luaM_realloc_
	movl	%eax, %ebx
	movl	16(%edi), %eax
	movl	28(%eax), %edx
	movl	%edx, (%ebx)
	movl	%ebx, 28(%eax)
	movzbl	20(%eax), %eax
	movb	$9, 4(%ebx)
	movb	$0, 72(%ebx)
	movb	$0, 73(%ebx)
	movb	$0, 74(%ebx)
	movb	$0, 75(%ebx)
	movl	$0, 8(%ebx)
	movl	$0, 40(%ebx)
	andl	$3, %eax
	movl	$0, 16(%ebx)
	movl	$0, 52(%ebx)
	movb	%al, 5(%ebx)
	movl	48(%ebp), %eax
	movl	$0, 12(%ebx)
	movl	$0, 44(%ebx)
	movl	$0, 48(%ebx)
	movl	$0, 36(%ebx)
	movl	$0, 28(%ebx)
	movl	$0, 20(%ebx)
	movl	$0, 56(%ebx)
	movl	$0, 24(%ebx)
	movl	$0, 60(%ebx)
	movl	$0, 64(%ebx)
	movl	%eax, 8(%esi)
	xorl	%eax, %eax
	movl	%ebx, (%esi)
	movl	%ebp, 12(%esi)
	movl	%edi, 16(%esi)
	movl	%esi, 48(%ebp)
	movl	$0, 24(%esi)
	movl	$-1, 28(%esi)
	movw	%ax, 48(%esi)
	movb	$0, 50(%esi)
	movl	64(%ebp), %eax
	movl	$-1, 32(%esi)
	movl	$0, 36(%esi)
	movl	$0, 40(%esi)
	movl	$0, 44(%esi)
	movl	$0, 20(%esi)
	movl	%eax, 32(%ebx)
	movl	%edi, %eax
	movb	$2, 75(%ebx)
	call	_luaH_new.constprop.166
	movl	8(%edi), %edx
	movl	%eax, 4(%esi)
	movl	%eax, (%edx)
	movl	$5, 8(%edx)
	movl	8(%edi), %eax
	movl	28(%edi), %edx
	subl	%eax, %edx
	cmpl	$16, %edx
	jle	L2050
L2047:
	leal	16(%eax), %edx
	movl	%edx, 8(%edi)
	movl	%ebx, 16(%eax)
	movl	$9, 24(%eax)
	movl	28(%edi), %edx
	movl	8(%edi), %eax
	subl	%eax, %edx
	cmpl	$16, %edx
	jg	L2048
	movl	%edi, %eax
	movl	$1, %edx
	call	_luaD_growstack
	movl	8(%edi), %eax
L2048:
	addl	$16, %eax
	movl	%eax, 8(%edi)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2050:
	.cfi_restore_state
	movl	%edi, %eax
	movl	$1, %edx
	call	_luaD_growstack
	movl	8(%edi), %eax
	jmp	L2047
	.cfi_endproc
LFE292:
	.section	.text.unlikely,"x"
LCOLDE148:
	.text
LHOTE148:
	.section .rdata,"dr"
LC149:
	.ascii "constant table overflow\0"
	.section	.text.unlikely,"x"
LCOLDB150:
	.text
LHOTB150:
	.p2align 4,,15
	.def	_addk;	.scl	3;	.type	32;	.endef
_addk:
LFB232:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%ecx, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	movl	%edx, %edi
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	16(%eax), %eax
	movl	4(%esi), %ebx
	movl	%eax, 20(%esp)
	movl	%ebx, %eax
	call	_luaH_get
	cmpl	$_luaO_nilobject_, %eax
	movb	$0, 6(%ebx)
	je	L2077
	cmpl	$3, 8(%eax)
	je	L2078
L2056:
	movl	(%esi), %edi
	fildl	40(%esi)
	movl	40(%edi), %ebx
	fstpl	(%eax)
	movl	$3, 8(%eax)
	movl	40(%edi), %eax
	cmpl	%eax, 40(%esi)
	jge	L2058
	movl	8(%edi), %edx
L2059:
	cmpl	%eax, %ebx
	jge	L2064
	sall	$4, %ebx
	sall	$4, %eax
	addl	%edx, %ebx
	addl	%edx, %eax
	.p2align 4,,10
L2063:
	movl	$0, 8(%ebx)
	addl	$16, %ebx
	cmpl	%ebx, %eax
	jne	L2063
L2064:
	movl	40(%esi), %eax
	movl	4(%ebp), %ebx
	movl	%eax, %ecx
	sall	$4, %ecx
	addl	%ecx, %edx
	movl	0(%ebp), %ecx
	movl	%ebx, 4(%edx)
	movl	%ecx, (%edx)
	movl	8(%ebp), %ecx
	movl	%ecx, 8(%edx)
	cmpl	$3, 8(%ebp)
	jle	L2062
	movl	0(%ebp), %edx
	testb	$3, 5(%edx)
	je	L2062
	movzbl	5(%edi), %ecx
	testb	$4, %cl
	je	L2062
	movl	20(%esp), %eax
	movl	16(%eax), %eax
	cmpb	$1, 21(%eax)
	je	L2079
	movzbl	20(%eax), %eax
	andl	$-8, %ecx
	andl	$3, %eax
	orl	%eax, %ecx
	movb	%cl, 5(%edi)
	movl	40(%esi), %eax
L2062:
	leal	1(%eax), %edx
	movl	%edx, 40(%esi)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2058:
	.cfi_restore_state
	movl	8(%edi), %edx
	movl	20(%esp), %eax
	leal	40(%edi), %ecx
	movl	$LC149, 8(%esp)
	movl	$262143, 4(%esp)
	movl	$16, (%esp)
	call	_luaM_growaux_
	movl	%eax, 8(%edi)
	movl	%eax, %edx
	movl	40(%edi), %eax
	jmp	L2059
	.p2align 4,,10
L2077:
	movl	8(%edi), %eax
	testl	%eax, %eax
	je	L2080
	cmpl	$3, %eax
	je	L2081
L2054:
	movl	20(%esp), %eax
	movl	%edi, %ecx
	movl	%ebx, %edx
	call	_newkey
	cmpl	$3, 8(%eax)
	jne	L2056
L2078:
	fldl	(%eax)
	fnstcw	30(%esp)
	movzwl	30(%esp), %eax
	movb	$12, %ah
	movw	%ax, 28(%esp)
	fldcw	28(%esp)
	fistpl	24(%esp)
	fldcw	30(%esp)
	movl	24(%esp), %eax
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L2080:
	.cfi_restore_state
	movl	20(%esp), %eax
	movl	$LC132, 4(%esp)
	movl	%eax, (%esp)
	call	_luaG_runerror
	jmp	L2054
L2081:
	fldl	(%edi)
	fucomip	%st(0), %st
	jnp	L2054
	movl	20(%esp), %eax
	movl	$LC133, 4(%esp)
	movl	%eax, (%esp)
	call	_luaG_runerror
	jmp	L2054
L2079:
	call	_reallymarkobject
	movl	40(%esi), %eax
	jmp	L2062
	.cfi_endproc
LFE232:
	.section	.text.unlikely,"x"
LCOLDE150:
	.text
LHOTE150:
	.section	.text.unlikely,"x"
LCOLDB151:
	.text
LHOTB151:
	.p2align 4,,15
	.def	_discharge2reg;	.scl	3;	.type	32;	.endef
_discharge2reg:
LFB241:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%ecx, %edi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edx, %ebx
	movl	%eax, %esi
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	call	_luaK_dischargevars
	movl	(%ebx), %eax
	cmpl	$12, %eax
	ja	L2082
	jmp	*L2085(,%eax,4)
	.section .rdata,"dr"
	.align 4
L2085:
	.long	L2082
	.long	L2084
	.long	L2086
	.long	L2086
	.long	L2087
	.long	L2088
	.long	L2082
	.long	L2082
	.long	L2082
	.long	L2082
	.long	L2082
	.long	L2089
	.long	L2090
	.text
	.p2align 4,,10
L2090:
	movl	8(%ebx), %eax
	cmpl	%eax, %edi
	je	L2091
	movl	12(%esi), %edx
	sall	$23, %eax
	movl	8(%edx), %ecx
	movl	%edi, %edx
	sall	$6, %edx
	orl	%eax, %edx
	movl	%esi, %eax
	call	_luaK_code
	.p2align 4,,10
L2091:
	movl	%edi, 8(%ebx)
	movl	$12, (%ebx)
L2082:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2084:
	.cfi_restore_state
	movl	$1, %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	call	_luaK_nil
	jmp	L2091
	.p2align 4,,10
L2086:
	movl	12(%esi), %edx
	movl	8(%edx), %ecx
	xorl	%edx, %edx
	cmpl	$2, %eax
	sete	%dl
	sall	$23, %edx
	orl	$2, %edx
L2093:
	movl	%edi, %eax
	sall	$6, %eax
	orl	%eax, %edx
	movl	%esi, %eax
	call	_luaK_code
	jmp	L2091
	.p2align 4,,10
L2087:
	movl	8(%ebx), %edx
	movl	12(%esi), %eax
	sall	$14, %edx
	movl	8(%eax), %ecx
	orl	$1, %edx
	jmp	L2093
	.p2align 4,,10
L2088:
	fldl	8(%ebx)
	movl	%esp, %ecx
	movl	%esp, %edx
	movl	%esi, %eax
	movl	$3, 8(%esp)
	fstpl	(%esp)
	call	_addk
	movl	12(%esi), %edx
	sall	$14, %eax
	movl	8(%edx), %ecx
	movl	%edi, %edx
	sall	$6, %edx
	orl	$1, %edx
	orl	%eax, %edx
	movl	%esi, %eax
	call	_luaK_code
	jmp	L2091
	.p2align 4,,10
L2089:
	movl	(%esi), %eax
	movl	8(%ebx), %edx
	movl	12(%eax), %eax
	leal	(%eax,%edx,4), %ecx
	movl	%edi, %eax
	sall	$6, %eax
	movl	(%ecx), %edx
	andl	$16320, %eax
	andl	$-16321, %edx
	orl	%edx, %eax
	movl	%eax, (%ecx)
	jmp	L2091
	.cfi_endproc
LFE241:
	.section	.text.unlikely,"x"
LCOLDE151:
	.text
LHOTE151:
	.section	.text.unlikely,"x"
LCOLDB152:
	.text
LHOTB152:
	.p2align 4,,15
	.def	_exp2reg;	.scl	3;	.type	32;	.endef
_exp2reg:
LFB243:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %esi
	movl	%eax, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	%ecx, 24(%esp)
	call	_discharge2reg
	cmpl	$10, (%esi)
	je	L2121
L2095:
	movl	16(%esi), %eax
	movl	20(%esi), %ebp
	cmpl	%ebp, %eax
	jne	L2097
	jmp	L2096
	.p2align 4,,10
L2122:
	leal	1(%edx,%eax), %eax
L2097:
	cmpl	$-1, %eax
	je	L2102
	movl	(%ebx), %edx
	testl	%eax, %eax
	movl	12(%edx), %edx
	leal	(%edx,%eax,4), %ecx
	jle	L2107
	movl	-4(%ecx), %edi
	leal	-4(%ecx), %edx
	andl	$63, %edi
	cmpb	$0, _luaP_opmodes(%edi)
	cmovns	%ecx, %edx
L2098:
	movl	(%edx), %edx
	andl	$63, %edx
	cmpl	$27, %edx
	jne	L2099
	movl	(%ecx), %edx
	shrl	$14, %edx
	subl	$131071, %edx
	cmpl	$-1, %edx
	jne	L2122
	jmp	L2102
	.p2align 4,,10
L2124:
	leal	1(%ebp,%eax), %ebp
L2102:
	cmpl	$-1, %ebp
	je	L2123
	movl	(%ebx), %eax
	testl	%ebp, %ebp
	movl	12(%eax), %eax
	leal	(%eax,%ebp,4), %edx
	jle	L2109
	movl	-4(%edx), %ecx
	leal	-4(%edx), %eax
	andl	$63, %ecx
	cmpb	$0, _luaP_opmodes(%ecx)
	cmovns	%edx, %eax
L2103:
	movl	(%eax), %eax
	andl	$63, %eax
	cmpl	$27, %eax
	jne	L2099
	movl	(%edx), %eax
	shrl	$14, %eax
	subl	$131071, %eax
	cmpl	$-1, %eax
	jne	L2124
	movl	$-1, 28(%esp)
	movl	$-1, %ebp
L2104:
	movl	24(%ebx), %edi
	movl	%ebp, 4(%esp)
	movl	%ebx, %eax
	movl	24(%esp), %ebp
	movl	%edi, 28(%ebx)
	movl	20(%esi), %edx
	movl	%edi, %ecx
	movl	%ebp, (%esp)
	call	_patchlistaux
	movl	28(%esp), %eax
	movl	16(%esi), %edx
	movl	%edi, %ecx
	movl	%ebp, (%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	call	_patchlistaux
L2096:
	movl	24(%esp), %eax
	movl	$-1, 16(%esi)
	movl	$-1, 20(%esi)
	movl	$12, (%esi)
	movl	%eax, 8(%esi)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2099:
	.cfi_restore_state
	cmpl	$10, (%esi)
	movl	$-1, %edi
	je	L2106
	movl	%ebx, %eax
	call	_luaK_jump
	movl	%eax, %edi
L2106:
	movl	24(%ebx), %eax
	movl	%eax, 28(%ebx)
	movl	24(%esp), %eax
	sall	$6, %eax
	movl	%eax, %edx
	movl	12(%ebx), %eax
	movl	%edx, 28(%esp)
	orl	$16386, %edx
	movl	8(%eax), %ecx
	movl	%ebx, %eax
	call	_luaK_code
	movl	%eax, %ebp
	movl	24(%ebx), %eax
	movl	28(%esp), %edx
	movl	%eax, 28(%ebx)
	movl	12(%ebx), %eax
	orl	$8388610, %edx
	movl	8(%eax), %ecx
	movl	%ebx, %eax
	call	_luaK_code
	movl	%eax, 28(%esp)
	movl	24(%ebx), %eax
	leal	32(%ebx), %edx
	movl	%edi, %ecx
	movl	%eax, 28(%ebx)
	movl	%ebx, %eax
	call	_luaK_concat
	jmp	L2104
	.p2align 4,,10
L2121:
	movl	8(%esi), %ecx
	leal	16(%esi), %edx
	movl	%ebx, %eax
	call	_luaK_concat
	jmp	L2095
	.p2align 4,,10
L2107:
	movl	%ecx, %edx
	jmp	L2098
	.p2align 4,,10
L2123:
	movl	$-1, 28(%esp)
	jmp	L2104
L2109:
	movl	%edx, %eax
	jmp	L2103
	.cfi_endproc
LFE243:
	.section	.text.unlikely,"x"
LCOLDE152:
	.text
LHOTE152:
	.section	.text.unlikely,"x"
LCOLDB153:
	.text
LHOTB153:
	.p2align 4,,15
	.def	_luaK_exp2nextreg;	.scl	3;	.type	32;	.endef
_luaK_exp2nextreg:
LFB244:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %esi
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	call	_luaK_dischargevars
	cmpl	$12, (%esi)
	je	L2128
L2126:
	movl	%ebx, %eax
	movl	$1, %edx
	call	_luaK_checkstack
	movl	36(%ebx), %ecx
	movl	%esi, %edx
	leal	1(%ecx), %eax
	movl	%eax, 36(%ebx)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_exp2reg
	.p2align 4,,10
L2128:
	.cfi_restore_state
	movl	8(%esi), %eax
	testb	$1, %ah
	jne	L2126
	movzbl	50(%ebx), %edx
	cmpl	%edx, %eax
	jl	L2126
	subl	$1, 36(%ebx)
	jmp	L2126
	.cfi_endproc
LFE244:
	.section	.text.unlikely,"x"
LCOLDE153:
	.text
LHOTE153:
	.section	.text.unlikely,"x"
LCOLDB154:
	.text
LHOTB154:
	.p2align 4,,15
	.def	_adjust_assign.isra.94;	.scl	3;	.type	32;	.endef
_adjust_assign.isra.94:
LFB658:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edx, %ebx
	subl	%ecx, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %eax
	movl	(%eax), %edx
	leal	-13(%edx), %ecx
	cmpl	$1, %ecx
	jbe	L2140
	testl	%edx, %edx
	jne	L2141
L2134:
	testl	%ebx, %ebx
	jle	L2129
	movl	36(%esi), %edi
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_luaK_checkstack
	addl	%ebx, 36(%esi)
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_luaK_nil
	.p2align 4,,10
L2140:
	.cfi_restore_state
	movl	%ebx, %edi
	leal	8(%eax), %ecx
	addl	$1, %edi
	js	L2131
	movl	%edi, (%esp)
	movl	%esi, %eax
	call	_luaK_setreturns.isra.92
	cmpl	$1, %edi
	jle	L2129
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_luaK_checkstack
	addl	%ebx, 36(%esi)
L2129:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2141:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%esi, %eax
	call	_luaK_exp2nextreg
	jmp	L2134
	.p2align 4,,10
L2131:
	movl	$0, 32(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_luaK_setreturns.isra.92
	.cfi_endproc
LFE658:
	.section	.text.unlikely,"x"
LCOLDE154:
	.text
LHOTE154:
	.section	.text.unlikely,"x"
LCOLDB155:
	.text
LHOTB155:
	.p2align 4,,15
	.def	_luaK_exp2anyreg;	.scl	3;	.type	32;	.endef
_luaK_exp2anyreg:
LFB245:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %ebx
	movl	%eax, %esi
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	call	_luaK_dischargevars
	cmpl	$12, (%ebx)
	je	L2148
L2143:
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_luaK_exp2nextreg
L2147:
	movl	8(%ebx), %eax
L2145:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2148:
	.cfi_restore_state
	movl	20(%ebx), %eax
	cmpl	%eax, 16(%ebx)
	je	L2147
	movzbl	50(%esi), %eax
	movl	8(%ebx), %ecx
	cmpl	%eax, %ecx
	jl	L2143
	movl	%esi, %eax
	movl	%ebx, %edx
	call	_exp2reg
	movl	8(%ebx), %eax
	jmp	L2145
	.cfi_endproc
LFE245:
	.section	.text.unlikely,"x"
LCOLDE155:
	.text
LHOTE155:
	.section	.text.unlikely,"x"
LCOLDB156:
	.text
LHOTB156:
	.p2align 4,,15
	.def	_luaK_exp2RK;	.scl	3;	.type	32;	.endef
_luaK_exp2RK:
LFB247:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %esi
	movl	%edx, %ebx
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	movl	20(%edx), %eax
	cmpl	%eax, 16(%edx)
	movl	%esi, %eax
	je	L2150
	call	_luaK_exp2anyreg
	movl	(%ebx), %eax
	cmpl	$4, %eax
	je	L2153
L2166:
	ja	L2154
	cmpl	$1, %eax
	jnb	L2155
L2152:
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_luaK_exp2anyreg
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2154:
	.cfi_restore_state
	cmpl	$5, %eax
	jne	L2152
L2155:
	cmpl	$255, 40(%esi)
	jg	L2152
	cmpl	$1, %eax
	je	L2164
	cmpl	$5, %eax
	je	L2165
	cmpl	$2, %eax
	leal	16(%esp), %ecx
	movl	$1, 24(%esp)
	sete	%al
	movzbl	%al, %eax
	movl	%ecx, %edx
	movl	%eax, 16(%esp)
	movl	%esi, %eax
	call	_addk
L2157:
	movl	%eax, 8(%ebx)
	movl	$4, (%ebx)
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	orb	$1, %ah
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2150:
	.cfi_restore_state
	call	_luaK_dischargevars
	movl	(%ebx), %eax
	cmpl	$4, %eax
	jne	L2166
L2153:
	movl	8(%ebx), %eax
	cmpl	$255, %eax
	jg	L2152
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	orb	$1, %ah
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2165:
	.cfi_restore_state
	leal	16(%esp), %ecx
	fldl	8(%ebx)
	movl	%esi, %eax
	movl	$3, 24(%esp)
	movl	%ecx, %edx
	fstpl	16(%esp)
	call	_addk
	jmp	L2157
	.p2align 4,,10
L2164:
	movl	4(%esi), %eax
	leal	16(%esp), %ecx
	movl	%esp, %edx
	movl	$0, 24(%esp)
	movl	$5, 8(%esp)
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	_addk
	jmp	L2157
	.cfi_endproc
LFE247:
	.section	.text.unlikely,"x"
LCOLDE156:
	.text
LHOTE156:
	.section	.text.unlikely,"x"
LCOLDB157:
	.text
LHOTB157:
	.p2align 4,,15
	.def	_codearith;	.scl	3;	.type	32;	.endef
_codearith:
LFB257:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	movl	%ecx, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	cmpl	$5, (%ecx)
	je	L2203
	jmp	L2168
	.p2align 4,,10
L2211:
	fstp	%st(0)
	fstp	%st(0)
	jmp	L2168
L2212:
	fstp	%st(0)
	jmp	L2168
	.p2align 4,,10
L2213:
	fstp	%st(0)
	fstp	%st(0)
	jmp	L2168
	.p2align 4,,10
L2214:
	fstp	%st(0)
	fstp	%st(0)
	.p2align 4,,10
L2168:
	leal	-18(%ebp), %eax
	xorl	%ecx, %ecx
	movl	$0, 16(%esp)
	andl	$-3, %eax
	jne	L2204
L2185:
	movl	%ebx, %edx
	movl	%esi, %eax
	movl	%ecx, 24(%esp)
	call	_luaK_exp2RK
	movl	24(%esp), %ecx
	movl	%eax, %edi
	cmpl	%ecx, %eax
	jg	L2205
	movl	64(%esp), %eax
	cmpl	$12, (%eax)
	je	L2206
L2190:
	cmpl	$12, (%ebx)
	je	L2207
L2189:
	movl	12(%esi), %eax
	orl	16(%esp), %ebp
	sall	$23, %edi
	movl	%edi, %edx
	movl	8(%eax), %ecx
	movl	%esi, %eax
	orl	%ebp, %edx
	call	_luaK_code
	movl	$11, (%ebx)
	movl	%eax, 8(%ebx)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2205:
	.cfi_restore_state
	cmpl	$12, (%ebx)
	je	L2208
L2187:
	movl	64(%esp), %eax
	cmpl	$12, (%eax)
	jne	L2189
	leal	8(%eax), %edx
	movl	%esi, %eax
	call	_freeexp.isra.26.part.27
	jmp	L2189
	.p2align 4,,10
L2203:
	cmpl	$-1, 16(%ecx)
	jne	L2168
	cmpl	$-1, 20(%ecx)
	jne	L2168
	movl	64(%esp), %eax
	cmpl	$5, (%eax)
	jne	L2168
	cmpl	$-1, 16(%eax)
	jne	L2168
	cmpl	$-1, 20(%eax)
	jne	L2168
	fldl	8(%ebx)
	fldl	8(%eax)
	leal	-12(%ebp), %eax
	cmpl	$8, %eax
	ja	L2209
	jmp	*L2193(,%eax,4)
	.section .rdata,"dr"
	.align 4
L2193:
	.long	L2171
	.long	L2173
	.long	L2174
	.long	L2175
	.long	L2179
	.long	L2182
	.long	L2183
	.long	L2210
	.long	L2211
	.text
	.p2align 4,,10
L2204:
	movl	64(%esp), %edx
	movl	%esi, %eax
	call	_luaK_exp2RK
	movl	%eax, %ecx
	sall	$14, %eax
	movl	%eax, 16(%esp)
	jmp	L2185
	.p2align 4,,10
L2183:
	fstp	%st(0)
	fchs
	.p2align 4,,10
L2172:
	fucomi	%st(0), %st
	jp	L2212
L2198:
	fstpl	8(%ebx)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2182:
	.cfi_restore_state
	fstpl	8(%esp)
	fstpl	(%esp)
	call	_pow
	jmp	L2172
	.p2align 4,,10
L2179:
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jp	L2196
	je	L2213
L2196:
	fld	%st(1)
	fstpl	24(%esp)
	fdivr	%st, %st(1)
	fstpl	16(%esp)
	fstpl	(%esp)
	call	_floor
	fldl	16(%esp)
	fmulp	%st, %st(1)
	fldl	24(%esp)
	fsubp	%st, %st(1)
	jmp	L2172
	.p2align 4,,10
L2175:
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jp	L2176
	je	L2214
L2176:
	fdivrp	%st, %st(1)
	jmp	L2172
	.p2align 4,,10
L2174:
	fmulp	%st, %st(1)
	jmp	L2172
	.p2align 4,,10
L2173:
	fsubrp	%st, %st(1)
	jmp	L2172
	.p2align 4,,10
L2171:
	faddp	%st, %st(1)
	jmp	L2172
	.p2align 4,,10
L2209:
	fstp	%st(0)
	fstp	%st(0)
	jmp	L2195
	.p2align 4,,10
L2210:
	fstp	%st(0)
	fstp	%st(0)
L2195:
	fldz
	jmp	L2198
	.p2align 4,,10
L2207:
	leal	8(%ebx), %edx
	movl	%esi, %eax
	call	_freeexp.isra.26.part.27
	jmp	L2189
	.p2align 4,,10
L2208:
	leal	8(%ebx), %edx
	movl	%esi, %eax
	call	_freeexp.isra.26.part.27
	jmp	L2187
	.p2align 4,,10
L2206:
	leal	8(%eax), %edx
	movl	%esi, %eax
	call	_freeexp.isra.26.part.27
	jmp	L2190
	.cfi_endproc
LFE257:
	.section	.text.unlikely,"x"
LCOLDE157:
	.text
LHOTE157:
	.section	.text.unlikely,"x"
LCOLDB158:
	.text
LHOTB158:
	.p2align 4,,15
	.def	_codecomp;	.scl	3;	.type	32;	.endef
_codecomp:
LFB258:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %edi
	movl	52(%esp), %ebp
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%edi, %edx
	call	_luaK_exp2RK
	movl	%ebp, %edx
	movl	%eax, %ebx
	movl	%esi, %eax
	call	_luaK_exp2RK
	cmpl	$12, 0(%ebp)
	movl	%eax, %ecx
	je	L2226
L2216:
	cmpl	$12, (%edi)
	je	L2227
L2217:
	movl	8(%esp), %eax
	testl	%eax, %eax
	jne	L2221
	cmpl	$23, 4(%esp)
	movl	$64, %ebp
	je	L2221
L2218:
	movl	12(%esi), %eax
	movl	4(%esp), %edx
	sall	$23, %ecx
	sall	$14, %ebx
	movl	8(%eax), %eax
	orl	%ebp, %edx
	orl	%ecx, %edx
	orl	%ebx, %edx
	movl	%eax, %ecx
	movl	%esi, %eax
	call	_luaK_code
	movl	%esi, %eax
	call	_luaK_jump
	movl	$10, (%edi)
	movl	%eax, 8(%edi)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2221:
	.cfi_restore_state
	movl	8(%esp), %ebp
	movl	%ecx, %eax
	movl	%ebx, %ecx
	movl	%eax, %ebx
	sall	$6, %ebp
	jmp	L2218
	.p2align 4,,10
L2227:
	leal	8(%edi), %edx
	movl	%esi, %eax
	movl	%ecx, 12(%esp)
	call	_freeexp.isra.26.part.27
	movl	12(%esp), %ecx
	jmp	L2217
	.p2align 4,,10
L2226:
	leal	8(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	call	_freeexp.isra.26.part.27
	movl	12(%esp), %ecx
	jmp	L2216
	.cfi_endproc
LFE258:
	.section	.text.unlikely,"x"
LCOLDE158:
	.text
LHOTE158:
	.section	.text.unlikely,"x"
LCOLDB159:
	.text
LHOTB159:
	.p2align 4,,15
	.def	_luaK_storevar;	.scl	3;	.type	32;	.endef
_luaK_storevar:
LFB248:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	(%edx), %eax
	movl	%edx, %edi
	movl	%ecx, %ebx
	cmpl	$7, %eax
	je	L2230
	jbe	L2238
	cmpl	$8, %eax
	je	L2233
	cmpl	$9, %eax
	jne	L2229
	movl	%ecx, %edx
	movl	%esi, %eax
	call	_luaK_exp2RK
	movl	12(%esi), %edx
	sall	$14, %eax
	movl	8(%edx), %ecx
	movl	8(%edi), %edx
	movl	12(%edi), %edi
	sall	$6, %edx
	sall	$23, %edi
	orl	%edx, %edi
	orl	$9, %edi
	orl	%eax, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	call	_luaK_code
L2229:
	cmpl	$12, (%ebx)
	je	L2239
L2228:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2233:
	.cfi_restore_state
	movl	%ecx, %edx
	movl	%esi, %eax
	call	_luaK_exp2anyreg
	movl	12(%esi), %edx
	sall	$6, %eax
	movl	8(%edx), %ecx
	movl	8(%edi), %edx
	sall	$14, %edx
	orl	$7, %edx
	orl	%eax, %edx
	movl	%esi, %eax
	call	_luaK_code
	cmpl	$12, (%ebx)
	jne	L2228
L2239:
	leal	8(%ebx), %edx
	movl	%esi, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_freeexp.isra.26.part.27
	.p2align 4,,10
L2238:
	.cfi_restore_state
	cmpl	$6, %eax
	jne	L2229
	cmpl	$12, (%ecx)
	je	L2240
L2235:
	movl	8(%edi), %ecx
	movl	%ebx, %edx
	movl	%esi, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_exp2reg
	.p2align 4,,10
L2230:
	.cfi_restore_state
	movl	%ecx, %edx
	movl	%esi, %eax
	call	_luaK_exp2anyreg
	movl	12(%esi), %edx
	sall	$6, %eax
	movl	8(%edx), %ecx
	movl	8(%edi), %edx
	sall	$23, %edx
	orl	$8, %edx
	orl	%eax, %edx
	movl	%esi, %eax
	call	_luaK_code
	jmp	L2229
	.p2align 4,,10
L2240:
	leal	8(%ecx), %edx
	movl	%esi, %eax
	call	_freeexp.isra.26.part.27
	jmp	L2235
	.cfi_endproc
LFE248:
	.section	.text.unlikely,"x"
LCOLDE159:
	.text
LHOTE159:
	.section .rdata,"dr"
LC160:
	.ascii "loop in settable\0"
	.section	.text.unlikely,"x"
LCOLDB161:
	.text
LHOTB161:
	.p2align 4,,15
	.def	_luaV_settable;	.scl	3;	.type	32;	.endef
_luaV_settable:
LFB341:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$100, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	movl	%edx, %ebx
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	8(%edx), %edx
	movl	96(%esp), %eax
	movl	%ecx, 28(%esp)
	movl	%ebp, 24(%esp)
	movl	%eax, 44(%esp)
	.p2align 4,,10
L2261:
	cmpl	$5, %edx
	je	L2290
	cmpl	$7, %edx
	jne	L2285
	movl	(%ebx), %eax
	movl	8(%eax), %edi
	testl	%edi, %edi
	je	L2265
L2295:
	movzbl	7(%edi), %ecx
	movl	16(%esi), %eax
	movl	$1, %ebp
	movl	192(%eax), %eax
	sall	%cl, %ebp
	movl	%ebp, %ecx
	movl	24(%esp), %ebp
	subl	$1, %ecx
	andl	8(%eax), %ecx
	sall	$5, %ecx
	addl	16(%edi), %ecx
	jmp	L2258
	.p2align 4,,10
L2257:
	movl	28(%ecx), %ecx
	testl	%ecx, %ecx
	je	L2291
L2258:
	cmpl	$4, 24(%ecx)
	jne	L2257
	cmpl	16(%ecx), %eax
	jne	L2257
	movl	8(%ecx), %eax
	movl	%ebp, 24(%esp)
	testl	%eax, %eax
	je	L2256
	movl	%eax, %edx
L2250:
	cmpl	$6, %edx
	je	L2292
L2259:
	subl	$1, 24(%esp)
	movl	4(%ecx), %ebx
	movl	(%ecx), %ecx
	movl	%edx, 56(%esp)
	movl	%ebx, 52(%esp)
	leal	48(%esp), %ebx
	movl	%ecx, 48(%esp)
	jne	L2261
	movl	$LC160, 4(%esp)
	movl	%esi, (%esp)
	call	_luaG_runerror
L2241:
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2291:
	.cfi_restore_state
	movl	%ebp, 24(%esp)
	movl	$_luaO_nilobject_, %ecx
L2256:
	movl	_luaT_typenames(,%edx,4), %eax
	movl	$LC90, 8(%esp)
	movl	$LC36, 4(%esp)
	movl	%esi, (%esp)
	movl	%ecx, 32(%esp)
	movl	%eax, 12(%esp)
	call	_luaG_runerror
	movl	32(%esp), %ecx
	movl	8(%ecx), %edx
	cmpl	$6, %edx
	jne	L2259
L2292:
	movl	(%ecx), %edi
	movl	4(%ecx), %ebp
	movl	8(%esi), %edx
	movl	%edi, (%edx)
	movl	%ebp, 4(%edx)
	movl	(%ebx), %edi
	movl	4(%ebx), %ebp
	movl	$6, 8(%edx)
	movl	%edi, 16(%edx)
	movl	%ebp, 20(%edx)
	movl	8(%ebx), %eax
	movl	%eax, 24(%edx)
	movl	28(%esp), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %ebx
	movl	%ecx, 32(%edx)
	movl	%ebx, 36(%edx)
	movl	8(%eax), %eax
	movl	%eax, 40(%edx)
	movl	44(%esp), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %ebx
	movl	%ecx, 48(%edx)
	movl	%ebx, 52(%edx)
	movl	8(%eax), %eax
	movl	%eax, 56(%edx)
	movl	28(%esi), %eax
	subl	%edx, %eax
	cmpl	$64, %eax
	jle	L2293
L2260:
	leal	64(%edx), %eax
	xorl	%ecx, %ecx
	movl	%eax, 8(%esi)
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	_luaD_call
	.p2align 4,,10
L2290:
	.cfi_restore_state
	movl	(%ebx), %edi
	movl	28(%esp), %edx
	movl	%edi, %eax
	call	_luaH_get
	cmpl	$_luaO_nilobject_, %eax
	movb	$0, 6(%edi)
	je	L2294
L2243:
	movl	8(%eax), %edx
	testl	%edx, %edx
	jne	L2247
	movl	8(%edi), %edx
	testl	%edx, %edx
	movl	%edx, 36(%esp)
	movl	%edx, %ebp
	je	L2247
	movzbl	6(%edx), %edx
	movb	%dl, 43(%esp)
	andl	$2, %edx
	jne	L2247
	movl	16(%esi), %edx
	movzbl	7(%ebp), %ecx
	movl	192(%edx), %edx
	movl	%edx, 32(%esp)
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	movl	32(%esp), %edx
	subl	$1, %ecx
	andl	8(%edx), %ecx
	sall	$5, %ecx
	addl	16(%ebp), %ecx
	movl	24(%esp), %ebp
	jmp	L2251
	.p2align 4,,10
L2248:
	movl	28(%ecx), %ecx
	testl	%ecx, %ecx
	je	L2249
L2251:
	cmpl	$4, 24(%ecx)
	jne	L2248
	cmpl	16(%ecx), %edx
	jne	L2248
	movl	8(%ecx), %edx
	movl	%ebp, 24(%esp)
	testl	%edx, %edx
	jne	L2250
	.p2align 4,,10
L2249:
	movzbl	43(%esp), %edx
	movl	36(%esp), %ebx
	orl	$2, %edx
	movb	%dl, 6(%ebx)
L2247:
	movl	44(%esp), %edx
	movl	4(%edx), %ebx
	movl	(%edx), %ecx
	movl	%ebx, 4(%eax)
	movl	%edx, %ebx
	movl	8(%edx), %edx
	movl	%ecx, (%eax)
	movl	%edx, 8(%eax)
	movb	$0, 6(%edi)
	cmpl	$3, 8(%ebx)
	jle	L2241
	movl	44(%esp), %eax
	movl	(%eax), %eax
	testb	$3, 5(%eax)
	je	L2241
	movzbl	5(%edi), %eax
	testb	$4, %al
	je	L2241
	movl	16(%esi), %edx
	andl	$-5, %eax
	movb	%al, 5(%edi)
	movl	40(%edx), %eax
	movl	%eax, 24(%edi)
	movl	%edi, 40(%edx)
	jmp	L2241
	.p2align 4,,10
L2285:
	movl	16(%esi), %eax
	movl	152(%eax,%edx,4), %edi
	testl	%edi, %edi
	jne	L2295
L2265:
	movl	$_luaO_nilobject_, %ecx
	jmp	L2256
L2294:
	movl	28(%esp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L2296
	cmpl	$3, %eax
	je	L2297
L2245:
	movl	28(%esp), %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	call	_newkey
	jmp	L2243
L2293:
	movl	$4, %edx
	movl	%esi, %eax
	call	_luaD_growstack
	movl	8(%esi), %edx
	jmp	L2260
L2296:
	movl	$LC132, 4(%esp)
	movl	%esi, (%esp)
	call	_luaG_runerror
	jmp	L2245
L2297:
	movl	28(%esp), %eax
	fldl	(%eax)
	fucomip	%st(0), %st
	jnp	L2245
	movl	$LC133, 4(%esp)
	movl	%esi, (%esp)
	call	_luaG_runerror
	jmp	L2245
	.cfi_endproc
LFE341:
	.section	.text.unlikely,"x"
LCOLDE161:
	.text
LHOTE161:
	.section	.text.unlikely,"x"
LCOLDB162:
	.text
LHOTB162:
	.p2align 4,,15
	.def	_lua_setfield;	.scl	3;	.type	32;	.endef
_lua_setfield:
LFB394:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 48
	call	_index2adr
	movl	%esi, (%esp)
	movl	%eax, %edi
	call	_strlen
	movl	%esi, %edx
	movl	%eax, %ecx
	movl	%ebx, %eax
	call	_luaS_newlstr
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	leal	16(%esp), %ecx
	movl	%edi, %edx
	movl	$4, 24(%esp)
	subl	$16, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_luaV_settable
	subl	$16, 8(%ebx)
	addl	$32, %esp
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE394:
	.section	.text.unlikely,"x"
LCOLDE162:
	.text
LHOTE162:
	.section	.text.unlikely,"x"
LCOLDB163:
	.text
LHOTB163:
	.p2align 4,,15
	.def	_GCTM;	.scl	3;	.type	32;	.endef
_GCTM:
LFB151:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	16(%eax), %esi
	movl	48(%esi), %edx
	movl	(%edx), %ebx
	cmpl	%ebx, %edx
	je	L2310
	movl	(%ebx), %ecx
	movl	%ecx, (%edx)
L2302:
	movl	112(%esi), %edx
	movl	(%edx), %edx
	movl	%edx, (%ebx)
	movl	112(%esi), %edx
	movl	%ebx, (%edx)
	movzbl	5(%ebx), %ecx
	movzbl	20(%esi), %edx
	movl	8(%ebx), %ebp
	andl	$-8, %ecx
	andl	$3, %edx
	orl	%ecx, %edx
	testl	%ebp, %ebp
	movb	%dl, 5(%ebx)
	je	L2300
	testb	$4, 6(%ebp)
	je	L2311
L2300:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2311:
	.cfi_restore_state
	movl	%eax, %edi
	movl	16(%eax), %eax
	movl	$2, %edx
	movl	196(%eax), %ecx
	movl	%ebp, %eax
	call	_luaT_gettm
	testl	%eax, %eax
	je	L2300
	movzbl	57(%edi), %ecx
	movb	%cl, 11(%esp)
	movl	64(%esi), %ecx
	movb	$0, 57(%edi)
	movl	4(%eax), %ebp
	movl	%ecx, 12(%esp)
	movl	%edi, %ecx
	movl	68(%esi), %edi
	leal	(%edi,%edi), %edx
	movl	(%eax), %edi
	movl	%edx, 64(%esi)
	movl	8(%ecx), %edx
	movl	%ebp, 4(%edx)
	movl	8(%eax), %eax
	movl	%edi, (%edx)
	movl	%ebx, 16(%edx)
	movl	%ecx, %edi
	movl	$7, 24(%edx)
	movl	%eax, 8(%edx)
	movl	8(%ecx), %edx
	leal	32(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	%edi, %eax
	xorl	%ecx, %ecx
	call	_luaD_call
	movzbl	11(%esp), %ecx
	movl	12(%esp), %eax
	movb	%cl, 57(%edi)
	movl	%eax, 64(%esi)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2310:
	.cfi_restore_state
	movl	$0, 48(%esi)
	jmp	L2302
	.cfi_endproc
LFE151:
	.section	.text.unlikely,"x"
LCOLDE163:
	.text
LHOTE163:
	.section	.text.unlikely,"x"
LCOLDB164:
	.text
LHOTB164:
	.p2align 4,,15
	.def	_luaC_step;	.scl	3;	.type	32;	.endef
_luaC_step:
LFB159:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$2147483646, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	%eax, 24(%esp)
	movl	16(%eax), %eax
	movl	%eax, %edi
	movl	%eax, 32(%esp)
	movl	84(%eax), %eax
	movl	%edi, %ebp
	leal	(%eax,%eax,4), %eax
	addl	%eax, %eax
	cmovne	%eax, %edx
	movl	68(%edi), %eax
	addl	76(%edi), %eax
	subl	64(%edi), %eax
	movl	%edx, 20(%esp)
	movl	%eax, 76(%edi)
	movl	%esi, %eax
	addl	$16, %eax
	cmpb	$4, 21(%ebp)
	movl	%eax, 40(%esp)
	ja	L2402
	.p2align 4,,10
L2575:
	movzbl	21(%ebp), %eax
	jmp	*L2316(,%eax,4)
	.section .rdata,"dr"
	.align 4
L2316:
	.long	L2315
	.long	L2317
	.long	L2318
	.long	L2319
	.long	L2320
	.text
	.p2align 4,,10
L2319:
	movzbl	20(%ebp), %edi
	movl	68(%ebp), %eax
	movl	$41, %esi
	movl	32(%ebp), %ecx
	movl	%eax, 36(%esp)
	xorl	$3, %edi
	movl	%ecx, %eax
	movl	%edi, %ecx
	movl	%eax, %edi
	.p2align 4,,10
L2379:
	movl	(%edi), %ebx
	testl	%ebx, %ebx
	je	L2384
L2573:
	subl	$1, %esi
	je	L2384
	cmpb	$8, 4(%ebx)
	je	L2572
L2380:
	movzbl	5(%ebx), %eax
	movl	%eax, %edx
	xorl	$3, %edx
	testb	%cl, %dl
	je	L2381
	movzbl	20(%ebp), %edx
	andl	$-8, %eax
	movl	%ebx, %edi
	andl	$3, %edx
	orl	%edx, %eax
	movb	%al, 5(%ebx)
	movl	(%edi), %ebx
	testl	%ebx, %ebx
	jne	L2573
L2384:
	movl	%edi, 32(%ebp)
	movl	(%edi), %edx
	testl	%edx, %edx
	je	L2574
L2386:
	movl	68(%ebp), %eax
	addl	72(%ebp), %eax
	subl	36(%esp), %eax
	movl	%eax, 72(%ebp)
	movl	$400, %eax
	jmp	L2314
	.p2align 4,,10
L2318:
	movl	24(%ebp), %eax
	movl	0(%ebp), %edx
	movl	68(%ebp), %ebx
	leal	1(%eax), %ecx
	leal	(%edx,%eax,4), %edx
	movl	24(%esp), %eax
	movl	%ecx, 24(%ebp)
	call	_sweeplist.constprop.163
	movl	8(%ebp), %eax
	cmpl	%eax, 24(%ebp)
	jl	L2378
	movb	$3, 21(%ebp)
L2378:
	movl	68(%ebp), %eax
	addl	72(%ebp), %eax
	subl	%ebx, %eax
	movl	%eax, 72(%ebp)
	movl	$10, %eax
L2314:
	subl	%eax, 20(%esp)
	movl	32(%esp), %eax
	movl	20(%esp), %esi
	cmpb	$0, 21(%eax)
	je	L2389
	testl	%esi, %esi
	jle	L2390
	movl	24(%esp), %eax
	movl	16(%eax), %ebp
	cmpb	$4, 21(%ebp)
	jbe	L2575
L2402:
	xorl	%eax, %eax
	jmp	L2314
	.p2align 4,,10
L2315:
	movl	112(%ebp), %edx
	movl	$0, 36(%ebp)
	movl	$0, 40(%ebp)
	movl	$0, 44(%ebp)
	testb	$3, 5(%edx)
	jne	L2576
L2321:
	cmpl	$3, 80(%edx)
	jle	L2322
	movl	72(%edx), %edx
	testb	$3, 5(%edx)
	jne	L2577
L2322:
	movl	24(%esp), %eax
	movl	16(%eax), %eax
	cmpl	$3, 104(%eax)
	jle	L2323
	movl	96(%eax), %edx
	testb	$3, 5(%edx)
	je	L2323
	movl	%ebp, %eax
	call	_reallymarkobject
L2323:
	movl	152(%ebp), %edx
	testl	%edx, %edx
	je	L2324
	testb	$3, 5(%edx)
	jne	L2578
L2324:
	movl	156(%ebp), %edx
	testl	%edx, %edx
	je	L2325
	testb	$3, 5(%edx)
	jne	L2579
L2325:
	movl	160(%ebp), %edx
	testl	%edx, %edx
	je	L2326
	testb	$3, 5(%edx)
	jne	L2580
L2326:
	movl	164(%ebp), %edx
	testl	%edx, %edx
	je	L2327
	testb	$3, 5(%edx)
	jne	L2581
L2327:
	movl	168(%ebp), %edx
	testl	%edx, %edx
	je	L2328
	testb	$3, 5(%edx)
	jne	L2582
L2328:
	movl	172(%ebp), %edx
	testl	%edx, %edx
	je	L2329
	testb	$3, 5(%edx)
	jne	L2583
L2329:
	movl	176(%ebp), %edx
	testl	%edx, %edx
	je	L2330
	testb	$3, 5(%edx)
	jne	L2584
L2330:
	movl	180(%ebp), %edx
	testl	%edx, %edx
	je	L2331
	testb	$3, 5(%edx)
	jne	L2585
L2331:
	movl	184(%ebp), %edx
	testl	%edx, %edx
	je	L2332
	testb	$3, 5(%edx)
	jne	L2586
L2332:
	movb	$1, 21(%ebp)
	xorl	%eax, %eax
	jmp	L2314
	.p2align 4,,10
L2320:
	movl	48(%ebp), %eax
	testl	%eax, %eax
	je	L2388
	movl	24(%esp), %eax
	call	_GCTM
	movl	72(%ebp), %edx
	movl	$100, %eax
	cmpl	$100, %edx
	jbe	L2314
	subl	$100, %edx
	movl	%edx, 72(%ebp)
	jmp	L2314
	.p2align 4,,10
L2317:
	movl	36(%ebp), %eax
	testl	%eax, %eax
	je	L2333
	movl	%ebp, %eax
	call	_propagatemark
	jmp	L2314
	.p2align 4,,10
L2381:
	movl	(%ebx), %eax
	movl	%eax, (%edi)
	cmpl	28(%ebp), %ebx
	je	L2587
L2383:
	movl	24(%esp), %eax
	movl	%ebx, %edx
	movb	%cl, 28(%esp)
	call	_freeobj
	movzbl	28(%esp), %ecx
	jmp	L2379
	.p2align 4,,10
L2572:
	movl	24(%esp), %eax
	leal	104(%ebx), %edx
	movb	%cl, 28(%esp)
	call	_sweeplist.constprop.163
	movzbl	28(%esp), %ecx
	jmp	L2380
	.p2align 4,,10
L2587:
	movl	(%ebx), %eax
	movl	%eax, 28(%ebp)
	jmp	L2383
	.p2align 4,,10
L2388:
	movb	$0, 21(%ebp)
	movl	$0, 76(%ebp)
	xorl	%eax, %eax
	jmp	L2314
	.p2align 4,,10
L2576:
	movl	%ebp, %eax
	call	_reallymarkobject
	movl	112(%ebp), %edx
	jmp	L2321
	.p2align 4,,10
L2389:
	movl	%eax, %edi
	movl	72(%eax), %eax
	movl	$1374389535, %edx
	movl	%eax, 20(%esp)
	mull	%edx
	shrl	$5, %edx
	imull	80(%edi), %edx
	movl	%edx, 64(%edi)
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2390:
	.cfi_restore_state
	movl	76(%eax), %eax
	cmpl	$1023, %eax
	ja	L2588
	movl	32(%esp), %edi
	movl	68(%edi), %eax
	movl	%eax, 20(%esp)
	addl	$1024, %eax
	movl	%eax, 64(%edi)
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L2588:
	.cfi_restore_state
	movl	32(%esp), %edi
	subl	$1024, %eax
	movl	%eax, 76(%edi)
	movl	68(%edi), %eax
	movl	%eax, 64(%edi)
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2586:
	.cfi_restore_state
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2332
	.p2align 4,,10
L2585:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2331
	.p2align 4,,10
L2584:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2330
	.p2align 4,,10
L2583:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2329
	.p2align 4,,10
L2582:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2328
	.p2align 4,,10
L2581:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2327
	.p2align 4,,10
L2580:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2326
	.p2align 4,,10
L2579:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2325
	.p2align 4,,10
L2578:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2324
L2333:
	movl	140(%ebp), %ebx
	leal	120(%ebp), %esi
	cmpl	%esi, %ebx
	je	L2339
	.p2align 4,,10
L2503:
	testb	$7, 5(%ebx)
	jne	L2337
	movl	8(%ebx), %eax
	cmpl	$3, 8(%eax)
	jle	L2337
	movl	(%eax), %edx
	testb	$3, 5(%edx)
	jne	L2589
	.p2align 4,,10
L2337:
	movl	20(%ebx), %ebx
	cmpl	%esi, %ebx
	jne	L2503
	movl	36(%ebp), %eax
	testl	%eax, %eax
	je	L2339
	.p2align 4,,10
L2502:
	movl	%ebp, %eax
	call	_propagatemark
	movl	36(%ebp), %eax
	testl	%eax, %eax
	jne	L2502
L2339:
	movl	44(%ebp), %eax
	movl	$0, 44(%ebp)
	movl	%eax, 36(%ebp)
	movl	24(%esp), %eax
	testb	$3, 5(%eax)
	jne	L2590
L2336:
	movl	152(%ebp), %edx
	testl	%edx, %edx
	je	L2341
	testb	$3, 5(%edx)
	jne	L2591
L2341:
	movl	156(%ebp), %edx
	testl	%edx, %edx
	je	L2342
	testb	$3, 5(%edx)
	jne	L2592
L2342:
	movl	160(%ebp), %edx
	testl	%edx, %edx
	je	L2343
	testb	$3, 5(%edx)
	jne	L2593
L2343:
	movl	164(%ebp), %edx
	testl	%edx, %edx
	je	L2344
	testb	$3, 5(%edx)
	jne	L2594
L2344:
	movl	168(%ebp), %edx
	testl	%edx, %edx
	je	L2345
	testb	$3, 5(%edx)
	jne	L2595
L2345:
	movl	172(%ebp), %edx
	testl	%edx, %edx
	je	L2346
	testb	$3, 5(%edx)
	jne	L2596
L2346:
	movl	176(%ebp), %edx
	testl	%edx, %edx
	je	L2347
	testb	$3, 5(%edx)
	jne	L2597
L2347:
	movl	180(%ebp), %edx
	testl	%edx, %edx
	je	L2348
	testb	$3, 5(%edx)
	jne	L2598
L2348:
	movl	184(%ebp), %edx
	testl	%edx, %edx
	je	L2565
	testb	$3, 5(%edx)
	je	L2565
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2565
	.p2align 4,,10
L2501:
	movl	%ebp, %eax
	call	_propagatemark
L2565:
	movl	36(%ebp), %edi
	testl	%edi, %edi
	jne	L2501
	movl	40(%ebp), %eax
	movl	$0, 40(%ebp)
	testl	%eax, %eax
	movl	%eax, 36(%ebp)
	je	L2352
	.p2align 4,,10
L2500:
	movl	%ebp, %eax
	call	_propagatemark
	movl	36(%ebp), %esi
	testl	%esi, %esi
	jne	L2500
L2352:
	movl	40(%esp), %eax
	xorl	%edx, %edx
	call	_luaC_separateudata.isra.12
	movl	48(%ebp), %ebx
	movl	%eax, 36(%esp)
	testl	%ebx, %ebx
	je	L2355
	.p2align 4,,10
L2499:
	movl	(%ebx), %ebx
	movzbl	20(%ebp), %eax
	movzbl	5(%ebx), %edx
	andl	$3, %eax
	andl	$-8, %edx
	orl	%edx, %eax
	movl	%ebx, %edx
	movb	%al, 5(%ebx)
	movl	%ebp, %eax
	call	_reallymarkobject
	cmpl	48(%ebp), %ebx
	jne	L2499
L2355:
	movl	36(%ebp), %ebx
	movl	$0, 28(%esp)
	testl	%ebx, %ebx
	je	L2357
	xorl	%ebx, %ebx
	.p2align 4,,10
L2498:
	movl	%ebp, %eax
	call	_propagatemark
	movl	36(%ebp), %ecx
	addl	%eax, %ebx
	testl	%ecx, %ecx
	jne	L2498
	movl	%ebx, 28(%esp)
L2357:
	movl	44(%ebp), %edi
	testl	%edi, %edi
	je	L2377
	movl	%ebp, 44(%esp)
	.p2align 4,,10
L2497:
	testb	$16, 5(%edi)
	je	L2361
	movl	28(%edi), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	jmp	L2362
	.p2align 4,,10
L2601:
	cmpl	$7, %ebx
	je	L2599
	.p2align 4,,10
L2393:
	subl	$16, %edx
	subl	$1, %eax
L2362:
	cmpl	$-1, %eax
	je	L2361
	movl	12(%edi), %ecx
	addl	%edx, %ecx
	movl	8(%ecx), %ebx
	cmpl	$3, %ebx
	jle	L2393
	cmpl	$4, %ebx
	movl	(%ecx), %esi
	je	L2600
	movzbl	5(%esi), %esi
	testl	$3, %esi
	je	L2601
	movl	$0, 8(%ecx)
	jmp	L2393
	.p2align 4,,10
L2361:
	movzbl	7(%edi), %ecx
	movl	$1, %edx
	sall	%cl, %edx
	subl	$1, %edx
	movl	%edx, %ebx
	sall	$5, %ebx
	jmp	L2363
	.p2align 4,,10
L2604:
	cmpl	$4, %esi
	movl	16(%eax), %ebp
	je	L2602
	testb	$3, 5(%ebp)
	je	L2369
	movl	$0, 8(%eax)
L2400:
	movl	$11, 24(%eax)
	.p2align 4,,10
L2395:
	subl	$32, %ebx
	subl	$1, %edx
L2363:
	cmpl	$-1, %edx
	je	L2603
	movl	16(%edi), %eax
	addl	%ebx, %eax
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	je	L2395
	movl	24(%eax), %esi
	cmpl	$3, %esi
	jg	L2604
L2369:
	cmpl	$3, %ecx
	jle	L2395
	cmpl	$4, %ecx
	movl	(%eax), %esi
	je	L2605
	movzbl	5(%esi), %esi
	testl	$3, %esi
	jne	L2566
	cmpl	$7, %ecx
	jne	L2395
	andl	$8, %esi
	je	L2395
	.p2align 4,,10
L2566:
	movl	24(%eax), %ecx
	movl	$0, 8(%eax)
	cmpl	$3, %ecx
	jle	L2395
	jmp	L2400
	.p2align 4,,10
L2603:
	movl	24(%edi), %edi
	testl	%edi, %edi
	jne	L2497
	movl	44(%esp), %ebp
L2377:
	leal	28(%ebp), %eax
	xorb	$3, 20(%ebp)
	movl	$0, 24(%ebp)
	movb	$2, 21(%ebp)
	movl	%eax, 32(%ebp)
	movl	68(%ebp), %eax
	subl	36(%esp), %eax
	subl	28(%esp), %eax
	movl	%eax, 72(%ebp)
	xorl	%eax, %eax
	jmp	L2314
	.p2align 4,,10
L2600:
	andb	$-4, 5(%esi)
	jmp	L2393
	.p2align 4,,10
L2602:
	andb	$-4, 5(%ebp)
	movl	8(%eax), %ecx
	jmp	L2369
	.p2align 4,,10
L2605:
	andb	$-4, 5(%esi)
	jmp	L2395
	.p2align 4,,10
L2599:
	andl	$8, %esi
	je	L2393
	movl	$0, 8(%ecx)
	jmp	L2393
L2577:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2322
L2589:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2337
L2598:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2348
L2597:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2347
L2596:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2346
L2595:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2345
L2594:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2344
L2593:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2343
L2592:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2342
L2591:
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2341
L2574:
	movl	24(%esp), %edi
	movl	16(%edi), %ebx
	movl	8(%ebx), %edx
	leal	3(%edx), %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	sarl	$2, %eax
	cmpl	%eax, 4(%ebx)
	jnb	L2387
	cmpl	$64, %edx
	jg	L2606
L2387:
	movl	60(%ebx), %ecx
	cmpl	$64, %ecx
	jbe	L2396
	movl	%ecx, %esi
	movl	52(%ebx), %edx
	movl	24(%esp), %eax
	shrl	%esi
	movl	%esi, (%esp)
	call	_luaM_realloc_
	movl	%esi, 60(%ebx)
	movl	%eax, 52(%ebx)
L2396:
	movb	$4, 21(%ebp)
	jmp	L2386
L2590:
	movl	%eax, %edx
	movl	%ebp, %eax
	call	_reallymarkobject
	jmp	L2336
L2606:
	sarl	%edx
	movl	%edi, %eax
	call	_luaS_resize
	jmp	L2387
	.cfi_endproc
LFE159:
	.section	.text.unlikely,"x"
LCOLDE164:
	.text
LHOTE164:
	.section	.text.unlikely,"x"
LCOLDB165:
	.text
LHOTB165:
	.p2align 4,,15
	.def	_lua_pushfstring;	.scl	3;	.type	32;	.endef
_lua_pushfstring:
LFB382:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ebx
	movl	16(%ebx), %eax
	movl	64(%eax), %edx
	cmpl	%edx, 68(%eax)
	jb	L2608
	movl	%ebx, %eax
	call	_luaC_step
L2608:
	movl	20(%esp), %edx
	leal	24(%esp), %ecx
	movl	%ebx, %eax
	call	_luaO_pushvfstring
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE382:
	.section	.text.unlikely,"x"
LCOLDE165:
	.text
LHOTE165:
	.section .rdata,"dr"
LC166:
	.ascii "%s\0"
	.section	.text.unlikely,"x"
LCOLDB167:
	.text
LHOTB167:
	.p2align 4,,15
	.def	_pushresult.constprop.113;	.scl	3;	.type	32;	.endef
_pushresult.constprop.113:
LFB726:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %esi
	movl	%eax, %ebx
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	call	*__imp___errno
	testl	%esi, %esi
	jne	L2614
	movl	(%eax), %esi
	movl	8(%ebx), %eax
	movl	$0, 8(%eax)
	addl	$16, %eax
	movl	%esi, (%esp)
	movl	%eax, 8(%ebx)
	call	_strerror
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	movl	$LC166, 4(%esp)
	call	_lua_pushfstring
	movl	8(%ebx), %eax
	movl	%esi, 28(%esp)
	fildl	28(%esp)
	movl	$3, 8(%eax)
	fstpl	(%eax)
	addl	$16, 8(%ebx)
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	$3, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2614:
	.cfi_restore_state
	movl	8(%ebx), %eax
	movl	$1, (%eax)
	movl	$1, 8(%eax)
	movl	$1, %eax
	addl	$16, 8(%ebx)
	addl	$36, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE726:
	.section	.text.unlikely,"x"
LCOLDE167:
	.text
LHOTE167:
	.section	.text.unlikely,"x"
LCOLDB168:
	.text
LHOTB168:
	.p2align 4,,15
	.def	_lua_concat;	.scl	3;	.type	32;	.endef
_lua_concat:
LFB405:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %esi
	movl	%edx, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	cmpl	$1, %edx
	jle	L2616
	movl	16(%eax), %eax
	movl	64(%eax), %edx
	cmpl	%edx, 68(%eax)
	jnb	L2620
L2617:
	movl	8(%esi), %ecx
	subl	12(%esi), %ecx
	movl	%ebx, %edx
	negl	%ebx
	movl	%esi, %eax
	sall	$4, %ebx
	addl	$16, %ebx
	sarl	$4, %ecx
	subl	$1, %ecx
	call	_luaV_concat
	addl	%ebx, 8(%esi)
L2615:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2620:
	.cfi_restore_state
	movl	%esi, %eax
	call	_luaC_step
	jmp	L2617
	.p2align 4,,10
L2616:
	testl	%edx, %edx
	jne	L2615
	movl	8(%eax), %ebx
	xorl	%ecx, %ecx
	movl	$LC75, %edx
	call	_luaS_newlstr
	movl	$4, 8(%ebx)
	movl	%eax, (%ebx)
	addl	$16, 8(%esi)
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE405:
	.section	.text.unlikely,"x"
LCOLDE168:
	.text
LHOTE168:
	.section	.text.unlikely,"x"
LCOLDB169:
	.text
LHOTB169:
	.p2align 4,,15
	.def	_lua_pushlstring;	.scl	3;	.type	32;	.endef
_lua_pushlstring:
LFB379:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	16(%eax), %eax
	movl	64(%eax), %esi
	cmpl	%esi, 68(%eax)
	jb	L2622
	movl	%ebx, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	call	_luaC_step
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
L2622:
	movl	8(%ebx), %esi
	movl	%ebx, %eax
	call	_luaS_newlstr
	movl	$4, 8(%esi)
	movl	%eax, (%esi)
	addl	$16, 8(%ebx)
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE379:
	.section	.text.unlikely,"x"
LCOLDE169:
	.text
LHOTE169:
	.section .rdata,"dr"
LC170:
	.ascii "cannot close standard file\0"
	.section	.text.unlikely,"x"
LCOLDB171:
	.text
LHOTB171:
	.p2align 4,,15
	.def	_io_noclose;	.scl	3;	.type	32;	.endef
_io_noclose:
LFB477:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	$26, %ecx
	movl	16(%esp), %eax
	movl	8(%eax), %edx
	movl	$0, 8(%edx)
	addl	$16, %edx
	movl	%edx, 8(%eax)
	movl	$LC170, %edx
	call	_lua_pushlstring
	movl	$2, %eax
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE477:
	.section	.text.unlikely,"x"
LCOLDE171:
	.text
LHOTE171:
	.section	.text.unlikely,"x"
LCOLDB172:
	.text
LHOTB172:
	.p2align 4,,15
	.def	_luaL_prepbuffer;	.scl	3;	.type	32;	.endef
_luaL_prepbuffer:
LFB429:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	leal	12(%eax), %esi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	subl	%esi, %ecx
	jne	L2639
L2628:
	movl	12(%esp), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2639:
	.cfi_restore_state
	movl	%eax, %edi
	movl	8(%eax), %eax
	movl	%esi, %edx
	call	_lua_pushlstring
	movl	4(%edi), %eax
	movl	%esi, (%edi)
	addl	$1, %eax
	cmpl	$1, %eax
	movl	%eax, 4(%edi)
	jle	L2628
	movl	8(%edi), %ebp
	movl	$-1, %edx
	movl	$1, %ebx
	movl	%ebp, %eax
	call	_lua_objlen
	movl	%eax, %esi
	jmp	L2632
	.p2align 4,,10
L2633:
	addl	$1, %ebx
	addl	%eax, %esi
	cmpl	%ebx, %edx
	jle	L2630
L2632:
	movl	%ebx, %edx
	movl	%ebp, %eax
	notl	%edx
	call	_lua_objlen
	movl	4(%edi), %edx
	movl	%edx, %ecx
	subl	%ebx, %ecx
	cmpl	$8, %ecx
	jg	L2633
	cmpl	%esi, %eax
	jb	L2633
L2630:
	movl	%ebp, %eax
	movl	%ebx, %edx
	call	_lua_concat
	movl	4(%edi), %eax
	subl	%ebx, %eax
	addl	$1, %eax
	movl	%eax, 4(%edi)
	movl	12(%esp), %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE429:
	.section	.text.unlikely,"x"
LCOLDE172:
	.text
LHOTE172:
	.section	.text.unlikely,"x"
LCOLDB173:
	.text
LHOTB173:
	.p2align 4,,15
	.def	_read_chars;	.scl	3;	.type	32;	.endef
_read_chars:
LFB494:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$512, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %esi
	movl	%ecx, %ebx
	subl	$572, %esp
	.cfi_def_cfa_offset 592
	leal	48(%esp), %edi
	movl	%eax, 28(%esp)
	movl	%eax, 44(%esp)
	movl	$0, 40(%esp)
	movl	%edi, 36(%esp)
	jmp	L2641
	.p2align 4,,10
L2654:
	cmpl	%ebp, %eax
	jne	L2647
L2641:
	leal	36(%esp), %eax
	call	_luaL_prepbuffer
	cmpl	%ebx, %ebp
	movl	%esi, 12(%esp)
	movl	$1, 4(%esp)
	cmova	%ebx, %ebp
	movl	%eax, (%esp)
	movl	%ebp, 8(%esp)
	call	_fread
	movl	36(%esp), %ecx
	addl	%eax, %ecx
	subl	%eax, %ebx
	movl	%ecx, 36(%esp)
	jne	L2654
L2647:
	subl	%edi, %ecx
	jne	L2643
	movl	40(%esp), %edx
L2644:
	movl	44(%esp), %eax
	call	_lua_concat
	testl	%ebx, %ebx
	movl	$1, 40(%esp)
	movl	$1, %eax
	je	L2645
	movl	28(%esp), %eax
	movl	$-1, %edx
	call	_lua_objlen
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
L2645:
	addl	$572, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2643:
	.cfi_restore_state
	movl	44(%esp), %eax
	movl	%edi, %edx
	call	_lua_pushlstring
	movl	40(%esp), %eax
	movl	%edi, 36(%esp)
	leal	1(%eax), %edx
	movl	%edx, 40(%esp)
	jmp	L2644
	.cfi_endproc
LFE494:
	.section	.text.unlikely,"x"
LCOLDE173:
	.text
LHOTE173:
	.section	.text.unlikely,"x"
LCOLDB174:
	.text
LHOTB174:
	.p2align 4,,15
	.def	_luaX_newstring.isra.73;	.scl	3;	.type	32;	.endef
_luaX_newstring.isra.73:
LFB637:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%ecx, %edx
	movl	%eax, %edi
	movl	%esi, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ecx
	call	_luaS_newlstr
	movl	%eax, %ebx
	movl	(%edi), %eax
	movl	4(%eax), %edx
	movl	$1, %eax
	movzbl	7(%edx), %ecx
	sall	%cl, %eax
	subl	$1, %eax
	andl	8(%ebx), %eax
	sall	$5, %eax
	addl	16(%edx), %eax
	jmp	L2659
	.p2align 4,,10
L2656:
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L2658
L2659:
	cmpl	$4, 24(%eax)
	jne	L2656
	cmpl	16(%eax), %ebx
	jne	L2656
	cmpl	$_luaO_nilobject_, %eax
	je	L2658
L2657:
	movl	8(%eax), %edx
	testl	%edx, %edx
	jne	L2661
	movl	$1, (%eax)
	movl	$1, 8(%eax)
	movl	16(%esi), %eax
	movl	64(%eax), %edi
	cmpl	%edi, 68(%eax)
	jb	L2661
	movl	%esi, %eax
	call	_luaC_step
L2661:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2658:
	.cfi_restore_state
	movl	%esp, %ecx
	movl	%esi, %eax
	movl	%ebx, (%esp)
	movl	$4, 8(%esp)
	call	_newkey
	jmp	L2657
	.cfi_endproc
LFE637:
	.section	.text.unlikely,"x"
LCOLDE174:
	.text
LHOTE174:
	.section	.text.unlikely,"x"
LCOLDB175:
	.text
LHOTB175:
	.p2align 4,,15
	.def	_close_func;	.scl	3;	.type	32;	.endef
_close_func:
LFB293:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%eax), %ebx
	movl	52(%eax), %edi
	movzbl	50(%ebx), %eax
	movl	(%ebx), %esi
	testb	%al, %al
	je	L2671
	movl	24(%ebx), %ecx
	.p2align 4,,10
L2670:
	subl	$1, %eax
	movl	24(%esi), %edx
	movb	%al, 50(%ebx)
	movzbl	%al, %eax
	movzwl	172(%ebx,%eax,2), %eax
	leal	(%eax,%eax,2), %eax
	movl	%ecx, 8(%edx,%eax,4)
	movzbl	50(%ebx), %eax
	testb	%al, %al
	jne	L2670
L2671:
	movl	12(%ebx), %eax
	movl	$8388638, %edx
	movl	8(%eax), %ecx
	movl	%ebx, %eax
	call	_luaK_code
	movl	24(%ebx), %eax
	leal	1(%eax), %edx
	cmpl	$1073741823, %edx
	ja	L2686
	movl	44(%esi), %ecx
	movl	12(%esi), %edx
	sall	$2, %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	sall	$2, %ecx
	call	_luaM_realloc_
L2672:
	movl	%eax, 12(%esi)
	movl	24(%ebx), %eax
	leal	1(%eax), %edx
	movl	%eax, 44(%esi)
	cmpl	$1073741823, %edx
	ja	L2673
	movl	48(%esi), %ecx
	movl	20(%esi), %edx
	sall	$2, %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	sall	$2, %ecx
	call	_luaM_realloc_
L2674:
	movl	%eax, 20(%esi)
	movl	24(%ebx), %eax
	movl	%eax, 48(%esi)
	movl	40(%ebx), %eax
	leal	1(%eax), %edx
	cmpl	$268435455, %edx
	ja	L2675
	movl	40(%esi), %ecx
	movl	8(%esi), %edx
	sall	$4, %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	sall	$4, %ecx
	call	_luaM_realloc_
L2676:
	movl	%eax, 8(%esi)
	movl	40(%ebx), %eax
	movl	%eax, 40(%esi)
	movl	44(%ebx), %eax
	leal	1(%eax), %edx
	cmpl	$1073741823, %edx
	ja	L2677
	movl	52(%esi), %ecx
	movl	16(%esi), %edx
	sall	$2, %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	sall	$2, %ecx
	call	_luaM_realloc_
L2678:
	movl	%eax, 16(%esi)
	movl	44(%ebx), %eax
	movl	%eax, 52(%esi)
	movswl	48(%ebx), %eax
	leal	1(%eax), %edx
	cmpl	$357913941, %edx
	ja	L2679
	movl	56(%esi), %edx
	leal	(%eax,%eax,2), %eax
	sall	$2, %eax
	leal	(%edx,%edx,2), %ecx
	movl	24(%esi), %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	sall	$2, %ecx
	call	_luaM_realloc_
L2680:
	movl	%eax, 24(%esi)
	movswl	48(%ebx), %eax
	movl	28(%esi), %edx
	movl	%eax, 56(%esi)
	movl	36(%esi), %eax
	leal	0(,%eax,4), %ecx
	movzbl	72(%esi), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_luaM_realloc_
	movl	%eax, 28(%esi)
	movzbl	72(%esi), %eax
	movl	%eax, 36(%esi)
	movl	8(%ebx), %eax
	movl	%eax, 48(%ebp)
	movl	16(%ebp), %eax
	subl	$285, %eax
	cmpl	$1, %eax
	jbe	L2687
	subl	$32, 8(%edi)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2686:
	.cfi_restore_state
	movl	$LC44, 4(%esp)
	movl	%edi, (%esp)
	call	_luaG_runerror
	xorl	%eax, %eax
	jmp	L2672
	.p2align 4,,10
L2679:
	movl	$LC44, 4(%esp)
	movl	%edi, (%esp)
	call	_luaG_runerror
	xorl	%eax, %eax
	jmp	L2680
	.p2align 4,,10
L2677:
	movl	$LC44, 4(%esp)
	movl	%edi, (%esp)
	call	_luaG_runerror
	xorl	%eax, %eax
	jmp	L2678
	.p2align 4,,10
L2675:
	movl	$LC44, 4(%esp)
	movl	%edi, (%esp)
	call	_luaG_runerror
	xorl	%eax, %eax
	jmp	L2676
	.p2align 4,,10
L2673:
	movl	$LC44, 4(%esp)
	movl	%edi, (%esp)
	call	_luaG_runerror
	xorl	%eax, %eax
	jmp	L2674
	.p2align 4,,10
L2687:
	movl	24(%ebp), %ebx
	movl	52(%ebp), %edx
	leal	48(%ebp), %eax
	leal	16(%ebx), %ecx
	movl	12(%ebx), %ebx
	movl	%ebx, (%esp)
	call	_luaX_newstring.isra.73
	subl	$32, 8(%edi)
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE293:
	.section	.text.unlikely,"x"
LCOLDE175:
	.text
LHOTE175:
	.section .rdata,"dr"
LC176:
	.ascii "unfinished long string\0"
LC177:
	.ascii "unfinished long comment\0"
LC178:
	.ascii "<eof>\0"
	.section	.text.unlikely,"x"
LCOLDB179:
	.text
LHOTB179:
	.p2align 4,,15
	.def	_read_long_string;	.scl	3;	.type	32;	.endef
_read_long_string:
LFB206:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%ecx, %ebp
	subl	$124, %esp
	.cfi_def_cfa_offset 144
	movl	(%eax), %edx
	call	_save
	movl	56(%ebx), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2689
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %edx
L2690:
	cmpl	$10, %edx
	movl	%edx, (%ebx)
	je	L2725
	cmpl	$13, %edx
	je	L2725
L2693:
	cmpl	$10, %edx
	je	L2695
L2743:
	jle	L2740
	cmpl	$13, %edx
	je	L2695
	cmpl	$93, %edx
	jne	L2694
	movl	$93, %edx
	movl	%ebx, %eax
	call	_save
	movl	56(%ebx), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2703
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L2704:
	xorl	%esi, %esi
	cmpl	$61, %eax
	movl	%eax, (%ebx)
	je	L2708
	jmp	L2705
	.p2align 4,,10
L2741:
	movl	4(%eax), %edx
	addl	$1, %esi
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
	cmpl	$61, %eax
	movl	%eax, (%ebx)
	jne	L2705
L2708:
	movl	$61, %edx
	movl	%ebx, %eax
	call	_save
	movl	56(%ebx), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	jne	L2741
	call	_luaZ_fill
	addl	$1, %esi
	cmpl	$61, %eax
	movl	%eax, (%ebx)
	je	L2708
L2705:
	movl	%esi, %edx
	cmpl	$93, %eax
	notl	%edx
	cmovne	%edx, %esi
	cmpl	%esi, %ebp
	je	L2742
L2710:
	movl	(%ebx), %edx
	cmpl	$10, %edx
	jne	L2743
L2695:
	movl	$10, %edx
	movl	%ebx, %eax
	call	_save
	movl	%ebx, %eax
	call	_inclinenumber
	testl	%edi, %edi
	jne	L2710
	movl	60(%ebx), %eax
	movl	(%ebx), %edx
	movl	$0, 4(%eax)
	jmp	L2693
	.p2align 4,,10
L2740:
	cmpl	$-1, %edx
	jne	L2694
	testl	%edi, %edi
	movl	$LC177, %eax
	movl	$LC176, %esi
	cmove	%eax, %esi
	movl	64(%ebx), %eax
	leal	32(%esp), %edi
	movl	$80, %ecx
	leal	16(%eax), %edx
	movl	%edi, %eax
	call	_luaO_chunkid
	movl	%esi, 16(%esp)
	movl	4(%ebx), %eax
	movl	%edi, 8(%esp)
	movl	$LC42, 4(%esp)
	movl	%eax, 12(%esp)
	movl	52(%ebx), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	movl	$LC178, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC108, 4(%esp)
	movl	52(%ebx), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	movl	52(%ebx), %ebx
	movl	112(%ebx), %eax
	testl	%eax, %eax
	je	L2700
	movl	$3, 68(%eax)
	addl	$4, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_longjmp
	.p2align 4,,10
L2694:
	testl	%edi, %edi
	je	L2717
	movl	%ebx, %eax
	call	_save
L2717:
	movl	56(%ebx), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2720
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %edx
	movl	%edx, (%ebx)
	jmp	L2693
	.p2align 4,,10
L2725:
	movl	%ebx, %eax
	call	_inclinenumber
	movl	(%ebx), %edx
	jmp	L2693
	.p2align 4,,10
L2689:
	call	_luaZ_fill
	movl	%eax, %edx
	jmp	L2690
	.p2align 4,,10
L2700:
	movl	16(%ebx), %eax
	movb	$3, 6(%ebx)
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	L2701
	movl	40(%ebx), %eax
	movl	(%eax), %edx
	movl	%eax, 20(%ebx)
	movl	%ebx, %eax
	movl	%edx, 12(%ebx)
	call	_luaF_close
	movl	8(%ebx), %esi
	movl	12(%ebx), %ecx
	movl	-16(%esi), %eax
	movl	-12(%esi), %edx
	addl	$16, %ecx
	movl	%eax, -16(%ecx)
	movl	%edx, -12(%ecx)
	movl	-8(%esi), %eax
	movl	%eax, -8(%ecx)
	movzwl	54(%ebx), %eax
	cmpl	$20000, 48(%ebx)
	movl	%ecx, 8(%ebx)
	movb	$1, 57(%ebx)
	movw	%ax, 52(%ebx)
	jle	L2702
	movl	20(%ebx), %eax
	subl	40(%ebx), %eax
	cmpl	$479975, %eax
	jg	L2702
	movl	$20000, %edx
	movl	%ebx, %eax
	call	_luaD_reallocCI
L2702:
	movl	16(%ebx), %eax
	movl	$0, 116(%ebx)
	movl	$0, 112(%ebx)
	movl	%ebx, (%esp)
	call	*88(%eax)
L2701:
	movl	$1, (%esp)
	call	_exit
	.p2align 4,,10
L2720:
	call	_luaZ_fill
	movl	%eax, %edx
	movl	%edx, (%ebx)
	jmp	L2693
	.p2align 4,,10
L2703:
	call	_luaZ_fill
	jmp	L2704
L2742:
	movl	%eax, %edx
	movl	%ebx, %eax
	call	_save
	movl	56(%ebx), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2711
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L2712:
	testl	%edi, %edi
	movl	%eax, (%ebx)
	je	L2688
	movl	60(%ebx), %esi
	movl	52(%ebx), %edx
	leal	48(%ebx), %eax
	addl	$2, %ebp
	movl	(%esi), %ecx
	movl	4(%esi), %ebx
	addl	%ebp, %ecx
	addl	%ebp, %ebp
	subl	%ebp, %ebx
	movl	%ebx, (%esp)
	call	_luaX_newstring.isra.73
	movl	%eax, (%edi)
L2688:
	addl	$124, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L2711:
	.cfi_restore_state
	call	_luaZ_fill
	jmp	L2712
	.cfi_endproc
LFE206:
	.section	.text.unlikely,"x"
LCOLDE179:
	.text
LHOTE179:
	.section .rdata,"dr"
LC180:
	.ascii "invalid long string delimiter\0"
LC181:
	.ascii "unfinished string\0"
LC182:
	.ascii "escape sequence too large\0"
LC183:
	.ascii ".\0"
	.section	.text.unlikely,"x"
LCOLDB184:
	.text
LHOTB184:
	.p2align 4,,15
	.def	_llex;	.scl	3;	.type	32;	.endef
_llex:
LFB208:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$18433, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	movl	%edx, %edi
	subl	$140, %esp
	.cfi_def_cfa_offset 160
	movl	60(%eax), %eax
	movl	(%esi), %ebx
	movl	$0, 4(%eax)
L2745:
	cmpl	$45, %ebx
	je	L2747
L2902:
	jle	L2896
	cmpl	$61, %ebx
	je	L2753
	jle	L2897
	cmpl	$91, %ebx
	je	L2757
	cmpl	$126, %ebx
	je	L2758
	cmpl	$62, %ebx
	je	L2898
L2746:
	movl	%ebx, (%esp)
	call	*__imp__isspace
	testl	%eax, %eax
	je	L2832
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2833
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %ebx
	movl	%ebx, (%esi)
	jmp	L2745
	.p2align 4,,10
L2897:
	cmpl	$46, %ebx
	je	L2755
	cmpl	$60, %ebx
	jne	L2746
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2776
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L2777:
	cmpl	$61, %eax
	movl	%eax, (%esi)
	je	L2899
L2751:
	addl	$140, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2896:
	.cfi_restore_state
	cmpl	$13, %ebx
	je	L2749
	jg	L2750
	cmpl	$-1, %ebx
	jne	L2900
	addl	$140, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$287, %ebx
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2755:
	.cfi_restore_state
	movl	$46, %edx
	movl	%esi, %eax
	call	_save
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2829
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L2830:
	movl	%eax, (%esi)
	movl	$LC183, %edx
	movl	%esi, %eax
	call	_check_next
	testl	%eax, %eax
	jne	L2901
	movl	(%esi), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	ja	L2751
L2835:
	movl	%edi, %edx
	movl	%esi, %eax
	movl	$284, %ebx
	call	_read_numeral
	jmp	L2751
	.p2align 4,,10
L2758:
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2784
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L2785:
	cmpl	$61, %eax
	movl	%eax, (%esi)
	jne	L2751
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2786
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L2787:
	movl	%eax, (%esi)
	movl	$283, %ebx
	jmp	L2751
	.p2align 4,,10
L2900:
	cmpl	$10, %ebx
	jne	L2746
L2749:
	movl	%esi, %eax
	call	_inclinenumber
	movl	(%esi), %ebx
	cmpl	$45, %ebx
	jne	L2902
	.p2align 4,,10
L2747:
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2761
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L2762:
	cmpl	$45, %eax
	movl	%eax, (%esi)
	jne	L2751
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2763
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %ebx
L2764:
	cmpl	$91, %ebx
	movl	%ebx, (%esi)
	je	L2903
	.p2align 4,,10
L2889:
	leal	1(%ebx), %eax
	cmpl	$14, %eax
	ja	L2869
	btl	%eax, %ebp
	jc	L2745
L2869:
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2769
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %ebx
	movl	%ebx, (%esi)
	jmp	L2889
	.p2align 4,,10
L2750:
	cmpl	$34, %ebx
	je	L2752
	cmpl	$39, %ebx
	jne	L2746
L2752:
	movl	%ebx, %edx
L2892:
	movl	%esi, %eax
	call	_save
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2824
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L2825:
	movl	%eax, (%esi)
L2790:
	cmpl	%ebx, %eax
	je	L2904
	cmpl	$10, %eax
	je	L2792
	jle	L2905
	cmpl	$13, %eax
	je	L2792
	cmpl	$92, %eax
	jne	L2791
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2796
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L2797:
	cmpl	$98, %eax
	movl	%eax, (%esi)
	je	L2845
	jle	L2906
	cmpl	$114, %eax
	je	L2805
	jg	L2806
	cmpl	$102, %eax
	je	L2807
	cmpl	$110, %eax
	movl	$10, %edx
	je	L2892
L2798:
	leal	-48(%eax), %ecx
	cmpl	$9, %ecx
	ja	L2791
	movl	56(%esi), %eax
	movl	%ecx, 40(%esp)
	movl	(%eax), %edx
	leal	-1(%edx), %ebp
	testl	%edx, %edx
	movl	%ebp, (%eax)
	je	L2814
	movl	4(%eax), %edx
	leal	1(%edx), %ebp
	movl	%ebp, 4(%eax)
	movzbl	(%edx), %eax
L2815:
	movl	%eax, (%esi)
	subl	$48, %eax
	cmpl	$9, %eax
	ja	L2821
	leal	(%ecx,%ecx,4), %edx
	leal	(%eax,%edx,2), %eax
	movl	%eax, 40(%esp)
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2817
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L2818:
	movl	%eax, (%esi)
	subl	$48, %eax
	cmpl	$9, %eax
	ja	L2821
	movl	40(%esp), %ecx
	leal	(%ecx,%ecx,4), %edx
	leal	(%eax,%edx,2), %eax
	movl	%eax, 40(%esp)
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2819
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L2820:
	cmpl	$255, 40(%esp)
	movl	%eax, (%esi)
	jg	L2907
L2821:
	movl	40(%esp), %edx
	movl	%esi, %eax
	call	_save
	movl	(%esi), %eax
	jmp	L2790
	.p2align 4,,10
L2905:
	cmpl	$-1, %eax
	je	L2794
L2791:
	movl	%eax, %edx
	jmp	L2892
	.p2align 4,,10
L2757:
	movl	%esi, %eax
	call	_skip_sep
	testl	%eax, %eax
	js	L2771
	movl	%eax, %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	call	_read_long_string
	movl	$286, %ebx
	jmp	L2751
	.p2align 4,,10
L2753:
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2772
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L2773:
	cmpl	$61, %eax
	movl	%eax, (%esi)
	jne	L2751
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2774
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L2775:
	movl	%eax, (%esi)
	movl	$280, %ebx
	jmp	L2751
	.p2align 4,,10
L2769:
	call	_luaZ_fill
	movl	%eax, %ebx
	movl	%ebx, (%esi)
	jmp	L2889
	.p2align 4,,10
L2898:
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2780
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L2781:
	cmpl	$61, %eax
	movl	%eax, (%esi)
	jne	L2751
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2782
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L2783:
	movl	%eax, (%esi)
	movl	$281, %ebx
	jmp	L2751
	.p2align 4,,10
L2832:
	leal	-48(%ebx), %eax
	cmpl	$9, %eax
	jbe	L2835
	movl	%ebx, (%esp)
	call	*__imp__isalpha
	cmpl	$95, %ebx
	je	L2847
	testl	%eax, %eax
	jne	L2847
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2842
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
	movl	%eax, (%esi)
	jmp	L2751
	.p2align 4,,10
L2824:
	call	_luaZ_fill
	jmp	L2825
	.p2align 4,,10
L2794:
	movl	64(%esi), %eax
	leal	48(%esp), %ebx
	movl	$80, %ecx
	leal	16(%eax), %edx
	movl	%ebx, %eax
	call	_luaO_chunkid
	movl	4(%esi), %eax
	movl	$LC181, 16(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC42, 4(%esp)
	movl	%eax, 12(%esp)
	movl	52(%esi), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	movl	%eax, 8(%esp)
	movl	52(%esi), %eax
	movl	$LC178, 12(%esp)
	movl	$LC108, 4(%esp)
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	movl	52(%esi), %eax
	movl	$3, %edx
	call	_luaD_throw
	.p2align 4,,10
L2833:
	call	_luaZ_fill
	movl	%eax, %ebx
	movl	%ebx, (%esi)
	jmp	L2745
	.p2align 4,,10
L2792:
	movl	$286, %ecx
	movl	$LC181, %edx
	movl	%esi, %eax
	call	_luaX_lexerror
	.p2align 4,,10
L2771:
	cmpl	$-1, %eax
	je	L2751
	movl	$286, %ecx
	movl	$LC180, %edx
	movl	%esi, %eax
	call	_luaX_lexerror
	.p2align 4,,10
L2901:
	movl	$LC183, %edx
	movl	%esi, %eax
	call	_check_next
	cmpl	$1, %eax
	sbbl	%ebx, %ebx
	addl	$279, %ebx
	jmp	L2751
	.p2align 4,,10
L2829:
	call	_luaZ_fill
	jmp	L2830
	.p2align 4,,10
L2772:
	call	_luaZ_fill
	jmp	L2773
	.p2align 4,,10
L2761:
	call	_luaZ_fill
	jmp	L2762
	.p2align 4,,10
L2780:
	call	_luaZ_fill
	jmp	L2781
	.p2align 4,,10
L2784:
	call	_luaZ_fill
	jmp	L2785
	.p2align 4,,10
L2776:
	call	_luaZ_fill
	jmp	L2777
	.p2align 4,,10
L2763:
	call	_luaZ_fill
	movl	%eax, %ebx
	jmp	L2764
	.p2align 4,,10
L2899:
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2778
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L2779:
	movl	%eax, (%esi)
	movl	$282, %ebx
	jmp	L2751
	.p2align 4,,10
L2904:
	movl	%eax, %edx
	movl	%esi, %eax
	call	_save
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2827
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L2828:
	movl	60(%esi), %ebx
	movl	%eax, (%esi)
	movl	52(%esi), %edx
	movl	(%ebx), %eax
	movl	4(%ebx), %ebx
	leal	1(%eax), %ecx
	subl	$2, %ebx
	leal	48(%esi), %eax
	movl	%ebx, (%esp)
	movl	$286, %ebx
	call	_luaX_newstring.isra.73
	movl	%eax, (%edi)
	jmp	L2751
	.p2align 4,,10
L2906:
	cmpl	$10, %eax
	je	L2801
	jle	L2908
	cmpl	$13, %eax
	je	L2801
	cmpl	$97, %eax
	movl	$7, %edx
	je	L2892
	jmp	L2798
	.p2align 4,,10
L2903:
	movl	%esi, %eax
	call	_skip_sep
	movl	60(%esi), %edx
	testl	%eax, %eax
	movl	$0, 4(%edx)
	jns	L2767
	movl	(%esi), %ebx
	jmp	L2889
	.p2align 4,,10
L2796:
	call	_luaZ_fill
	jmp	L2797
L2806:
	cmpl	$116, %eax
	je	L2809
	cmpl	$118, %eax
	movl	$11, %edx
	je	L2892
	jmp	L2798
L2786:
	call	_luaZ_fill
	jmp	L2787
L2782:
	call	_luaZ_fill
	jmp	L2783
L2778:
	call	_luaZ_fill
	jmp	L2779
L2774:
	call	_luaZ_fill
	jmp	L2775
L2847:
	movl	__imp__isalnum, %ebp
	.p2align 4,,10
L2870:
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_save
	movl	56(%esi), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L2838
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %ebx
L2839:
	movl	%ebx, (%esi)
	movl	%ebx, (%esp)
	call	*%ebp
	testl	%eax, %eax
	jne	L2870
	cmpl	$95, %ebx
	je	L2870
	movl	60(%esi), %ecx
	movl	52(%esi), %edx
	leal	48(%esi), %eax
	movl	4(%ecx), %ebx
	movl	%ebx, (%esp)
	movl	(%ecx), %ecx
	call	_luaX_newstring.isra.73
	movzbl	6(%eax), %edx
	testb	%dl, %dl
	leal	256(%edx), %ebx
	jne	L2751
	movl	%eax, (%edi)
	movl	$285, %ebx
	jmp	L2751
	.p2align 4,,10
L2838:
	call	_luaZ_fill
	movl	%eax, %ebx
	jmp	L2839
L2767:
	movl	%eax, %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
	call	_read_long_string
	movl	60(%esi), %eax
	movl	(%esi), %ebx
	movl	$0, 4(%eax)
	jmp	L2745
L2827:
	call	_luaZ_fill
	jmp	L2828
L2908:
	cmpl	$-1, %eax
	je	L2790
	jmp	L2798
L2845:
	movl	$8, %edx
	jmp	L2892
L2801:
	movl	$10, %edx
	movl	%esi, %eax
	call	_save
	movl	%esi, %eax
	call	_inclinenumber
	movl	(%esi), %eax
	jmp	L2790
L2807:
	movl	$12, %edx
	jmp	L2892
L2805:
	movl	$13, %edx
	jmp	L2892
L2809:
	movl	$9, %edx
	jmp	L2892
L2842:
	call	_luaZ_fill
	movl	%eax, (%esi)
	jmp	L2751
L2814:
	movl	%ecx, 44(%esp)
	call	_luaZ_fill
	movl	44(%esp), %ecx
	jmp	L2815
L2907:
	movl	$286, %ecx
	movl	$LC182, %edx
	movl	%esi, %eax
	call	_luaX_lexerror
L2819:
	call	_luaZ_fill
	jmp	L2820
L2817:
	call	_luaZ_fill
	jmp	L2818
	.cfi_endproc
LFE208:
	.section	.text.unlikely,"x"
LCOLDE184:
	.text
LHOTE184:
	.section	.text.unlikely,"x"
LCOLDB185:
	.text
LHOTB185:
	.p2align 4,,15
	.def	_luaX_next;	.scl	3;	.type	32;	.endef
_luaX_next:
LFB209:
	.cfi_startproc
	cmpl	$287, 32(%eax)
	movl	4(%eax), %edx
	movl	%edx, 8(%eax)
	je	L2910
	movl	32(%eax), %edx
	movl	$287, 32(%eax)
	movl	%edx, 16(%eax)
	movl	36(%eax), %edx
	movl	%edx, 20(%eax)
	movl	40(%eax), %edx
	movl	%edx, 24(%eax)
	movl	44(%eax), %edx
	movl	%edx, 28(%eax)
	ret
	.p2align 4,,10
L2910:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	leal	24(%eax), %edx
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	call	_llex
	movl	%eax, 16(%ebx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE209:
	.section	.text.unlikely,"x"
LCOLDE185:
	.text
LHOTE185:
	.section .rdata,"dr"
LC186:
	.ascii "'%s' expected\0"
	.section	.text.unlikely,"x"
LCOLDB187:
	.text
LHOTB187:
	.p2align 4,,15
	.def	_checknext;	.scl	3;	.type	32;	.endef
_checknext:
LFB272:
	.cfi_startproc
	cmpl	16(%eax), %edx
	je	L2914
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %esi
	movl	%eax, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	cmpl	$256, %edx
	jle	L2919
	movl	_luaX_tokens-1028(,%edx,4), %eax
L2917:
	movl	%eax, 8(%esp)
	movl	$LC186, 4(%esp)
	movl	52(%ebx), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	movl	16(%ebx), %ecx
	movl	%eax, %edx
	movl	%ebx, %eax
	call	_luaX_lexerror
	.p2align 4,,10
L2919:
	movl	%edx, (%esp)
	call	*__imp__iscntrl
	testl	%eax, %eax
	movl	%esi, 8(%esp)
	je	L2916
	movl	$LC106, 4(%esp)
	movl	52(%ebx), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	jmp	L2917
	.p2align 4,,10
L2914:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 6
	jmp	_luaX_next
	.p2align 4,,10
L2916:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	$LC107, 4(%esp)
	movl	52(%ebx), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	jmp	L2917
	.cfi_endproc
LFE272:
	.section	.text.unlikely,"x"
LCOLDE187:
	.text
LHOTE187:
	.section .rdata,"dr"
	.align 4
LC188:
	.ascii "'%s' expected (to close '%s' at line %d)\0"
	.section	.text.unlikely,"x"
LCOLDB189:
	.text
LHOTB189:
	.p2align 4,,15
	.def	_check_match;	.scl	3;	.type	32;	.endef
_check_match:
LFB273:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	cmpl	16(%eax), %edx
	movl	64(%esp), %ebp
	je	L2936
	cmpl	%ebp, 4(%eax)
	movl	%ecx, %ebx
	movl	%edx, %esi
	movl	%eax, %edi
	je	L2937
	cmpl	$256, %ebx
	jle	L2938
	movl	_luaX_tokens-1028(,%ebx,4), %ebx
L2927:
	cmpl	$256, %esi
	jg	L2928
L2939:
	movl	%esi, (%esp)
	call	*__imp__iscntrl
	testl	%eax, %eax
	movl	%esi, 8(%esp)
	je	L2929
	movl	$LC106, 4(%esp)
	movl	52(%edi), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	jmp	L2930
	.p2align 4,,10
L2938:
	movl	%ebx, (%esp)
	call	*__imp__iscntrl
	testl	%eax, %eax
	movl	%ebx, 8(%esp)
	je	L2926
	movl	$LC106, 4(%esp)
	movl	52(%edi), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	cmpl	$256, %esi
	movl	%eax, %ebx
	jle	L2939
L2928:
	movl	_luaX_tokens-1028(,%esi,4), %eax
L2930:
	movl	%ebp, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC188, 4(%esp)
	movl	52(%edi), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	movl	16(%edi), %ecx
	movl	%eax, %edx
	movl	%edi, %eax
	call	_luaX_lexerror
	.p2align 4,,10
L2936:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	_luaX_next
	.p2align 4,,10
L2926:
	.cfi_restore_state
	movl	$LC107, 4(%esp)
	movl	52(%edi), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	movl	%eax, %ebx
	jmp	L2927
	.p2align 4,,10
L2929:
	movl	$LC107, 4(%esp)
	movl	52(%edi), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	jmp	L2930
	.p2align 4,,10
L2937:
	cmpl	$256, %esi
	jg	L2922
	movl	%esi, (%esp)
	call	*__imp__iscntrl
	testl	%eax, %eax
	movl	%esi, 8(%esp)
	je	L2923
	movl	$LC106, 4(%esp)
	movl	52(%edi), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	jmp	L2924
	.p2align 4,,10
L2922:
	movl	_luaX_tokens-1028(,%esi,4), %eax
L2924:
	movl	%eax, 8(%esp)
	movl	$LC186, 4(%esp)
	movl	52(%edi), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	movl	16(%edi), %ecx
	movl	%eax, %edx
	movl	%edi, %eax
	call	_luaX_lexerror
	.p2align 4,,10
L2923:
	movl	$LC107, 4(%esp)
	movl	52(%edi), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	jmp	L2924
	.cfi_endproc
LFE273:
	.section	.text.unlikely,"x"
LCOLDE189:
	.text
LHOTE189:
	.section	.text.unlikely,"x"
LCOLDB190:
	.text
LHOTB190:
	.p2align 4,,15
	.def	_lua_tolstring;	.scl	3;	.type	32;	.endef
_lua_tolstring:
LFB372:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %edi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %esi
	movl	%ecx, %ebx
	call	_index2adr
	movl	8(%eax), %edx
	cmpl	$4, %edx
	je	L2941
	cmpl	$3, %edx
	je	L2942
L2945:
	testl	%ebx, %ebx
	je	L2960
	movl	$0, (%ebx)
L2960:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2942:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%esi, %eax
	call	_luaV_tostring.part.52
	testl	%eax, %eax
	je	L2945
	movl	16(%esi), %eax
	movl	64(%eax), %ecx
	cmpl	%ecx, 68(%eax)
	jnb	L2961
L2947:
	movl	%edi, %edx
	movl	%esi, %eax
	call	_index2adr
L2941:
	testl	%ebx, %ebx
	je	L2948
	movl	(%eax), %edx
	movl	12(%edx), %edx
	movl	%edx, (%ebx)
L2948:
	movl	(%eax), %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	addl	$16, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2961:
	.cfi_restore_state
	movl	%esi, %eax
	call	_luaC_step
	jmp	L2947
	.cfi_endproc
LFE372:
	.section	.text.unlikely,"x"
LCOLDE190:
	.text
LHOTE190:
	.section	.text.unlikely,"x"
LCOLDB191:
	.text
LHOTB191:
	.p2align 4,,15
	.def	_luaL_addvalue;	.scl	3;	.type	32;	.endef
_luaL_addvalue:
LFB432:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$-1, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	8(%eax), %esi
	leal	44(%esp), %ecx
	movl	%esi, %eax
	call	_lua_tolstring
	movl	(%ebx), %edi
	movl	44(%esp), %ebp
	movl	$512, %edx
	movl	%edi, %ecx
	movl	%edi, 28(%esp)
	leal	12(%ebx), %edi
	subl	%edi, %ecx
	subl	%ecx, %edx
	cmpl	%ebp, %edx
	jnb	L2978
	testl	%ecx, %ecx
	jne	L2979
	movl	4(%ebx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	movl	%eax, 4(%ebx)
	jle	L2962
L2980:
	movl	8(%ebx), %ebp
	movl	$-1, %edx
	movl	$1, %esi
	movl	%ebp, %eax
	call	_lua_objlen
	movl	%eax, %edi
	jmp	L2968
	.p2align 4,,10
L2969:
	addl	$1, %esi
	addl	%eax, %edi
	cmpl	%esi, %edx
	jle	L2966
L2968:
	movl	%esi, %edx
	movl	%ebp, %eax
	notl	%edx
	call	_lua_objlen
	movl	4(%ebx), %edx
	movl	%edx, %ecx
	subl	%esi, %ecx
	cmpl	$8, %ecx
	jg	L2969
	cmpl	%edi, %eax
	jb	L2969
L2966:
	movl	%ebp, %eax
	movl	%esi, %edx
	call	_lua_concat
	movl	4(%ebx), %eax
	subl	%esi, %eax
	addl	$1, %eax
	movl	%eax, 4(%ebx)
L2962:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2979:
	.cfi_restore_state
	movl	8(%ebx), %eax
	movl	%edi, %edx
	call	_lua_pushlstring
	addl	$1, 4(%ebx)
	movl	%esi, %eax
	movl	%edi, (%ebx)
	movl	$-2, %edx
	call	_lua_insert
	movl	4(%ebx), %eax
	addl	$1, %eax
	cmpl	$1, %eax
	movl	%eax, 4(%ebx)
	jg	L2980
	jmp	L2962
	.p2align 4,,10
L2978:
	movl	%eax, 4(%esp)
	movl	28(%esp), %eax
	movl	%ebp, 8(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	44(%esp), %eax
	addl	%eax, (%ebx)
	subl	$16, 8(%esi)
	addl	$60, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE432:
	.section	.text.unlikely,"x"
LCOLDE191:
	.text
LHOTE191:
	.section	.text.unlikely,"x"
LCOLDB192:
	.text
LHOTB192:
	.p2align 4,,15
	.def	_aux_lines;	.scl	3;	.type	32;	.endef
_aux_lines:
LFB488:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	call	_lua_pushvalue
	movl	8(%ebx), %eax
	xorl	%edx, %edx
	testl	%esi, %esi
	setne	%dl
	movl	%edx, (%eax)
	movl	$1, 8(%eax)
	movl	16(%ebx), %eax
	addl	$16, 8(%ebx)
	movl	64(%eax), %edi
	cmpl	%edi, 68(%eax)
	jnb	L2986
	movl	20(%ebx), %eax
	cmpl	40(%ebx), %eax
	je	L2987
L2983:
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %esi
L2984:
	movl	$56, (%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_luaM_realloc_
	movl	16(%ebx), %edx
	movl	28(%edx), %ecx
	movl	%ecx, (%eax)
	movl	%eax, 28(%edx)
	movzbl	20(%edx), %edx
	movb	$6, 4(%eax)
	movb	$1, 6(%eax)
	movl	%esi, 12(%eax)
	movb	$2, 7(%eax)
	movl	$_io_readline, 16(%eax)
	andl	$3, %edx
	movb	%dl, 5(%eax)
	movl	8(%ebx), %edx
	movl	-16(%edx), %esi
	movl	-12(%edx), %edi
	leal	-32(%edx), %ecx
	movl	%ecx, 8(%ebx)
	movl	%esi, 40(%eax)
	movl	%edi, 44(%eax)
	movl	-8(%edx), %edx
	movl	%edx, 48(%eax)
	movl	8(%ebx), %edx
	movl	(%edx), %esi
	movl	4(%edx), %edi
	movl	%esi, 24(%eax)
	movl	%edi, 28(%eax)
	movl	8(%edx), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebx), %edx
	movl	%eax, (%edx)
	movl	$6, 8(%edx)
	addl	$16, 8(%ebx)
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2986:
	.cfi_restore_state
	movl	%ebx, %eax
	call	_luaC_step
	movl	20(%ebx), %eax
	cmpl	40(%ebx), %eax
	jne	L2983
L2987:
	movl	72(%ebx), %esi
	jmp	L2984
	.cfi_endproc
LFE488:
	.section	.text.unlikely,"x"
LCOLDE192:
	.text
LHOTE192:
	.section	.text.unlikely,"x"
LCOLDB193:
	.text
LHOTB193:
	.p2align 4,,15
	.def	_lua_pushcclosure.constprop.136;	.scl	3;	.type	32;	.endef
_lua_pushcclosure.constprop.136:
LFB703:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	16(%eax), %eax
	movl	64(%eax), %edi
	cmpl	%edi, 68(%eax)
	jnb	L2993
	movl	20(%ebx), %eax
	cmpl	40(%ebx), %eax
	je	L2994
L2990:
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edi
L2991:
	movl	$24, (%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_luaM_realloc_
	movl	16(%ebx), %edx
	movl	28(%edx), %ecx
	movl	%ecx, (%eax)
	movl	%eax, 28(%edx)
	movzbl	20(%edx), %edx
	movb	$6, 4(%eax)
	movb	$1, 6(%eax)
	movl	%edi, 12(%eax)
	movb	$0, 7(%eax)
	movl	%esi, 16(%eax)
	andl	$3, %edx
	movb	%dl, 5(%eax)
	movl	8(%ebx), %edx
	movl	%eax, (%edx)
	movl	$6, 8(%edx)
	addl	$16, 8(%ebx)
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2993:
	.cfi_restore_state
	movl	%ebx, %eax
	call	_luaC_step
	movl	20(%ebx), %eax
	cmpl	40(%ebx), %eax
	jne	L2990
L2994:
	movl	72(%ebx), %edi
	jmp	L2991
	.cfi_endproc
LFE703:
	.section	.text.unlikely,"x"
LCOLDE193:
	.text
LHOTE193:
	.section	.text.unlikely,"x"
LCOLDB194:
	.text
LHOTB194:
	.p2align 4,,15
	.def	_lua_tolstring.constprop.139;	.scl	3;	.type	32;	.endef
_lua_tolstring.constprop.139:
LFB700:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %esi
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	call	_index2adr
	movl	8(%eax), %edx
	cmpl	$4, %edx
	je	L2996
	cmpl	$3, %edx
	je	L2997
L2999:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L2997:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%ebx, %eax
	call	_luaV_tostring.part.52
	testl	%eax, %eax
	je	L2999
	movl	16(%ebx), %eax
	movl	64(%eax), %ecx
	cmpl	%ecx, 68(%eax)
	jnb	L3008
L3000:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_index2adr
L2996:
	movl	(%eax), %eax
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	addl	$16, %eax
	ret
	.p2align 4,,10
L3008:
	.cfi_restore_state
	movl	%ebx, %eax
	call	_luaC_step
	jmp	L3000
	.cfi_endproc
LFE700:
	.section	.text.unlikely,"x"
LCOLDE194:
	.text
LHOTE194:
	.section .rdata,"dr"
LC195:
	.ascii "cannot %s %s: %s\0"
	.section	.text.unlikely,"x"
LCOLDB196:
	.text
LHOTB196:
	.p2align 4,,15
	.def	_errfile;	.scl	3;	.type	32;	.endef
_errfile:
LFB435:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%ecx, %esi
	movl	%eax, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	call	*__imp___errno
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strerror
	movl	%esi, %edx
	movl	%eax, %ebp
	movl	%ebx, %eax
	call	_lua_tolstring.constprop.139
	addl	$1, %eax
	movl	%ebp, 16(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$LC195, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushfstring
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_index2adr
	movl	8(%ebx), %ecx
	addl	$16, %eax
	cmpl	%ecx, %eax
	jnb	L3012
	.p2align 4,,10
L3013:
	movl	(%eax), %edi
	movl	4(%eax), %ebp
	addl	$16, %eax
	movl	-8(%eax), %edx
	movl	%edi, -32(%eax)
	movl	%ebp, -28(%eax)
	movl	%edx, -24(%eax)
	cmpl	%ecx, %eax
	jb	L3013
L3012:
	subl	$16, %ecx
	movl	$6, %eax
	movl	%ecx, 8(%ebx)
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE435:
	.section	.text.unlikely,"x"
LCOLDE196:
	.text
LHOTE196:
	.section .rdata,"dr"
LC197:
	.ascii "?\0"
LC198:
	.ascii "=stdin\0"
LC199:
	.ascii "@%s\0"
LC200:
	.ascii "r\0"
LC201:
	.ascii "open\0"
LC202:
	.ascii "rb\0"
LC203:
	.ascii "reopen\0"
LC204:
	.ascii "read\0"
	.section	.text.unlikely,"x"
LCOLDB205:
	.text
LHOTB205:
	.p2align 4,,15
	.def	_luaL_loadfile;	.scl	3;	.type	32;	.endef
_luaL_loadfile:
LFB436:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%edx, %esi
	subl	$620, %esp
	.cfi_def_cfa_offset 640
	movl	8(%eax), %eax
	subl	12(%ebx), %eax
	movl	$0, 88(%esp)
	sarl	$4, %eax
	addl	$1, %eax
	testl	%edx, %edx
	movl	%eax, 24(%esp)
	je	L3077
	movl	%edx, 8(%esp)
	movl	$LC199, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushfstring
	movl	$LC200, 4(%esp)
	movl	%esi, (%esp)
	call	_fopen
	testl	%eax, %eax
	movl	%eax, 92(%esp)
	je	L3078
L3019:
	movl	%eax, (%esp)
	call	_getc
	cmpl	$35, %eax
	je	L3079
L3021:
	cmpl	$27, %eax
	jne	L3022
	testl	%esi, %esi
	je	L3022
	movl	92(%esp), %eax
	movl	$LC202, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_freopen
	testl	%eax, %eax
	movl	%eax, 92(%esp)
	jne	L3026
	jmp	L3080
	.p2align 4,,10
L3081:
	cmpl	$27, %eax
	je	L3027
	movl	92(%esp), %eax
L3026:
	movl	%eax, (%esp)
	call	_getc
	cmpl	$-1, %eax
	jne	L3081
L3027:
	movl	$0, 88(%esp)
L3022:
	movl	92(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_ungetc
	movl	$-1, %edx
	movl	%ebx, %eax
	call	_lua_tolstring.constprop.139
	movl	$LC197, %edx
	testl	%eax, %eax
	leal	68(%esp), %ecx
	cmove	%edx, %eax
	leal	88(%esp), %edx
	movl	%ebx, 64(%esp)
	movl	%eax, 84(%esp)
	movl	116(%ebx), %eax
	movl	%edx, 60(%esp)
	leal	48(%esp), %edx
	movl	$_getF, 56(%esp)
	movl	$0, 48(%esp)
	movl	$0, 52(%esp)
	movl	%eax, 28(%esp)
	movl	8(%ebx), %eax
	movl	%edx, 68(%esp)
	movl	$_f_parser, %edx
	movl	$0, 72(%esp)
	movl	$0, 80(%esp)
	movl	40(%ebx), %ebp
	movl	%eax, 32(%esp)
	movl	32(%ebx), %eax
	movl	%eax, 36(%esp)
	movzwl	52(%ebx), %eax
	movw	%ax, 44(%esp)
	movl	20(%ebx), %eax
	movl	%eax, 40(%esp)
	movzbl	57(%ebx), %eax
	movb	%al, 47(%esp)
	movl	%ebx, %eax
	call	_luaD_rawrunprotected
	testl	%eax, %eax
	movl	%eax, %edi
	jne	L3082
L3030:
	movl	28(%esp), %eax
	movl	80(%esp), %ecx
	movl	72(%esp), %edx
	movl	%eax, 116(%ebx)
	movl	%ebx, %eax
	call	_luaM_realloc_.constprop.162
	movl	92(%esp), %eax
	movl	%eax, (%esp)
	call	_ferror
	testl	%esi, %esi
	movl	%eax, %ebp
	je	L3032
	movl	92(%esp), %eax
	movl	%eax, (%esp)
	call	_fclose
L3032:
	testl	%ebp, %ebp
	jne	L3083
	movl	24(%esp), %edx
	movl	%ebx, %eax
	movl	%edi, %ebp
	call	_index2adr
	movl	8(%ebx), %ecx
	addl	$16, %eax
	cmpl	%ecx, %eax
	jnb	L3041
	.p2align 4,,10
L3058:
	movl	(%eax), %esi
	movl	4(%eax), %edi
	addl	$16, %eax
	movl	-8(%eax), %edx
	movl	%esi, -32(%eax)
	movl	%edi, -28(%eax)
	movl	%edx, -24(%eax)
	cmpl	%ecx, %eax
	jb	L3058
	movl	%ebp, %edi
L3041:
	subl	$16, %ecx
	movl	%edi, %eax
	movl	%ecx, 8(%ebx)
L3069:
	addl	$620, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3083:
	.cfi_restore_state
	movl	24(%esp), %eax
	testl	%eax, %eax
	js	L3034
	movl	%eax, %edx
	movl	8(%ebx), %eax
	sall	$4, %edx
	addl	12(%ebx), %edx
	cmpl	%edx, %eax
	jnb	L3038
	.p2align 4,,10
L3057:
	addl	$16, %eax
	movl	$0, -8(%eax)
	cmpl	%eax, %edx
	ja	L3057
L3038:
	movl	%edx, 8(%ebx)
L3036:
	movl	24(%esp), %ecx
	movl	%ebx, %eax
	movl	$LC204, %edx
	call	_errfile
	addl	$620, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3082:
	.cfi_restore_state
	movl	32(%esp), %ecx
	subl	36(%esp), %ecx
	addl	32(%ebx), %ecx
	movl	40(%esp), %eax
	subl	%ebp, %eax
	movl	%ecx, %edx
	movl	%eax, %ebp
	movl	%ebx, %eax
	movl	%ecx, 32(%esp)
	call	_luaF_close
	movl	32(%esp), %ecx
	movl	%edi, %edx
	movl	%ebx, %eax
	call	_luaD_seterrorobj
	movzwl	44(%esp), %eax
	movw	%ax, 52(%ebx)
	movl	40(%ebx), %eax
	addl	%ebp, %eax
	cmpl	$20000, 48(%ebx)
	movl	(%eax), %edx
	movl	%eax, 20(%ebx)
	movl	12(%eax), %eax
	movl	%edx, 12(%ebx)
	movl	%eax, 24(%ebx)
	movzbl	47(%esp), %eax
	movb	%al, 57(%ebx)
	jle	L3030
	cmpl	$479975, %ebp
	jg	L3030
	movl	$20000, %edx
	movl	%ebx, %eax
	call	_luaD_reallocCI
	jmp	L3030
	.p2align 4,,10
L3079:
	movl	$1, 88(%esp)
	jmp	L3023
	.p2align 4,,10
L3085:
	cmpl	$10, %eax
	je	L3084
L3023:
	movl	92(%esp), %eax
	movl	%eax, (%esp)
	call	_getc
	cmpl	$-1, %eax
	jne	L3085
	jmp	L3022
	.p2align 4,,10
L3077:
	movl	%ebx, %eax
	movl	$6, %ecx
	movl	$LC198, %edx
	call	_lua_pushlstring
	movl	__imp___iob, %eax
	movl	%eax, 92(%esp)
	jmp	L3019
	.p2align 4,,10
L3084:
	movl	92(%esp), %eax
	movl	%eax, (%esp)
	call	_getc
	jmp	L3021
	.p2align 4,,10
L3034:
	addl	$1, %eax
	sall	$4, %eax
	addl	%eax, 8(%ebx)
	jmp	L3036
L3078:
	movl	24(%esp), %ecx
	movl	$LC201, %edx
	movl	%ebx, %eax
	call	_errfile
	jmp	L3069
L3080:
	movl	24(%esp), %ecx
	movl	$LC203, %edx
	movl	%ebx, %eax
	call	_errfile
	jmp	L3069
	.cfi_endproc
LFE436:
	.section	.text.unlikely,"x"
LCOLDE205:
	.text
LHOTE205:
	.section .rdata,"dr"
	.align 4
LC206:
	.ascii "PANIC: unprotected error in call to Lua API (%s)\12\0"
	.section	.text.unlikely,"x"
LCOLDB207:
	.text
LHOTB207:
	.p2align 4,,15
	.def	_panic;	.scl	3;	.type	32;	.endef
_panic:
LFB440:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$-1, %edx
	movl	32(%esp), %eax
	call	_lua_tolstring.constprop.139
	movl	%eax, 8(%esp)
	movl	__imp___iob, %eax
	movl	$LC206, 4(%esp)
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE440:
	.section	.text.unlikely,"x"
LCOLDE207:
	.text
LHOTE207:
	.section .rdata,"dr"
LC208:
	.ascii "FILE*\0"
	.section	.text.unlikely,"x"
LCOLDB209:
	.text
LHOTB209:
	.p2align 4,,15
	.def	_newfile;	.scl	3;	.type	32;	.endef
_newfile:
LFB476:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	16(%eax), %eax
	movl	64(%eax), %edi
	cmpl	%edi, 68(%eax)
	jnb	L3093
	movl	20(%ebx), %eax
	cmpl	40(%ebx), %eax
	je	L3094
L3090:
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edi
L3091:
	movl	$28, (%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_luaM_realloc_
	movl	%eax, %esi
	movl	16(%ebx), %eax
	movl	$LC208, %ecx
	movl	$-10000, %edx
	movzbl	20(%eax), %eax
	movl	%edi, 12(%esi)
	movb	$7, 4(%esi)
	movl	$4, 16(%esi)
	movl	$0, 8(%esi)
	andl	$3, %eax
	movb	%al, 5(%esi)
	movl	16(%ebx), %eax
	movl	112(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esi)
	movl	16(%ebx), %eax
	movl	112(%eax), %eax
	movl	%esi, (%eax)
	movl	8(%ebx), %eax
	movl	%esi, (%eax)
	movl	$7, 8(%eax)
	movl	%ebx, %eax
	addl	$16, 8(%ebx)
	movl	$0, 24(%esi)
	call	_lua_getfield
	movl	%ebx, %eax
	movl	$-2, %edx
	call	_lua_setmetatable
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	leal	24(%esi), %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3093:
	.cfi_restore_state
	movl	%ebx, %eax
	call	_luaC_step
	movl	20(%ebx), %eax
	cmpl	40(%ebx), %eax
	jne	L3090
L3094:
	movl	72(%ebx), %edi
	jmp	L3091
	.cfi_endproc
LFE476:
	.section	.text.unlikely,"x"
LCOLDE209:
	.text
LHOTE209:
	.section .rdata,"dr"
LC210:
	.ascii "%s:%d: \0"
LC211:
	.ascii "Sl\0"
	.section	.text.unlikely,"x"
LCOLDB212:
	.text
LHOTB212:
	.p2align 4,,15
	.def	_luaL_error;	.scl	3;	.type	32;	.endef
_luaL_error:
LFB411:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	$1, %edx
	subl	$132, %esp
	.cfi_def_cfa_offset 144
	movl	144(%esp), %ebx
	movl	20(%ebx), %eax
	movl	40(%ebx), %esi
	.p2align 4,,10
L3096:
	cmpl	%eax, %esi
	jnb	L3100
	movl	4(%eax), %ecx
	subl	$1, %edx
	movl	(%ecx), %ecx
	cmpb	$0, 6(%ecx)
	jne	L3097
	subl	20(%eax), %edx
L3097:
	subl	$24, %eax
	cmpl	$0, %edx
	jg	L3096
	jne	L3101
	cmpl	%esi, %eax
	ja	L3110
L3100:
	xorl	%ecx, %ecx
	movl	$LC75, %edx
	movl	%ebx, %eax
	call	_lua_pushlstring
L3103:
	movl	16(%ebx), %eax
	movl	64(%eax), %esi
	cmpl	%esi, 68(%eax)
	jb	L3104
	movl	%ebx, %eax
	call	_luaC_step
L3104:
	movl	148(%esp), %edx
	leal	152(%esp), %ecx
	movl	%ebx, %eax
	call	_luaO_pushvfstring
	movl	16(%ebx), %eax
	movl	64(%eax), %esi
	cmpl	%esi, 68(%eax)
	jb	L3105
	movl	%ebx, %eax
	call	_luaC_step
L3105:
	movl	8(%ebx), %ecx
	subl	12(%ebx), %ecx
	movl	%ebx, %eax
	movl	$2, %edx
	sarl	$4, %ecx
	subl	$1, %ecx
	call	_luaV_concat
	subl	$16, 8(%ebx)
	movl	%ebx, %eax
	call	_luaG_errormsg
	addl	$132, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L3101:
	.cfi_restore_state
	movl	$0, 124(%esp)
L3102:
	leal	28(%esp), %ecx
	movl	$LC211, %edx
	movl	%ebx, %eax
	call	_lua_getinfo
	movl	48(%esp), %eax
	testl	%eax, %eax
	jle	L3100
	movl	%eax, 12(%esp)
	leal	64(%esp), %eax
	movl	$LC210, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	call	_lua_pushfstring
	jmp	L3103
	.p2align 4,,10
L3110:
	subl	%esi, %eax
	sarl	$3, %eax
	imull	$-1431655765, %eax, %eax
	movl	%eax, 124(%esp)
	jmp	L3102
	.cfi_endproc
LFE411:
	.section	.text.unlikely,"x"
LCOLDE212:
	.text
LHOTE212:
	.section .rdata,"dr"
	.align 4
LC213:
	.ascii "malformed pattern (ends with '%%')\0"
	.align 4
LC214:
	.ascii "malformed pattern (missing ']')\0"
	.section	.text.unlikely,"x"
LCOLDB215:
	.text
LHOTB215:
	.p2align 4,,15
	.def	_classend.isra.68;	.scl	3;	.type	32;	.endef
_classend.isra.68:
LFB632:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %esi
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	movzbl	(%edx), %eax
	cmpb	$37, %al
	je	L3113
	cmpb	$91, %al
	leal	1(%edx), %ebx
	jne	L3129
	movzbl	1(%edx), %eax
	cmpb	$94, %al
	je	L3130
	.p2align 4,,10
L3117:
	testb	%al, %al
	je	L3126
	cmpb	$37, %al
	leal	1(%ebx), %edx
	je	L3119
L3131:
	movzbl	1(%ebx), %eax
	movl	%edx, %ebx
L3120:
	cmpb	$93, %al
	jne	L3117
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	leal	1(%ebx), %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3129:
	.cfi_restore_state
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3124:
	.cfi_restore_state
	movl	%edx, %ebx
L3126:
	movl	(%esi), %eax
	movl	$LC214, 4(%esp)
	movl	%eax, (%esp)
	call	_luaL_error
	movzbl	(%ebx), %eax
	leal	1(%ebx), %edx
	cmpb	$37, %al
	jne	L3131
L3119:
	cmpb	$0, 1(%ebx)
	je	L3124
	movzbl	2(%ebx), %eax
	addl	$2, %ebx
	jmp	L3120
	.p2align 4,,10
L3113:
	cmpb	$0, 1(%edx)
	jne	L3115
	movl	(%esi), %eax
	movl	$LC213, 4(%esp)
	movl	%edx, 28(%esp)
	movl	%eax, (%esp)
	call	_luaL_error
	movl	28(%esp), %edx
L3115:
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	leal	2(%edx), %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3130:
	.cfi_restore_state
	leal	2(%edx), %ebx
	movzbl	2(%edx), %eax
	jmp	L3117
	.cfi_endproc
LFE632:
	.section	.text.unlikely,"x"
LCOLDE215:
	.text
LHOTE215:
	.section .rdata,"dr"
LC216:
	.ascii "n\0"
LC217:
	.ascii "method\0"
LC218:
	.ascii "calling '%s' on bad self (%s)\0"
LC219:
	.ascii "bad argument #%d to '%s' (%s)\0"
LC220:
	.ascii "bad argument #%d (%s)\0"
	.section	.text.unlikely,"x"
LCOLDB221:
	.text
LHOTB221:
	.p2align 4,,15
	.def	_luaL_argerror;	.scl	3;	.type	32;	.endef
_luaL_argerror:
LFB407:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$172, %esp
	.cfi_def_cfa_offset 192
	movl	20(%eax), %eax
	movl	40(%ebx), %edx
	movl	%ecx, 44(%esp)
	cmpl	%edx, %eax
	ja	L3139
	movl	%ecx, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	$LC220, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_error
L3137:
	addl	$172, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3139:
	.cfi_restore_state
	subl	%edx, %eax
	leal	60(%esp), %ecx
	movl	$LC216, %edx
	sarl	$3, %eax
	movl	$LC217, %edi
	imull	$-1431655765, %eax, %eax
	movl	%eax, 156(%esp)
	movl	%ebx, %eax
	call	_lua_getinfo
	movl	68(%esp), %esi
	movl	$7, %ecx
	repz cmpsb
	jne	L3134
	subl	$1, %ebp
	je	L3140
L3134:
	movl	64(%esp), %eax
	testl	%eax, %eax
	je	L3141
L3136:
	movl	44(%esp), %edi
	movl	%ebp, 8(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 12(%esp)
	movl	$LC219, 4(%esp)
	movl	%edi, 16(%esp)
	call	_luaL_error
	addl	$172, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3141:
	.cfi_restore_state
	movl	$LC197, 64(%esp)
	movl	$LC197, %eax
	jmp	L3136
L3140:
	movl	44(%esp), %eax
	movl	$LC218, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 12(%esp)
	movl	64(%esp), %eax
	movl	%eax, 8(%esp)
	call	_luaL_error
	jmp	L3137
	.cfi_endproc
LFE407:
	.section	.text.unlikely,"x"
LCOLDE221:
	.text
LHOTE221:
	.section .rdata,"dr"
LC222:
	.ascii "no value\0"
LC223:
	.ascii "%s expected, got %s\0"
	.section	.text.unlikely,"x"
LCOLDB224:
	.text
LHOTB224:
	.p2align 4,,15
	.def	_luaL_typerror;	.scl	3;	.type	32;	.endef
_luaL_typerror:
LFB408:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%ecx, %edi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edx, %esi
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	call	_index2adr
	cmpl	$_luaO_nilobject_, %eax
	je	L3145
	movl	8(%eax), %eax
	cmpl	$-1, %eax
	je	L3145
	movl	_luaT_typenames(,%eax,4), %eax
L3143:
	movl	%edi, 8(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 12(%esp)
	movl	$LC223, 4(%esp)
	call	_lua_pushfstring
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%eax, %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_luaL_argerror
	.p2align 4,,10
L3145:
	.cfi_restore_state
	movl	$LC222, %eax
	jmp	L3143
	.cfi_endproc
LFE408:
	.section	.text.unlikely,"x"
LCOLDE224:
	.text
LHOTE224:
	.section .rdata,"dr"
LC226:
	.ascii "number\0"
	.section	.text.unlikely,"x"
LCOLDB227:
	.text
LHOTB227:
	.p2align 4,,15
	.def	_barg;	.scl	3;	.type	32;	.endef
_barg:
LFB550:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %edi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %esi
	subl	$32, %esp
	.cfi_def_cfa_offset 48
	call	_index2adr
	movl	8(%eax), %edx
	cmpl	$3, %edx
	je	L3148
	xorl	%ebx, %ebx
	cmpl	$4, %edx
	je	L3161
L3158:
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3161:
	.cfi_restore_state
	leal	16(%esp), %edx
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	je	L3158
L3148:
	flds	LC225
	faddl	(%eax)
	fstpl	8(%esp)
	movl	8(%esp), %ebx
	fldz
	fldl	8(%esp)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L3158
	jne	L3158
	movl	%edi, %edx
	movl	%esi, %eax
	call	_lua_isnumber
	testl	%eax, %eax
	jne	L3158
	movl	%edi, %edx
	movl	%esi, %eax
	movl	$LC226, %ecx
	call	_luaL_typerror
	addl	$32, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE550:
	.section	.text.unlikely,"x"
LCOLDE227:
	.text
LHOTE227:
	.section	.text.unlikely,"x"
LCOLDB228:
	.text
LHOTB228:
	.p2align 4,,15
	.def	_luaL_checkinteger;	.scl	3;	.type	32;	.endef
_luaL_checkinteger:
LFB420:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %edi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %esi
	subl	$32, %esp
	.cfi_def_cfa_offset 48
	call	_index2adr
	movl	8(%eax), %edx
	cmpl	$3, %edx
	je	L3163
	cmpl	$4, %edx
	je	L3178
L3167:
	movl	%edi, %edx
	movl	%esi, %eax
	call	_lua_isnumber
	testl	%eax, %eax
	movl	%eax, %ebx
	je	L3179
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3178:
	.cfi_restore_state
	leal	16(%esp), %edx
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	je	L3167
L3163:
	fldl	(%eax)
	fnstcw	14(%esp)
	movzwl	14(%esp), %eax
	movb	$12, %ah
	movw	%ax, 12(%esp)
	fldcw	12(%esp)
	fistpl	8(%esp)
	fldcw	14(%esp)
	movl	8(%esp), %ebx
	testl	%ebx, %ebx
	je	L3167
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3179:
	.cfi_restore_state
	movl	%edi, %edx
	movl	%esi, %eax
	movl	$LC226, %ecx
	call	_luaL_typerror
	addl	$32, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE420:
	.section	.text.unlikely,"x"
LCOLDE228:
	.text
LHOTE228:
	.section	.text.unlikely,"x"
LCOLDB229:
	.text
LHOTB229:
	.p2align 4,,15
	.def	_barg.constprop.107;	.scl	3;	.type	32;	.endef
_barg.constprop.107:
LFB732:
	.cfi_startproc
	movl	12(%eax), %ecx
	cmpl	8(%eax), %ecx
	jnb	L3198
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %esi
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	movl	8(%ecx), %eax
	cmpl	$3, %eax
	jne	L3200
L3188:
	flds	LC225
	faddl	(%ecx)
	fstpl	8(%esp)
	movl	8(%esp), %ebx
	fldz
	fldl	8(%esp)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L3199
	jne	L3199
	movl	$1, %edx
	movl	%esi, %eax
	call	_lua_isnumber
	testl	%eax, %eax
	je	L3201
L3199:
	movl	%ebx, %eax
L3195:
	addl	$36, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3198:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
L3201:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	$LC226, %ecx
	movl	$1, %edx
	movl	%esi, %eax
	call	_luaL_typerror
	jmp	L3199
	.p2align 4,,10
L3200:
	cmpl	$4, %eax
	jne	L3181
	leal	16(%esp), %edx
	movl	%ecx, %eax
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	L3188
L3181:
	xorl	%eax, %eax
	jmp	L3195
	.cfi_endproc
LFE732:
	.section	.text.unlikely,"x"
LCOLDE229:
	.text
LHOTE229:
	.section	.text.unlikely,"x"
LCOLDB230:
	.text
LHOTB230:
	.p2align 4,,15
	.def	_tobit;	.scl	3;	.type	32;	.endef
_tobit:
LFB551:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	_barg.constprop.107
	movl	%eax, 12(%esp)
	movl	8(%ebx), %eax
	fildl	12(%esp)
	movl	$3, 8(%eax)
	fstpl	(%eax)
	addl	$16, 8(%ebx)
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE551:
	.section	.text.unlikely,"x"
LCOLDE230:
	.text
LHOTE230:
	.section	.text.unlikely,"x"
LCOLDB231:
	.text
LHOTB231:
	.p2align 4,,15
	.def	_bnot;	.scl	3;	.type	32;	.endef
_bnot:
LFB552:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	_barg.constprop.107
	notl	%eax
	movl	8(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$1, %eax
	fildl	12(%esp)
	movl	$3, 8(%edx)
	fstpl	(%edx)
	addl	$16, 8(%ebx)
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE552:
	.section	.text.unlikely,"x"
LCOLDE231:
	.text
LHOTE231:
	.section	.text.unlikely,"x"
LCOLDB232:
	.text
LHOTB232:
	.p2align 4,,15
	.def	_lshift;	.scl	3;	.type	32;	.endef
_lshift:
LFB556:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	_barg.constprop.107
	movl	$2, %edx
	movl	%eax, %esi
	movl	%ebx, %eax
	call	_barg
	movl	%eax, %ecx
	movl	8(%ebx), %edx
	movl	$1, %eax
	sall	%cl, %esi
	movl	%esi, 12(%esp)
	fildl	12(%esp)
	movl	$3, 8(%edx)
	fstpl	(%edx)
	addl	$16, 8(%ebx)
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE556:
	.section	.text.unlikely,"x"
LCOLDE232:
	.text
LHOTE232:
	.section	.text.unlikely,"x"
LCOLDB233:
	.text
LHOTB233:
	.p2align 4,,15
	.def	_rshift;	.scl	3;	.type	32;	.endef
_rshift:
LFB557:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	_barg.constprop.107
	movl	$2, %edx
	movl	%eax, %esi
	movl	%ebx, %eax
	call	_barg
	movl	%eax, %ecx
	movl	8(%ebx), %edx
	movl	$1, %eax
	shrl	%cl, %esi
	movl	%esi, 12(%esp)
	fildl	12(%esp)
	movl	$3, 8(%edx)
	fstpl	(%edx)
	addl	$16, 8(%ebx)
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE557:
	.section	.text.unlikely,"x"
LCOLDE233:
	.text
LHOTE233:
	.section	.text.unlikely,"x"
LCOLDB234:
	.text
LHOTB234:
	.p2align 4,,15
	.def	_arshift;	.scl	3;	.type	32;	.endef
_arshift:
LFB558:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	_barg.constprop.107
	movl	$2, %edx
	movl	%eax, %esi
	movl	%ebx, %eax
	call	_barg
	movl	%eax, %ecx
	movl	8(%ebx), %edx
	movl	$1, %eax
	sarl	%cl, %esi
	movl	%esi, 12(%esp)
	fildl	12(%esp)
	movl	$3, 8(%edx)
	fstpl	(%edx)
	addl	$16, 8(%ebx)
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE558:
	.section	.text.unlikely,"x"
LCOLDE234:
	.text
LHOTE234:
	.section	.text.unlikely,"x"
LCOLDB235:
	.text
LHOTB235:
	.p2align 4,,15
	.def	_rol;	.scl	3;	.type	32;	.endef
_rol:
LFB559:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	_barg.constprop.107
	movl	$2, %edx
	movl	%eax, %esi
	movl	%ebx, %eax
	call	_barg
	movl	%eax, %ecx
	movl	8(%ebx), %edx
	movl	$1, %eax
	roll	%cl, %esi
	movl	%esi, 12(%esp)
	fildl	12(%esp)
	movl	$3, 8(%edx)
	fstpl	(%edx)
	addl	$16, 8(%ebx)
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE559:
	.section	.text.unlikely,"x"
LCOLDE235:
	.text
LHOTE235:
	.section	.text.unlikely,"x"
LCOLDB236:
	.text
LHOTB236:
	.p2align 4,,15
	.def	_ror;	.scl	3;	.type	32;	.endef
_ror:
LFB560:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	_barg.constprop.107
	movl	$2, %edx
	movl	%eax, %esi
	movl	%ebx, %eax
	call	_barg
	movl	%eax, %ecx
	movl	8(%ebx), %edx
	movl	$1, %eax
	rorl	%cl, %esi
	movl	%esi, 12(%esp)
	fildl	12(%esp)
	movl	$3, 8(%edx)
	fstpl	(%edx)
	addl	$16, 8(%ebx)
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE560:
	.section	.text.unlikely,"x"
LCOLDE236:
	.text
LHOTE236:
	.section	.text.unlikely,"x"
LCOLDB237:
	.text
LHOTB237:
	.p2align 4,,15
	.def	_bswap;	.scl	3;	.type	32;	.endef
_bswap:
LFB561:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	_barg.constprop.107
	bswap	%eax
	movl	8(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	$1, %eax
	fildl	12(%esp)
	movl	$3, 8(%edx)
	fstpl	(%edx)
	addl	$16, 8(%ebx)
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE561:
	.section	.text.unlikely,"x"
LCOLDE237:
	.text
LHOTE237:
	.section .rdata,"dr"
LC238:
	.ascii "0123456789abcdef\0"
LC239:
	.ascii "0123456789ABCDEF\0"
	.section	.text.unlikely,"x"
LCOLDB240:
	.text
LHOTB240:
	.p2align 4,,15
	.def	_tohex;	.scl	3;	.type	32;	.endef
_tohex:
LFB562:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %ebx
	movl	%ebx, %eax
	call	_barg.constprop.107
	movl	%eax, %edi
	movl	12(%ebx), %eax
	leal	16(%eax), %edx
	cmpl	8(%ebx), %edx
	jnb	L3219
	cmpl	$_luaO_nilobject_, %edx
	je	L3219
	cmpl	$-1, 24(%eax)
	je	L3220
	movl	$2, %edx
	movl	%ebx, %eax
	call	_barg
	testl	%eax, %eax
	jns	L3255
	negl	%eax
	movl	$LC239, %esi
	movl	%eax, %ecx
	cmpl	$8, %eax
	movl	$8, %eax
	cmovg	%eax, %ecx
	leal	-1(%ecx), %edx
	movl	%ecx, 12(%esp)
L3222:
	cmpl	$-1, %edx
	je	L3223
	movl	%edi, %eax
	andl	$15, %eax
	movzbl	(%esi,%eax), %eax
	movb	%al, 24(%esp,%edx)
	movl	%edi, %eax
	subl	$1, %edx
	shrl	$4, %eax
	cmpl	$-1, %edx
	jne	L3225
	jmp	L3223
	.p2align 4,,10
L3219:
	movl	%edi, %eax
	movl	$8, 12(%esp)
	movl	$LC238, %esi
	andl	$15, %eax
	movl	$6, %edx
	movzbl	LC238(%eax), %eax
	movb	%al, 31(%esp)
	movl	%edi, %eax
	shrl	$4, %eax
L3225:
	movl	%eax, %edi
	shrl	$4, %eax
	andl	$15, %edi
	movzbl	(%esi,%edi), %ecx
	movb	%cl, 24(%esp,%edx)
	subl	$1, %edx
	cmpl	$-1, %edx
	je	L3223
L3224:
	movl	%eax, %edi
	movl	%eax, %ebp
	andl	$15, %edi
	shrl	$4, %ebp
	movzbl	(%esi,%edi), %ecx
	leal	-1(%edx), %edi
	cmpl	$-1, %edi
	movb	%cl, 24(%esp,%edx)
	je	L3223
	andl	$15, %ebp
	leal	-2(%edx), %edi
	movzbl	(%esi,%ebp), %ecx
	movl	%eax, %ebp
	shrl	$8, %ebp
	cmpl	$-1, %edi
	movb	%cl, 23(%esp,%edx)
	je	L3223
	andl	$15, %ebp
	leal	-3(%edx), %edi
	movzbl	(%esi,%ebp), %ecx
	movl	%eax, %ebp
	shrl	$12, %ebp
	cmpl	$-1, %edi
	movb	%cl, 22(%esp,%edx)
	je	L3223
	andl	$15, %ebp
	leal	-4(%edx), %edi
	movzbl	(%esi,%ebp), %ecx
	movl	%eax, %ebp
	shrl	$16, %ebp
	cmpl	$-1, %edi
	movb	%cl, 21(%esp,%edx)
	je	L3223
	andl	$15, %ebp
	shrl	$20, %eax
	cmpl	$4, %edx
	movzbl	(%esi,%ebp), %ecx
	movb	%cl, 20(%esp,%edx)
	je	L3223
	movzbl	(%esi,%eax), %eax
	movb	%al, 24(%esp)
L3223:
	movl	12(%esp), %ecx
	leal	24(%esp), %edx
	movl	%ebx, %eax
	call	_lua_pushlstring
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3255:
	.cfi_restore_state
	cmpl	$8, %eax
	movl	$8, %ecx
	movl	$LC238, %esi
	cmovle	%eax, %ecx
	leal	-1(%ecx), %edx
	movl	%ecx, 12(%esp)
	jmp	L3222
L3220:
	movl	%edi, %eax
	movl	$8, 12(%esp)
	movl	$LC238, %esi
	andl	$15, %eax
	movl	$5, %edx
	movzbl	LC238(%eax), %eax
	movb	%al, 31(%esp)
	movl	%edi, %eax
	shrl	$4, %eax
	andl	$15, %eax
	movzbl	LC238(%eax), %eax
	movb	%al, 30(%esp)
	movl	%edi, %eax
	shrl	$8, %eax
	jmp	L3224
	.cfi_endproc
LFE562:
	.section	.text.unlikely,"x"
LCOLDE240:
	.text
LHOTE240:
	.section .rdata,"dr"
LC241:
	.ascii "table\0"
	.section	.text.unlikely,"x"
LCOLDB242:
	.text
LHOTB242:
	.p2align 4,,15
	.def	_luaL_checktype.constprop.123;	.scl	3;	.type	32;	.endef
_luaL_checktype.constprop.123:
LFB716:
	.cfi_startproc
	movl	12(%eax), %edx
	cmpl	8(%eax), %edx
	jnb	L3257
	cmpl	$_luaO_nilobject_, %edx
	je	L3257
	cmpl	$5, 8(%edx)
	je	L3256
L3257:
	movl	$LC241, %ecx
	movl	$1, %edx
	jmp	_luaL_typerror
	.p2align 4,,10
L3256:
	rep ret
	.cfi_endproc
LFE716:
	.section	.text.unlikely,"x"
LCOLDE242:
	.text
LHOTE242:
	.section .rdata,"dr"
LC243:
	.ascii "invalid key to 'next'\0"
	.section	.text.unlikely,"x"
LCOLDB244:
	.text
LHOTB244:
	.p2align 4,,15
	.def	_luaB_next;	.scl	3;	.type	32;	.endef
_luaB_next:
LFB449:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %eax
	call	_luaL_checktype.constprop.123
	movl	64(%esp), %eax
	movl	12(%eax), %ebx
	movl	8(%eax), %eax
	leal	32(%ebx), %edx
	cmpl	%edx, %eax
	jnb	L3267
	.p2align 4,,10
L3304:
	addl	$16, %eax
	movl	$0, -8(%eax)
	cmpl	%edx, %eax
	jb	L3304
L3267:
	movl	64(%esp), %eax
	movl	%edx, 8(%eax)
	movl	24(%ebx), %eax
	movl	(%ebx), %esi
	testl	%eax, %eax
	je	L3324
	cmpl	$3, %eax
	je	L3325
L3269:
	leal	16(%ebx), %edx
	movl	%esi, %eax
	xorl	%edi, %edi
	call	_mainposition
	movl	24(%ebx), %ecx
	jmp	L3279
	.p2align 4,,10
L3270:
	cmpl	$11, %edx
	jne	L3278
	cmpl	$3, %ecx
	jle	L3278
	movl	16(%ebx), %edx
	cmpl	%edx, 16(%eax)
	je	L3274
L3278:
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L3326
L3279:
	movl	24(%eax), %edx
	cmpl	%ecx, %edx
	jne	L3270
	cmpl	$1, %ecx
	je	L3275
	jle	L3327
	cmpl	$2, %ecx
	je	L3275
	cmpl	$3, %ecx
	jne	L3271
	fldl	16(%eax)
	xorl	%edx, %edx
	fldl	16(%ebx)
	fucomip	%st(1), %st
	fstp	%st(0)
	setnp	%dl
	cmovne	%edi, %edx
L3277:
	testl	%edx, %edx
	je	L3278
L3274:
	subl	16(%esi), %eax
	movl	28(%esi), %edi
	sarl	$5, %eax
	leal	1(%edi,%eax), %eax
L3268:
	cmpl	%edi, %eax
	jge	L3280
	movl	12(%esi), %ebp
	movl	%eax, %ecx
	sall	$4, %ecx
	movl	8(%ebp,%ecx), %edx
	testl	%edx, %edx
	jne	L3281
	addl	$16, %ecx
	jmp	L3283
	.p2align 4,,10
L3285:
	leal	16(%ecx), %edx
	cmpl	$0, -8(%ebp,%edx)
	jne	L3281
	movl	%edx, %ecx
L3283:
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	L3285
L3280:
	movzbl	7(%esi), %ecx
	subl	%edi, %eax
	movl	$1, %edi
	sall	%cl, %edi
	cmpl	%edi, %eax
	jge	L3286
	movl	16(%esi), %edx
	movl	%eax, %ecx
	sall	$5, %ecx
	addl	%edx, %ecx
	movl	8(%ecx), %ebp
	testl	%ebp, %ebp
	jne	L3287
	addl	$1, %eax
	movl	%eax, %ecx
	sall	$5, %ecx
	addl	%ecx, %edx
	jmp	L3289
	.p2align 4,,10
L3290:
	movl	%edx, %ecx
	addl	$32, %edx
	movl	-24(%edx), %esi
	testl	%esi, %esi
	jne	L3287
	addl	$1, %eax
L3289:
	cmpl	%edi, %eax
	jne	L3290
L3286:
	movl	64(%esp), %eax
	movl	64(%esp), %esi
	movl	8(%eax), %eax
	movl	$0, -8(%eax)
	movl	%eax, 8(%esi)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3275:
	.cfi_restore_state
	movl	16(%ebx), %edx
	cmpl	%edx, 16(%eax)
	sete	%dl
	movzbl	%dl, %edx
	jmp	L3277
	.p2align 4,,10
L3327:
	testl	%ecx, %ecx
	je	L3274
L3271:
	movl	16(%ebx), %ebp
	cmpl	%ebp, 16(%eax)
	jne	L3270
	jmp	L3274
	.p2align 4,,10
L3281:
	addl	$1, %eax
	movl	$3, 24(%ebx)
	movl	%eax, 20(%esp)
	fildl	20(%esp)
	fstpl	16(%ebx)
	addl	12(%esi), %ecx
L3322:
	movl	(%ecx), %eax
	movl	4(%ecx), %edx
	movl	%eax, 32(%ebx)
	movl	%edx, 36(%ebx)
	movl	8(%ecx), %eax
	movl	%eax, 40(%ebx)
	movl	64(%esp), %eax
	addl	$16, 8(%eax)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$2, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3326:
	.cfi_restore_state
	movl	64(%esp), %eax
	movl	$LC243, 4(%esp)
	movl	%eax, (%esp)
	call	_luaG_runerror
	movl	28(%esi), %edi
	movl	$1, %eax
	jmp	L3268
	.p2align 4,,10
L3325:
	fldl	16(%ebx)
	fnstcw	30(%esp)
	movzwl	30(%esp), %eax
	movl	$0, %ecx
	movb	$12, %ah
	movw	%ax, 28(%esp)
	fldcw	28(%esp)
	fistl	24(%esp)
	fldcw	30(%esp)
	movl	24(%esp), %eax
	movl	%eax, 20(%esp)
	fildl	20(%esp)
	fucomip	%st(1), %st
	fstp	%st(0)
	setnp	%dl
	cmovne	%ecx, %edx
	testb	%dl, %dl
	je	L3269
	testl	%eax, %eax
	jle	L3269
	movl	28(%esi), %edi
	cmpl	%edi, %eax
	jg	L3269
	jmp	L3268
	.p2align 4,,10
L3287:
	movl	16(%ecx), %eax
	movl	20(%ecx), %edx
	movl	%eax, 16(%ebx)
	movl	%edx, 20(%ebx)
	movl	24(%ecx), %eax
	movl	%eax, 24(%ebx)
	jmp	L3322
L3324:
	movl	28(%esi), %edi
	xorl	%eax, %eax
	jmp	L3268
	.cfi_endproc
LFE449:
	.section	.text.unlikely,"x"
LCOLDE244:
	.text
LHOTE244:
	.section	.text.unlikely,"x"
LCOLDB245:
	.text
LHOTB245:
	.p2align 4,,15
	.def	_luaL_checkudata.constprop.124;	.scl	3;	.type	32;	.endef
_luaL_checkudata.constprop.124:
LFB715:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	12(%eax), %eax
	cmpl	8(%ebx), %eax
	jb	L3349
L3329:
	movl	%ebx, %eax
	xorl	%edi, %edi
	movl	$LC208, %ecx
	movl	$1, %edx
	call	_luaL_typerror
	movl	%edi, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3349:
	.cfi_restore_state
	movl	8(%eax), %edx
	cmpl	$2, %edx
	jne	L3350
	movl	(%eax), %edi
L3332:
	testl	%edi, %edi
	je	L3329
	movl	%ebx, %eax
	call	_lua_getmetatable.constprop.151
	testl	%eax, %eax
	je	L3329
	movl	%ebx, %eax
	movl	$LC208, %ecx
	movl	$-10000, %edx
	call	_lua_getfield
	movl	8(%ebx), %esi
	leal	-16(%esi), %eax
	subl	$32, %esi
	cmpl	$_luaO_nilobject_, %esi
	je	L3329
	cmpl	$_luaO_nilobject_, %eax
	je	L3329
	movl	%esi, %edx
	call	_luaO_rawequalObj
	testl	%eax, %eax
	je	L3329
	movl	%esi, 8(%ebx)
	movl	%edi, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3350:
	.cfi_restore_state
	cmpl	$7, %edx
	jne	L3329
	movl	(%eax), %edi
	addl	$24, %edi
	jmp	L3332
	.cfi_endproc
LFE715:
	.section	.text.unlikely,"x"
LCOLDE245:
	.text
LHOTE245:
	.section	.text.unlikely,"x"
LCOLDB246:
	.text
LHOTB246:
	.p2align 4,,15
	.def	_io_fclose;	.scl	3;	.type	32;	.endef
_io_fclose:
LFB479:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	_luaL_checkudata.constprop.124
	movl	%eax, %esi
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_fclose
	xorl	%edx, %edx
	testl	%eax, %eax
	movl	$0, (%esi)
	sete	%dl
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_pushresult.constprop.113
	.cfi_endproc
LFE479:
	.section	.text.unlikely,"x"
LCOLDE246:
	.text
LHOTE246:
	.section	.text.unlikely,"x"
LCOLDB247:
	.text
LHOTB247:
	.p2align 4,,15
	.def	_io_pclose;	.scl	3;	.type	32;	.endef
_io_pclose:
LFB478:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	%ebx, %eax
	call	_luaL_checkudata.constprop.124
	movl	$0, (%eax)
	call	*__imp___errno
	movl	(%eax), %esi
	movl	8(%ebx), %eax
	movl	$0, 8(%eax)
	addl	$16, %eax
	movl	%eax, 8(%ebx)
	movl	%esi, (%esp)
	call	_strerror
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	movl	$LC166, 4(%esp)
	call	_lua_pushfstring
	movl	8(%ebx), %eax
	movl	%esi, 28(%esp)
	fildl	28(%esp)
	movl	$3, 8(%eax)
	fstpl	(%eax)
	addl	$16, 8(%ebx)
	addl	$36, %esp
	.cfi_def_cfa_offset 12
	movl	$3, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE478:
	.section	.text.unlikely,"x"
LCOLDE247:
	.text
LHOTE247:
	.section .rdata,"dr"
LC248:
	.ascii "__close\0"
	.section	.text.unlikely,"x"
LCOLDB249:
	.text
LHOTB249:
	.p2align 4,,15
	.def	_io_gc;	.scl	3;	.type	32;	.endef
_io_gc:
LFB482:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	_luaL_checkudata.constprop.124
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L3356
	movl	12(%ebx), %eax
	movl	8(%ebx), %ecx
	cmpl	%ecx, %eax
	jnb	L3357
	movl	8(%eax), %edx
	cmpl	$7, %edx
	je	L3358
	cmpl	$8, %edx
	jne	L3366
	movl	(%eax), %esi
	movl	72(%esi), %eax
	movl	76(%esi), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	80(%esi), %eax
	movl	%eax, 8(%ecx)
	jmp	L3361
	.p2align 4,,10
L3366:
	cmpl	$6, %edx
	jne	L3357
L3358:
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	$5, 8(%ecx)
	movl	%eax, (%ecx)
	movl	8(%ebx), %ecx
L3361:
	addl	$16, %ecx
	movl	$-1, %edx
	movl	%ebx, %eax
	movl	%ecx, 8(%ebx)
	movl	$LC248, %ecx
	call	_lua_getfield
	movl	8(%ebx), %eax
	xorl	%edx, %edx
	cmpl	$6, -8(%eax)
	jne	L3362
	movl	-16(%eax), %eax
	cmpb	$0, 6(%eax)
	je	L3362
	movl	16(%eax), %edx
L3362:
	movl	%ebx, (%esp)
	call	*%edx
L3356:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3357:
	.cfi_restore_state
	movl	$0, 8(%ecx)
	jmp	L3361
	.cfi_endproc
LFE482:
	.section	.text.unlikely,"x"
LCOLDE249:
	.text
LHOTE249:
	.section .rdata,"dr"
LC250:
	.ascii "string\0"
	.section	.text.unlikely,"x"
LCOLDB251:
	.text
LHOTB251:
	.p2align 4,,15
	.def	_luaL_checklstring.constprop.138;	.scl	3;	.type	32;	.endef
_luaL_checklstring.constprop.138:
LFB701:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %ecx
	movl	$1, %edx
	movl	%eax, %esi
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, %ebx
	je	L3370
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3370:
	.cfi_restore_state
	movl	%esi, %eax
	movl	$LC250, %ecx
	movl	$1, %edx
	call	_luaL_typerror
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE701:
	.section	.text.unlikely,"x"
LCOLDE251:
	.text
LHOTE251:
	.section	.text.unlikely,"x"
LCOLDB252:
	.text
LHOTB252:
	.p2align 4,,15
	.def	_g_write;	.scl	3;	.type	32;	.endef
_g_write:
LFB499:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	8(%eax), %eax
	subl	12(%esi), %eax
	movl	%edx, 28(%esp)
	sarl	$4, %eax
	cmpl	$1, %eax
	je	L3382
	leal	-1(%ecx,%eax), %eax
	movl	%ecx, %ebx
	movl	$1, %edi
	movl	%eax, 24(%esp)
	jmp	L3381
	.p2align 4,,10
L3401:
	testl	%edi, %edi
	jne	L3400
L3374:
	addl	$1, %ebx
	cmpl	24(%esp), %ebx
	je	L3372
L3381:
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_index2adr
	cmpl	$_luaO_nilobject_, %eax
	je	L3373
	cmpl	$3, 8(%eax)
	je	L3401
L3373:
	leal	32(%esp), %ecx
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, %ebp
	je	L3402
L3379:
	testl	%edi, %edi
	je	L3374
	movl	28(%esp), %eax
	movl	$1, 4(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 12(%esp)
	movl	32(%esp), %eax
	movl	%eax, 8(%esp)
	call	_fwrite
	cmpl	%eax, 32(%esp)
	sete	%al
	addl	$1, %ebx
	cmpl	24(%esp), %ebx
	movzbl	%al, %eax
	movl	%eax, %edi
	jne	L3381
L3372:
	movl	%edi, %edx
	movl	%esi, %eax
	call	_pushresult.constprop.113
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3400:
	.cfi_restore_state
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_index2adr
	movl	8(%eax), %edx
	cmpl	$3, %edx
	je	L3375
	cmpl	$4, %edx
	je	L3376
L3378:
	fldz
L3377:
	movl	28(%esp), %eax
	fstpl	8(%esp)
	movl	$LC54, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, %edi
	jmp	L3374
L3376:
	leal	32(%esp), %edx
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	je	L3378
L3375:
	fldl	(%eax)
	jmp	L3377
	.p2align 4,,10
L3402:
	movl	$LC250, %ecx
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_luaL_typerror
	jmp	L3379
L3382:
	movl	$1, %edi
	jmp	L3372
	.cfi_endproc
LFE499:
	.section	.text.unlikely,"x"
LCOLDE252:
	.text
LHOTE252:
	.section	.text.unlikely,"x"
LCOLDB253:
	.text
LHOTB253:
	.p2align 4,,15
	.def	_luaB_loadfile;	.scl	3;	.type	32;	.endef
_luaB_loadfile:
LFB455:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	xorl	%esi, %esi
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ebx
	movl	12(%ebx), %eax
	cmpl	8(%ebx), %eax
	jnb	L3404
	cmpl	$_luaO_nilobject_, %eax
	je	L3404
	movl	8(%eax), %eax
	testl	%eax, %eax
	jle	L3404
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, %esi
	je	L3413
L3404:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_luaL_loadfile
	testl	%eax, %eax
	movl	$1, %edx
	je	L3405
	movl	8(%ebx), %eax
	movl	$-2, %edx
	movl	$0, 8(%eax)
	addl	$16, %eax
	movl	%eax, 8(%ebx)
	movl	%ebx, %eax
	call	_lua_insert
	movl	$2, %edx
L3405:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%edx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3413:
	.cfi_restore_state
	movl	$LC250, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaL_typerror
	jmp	L3404
	.cfi_endproc
LFE455:
	.section	.text.unlikely,"x"
LCOLDE253:
	.text
LHOTE253:
	.section	.text.unlikely,"x"
LCOLDB254:
	.text
LHOTB254:
	.p2align 4,,15
	.def	_band;	.scl	3;	.type	32;	.endef
_band:
LFB553:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	96(%esp), %esi
	movl	%esi, %eax
	call	_barg.constprop.107
	movl	%eax, %edi
	movl	8(%esi), %eax
	movl	%eax, %ebx
	subl	12(%esi), %ebx
	sarl	$4, %ebx
	cmpl	$1, %ebx
	jle	L3415
	.p2align 4,,10
L3429:
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_index2adr
	movl	8(%eax), %edx
	cmpl	$3, %edx
	je	L3416
	cmpl	$4, %edx
	je	L3444
L3417:
	xorl	%edi, %edi
L3425:
	subl	$1, %ebx
	cmpl	$1, %ebx
	jne	L3429
	movl	8(%esi), %eax
L3415:
	movl	%edi, 24(%esp)
	movl	$3, 8(%eax)
	fildl	24(%esp)
	fstpl	(%eax)
	addl	$16, 8(%esi)
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3444:
	.cfi_restore_state
	movl	(%eax), %ebp
	leal	48(%esp), %eax
	movl	%eax, 4(%esp)
	addl	$16, %ebp
	movl	%ebp, (%esp)
	call	___strtod
	movl	48(%esp), %eax
	fstpl	24(%esp)
	cmpl	%eax, %ebp
	je	L3417
	movzbl	(%eax), %edx
	movl	%edx, %ecx
	andl	$-33, %ecx
	cmpb	$88, %cl
	je	L3445
	testb	%dl, %dl
	je	L3420
L3447:
	movl	%ebx, 36(%esp)
	leal	1(%eax), %ebp
	movl	%edx, %ebx
	jmp	L3421
	.p2align 4,,10
L3422:
	movl	%ebp, 48(%esp)
	addl	$1, %ebp
	movzbl	-1(%ebp), %ebx
L3421:
	movzbl	%bl, %eax
	movl	%eax, (%esp)
	call	*__imp__isspace
	testl	%eax, %eax
	jne	L3422
	movl	%ebx, %edx
	movl	36(%esp), %ebx
	testb	%dl, %dl
	jne	L3417
L3420:
	fldl	24(%esp)
L3430:
	fadds	LC225
	fstpl	24(%esp)
	movl	24(%esp), %ebp
	fldz
	fldl	24(%esp)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L3442
	jne	L3442
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_index2adr
	movl	8(%eax), %edx
	cmpl	$3, %edx
	je	L3442
	cmpl	$4, %edx
	je	L3446
L3431:
	movl	$LC226, %ecx
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_luaL_typerror
L3442:
	andl	%ebp, %edi
	jmp	L3425
	.p2align 4,,10
L3416:
	fldl	(%eax)
	jmp	L3430
	.p2align 4,,10
L3446:
	leal	48(%esp), %edx
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	je	L3431
	andl	%ebp, %edi
	jmp	L3425
	.p2align 4,,10
L3445:
	leal	48(%esp), %eax
	movl	$16, 8(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 4(%esp)
	call	_strtoul
	movl	%eax, 24(%esp)
	movl	48(%esp), %eax
	movl	$0, 28(%esp)
	fildq	24(%esp)
	movzbl	(%eax), %edx
	fstpl	24(%esp)
	testb	%dl, %dl
	jne	L3447
	jmp	L3420
	.cfi_endproc
LFE553:
	.section	.text.unlikely,"x"
LCOLDE254:
	.text
LHOTE254:
	.section	.text.unlikely,"x"
LCOLDB255:
	.text
LHOTB255:
	.p2align 4,,15
	.def	_bxor;	.scl	3;	.type	32;	.endef
_bxor:
LFB555:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	96(%esp), %ebp
	movl	%ebp, %eax
	call	_barg.constprop.107
	movl	%eax, %edi
	movl	8(%ebp), %eax
	movl	%eax, %ebx
	subl	12(%ebp), %ebx
	sarl	$4, %ebx
	cmpl	$1, %ebx
	jle	L3449
	.p2align 4,,10
L3463:
	movl	%ebx, %edx
	movl	%ebp, %eax
	call	_index2adr
	movl	8(%eax), %edx
	cmpl	$3, %edx
	je	L3450
	cmpl	$4, %edx
	je	L3478
L3451:
	xorl	%eax, %eax
L3459:
	subl	$1, %ebx
	xorl	%eax, %edi
	cmpl	$1, %ebx
	jne	L3463
	movl	8(%ebp), %eax
L3449:
	movl	%edi, 24(%esp)
	movl	$3, 8(%eax)
	fildl	24(%esp)
	fstpl	(%eax)
	addl	$16, 8(%ebp)
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3478:
	.cfi_restore_state
	movl	(%eax), %esi
	leal	48(%esp), %eax
	movl	%eax, 4(%esp)
	addl	$16, %esi
	movl	%esi, (%esp)
	call	___strtod
	movl	48(%esp), %eax
	fstpl	24(%esp)
	cmpl	%eax, %esi
	je	L3451
	movzbl	(%eax), %edx
	movl	%edx, %ecx
	andl	$-33, %ecx
	cmpb	$88, %cl
	je	L3479
	testb	%dl, %dl
	je	L3454
L3481:
	movl	%ebx, 36(%esp)
	leal	1(%eax), %esi
	movl	%edx, %ebx
	jmp	L3455
	.p2align 4,,10
L3456:
	movl	%esi, 48(%esp)
	addl	$1, %esi
	movzbl	-1(%esi), %ebx
L3455:
	movzbl	%bl, %eax
	movl	%eax, (%esp)
	call	*__imp__isspace
	testl	%eax, %eax
	jne	L3456
	movl	%ebx, %edx
	movl	36(%esp), %ebx
	testb	%dl, %dl
	jne	L3451
L3454:
	fldl	24(%esp)
L3464:
	fadds	LC225
	fstpl	24(%esp)
	movl	24(%esp), %esi
	fldz
	fldl	24(%esp)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L3476
	jne	L3476
	movl	%ebx, %edx
	movl	%ebp, %eax
	call	_index2adr
	movl	8(%eax), %edx
	cmpl	$3, %edx
	je	L3476
	cmpl	$4, %edx
	je	L3480
L3465:
	movl	$LC226, %ecx
	movl	%ebx, %edx
	movl	%ebp, %eax
	call	_luaL_typerror
L3476:
	movl	%esi, %eax
	jmp	L3459
	.p2align 4,,10
L3450:
	fldl	(%eax)
	jmp	L3464
	.p2align 4,,10
L3480:
	leal	48(%esp), %edx
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	je	L3465
	movl	%esi, %eax
	jmp	L3459
	.p2align 4,,10
L3479:
	leal	48(%esp), %eax
	movl	$16, 8(%esp)
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strtoul
	movl	%eax, 24(%esp)
	movl	48(%esp), %eax
	movl	$0, 28(%esp)
	fildq	24(%esp)
	movzbl	(%eax), %edx
	fstpl	24(%esp)
	testb	%dl, %dl
	jne	L3481
	jmp	L3454
	.cfi_endproc
LFE555:
	.section	.text.unlikely,"x"
LCOLDE255:
	.text
LHOTE255:
	.section	.text.unlikely,"x"
LCOLDB256:
	.text
LHOTB256:
	.p2align 4,,15
	.def	_bor;	.scl	3;	.type	32;	.endef
_bor:
LFB554:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	96(%esp), %ebp
	movl	%ebp, %eax
	call	_barg.constprop.107
	movl	%eax, %edi
	movl	8(%ebp), %eax
	movl	%eax, %ebx
	subl	12(%ebp), %ebx
	sarl	$4, %ebx
	cmpl	$1, %ebx
	jle	L3483
	.p2align 4,,10
L3497:
	movl	%ebx, %edx
	movl	%ebp, %eax
	call	_index2adr
	movl	8(%eax), %edx
	cmpl	$3, %edx
	je	L3484
	cmpl	$4, %edx
	je	L3512
L3485:
	xorl	%eax, %eax
L3493:
	subl	$1, %ebx
	orl	%eax, %edi
	cmpl	$1, %ebx
	jne	L3497
	movl	8(%ebp), %eax
L3483:
	movl	%edi, 24(%esp)
	movl	$3, 8(%eax)
	fildl	24(%esp)
	fstpl	(%eax)
	addl	$16, 8(%ebp)
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3512:
	.cfi_restore_state
	movl	(%eax), %esi
	leal	48(%esp), %eax
	movl	%eax, 4(%esp)
	addl	$16, %esi
	movl	%esi, (%esp)
	call	___strtod
	movl	48(%esp), %eax
	fstpl	24(%esp)
	cmpl	%eax, %esi
	je	L3485
	movzbl	(%eax), %edx
	movl	%edx, %ecx
	andl	$-33, %ecx
	cmpb	$88, %cl
	je	L3513
	testb	%dl, %dl
	je	L3488
L3515:
	movl	%ebx, 36(%esp)
	leal	1(%eax), %esi
	movl	%edx, %ebx
	jmp	L3489
	.p2align 4,,10
L3490:
	movl	%esi, 48(%esp)
	addl	$1, %esi
	movzbl	-1(%esi), %ebx
L3489:
	movzbl	%bl, %eax
	movl	%eax, (%esp)
	call	*__imp__isspace
	testl	%eax, %eax
	jne	L3490
	movl	%ebx, %edx
	movl	36(%esp), %ebx
	testb	%dl, %dl
	jne	L3485
L3488:
	fldl	24(%esp)
L3498:
	fadds	LC225
	fstpl	24(%esp)
	movl	24(%esp), %esi
	fldz
	fldl	24(%esp)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L3510
	jne	L3510
	movl	%ebx, %edx
	movl	%ebp, %eax
	call	_index2adr
	movl	8(%eax), %edx
	cmpl	$3, %edx
	je	L3510
	cmpl	$4, %edx
	je	L3514
L3499:
	movl	$LC226, %ecx
	movl	%ebx, %edx
	movl	%ebp, %eax
	call	_luaL_typerror
L3510:
	movl	%esi, %eax
	jmp	L3493
	.p2align 4,,10
L3484:
	fldl	(%eax)
	jmp	L3498
	.p2align 4,,10
L3514:
	leal	48(%esp), %edx
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	je	L3499
	movl	%esi, %eax
	jmp	L3493
	.p2align 4,,10
L3513:
	leal	48(%esp), %eax
	movl	$16, 8(%esp)
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strtoul
	movl	%eax, 24(%esp)
	movl	48(%esp), %eax
	movl	$0, 28(%esp)
	fildq	24(%esp)
	movzbl	(%eax), %edx
	fstpl	24(%esp)
	testb	%dl, %dl
	jne	L3515
	jmp	L3488
	.cfi_endproc
LFE554:
	.section	.text.unlikely,"x"
LCOLDE256:
	.text
LHOTE256:
	.section .rdata,"dr"
LC257:
	.ascii "%s: %s\0"
	.section	.text.unlikely,"x"
LCOLDB258:
	.text
LHOTB258:
	.p2align 4,,15
	.def	_os_remove;	.scl	3;	.type	32;	.endef
_os_remove:
LFB509:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	xorl	%ecx, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$1, %edx
	subl	$32, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	%ebx, %eax
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, %esi
	je	L3521
L3517:
	movl	%esi, (%esp)
	call	_remove
	movl	%eax, %edi
	call	*__imp___errno
	testl	%edi, %edi
	jne	L3518
	movl	8(%ebx), %eax
	movl	$1, (%eax)
	movl	$1, 8(%eax)
	movl	$1, %eax
	addl	$16, 8(%ebx)
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3518:
	.cfi_restore_state
	movl	(%eax), %edi
	movl	8(%ebx), %eax
	movl	$0, 8(%eax)
	addl	$16, %eax
	movl	%eax, 8(%ebx)
	movl	%edi, (%esp)
	call	_strerror
	movl	%esi, 8(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 12(%esp)
	movl	$LC257, 4(%esp)
	call	_lua_pushfstring
	movl	8(%ebx), %eax
	movl	%edi, 28(%esp)
	fildl	28(%esp)
	movl	$3, 8(%eax)
	fstpl	(%eax)
	addl	$16, 8(%ebx)
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$3, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3521:
	.cfi_restore_state
	movl	$LC250, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaL_typerror
	jmp	L3517
	.cfi_endproc
LFE509:
	.section	.text.unlikely,"x"
LCOLDE258:
	.text
LHOTE258:
	.section	.text.unlikely,"x"
LCOLDB259:
	.text
LHOTB259:
	.p2align 4,,15
	.def	_luaB_loadstring;	.scl	3;	.type	32;	.endef
_luaB_loadstring:
LFB454:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$1, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$92, %esp
	.cfi_def_cfa_offset 112
	movl	112(%esp), %ebx
	leal	28(%esp), %ecx
	movl	%ebx, %eax
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, %edi
	je	L3547
	movl	12(%ebx), %eax
	movl	8(%ebx), %esi
	leal	16(%eax), %edx
	cmpl	%edx, %esi
	jbe	L3548
L3533:
	cmpl	$_luaO_nilobject_, %edx
	je	L3525
	movl	24(%eax), %eax
	testl	%eax, %eax
	jle	L3525
	xorl	%ecx, %ecx
	movl	$2, %edx
	movl	%ebx, %eax
	call	_lua_tolstring
	testl	%eax, %eax
	je	L3549
	movl	28(%esp), %edx
	movl	8(%ebx), %esi
	movl	%edi, 32(%esp)
	movl	%edx, 36(%esp)
L3527:
	movl	%eax, 76(%esp)
	movl	116(%ebx), %eax
	leal	32(%esp), %edx
	leal	60(%esp), %ecx
	movl	%ebx, 56(%esp)
	movl	$_getS, 48(%esp)
	movl	%edx, 52(%esp)
	leal	40(%esp), %edx
	movl	$0, 40(%esp)
	movl	%eax, (%esp)
	movl	32(%ebx), %eax
	movl	%edx, 60(%esp)
	movl	$_f_parser, %edx
	movl	$0, 44(%esp)
	movl	$0, 64(%esp)
	movl	$0, 72(%esp)
	movl	%eax, 4(%esp)
	movzwl	52(%ebx), %eax
	movl	20(%ebx), %edi
	movw	%ax, 12(%esp)
	movl	40(%ebx), %eax
	movl	%eax, 8(%esp)
	movzbl	57(%ebx), %eax
	movb	%al, 15(%esp)
	movl	%ebx, %eax
	call	_luaD_rawrunprotected
	testl	%eax, %eax
	movl	%eax, %ebp
	jne	L3550
	movl	(%esp), %eax
	movl	72(%esp), %ecx
	movl	64(%esp), %edx
	movl	%eax, 116(%ebx)
	movl	%ebx, %eax
	call	_luaM_realloc_.constprop.162
	addl	$92, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3550:
	.cfi_restore_state
	subl	4(%esp), %esi
	movl	%ebx, %eax
	subl	8(%esp), %edi
	addl	32(%ebx), %esi
	movl	%esi, %edx
	call	_luaF_close
	movl	%ebp, %edx
	movl	%ebx, %eax
	movl	%esi, %ecx
	call	_luaD_seterrorobj
	movzwl	12(%esp), %eax
	movw	%ax, 52(%ebx)
	movl	40(%ebx), %eax
	addl	%edi, %eax
	cmpl	$20000, 48(%ebx)
	movl	(%eax), %edx
	movl	%eax, 20(%ebx)
	movl	12(%eax), %eax
	movl	%edx, 12(%ebx)
	movl	%eax, 24(%ebx)
	movzbl	15(%esp), %eax
	movb	%al, 57(%ebx)
	jle	L3529
	cmpl	$479975, %edi
	jg	L3529
	movl	$20000, %edx
	movl	%ebx, %eax
	call	_luaD_reallocCI
L3529:
	movl	(%esp), %eax
	movl	72(%esp), %ecx
	movl	64(%esp), %edx
	movl	%eax, 116(%ebx)
	movl	%ebx, %eax
	call	_luaM_realloc_.constprop.162
	movl	8(%ebx), %eax
	movl	$-2, %edx
	movl	$0, 8(%eax)
	addl	$16, %eax
	movl	%eax, 8(%ebx)
	movl	%ebx, %eax
	call	_lua_insert
	addl	$92, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$2, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3548:
	.cfi_restore_state
	movl	28(%esp), %eax
	movl	%edi, 32(%esp)
	movl	%eax, 36(%esp)
	movl	%edi, %eax
	jmp	L3527
	.p2align 4,,10
L3549:
	movl	$LC250, %ecx
	movl	$2, %edx
	movl	%ebx, %eax
	call	_luaL_typerror
	movl	28(%esp), %eax
	movl	%edi, 32(%esp)
	movl	8(%ebx), %esi
	movl	%eax, 36(%esp)
	movl	$LC197, %eax
	jmp	L3527
	.p2align 4,,10
L3547:
	movl	$1, %edx
	movl	$LC250, %ecx
	movl	%ebx, %eax
	call	_luaL_typerror
	movl	12(%ebx), %eax
	movl	8(%ebx), %esi
	leal	16(%eax), %edx
	cmpl	%edx, %esi
	ja	L3533
	movl	28(%esp), %eax
	movl	$0, 32(%esp)
	movl	%eax, 36(%esp)
	movl	$LC197, %eax
	jmp	L3527
L3525:
	movl	28(%esp), %eax
	testl	%edi, %edi
	movl	%edi, 32(%esp)
	movl	%eax, 36(%esp)
	movl	$LC197, %eax
	cmovne	%edi, %eax
	jmp	L3527
	.cfi_endproc
LFE454:
	.section	.text.unlikely,"x"
LCOLDE259:
	.text
LHOTE259:
	.section	.text.unlikely,"x"
LCOLDB260:
	.text
LHOTB260:
	.p2align 4,,15
	.def	_io_open;	.scl	3;	.type	32;	.endef
_io_open:
LFB483:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xorl	%ecx, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	$1, %edx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %ebx
	movl	%ebx, %eax
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, %esi
	je	L3563
L3552:
	movl	12(%ebx), %eax
	movl	$LC200, %edi
	leal	16(%eax), %edx
	cmpl	8(%ebx), %edx
	jnb	L3553
	cmpl	$_luaO_nilobject_, %edx
	je	L3553
	movl	24(%eax), %eax
	testl	%eax, %eax
	jle	L3553
	xorl	%ecx, %ecx
	movl	$2, %edx
	movl	%ebx, %eax
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, %edi
	je	L3564
L3553:
	movl	%ebx, %eax
	call	_newfile
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, %ebp
	call	_fopen
	movl	%eax, %edx
	movl	%eax, 0(%ebp)
	movl	$1, %eax
	testl	%edx, %edx
	je	L3565
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3564:
	.cfi_restore_state
	movl	$LC250, %ecx
	movl	$2, %edx
	movl	%ebx, %eax
	call	_luaL_typerror
	jmp	L3553
	.p2align 4,,10
L3565:
	call	*__imp___errno
	movl	(%eax), %edi
	movl	8(%ebx), %eax
	movl	$0, 8(%eax)
	addl	$16, %eax
	testl	%esi, %esi
	movl	%eax, 8(%ebx)
	movl	%edi, (%esp)
	je	L3555
	call	_strerror
	movl	%esi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$LC257, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushfstring
L3556:
	movl	8(%ebx), %eax
	movl	%edi, 28(%esp)
	fildl	28(%esp)
	movl	$3, 8(%eax)
	fstpl	(%eax)
	addl	$16, 8(%ebx)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$3, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3563:
	.cfi_restore_state
	movl	$LC250, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaL_typerror
	jmp	L3552
	.p2align 4,,10
L3555:
	call	_strerror
	movl	$LC166, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushfstring
	jmp	L3556
	.cfi_endproc
LFE483:
	.section	.text.unlikely,"x"
LCOLDE260:
	.text
LHOTE260:
	.section	.text.unlikely,"x"
LCOLDB261:
	.text
LHOTB261:
	.p2align 4,,15
	.def	_str_upper;	.scl	3;	.type	32;	.endef
_str_upper:
LFB515:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$1, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$556, %esp
	.cfi_def_cfa_offset 576
	movl	576(%esp), %ebx
	leal	16(%esp), %ecx
	movl	%ebx, %eax
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, %esi
	je	L3577
L3567:
	movl	16(%esp), %edx
	leal	32(%esp), %eax
	movl	%ebx, 28(%esp)
	movl	$0, 24(%esp)
	movl	%eax, 20(%esp)
	testl	%edx, %edx
	je	L3574
	movl	__imp__toupper, %edi
	movl	%eax, %ebx
	xorl	%ebp, %ebp
	.p2align 4,,10
L3569:
	leal	1(%ebx), %eax
	movl	%eax, 20(%esp)
	movzbl	(%esi,%ebp), %eax
	addl	$1, %ebp
	movl	%eax, (%esp)
	call	*%edi
	movb	%al, (%ebx)
	cmpl	%ebp, 16(%esp)
	jbe	L3578
	movl	20(%esp), %ebx
	leal	544(%esp), %eax
	cmpl	%eax, %ebx
	jb	L3569
	leal	20(%esp), %eax
	call	_luaL_prepbuffer
	movl	20(%esp), %ebx
	jmp	L3569
	.p2align 4,,10
L3578:
	movl	20(%esp), %ecx
	leal	32(%esp), %edx
	movl	28(%esp), %eax
	subl	%edx, %ecx
	jne	L3579
L3568:
	movl	24(%esp), %edx
L3573:
	call	_lua_concat
	addl	$556, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3579:
	.cfi_restore_state
	leal	32(%esp), %edx
	call	_lua_pushlstring
	leal	32(%esp), %eax
	movl	%eax, 20(%esp)
	movl	24(%esp), %eax
	leal	1(%eax), %edx
	movl	28(%esp), %eax
	movl	%edx, 24(%esp)
	jmp	L3573
L3577:
	movl	$LC250, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaL_typerror
	jmp	L3567
L3574:
	movl	%ebx, %eax
	jmp	L3568
	.cfi_endproc
LFE515:
	.section	.text.unlikely,"x"
LCOLDE261:
	.text
LHOTE261:
	.section	.text.unlikely,"x"
LCOLDB262:
	.text
LHOTB262:
	.p2align 4,,15
	.def	_str_lower;	.scl	3;	.type	32;	.endef
_str_lower:
LFB514:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$1, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$556, %esp
	.cfi_def_cfa_offset 576
	movl	576(%esp), %ebx
	leal	16(%esp), %ecx
	movl	%ebx, %eax
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, %esi
	je	L3591
L3581:
	movl	16(%esp), %edx
	leal	32(%esp), %eax
	movl	%ebx, 28(%esp)
	movl	$0, 24(%esp)
	movl	%eax, 20(%esp)
	testl	%edx, %edx
	je	L3588
	movl	__imp__tolower, %edi
	movl	%eax, %ebx
	xorl	%ebp, %ebp
	.p2align 4,,10
L3583:
	leal	1(%ebx), %eax
	movl	%eax, 20(%esp)
	movzbl	(%esi,%ebp), %eax
	addl	$1, %ebp
	movl	%eax, (%esp)
	call	*%edi
	movb	%al, (%ebx)
	cmpl	%ebp, 16(%esp)
	jbe	L3592
	movl	20(%esp), %ebx
	leal	544(%esp), %eax
	cmpl	%eax, %ebx
	jb	L3583
	leal	20(%esp), %eax
	call	_luaL_prepbuffer
	movl	20(%esp), %ebx
	jmp	L3583
	.p2align 4,,10
L3592:
	movl	20(%esp), %ecx
	leal	32(%esp), %edx
	movl	28(%esp), %eax
	subl	%edx, %ecx
	jne	L3593
L3582:
	movl	24(%esp), %edx
L3587:
	call	_lua_concat
	addl	$556, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3593:
	.cfi_restore_state
	leal	32(%esp), %edx
	call	_lua_pushlstring
	leal	32(%esp), %eax
	movl	%eax, 20(%esp)
	movl	24(%esp), %eax
	leal	1(%eax), %edx
	movl	28(%esp), %eax
	movl	%edx, 24(%esp)
	jmp	L3587
L3591:
	movl	$LC250, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaL_typerror
	jmp	L3581
L3588:
	movl	%ebx, %eax
	jmp	L3582
	.cfi_endproc
LFE514:
	.section	.text.unlikely,"x"
LCOLDE262:
	.text
LHOTE262:
	.section	.text.unlikely,"x"
LCOLDB263:
	.text
LHOTB263:
	.p2align 4,,15
	.def	_gmatch;	.scl	3;	.type	32;	.endef
_gmatch:
LFB539:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	xorl	%ecx, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$1, %edx
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	_lua_tolstring
	testl	%eax, %eax
	je	L3608
L3595:
	xorl	%ecx, %ecx
	movl	$2, %edx
	movl	%ebx, %eax
	call	_lua_tolstring
	testl	%eax, %eax
	je	L3609
L3596:
	movl	12(%ebx), %ecx
	movl	8(%ebx), %eax
	leal	32(%ecx), %edx
	cmpl	%eax, %edx
	jbe	L3601
	.p2align 4,,10
L3604:
	movl	$0, 8(%eax)
	addl	$16, %eax
	cmpl	%eax, %edx
	ja	L3604
L3601:
	fldz
	movl	%edx, 8(%ebx)
	movl	$3, 40(%ecx)
	fstpl	32(%ecx)
	movl	16(%ebx), %eax
	addl	$16, 8(%ebx)
	movl	64(%eax), %edi
	cmpl	%edi, 68(%eax)
	jnb	L3610
	movl	20(%ebx), %eax
	cmpl	40(%ebx), %eax
	je	L3611
L3602:
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %esi
L3603:
	movl	$72, (%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_luaM_realloc_
	movl	16(%ebx), %edx
	movl	28(%edx), %ecx
	movl	%ecx, (%eax)
	movl	%eax, 28(%edx)
	movzbl	20(%edx), %edx
	movb	$6, 4(%eax)
	movb	$1, 6(%eax)
	movl	%esi, 12(%eax)
	movb	$3, 7(%eax)
	movl	$_gmatch_aux, 16(%eax)
	andl	$3, %edx
	movb	%dl, 5(%eax)
	movl	8(%ebx), %edx
	movl	-16(%edx), %esi
	movl	-12(%edx), %edi
	leal	-48(%edx), %ecx
	movl	%ecx, 8(%ebx)
	movl	%esi, 56(%eax)
	movl	%edi, 60(%eax)
	movl	-8(%edx), %edx
	movl	%edx, 64(%eax)
	movl	8(%ebx), %edx
	movl	16(%edx), %esi
	movl	20(%edx), %edi
	movl	%esi, 40(%eax)
	movl	%edi, 44(%eax)
	movl	24(%edx), %edx
	movl	%edx, 48(%eax)
	movl	8(%ebx), %edx
	movl	(%edx), %esi
	movl	4(%edx), %edi
	movl	%esi, 24(%eax)
	movl	%edi, 28(%eax)
	movl	8(%edx), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebx), %edx
	movl	%eax, (%edx)
	movl	$6, 8(%edx)
	movl	$1, %eax
	addl	$16, 8(%ebx)
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3610:
	.cfi_restore_state
	movl	%ebx, %eax
	call	_luaC_step
	movl	20(%ebx), %eax
	cmpl	40(%ebx), %eax
	jne	L3602
L3611:
	movl	72(%ebx), %esi
	jmp	L3603
L3608:
	movl	$LC250, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaL_typerror
	jmp	L3595
L3609:
	movl	$LC250, %ecx
	movl	$2, %edx
	movl	%ebx, %eax
	call	_luaL_typerror
	jmp	L3596
	.cfi_endproc
LFE539:
	.section	.text.unlikely,"x"
LCOLDE263:
	.text
LHOTE263:
	.section	.text.unlikely,"x"
LCOLDB264:
	.text
LHOTB264:
	.p2align 4,,15
	.def	_ipairsaux;	.scl	3;	.type	32;	.endef
_ipairsaux:
LFB451:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	12(%ebx), %edx
	leal	16(%edx), %eax
	cmpl	8(%ebx), %eax
	jb	L3640
L3616:
	movl	$2, %edx
	movl	%ebx, %eax
	movl	$1, %esi
	call	_lua_isnumber
	testl	%eax, %eax
	je	L3641
	.p2align 4,,10
L3617:
	movl	%ebx, %eax
	call	_luaL_checktype.constprop.123
	movl	8(%ebx), %eax
	movl	%esi, 4(%esp)
	movl	%esi, %edx
	fildl	4(%esp)
	movl	$3, 8(%eax)
	fstpl	(%eax)
	addl	$16, 8(%ebx)
	movl	%ebx, %eax
	call	_lua_rawgeti.constprop.131
	movl	8(%ebx), %eax
	cmpl	$_luaO_nilobject_+16, %eax
	je	L3622
	movl	-8(%eax), %eax
	movl	$2, %edx
	testl	%eax, %eax
	cmovne	%edx, %eax
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3640:
	.cfi_restore_state
	movl	24(%edx), %edx
	cmpl	$3, %edx
	jne	L3642
L3619:
	fldl	(%eax)
	fnstcw	14(%esp)
	movzwl	14(%esp), %eax
	movb	$12, %ah
	movw	%ax, 12(%esp)
	fldcw	12(%esp)
	fistpl	8(%esp)
	fldcw	14(%esp)
	movl	8(%esp), %esi
	testl	%esi, %esi
	je	L3616
	addl	$1, %esi
	jmp	L3617
	.p2align 4,,10
L3641:
	movl	$LC226, %ecx
	movl	$2, %edx
	movl	%ebx, %eax
	call	_luaL_typerror
	jmp	L3617
	.p2align 4,,10
L3622:
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	$2, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3642:
	.cfi_restore_state
	cmpl	$4, %edx
	jne	L3616
	leal	16(%esp), %edx
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	jne	L3619
	jmp	L3616
	.cfi_endproc
LFE451:
	.section	.text.unlikely,"x"
LCOLDE264:
	.text
LHOTE264:
	.section	.text.unlikely,"x"
LCOLDB265:
	.text
LHOTB265:
	.p2align 4,,15
	.def	_luaL_optinteger;	.scl	3;	.type	32;	.endef
_luaL_optinteger:
LFB421:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %edi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %esi
	movl	%ecx, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 48
	call	_index2adr
	cmpl	$_luaO_nilobject_, %eax
	je	L3659
	movl	8(%eax), %eax
	testl	%eax, %eax
	jle	L3659
	movl	%edi, %edx
	movl	%esi, %eax
	call	_index2adr
	movl	8(%eax), %edx
	cmpl	$3, %edx
	je	L3645
	cmpl	$4, %edx
	je	L3661
L3648:
	movl	%edi, %edx
	movl	%esi, %eax
	call	_lua_isnumber
	testl	%eax, %eax
	movl	%eax, %ebx
	je	L3662
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3661:
	.cfi_restore_state
	leal	16(%esp), %edx
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	je	L3648
L3645:
	fldl	(%eax)
	fnstcw	14(%esp)
	movzwl	14(%esp), %eax
	movb	$12, %ah
	movw	%ax, 12(%esp)
	fldcw	12(%esp)
	fistpl	8(%esp)
	fldcw	14(%esp)
	movl	8(%esp), %ebx
	testl	%ebx, %ebx
	je	L3648
L3659:
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3662:
	.cfi_restore_state
	movl	$LC226, %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	call	_luaL_typerror
	jmp	L3659
	.cfi_endproc
LFE421:
	.section	.text.unlikely,"x"
LCOLDE265:
	.text
LHOTE265:
	.section	.text.unlikely,"x"
LCOLDB266:
	.text
LHOTB266:
	.p2align 4,,15
	.def	_os_exit;	.scl	3;	.type	32;	.endef
_os_exit:
LFB510:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	32(%esp), %eax
	call	_luaL_optinteger
	movl	%eax, (%esp)
	call	_exit
	.cfi_endproc
LFE510:
	.section	.text.unlikely,"x"
LCOLDE266:
	.text
LHOTE266:
	.section	.text.unlikely,"x"
LCOLDB267:
	.text
LHOTB267:
	.p2align 4,,15
	.def	_luaB_error;	.scl	3;	.type	32;	.endef
_luaB_error:
LFB443:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	$1, %ecx
	movl	$2, %edx
	subl	$132, %esp
	.cfi_def_cfa_offset 144
	movl	144(%esp), %ebx
	movl	%ebx, %eax
	call	_luaL_optinteger
	movl	12(%ebx), %esi
	movl	8(%ebx), %edx
	leal	16(%esi), %ecx
	cmpl	%edx, %ecx
	jbe	L3670
	.p2align 4,,10
L3684:
	addl	$16, %edx
	movl	$0, -8(%edx)
	cmpl	%ecx, %edx
	jb	L3684
L3670:
	cmpl	$_luaO_nilobject_, %esi
	movl	%ecx, 8(%ebx)
	je	L3668
	movl	8(%esi), %edx
	subl	$3, %edx
	cmpl	$1, %edx
	ja	L3668
	testl	%eax, %eax
	jle	L3668
	movl	20(%ebx), %edx
	movl	40(%ebx), %esi
	.p2align 4,,10
L3671:
	cmpl	%edx, %esi
	jnb	L3675
	movl	4(%edx), %ecx
	subl	$1, %eax
	movl	(%ecx), %ecx
	cmpb	$0, 6(%ecx)
	jne	L3672
	subl	20(%edx), %eax
L3672:
	subl	$24, %edx
	cmpl	$0, %eax
	jg	L3671
	jne	L3676
	cmpl	%edx, %esi
	jb	L3691
L3675:
	xorl	%ecx, %ecx
	movl	$LC75, %edx
	movl	%ebx, %eax
	call	_lua_pushlstring
L3678:
	movl	$1, %edx
	movl	%ebx, %eax
	call	_lua_pushvalue
	movl	$2, %edx
	movl	%ebx, %eax
	call	_lua_concat
L3668:
	movl	%ebx, %eax
	call	_luaG_errormsg
	addl	$132, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L3676:
	.cfi_restore_state
	movl	$0, 124(%esp)
L3677:
	leal	28(%esp), %ecx
	movl	$LC211, %edx
	movl	%ebx, %eax
	call	_lua_getinfo
	movl	48(%esp), %eax
	testl	%eax, %eax
	jle	L3675
	movl	%eax, 12(%esp)
	leal	64(%esp), %eax
	movl	$LC210, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	call	_lua_pushfstring
	jmp	L3678
L3691:
	subl	%esi, %edx
	sarl	$3, %edx
	imull	$-1431655765, %edx, %eax
	movl	%eax, 124(%esp)
	jmp	L3677
	.cfi_endproc
LFE443:
	.section	.text.unlikely,"x"
LCOLDE267:
	.text
LHOTE267:
	.section	.text.unlikely,"x"
LCOLDB268:
	.text
LHOTB268:
	.p2align 4,,15
	.def	_tremove;	.scl	3;	.type	32;	.endef
_tremove:
LFB464:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %esi
	movl	%esi, %eax
	call	_luaL_checktype.constprop.123
	movl	$1, %edx
	movl	%esi, %eax
	call	_lua_objlen
	movl	$2, %edx
	movl	%eax, %ecx
	movl	%eax, %ebp
	movl	%esi, %eax
	call	_luaL_optinteger
	testl	%eax, %eax
	jle	L3696
	cmpl	%eax, %ebp
	movl	%eax, %ebx
	jl	L3696
	movl	%eax, %edx
	movl	%esi, %eax
	call	_lua_rawgeti.constprop.131
	cmpl	%ebx, %ebp
	jle	L3695
	.p2align 4,,10
L3697:
	leal	1(%ebx), %edi
	movl	%esi, %eax
	movl	%edi, %edx
	call	_lua_rawgeti.constprop.131
	movl	%ebx, %edx
	movl	%esi, %eax
	movl	%edi, %ebx
	call	_lua_rawseti.constprop.129
	cmpl	%edi, %ebp
	jne	L3697
L3695:
	movl	8(%esi), %eax
	movl	%ebp, %edx
	movl	$0, 8(%eax)
	addl	$16, %eax
	movl	%eax, 8(%esi)
	movl	%esi, %eax
	call	_lua_rawseti.constprop.129
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3696:
	.cfi_restore_state
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE464:
	.section	.text.unlikely,"x"
LCOLDE268:
	.text
LHOTE268:
	.section	.text.unlikely,"x"
LCOLDB269:
	.text
LHOTB269:
	.p2align 4,,15
	.def	_str_sub;	.scl	3;	.type	32;	.endef
_str_sub:
LFB513:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$1, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	80(%esp), %esi
	leal	28(%esp), %ecx
	movl	%esi, %eax
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, %edi
	je	L3732
L3701:
	movl	12(%esi), %edx
	movl	28(%esp), %ebx
	leal	16(%edx), %eax
	cmpl	8(%esi), %eax
	jb	L3733
L3714:
	movl	$2, %edx
	movl	%esi, %eax
	call	_lua_isnumber
	testl	%eax, %eax
	je	L3734
L3706:
	movl	$-1, %ecx
	movl	$3, %edx
	movl	%esi, %eax
	movl	28(%esp), %ebp
	movl	$1, %ebx
	call	_luaL_optinteger
	testl	%eax, %eax
	jns	L3709
	leal	1(%ebp,%eax), %eax
	xorl	%ebx, %ebx
	.p2align 4,,10
L3708:
	testl	%eax, %eax
	movl	$0, %ecx
	movl	$1, %edx
	cmovs	%ecx, %eax
	testl	%ebx, %ebx
	cmove	%edx, %ebx
L3709:
	movl	28(%esp), %ecx
	cmpl	%eax, %ecx
	cmovle	%ecx, %eax
	cmpl	%eax, %ebx
	jle	L3735
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$LC75, %edx
	call	_lua_pushlstring
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3733:
	.cfi_restore_state
	movl	24(%edx), %edx
	cmpl	$3, %edx
	jne	L3736
L3712:
	fldl	(%eax)
	fnstcw	14(%esp)
	movzwl	14(%esp), %eax
	movb	$12, %ah
	movw	%ax, 12(%esp)
	fldcw	12(%esp)
	fistpl	8(%esp)
	fldcw	14(%esp)
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	L3714
	leal	1(%ebx,%eax), %edx
	movl	$0, %ebx
	movl	$-1, %ecx
	movl	28(%esp), %ebp
	cmovs	%edx, %eax
	movl	$3, %edx
	testl	%eax, %eax
	cmovns	%eax, %ebx
	movl	%esi, %eax
	call	_luaL_optinteger
	testl	%eax, %eax
	jns	L3708
	leal	1(%ebp,%eax), %eax
	jmp	L3708
	.p2align 4,,10
L3735:
	subl	%ebx, %eax
	leal	-1(%edi,%ebx), %edx
	leal	1(%eax), %ecx
	movl	%esi, %eax
	call	_lua_pushlstring
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3734:
	.cfi_restore_state
	movl	$LC226, %ecx
	movl	$2, %edx
	movl	%esi, %eax
	call	_luaL_typerror
	jmp	L3706
	.p2align 4,,10
L3732:
	movl	$LC250, %ecx
	movl	$1, %edx
	movl	%esi, %eax
	call	_luaL_typerror
	jmp	L3701
	.p2align 4,,10
L3736:
	cmpl	$4, %edx
	jne	L3714
	leal	32(%esp), %edx
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	jne	L3712
	jmp	L3714
	.cfi_endproc
LFE513:
	.section	.text.unlikely,"x"
LCOLDE269:
	.text
LHOTE269:
	.section	.text.unlikely,"x"
LCOLDB270:
	.text
LHOTB270:
	.p2align 4,,15
	.def	_luaB_pairs;	.scl	3;	.type	32;	.endef
_luaB_pairs:
LFB450:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ebx
	movl	12(%ebx), %eax
	cmpl	8(%ebx), %eax
	jnb	L3738
	cmpl	$_luaO_nilobject_, %eax
	je	L3738
	cmpl	$5, 8(%eax)
	je	L3739
L3738:
	movl	$LC241, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaL_typerror
L3739:
	movl	%ebx, %eax
	movl	$-10003, %edx
	call	_lua_pushvalue
	movl	%ebx, %eax
	movl	$1, %edx
	call	_lua_pushvalue
	movl	8(%ebx), %eax
	movl	$0, 8(%eax)
	addl	$16, %eax
	movl	%eax, 8(%ebx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	movl	$3, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE450:
	.section	.text.unlikely,"x"
LCOLDE270:
	.text
LHOTE270:
	.section .rdata,"dr"
LC271:
	.ascii "invalid value\0"
	.section	.text.unlikely,"x"
LCOLDB272:
	.text
LHOTB272:
	.p2align 4,,15
	.def	_str_char;	.scl	3;	.type	32;	.endef
_str_char:
LFB518:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$604, %esp
	.cfi_def_cfa_offset 624
	movl	624(%esp), %edi
	leal	80(%esp), %eax
	movl	$0, 72(%esp)
	movl	%eax, 68(%esp)
	movl	8(%edi), %ebp
	subl	12(%edi), %ebp
	movl	%edi, 76(%esp)
	sarl	$4, %ebp
	testl	%ebp, %ebp
	jle	L3767
	movl	$1, %esi
	.p2align 4,,10
L3761:
	movl	%esi, %edx
	movl	%edi, %eax
	call	_index2adr
	movl	8(%eax), %edx
	cmpl	$3, %edx
	je	L3746
	cmpl	$4, %edx
	je	L3779
L3765:
	movl	%esi, %edx
	movl	%edi, %eax
	call	_index2adr
	movl	8(%eax), %edx
	cmpl	$3, %edx
	je	L3757
	cmpl	$4, %edx
	je	L3780
L3766:
	movl	$LC226, %ecx
	movl	%esi, %edx
	movl	%edi, %eax
	call	_luaL_typerror
L3757:
	xorl	%ebx, %ebx
L3759:
	movl	68(%esp), %eax
	leal	592(%esp), %ecx
	cmpl	%ecx, %eax
	jnb	L3781
L3760:
	leal	1(%eax), %edx
	addl	$1, %esi
	cmpl	%ebp, %esi
	movl	%edx, 68(%esp)
	movb	%bl, (%eax)
	jle	L3761
	movl	68(%esp), %ecx
	leal	80(%esp), %edi
	movl	76(%esp), %eax
	subl	%edi, %ecx
	jne	L3782
L3745:
	movl	72(%esp), %edx
L3763:
	call	_lua_concat
	addl	$604, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3781:
	.cfi_restore_state
	leal	68(%esp), %eax
	call	_luaL_prepbuffer
	movl	68(%esp), %eax
	jmp	L3760
	.p2align 4,,10
L3746:
	fldl	(%eax)
L3764:
	fnstcw	38(%esp)
	movzwl	38(%esp), %eax
	movb	$12, %ah
	movw	%ax, 36(%esp)
	fldcw	36(%esp)
	fistpl	32(%esp)
	fldcw	38(%esp)
	movl	32(%esp), %ebx
	testl	%ebx, %ebx
	je	L3765
	movzbl	%bl, %eax
	cmpl	%ebx, %eax
	je	L3783
	movl	$LC271, %ecx
	movl	%esi, %edx
	movl	%edi, %eax
	call	_luaL_argerror
	jmp	L3759
	.p2align 4,,10
L3779:
	movl	(%eax), %ebx
	leal	48(%esp), %eax
	movl	%eax, 4(%esp)
	addl	$16, %ebx
	movl	%ebx, (%esp)
	call	___strtod
	movl	48(%esp), %eax
	fstpl	16(%esp)
	cmpl	%eax, %ebx
	je	L3765
	movzbl	(%eax), %edx
	movl	%edx, %ecx
	andl	$-33, %ecx
	cmpb	$88, %cl
	je	L3784
	testb	%dl, %dl
	je	L3750
L3785:
	movl	%esi, 28(%esp)
	leal	1(%eax), %ebx
	movl	%edx, %esi
	jmp	L3751
	.p2align 4,,10
L3752:
	movl	%ebx, 48(%esp)
	addl	$1, %ebx
	movzbl	-1(%ebx), %esi
L3751:
	movl	%esi, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	*__imp__isspace
	testl	%eax, %eax
	jne	L3752
	movl	%esi, %edx
	movl	28(%esp), %esi
	testb	%dl, %dl
	jne	L3765
L3750:
	fldl	16(%esp)
	jmp	L3764
	.p2align 4,,10
L3783:
	movl	%eax, %ebx
	jmp	L3759
	.p2align 4,,10
L3782:
	leal	80(%esp), %edx
	call	_lua_pushlstring
	leal	80(%esp), %eax
	movl	%eax, 68(%esp)
	movl	72(%esp), %eax
	leal	1(%eax), %edx
	movl	76(%esp), %eax
	movl	%edx, 72(%esp)
	jmp	L3763
	.p2align 4,,10
L3780:
	leal	48(%esp), %edx
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	jne	L3757
	jmp	L3766
	.p2align 4,,10
L3784:
	leal	48(%esp), %eax
	movl	$16, 8(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strtoul
	movl	%eax, 16(%esp)
	movl	48(%esp), %eax
	movl	$0, 20(%esp)
	fildq	16(%esp)
	movzbl	(%eax), %edx
	fstpl	16(%esp)
	testb	%dl, %dl
	jne	L3785
	jmp	L3750
L3767:
	movl	%edi, %eax
	jmp	L3745
	.cfi_endproc
LFE518:
	.section	.text.unlikely,"x"
LCOLDE272:
	.text
LHOTE272:
	.section .rdata,"dr"
LC273:
	.ascii "boolean or proxy expected\0"
	.section	.text.unlikely,"x"
LCOLDB274:
	.text
LHOTB274:
	.p2align 4,,15
	.def	_luaB_newproxy;	.scl	3;	.type	32;	.endef
_luaB_newproxy:
LFB459:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	12(%ebx), %eax
	leal	16(%eax), %edx
	movl	8(%ebx), %eax
	cmpl	%edx, %eax
	jnb	L3791
	.p2align 4,,10
L3822:
	addl	$16, %eax
	movl	$0, -8(%eax)
	cmpl	%edx, %eax
	jb	L3822
L3791:
	movl	16(%ebx), %eax
	movl	%edx, 8(%ebx)
	movl	64(%eax), %edi
	cmpl	%edi, 68(%eax)
	jnb	L3835
	movl	20(%ebx), %eax
	cmpl	40(%ebx), %eax
	je	L3836
L3792:
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %esi
L3793:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$24, (%esp)
	movl	%ebx, %eax
	call	_luaM_realloc_
	movl	16(%ebx), %edx
	movzbl	20(%edx), %edx
	movl	%esi, 12(%eax)
	movb	$7, 4(%eax)
	movl	$0, 16(%eax)
	movl	$0, 8(%eax)
	andl	$3, %edx
	movb	%dl, 5(%eax)
	movl	16(%ebx), %edx
	movl	112(%edx), %edx
	movl	(%edx), %edx
	movl	%edx, (%eax)
	movl	16(%ebx), %edx
	movl	112(%edx), %edx
	movl	%eax, (%edx)
	movl	8(%ebx), %edx
	movl	%eax, (%edx)
	movl	8(%ebx), %eax
	movl	$7, 8(%edx)
	leal	16(%eax), %esi
	movl	12(%ebx), %eax
	movl	%esi, 8(%ebx)
	cmpl	%eax, %esi
	jbe	L3815
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L3815
	cmpl	$1, %edx
	je	L3837
L3795:
	cmpl	%eax, %esi
	ja	L3838
L3796:
	movl	%ebx, %eax
	call	_lua_getmetatable.constprop.151
	testl	%eax, %eax
	jne	L3839
L3801:
	movl	$LC273, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaL_argerror
L3806:
	movl	%ebx, %eax
	call	_lua_getmetatable.constprop.151
L3800:
	movl	$2, %edx
	movl	%ebx, %eax
	call	_lua_setmetatable
L3815:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3835:
	.cfi_restore_state
	movl	%ebx, %eax
	call	_luaC_step
	movl	20(%ebx), %eax
	cmpl	40(%ebx), %eax
	jne	L3792
L3836:
	movl	72(%ebx), %esi
	jmp	L3793
	.p2align 4,,10
L3838:
	cmpl	$_luaO_nilobject_, %eax
	je	L3796
	cmpl	$1, 8(%eax)
	jne	L3796
	movl	16(%ebx), %eax
	movl	64(%eax), %ecx
	cmpl	%ecx, 68(%eax)
	jb	L3797
	movl	%ebx, %eax
	call	_luaC_step
	movl	8(%ebx), %esi
L3797:
	movl	%ebx, %eax
	call	_luaH_new.constprop.166
	movl	$5, 8(%esi)
	movl	%eax, (%esi)
	movl	$-1, %edx
	addl	$16, 8(%ebx)
	movl	%ebx, %eax
	call	_lua_pushvalue
	movl	8(%ebx), %eax
	movl	$1, (%eax)
	movl	8(%ebx), %esi
	movl	$1, 8(%eax)
	leal	16(%esi), %eax
	movl	%eax, 8(%ebx)
	movl	20(%ebx), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpb	$0, 7(%eax)
	je	L3807
	movl	24(%eax), %edx
	leal	24(%eax), %edi
L3798:
	leal	-16(%esi), %ecx
	movl	%ebx, %eax
	call	_luaH_set
	movl	(%esi), %edx
	movl	4(%esi), %ecx
	movl	%edx, (%eax)
	movl	%ecx, 4(%eax)
	movl	8(%esi), %edx
	movl	%edx, 8(%eax)
	movl	8(%ebx), %eax
	cmpl	$3, -8(%eax)
	jle	L3799
	movl	-16(%eax), %eax
	testb	$3, 5(%eax)
	je	L3799
	movl	(%edi), %eax
	movzbl	5(%eax), %edx
	testb	$4, %dl
	je	L3799
	movl	16(%ebx), %ecx
	andl	$-5, %edx
	movb	%dl, 5(%eax)
	movl	40(%ecx), %edx
	movl	%edx, 24(%eax)
	movl	%eax, 40(%ecx)
L3799:
	subl	$32, 8(%ebx)
	jmp	L3800
	.p2align 4,,10
L3837:
	movl	(%eax), %edx
	testl	%edx, %edx
	jne	L3795
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L3839:
	.cfi_restore_state
	movl	20(%ebx), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	xorl	%eax, %eax
	cmpb	$0, 7(%edx)
	je	L3802
	movl	24(%edx), %eax
L3802:
	movl	8(%ebx), %ecx
	leal	-16(%ecx), %edx
	call	_luaH_get
	movl	8(%ebx), %edx
	movl	4(%eax), %edi
	movl	(%eax), %esi
	movl	%edi, -12(%edx)
	movl	8(%eax), %eax
	movl	%esi, -16(%edx)
	movl	%eax, -8(%edx)
	movl	$-1, %edx
	movl	%ebx, %eax
	call	_index2adr
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L3803
	cmpl	$1, %edx
	je	L3840
L3804:
	subl	$16, 8(%ebx)
	jmp	L3806
L3840:
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L3804
L3803:
	subl	$16, 8(%ebx)
	jmp	L3801
L3807:
	xorl	%edx, %edx
	movl	$_luaO_nilobject_, %edi
	jmp	L3798
	.cfi_endproc
LFE459:
	.section	.text.unlikely,"x"
LCOLDE274:
	.text
LHOTE274:
	.section .rdata,"dr"
LC275:
	.ascii "value expected\0"
LC276:
	.ascii "base out of range\0"
	.section	.text.unlikely,"x"
LCOLDB277:
	.text
LHOTB277:
	.p2align 4,,15
	.def	_luaB_tonumber;	.scl	3;	.type	32;	.endef
_luaB_tonumber:
LFB442:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$10, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	$2, %edx
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	80(%esp), %edi
	movl	%edi, %eax
	call	_luaL_optinteger
	cmpl	$10, %eax
	je	L3858
	movl	%eax, %ebx
	xorl	%edx, %edx
	movl	%edi, %eax
	call	_luaL_checklstring.constprop.138
	movl	%eax, %esi
	leal	-2(%ebx), %eax
	cmpl	$34, %eax
	ja	L3859
L3847:
	leal	44(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strtoul
	movl	44(%esp), %edx
	movl	%eax, 16(%esp)
	cmpl	%edx, %esi
	je	L3845
	movl	%edx, %ebp
	movl	__imp__isspace, %esi
	jmp	L3849
	.p2align 4,,10
L3850:
	movl	%ebp, 44(%esp)
L3849:
	movzbl	0(%ebp), %eax
	addl	$1, %ebp
	movl	%eax, %ebx
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	jne	L3850
	testb	%bl, %bl
	je	L3860
L3845:
	movl	8(%edi), %eax
	movl	$0, 8(%eax)
	addl	$16, %eax
	movl	%eax, 8(%edi)
L3846:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3860:
	.cfi_restore_state
	movl	16(%esp), %ecx
	movl	$0, 20(%esp)
	movl	8(%edi), %eax
	movl	%ecx, 16(%esp)
	fildq	16(%esp)
	movl	$3, 8(%eax)
	fstpl	(%eax)
	addl	$16, 8(%edi)
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3858:
	.cfi_restore_state
	movl	$1, %edx
	movl	%edi, %eax
	call	_index2adr
	cmpl	$_luaO_nilobject_, %eax
	je	L3843
	cmpl	$-1, 8(%eax)
	je	L3843
L3844:
	movl	$1, %edx
	movl	%edi, %eax
	call	_lua_isnumber
	testl	%eax, %eax
	je	L3845
	movl	%edi, %eax
	movl	$1, %edx
	call	_lua_tonumber
	movl	8(%edi), %eax
	fstpl	(%eax)
	movl	$3, 8(%eax)
	addl	$16, 8(%edi)
	jmp	L3846
	.p2align 4,,10
L3859:
	movl	$LC276, %ecx
	movl	$2, %edx
	movl	%edi, %eax
	call	_luaL_argerror
	jmp	L3847
L3843:
	movl	$LC275, %ecx
	movl	$1, %edx
	movl	%edi, %eax
	call	_luaL_argerror
	jmp	L3844
	.cfi_endproc
LFE442:
	.section	.text.unlikely,"x"
LCOLDE277:
	.text
LHOTE277:
	.section	.text.unlikely,"x"
LCOLDB278:
	.text
LHOTB278:
	.p2align 4,,15
	.def	_luaB_type;	.scl	3;	.type	32;	.endef
_luaB_type:
LFB448:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	12(%ebx), %eax
	movl	8(%ebx), %ecx
	cmpl	%ecx, %eax
	jb	L3874
L3862:
	movl	$LC275, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaL_argerror
	movl	12(%ebx), %eax
	movl	8(%ebx), %ecx
	cmpl	%eax, %ecx
	ja	L3875
L3869:
	movl	$8, %ecx
	movl	$LC222, %esi
	jmp	L3864
	.p2align 4,,10
L3874:
	cmpl	$_luaO_nilobject_, %eax
	je	L3862
	cmpl	$-1, 8(%eax)
	je	L3862
L3863:
	movl	8(%eax), %eax
	cmpl	$-1, %eax
	je	L3869
	movl	_luaT_typenames(,%eax,4), %esi
	testl	%esi, %esi
	je	L3865
	movl	%esi, (%esp)
	call	_strlen
	movl	%eax, %ecx
L3864:
	movl	%ebx, %eax
	movl	%esi, %edx
	call	_lua_pushlstring
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3865:
	.cfi_restore_state
	movl	$0, 8(%ecx)
	addl	$16, %ecx
	movl	$1, %eax
	movl	%ecx, 8(%ebx)
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L3875:
	.cfi_restore_state
	cmpl	$_luaO_nilobject_, %eax
	jne	L3863
	jmp	L3869
	.cfi_endproc
LFE448:
	.section	.text.unlikely,"x"
LCOLDE278:
	.text
LHOTE278:
	.section	.text.unlikely,"x"
LCOLDB279:
	.text
LHOTB279:
	.p2align 4,,15
	.def	_luaB_rawget;	.scl	3;	.type	32;	.endef
_luaB_rawget:
LFB447:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ebx
	movl	%ebx, %eax
	call	_luaL_checktype.constprop.123
	movl	12(%ebx), %esi
	movl	8(%ebx), %eax
	leal	16(%esi), %edx
	cmpl	%eax, %edx
	jb	L3889
L3877:
	movl	$2, %edx
	movl	$LC275, %ecx
	movl	%ebx, %eax
	call	_luaL_argerror
	movl	12(%ebx), %esi
	movl	8(%ebx), %eax
	leal	16(%esi), %edx
	.p2align 4,,10
L3878:
	leal	32(%esi), %ecx
	cmpl	%ecx, %eax
	jnb	L3881
	.p2align 4,,10
L3884:
	addl	$16, %eax
	movl	$0, -8(%eax)
	cmpl	%ecx, %eax
	jb	L3884
L3881:
	movl	%ecx, 8(%ebx)
	movl	(%esi), %eax
	call	_luaH_get
	movl	8(%ebx), %edx
	movl	4(%eax), %ebx
	movl	(%eax), %ecx
	movl	%ebx, -12(%edx)
	movl	8(%eax), %eax
	movl	%ecx, -16(%edx)
	movl	%eax, -8(%edx)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3889:
	.cfi_restore_state
	cmpl	$_luaO_nilobject_, %edx
	je	L3877
	cmpl	$-1, 24(%esi)
	jne	L3878
	jmp	L3877
	.cfi_endproc
LFE447:
	.section	.text.unlikely,"x"
LCOLDE279:
	.text
LHOTE279:
	.section .rdata,"dr"
LC280:
	.ascii "closed file\0"
LC281:
	.ascii "file\0"
	.section	.text.unlikely,"x"
LCOLDB282:
	.text
LHOTB282:
	.p2align 4,,15
	.def	_io_type;	.scl	3;	.type	32;	.endef
_io_type:
LFB474:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %ebx
	movl	12(%ebx), %eax
	cmpl	8(%ebx), %eax
	jb	L3915
L3891:
	movl	$LC275, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaL_argerror
	movl	12(%ebx), %eax
	cmpl	8(%ebx), %eax
	jb	L3916
L3893:
	movl	$LC208, %ecx
	movl	$-10000, %edx
	movl	%ebx, %eax
	call	_lua_getfield
L3914:
	movl	8(%ebx), %esi
	jmp	L3898
	.p2align 4,,10
L3915:
	cmpl	$_luaO_nilobject_, %eax
	je	L3891
	movl	8(%eax), %edx
	cmpl	$-1, %edx
	je	L3891
L3892:
	cmpl	$2, %edx
	je	L3894
	cmpl	$7, %edx
	jne	L3893
	movl	(%eax), %edi
	addl	$24, %edi
L3896:
	movl	$LC208, %ecx
	movl	$-10000, %edx
	movl	%ebx, %eax
	call	_lua_getfield
	testl	%edi, %edi
	je	L3914
	movl	%ebx, %eax
	call	_lua_getmetatable.constprop.151
	testl	%eax, %eax
	movl	8(%ebx), %esi
	jne	L3917
L3898:
	movl	$0, 8(%esi)
	addl	$16, %esi
	movl	%esi, 8(%ebx)
L3912:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3894:
	.cfi_restore_state
	movl	(%eax), %edi
	jmp	L3896
	.p2align 4,,10
L3917:
	leal	-16(%esi), %edx
	leal	-32(%esi), %eax
	cmpl	$_luaO_nilobject_, %edx
	je	L3898
	cmpl	$_luaO_nilobject_, %eax
	je	L3898
	call	_luaO_rawequalObj
	testl	%eax, %eax
	je	L3898
	movl	(%edi), %eax
	testl	%eax, %eax
	je	L3918
	movl	%ebx, %eax
	movl	$4, %ecx
	movl	$LC281, %edx
	call	_lua_pushlstring
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3918:
	.cfi_restore_state
	movl	$11, %ecx
	movl	$LC280, %edx
	movl	%ebx, %eax
	call	_lua_pushlstring
	jmp	L3912
L3916:
	movl	8(%eax), %edx
	jmp	L3892
	.cfi_endproc
LFE474:
	.section	.text.unlikely,"x"
LCOLDE282:
	.text
LHOTE282:
	.section .rdata,"dr"
	.align 4
LC283:
	.ascii "wrong number of arguments to 'insert'\0"
	.section	.text.unlikely,"x"
LCOLDB284:
	.text
LHOTB284:
	.p2align 4,,15
	.def	_tinsert;	.scl	3;	.type	32;	.endef
_tinsert:
LFB463:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %esi
	movl	%esi, %eax
	call	_luaL_checktype.constprop.123
	movl	$1, %edx
	movl	%esi, %eax
	call	_lua_objlen
	leal	1(%eax), %ebx
	movl	8(%esi), %eax
	subl	12(%esi), %eax
	sarl	$4, %eax
	cmpl	$2, %eax
	je	L3921
	cmpl	$3, %eax
	jne	L3931
	movl	$2, %edx
	movl	%esi, %eax
	call	_luaL_checkinteger
	cmpl	%eax, %ebx
	movl	%eax, %ebp
	jl	L3926
	jle	L3926
	.p2align 4,,10
L3923:
	leal	-1(%ebx), %edi
	movl	%esi, %eax
	movl	%edi, %edx
	call	_lua_rawgeti.constprop.131
	movl	%ebx, %edx
	movl	%esi, %eax
	movl	%edi, %ebx
	call	_lua_rawseti.constprop.129
	cmpl	%edi, %ebp
	jl	L3923
L3926:
	movl	%ebp, %ebx
L3921:
	movl	%esi, %eax
	movl	%ebx, %edx
	call	_lua_rawseti.constprop.129
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3931:
	.cfi_restore_state
	movl	%esi, (%esp)
	movl	$LC283, 4(%esp)
	call	_luaL_error
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE463:
	.section	.text.unlikely,"x"
LCOLDE284:
	.text
LHOTE284:
	.section .rdata,"dr"
LC285:
	.ascii "too many results to unpack\0"
	.section	.text.unlikely,"x"
LCOLDB286:
	.text
LHOTB286:
	.p2align 4,,15
	.def	_luaB_unpack;	.scl	3;	.type	32;	.endef
_luaB_unpack:
LFB457:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %ebx
	movl	%ebx, %eax
	call	_luaL_checktype.constprop.123
	movl	$2, %edx
	movl	$1, %ecx
	movl	%ebx, %eax
	call	_luaL_optinteger
	movl	%eax, %edi
	movl	12(%ebx), %eax
	leal	32(%eax), %edx
	cmpl	8(%ebx), %edx
	jb	L3957
L3934:
	movl	$1, %edx
	movl	%ebx, %eax
	call	_lua_objlen
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %edi
	jle	L3958
L3948:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3957:
	.cfi_restore_state
	cmpl	$_luaO_nilobject_, %edx
	je	L3934
	movl	40(%eax), %eax
	testl	%eax, %eax
	jle	L3934
	movl	$3, %edx
	movl	%ebx, %eax
	call	_luaL_checkinteger
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %edi
	jg	L3948
L3958:
	movl	%ecx, %eax
	subl	%edi, %eax
	addl	$1, %eax
	cmpl	$8000, %eax
	movl	%eax, 24(%esp)
	jg	L3937
	movl	8(%ebx), %edx
	movl	%eax, %esi
	movl	%edx, %eax
	subl	12(%ebx), %eax
	sarl	$4, %eax
	addl	%esi, %eax
	cmpl	$8000, %eax
	jg	L3937
	movl	28(%ebx), %eax
	sall	$4, %esi
	subl	%edx, %eax
	cmpl	%esi, %eax
	jle	L3959
L3938:
	movl	24(%esp), %esi
	movl	20(%ebx), %eax
	sall	$4, %esi
	addl	%esi, %edx
	cmpl	%edx, 8(%eax)
	jnb	L3939
	movl	%edx, 8(%eax)
L3939:
	movl	%edi, %edx
	movl	%ebx, %eax
	movl	%ecx, 28(%esp)
	call	_lua_rawgeti.constprop.131
	movl	28(%esp), %ecx
	leal	1(%edi), %esi
	cmpl	%ecx, %edi
	leal	1(%ecx), %ebp
	jge	L3955
	.p2align 4,,10
L3949:
	movl	%esi, %edx
	movl	%ebx, %eax
	addl	$1, %esi
	call	_lua_rawgeti.constprop.131
	cmpl	%ebp, %esi
	jne	L3949
L3955:
	movl	24(%esp), %eax
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3937:
	.cfi_restore_state
	movl	%ebx, (%esp)
	movl	$LC285, 4(%esp)
	call	_luaL_error
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3959:
	.cfi_restore_state
	movl	24(%esp), %edx
	movl	%ebx, %eax
	movl	%ecx, 28(%esp)
	call	_luaD_growstack
	movl	8(%ebx), %edx
	movl	28(%esp), %ecx
	jmp	L3938
	.cfi_endproc
LFE457:
	.section	.text.unlikely,"x"
LCOLDE286:
	.text
LHOTE286:
	.section .rdata,"dr"
LC287:
	.ascii "attempt to use a closed file\0"
	.section	.text.unlikely,"x"
LCOLDB288:
	.text
LHOTB288:
	.p2align 4,,15
	.def	_tofile;	.scl	3;	.type	32;	.endef
_tofile:
LFB475:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %esi
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	call	_luaL_checkudata.constprop.124
	movl	%eax, %ebx
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L3963
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3963:
	.cfi_restore_state
	movl	%esi, (%esp)
	movl	$LC287, 4(%esp)
	call	_luaL_error
	movl	(%ebx), %eax
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE475:
	.section	.text.unlikely,"x"
LCOLDE288:
	.text
LHOTE288:
	.section	.text.unlikely,"x"
LCOLDB289:
	.text
LHOTB289:
	.p2align 4,,15
	.def	_io_input;	.scl	3;	.type	32;	.endef
_io_input:
LFB486:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	12(%ebx), %eax
	cmpl	8(%ebx), %eax
	jnb	L3965
	cmpl	$_luaO_nilobject_, %eax
	je	L3965
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	jle	L3965
	movl	$1, %edx
	movl	%ebx, %eax
	call	_lua_tolstring.constprop.139
	movl	%eax, %esi
	movl	%ebx, %eax
	testl	%esi, %esi
	je	L3966
	call	_newfile
	movl	$LC200, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, %edi
	call	_fopen
	testl	%eax, %eax
	movl	%eax, (%edi)
	je	L3974
L3967:
	movl	$1, %ecx
	movl	$-10001, %edx
	movl	%ebx, %eax
	call	_lua_rawseti
L3965:
	movl	$-10001, %edx
	movl	%ebx, %eax
	call	_index2adr
	movl	(%eax), %eax
	movl	28(%eax), %edx
	testl	%edx, %edx
	je	L3968
	movl	12(%eax), %eax
L3969:
	movl	8(%ebx), %edx
	movl	4(%eax), %edi
	movl	(%eax), %esi
	movl	%edi, 4(%edx)
	movl	8(%eax), %eax
	addl	$16, %edx
	movl	%esi, -16(%edx)
	movl	%eax, -8(%edx)
	movl	%edx, 8(%ebx)
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3968:
	.cfi_restore_state
	movl	$1, %edx
	call	_luaH_getnum.part.8
	jmp	L3969
	.p2align 4,,10
L3966:
	call	_tofile
	movl	$1, %edx
	movl	%ebx, %eax
	call	_lua_pushvalue
	jmp	L3967
	.p2align 4,,10
L3974:
	call	*__imp___errno
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strerror
	movl	%esi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$LC257, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushfstring
	movl	$-1, %edx
	movl	%ebx, %eax
	call	_lua_tolstring.constprop.139
	movl	$1, %edx
	movl	%eax, %ecx
	movl	%ebx, %eax
	call	_luaL_argerror
	jmp	L3967
	.cfi_endproc
LFE486:
	.section	.text.unlikely,"x"
LCOLDE289:
	.text
LHOTE289:
	.section	.text.unlikely,"x"
LCOLDB290:
	.text
LHOTB290:
	.p2align 4,,15
	.def	_io_lines;	.scl	3;	.type	32;	.endef
_io_lines:
LFB490:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	12(%ebx), %eax
	cmpl	8(%ebx), %eax
	jb	L3985
L3976:
	movl	$1, %ecx
	movl	$-10001, %edx
	movl	%ebx, %eax
	call	_lua_rawgeti
	movl	%ebx, %eax
	call	_tofile
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	_aux_lines
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3985:
	.cfi_restore_state
	cmpl	$_luaO_nilobject_, %eax
	je	L3976
	movl	8(%eax), %eax
	testl	%eax, %eax
	jle	L3976
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, %esi
	je	L3986
L3979:
	movl	%ebx, %eax
	call	_newfile
	movl	$LC200, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, %edi
	call	_fopen
	testl	%eax, %eax
	movl	%eax, (%edi)
	je	L3987
L3980:
	movl	8(%ebx), %edx
	subl	12(%ebx), %edx
	movl	%ebx, %eax
	movl	$1, %ecx
	sarl	$4, %edx
	call	_aux_lines
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3986:
	.cfi_restore_state
	movl	$LC250, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaL_typerror
	jmp	L3979
	.p2align 4,,10
L3987:
	call	*__imp___errno
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strerror
	movl	%esi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$LC257, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushfstring
	movl	$-1, %edx
	movl	%ebx, %eax
	call	_lua_tolstring.constprop.139
	movl	$1, %edx
	movl	%eax, %ecx
	movl	%ebx, %eax
	call	_luaL_argerror
	jmp	L3980
	.cfi_endproc
LFE490:
	.section	.text.unlikely,"x"
LCOLDE290:
	.text
LHOTE290:
	.section .rdata,"dr"
LC291:
	.ascii "w\0"
	.section	.text.unlikely,"x"
LCOLDB292:
	.text
LHOTB292:
	.p2align 4,,15
	.def	_io_output;	.scl	3;	.type	32;	.endef
_io_output:
LFB487:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	12(%ebx), %eax
	cmpl	8(%ebx), %eax
	jnb	L3989
	cmpl	$_luaO_nilobject_, %eax
	je	L3989
	movl	8(%eax), %eax
	testl	%eax, %eax
	jle	L3989
	movl	$1, %edx
	movl	%ebx, %eax
	call	_lua_tolstring.constprop.139
	movl	%eax, %esi
	movl	%ebx, %eax
	testl	%esi, %esi
	je	L3990
	call	_newfile
	movl	$LC291, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, %edi
	call	_fopen
	testl	%eax, %eax
	movl	%eax, (%edi)
	je	L3998
L3991:
	movl	$2, %ecx
	movl	$-10001, %edx
	movl	%ebx, %eax
	call	_lua_rawseti
L3989:
	movl	$-10001, %edx
	movl	%ebx, %eax
	call	_index2adr
	movl	(%eax), %eax
	cmpl	$1, 28(%eax)
	jbe	L3992
	movl	12(%eax), %eax
	addl	$16, %eax
L3993:
	movl	8(%ebx), %edx
	movl	4(%eax), %edi
	movl	(%eax), %esi
	movl	%edi, 4(%edx)
	movl	8(%eax), %eax
	addl	$16, %edx
	movl	%esi, -16(%edx)
	movl	%eax, -8(%edx)
	movl	%edx, 8(%ebx)
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L3992:
	.cfi_restore_state
	movl	$2, %edx
	call	_luaH_getnum.part.8
	jmp	L3993
	.p2align 4,,10
L3990:
	call	_tofile
	movl	$1, %edx
	movl	%ebx, %eax
	call	_lua_pushvalue
	jmp	L3991
	.p2align 4,,10
L3998:
	call	*__imp___errno
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strerror
	movl	%esi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$LC257, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushfstring
	movl	$-1, %edx
	movl	%ebx, %eax
	call	_lua_tolstring.constprop.139
	movl	$1, %edx
	movl	%eax, %ecx
	movl	%ebx, %eax
	call	_luaL_argerror
	jmp	L3991
	.cfi_endproc
LFE487:
	.section	.text.unlikely,"x"
LCOLDE292:
	.text
LHOTE292:
	.section .rdata,"dr"
LC293:
	.ascii "assertion failed!\0"
	.section	.text.unlikely,"x"
LCOLDB294:
	.text
LHOTB294:
	.p2align 4,,15
	.def	_luaB_assert;	.scl	3;	.type	32;	.endef
_luaB_assert:
LFB456:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	12(%ebx), %edx
	movl	8(%ebx), %eax
	cmpl	%eax, %edx
	jb	L4023
L4000:
	movl	$1, %edx
	movl	$LC275, %ecx
	movl	%ebx, %eax
	call	_luaL_argerror
	movl	12(%ebx), %edx
	movl	8(%ebx), %eax
	cmpl	%eax, %edx
	jb	L4024
L4002:
	leal	16(%edx), %ecx
	movl	$LC293, %esi
	cmpl	%ecx, %eax
	jbe	L4004
L4027:
	cmpl	$_luaO_nilobject_, %ecx
	je	L4004
	movl	24(%edx), %eax
	testl	%eax, %eax
	jle	L4004
	xorl	%ecx, %ecx
	movl	$2, %edx
	movl	%ebx, %eax
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, %esi
	je	L4025
L4004:
	movl	%esi, 8(%esp)
	movl	%ebx, (%esp)
	movl	$LC166, 4(%esp)
	call	_luaL_error
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4023:
	.cfi_restore_state
	cmpl	$_luaO_nilobject_, %edx
	je	L4000
	movl	8(%edx), %ecx
	cmpl	$-1, %ecx
	je	L4000
L4001:
	testl	%ecx, %ecx
	je	L4002
	cmpl	$1, %ecx
	je	L4026
L4003:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	subl	%edx, %eax
	sarl	$4, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4026:
	.cfi_restore_state
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jne	L4003
	leal	16(%edx), %ecx
	movl	$LC293, %esi
	cmpl	%ecx, %eax
	jbe	L4004
	jmp	L4027
	.p2align 4,,10
L4025:
	movl	$LC250, %ecx
	movl	$2, %edx
	movl	%ebx, %eax
	call	_luaL_typerror
	jmp	L4004
L4024:
	movl	8(%edx), %ecx
	jmp	L4001
	.cfi_endproc
LFE456:
	.section	.text.unlikely,"x"
LCOLDE294:
	.text
LHOTE294:
	.section .rdata,"dr"
LC295:
	.ascii "nil or table expected\0"
LC296:
	.ascii "__metatable\0"
	.align 4
LC297:
	.ascii "cannot change a protected metatable\0"
	.section	.text.unlikely,"x"
LCOLDB298:
	.text
LHOTB298:
	.p2align 4,,15
	.def	_luaB_setmetatable;	.scl	3;	.type	32;	.endef
_luaB_setmetatable:
LFB444:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	12(%ebx), %eax
	leal	16(%eax), %edx
	cmpl	8(%ebx), %edx
	jnb	L4029
	cmpl	$_luaO_nilobject_, %edx
	je	L4029
	movl	24(%eax), %esi
	movl	%ebx, %eax
	call	_luaL_checktype.constprop.123
	testl	%esi, %esi
	jne	L4057
L4030:
	movl	%ebx, %eax
	call	_lua_getmetatable.constprop.151
	testl	%eax, %eax
	jne	L4058
L4031:
	movl	8(%ebx), %eax
L4035:
	movl	12(%ebx), %edi
	leal	32(%edi), %edx
	cmpl	%edx, %eax
	jnb	L4040
	.p2align 4,,10
L4048:
	addl	$16, %eax
	movl	$0, -8(%eax)
	cmpl	%edx, %eax
	jb	L4048
L4040:
	movl	%edx, 8(%ebx)
	movl	%ebx, %eax
	movl	$1, %edx
	call	_lua_setmetatable
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4029:
	.cfi_restore_state
	movl	%ebx, %eax
	call	_luaL_checktype.constprop.123
L4041:
	movl	$LC295, %ecx
	movl	$2, %edx
	movl	%ebx, %eax
	call	_luaL_argerror
	movl	%ebx, %eax
	call	_lua_getmetatable.constprop.151
	testl	%eax, %eax
	je	L4031
L4058:
	movl	$11, %ecx
	movl	$LC296, %edx
	movl	%ebx, %eax
	call	_lua_pushlstring
	movl	8(%ebx), %eax
	leal	-16(%eax), %edx
	movl	-32(%eax), %eax
	call	_luaH_get
	movl	8(%ebx), %esi
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	movl	%ecx, -12(%esi)
	movl	8(%eax), %eax
	leal	-16(%esi), %edi
	movl	%edx, -16(%esi)
	testl	%eax, %eax
	movl	%eax, -8(%esi)
	jne	L4032
	cmpl	$_luaO_nilobject_, %edi
	je	L4032
	movl	8(%ebx), %eax
	subl	$32, %eax
	movl	%eax, 8(%ebx)
	jmp	L4035
	.p2align 4,,10
L4057:
	cmpl	$5, %esi
	je	L4030
	jmp	L4041
	.p2align 4,,10
L4032:
	cmpl	%edi, %esi
	movl	%edi, %ecx
	jbe	L4037
	.p2align 4,,10
L4049:
	movl	(%ecx), %eax
	movl	4(%ecx), %edx
	addl	$16, %ecx
	movl	%eax, -32(%ecx)
	movl	-8(%ecx), %eax
	movl	%edx, -28(%ecx)
	movl	%eax, -24(%ecx)
	cmpl	%ecx, %esi
	ja	L4049
L4037:
	movl	%edi, 8(%ebx)
	movl	$LC297, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_error
	movl	8(%ebx), %eax
	jmp	L4035
	.cfi_endproc
LFE444:
	.section	.text.unlikely,"x"
LCOLDE298:
	.text
LHOTE298:
	.section .rdata,"dr"
LC299:
	.ascii "level must be non-negative\0"
LC300:
	.ascii "invalid level\0"
LC301:
	.ascii "f\0"
	.align 4
LC302:
	.ascii "no function environment for tail call at level %d\0"
	.align 4
LC303:
	.ascii "'setfenv' cannot change environment of given object\0"
	.section	.text.unlikely,"x"
LCOLDB304:
	.text
LHOTB304:
	.p2align 4,,15
	.def	_luaB_setfenv;	.scl	3;	.type	32;	.endef
_luaB_setfenv:
LFB446:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	addl	$-128, %esp
	.cfi_def_cfa_offset 144
	movl	144(%esp), %ebx
	movl	12(%ebx), %eax
	movl	8(%ebx), %edx
	leal	16(%eax), %ecx
	cmpl	%edx, %ecx
	jnb	L4060
	cmpl	$_luaO_nilobject_, %ecx
	je	L4060
	cmpl	$5, 24(%eax)
	je	L4061
L4060:
	movl	$2, %edx
	movl	$LC241, %ecx
	movl	%ebx, %eax
	call	_luaL_typerror
	movl	12(%ebx), %eax
	movl	8(%ebx), %edx
L4061:
	cmpl	%eax, %edx
	jbe	L4062
	cmpl	$_luaO_nilobject_, %eax
	je	L4062
	cmpl	$6, 8(%eax)
	je	L4098
L4062:
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaL_checkinteger
	cmpl	$0, %eax
	movl	%eax, %esi
	jl	L4099
	movl	20(%ebx), %eax
	jle	L4078
	movl	40(%ebx), %edi
	cmpl	%edi, %eax
	jbe	L4066
	movl	%esi, %edx
	jmp	L4068
	.p2align 4,,10
L4100:
	cmpl	%edi, %eax
	jbe	L4066
L4068:
	movl	4(%eax), %ecx
	subl	$1, %edx
	movl	(%ecx), %ecx
	cmpb	$0, 6(%ecx)
	jne	L4067
	subl	20(%eax), %edx
L4067:
	subl	$24, %eax
	testl	%edx, %edx
	jg	L4100
L4065:
	testl	%edx, %edx
	jne	L4069
	movl	40(%ebx), %edx
	cmpl	%edx, %eax
	ja	L4101
L4066:
	movl	$LC300, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaL_argerror
L4076:
	leal	28(%esp), %ecx
	movl	$LC301, %edx
	movl	%ebx, %eax
	call	_lua_getinfo
	movl	8(%ebx), %eax
	cmpl	$_luaO_nilobject_+16, %eax
	je	L4063
	movl	-8(%eax), %eax
	testl	%eax, %eax
	jne	L4063
	movl	%esi, 8(%esp)
	movl	$LC302, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_error
L4063:
	movl	$2, %edx
	movl	%ebx, %eax
	call	_lua_pushvalue
	movl	$1, %edx
	movl	%ebx, %eax
	call	_lua_isnumber
	testl	%eax, %eax
	je	L4072
	movl	$1, %edx
	movl	%ebx, %eax
	call	_lua_tonumber
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L4072
	je	L4102
L4072:
	movl	8(%ebx), %eax
	cmpl	$6, -24(%eax)
	je	L4103
L4075:
	movl	%ebx, %eax
	call	_lua_setfenv.constprop.128
	testl	%eax, %eax
	jne	L4104
L4077:
	movl	%ebx, (%esp)
	movl	$LC303, 4(%esp)
	call	_luaL_error
	subl	$-128, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4104:
	.cfi_restore_state
	subl	$-128, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L4069:
	.cfi_restore_state
	movl	$0, 124(%esp)
	jmp	L4076
	.p2align 4,,10
L4103:
	movl	-32(%eax), %eax
	cmpb	$0, 6(%eax)
	je	L4075
	jmp	L4077
	.p2align 4,,10
L4101:
	subl	%edx, %eax
	sarl	$3, %eax
	imull	$-1431655765, %eax, %eax
	movl	%eax, 124(%esp)
	jmp	L4076
	.p2align 4,,10
L4099:
	movl	$1, %edx
	movl	$LC299, %ecx
	movl	%ebx, %eax
	call	_luaL_argerror
	movl	20(%ebx), %eax
	movl	%esi, %edx
	jmp	L4065
	.p2align 4,,10
L4102:
	movl	8(%ebx), %eax
	movl	$-2, %edx
	movl	%ebx, (%eax)
	movl	$8, 8(%eax)
	movl	%ebx, %eax
	addl	$16, 8(%ebx)
	call	_lua_insert
	movl	%ebx, %eax
	call	_lua_setfenv.constprop.128
	subl	$-128, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4098:
	.cfi_restore_state
	movl	$1, %edx
	movl	%ebx, %eax
	call	_lua_pushvalue
	jmp	L4063
L4078:
	movl	%esi, %edx
	jmp	L4065
	.cfi_endproc
LFE446:
	.section	.text.unlikely,"x"
LCOLDE304:
	.text
LHOTE304:
	.section .rdata,"dr"
LC305:
	.ascii "output\0"
LC306:
	.ascii "standard %s file is closed\0"
	.section	.text.unlikely,"x"
LCOLDB307:
	.text
LHOTB307:
	.p2align 4,,15
	.def	_io_flush;	.scl	3;	.type	32;	.endef
_io_flush:
LFB502:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	$-10001, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	_index2adr
	movl	(%eax), %eax
	cmpl	$1, 28(%eax)
	jbe	L4106
	movl	12(%eax), %eax
	addl	$16, %eax
L4107:
	movl	8(%ebx), %edx
	movl	4(%eax), %edi
	movl	(%eax), %esi
	movl	%edi, 4(%edx)
	movl	8(%eax), %eax
	leal	16(%edx), %ecx
	movl	%esi, (%edx)
	cmpl	$2, %eax
	movl	%eax, 8(%edx)
	movl	%ecx, 8(%ebx)
	je	L4109
	cmpl	$7, %eax
	jne	L4113
	movl	(%edx), %eax
	addl	$24, %eax
	movl	(%eax), %esi
	testl	%esi, %esi
	je	L4115
L4112:
	movl	%esi, (%esp)
	call	_fflush
	xorl	%edx, %edx
	testl	%eax, %eax
	movl	%ebx, %eax
	sete	%dl
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_pushresult.constprop.113
	.p2align 4,,10
L4113:
	.cfi_restore_state
	movl	0, %eax
	ud2
	.p2align 4,,10
L4106:
	movl	$2, %edx
	call	_luaH_getnum.part.8
	jmp	L4107
	.p2align 4,,10
L4109:
	movl	(%edx), %eax
	movl	(%eax), %esi
	testl	%esi, %esi
	jne	L4112
L4115:
	movl	$LC305, 8(%esp)
	movl	$LC306, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_error
	jmp	L4112
	.cfi_endproc
LFE502:
	.section	.text.unlikely,"x"
LCOLDE307:
	.text
LHOTE307:
	.section	.text.unlikely,"x"
LCOLDB308:
	.text
LHOTB308:
	.p2align 4,,15
	.def	_io_write;	.scl	3;	.type	32;	.endef
_io_write:
LFB500:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	$-10001, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$32, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	%ebx, %eax
	call	_index2adr
	movl	(%eax), %eax
	cmpl	$1, 28(%eax)
	jbe	L4117
	movl	12(%eax), %eax
	addl	$16, %eax
L4118:
	movl	8(%ebx), %edx
	movl	4(%eax), %edi
	movl	(%eax), %esi
	movl	%edi, 4(%edx)
	movl	8(%eax), %eax
	leal	16(%edx), %ecx
	movl	%esi, (%edx)
	cmpl	$2, %eax
	movl	%eax, 8(%edx)
	movl	%ecx, 8(%ebx)
	je	L4120
	cmpl	$7, %eax
	jne	L4124
	movl	(%edx), %eax
	addl	$24, %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L4126
L4123:
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax
	movl	$1, %ecx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_g_write
	.p2align 4,,10
L4124:
	.cfi_restore_state
	movl	0, %eax
	ud2
	.p2align 4,,10
L4117:
	movl	$2, %edx
	call	_luaH_getnum.part.8
	jmp	L4118
	.p2align 4,,10
L4120:
	movl	(%edx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	jne	L4123
L4126:
	movl	$LC305, 8(%esp)
	movl	$LC306, 4(%esp)
	movl	%ebx, (%esp)
	movl	%edx, 28(%esp)
	call	_luaL_error
	movl	28(%esp), %edx
	jmp	L4123
	.cfi_endproc
LFE500:
	.section	.text.unlikely,"x"
LCOLDE308:
	.text
LHOTE308:
	.section .rdata,"dr"
LC309:
	.ascii "too many captures\0"
LC310:
	.ascii "invalid pattern capture\0"
LC311:
	.ascii "unbalanced pattern\0"
	.align 4
LC312:
	.ascii "missing '[' after '%%f' in pattern\0"
LC313:
	.ascii "invalid capture index\0"
	.section	.text.unlikely,"x"
LCOLDB314:
	.text
LHOTB314:
	.p2align 4,,15
	.def	_match;	.scl	3;	.type	32;	.endef
_match:
LFB531:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%ecx, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	movl	%edx, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movzbl	(%ecx), %eax
	leal	8(%esi), %ecx
	movl	%ecx, 20(%esp)
L4128:
	cmpb	$41, %al
	ja	L4129
	jmp	*L4131(,%eax,4)
	.section .rdata,"dr"
	.align 4
L4131:
	.long	L4184
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4129
	.long	L4132
	.long	L4133
	.long	L4129
	.long	L4129
	.long	L4134
	.long	L4135
	.text
	.p2align 4,,10
L4132:
	cmpb	$0, 1(%ebp)
	je	L4269
L4129:
	movl	20(%esp), %eax
	movl	%ebp, %edx
	call	_classend.isra.68
	cmpl	4(%esi), %ebx
	movl	%eax, %edi
	jb	L4270
L4161:
	movzbl	(%edi), %eax
	cmpb	$43, %al
	je	L4197
	jle	L4271
	cmpb	$45, %al
	jne	L4272
L4172:
	leal	1(%edi), %eax
	subl	$1, %edi
	movl	%edi, 20(%esp)
	movl	%eax, %edi
	jmp	L4179
	.p2align 4,,10
L4274:
	cmpb	$37, %dl
	je	L4273
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
L4178:
	testl	%eax, %eax
	je	L4197
L4175:
	addl	$1, %ebx
L4179:
	movl	%edi, %ecx
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_match
	testl	%eax, %eax
	jne	L4215
	cmpl	4(%esi), %ebx
	jnb	L4197
	movzbl	0(%ebp), %edx
	movzbl	(%ebx), %eax
	cmpb	$46, %dl
	je	L4175
	cmpb	$91, %dl
	jne	L4274
	movl	20(%esp), %ecx
	movl	%ebp, %edx
	call	_matchbracketclass
	jmp	L4178
	.p2align 4,,10
L4184:
	movl	%ebx, %eax
L4215:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4135:
	.cfi_restore_state
	movl	12(%esi), %edx
	addl	$1, %ebp
	movl	%edx, %eax
	subl	$1, %eax
	js	L4139
	cmpl	$-1, 12(%esi,%edx,8)
	jne	L4142
	jmp	L4140
	.p2align 4,,10
L4143:
	cmpl	$-1, 20(%esi,%eax,8)
	je	L4140
L4142:
	subl	$1, %eax
	cmpl	$-1, %eax
	jne	L4143
L4139:
	movl	8(%esi), %eax
	movl	$LC310, 4(%esp)
	movl	%eax, (%esp)
	call	_luaL_error
L4140:
	leal	(%esi,%eax,8), %edi
	movl	%ebx, %eax
	movl	%ebp, %ecx
	movl	%ebx, %edx
	subl	16(%edi), %eax
	movl	%eax, 20(%edi)
	movl	%esi, %eax
	call	_match
	testl	%eax, %eax
	jne	L4215
	movl	$-1, 20(%edi)
	jmp	L4215
	.p2align 4,,10
L4134:
	cmpb	$41, 1(%ebp)
	je	L4275
	movl	12(%esi), %edi
	leal	1(%ebp), %ecx
	cmpl	$31, %edi
	jg	L4276
L4138:
	leal	(%esi,%edi,8), %eax
	movl	%ebx, 16(%eax)
	movl	$-1, 20(%eax)
L4263:
	addl	$1, %edi
	movl	%ebx, %edx
	movl	%esi, %eax
	movl	%edi, 12(%esi)
	call	_match
	testl	%eax, %eax
	jne	L4215
	subl	$1, 12(%esi)
	jmp	L4215
	.p2align 4,,10
L4133:
	movzbl	1(%ebp), %eax
	cmpb	$98, %al
	je	L4145
	cmpb	$102, %al
	jne	L4277
	cmpb	$91, 2(%ebp)
	leal	2(%ebp), %edi
	je	L4156
	movl	8(%esi), %eax
	movl	$LC312, 4(%esp)
	movl	%eax, (%esp)
	call	_luaL_error
L4156:
	movl	20(%esp), %eax
	movl	%edi, %edx
	call	_classend.isra.68
	cmpl	(%esi), %ebx
	movl	%eax, %ebp
	je	L4191
	movzbl	-1(%ebx), %eax
L4157:
	leal	-1(%ebp), %ecx
	movl	%edi, %edx
	movl	%ecx, 24(%esp)
	call	_matchbracketclass
	testl	%eax, %eax
	jne	L4197
	movzbl	(%ebx), %eax
	movl	24(%esp), %ecx
	movl	%edi, %edx
	call	_matchbracketclass
	testl	%eax, %eax
	je	L4197
	movzbl	0(%ebp), %eax
	jmp	L4128
	.p2align 4,,10
L4270:
	movzbl	0(%ebp), %edx
	movzbl	(%ebx), %eax
	cmpb	$46, %dl
	je	L4167
	cmpb	$91, %dl
	je	L4164
	cmpb	$37, %dl
	je	L4278
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
L4166:
	testl	%eax, %eax
	je	L4161
L4167:
	movzbl	(%edi), %eax
	cmpb	$43, %al
	je	L4169
	jle	L4279
	cmpb	$45, %al
	je	L4172
	cmpb	$63, %al
	je	L4280
L4168:
	addl	$1, %ebx
	movl	%edi, %ebp
	jmp	L4128
	.p2align 4,,10
L4271:
	cmpb	$42, %al
	jne	L4197
L4171:
	movl	%edi, (%esp)
	movl	%ebp, %ecx
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_max_expand
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4145:
	.cfi_restore_state
	movzbl	2(%ebp), %eax
	testb	%al, %al
	je	L4147
	cmpb	$0, 3(%ebp)
	je	L4147
L4148:
	movzbl	(%ebx), %ecx
	cmpb	%al, %cl
	movb	%cl, 31(%esp)
	jne	L4197
	movzbl	3(%ebp), %edi
	movl	4(%esi), %ecx
	movl	$1, %edx
	movl	%edx, 24(%esp)
	.p2align 4,,10
L4150:
	addl	$1, %ebx
	cmpl	%ecx, %ebx
	jnb	L4197
L4154:
	movzbl	(%ebx), %eax
	movl	%edi, %edx
	cmpb	%al, %dl
	je	L4281
	cmpb	%al, 31(%esp)
	sete	%al
	addl	$1, %ebx
	movzbl	%al, %eax
	addl	%eax, 24(%esp)
	cmpl	%ecx, %ebx
	jb	L4154
L4197:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4275:
	.cfi_restore_state
	movl	12(%esi), %edi
	leal	2(%ebp), %ecx
	cmpl	$31, %edi
	jg	L4282
L4137:
	leal	(%esi,%edi,8), %eax
	movl	%ebx, 16(%eax)
	movl	$-2, 20(%eax)
	jmp	L4263
	.p2align 4,,10
L4281:
	subl	$1, 24(%esp)
	jne	L4150
	addl	$1, %ebx
	je	L4197
	movzbl	4(%ebp), %eax
	addl	$4, %ebp
	jmp	L4128
	.p2align 4,,10
L4273:
	movzbl	1(%ebp), %edx
	call	_match_class
	jmp	L4178
	.p2align 4,,10
L4277:
	leal	-48(%eax), %edx
	cmpl	$9, %edx
	ja	L4129
	movl	%eax, %edx
	subl	$49, %edx
	js	L4159
	cmpl	12(%esi), %edx
	jge	L4159
	movl	-372(%esi,%eax,8), %edi
	movl	%edx, %eax
	cmpl	$-1, %edi
	je	L4159
L4160:
	movl	4(%esi), %edx
	subl	%ebx, %edx
	cmpl	%edx, %edi
	ja	L4197
	movl	%edi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	16(%esi,%eax,8), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L4197
	addl	%edi, %ebx
	je	L4197
	movzbl	2(%ebp), %eax
	addl	$2, %ebp
	jmp	L4128
L4169:
	leal	1(%ebx), %edx
	movl	%edi, (%esp)
	movl	%ebp, %ecx
	movl	%esi, %eax
	call	_max_expand
	jmp	L4215
	.p2align 4,,10
L4272:
	cmpb	$63, %al
	jne	L4197
	leal	1(%edi), %ebp
L4182:
	movzbl	1(%edi), %eax
	jmp	L4128
	.p2align 4,,10
L4279:
	cmpb	$42, %al
	jne	L4168
	jmp	L4171
	.p2align 4,,10
L4147:
	movl	8(%esi), %eax
	movl	$LC311, 4(%esp)
	movl	%eax, (%esp)
	call	_luaL_error
	movzbl	2(%ebp), %eax
	jmp	L4148
	.p2align 4,,10
L4278:
	movzbl	1(%ebp), %edx
	call	_match_class
	jmp	L4166
L4282:
	movl	8(%esi), %eax
	movl	$LC309, 4(%esp)
	movl	%ecx, 20(%esp)
	movl	%eax, (%esp)
	call	_luaL_error
	movl	20(%esp), %ecx
	jmp	L4137
L4269:
	movl	4(%esi), %eax
	cmpl	%eax, %ebx
	je	L4215
	jmp	L4197
	.p2align 4,,10
L4276:
	movl	8(%esi), %eax
	movl	$LC309, 4(%esp)
	movl	%ecx, 20(%esp)
	movl	%eax, (%esp)
	call	_luaL_error
	movl	20(%esp), %ecx
	jmp	L4138
	.p2align 4,,10
L4164:
	leal	-1(%edi), %ecx
	movl	%ebp, %edx
	call	_matchbracketclass
	jmp	L4166
L4280:
	leal	1(%edi), %ebp
	leal	1(%ebx), %edx
	movl	%esi, %eax
	movl	%ebp, %ecx
	call	_match
	testl	%eax, %eax
	je	L4182
	jmp	L4215
	.p2align 4,,10
L4159:
	movl	8(%esi), %eax
	movl	$LC313, 4(%esp)
	movl	%eax, (%esp)
	call	_luaL_error
	movl	20(%esi,%eax,8), %edi
	jmp	L4160
L4191:
	xorl	%eax, %eax
	jmp	L4157
	.cfi_endproc
LFE531:
	.section	.text.unlikely,"x"
LCOLDE314:
	.text
LHOTE314:
	.section	.text.unlikely,"x"
LCOLDB315:
	.text
LHOTB315:
	.p2align 4,,15
	.def	_max_expand;	.scl	3;	.type	32;	.endef
_max_expand:
LFB526:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %esi
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	%eax, 60(%esp)
	movl	4(%eax), %eax
	movl	%edx, 36(%esp)
	movl	%ecx, 44(%esp)
	cmpl	%edx, %eax
	jbe	L4313
	movzbl	(%ecx), %edx
	subl	%esi, %eax
	xorl	%ebp, %ebp
	movl	%eax, 40(%esp)
	movl	96(%esp), %eax
	movl	%ebp, 24(%esp)
	movb	%dl, 35(%esp)
	movl	__imp__islower, %edx
	subl	$1, %eax
	movl	%eax, %edi
	movl	%edx, 56(%esp)
	jmp	L4285
	.p2align 4,,10
L4331:
	cmpb	$37, %al
	je	L4329
	movzbl	35(%esp), %eax
	cmpl	%esi, %eax
	sete	%al
	movzbl	%al, %eax
L4290:
	testl	%eax, %eax
	je	L4330
L4286:
	addl	$1, 24(%esp)
	movl	24(%esp), %eax
	cmpl	40(%esp), %eax
	je	L4327
L4285:
	movl	36(%esp), %eax
	movl	24(%esp), %edx
	movzbl	(%eax,%edx), %esi
	movzbl	35(%esp), %eax
	cmpb	$46, %al
	je	L4286
	cmpb	$91, %al
	jne	L4331
	movl	44(%esp), %edx
	movl	$1, 48(%esp)
	cmpb	$94, 1(%edx)
	movl	%edx, %eax
	je	L4332
L4292:
	leal	1(%eax), %ebp
	cmpl	%ebp, %edi
	jbe	L4333
	.p2align 4,,10
L4310:
	movzbl	1(%eax), %ecx
	cmpb	$37, %cl
	je	L4334
	cmpb	$45, 2(%eax)
	je	L4335
L4309:
	cmpl	%ecx, %esi
	je	L4320
L4308:
	movl	%ebp, %eax
L4336:
	leal	1(%eax), %ebp
	cmpl	%ebp, %edi
	ja	L4310
L4333:
	movl	48(%esp), %eax
	xorl	$1, %eax
	testl	%eax, %eax
	jne	L4286
L4330:
	movl	24(%esp), %ebp
	movl	36(%esp), %edi
L4284:
	movl	96(%esp), %eax
	movl	60(%esp), %esi
	leal	1(%eax), %ebx
	.p2align 4,,10
L4312:
	leal	(%edi,%ebp), %edx
	movl	%ebx, %ecx
	movl	%esi, %eax
	call	_match
	testl	%eax, %eax
	jne	L4311
	subl	$1, %ebp
	cmpl	$-1, %ebp
	jne	L4312
L4311:
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4305:
	.cfi_restore_state
	xorl	%eax, %eax
	movl	__imp__islower, %ecx
	testl	%esi, %esi
	sete	%al
	movl	%eax, 28(%esp)
	.p2align 4,,10
L4306:
	movl	%ebx, (%esp)
	call	*%ecx
	testl	%eax, %eax
	movl	28(%esp), %ebx
	jne	L4307
	testl	%ebx, %ebx
	sete	%bl
	movzbl	%bl, %ebx
L4307:
	testl	%ebx, %ebx
	je	L4308
L4320:
	movl	48(%esp), %eax
	jmp	L4290
	.p2align 4,,10
L4334:
	movzbl	2(%eax), %ebx
	leal	2(%eax), %ebp
	movl	%ebx, (%esp)
	call	*__imp__tolower
	subl	$97, %eax
	cmpl	$25, %eax
	ja	L4294
	jmp	*L4296(,%eax,4)
	.section .rdata,"dr"
	.align 4
L4296:
	.long	L4295
	.long	L4294
	.long	L4297
	.long	L4298
	.long	L4294
	.long	L4294
	.long	L4294
	.long	L4294
	.long	L4294
	.long	L4294
	.long	L4294
	.long	L4299
	.long	L4294
	.long	L4294
	.long	L4294
	.long	L4300
	.long	L4294
	.long	L4294
	.long	L4301
	.long	L4294
	.long	L4302
	.long	L4294
	.long	L4303
	.long	L4304
	.long	L4294
	.long	L4305
	.text
	.p2align 4,,10
L4304:
	movl	%esi, (%esp)
	call	*__imp__isxdigit
	movl	56(%esp), %ecx
	movl	%eax, 28(%esp)
	jmp	L4306
	.p2align 4,,10
L4303:
	movl	%esi, (%esp)
	call	*__imp__isalnum
	movl	__imp__islower, %ecx
	movl	%eax, 28(%esp)
	jmp	L4306
	.p2align 4,,10
L4302:
	movl	%esi, (%esp)
	call	*__imp__isupper
	movl	__imp__islower, %ecx
	movl	%eax, 28(%esp)
	jmp	L4306
	.p2align 4,,10
L4301:
	movl	%esi, (%esp)
	call	*__imp__isspace
	movl	__imp__islower, %ecx
	movl	%eax, 28(%esp)
	jmp	L4306
	.p2align 4,,10
L4300:
	movl	%esi, (%esp)
	call	*__imp__ispunct
	movl	__imp__islower, %ecx
	movl	%eax, 28(%esp)
	jmp	L4306
	.p2align 4,,10
L4299:
	movl	__imp__islower, %ecx
	movl	%esi, (%esp)
	movl	%ecx, 52(%esp)
	call	*%ecx
	movl	52(%esp), %ecx
	movl	%eax, 28(%esp)
	jmp	L4306
	.p2align 4,,10
L4298:
	leal	-48(%esi), %eax
	movl	__imp__islower, %ecx
	cmpl	$9, %eax
	setbe	%al
	movzbl	%al, %eax
	movl	%eax, 28(%esp)
	jmp	L4306
	.p2align 4,,10
L4297:
	movl	%esi, (%esp)
	call	*__imp__iscntrl
	movl	__imp__islower, %ecx
	movl	%eax, 28(%esp)
	jmp	L4306
	.p2align 4,,10
L4295:
	movl	%esi, (%esp)
	call	*__imp__isalpha
	movl	__imp__islower, %ecx
	movl	%eax, 28(%esp)
	jmp	L4306
	.p2align 4,,10
L4294:
	cmpl	%ebx, %esi
	sete	%bl
	movzbl	%bl, %ebx
	jmp	L4307
	.p2align 4,,10
L4335:
	leal	3(%eax), %ebx
	cmpl	%ebx, %edi
	jbe	L4309
	cmpl	%ecx, %esi
	jl	L4318
	movzbl	3(%eax), %eax
	cmpl	%eax, %esi
	jle	L4320
L4318:
	movl	%ebx, %ebp
	movl	%ebp, %eax
	jmp	L4336
	.p2align 4,,10
L4329:
	movl	44(%esp), %eax
	movzbl	1(%eax), %edx
	movl	%esi, %eax
	call	_match_class
	jmp	L4290
	.p2align 4,,10
L4332:
	addl	$1, %eax
	movl	$0, 48(%esp)
	jmp	L4292
L4327:
	movl	%eax, %ebp
	movl	36(%esp), %edi
	jmp	L4284
L4313:
	xorl	%ebp, %ebp
	movl	%edx, %edi
	jmp	L4284
	.cfi_endproc
LFE526:
	.section	.text.unlikely,"x"
LCOLDE315:
	.text
LHOTE315:
	.section .rdata,"dr"
LC316:
	.ascii "unfinished capture\0"
LC317:
	.ascii "stack overflow (%s)\0"
	.section	.text.unlikely,"x"
LCOLDB318:
	.text
LHOTB318:
	.p2align 4,,15
	.def	_push_captures;	.scl	3;	.type	32;	.endef
_push_captures:
LFB534:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	12(%eax), %ebp
	movl	8(%eax), %ebx
	movl	%edx, 28(%esp)
	movl	%ecx, 32(%esp)
	testl	%ebp, %ebp
	jne	L4356
	testl	%edx, %edx
	je	L4356
	movl	8(%ebx), %ecx
	movl	%ecx, %eax
	subl	12(%ebx), %eax
	cmpl	$127999, %eax
	jg	L4351
	movl	$16, 44(%esp)
	movl	$16, 40(%esp)
	movl	$1, %esi
L4352:
	movl	28(%ebx), %eax
	movl	%ebp, %edx
	subl	%ecx, %eax
	movl	%eax, 36(%esp)
	movl	36(%esp), %ebp
	movl	%ebx, %eax
	cmpl	40(%esp), %ebp
	jle	L4360
L4343:
	movl	20(%ebx), %ebx
	addl	44(%esp), %ecx
	cmpl	%ecx, 8(%ebx)
	jnb	L4344
	movl	%ecx, 8(%ebx)
L4344:
	movl	%esi, %ebp
	jmp	L4354
	.p2align 4,,10
L4356:
	cmpl	$8000, %ebp
	jle	L4361
	movl	$LC309, 8(%esp)
	movl	$LC317, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_error
L4353:
	movl	12(%edi), %edx
	movl	8(%edi), %eax
L4354:
	movl	32(%esp), %ecx
	subl	28(%esp), %ecx
	leal	16(%edi), %esi
	xorl	%ebx, %ebx
	movl	%ecx, 36(%esp)
	jmp	L4350
	.p2align 4,,10
L4362:
	testl	%ebx, %ebx
	jne	L4346
	movl	36(%esp), %ecx
	movl	28(%esp), %edx
	call	_lua_pushlstring
L4347:
	addl	$1, %ebx
	addl	$8, %esi
	cmpl	%ebp, %ebx
	jge	L4357
L4365:
	movl	12(%edi), %edx
	movl	8(%edi), %eax
L4350:
	cmpl	%edx, %ebx
	jge	L4362
	movl	4(%esi), %ecx
	cmpl	$-1, %ecx
	je	L4363
	cmpl	$-2, %ecx
	je	L4364
L4349:
	movl	(%esi), %edx
	addl	$1, %ebx
	addl	$8, %esi
	call	_lua_pushlstring
	cmpl	%ebp, %ebx
	jl	L4365
L4357:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebp, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4346:
	.cfi_restore_state
	movl	$LC313, 4(%esp)
	movl	%eax, (%esp)
	call	_luaL_error
	jmp	L4347
	.p2align 4,,10
L4364:
	movl	(%esi), %edx
	subl	(%edi), %edx
	movl	8(%eax), %ecx
	addl	$1, %edx
	movl	$3, 8(%ecx)
	movl	%edx, 32(%esp)
	fildl	32(%esp)
	fstpl	(%ecx)
	addl	$16, 8(%eax)
	jmp	L4347
	.p2align 4,,10
L4363:
	movl	$LC316, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 32(%esp)
	call	_luaL_error
	movl	8(%edi), %eax
	movl	32(%esp), %ecx
	jmp	L4349
	.p2align 4,,10
L4361:
	movl	8(%ebx), %ecx
	movl	%ecx, %eax
	subl	12(%ebx), %eax
	sarl	$4, %eax
	addl	%ebp, %eax
	cmpl	$8000, %eax
	jg	L4341
	testl	%ebp, %ebp
	jle	L4357
	movl	%ebp, %eax
	movl	%ebp, %esi
	sall	$4, %eax
	movl	%eax, 40(%esp)
	movl	%eax, 44(%esp)
	jmp	L4352
	.p2align 4,,10
L4351:
	movl	$LC309, 8(%esp)
	movl	$LC317, 4(%esp)
	movl	$1, %ebp
	movl	%ebx, (%esp)
	call	_luaL_error
	jmp	L4353
L4360:
	movl	%esi, %edx
	call	_luaD_growstack
	movl	12(%edi), %edx
	movl	8(%edi), %eax
	movl	8(%ebx), %ecx
	jmp	L4343
L4341:
	movl	$LC309, 8(%esp)
	movl	$LC317, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_error
	testl	%ebp, %ebp
	jg	L4353
	jmp	L4357
	.cfi_endproc
LFE534:
	.section	.text.unlikely,"x"
LCOLDE318:
	.text
LHOTE318:
	.section .rdata,"dr"
LC319:
	.ascii "^$*+?.([%-\0"
	.section	.text.unlikely,"x"
LCOLDB320:
	.text
LHOTB320:
	.p2align 4,,15
	.def	_str_find_aux;	.scl	3;	.type	32;	.endef
_str_find_aux:
LFB535:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %esi
	subl	$348, %esp
	.cfi_def_cfa_offset 368
	leal	56(%esp), %edx
	movl	%eax, 32(%esp)
	call	_luaL_checklstring.constprop.138
	leal	60(%esp), %ecx
	movl	%eax, 36(%esp)
	movl	$2, %edx
	movl	%edi, %eax
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, %ebp
	je	L4413
L4367:
	movl	56(%esp), %edi
	movl	32(%esp), %eax
	movl	$1, %ecx
	movl	$3, %edx
	movl	$0, %ebx
	call	_luaL_optinteger
	leal	1(%edi,%eax), %edx
	testl	%eax, %eax
	movl	56(%esp), %ecx
	cmovs	%edx, %eax
	testl	%eax, %eax
	cmovs	%ebx, %eax
	xorl	%edi, %edi
	leal	-1(%eax), %ebx
	cmpl	$-1, %ebx
	je	L4370
	cmpl	%ecx, %ebx
	movl	%ebx, %edi
	cmova	%ecx, %edi
L4370:
	testl	%esi, %esi
	je	L4371
	movl	32(%esp), %edx
	movl	12(%edx), %eax
	movl	8(%edx), %edx
	leal	48(%eax), %ebx
	movl	%edx, 40(%esp)
	cmpl	%ebx, %edx
	ja	L4414
L4372:
	movl	$LC319, 4(%esp)
	movl	%ebp, (%esp)
	movl	%ecx, 20(%esp)
	call	_strpbrk
	testl	%eax, %eax
	movl	20(%esp), %ecx
	jne	L4371
L4373:
	movl	60(%esp), %eax
	movl	36(%esp), %esi
	testl	%eax, %eax
	movl	%eax, 44(%esp)
	leal	(%esi,%edi), %ebx
	je	L4374
	movl	%ecx, %esi
	subl	%edi, %esi
	cmpl	%esi, %eax
	ja	L4375
	subl	$1, %eax
	subl	%eax, %esi
	movl	%eax, 24(%esp)
	je	L4375
	movsbl	0(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	1(%ebp), %eax
	movl	%eax, 28(%esp)
	jmp	L4376
	.p2align 4,,10
L4378:
	movl	24(%esp), %eax
	leal	1(%ebp), %edi
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	call	_memcmp
	testl	%eax, %eax
	je	L4386
	movl	%edi, %eax
	subl	%ebx, %eax
	subl	%eax, %esi
	je	L4375
	movl	%edi, %ebx
L4376:
	movl	20(%esp), %eax
	movl	%esi, 8(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_memchr
	testl	%eax, %eax
	movl	%eax, %ebp
	jne	L4378
L4375:
	movl	40(%esp), %eax
	movl	32(%esp), %esi
	movl	$0, 8(%eax)
	addl	$16, %eax
	movl	%eax, 8(%esi)
	addl	$348, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4414:
	.cfi_restore_state
	movl	56(%eax), %ebx
	testl	%ebx, %ebx
	je	L4372
	cmpl	$1, %ebx
	jne	L4373
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L4372
	jmp	L4373
	.p2align 4,,10
L4374:
	testl	%ebx, %ebx
	je	L4375
L4377:
	subl	36(%esp), %ebx
	movl	32(%esp), %ecx
	leal	1(%ebx), %eax
	addl	44(%esp), %ebx
	movl	%eax, 20(%esp)
	movl	40(%esp), %eax
	fildl	20(%esp)
	movl	%ebx, 20(%esp)
	fstpl	(%eax)
	movl	$3, 8(%eax)
	movl	8(%ecx), %eax
	fildl	20(%esp)
	leal	16(%eax), %edx
	movl	%edx, 8(%ecx)
	fstpl	16(%eax)
	movl	$3, 24(%eax)
	addl	$16, 8(%ecx)
	movl	$2, %eax
L4411:
	addl	$348, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4386:
	.cfi_restore_state
	movl	%ebp, %ebx
	jmp	L4377
	.p2align 4,,10
L4371:
	cmpb	$94, 0(%ebp)
	movb	$1, 20(%esp)
	je	L4415
L4380:
	movl	36(%esp), %eax
	movl	32(%esp), %edx
	addl	%eax, %ecx
	leal	(%eax,%edi), %ebx
	movl	%edx, 72(%esp)
	movl	%eax, 64(%esp)
	movl	%ecx, 68(%esp)
	movzbl	20(%esp), %edi
	jmp	L4384
	.p2align 4,,10
L4381:
	cmpl	68(%esp), %ebx
	leal	1(%ebx), %eax
	jnb	L4389
	movl	%edi, %ecx
	testb	%cl, %cl
	je	L4389
	movl	%eax, %ebx
L4384:
	leal	64(%esp), %eax
	movl	%ebp, %ecx
	movl	%ebx, %edx
	movl	$0, 76(%esp)
	call	_match
	testl	%eax, %eax
	je	L4381
	testl	%esi, %esi
	je	L4382
	movl	36(%esp), %edi
	movl	32(%esp), %esi
	subl	%edi, %ebx
	movl	8(%esi), %ecx
	subl	%edi, %eax
	leal	1(%ebx), %edx
	movl	%edx, 20(%esp)
	movl	$3, 8(%ecx)
	fildl	20(%esp)
	movl	%eax, 20(%esp)
	leal	64(%esp), %eax
	fstpl	(%ecx)
	movl	8(%esi), %edx
	fildl	20(%esp)
	leal	16(%edx), %ecx
	movl	%ecx, 8(%esi)
	fstpl	16(%edx)
	movl	$3, 24(%edx)
	addl	$16, 8(%esi)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	_push_captures
	addl	$2, %eax
	jmp	L4411
	.p2align 4,,10
L4413:
	movl	32(%esp), %eax
	movl	$LC250, %ecx
	movl	$2, %edx
	call	_luaL_typerror
	jmp	L4367
L4389:
	movl	32(%esp), %eax
	movl	8(%eax), %eax
	movl	%eax, 40(%esp)
	jmp	L4375
L4382:
	movl	%eax, %ecx
	leal	64(%esp), %eax
	movl	%ebx, %edx
	call	_push_captures
	jmp	L4411
L4415:
	addl	$1, %ebp
	movb	$0, 20(%esp)
	jmp	L4380
	.cfi_endproc
LFE535:
	.section	.text.unlikely,"x"
LCOLDE320:
	.text
LHOTE320:
	.section	.text.unlikely,"x"
LCOLDB321:
	.text
LHOTB321:
	.p2align 4,,15
	.def	_str_find;	.scl	3;	.type	32;	.endef
_str_find:
LFB536:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$1, %edx
	jmp	_str_find_aux
	.cfi_endproc
LFE536:
	.section	.text.unlikely,"x"
LCOLDE321:
	.text
LHOTE321:
	.section	.text.unlikely,"x"
LCOLDB322:
	.text
LHOTB322:
	.p2align 4,,15
	.def	_gmatch_aux;	.scl	3;	.type	32;	.endef
_gmatch_aux:
LFB538:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$-10003, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	subl	$332, %esp
	.cfi_def_cfa_offset 352
	movl	352(%esp), %edi
	leal	28(%esp), %ecx
	movl	%edi, %eax
	call	_lua_tolstring
	movl	$-10004, %edx
	movl	%eax, %ebp
	movl	%edi, %eax
	call	_lua_tolstring.constprop.139
	movl	%eax, %esi
	movl	20(%edi), %eax
	movl	28(%esp), %edx
	movl	%edi, 56(%esp)
	movl	%ebp, 48(%esp)
	movl	4(%eax), %eax
	addl	%ebp, %edx
	movl	%edx, 52(%esp)
	movl	(%eax), %ecx
	movzbl	7(%ecx), %eax
	cmpl	$2, %eax
	jle	L4418
	leal	56(%ecx), %eax
	movl	64(%ecx), %ecx
	cmpl	$3, %ecx
	jne	L4447
L4419:
	fldl	(%eax)
	fnstcw	14(%esp)
	movzwl	14(%esp), %eax
	movb	$12, %ah
	movw	%ax, 12(%esp)
	fldcw	12(%esp)
	fistpl	8(%esp)
	fldcw	14(%esp)
	movl	8(%esp), %ebx
L4418:
	leal	(%ebx,%ebp), %eax
	cmpl	%edx, %eax
	movl	%eax, (%esp)
	movl	%eax, %ebx
	jbe	L4439
	jmp	L4429
	.p2align 4,,10
L4423:
	addl	$1, %ebx
	cmpl	%ebx, 52(%esp)
	jb	L4429
L4439:
	leal	48(%esp), %eax
	movl	%esi, %ecx
	movl	%ebx, %edx
	movl	$0, 60(%esp)
	call	_match
	testl	%eax, %eax
	je	L4423
	movl	%eax, %ecx
	xorl	%edx, %edx
	subl	%ebp, %eax
	cmpl	%ebx, %ecx
	movl	%ebx, (%esp)
	sete	%dl
	addl	%edx, %eax
	movl	8(%edi), %edx
	movl	%eax, 4(%esp)
	fildl	4(%esp)
	movl	$3, 8(%edx)
	fstpl	(%edx)
	movl	8(%edi), %edx
	leal	16(%edx), %eax
	movl	%eax, 8(%edi)
	movl	20(%edi), %eax
	movl	4(%edx), %esi
	movl	(%edx), %ebx
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	(%eax), %eax
	movzbl	7(%eax), %ebp
	addl	$56, %eax
	cmpl	$3, %ebp
	movl	$_luaO_nilobject_, %ebp
	cmovl	%ebp, %eax
	movl	%esi, 4(%eax)
	movl	8(%edx), %ebp
	movl	%ebx, (%eax)
	movl	%ebp, 8(%eax)
	cmpl	$3, 8(%edx)
	jle	L4426
	movl	(%edx), %edx
	testb	$3, 5(%edx)
	je	L4426
	movl	4(%esp), %eax
	movl	(%eax), %ebp
	movzbl	5(%ebp), %eax
	testb	$4, %al
	je	L4426
	movl	16(%edi), %esi
	cmpb	$1, 21(%esi)
	je	L4448
	movzbl	20(%esi), %edx
	andl	$-8, %eax
	andl	$3, %edx
	orl	%edx, %eax
	movb	%al, 5(%ebp)
L4426:
	subl	$16, 8(%edi)
	movl	(%esp), %edx
	leal	48(%esp), %eax
	call	_push_captures
	addl	$332, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4429:
	.cfi_restore_state
	addl	$332, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4447:
	.cfi_restore_state
	cmpl	$4, %ecx
	jne	L4418
	leal	32(%esp), %edx
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	movl	52(%esp), %edx
	jne	L4419
	jmp	L4418
	.p2align 4,,10
L4448:
	movl	%esi, %eax
	movl	%ecx, 4(%esp)
	call	_reallymarkobject
	movl	4(%esp), %ecx
	jmp	L4426
	.cfi_endproc
LFE538:
	.section	.text.unlikely,"x"
LCOLDE322:
	.text
LHOTE322:
	.section	.text.unlikely,"x"
LCOLDB323:
	.text
LHOTB323:
	.p2align 4,,15
	.def	_str_find_aux.constprop.108;	.scl	3;	.type	32;	.endef
_str_find_aux.constprop.108:
LFB731:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$316, %esp
	.cfi_def_cfa_offset 336
	leal	24(%esp), %edx
	call	_luaL_checklstring.constprop.138
	leal	28(%esp), %ecx
	movl	%eax, 12(%esp)
	movl	$2, %edx
	movl	%ebp, %eax
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, %esi
	je	L4467
L4450:
	movl	24(%esp), %ebx
	movl	$3, %edx
	movl	$1, %ecx
	movl	%ebp, %eax
	call	_luaL_optinteger
	leal	1(%ebx,%eax), %edx
	testl	%eax, %eax
	movl	$0, %ebx
	cmovs	%edx, %eax
	movl	24(%esp), %edx
	testl	%eax, %eax
	cmovs	%ebx, %eax
	subl	$1, %eax
	cmpl	$-1, %eax
	je	L4453
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%eax, %ebx
L4453:
	cmpb	$94, (%esi)
	movl	$1, %edi
	je	L4468
L4454:
	movl	12(%esp), %eax
	movl	%ebp, 40(%esp)
	addl	%eax, %edx
	addl	%eax, %ebx
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	jmp	L4457
	.p2align 4,,10
L4455:
	cmpl	36(%esp), %ebx
	leal	1(%ebx), %eax
	jnb	L4462
	movl	%edi, %ecx
	testb	%cl, %cl
	je	L4462
	movl	%eax, %ebx
L4457:
	leal	32(%esp), %eax
	movl	%esi, %ecx
	movl	%ebx, %edx
	movl	$0, 44(%esp)
	call	_match
	testl	%eax, %eax
	je	L4455
	movl	%eax, %ecx
	leal	32(%esp), %eax
	movl	%ebx, %edx
	call	_push_captures
	addl	$316, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4462:
	.cfi_restore_state
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	addl	$16, %eax
	movl	%eax, 8(%ebp)
	addl	$316, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4468:
	.cfi_restore_state
	addl	$1, %esi
	xorl	%edi, %edi
	jmp	L4454
L4467:
	movl	$LC250, %ecx
	movl	$2, %edx
	movl	%ebp, %eax
	call	_luaL_typerror
	jmp	L4450
	.cfi_endproc
LFE731:
	.section	.text.unlikely,"x"
LCOLDE323:
	.text
LHOTE323:
	.section	.text.unlikely,"x"
LCOLDB324:
	.text
LHOTB324:
	.p2align 4,,15
	.def	_str_match;	.scl	3;	.type	32;	.endef
_str_match:
LFB537:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	_str_find_aux.constprop.108
	.cfi_endproc
LFE537:
	.section	.text.unlikely,"x"
LCOLDE324:
	.text
LHOTE324:
	.section .rdata,"dr"
LC325:
	.ascii "string slice too long\0"
	.section	.text.unlikely,"x"
LCOLDB326:
	.text
LHOTB326:
	.p2align 4,,15
	.def	_str_byte;	.scl	3;	.type	32;	.endef
_str_byte:
LFB517:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$1, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	80(%esp), %ebx
	leal	44(%esp), %ecx
	movl	%ebx, %eax
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, %edi
	je	L4492
L4471:
	movl	44(%esp), %esi
	movl	$1, %ecx
	movl	$2, %edx
	movl	%ebx, %eax
	call	_luaL_optinteger
	leal	1(%esi,%eax), %edx
	testl	%eax, %eax
	movl	44(%esp), %ebp
	movl	$0, %esi
	cmovs	%edx, %eax
	movl	$3, %edx
	testl	%eax, %eax
	cmovns	%eax, %esi
	movl	%ebx, %eax
	movl	%esi, %ecx
	call	_luaL_optinteger
	leal	1(%ebp,%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	$0, %edx
	testl	%eax, %eax
	cmovns	%eax, %edx
	testl	%esi, %esi
	movl	$1, %eax
	cmove	%eax, %esi
	movl	44(%esp), %eax
	cmpl	%eax, %edx
	cmova	%eax, %edx
	xorl	%eax, %eax
	cmpl	%edx, %esi
	jg	L4488
	movl	%edx, %ebp
	subl	%esi, %ebp
	addl	$1, %ebp
	leal	(%esi,%ebp), %eax
	cmpl	%eax, %edx
	jge	L4493
	cmpl	$8000, %ebp
	jg	L4478
L4495:
	movl	8(%ebx), %edx
	movl	%edx, %eax
	subl	12(%ebx), %eax
	sarl	$4, %eax
	addl	%ebp, %eax
	cmpl	$8000, %eax
	jg	L4479
	testl	%ebp, %ebp
	jle	L4491
	movl	28(%ebx), %eax
	movl	%ebp, %ecx
	sall	$4, %ecx
	subl	%edx, %eax
	cmpl	%ecx, %eax
	jle	L4494
L4480:
	movl	20(%ebx), %ecx
	movl	%ebp, %eax
	sall	$4, %eax
	addl	%edx, %eax
	cmpl	%eax, 8(%ecx)
	jnb	L4484
	movl	%eax, 8(%ecx)
	movl	8(%ebx), %edx
	jmp	L4484
	.p2align 4,,10
L4478:
	movl	$LC325, 8(%esp)
	movl	$LC317, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_error
L4483:
	movl	8(%ebx), %edx
L4484:
	xorl	%eax, %eax
	addl	%edi, %esi
	.p2align 4,,10
L4482:
	movzbl	-1(%esi,%eax), %ecx
	movl	$3, 8(%edx)
	addl	$1, %eax
	cmpl	%eax, %ebp
	movl	%ecx, 28(%esp)
	fildl	28(%esp)
	fstpl	(%edx)
	movl	8(%ebx), %edi
	leal	16(%edi), %edx
	movl	%edx, 8(%ebx)
	jg	L4482
L4491:
	movl	%ebp, %eax
L4488:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4493:
	.cfi_restore_state
	movl	$LC325, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_error
	cmpl	$8000, %ebp
	jle	L4495
	jmp	L4478
	.p2align 4,,10
L4479:
	movl	$LC325, 8(%esp)
	movl	$LC317, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_error
	testl	%ebp, %ebp
	jg	L4483
	movl	%ebp, %eax
	jmp	L4488
	.p2align 4,,10
L4492:
	movl	$LC250, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaL_typerror
	jmp	L4471
L4494:
	movl	%ebp, %edx
	movl	%ebx, %eax
	call	_luaD_growstack
	movl	8(%ebx), %edx
	jmp	L4480
	.cfi_endproc
LFE517:
	.section	.text.unlikely,"x"
LCOLDE326:
	.text
LHOTE326:
	.section	.text.unlikely,"x"
LCOLDB327:
	.text
LHOTB327:
	.p2align 4,,15
	.def	_f_write;	.scl	3;	.type	32;	.endef
_f_write:
LFB501:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	_luaL_checkudata.constprop.124
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L4499
L4497:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%ebx, %eax
	movl	$2, %ecx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_g_write
	.p2align 4,,10
L4499:
	.cfi_restore_state
	movl	%eax, %esi
	movl	$LC287, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_error
	movl	(%esi), %edx
	jmp	L4497
	.cfi_endproc
LFE501:
	.section	.text.unlikely,"x"
LCOLDE327:
	.text
LHOTE327:
	.section	.text.unlikely,"x"
LCOLDB328:
	.text
LHOTB328:
	.p2align 4,,15
	.def	_f_lines;	.scl	3;	.type	32;	.endef
_f_lines:
LFB489:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	_luaL_checkudata.constprop.124
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L4503
L4501:
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	_aux_lines
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4503:
	.cfi_restore_state
	movl	$LC287, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_error
	jmp	L4501
	.cfi_endproc
LFE489:
	.section	.text.unlikely,"x"
LCOLDE328:
	.text
LHOTE328:
	.section	.text.unlikely,"x"
LCOLDB329:
	.text
LHOTB329:
	.p2align 4,,15
	.def	_f_flush;	.scl	3;	.type	32;	.endef
_f_flush:
LFB503:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	_luaL_checkudata.constprop.124
	movl	%eax, %esi
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L4507
L4505:
	movl	%eax, (%esp)
	call	_fflush
	xorl	%edx, %edx
	testl	%eax, %eax
	movl	%ebx, %eax
	sete	%dl
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_pushresult.constprop.113
	.p2align 4,,10
L4507:
	.cfi_restore_state
	movl	$LC287, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_error
	movl	(%esi), %eax
	jmp	L4505
	.cfi_endproc
LFE503:
	.section	.text.unlikely,"x"
LCOLDE329:
	.text
LHOTE329:
	.section	.text.unlikely,"x"
LCOLDB330:
	.text
LHOTB330:
	.p2align 4,,15
	.def	_io_close;	.scl	3;	.type	32;	.endef
_io_close:
LFB481:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	12(%ebx), %eax
	cmpl	8(%ebx), %eax
	jb	L4525
L4509:
	movl	$2, %ecx
	movl	$-10001, %edx
	movl	%ebx, %eax
	call	_lua_rawgeti
	movl	%ebx, %eax
	call	_luaL_checkudata.constprop.124
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L4526
	.p2align 4,,10
L4511:
	movl	12(%ebx), %eax
	movl	8(%ebx), %ecx
	cmpl	%ecx, %eax
	jb	L4527
L4512:
	movl	$0, 8(%ecx)
L4516:
	addl	$16, %ecx
	movl	$-1, %edx
	movl	%ebx, %eax
	movl	%ecx, 8(%ebx)
	movl	$LC248, %ecx
	call	_lua_getfield
	movl	8(%ebx), %eax
	xorl	%edx, %edx
	cmpl	$6, -8(%eax)
	jne	L4517
	movl	-16(%eax), %eax
	cmpb	$0, 6(%eax)
	je	L4517
	movl	16(%eax), %edx
L4517:
	movl	%ebx, 32(%esp)
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	*%edx
	.p2align 4,,10
L4527:
	.cfi_restore_state
	movl	8(%eax), %edx
	cmpl	$7, %edx
	je	L4513
	cmpl	$8, %edx
	jne	L4528
	movl	(%eax), %esi
	movl	72(%esi), %eax
	movl	76(%esi), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	80(%esi), %eax
	movl	%eax, 8(%ecx)
	jmp	L4516
	.p2align 4,,10
L4528:
	cmpl	$6, %edx
	jne	L4512
L4513:
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	$5, 8(%ecx)
	movl	%eax, (%ecx)
	movl	8(%ebx), %ecx
	jmp	L4516
	.p2align 4,,10
L4525:
	cmpl	$_luaO_nilobject_, %eax
	je	L4509
	cmpl	$-1, 8(%eax)
	je	L4509
	movl	%ebx, %eax
	call	_luaL_checkudata.constprop.124
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L4511
L4526:
	movl	$LC287, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_error
	jmp	L4511
	.cfi_endproc
LFE481:
	.section	.text.unlikely,"x"
LCOLDE330:
	.text
LHOTE330:
	.section	.text.unlikely,"x"
LCOLDB331:
	.text
LHOTB331:
	.p2align 4,,15
	.def	_luaL_pushresult;	.scl	3;	.type	32;	.endef
_luaL_pushresult:
LFB431:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	(%eax), %ecx
	leal	12(%eax), %ebx
	subl	%ebx, %ecx
	jne	L4530
	movl	4(%eax), %ebx
	movl	8(%esi), %edi
	cmpl	$1, %ebx
	jle	L4532
L4537:
	movl	16(%edi), %eax
	movl	64(%eax), %edx
	cmpl	%edx, 68(%eax)
	jnb	L4536
L4533:
	movl	8(%edi), %ecx
	subl	12(%edi), %ecx
	movl	%ebx, %edx
	negl	%ebx
	movl	%edi, %eax
	sall	$4, %ebx
	addl	$16, %ebx
	sarl	$4, %ecx
	subl	$1, %ecx
	call	_luaV_concat
	addl	%ebx, 8(%edi)
L4534:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movl	$1, 4(%esi)
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4536:
	.cfi_restore_state
	movl	%edi, %eax
	call	_luaC_step
	jmp	L4533
	.p2align 4,,10
L4530:
	movl	8(%eax), %eax
	movl	%ebx, %edx
	call	_lua_pushlstring
	movl	4(%esi), %eax
	movl	%ebx, (%esi)
	movl	8(%esi), %edi
	leal	1(%eax), %ebx
	cmpl	$1, %ebx
	movl	%ebx, 4(%esi)
	jg	L4537
L4532:
	testl	%ebx, %ebx
	jne	L4534
	movl	8(%edi), %ebx
	movl	%edi, %eax
	xorl	%ecx, %ecx
	movl	$LC75, %edx
	call	_luaS_newlstr
	movl	$4, 8(%ebx)
	movl	%eax, (%ebx)
	addl	$16, 8(%edi)
	movl	$1, 4(%esi)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE431:
	.section	.text.unlikely,"x"
LCOLDE331:
	.text
LHOTE331:
	.section	.text.unlikely,"x"
LCOLDB332:
	.text
LHOTB332:
	.p2align 4,,15
	.def	_read_line;	.scl	3;	.type	32;	.endef
_read_line:
LFB493:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %edi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edx, %esi
	subl	$544, %esp
	.cfi_def_cfa_offset 560
	movl	%eax, 28(%esp)
	leal	32(%esp), %eax
	movl	$0, 24(%esp)
	movl	%eax, 20(%esp)
	jmp	L4543
	.p2align 4,,10
L4539:
	movl	%ebx, (%esp)
	call	_strlen
	testl	%eax, %eax
	je	L4541
	cmpb	$10, -1(%ebx,%eax)
	leal	-1(%eax), %edx
	je	L4542
L4541:
	addl	%eax, 20(%esp)
L4543:
	leal	20(%esp), %eax
	call	_luaL_prepbuffer
	movl	%esi, 8(%esp)
	movl	%eax, %ebx
	movl	$512, 4(%esp)
	movl	%eax, (%esp)
	call	_fgets
	testl	%eax, %eax
	jne	L4539
	leal	20(%esp), %eax
	call	_luaL_pushresult
	movl	%edi, %eax
	movl	$-1, %edx
	call	_lua_objlen
	testl	%eax, %eax
	setne	%al
	addl	$544, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movzbl	%al, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4542:
	.cfi_restore_state
	leal	20(%esp), %eax
	addl	%edx, 20(%esp)
	call	_luaL_pushresult
	addl	$544, %esp
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE493:
	.section	.text.unlikely,"x"
LCOLDE332:
	.text
LHOTE332:
	.section .rdata,"dr"
LC333:
	.ascii "file is already closed\0"
	.section	.text.unlikely,"x"
LCOLDB334:
	.text
LHOTB334:
	.p2align 4,,15
	.def	_io_readline;	.scl	3;	.type	32;	.endef
_io_readline:
LFB498:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	20(%ebx), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpb	$0, 7(%eax)
	je	L4549
	movl	32(%eax), %edx
	cmpl	$2, %edx
	jne	L4580
	movl	24(%eax), %eax
L4552:
	movl	(%eax), %esi
	testl	%esi, %esi
	je	L4581
L4553:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_read_line
	movl	%esi, (%esp)
	movl	%eax, %edi
	call	_ferror
	testl	%eax, %eax
	movl	%eax, %esi
	jne	L4582
	testl	%edi, %edi
	je	L4583
	movl	$1, %esi
L4572:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4549:
	.cfi_restore_state
	movl	0, %eax
	ud2
	.p2align 4,,10
L4580:
	cmpl	$7, %edx
	jne	L4549
	movl	24(%eax), %eax
	addl	$24, %eax
	jmp	L4552
	.p2align 4,,10
L4583:
	movl	20(%ebx), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movzbl	7(%eax), %edx
	cmpl	$1, %edx
	jle	L4572
	movl	48(%eax), %edx
	testl	%edx, %edx
	je	L4572
	cmpl	$1, %edx
	je	L4556
L4560:
	movl	12(%ebx), %edx
	movl	8(%ebx), %eax
	cmpl	%eax, %edx
	jbe	L4562
	.p2align 4,,10
L4574:
	addl	$16, %eax
	movl	$0, -8(%eax)
	cmpl	%edx, %eax
	jb	L4574
L4562:
	movl	%edx, 8(%ebx)
	movl	%ebx, %eax
	movl	$-10003, %edx
	call	_lua_pushvalue
	movl	12(%ebx), %eax
	movl	8(%ebx), %ecx
	cmpl	%ecx, %eax
	jb	L4584
L4558:
	movl	$0, 8(%ecx)
L4566:
	addl	$16, %ecx
	movl	$-1, %edx
	movl	%ebx, %eax
	movl	%ecx, 8(%ebx)
	movl	$LC248, %ecx
	call	_lua_getfield
	movl	8(%ebx), %eax
	xorl	%edx, %edx
	cmpl	$6, -8(%eax)
	jne	L4567
	movl	-16(%eax), %eax
	cmpb	$0, 6(%eax)
	je	L4567
	movl	16(%eax), %edx
L4567:
	movl	%ebx, (%esp)
	call	*%edx
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4582:
	.cfi_restore_state
	call	*__imp___errno
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strerror
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	movl	$LC166, 4(%esp)
	call	_luaL_error
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%eax, %esi
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4584:
	.cfi_restore_state
	movl	8(%eax), %edx
	cmpl	$7, %edx
	je	L4563
	cmpl	$8, %edx
	jne	L4585
	movl	(%eax), %edi
	movl	72(%edi), %eax
	movl	76(%edi), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	80(%edi), %eax
	movl	%eax, 8(%ecx)
	jmp	L4566
	.p2align 4,,10
L4585:
	cmpl	$6, %edx
	jne	L4558
L4563:
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	$5, 8(%ecx)
	movl	%eax, (%ecx)
	movl	8(%ebx), %ecx
	jmp	L4566
	.p2align 4,,10
L4581:
	movl	$LC333, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_error
	jmp	L4553
	.p2align 4,,10
L4556:
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	L4572
	jmp	L4560
	.cfi_endproc
LFE498:
	.section	.text.unlikely,"x"
LCOLDE334:
	.text
LHOTE334:
	.section .rdata,"dr"
LC335:
	.ascii "invalid option\0"
LC336:
	.ascii "%lf\0"
LC337:
	.ascii "invalid format\0"
LC338:
	.ascii "too many arguments\0"
	.section	.text.unlikely,"x"
LCOLDB339:
	.text
LHOTB339:
	.p2align 4,,15
	.def	_g_read;	.scl	3;	.type	32;	.endef
_g_read:
LFB495:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	8(%eax), %esi
	subl	12(%eax), %esi
	movl	%edx, (%esp)
	movl	%edx, 32(%esp)
	movl	%ecx, 36(%esp)
	call	_clearerr
	sarl	$4, %esi
	cmpl	$1, %esi
	jne	L4587
	movl	%edi, %edx
	movl	%ebx, %eax
	call	_read_line
	movl	%eax, %ebp
	movl	36(%esp), %eax
	leal	1(%eax), %esi
L4588:
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_ferror
	testl	%eax, %eax
	jne	L4611
	testl	%ebp, %ebp
	je	L4616
L4612:
	movl	%esi, %eax
	subl	36(%esp), %eax
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4587:
	.cfi_restore_state
	leal	19(%esi), %edi
	cmpl	$8000, %edi
	jg	L4589
	movl	8(%ebx), %eax
	movl	%eax, %edx
	subl	12(%ebx), %edx
	sarl	$4, %edx
	addl	%edi, %edx
	cmpl	$8000, %edx
	jg	L4589
	testl	%edi, %edi
	jle	L4614
	movl	28(%ebx), %edx
	movl	%edi, %ecx
	sall	$4, %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	L4643
L4591:
	movl	20(%ebx), %edx
	sall	$4, %edi
	addl	%edi, %eax
	cmpl	%eax, 8(%edx)
	jnb	L4614
	movl	%eax, 8(%edx)
	jmp	L4614
	.p2align 4,,10
L4589:
	movl	$LC338, 8(%esp)
	movl	$LC317, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_error
L4614:
	movl	36(%esp), %eax
	leal	1(%eax), %edi
	leal	-3(%esi), %eax
	movl	%eax, 28(%esp)
L4617:
	leal	-1(%edi), %esi
	movl	%ebx, %eax
	movl	%esi, %edx
	call	_index2adr
	cmpl	$_luaO_nilobject_, %eax
	movl	%esi, %edx
	je	L4593
	cmpl	$3, 8(%eax)
	je	L4644
L4593:
	movl	%ebx, %eax
	call	_lua_tolstring.constprop.139
	testl	%eax, %eax
	movl	%eax, %ebp
	je	L4599
	cmpb	$42, (%eax)
	je	L4600
L4599:
	movl	$LC335, %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_luaL_argerror
L4600:
	movzbl	1(%ebp), %eax
	cmpb	$108, %al
	je	L4602
	cmpb	$110, %al
	je	L4603
	cmpb	$97, %al
	je	L4645
	movl	%esi, %edx
	movl	%ebx, %eax
	movl	$LC337, %ecx
	call	_luaL_argerror
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4644:
	.cfi_restore_state
	movl	%ebx, %eax
	call	_index2adr
	movl	8(%eax), %edx
	cmpl	$3, %edx
	je	L4594
	cmpl	$4, %edx
	je	L4646
L4615:
	movl	32(%esp), %ebp
	movl	%ebp, (%esp)
	call	_getc
	movl	%eax, %esi
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	_ungetc
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_lua_pushlstring
	xorl	%eax, %eax
	cmpl	$-1, %esi
	setne	%al
L4598:
	cmpl	$-1, 28(%esp)
	movl	%edi, %esi
	je	L4638
	testl	%eax, %eax
	je	L4647
L4607:
	addl	$1, %edi
	subl	$1, 28(%esp)
	jmp	L4617
	.p2align 4,,10
L4646:
	leal	48(%esp), %edx
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	je	L4615
L4594:
	fldl	(%eax)
	fnstcw	46(%esp)
	movzwl	46(%esp), %eax
	movb	$12, %ah
	movw	%ax, 44(%esp)
	fldcw	44(%esp)
	fistpl	40(%esp)
	fldcw	46(%esp)
	movl	40(%esp), %ecx
	testl	%ecx, %ecx
	je	L4615
	movl	32(%esp), %edx
	movl	%ebx, %eax
	call	_read_chars
	jmp	L4598
	.p2align 4,,10
L4645:
	movl	32(%esp), %edx
	movl	$-1, %ecx
	movl	%ebx, %eax
	movl	%edi, %esi
	call	_read_chars
	cmpl	$-1, 28(%esp)
	jne	L4607
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_ferror
	testl	%eax, %eax
	je	L4612
L4611:
	movl	%ebx, %eax
	xorl	%edx, %edx
	call	_pushresult.constprop.113
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4603:
	.cfi_restore_state
	leal	48(%esp), %eax
	movl	$LC336, 4(%esp)
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_fscanf
	cmpl	$1, %eax
	movl	8(%ebx), %eax
	je	L4648
	movl	$0, 8(%eax)
	addl	$16, %eax
	movl	%eax, 8(%ebx)
	xorl	%eax, %eax
	jmp	L4598
	.p2align 4,,10
L4602:
	movl	32(%esp), %edx
	movl	%ebx, %eax
	call	_read_line
	jmp	L4598
	.p2align 4,,10
L4647:
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_ferror
	testl	%eax, %eax
	jne	L4611
L4616:
	movl	8(%ebx), %eax
	movl	$0, -8(%eax)
	jmp	L4612
	.p2align 4,,10
L4648:
	fldl	48(%esp)
	movl	$3, 8(%eax)
	fstpl	(%eax)
	movl	$1, %eax
	addl	$16, 8(%ebx)
	jmp	L4598
	.p2align 4,,10
L4643:
	movl	%ebx, %eax
	movl	%edi, %edx
	call	_luaD_growstack
	movl	8(%ebx), %eax
	jmp	L4591
	.p2align 4,,10
L4638:
	movl	%eax, %ebp
	jmp	L4588
	.cfi_endproc
LFE495:
	.section	.text.unlikely,"x"
LCOLDE339:
	.text
LHOTE339:
	.section .rdata,"dr"
LC340:
	.ascii "input\0"
	.section	.text.unlikely,"x"
LCOLDB341:
	.text
LHOTB341:
	.p2align 4,,15
	.def	_io_read;	.scl	3;	.type	32;	.endef
_io_read:
LFB496:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	$-10001, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$32, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	%ebx, %eax
	call	_index2adr
	movl	(%eax), %eax
	movl	28(%eax), %edx
	testl	%edx, %edx
	je	L4650
	movl	12(%eax), %eax
L4651:
	movl	8(%ebx), %edx
	movl	4(%eax), %edi
	movl	(%eax), %esi
	movl	%edi, 4(%edx)
	movl	8(%eax), %eax
	leal	16(%edx), %ecx
	movl	%esi, (%edx)
	cmpl	$2, %eax
	movl	%eax, 8(%edx)
	movl	%ecx, 8(%ebx)
	je	L4653
	cmpl	$7, %eax
	jne	L4657
	movl	(%edx), %eax
	addl	$24, %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L4659
L4656:
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax
	movl	$1, %ecx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_g_read
	.p2align 4,,10
L4657:
	.cfi_restore_state
	movl	0, %eax
	ud2
	.p2align 4,,10
L4650:
	movl	$1, %edx
	call	_luaH_getnum.part.8
	jmp	L4651
	.p2align 4,,10
L4653:
	movl	(%edx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	jne	L4656
L4659:
	movl	$LC340, 8(%esp)
	movl	$LC306, 4(%esp)
	movl	%ebx, (%esp)
	movl	%edx, 28(%esp)
	call	_luaL_error
	movl	28(%esp), %edx
	jmp	L4656
	.cfi_endproc
LFE496:
	.section	.text.unlikely,"x"
LCOLDE341:
	.text
LHOTE341:
	.section	.text.unlikely,"x"
LCOLDB342:
	.text
LHOTB342:
	.p2align 4,,15
	.def	_f_read;	.scl	3;	.type	32;	.endef
_f_read:
LFB497:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	_luaL_checkudata.constprop.124
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L4663
L4661:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%ebx, %eax
	movl	$2, %ecx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_g_read
	.p2align 4,,10
L4663:
	.cfi_restore_state
	movl	%eax, %esi
	movl	$LC287, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_error
	movl	(%esi), %edx
	jmp	L4661
	.cfi_endproc
LFE497:
	.section	.text.unlikely,"x"
LCOLDE342:
	.text
LHOTE342:
	.section .rdata,"dr"
	.align 4
LC343:
	.ascii "invalid value (%s) at index %d in table for 'concat'\0"
	.section	.text.unlikely,"x"
LCOLDB344:
	.text
LHOTB344:
	.p2align 4,,15
	.def	_tconcat;	.scl	3;	.type	32;	.endef
_tconcat:
LFB466:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$620, %esp
	.cfi_def_cfa_offset 640
	movl	640(%esp), %eax
	movl	640(%esp), %ebx
	movl	12(%eax), %eax
	leal	16(%eax), %edx
	cmpl	8(%ebx), %edx
	jnb	L4665
	cmpl	$_luaO_nilobject_, %edx
	je	L4665
	movl	24(%eax), %edx
	testl	%edx, %edx
	jle	L4665
	leal	48(%esp), %ecx
	movl	%ebx, %eax
	movl	$2, %edx
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, 44(%esp)
	je	L4747
L4667:
	movl	640(%esp), %eax
	call	_luaL_checktype.constprop.123
	movl	640(%esp), %eax
	movl	$3, %edx
	movl	$1, %ecx
	call	_luaL_optinteger
	movl	%eax, 36(%esp)
	movl	640(%esp), %eax
	movl	640(%esp), %ebx
	movl	12(%eax), %eax
	leal	48(%eax), %edx
	cmpl	8(%ebx), %edx
	jb	L4748
L4668:
	movl	640(%esp), %eax
	movl	$1, %edx
	call	_lua_objlen
	movl	%eax, 40(%esp)
L4670:
	movl	640(%esp), %eax
	movl	36(%esp), %edx
	cmpl	%edx, 40(%esp)
	movl	$0, 88(%esp)
	movl	%eax, 92(%esp)
	leal	96(%esp), %eax
	movl	%eax, 84(%esp)
	jle	L4749
	.p2align 4,,10
L4730:
	movl	640(%esp), %eax
	movl	36(%esp), %edx
	call	_lua_rawgeti.constprop.131
	movl	640(%esp), %eax
	movl	8(%eax), %eax
	cmpl	$_luaO_nilobject_+16, %eax
	je	L4710
	movl	-8(%eax), %eax
	leal	-3(%eax), %edx
	cmpl	$1, %edx
	jbe	L4675
	cmpl	$-1, %eax
	je	L4710
	movl	_luaT_typenames(,%eax,4), %eax
L4674:
	movl	36(%esp), %edx
	movl	%eax, 8(%esp)
	movl	640(%esp), %eax
	movl	$LC343, 4(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, (%esp)
	call	_luaL_error
L4675:
	leal	84(%esp), %eax
	call	_luaL_addvalue
	movl	44(%esp), %eax
	movl	%eax, 24(%esp)
	movl	48(%esp), %eax
	testl	%eax, %eax
	movl	%eax, 32(%esp)
	jne	L4731
	jmp	L4702
	.p2align 4,,10
L4679:
	addl	$1, 24(%esp)
	leal	1(%eax), %edx
	subl	$1, 32(%esp)
	movl	24(%esp), %esi
	movl	%edx, 84(%esp)
	movzbl	-1(%esi), %edx
	movb	%dl, (%eax)
	je	L4702
L4731:
	movl	84(%esp), %eax
	leal	608(%esp), %ebx
	cmpl	%ebx, %eax
	jb	L4679
	leal	96(%esp), %edx
	movl	%eax, %ecx
	subl	%edx, %ecx
	je	L4679
	movl	92(%esp), %eax
	call	_lua_pushlstring
	leal	96(%esp), %eax
	movl	%eax, 84(%esp)
	movl	88(%esp), %eax
	leal	1(%eax), %edx
	leal	96(%esp), %eax
	cmpl	$1, %edx
	movl	%edx, 88(%esp)
	jle	L4679
	movl	92(%esp), %ebp
	movl	$-1, %edx
	movl	$-2, %esi
	movl	%ebp, %eax
	call	_lua_objlen
	movl	%eax, 28(%esp)
	jmp	L4697
	.p2align 4,,10
L4751:
	leal	268435455(%esi), %ebx
	xorl	%eax, %eax
	sall	$4, %ebx
	addl	12(%ebp), %ebx
	cmpl	8(%ebp), %ebx
	jnb	L4681
	movl	8(%ebx), %eax
L4684:
	cmpl	$4, %eax
	je	L4690
L4754:
	jle	L4750
	cmpl	$5, %eax
	je	L4689
	cmpl	$7, %eax
	jne	L4716
	movl	(%ebx), %eax
	movl	16(%eax), %eax
	.p2align 4,,10
L4681:
	movl	88(%esp), %edx
	movl	%edx, %ecx
	subl	%edi, %ecx
	cmpl	$8, %ecx
	jg	L4717
	cmpl	%eax, 28(%esp)
	jbe	L4695
L4717:
	movl	%esi, %edi
	addl	%eax, 28(%esp)
	subl	$1, %esi
	negl	%edi
	cmpl	%edi, %edx
	jle	L4695
L4697:
	movl	%esi, %edi
	testl	%esi, %esi
	notl	%edi
	jg	L4751
	cmpl	$-9999, %esi
	jge	L4752
	cmpl	$-10001, %esi
	je	L4686
	cmpl	$-10000, %esi
	je	L4687
	cmpl	$-10002, %esi
	je	L4753
	movl	20(%ebp), %eax
	movl	$-10002, %edx
	subl	%esi, %edx
	movl	4(%eax), %eax
	movl	(%eax), %ebx
	xorl	%eax, %eax
	movzbl	7(%ebx), %ecx
	cmpl	%edx, %ecx
	jl	L4681
	movl	%edx, %eax
	sall	$4, %eax
	addl	%ebx, %eax
	leal	8(%eax), %ebx
	movl	16(%eax), %eax
	cmpl	$4, %eax
	jne	L4754
	.p2align 4,,10
L4690:
	movl	(%ebx), %eax
	movl	12(%eax), %eax
	jmp	L4681
	.p2align 4,,10
L4686:
	movl	20(%ebp), %eax
	leal	88(%ebp), %ebx
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	$5, 96(%ebp)
	movl	%eax, 88(%ebp)
L4689:
	movl	(%ebx), %eax
	call	_luaH_getn
	jmp	L4681
	.p2align 4,,10
L4752:
	movl	%esi, %ebx
	sall	$4, %ebx
	addl	8(%ebp), %ebx
	movl	8(%ebx), %eax
	jmp	L4684
	.p2align 4,,10
L4695:
	cmpl	$1, %edi
	jle	L4698
	movl	16(%ebp), %eax
	movl	64(%eax), %edx
	cmpl	%edx, 68(%eax)
	jb	L4699
	movl	%ebp, %eax
	call	_luaC_step
L4699:
	movl	8(%ebp), %ecx
	subl	12(%ebp), %ecx
	movl	%edi, %edx
	movl	%ebp, %eax
	sarl	$4, %ecx
	subl	$1, %ecx
	call	_luaV_concat
	movl	%edi, %eax
	movl	88(%esp), %edx
	negl	%eax
	sall	$4, %eax
	addl	$16, %eax
	addl	%eax, 8(%ebp)
L4700:
	subl	%edi, %edx
	movl	84(%esp), %eax
	addl	$1, %edx
	movl	%edx, 88(%esp)
	jmp	L4679
	.p2align 4,,10
L4702:
	addl	$1, 36(%esp)
	movl	36(%esp), %eax
	cmpl	%eax, 40(%esp)
	jne	L4730
L4672:
	movl	640(%esp), %eax
	movl	40(%esp), %edx
	call	_lua_rawgeti.constprop.131
	movl	640(%esp), %eax
	movl	8(%eax), %eax
	cmpl	$_luaO_nilobject_+16, %eax
	je	L4715
	movl	-8(%eax), %eax
	leal	-3(%eax), %edx
	cmpl	$1, %edx
	jbe	L4705
	cmpl	$-1, %eax
	je	L4715
	movl	_luaT_typenames(,%eax,4), %eax
L4704:
	movl	40(%esp), %edx
	movl	%eax, 8(%esp)
	movl	640(%esp), %eax
	movl	$LC343, 4(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, (%esp)
	call	_luaL_error
L4705:
	leal	84(%esp), %eax
	call	_luaL_addvalue
	movl	84(%esp), %ecx
	leal	96(%esp), %eax
	subl	%eax, %ecx
	jne	L4706
L4673:
	movl	88(%esp), %edx
L4707:
	movl	92(%esp), %eax
	call	_lua_concat
	addl	$620, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4753:
	.cfi_restore_state
	leal	72(%ebp), %ebx
	movl	80(%ebp), %eax
	jmp	L4684
	.p2align 4,,10
L4687:
	movl	16(%ebp), %eax
	leal	96(%eax), %ebx
	movl	104(%eax), %eax
	jmp	L4684
	.p2align 4,,10
L4750:
	cmpl	$3, %eax
	jne	L4716
	fldl	(%ebx)
	leal	52(%esp), %eax
	movl	$LC54, 4(%esp)
	fstpl	8(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	leal	52(%esp), %ecx
L4693:
	movl	(%ecx), %edx
	addl	$4, %ecx
	leal	-16843009(%edx), %eax
	notl	%edx
	andl	%edx, %eax
	andl	$-2139062144, %eax
	je	L4693
	movl	%eax, %edx
	shrl	$16, %edx
	testl	$32896, %eax
	cmove	%edx, %eax
	leal	2(%ecx), %edx
	cmove	%edx, %ecx
	movl	%eax, %edx
	addb	%al, %dl
	leal	52(%esp), %eax
	sbbl	$3, %ecx
	subl	%eax, %ecx
	movl	%eax, %edx
	movl	%ebp, %eax
	call	_luaS_newlstr
	movl	$4, 8(%ebx)
	movl	%eax, (%ebx)
	movl	12(%eax), %eax
	jmp	L4681
	.p2align 4,,10
L4698:
	testl	%edi, %edi
	jne	L4700
	movl	8(%ebp), %ebx
	movl	$LC75, %edx
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	call	_luaS_newlstr
	movl	$4, 8(%ebx)
	movl	%eax, (%ebx)
	addl	$16, 8(%ebp)
	movl	88(%esp), %edx
	jmp	L4700
	.p2align 4,,10
L4710:
	movl	$LC222, %eax
	jmp	L4674
L4748:
	cmpl	$_luaO_nilobject_, %edx
	je	L4668
	movl	56(%eax), %eax
	testl	%eax, %eax
	jle	L4668
	movl	%ebx, %eax
	movl	$4, %edx
	call	_luaL_checkinteger
	movl	%eax, 40(%esp)
	jmp	L4670
L4665:
	movl	$0, 48(%esp)
	movl	$LC75, 44(%esp)
	jmp	L4667
L4747:
	movl	640(%esp), %eax
	movl	$LC250, %ecx
	movl	$2, %edx
	call	_luaL_typerror
	jmp	L4667
L4715:
	movl	$LC222, %eax
	jmp	L4704
L4706:
	movl	92(%esp), %eax
	leal	96(%esp), %edx
	call	_lua_pushlstring
	leal	96(%esp), %eax
	movl	%eax, 84(%esp)
	movl	88(%esp), %eax
	leal	1(%eax), %edx
	movl	%edx, 88(%esp)
	jmp	L4707
L4749:
	jne	L4673
	jmp	L4672
L4716:
	xorl	%eax, %eax
	jmp	L4681
	.cfi_endproc
LFE466:
	.section	.text.unlikely,"x"
LCOLDE344:
	.text
LHOTE344:
	.section	.text.unlikely,"x"
LCOLDB345:
	.text
LHOTB345:
	.p2align 4,,15
	.def	_luaL_findtable;	.scl	3;	.type	32;	.endef
_luaL_findtable:
LFB426:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%ecx, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	call	_lua_pushvalue
	movl	%ebp, 20(%esp)
	movl	%ebp, %eax
	.p2align 4,,10
L4765:
	movl	$46, 4(%esp)
	movl	%eax, (%esp)
	call	_strchr
	testl	%eax, %eax
	movl	%eax, %esi
	je	L4780
L4756:
	movl	%esi, %eax
	subl	20(%esp), %eax
	movl	%eax, 24(%esp)
	movl	16(%ebx), %eax
	movl	64(%eax), %ecx
	cmpl	%ecx, 68(%eax)
	jb	L4757
	movl	%ebx, %eax
	call	_luaC_step
L4757:
	movl	8(%ebx), %edi
	movl	24(%esp), %ecx
	movl	%ebx, %eax
	movl	20(%esp), %edx
	call	_luaS_newlstr
	movl	%eax, (%edi)
	movl	8(%ebx), %edx
	movl	$4, 8(%edi)
	leal	16(%edx), %eax
	movl	%eax, 8(%ebx)
	movl	-16(%edx), %eax
	call	_luaH_get
	movl	8(%ebx), %edx
	movl	4(%eax), %ebp
	movl	(%eax), %edi
	leal	-16(%edx), %ecx
	movl	%ebp, -12(%edx)
	movl	8(%eax), %eax
	movl	%edi, -16(%edx)
	cmpl	$_luaO_nilobject_, %ecx
	movl	%ecx, %edi
	movl	%eax, -8(%edx)
	je	L4758
	testl	%eax, %eax
	jne	L4759
	movl	16(%ebx), %eax
	movl	%ecx, 8(%ebx)
	movl	$1, %ecx
	cmpb	$46, (%esi)
	cmovne	64(%esp), %ecx
	movl	64(%eax), %edx
	cmpl	%edx, 68(%eax)
	jb	L4761
	movl	%ebx, %eax
	movl	%ecx, 28(%esp)
	call	_luaC_step
	movl	8(%ebx), %edi
	movl	28(%esp), %ecx
L4761:
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_luaH_new
	movl	$5, 8(%edi)
	movl	%eax, (%edi)
	movl	%ebx, %eax
	addl	$16, 8(%ebx)
	movl	24(%esp), %ecx
	movl	20(%esp), %edx
	call	_lua_pushlstring
	movl	$-2, %edx
	movl	%ebx, %eax
	call	_lua_pushvalue
	movl	8(%ebx), %eax
	leal	-32(%eax), %ecx
	leal	-64(%eax), %edx
	subl	$16, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_luaV_settable
	movl	8(%ebx), %eax
	leal	-32(%eax), %edx
	leal	-48(%eax), %ecx
	movl	%edx, 8(%ebx)
L4762:
	cmpl	%edx, %ecx
	movl	%ecx, %eax
	jnb	L4767
	.p2align 4,,10
L4773:
	movl	(%eax), %edi
	movl	4(%eax), %ebp
	addl	$16, %eax
	movl	%edi, -32(%eax)
	movl	-8(%eax), %edi
	movl	%ebp, -28(%eax)
	movl	%edi, -24(%eax)
	cmpl	%edx, %eax
	jb	L4773
L4767:
	movl	%ecx, 8(%ebx)
	cmpb	$46, (%esi)
	leal	1(%esi), %eax
	movl	%eax, 20(%esp)
	je	L4765
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4759:
	.cfi_restore_state
	cmpl	$5, %eax
	je	L4762
L4758:
	movl	20(%esp), %ebp
	subl	$32, %edx
	movl	%edx, 8(%ebx)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%ebp, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4780:
	.cfi_restore_state
	movl	20(%esp), %esi
	movl	%esi, (%esp)
	call	_strlen
	addl	%eax, %esi
	jmp	L4756
	.cfi_endproc
LFE426:
	.section	.text.unlikely,"x"
LCOLDE345:
	.text
LHOTE345:
	.section .rdata,"dr"
LC346:
	.ascii "_LOADED\0"
LC347:
	.ascii "name conflict for module '%s'\0"
	.section	.text.unlikely,"x"
LCOLDB348:
	.text
LHOTB348:
	.p2align 4,,15
	.def	_luaI_openlib.constprop.121;	.scl	3;	.type	32;	.endef
_luaI_openlib.constprop.121:
LFB718:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	movl	%ecx, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	testl	%edx, %edx
	je	L4810
	movl	(%ecx), %ecx
	xorl	%edi, %edi
	movl	%edx, %ebp
	testl	%ecx, %ecx
	je	L4783
	.p2align 4,,10
L4784:
	addl	$1, %edi
	movl	(%ebx,%edi,8), %edx
	testl	%edx, %edx
	jne	L4784
L4783:
	movl	$LC346, %ecx
	movl	$-10000, %edx
	movl	$1, (%esp)
	movl	%esi, %eax
	call	_luaL_findtable
	movl	$-1, %edx
	movl	%esi, %eax
	movl	%ebp, %ecx
	call	_lua_getfield
	movl	8(%esi), %eax
	leal	-16(%eax), %edx
	cmpl	$_luaO_nilobject_, %edx
	je	L4785
	cmpl	$5, -8(%eax)
	jne	L4785
L4786:
	cmpl	%eax, %edx
	movl	%edx, %ecx
	jnb	L4790
	.p2align 4,,10
L4802:
	movl	(%ecx), %edi
	movl	4(%ecx), %ebp
	addl	$16, %ecx
	movl	%edi, -32(%ecx)
	movl	-8(%ecx), %edi
	movl	%ebp, -28(%ecx)
	movl	%edi, -24(%ecx)
	cmpl	%ecx, %eax
	ja	L4802
L4790:
	movl	%edx, 8(%esi)
	movl	%esi, %eax
	movl	$-1, %edx
	call	_lua_insert
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L4811
	.p2align 4,,10
L4801:
	movl	4(%ebx), %edx
	movl	%esi, %eax
	addl	$8, %ebx
	call	_lua_pushcclosure.constprop.136
	movl	-8(%ebx), %ecx
	movl	$-2, %edx
	movl	%esi, %eax
	call	_lua_setfield
L4810:
	movl	(%ebx), %eax
	testl	%eax, %eax
	jne	L4801
L4811:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L4785:
	.cfi_restore_state
	movl	%edx, 8(%esi)
	movl	%edi, (%esp)
	movl	%ebp, %ecx
	movl	$-10002, %edx
	movl	%esi, %eax
	call	_luaL_findtable
	testl	%eax, %eax
	je	L4787
	movl	%ebp, 8(%esp)
	movl	$LC347, 4(%esp)
	movl	%esi, (%esp)
	call	_luaL_error
L4787:
	movl	$-1, %edx
	movl	%esi, %eax
	call	_lua_pushvalue
	movl	$-3, %edx
	movl	%esi, %eax
	movl	%ebp, %ecx
	call	_lua_setfield
	movl	8(%esi), %eax
	leal	-16(%eax), %edx
	jmp	L4786
	.cfi_endproc
LFE718:
	.section	.text.unlikely,"x"
LCOLDE348:
	.text
LHOTE348:
	.section .rdata,"dr"
LC349:
	.ascii "_G\0"
LC350:
	.ascii "Lua 5.1\0"
LC351:
	.ascii "_VERSION\0"
LC352:
	.ascii "ipairs\0"
LC353:
	.ascii "pairs\0"
LC354:
	.ascii "kv\0"
LC355:
	.ascii "__mode\0"
LC356:
	.ascii "newproxy\0"
	.section	.text.unlikely,"x"
LCOLDB357:
	.text
LHOTB357:
	.p2align 4,,15
	.def	_luaopen_base;	.scl	3;	.type	32;	.endef
_luaopen_base:
LFB462:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	$-10002, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	_lua_pushvalue
	movl	$LC349, %ecx
	movl	$-10002, %edx
	movl	%ebx, %eax
	call	_lua_setfield
	movl	$_base_funcs, %ecx
	movl	$LC349, %edx
	movl	%ebx, %eax
	call	_luaI_openlib.constprop.121
	movl	$7, %ecx
	movl	$LC350, %edx
	movl	%ebx, %eax
	call	_lua_pushlstring
	movl	$LC351, %ecx
	movl	$-10002, %edx
	movl	%ebx, %eax
	call	_lua_setfield
	movl	%ebx, %eax
	movl	$_ipairsaux, %edx
	call	_lua_pushcclosure.constprop.136
	movl	16(%ebx), %eax
	movl	64(%eax), %edi
	cmpl	%edi, 68(%eax)
	jnb	L4824
	movl	20(%ebx), %eax
	cmpl	40(%ebx), %eax
	je	L4825
L4814:
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %esi
L4815:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$40, (%esp)
	movl	%ebx, %eax
	call	_luaM_realloc_
	movl	16(%ebx), %edx
	movl	28(%edx), %ecx
	movl	%ecx, (%eax)
	movl	%eax, 28(%edx)
	movzbl	20(%edx), %edx
	movb	$6, 4(%eax)
	movb	$1, 6(%eax)
	movl	%esi, 12(%eax)
	movb	$1, 7(%eax)
	movl	$_luaB_ipairs, 16(%eax)
	andl	$3, %edx
	movb	%dl, 5(%eax)
	movl	8(%ebx), %edx
	movl	-12(%edx), %edi
	movl	-16(%edx), %esi
	leal	-16(%edx), %ecx
	movl	%ecx, 8(%ebx)
	movl	$LC352, %ecx
	movl	%edi, 28(%eax)
	movl	%esi, 24(%eax)
	movl	-8(%edx), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebx), %edx
	movl	%eax, (%edx)
	movl	$6, 8(%edx)
	movl	%ebx, %eax
	addl	$16, 8(%ebx)
	movl	$-2, %edx
	call	_lua_setfield
	movl	%ebx, %eax
	movl	$_luaB_next, %edx
	call	_lua_pushcclosure.constprop.136
	movl	16(%ebx), %eax
	movl	64(%eax), %edi
	cmpl	%edi, 68(%eax)
	jnb	L4826
	movl	20(%ebx), %eax
	cmpl	40(%ebx), %eax
	je	L4827
L4817:
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %esi
L4818:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$40, (%esp)
	movl	%ebx, %eax
	call	_luaM_realloc_
	movl	16(%ebx), %edx
	movl	28(%edx), %ecx
	movl	%ecx, (%eax)
	movl	%eax, 28(%edx)
	movzbl	20(%edx), %edx
	movb	$6, 4(%eax)
	movb	$1, 6(%eax)
	movl	%esi, 12(%eax)
	movb	$1, 7(%eax)
	movl	$_luaB_pairs, 16(%eax)
	andl	$3, %edx
	movb	%dl, 5(%eax)
	movl	8(%ebx), %edx
	movl	-12(%edx), %edi
	movl	-16(%edx), %esi
	leal	-16(%edx), %ecx
	movl	%ecx, 8(%ebx)
	movl	$LC353, %ecx
	movl	%edi, 28(%eax)
	movl	%esi, 24(%eax)
	movl	-8(%edx), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebx), %edx
	movl	%eax, (%edx)
	movl	$6, 8(%edx)
	movl	%ebx, %eax
	addl	$16, 8(%ebx)
	movl	$-2, %edx
	call	_lua_setfield
	movl	16(%ebx), %eax
	movl	64(%eax), %edi
	cmpl	%edi, 68(%eax)
	jb	L4819
	movl	%ebx, %eax
	call	_luaC_step
L4819:
	movl	8(%ebx), %esi
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_luaH_new
	movl	$5, 8(%esi)
	movl	%eax, (%esi)
	movl	$-1, %edx
	addl	$16, 8(%ebx)
	movl	%ebx, %eax
	call	_lua_pushvalue
	movl	$-2, %edx
	movl	%ebx, %eax
	call	_lua_setmetatable
	movl	$2, %ecx
	movl	$LC354, %edx
	movl	%ebx, %eax
	call	_lua_pushlstring
	movl	%ebx, %eax
	movl	$LC355, %ecx
	movl	$-2, %edx
	call	_lua_setfield
	movl	16(%ebx), %eax
	movl	64(%eax), %edi
	cmpl	%edi, 68(%eax)
	jnb	L4828
	movl	20(%ebx), %eax
	cmpl	40(%ebx), %eax
	je	L4829
L4821:
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %esi
L4822:
	movl	$40, (%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_luaM_realloc_
	movl	16(%ebx), %edx
	movl	28(%edx), %ecx
	movl	%ecx, (%eax)
	movl	%eax, 28(%edx)
	movzbl	20(%edx), %edx
	movb	$6, 4(%eax)
	movb	$1, 6(%eax)
	movl	%esi, 12(%eax)
	movb	$1, 7(%eax)
	movl	$_luaB_newproxy, 16(%eax)
	andl	$3, %edx
	movb	%dl, 5(%eax)
	movl	8(%ebx), %edx
	movl	-16(%edx), %esi
	movl	-12(%edx), %edi
	leal	-16(%edx), %ecx
	movl	%ecx, 8(%ebx)
	movl	$LC356, %ecx
	movl	%esi, 24(%eax)
	movl	%edi, 28(%eax)
	movl	-8(%edx), %edx
	movl	%edx, 32(%eax)
	movl	8(%ebx), %edx
	movl	%eax, (%edx)
	movl	$6, 8(%edx)
	movl	%ebx, %eax
	addl	$16, 8(%ebx)
	movl	$-10002, %edx
	call	_lua_setfield
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4826:
	.cfi_restore_state
	movl	%ebx, %eax
	call	_luaC_step
	movl	20(%ebx), %eax
	cmpl	40(%ebx), %eax
	jne	L4817
L4827:
	movl	72(%ebx), %esi
	jmp	L4818
	.p2align 4,,10
L4824:
	movl	%ebx, %eax
	call	_luaC_step
	movl	20(%ebx), %eax
	cmpl	40(%ebx), %eax
	jne	L4814
L4825:
	movl	72(%ebx), %esi
	jmp	L4815
	.p2align 4,,10
L4828:
	movl	%ebx, %eax
	call	_luaC_step
	movl	20(%ebx), %eax
	cmpl	40(%ebx), %eax
	jne	L4821
L4829:
	movl	72(%ebx), %esi
	jmp	L4822
	.cfi_endproc
LFE462:
	.section	.text.unlikely,"x"
LCOLDE357:
	.text
LHOTE357:
	.section	.text.unlikely,"x"
LCOLDB358:
	.text
LHOTB358:
	.p2align 4,,15
	.def	_luaopen_table;	.scl	3;	.type	32;	.endef
_luaopen_table:
LFB471:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	$_tab_funcs, %ecx
	movl	$LC241, %edx
	movl	16(%esp), %eax
	call	_luaI_openlib.constprop.121
	movl	$1, %eax
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE471:
	.section	.text.unlikely,"x"
LCOLDE358:
	.text
LHOTE358:
	.section .rdata,"dr"
LC359:
	.ascii "no calling environment\0"
LC360:
	.ascii "io\0"
LC361:
	.ascii "stdin\0"
LC362:
	.ascii "stdout\0"
LC363:
	.ascii "stderr\0"
LC364:
	.ascii "popen\0"
LC365:
	.ascii "__index\0"
	.section	.text.unlikely,"x"
LCOLDB366:
	.text
LHOTB366:
	.p2align 4,,15
	.def	_luaopen_io;	.scl	3;	.type	32;	.endef
_luaopen_io:
LFB507:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	$LC208, %ecx
	movl	$-10000, %edx
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %esi
	movl	%esi, %eax
	call	_lua_getfield
	movl	8(%esi), %eax
	leal	-16(%eax), %ebx
	cmpl	$_luaO_nilobject_, %ebx
	je	L4833
	movl	-8(%eax), %edx
	testl	%edx, %edx
	je	L4854
L4833:
	movl	$-1, %edx
	movl	%esi, %eax
	movl	$_flib, %ebx
	call	_lua_pushvalue
	movl	$LC365, %ecx
	movl	$-2, %edx
	movl	%esi, %eax
	call	_lua_setfield
	.p2align 4,,10
L4835:
	movl	4(%ebx), %edx
	movl	%esi, %eax
	addl	$8, %ebx
	call	_lua_pushcclosure.constprop.136
	movl	-8(%ebx), %ecx
	movl	%esi, %eax
	movl	$-2, %edx
	call	_lua_setfield
	movl	(%ebx), %eax
	testl	%eax, %eax
	jne	L4835
	movl	16(%esi), %eax
	movl	64(%eax), %ecx
	cmpl	%ecx, 68(%eax)
	jb	L4836
	movl	%esi, %eax
	call	_luaC_step
L4836:
	movl	8(%esi), %ebx
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
	call	_luaH_new
	movl	$5, 8(%ebx)
	movl	%eax, (%ebx)
	movl	$_io_fclose, %edx
	addl	$16, 8(%esi)
	movl	%esi, %eax
	call	_lua_pushcclosure.constprop.136
	movl	%esi, %eax
	movl	$LC248, %ecx
	movl	$-2, %edx
	call	_lua_setfield
	movl	40(%esi), %eax
	cmpl	%eax, 20(%esi)
	je	L4855
L4837:
	movl	$-10001, %edx
	movl	%esi, %eax
	call	_index2adr
	movl	20(%esi), %eax
	movl	4(%eax), %eax
	movl	(%eax), %ecx
	movl	8(%esi), %eax
	movl	-16(%eax), %eax
	movl	%eax, 12(%ecx)
	movl	8(%esi), %eax
	cmpl	$3, -8(%eax)
	jle	L4838
	movl	-16(%eax), %edx
	testb	$3, 5(%edx)
	je	L4838
	movzbl	5(%ecx), %ebx
	testb	$4, %bl
	je	L4838
	movl	16(%esi), %eax
	cmpb	$1, 21(%eax)
	je	L4856
	movzbl	20(%eax), %eax
	andl	$-8, %ebx
	andl	$3, %eax
	orl	%ebx, %eax
	movb	%al, 5(%ecx)
	movl	8(%esi), %eax
L4838:
	subl	$16, %eax
	movl	$_iolib, %ecx
	movl	$LC360, %edx
	movl	%eax, 8(%esi)
	movl	%esi, %eax
	call	_luaI_openlib.constprop.121
	movl	16(%esi), %eax
	movl	64(%eax), %ecx
	cmpl	%ecx, 68(%eax)
	jb	L4840
	movl	%esi, %eax
	call	_luaC_step
L4840:
	movl	8(%esi), %ebx
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
	call	_luaH_new
	movl	$5, 8(%ebx)
	movl	%eax, (%ebx)
	movl	$_io_noclose, %edx
	addl	$16, 8(%esi)
	movl	%esi, %eax
	call	_lua_pushcclosure.constprop.136
	movl	$LC248, %ecx
	movl	$-2, %edx
	movl	%esi, %eax
	call	_lua_setfield
	movl	__imp___iob, %ebx
	movl	%esi, %eax
	call	_newfile
	movl	$-1, %edx
	movl	%ebx, (%eax)
	movl	%esi, %eax
	call	_lua_pushvalue
	movl	$1, %ecx
	movl	$-10001, %edx
	movl	%esi, %eax
	call	_lua_rawseti
	movl	$-2, %edx
	movl	%esi, %eax
	call	_lua_pushvalue
	movl	%esi, %eax
	call	_lua_setfenv.constprop.128
	movl	$LC361, %ecx
	movl	$-3, %edx
	movl	%esi, %eax
	call	_lua_setfield
	movl	__imp___iob, %eax
	leal	32(%eax), %ebx
	movl	%esi, %eax
	call	_newfile
	movl	$-1, %edx
	movl	%ebx, (%eax)
	movl	%esi, %eax
	call	_lua_pushvalue
	movl	$2, %ecx
	movl	$-10001, %edx
	movl	%esi, %eax
	call	_lua_rawseti
	movl	$-2, %edx
	movl	%esi, %eax
	call	_lua_pushvalue
	movl	%esi, %eax
	call	_lua_setfenv.constprop.128
	movl	$LC362, %ecx
	movl	$-3, %edx
	movl	%esi, %eax
	call	_lua_setfield
	movl	__imp___iob, %eax
	leal	64(%eax), %ebx
	movl	%esi, %eax
	call	_newfile
	movl	$-2, %edx
	movl	%ebx, (%eax)
	movl	%esi, %eax
	call	_lua_pushvalue
	movl	%esi, %eax
	call	_lua_setfenv.constprop.128
	movl	$LC363, %ecx
	movl	$-3, %edx
	movl	%esi, %eax
	call	_lua_setfield
	subl	$16, 8(%esi)
	movl	$LC364, %ecx
	movl	%esi, %eax
	movl	$-1, %edx
	call	_lua_getfield
	movl	16(%esi), %eax
	movl	64(%eax), %ecx
	cmpl	%ecx, 68(%eax)
	jb	L4841
	movl	%esi, %eax
	call	_luaC_step
L4841:
	movl	8(%esi), %ebx
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
	call	_luaH_new
	movl	$5, 8(%ebx)
	movl	%eax, (%ebx)
	movl	$_io_pclose, %edx
	addl	$16, 8(%esi)
	movl	%esi, %eax
	call	_lua_pushcclosure.constprop.136
	movl	%esi, %eax
	movl	$LC248, %ecx
	movl	$-2, %edx
	call	_lua_setfield
	movl	%esi, %eax
	call	_lua_setfenv.constprop.128
	subl	$16, 8(%esi)
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L4854:
	.cfi_restore_state
	movl	16(%esi), %eax
	movl	%ebx, 8(%esi)
	movl	64(%eax), %ecx
	cmpl	%ecx, 68(%eax)
	jb	L4834
	movl	%esi, %eax
	call	_luaC_step
	movl	8(%esi), %ebx
L4834:
	movl	%esi, %eax
	call	_luaH_new.constprop.166
	movl	$5, 8(%ebx)
	movl	%eax, (%ebx)
	movl	$-1, %edx
	addl	$16, 8(%esi)
	movl	%esi, %eax
	call	_lua_pushvalue
	movl	$LC208, %ecx
	movl	$-10000, %edx
	movl	%esi, %eax
	call	_lua_setfield
	jmp	L4833
L4855:
	movl	$LC359, 4(%esp)
	movl	%esi, (%esp)
	call	_luaG_runerror
	jmp	L4837
L4856:
	call	_reallymarkobject
	movl	8(%esi), %eax
	jmp	L4838
	.cfi_endproc
LFE507:
	.section	.text.unlikely,"x"
LCOLDE366:
	.text
LHOTE366:
	.section .rdata,"dr"
LC367:
	.ascii "os\0"
	.section	.text.unlikely,"x"
LCOLDB368:
	.text
LHOTB368:
	.p2align 4,,15
	.def	_luaopen_os;	.scl	3;	.type	32;	.endef
_luaopen_os:
LFB511:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	$_syslib, %ecx
	movl	$LC367, %edx
	movl	16(%esp), %eax
	call	_luaI_openlib.constprop.121
	movl	$1, %eax
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE511:
	.section	.text.unlikely,"x"
LCOLDE368:
	.text
LHOTE368:
	.section	.text.unlikely,"x"
LCOLDB369:
	.text
LHOTB369:
	.p2align 4,,15
	.def	_luaopen_string;	.scl	3;	.type	32;	.endef
_luaopen_string:
LFB548:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	$_strlib, %ecx
	movl	$LC250, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ebx
	movl	%ebx, %eax
	call	_luaI_openlib.constprop.121
	movl	16(%ebx), %eax
	movl	64(%eax), %esi
	cmpl	%esi, 68(%eax)
	jb	L4860
	movl	%ebx, %eax
	call	_luaC_step
L4860:
	movl	8(%ebx), %esi
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_luaH_new
	movl	$5, 8(%esi)
	movl	%eax, (%esi)
	xorl	%ecx, %ecx
	addl	$16, 8(%ebx)
	movl	%ebx, %eax
	movl	$LC75, %edx
	call	_lua_pushlstring
	movl	%ebx, %eax
	movl	$-2, %edx
	call	_lua_pushvalue
	movl	$-2, %edx
	movl	%ebx, %eax
	call	_lua_setmetatable
	subl	$16, 8(%ebx)
	movl	%ebx, %eax
	movl	$-2, %edx
	call	_lua_pushvalue
	movl	%ebx, %eax
	movl	$LC365, %ecx
	movl	$-2, %edx
	call	_lua_setfield
	subl	$16, 8(%ebx)
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE548:
	.section	.text.unlikely,"x"
LCOLDE369:
	.text
LHOTE369:
	.section	.text.unlikely,"x"
LCOLDB370:
	.text
LHOTB370:
	.p2align 4,,15
	.def	_luaD_rawrunprotected.constprop.147;	.scl	3;	.type	32;	.endef
_luaD_rawrunprotected.constprop.147:
LFB692:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$120, %esp
	movl	%eax, -92(%ebp)
	movl	112(%eax), %eax
	movl	$0, 4(%esp)
	movl	$0, -12(%ebp)
	movl	%eax, -80(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, 112(%edx)
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	__setjmp3
	testl	%eax, %eax
	je	L4867
	movl	-80(%ebp), %eax
	movl	-92(%ebp), %ecx
	movl	%eax, 112(%ecx)
	movl	-12(%ebp), %eax
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
L4865:
	.cfi_restore_state
	movl	-92(%ebp), %eax
	call	_GCTM
L4867:
	movl	-92(%ebp), %eax
	movl	16(%eax), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	L4865
	movl	-80(%ebp), %eax
	movl	-92(%ebp), %ecx
	movl	%eax, 112(%ecx)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE692:
	.section	.text.unlikely,"x"
LCOLDE370:
	.text
LHOTE370:
	.section .rdata,"dr"
	.align 4
LC371:
	.ascii "string/function/table expected\0"
	.align 4
LC372:
	.ascii "invalid replacement value (a %s)\0"
	.section	.text.unlikely,"x"
LCOLDB373:
	.text
LHOTB373:
	.p2align 4,,15
	.def	_str_gsub;	.scl	3;	.type	32;	.endef
_str_gsub:
LFB542:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$892, %esp
	.cfi_def_cfa_offset 912
	movl	912(%esp), %eax
	leal	76(%esp), %edx
	call	_luaL_checklstring.constprop.138
	movl	%eax, %edi
	movl	912(%esp), %eax
	xorl	%ecx, %ecx
	movl	$2, %edx
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, 32(%esp)
	je	L4962
L4871:
	movl	912(%esp), %eax
	movl	912(%esp), %esi
	movl	12(%eax), %eax
	leal	32(%eax), %edx
	cmpl	8(%esi), %edx
	jnb	L4872
	cmpl	$_luaO_nilobject_, %edx
	je	L4872
	movl	40(%eax), %ebx
	movl	76(%esp), %eax
	movl	$4, %edx
	leal	1(%eax), %ecx
	movl	%esi, %eax
	subl	$3, %ebx
	call	_luaL_optinteger
	movl	%eax, 36(%esp)
	movl	32(%esp), %eax
	movl	$0, 40(%esp)
	cmpb	$94, (%eax)
	je	L4918
L4873:
	cmpl	$3, %ebx
	jbe	L4874
L4919:
	movl	912(%esp), %eax
	movl	$LC371, %ecx
	movl	$3, %edx
	call	_luaL_argerror
L4874:
	movl	912(%esp), %eax
	movl	76(%esp), %ebx
	movl	$0, 360(%esp)
	movl	%edi, 84(%esp)
	movl	$0, 24(%esp)
	movl	%eax, 364(%esp)
	leal	368(%esp), %eax
	addl	%edi, %ebx
	movl	%ebx, 88(%esp)
	movl	%eax, 356(%esp)
	movl	912(%esp), %eax
	movl	%eax, 92(%esp)
	movl	36(%esp), %eax
	testl	%eax, %eax
	leal	356(%esp), %eax
	movl	%eax, 28(%esp)
	jle	L4875
	.p2align 4,,10
L4912:
	movl	32(%esp), %ecx
	leal	84(%esp), %eax
	movl	%edi, %edx
	movl	$0, 96(%esp)
	call	_match
	testl	%eax, %eax
	movl	%eax, %esi
	je	L4876
	movl	92(%esp), %ebx
	addl	$1, 24(%esp)
	movl	12(%ebx), %eax
	movl	8(%ebx), %edx
	leal	32(%eax), %ecx
	cmpl	%edx, %ecx
	jnb	L4877
	cmpl	$_luaO_nilobject_, %ecx
	je	L4877
	movl	40(%eax), %eax
	cmpl	$5, %eax
	je	L4878
	jg	L4879
	cmpl	$3, %eax
	jl	L4877
	leal	80(%esp), %ecx
	movl	$3, %edx
	movl	%ebx, %eax
	xorl	%ebx, %ebx
	call	_lua_tolstring
	movl	%eax, %edx
	movl	80(%esp), %eax
	movl	%esi, %ecx
	subl	%edi, %ecx
	movl	%ecx, 52(%esp)
	movl	%ecx, 56(%esp)
	testl	%eax, %eax
	je	L4883
	movl	%esi, 48(%esp)
	movl	%edi, 44(%esp)
	movl	%edx, %esi
	jmp	L4941
	.p2align 4,,10
L4960:
	movl	356(%esp), %eax
	leal	880(%esp), %edi
	cmpl	%edi, %eax
	jnb	L4963
L4888:
	leal	1(%eax), %edx
	movl	%edx, 356(%esp)
	movzbl	0(%ebp), %edx
	movb	%dl, (%eax)
	movl	80(%esp), %eax
L4886:
	addl	$1, %ebx
	cmpl	%eax, %ebx
	jnb	L4964
L4941:
	leal	(%esi,%ebx), %ebp
	cmpb	$37, 0(%ebp)
	jne	L4960
	addl	$1, %ebx
	leal	(%esi,%ebx), %ebp
	movzbl	0(%ebp), %ecx
	movl	%ecx, %edx
	subl	$48, %ecx
	cmpl	$9, %ecx
	ja	L4960
	cmpb	$48, %dl
	je	L4965
	movsbl	%dl, %edx
	leal	-49(%edx), %ebp
	cmpl	96(%esp), %ebp
	jl	L4892
	testl	%ebp, %ebp
	jne	L4893
	movl	56(%esp), %ecx
	movl	44(%esp), %edx
	movl	92(%esp), %eax
	call	_lua_pushlstring
L4894:
	movl	28(%esp), %eax
	call	_luaL_addvalue
L4957:
	movl	80(%esp), %eax
	addl	$1, %ebx
	cmpl	%eax, %ebx
	jb	L4941
	.p2align 4,,10
L4964:
	movl	44(%esp), %edi
	movl	48(%esp), %esi
L4883:
	cmpl	%edi, %esi
	jbe	L4876
L4925:
	movl	%esi, %edi
L4909:
	movl	40(%esp), %eax
	testl	%eax, %eax
	jne	L4958
	movl	36(%esp), %esi
	cmpl	%esi, 24(%esp)
	jl	L4912
L4958:
	movl	88(%esp), %ebx
L4875:
	subl	%edi, %ebx
	je	L4915
	movl	28(%esp), %esi
	jmp	L4940
	.p2align 4,,10
L4914:
	leal	1(%eax), %edx
	addl	$1, %edi
	subl	$1, %ebx
	movl	%edx, 356(%esp)
	movzbl	-1(%edi), %edx
	movb	%dl, (%eax)
	je	L4915
L4940:
	movl	356(%esp), %eax
	leal	880(%esp), %ecx
	cmpl	%ecx, %eax
	jb	L4914
	movl	%esi, %eax
	call	_luaL_prepbuffer
	movl	356(%esp), %eax
	jmp	L4914
	.p2align 4,,10
L4878:
	movl	96(%esp), %ebp
	testl	%ebp, %ebp
	jg	L4899
	movl	%esi, %ecx
	movl	%edi, %edx
	movl	%ebx, %eax
	subl	%edi, %ecx
	call	_lua_pushlstring
	movl	8(%ebx), %ecx
L4900:
	movl	12(%ebx), %eax
	leal	32(%eax), %edx
	movl	$_luaO_nilobject_, %eax
	cmpl	%ecx, %edx
	cmovnb	%eax, %edx
	subl	$16, %ecx
	movl	%ebx, %eax
	movl	%ecx, (%esp)
	call	_luaV_gettable
	movl	8(%ebx), %edx
L4877:
	movl	-8(%edx), %eax
	testl	%eax, %eax
	je	L4904
	cmpl	$1, %eax
	je	L4966
	cmpl	$_luaO_nilobject_+16, %edx
	je	L4924
	leal	-3(%eax), %edx
	cmpl	$1, %edx
	ja	L4967
L4907:
	movl	28(%esp), %eax
	call	_luaL_addvalue
	cmpl	%edi, %esi
	ja	L4925
L4876:
	movl	88(%esp), %ebx
	cmpl	%edi, %ebx
	jbe	L4875
	movl	356(%esp), %eax
	leal	880(%esp), %esi
	cmpl	%esi, %eax
	jnb	L4968
L4910:
	leal	1(%eax), %edx
	addl	$1, %edi
	movl	%edx, 356(%esp)
	movzbl	-1(%edi), %edx
	movb	%dl, (%eax)
	jmp	L4909
	.p2align 4,,10
L4963:
	movl	28(%esp), %eax
	call	_luaL_prepbuffer
	movl	356(%esp), %eax
	jmp	L4888
	.p2align 4,,10
L4966:
	movl	-16(%edx), %ecx
	testl	%ecx, %ecx
	jne	L4969
	.p2align 4,,10
L4904:
	subl	$16, %edx
	movl	%esi, %ecx
	movl	%ebx, %eax
	movl	%edx, 8(%ebx)
	subl	%edi, %ecx
	movl	%edi, %edx
	call	_lua_pushlstring
	jmp	L4907
	.p2align 4,,10
L4879:
	cmpl	$6, %eax
	jne	L4877
	movl	$3, %edx
	movl	%ebx, %eax
	call	_lua_pushvalue
	leal	84(%esp), %eax
	movl	%esi, %ecx
	movl	%edi, %edx
	call	_push_captures
	notl	%eax
	movl	$1, %ecx
	movl	%eax, %edx
	movl	%ebx, %eax
	sall	$4, %edx
	addl	8(%ebx), %edx
	call	_luaD_call
	movl	8(%ebx), %edx
	jmp	L4877
	.p2align 4,,10
L4968:
	movl	28(%esp), %eax
	call	_luaL_prepbuffer
	movl	356(%esp), %eax
	jmp	L4910
	.p2align 4,,10
L4969:
	cmpl	$_luaO_nilobject_+16, %edx
	je	L4924
L4917:
	movl	_luaT_typenames(,%eax,4), %eax
L4908:
	movl	%eax, 8(%esp)
	movl	$LC372, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_error
	jmp	L4907
	.p2align 4,,10
L4967:
	cmpl	$-1, %eax
	jne	L4917
	.p2align 4,,10
L4924:
	movl	$LC222, %eax
	jmp	L4908
	.p2align 4,,10
L4892:
	subl	$47, %edx
	movl	88(%esp,%edx,8), %ecx
	cmpl	$-1, %ecx
	je	L4970
	cmpl	$-2, %ecx
	je	L4971
L4896:
	movl	100(%esp,%ebp,8), %edx
	movl	92(%esp), %eax
	call	_lua_pushlstring
	jmp	L4894
	.p2align 4,,10
L4899:
	movl	104(%esp), %ecx
	cmpl	$-1, %ecx
	je	L4972
	cmpl	$-2, %ecx
	movl	%ebx, %eax
	je	L4973
L4902:
	movl	100(%esp), %edx
	call	_lua_pushlstring
	movl	8(%ebx), %ecx
	jmp	L4900
	.p2align 4,,10
L4915:
	movl	28(%esp), %eax
	call	_luaL_pushresult
	movl	912(%esp), %eax
	fildl	24(%esp)
	movl	8(%eax), %eax
	movl	$3, 8(%eax)
	fstpl	(%eax)
	movl	912(%esp), %eax
	addl	$16, 8(%eax)
	addl	$892, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$2, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4965:
	.cfi_restore_state
	movl	52(%esp), %edi
	testl	%edi, %edi
	je	L4886
	movl	44(%esp), %ebp
	jmp	L4891
	.p2align 4,,10
L4890:
	leal	1(%edx), %eax
	addl	$1, %ebp
	subl	$1, %edi
	movl	%eax, 356(%esp)
	movzbl	-1(%ebp), %eax
	movb	%al, (%edx)
	je	L4957
L4891:
	movl	356(%esp), %edx
	leal	880(%esp), %eax
	cmpl	%eax, %edx
	jb	L4890
	movl	28(%esp), %eax
	call	_luaL_prepbuffer
	movl	356(%esp), %edx
	jmp	L4890
	.p2align 4,,10
L4893:
	movl	92(%esp), %eax
	movl	$LC313, 4(%esp)
	movl	%eax, (%esp)
	call	_luaL_error
	jmp	L4894
	.p2align 4,,10
L4971:
	movl	84(%esp,%edx,8), %edx
	subl	84(%esp), %edx
	movl	92(%esp), %eax
	addl	$1, %edx
	movl	8(%eax), %ecx
	movl	%edx, 60(%esp)
	fildl	60(%esp)
	movl	$3, 8(%ecx)
	fstpl	(%ecx)
	addl	$16, 8(%eax)
	jmp	L4894
	.p2align 4,,10
L4973:
	movl	100(%esp), %eax
	subl	84(%esp), %eax
	movl	$3, 8(%edx)
	addl	$1, %eax
	movl	%eax, 44(%esp)
	fildl	44(%esp)
	fstpl	(%edx)
	movl	8(%ebx), %eax
	leal	16(%eax), %ecx
	movl	%ecx, 8(%ebx)
	jmp	L4900
L4927:
	movl	$-4, %ebx
	.p2align 4,,10
L4918:
	addl	$1, 32(%esp)
	movl	$1, 40(%esp)
	jmp	L4873
L4970:
	movl	92(%esp), %eax
	movl	$LC316, 4(%esp)
	movl	%ecx, 60(%esp)
	movl	%eax, (%esp)
	call	_luaL_error
	movl	60(%esp), %ecx
	jmp	L4896
L4972:
	movl	$LC316, 4(%esp)
	movl	%ebx, (%esp)
	movl	%ecx, 44(%esp)
	call	_luaL_error
	movl	92(%esp), %eax
	movl	44(%esp), %ecx
	jmp	L4902
L4962:
	movl	912(%esp), %eax
	movl	$LC250, %ecx
	movl	$2, %edx
	call	_luaL_typerror
	jmp	L4871
L4872:
	movl	76(%esp), %eax
	movl	$4, %edx
	leal	1(%eax), %ecx
	movl	912(%esp), %eax
	call	_luaL_optinteger
	movl	%eax, 36(%esp)
	movl	32(%esp), %eax
	cmpb	$94, (%eax)
	je	L4927
	movl	$0, 40(%esp)
	jmp	L4919
	.cfi_endproc
LFE542:
	.section	.text.unlikely,"x"
LCOLDE373:
	.text
LHOTE373:
	.section	.text.unlikely,"x"
LCOLDB374:
	.text
LHOTB374:
	.p2align 4,,15
	.def	_f_call;	.scl	3;	.type	32;	.endef
_f_call:
LFB400:
	.cfi_startproc
	movl	8(%esp), %eax
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	movl	4(%esp), %eax
	jmp	_luaD_call
	.cfi_endproc
LFE400:
	.section	.text.unlikely,"x"
LCOLDE374:
	.text
LHOTE374:
	.section	.text.unlikely,"x"
LCOLDB375:
	.text
LHOTB375:
	.p2align 4,,15
	.def	_luaD_rawrunprotected.constprop.146;	.scl	3;	.type	32;	.endef
_luaD_rawrunprotected.constprop.146:
LFB693:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$120, %esp
	movl	%eax, -92(%ebp)
	movl	112(%eax), %eax
	movl	%edx, -96(%ebp)
	movl	$0, -12(%ebp)
	movl	%eax, -80(%ebp)
	leal	-80(%ebp), %eax
	movl	%eax, 112(%ecx)
	leal	-76(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__setjmp3
	testl	%eax, %eax
	jne	L4978
	movl	-96(%ebp), %eax
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	movl	-92(%ebp), %eax
	call	_luaD_call
L4978:
	movl	-80(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, 112(%edx)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE693:
	.section	.text.unlikely,"x"
LCOLDE375:
	.text
LHOTE375:
	.section	.text.unlikely,"x"
LCOLDB376:
	.text
LHOTB376:
	.p2align 4,,15
	.def	_luaB_pcall;	.scl	3;	.type	32;	.endef
_luaB_pcall:
LFB458:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %ebx
	movl	12(%ebx), %eax
	movl	8(%ebx), %ecx
	cmpl	%ecx, %eax
	jb	L4998
L4982:
	movl	$LC275, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaL_argerror
	movl	8(%ebx), %ecx
	movl	12(%ebx), %eax
	.p2align 4,,10
L4983:
	movl	%ecx, %edi
	leal	24(%esp), %edx
	movl	116(%ebx), %ebp
	subl	%eax, %edi
	movl	$0, 116(%ebx)
	movl	$-1, 28(%esp)
	movl	%edi, %eax
	movl	20(%ebx), %edi
	andl	$-16, %eax
	subl	%eax, %ecx
	movl	32(%ebx), %eax
	movl	%ecx, 24(%esp)
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movzwl	52(%ebx), %eax
	movw	%ax, 12(%esp)
	movl	40(%ebx), %eax
	movl	%eax, 8(%esp)
	movzbl	57(%ebx), %eax
	movb	%al, 15(%esp)
	movl	%ebx, %eax
	call	_luaD_rawrunprotected.constprop.146
	testl	%eax, %eax
	movl	%eax, %esi
	movl	(%esp), %ecx
	jne	L4999
L4997:
	movl	20(%ebx), %edx
L4985:
	movl	8(%ebx), %eax
	cmpl	8(%edx), %eax
	movl	%ebp, 116(%ebx)
	jb	L4986
	movl	%eax, 8(%edx)
	movl	8(%ebx), %eax
L4986:
	xorl	%edx, %edx
	testl	%esi, %esi
	movl	$1, 8(%eax)
	sete	%dl
	movl	%edx, (%eax)
	addl	$16, 8(%ebx)
	movl	%ebx, %eax
	movl	$1, %edx
	call	_lua_insert
	movl	8(%ebx), %eax
	subl	12(%ebx), %eax
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	sarl	$4, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L4998:
	.cfi_restore_state
	cmpl	$_luaO_nilobject_, %eax
	je	L4982
	cmpl	$-1, 8(%eax)
	jne	L4983
	jmp	L4982
	.p2align 4,,10
L4999:
	subl	4(%esp), %ecx
	movl	%ebx, %eax
	subl	8(%esp), %edi
	addl	32(%ebx), %ecx
	movl	%ecx, %edx
	movl	%ecx, (%esp)
	call	_luaF_close
	movl	(%esp), %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_luaD_seterrorobj
	movzwl	12(%esp), %eax
	movl	40(%ebx), %edx
	addl	%edi, %edx
	cmpl	$20000, 48(%ebx)
	movw	%ax, 52(%ebx)
	movl	(%edx), %eax
	movl	%edx, 20(%ebx)
	movl	%eax, 12(%ebx)
	movl	12(%edx), %eax
	movl	%eax, 24(%ebx)
	movzbl	15(%esp), %eax
	movb	%al, 57(%ebx)
	jle	L4985
	cmpl	$479975, %edi
	jg	L4985
	movl	$20000, %edx
	movl	%ebx, %eax
	call	_luaD_reallocCI
	jmp	L4997
	.cfi_endproc
LFE458:
	.section	.text.unlikely,"x"
LCOLDE376:
	.text
LHOTE376:
	.section .rdata,"dr"
	.align 4
LC377:
	.ascii "invalid order function for sorting\0"
	.section	.text.unlikely,"x"
LCOLDB378:
	.text
LHOTB378:
	.p2align 4,,15
	.def	_auxsort;	.scl	3;	.type	32;	.endef
_auxsort:
LFB469:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	cmpl	%ecx, %edx
	movl	%edx, 44(%esp)
	movl	%ecx, 56(%esp)
	jge	L5000
	movl	%eax, %ebx
L5138:
	movl	44(%esp), %edx
	movl	%ebx, %eax
	call	_lua_rawgeti.constprop.131
	movl	56(%esp), %edx
	movl	%ebx, %eax
	call	_lua_rawgeti.constprop.131
	movl	12(%ebx), %eax
	movl	8(%ebx), %ecx
	leal	16(%eax), %edx
	cmpl	%ecx, %edx
	jb	L5179
L5002:
	movl	$2, %edx
	movl	%ebx, %eax
	call	_lua_pushvalue
	movl	$-2, %edx
	movl	%ebx, %eax
	call	_lua_pushvalue
	movl	$-4, %edx
	movl	%ebx, %eax
	call	_lua_pushvalue
	movl	8(%ebx), %eax
	movl	$1, %ecx
	leal	-48(%eax), %edx
	movl	%ebx, %eax
	call	_luaD_call
	movl	8(%ebx), %edx
	movl	-8(%edx), %eax
	testl	%eax, %eax
	je	L5004
	cmpl	$1, %eax
	je	L5180
	movl	$1, %eax
L5004:
	subl	$16, %edx
	testl	%eax, %eax
	movl	%edx, 8(%ebx)
	je	L5181
L5007:
	movl	44(%esp), %edx
	movl	%ebx, %eax
	call	_lua_rawseti.constprop.129
	movl	56(%esp), %edx
	movl	%ebx, %eax
	call	_lua_rawseti.constprop.129
L5008:
	movl	56(%esp), %eax
	movl	44(%esp), %ebp
	movl	%eax, %esi
	subl	%ebp, %esi
	cmpl	$1, %esi
	je	L5000
	addl	%ebp, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	%eax, %edi
	movl	%ebx, %eax
	call	_lua_rawgeti.constprop.131
	movl	%ebp, %edx
	movl	%ebx, %eax
	call	_lua_rawgeti.constprop.131
	movl	12(%ebx), %eax
	movl	8(%ebx), %ecx
	leal	16(%eax), %edx
	cmpl	%ecx, %edx
	jb	L5182
L5010:
	movl	$2, %edx
	movl	%ebx, %eax
	call	_lua_pushvalue
	movl	$-3, %edx
	movl	%ebx, %eax
	call	_lua_pushvalue
	movl	$-3, %edx
	movl	%ebx, %eax
	call	_lua_pushvalue
	movl	8(%ebx), %eax
	movl	$1, %ecx
	leal	-48(%eax), %edx
	movl	%ebx, %eax
	call	_luaD_call
	movl	8(%ebx), %edx
	movl	-8(%edx), %eax
	testl	%eax, %eax
	je	L5012
	cmpl	$1, %eax
	je	L5183
	movl	$1, %eax
L5012:
	subl	$16, %edx
	testl	%eax, %eax
	movl	%edx, 8(%ebx)
	je	L5184
L5015:
	movl	%edi, %edx
	movl	%ebx, %eax
	call	_lua_rawseti.constprop.129
	movl	44(%esp), %edx
	movl	%ebx, %eax
	call	_lua_rawseti.constprop.129
L5016:
	cmpl	$2, %esi
	je	L5000
	movl	%edi, %edx
	movl	%ebx, %eax
	call	_lua_rawgeti.constprop.131
	movl	$-1, %edx
	movl	%ebx, %eax
	call	_lua_pushvalue
	movl	56(%esp), %eax
	subl	$1, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, 60(%esp)
	movl	%ebx, %eax
	call	_lua_rawgeti.constprop.131
	movl	%edi, %edx
	movl	%ebx, %eax
	call	_lua_rawseti.constprop.129
	movl	%ebx, %eax
	movl	%esi, %edx
	call	_lua_rawseti.constprop.129
	movl	44(%esp), %ecx
	movl	8(%ebx), %ebp
	movl	%esi, 32(%esp)
	movl	%ecx, %eax
	movl	%ecx, 48(%esp)
	movl	%ebp, %edi
	sall	$4, %eax
	movl	%ebx, %ebp
	movl	%eax, 52(%esp)
	movl	56(%esp), %eax
	subl	$2, %eax
	movl	%eax, 20(%esp)
	movl	48(%esp), %eax
	jmp	L5023
	.p2align 4,,10
L5034:
	movl	$2, %edx
	movl	%ebp, %eax
	call	_lua_pushvalue
	movl	$-2, %edx
	movl	%ebp, %eax
	call	_lua_pushvalue
	movl	$-4, %edx
	movl	%ebp, %eax
	call	_lua_pushvalue
	movl	8(%ebp), %eax
	movl	$1, %ecx
	leal	-48(%eax), %edx
	movl	%ebp, %eax
	call	_luaD_call
	movl	8(%ebp), %edx
	movl	-8(%edx), %eax
	testl	%eax, %eax
	je	L5036
	cmpl	$1, %eax
	je	L5185
	movl	$1, %eax
L5036:
	subl	$16, %edx
	movl	%edx, 8(%ebp)
L5037:
	testl	%eax, %eax
	je	L5044
L5045:
	movl	56(%esp), %edi
	cmpl	%edi, 40(%esp)
	jg	L5186
L5024:
	movl	8(%ebp), %eax
	leal	-16(%eax), %edi
	movl	%edi, 8(%ebp)
L5075:
	movl	40(%esp), %eax
	addl	$16, 52(%esp)
	movl	%eax, 48(%esp)
L5023:
	movl	12(%ebp), %esi
	addl	$1, %eax
	xorl	%ebx, %ebx
	movl	%eax, 40(%esp)
	cmpl	%edi, %esi
	jnb	L5025
	movl	(%esi), %ebx
L5025:
	subl	$1, %eax
	cmpl	%eax, 28(%ebx)
	jbe	L5026
	movl	52(%esp), %eax
	addl	12(%ebx), %eax
	movl	8(%eax), %edx
L5027:
	movl	4(%eax), %ebx
	movl	(%eax), %ecx
	leal	16(%esi), %eax
	movl	%edx, 8(%edi)
	movl	%ebx, 4(%edi)
	leal	16(%edi), %ebx
	movl	%ecx, (%edi)
	cmpl	%eax, %ebx
	movl	%ebx, 8(%ebp)
	jbe	L5034
	cmpl	$_luaO_nilobject_, %eax
	je	L5034
	movl	24(%esi), %eax
	testl	%eax, %eax
	jne	L5034
	leal	-16(%edi), %ecx
	cmpl	$_luaO_nilobject_, %ecx
	je	L5078
	cmpl	$_luaO_nilobject_, %edi
	je	L5078
	movl	-8(%edi), %eax
	cmpl	%eax, %edx
	jne	L5187
	cmpl	$3, %edx
	je	L5188
	cmpl	$4, %edx
	je	L5189
	movl	$13, (%esp)
	movl	%edi, %edx
	movl	%ebp, %eax
	call	_call_orderTM
	cmpl	$-1, %eax
	jne	L5037
	movl	-8(%edi), %edx
	movl	8(%edi), %eax
	movl	_luaT_typenames(,%edx,4), %edx
	movl	_luaT_typenames(,%eax,4), %eax
	movzbl	2(%edx), %ecx
	cmpb	%cl, 2(%eax)
	je	L5190
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
L5174:
	movl	$LC95, 4(%esp)
	movl	%ebp, (%esp)
	call	_luaG_runerror
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
L5078:
	movl	32(%esp), %eax
	addl	$268435454, %eax
	sall	$4, %eax
	movl	%eax, 36(%esp)
	jmp	L5048
	.p2align 4,,10
L5059:
	movl	$2, %edx
	movl	%ebp, %eax
	call	_lua_pushvalue
	movl	$-4, %edx
	movl	%ebp, %eax
	call	_lua_pushvalue
	movl	$-3, %edx
	movl	%ebp, %eax
	call	_lua_pushvalue
	movl	8(%ebp), %eax
	movl	$1, %ecx
	leal	-48(%eax), %edx
	movl	%ebp, %eax
	call	_luaD_call
	movl	8(%ebp), %edx
	movl	-8(%edx), %eax
	testl	%eax, %eax
	je	L5061
	cmpl	$1, %eax
	je	L5191
	movl	$1, %eax
L5061:
	subl	$16, %edx
	movl	%edx, 8(%ebp)
L5062:
	testl	%eax, %eax
	je	L5063
L5070:
	movl	44(%esp), %ecx
	cmpl	%ecx, 32(%esp)
	jl	L5192
L5049:
	movl	8(%ebp), %eax
	subl	$16, 36(%esp)
	movl	12(%ebp), %esi
	leal	-16(%eax), %ebx
	movl	%ebx, 8(%ebp)
L5048:
	movl	20(%esp), %eax
	xorl	%edi, %edi
	cmpl	%ebx, %esi
	movl	%eax, 32(%esp)
	jnb	L5050
	movl	(%esi), %edi
L5050:
	subl	$1, 20(%esp)
	movl	20(%esp), %eax
	cmpl	28(%edi), %eax
	jnb	L5051
	movl	36(%esp), %eax
	addl	12(%edi), %eax
	movl	8(%eax), %ecx
L5052:
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%ecx, 8(%ebx)
	movl	%eax, (%ebx)
	movl	%edx, 4(%ebx)
	leal	16(%ebx), %eax
	leal	16(%esi), %edx
	movl	%eax, 8(%ebp)
	cmpl	%edx, %eax
	jbe	L5059
	cmpl	$_luaO_nilobject_, %edx
	je	L5059
	movl	24(%esi), %esi
	testl	%esi, %esi
	jne	L5059
	leal	-32(%ebx), %edx
	cmpl	$_luaO_nilobject_, %edx
	je	L5063
	cmpl	$_luaO_nilobject_, %ebx
	je	L5063
	movl	-24(%ebx), %eax
	cmpl	%ecx, %eax
	jne	L5193
	cmpl	$3, %ecx
	je	L5194
	cmpl	$4, %ecx
	je	L5195
	movl	$13, (%esp)
	movl	%ebx, %ecx
	movl	%ebp, %eax
	call	_call_orderTM
	cmpl	$-1, %eax
	jne	L5062
	movl	8(%ebx), %edx
	movl	-24(%ebx), %eax
	movl	_luaT_typenames(,%edx,4), %edx
	movl	_luaT_typenames(,%eax,4), %eax
	movzbl	2(%edx), %ecx
	cmpb	%cl, 2(%eax)
	je	L5176
	.p2align 4,,10
L5072:
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC95, 4(%esp)
	movl	%ebp, (%esp)
	call	_luaG_runerror
L5063:
	movl	32(%esp), %edi
	cmpl	%edi, 40(%esp)
	jg	L5196
L5165:
	movl	40(%esp), %edx
	movl	%ebp, %eax
	call	_lua_rawseti.constprop.129
	movl	32(%esp), %edx
	movl	%ebp, %eax
	call	_lua_rawseti.constprop.129
	movl	8(%ebp), %edi
	jmp	L5075
	.p2align 4,,10
L5051:
	fildl	32(%esp)
	fstl	24(%esp)
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L5053
	jne	L5053
	movl	16(%edi), %eax
	jmp	L5058
	.p2align 4,,10
L5056:
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L5197
L5058:
	cmpl	$3, 24(%eax)
	jne	L5056
	fldl	16(%eax)
	fldl	24(%esp)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L5056
	jne	L5056
	movl	8(%eax), %ecx
	jmp	L5052
	.p2align 4,,10
L5197:
	xorl	%ecx, %ecx
	movl	$_luaO_nilobject_, %eax
	jmp	L5052
	.p2align 4,,10
L5192:
	movl	$LC377, 4(%esp)
	movl	%ebp, (%esp)
	call	_luaL_error
	jmp	L5049
	.p2align 4,,10
L5193:
	movl	_luaT_typenames(,%ecx,4), %edx
	movl	_luaT_typenames(,%eax,4), %eax
	movzbl	2(%edx), %ecx
	cmpb	%cl, 2(%eax)
	jne	L5072
L5176:
	movl	%eax, 8(%esp)
	movl	$LC94, 4(%esp)
	movl	%ebp, (%esp)
	call	_luaG_runerror
	movl	32(%esp), %edi
	cmpl	%edi, 40(%esp)
	jle	L5165
L5196:
	movl	60(%esp), %esi
	subl	$48, 8(%ebp)
	movl	%ebp, %eax
	movl	%ebp, %ebx
	movl	%esi, %edx
	call	_lua_rawgeti.constprop.131
	movl	40(%esp), %edi
	movl	%ebp, %eax
	movl	%edi, %edx
	call	_lua_rawgeti.constprop.131
	movl	%esi, %edx
	movl	%ebp, %eax
	call	_lua_rawseti.constprop.129
	movl	%edi, %edx
	movl	%ebp, %eax
	call	_lua_rawseti.constprop.129
	movl	%edi, %edx
	movl	56(%esp), %eax
	subl	44(%esp), %edx
	subl	%edi, %eax
	cmpl	%eax, %edx
	jge	L5198
	movl	48(%esp), %ecx
	movl	44(%esp), %edx
	leal	2(%ecx), %eax
	movl	%eax, 44(%esp)
L5076:
	movl	%ebx, %eax
	call	_auxsort
	movl	56(%esp), %edi
	cmpl	%edi, 44(%esp)
	jl	L5138
L5000:
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L5053:
	.cfi_restore_state
	movl	28(%esp), %edx
	movzbl	7(%edi), %ecx
	movl	24(%esp), %eax
	addl	%edx, %eax
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	xorl	%edx, %edx
	subl	$1, %ecx
	orl	$1, %ecx
	divl	%ecx
	movl	16(%edi), %eax
	sall	$5, %edx
	addl	%edx, %eax
	jmp	L5058
	.p2align 4,,10
L5191:
	movl	-16(%edx), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	jmp	L5061
	.p2align 4,,10
L5026:
	fildl	40(%esp)
	fstl	24(%esp)
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L5028
	jne	L5028
	movl	16(%ebx), %eax
	jmp	L5033
	.p2align 4,,10
L5031:
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L5199
L5033:
	cmpl	$3, 24(%eax)
	jne	L5031
	fldl	16(%eax)
	fldl	24(%esp)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L5031
	jne	L5031
	movl	8(%eax), %edx
	jmp	L5027
L5199:
	xorl	%edx, %edx
	movl	$_luaO_nilobject_, %eax
	jmp	L5027
L5194:
	fldl	(%ebx)
	xorl	%eax, %eax
	fldl	-32(%ebx)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	jmp	L5062
L5195:
	movl	-32(%ebx), %edx
	movl	(%ebx), %eax
	movl	%ebp, 24(%esp)
	movl	12(%edx), %edi
	leal	16(%edx), %ebx
	leal	16(%eax), %esi
	movl	%edi, %ecx
	movl	12(%eax), %edi
	movl	%ecx, %ebp
	jmp	L5071
	.p2align 4,,10
L5200:
	movl	%ebx, (%esp)
	call	_strlen
	cmpl	%edi, %eax
	je	L5170
	cmpl	%ebp, %eax
	je	L5171
	addl	$1, %eax
	addl	%eax, %ebx
	subl	%eax, %ebp
	addl	%eax, %esi
	subl	%eax, %edi
L5071:
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcoll
	testl	%eax, %eax
	je	L5200
	movl	24(%esp), %ebp
	shrl	$31, %eax
	jmp	L5062
L5187:
	movl	_luaT_typenames(,%eax,4), %eax
	movl	_luaT_typenames(,%edx,4), %edx
	movzbl	2(%eax), %ecx
	cmpb	%cl, 2(%edx)
	je	L5201
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	jmp	L5174
L5186:
	movl	$LC377, 4(%esp)
	movl	%ebp, (%esp)
	call	_luaL_error
	jmp	L5024
L5028:
	movl	28(%esp), %edx
	movzbl	7(%ebx), %ecx
	movl	24(%esp), %eax
	addl	%edx, %eax
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	xorl	%edx, %edx
	subl	$1, %ecx
	orl	$1, %ecx
	divl	%ecx
	movl	16(%ebx), %eax
	sall	$5, %edx
	addl	%edx, %eax
	jmp	L5033
L5166:
	movl	24(%esp), %ebp
L5044:
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	jmp	L5078
L5170:
	movl	24(%esp), %ebp
	jmp	L5063
L5171:
	movl	24(%esp), %ebp
	jmp	L5070
L5185:
	movl	-16(%edx), %edi
	xorl	%eax, %eax
	testl	%edi, %edi
	setne	%al
	jmp	L5036
L5188:
	fldl	-16(%edi)
	xorl	%eax, %eax
	fldl	(%edi)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	jmp	L5037
L5189:
	movl	(%edi), %edx
	movl	-16(%edi), %eax
	movl	%ebp, 24(%esp)
	movl	12(%edx), %edi
	leal	16(%edx), %ebx
	leal	16(%eax), %esi
	movl	%edi, %ecx
	movl	12(%eax), %edi
	movl	%ecx, %ebp
	jmp	L5046
	.p2align 4,,10
L5202:
	movl	%ebx, (%esp)
	call	_strlen
	cmpl	%edi, %eax
	je	L5166
	cmpl	%ebp, %eax
	je	L5167
	addl	$1, %eax
	addl	%eax, %ebx
	subl	%eax, %ebp
	addl	%eax, %esi
	subl	%eax, %edi
L5046:
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcoll
	testl	%eax, %eax
	je	L5202
	movl	24(%esp), %ebp
	shrl	$31, %eax
	jmp	L5037
L5201:
	movl	%edx, 8(%esp)
L5175:
	movl	$LC94, 4(%esp)
	movl	%ebp, (%esp)
	call	_luaG_runerror
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	jmp	L5078
L5182:
	cmpl	$_luaO_nilobject_, %edx
	je	L5010
	movl	24(%eax), %ebp
	testl	%ebp, %ebp
	jne	L5010
	leal	-32(%ecx), %edx
	subl	$16, %ecx
	cmpl	$_luaO_nilobject_, %ecx
	je	L5014
	cmpl	$_luaO_nilobject_, %edx
	je	L5014
	movl	%ebx, %eax
	call	_luaV_lessthan
	testl	%eax, %eax
	jne	L5015
L5184:
	movl	8(%ebx), %eax
	leal	-16(%eax), %ecx
L5014:
	movl	56(%esp), %edx
	movl	%ecx, 8(%ebx)
	movl	%ebx, %eax
	call	_lua_rawgeti.constprop.131
	movl	12(%ebx), %eax
	movl	8(%ebx), %ecx
	leal	16(%eax), %edx
	cmpl	%ecx, %edx
	jb	L5203
L5017:
	movl	$2, %edx
	movl	%ebx, %eax
	call	_lua_pushvalue
	movl	$-2, %edx
	movl	%ebx, %eax
	call	_lua_pushvalue
	movl	$-4, %edx
	movl	%ebx, %eax
	call	_lua_pushvalue
	movl	8(%ebx), %eax
	movl	$1, %ecx
	leal	-48(%eax), %edx
	movl	%ebx, %eax
	call	_luaD_call
	movl	8(%ebx), %edx
	movl	-8(%edx), %eax
	testl	%eax, %eax
	je	L5019
	cmpl	$1, %eax
	je	L5204
	movl	$1, %eax
L5019:
	subl	$16, %edx
	testl	%eax, %eax
	movl	%edx, 8(%ebx)
	je	L5205
L5022:
	movl	%edi, %edx
	movl	%ebx, %eax
	call	_lua_rawseti.constprop.129
	movl	56(%esp), %edx
	movl	%ebx, %eax
	call	_lua_rawseti.constprop.129
	jmp	L5016
L5198:
	movl	48(%esp), %eax
	movl	56(%esp), %ecx
	leal	2(%eax), %edx
	movl	%eax, 56(%esp)
	jmp	L5076
L5179:
	cmpl	$_luaO_nilobject_, %edx
	je	L5002
	movl	24(%eax), %esi
	testl	%esi, %esi
	jne	L5002
	leal	-16(%ecx), %edx
	subl	$32, %ecx
	cmpl	$_luaO_nilobject_, %ecx
	je	L5006
	cmpl	$_luaO_nilobject_, %edx
	je	L5006
	movl	%ebx, %eax
	call	_luaV_lessthan
	testl	%eax, %eax
	jne	L5007
L5181:
	movl	8(%ebx), %eax
	leal	-32(%eax), %ecx
L5006:
	movl	%ecx, 8(%ebx)
	jmp	L5008
L5167:
	movl	24(%esp), %ebp
	jmp	L5045
L5203:
	cmpl	$_luaO_nilobject_, %edx
	je	L5017
	movl	24(%eax), %ebp
	testl	%ebp, %ebp
	jne	L5017
	leal	-16(%ecx), %edx
	subl	$32, %ecx
	cmpl	$_luaO_nilobject_, %edx
	je	L5021
	cmpl	$_luaO_nilobject_, %ecx
	je	L5021
	movl	%ebx, %eax
	call	_luaV_lessthan
	testl	%eax, %eax
	jne	L5022
L5205:
	movl	8(%ebx), %eax
	leal	-32(%eax), %ecx
L5021:
	movl	%ecx, 8(%ebx)
	jmp	L5016
L5190:
	movl	%eax, 8(%esp)
	jmp	L5175
L5180:
	movl	-16(%edx), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	jmp	L5004
L5183:
	movl	-16(%edx), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	jmp	L5012
L5204:
	movl	-16(%edx), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	jmp	L5019
	.cfi_endproc
LFE469:
	.section	.text.unlikely,"x"
LCOLDE378:
	.text
LHOTE378:
	.section .rdata,"dr"
LC379:
	.ascii "function\0"
	.section	.text.unlikely,"x"
LCOLDB380:
	.text
LHOTB380:
	.p2align 4,,15
	.def	_sort;	.scl	3;	.type	32;	.endef
_sort:
LFB470:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	_luaL_checktype.constprop.123
	movl	$1, %edx
	movl	%ebx, %eax
	call	_lua_objlen
	movl	%eax, %esi
	movl	8(%ebx), %eax
	movl	%eax, %edx
	subl	12(%ebx), %edx
	cmpl	$127375, %edx
	jg	L5207
	movl	28(%ebx), %edx
	movl	%eax, %ecx
	subl	%eax, %edx
	cmpl	$640, %edx
	jle	L5225
	movl	20(%ebx), %edx
	leal	640(%ecx), %edi
	cmpl	%edi, 8(%edx)
	jnb	L5214
L5226:
	movl	%edi, 8(%edx)
	movl	%ecx, %eax
L5214:
	movl	12(%ebx), %edx
	leal	16(%edx), %ecx
	cmpl	%eax, %ecx
	jnb	L5210
	cmpl	$_luaO_nilobject_, %ecx
	je	L5210
	movl	24(%edx), %ecx
	testl	%ecx, %ecx
	jle	L5210
	cmpl	$6, %ecx
	je	L5210
	movl	$2, %edx
	movl	$LC379, %ecx
	movl	%ebx, %eax
	call	_luaL_typerror
	movl	12(%ebx), %edx
	movl	8(%ebx), %eax
L5210:
	addl	$32, %edx
	cmpl	%edx, %eax
	jnb	L5213
	.p2align 4,,10
L5219:
	addl	$16, %eax
	movl	$0, -8(%eax)
	cmpl	%edx, %eax
	jb	L5219
L5213:
	movl	%edx, 8(%ebx)
	movl	%ebx, %eax
	movl	%esi, %ecx
	movl	$1, %edx
	call	_auxsort
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L5207:
	.cfi_restore_state
	movl	$LC75, 8(%esp)
	movl	$LC317, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_error
	movl	8(%ebx), %eax
	jmp	L5214
	.p2align 4,,10
L5225:
	movl	$40, %edx
	movl	%ebx, %eax
	call	_luaD_growstack
	movl	8(%ebx), %ecx
	movl	20(%ebx), %edx
	leal	640(%ecx), %edi
	cmpl	%edi, 8(%edx)
	movl	%ecx, %eax
	jb	L5226
	jmp	L5214
	.cfi_endproc
LFE470:
	.section	.text.unlikely,"x"
LCOLDE380:
	.text
LHOTE380:
	.section	.text.unlikely,"x"
LCOLDB381:
	.text
LHOTB381:
	.p2align 4,,15
	.def	_callallgcTM;	.scl	3;	.type	32;	.endef
_callallgcTM:
LFB171:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %esi
	.p2align 4,,10
L5237:
	movl	16(%esi), %ebx
	movl	48(%ebx), %edx
	testl	%edx, %edx
	je	L5246
L5236:
	movl	(%edx), %eax
	cmpl	%eax, %edx
	je	L5247
	movl	(%eax), %ecx
	movl	%ecx, (%edx)
L5230:
	movl	112(%ebx), %edx
	movl	(%edx), %edx
	movl	%edx, (%eax)
	movl	112(%ebx), %edx
	movl	%eax, (%edx)
	movzbl	5(%eax), %ecx
	movzbl	20(%ebx), %edx
	andl	$-8, %ecx
	andl	$3, %edx
	orl	%ecx, %edx
	movb	%dl, 5(%eax)
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L5237
	movzbl	6(%edx), %edi
	testl	$4, %edi
	jne	L5237
	movl	16(%esi), %ecx
	movl	196(%ecx), %ebp
	movzbl	7(%edx), %ecx
	movl	%ebp, 8(%esp)
	movl	$1, %ebp
	sall	%cl, %ebp
	movl	%ebp, %ecx
	movl	8(%esp), %ebp
	subl	$1, %ecx
	andl	8(%ebp), %ecx
	sall	$5, %ecx
	addl	16(%edx), %ecx
	jmp	L5235
	.p2align 4,,10
L5232:
	movl	28(%ecx), %ecx
	testl	%ecx, %ecx
	je	L5233
L5235:
	cmpl	$4, 24(%ecx)
	jne	L5232
	cmpl	16(%ecx), %ebp
	jne	L5232
	movl	8(%ecx), %ebp
	testl	%ebp, %ebp
	je	L5233
	movl	64(%ebx), %edi
	movzbl	57(%esi), %edx
	movb	$0, 57(%esi)
	movl	4(%ecx), %ebp
	movl	%edi, 12(%esp)
	movl	68(%ebx), %edi
	movb	%dl, 8(%esp)
	leal	(%edi,%edi), %edx
	movl	(%ecx), %edi
	movl	%edx, 64(%ebx)
	movl	8(%esi), %edx
	movl	%ebp, 4(%edx)
	movl	8(%ecx), %ecx
	movl	%edi, (%edx)
	movl	%eax, 16(%edx)
	movl	$7, 24(%edx)
	movl	%ecx, 8(%edx)
	movl	8(%esi), %edx
	xorl	%ecx, %ecx
	leal	32(%edx), %eax
	movl	%eax, 8(%esi)
	movl	%esi, %eax
	call	_luaD_call
	movzbl	8(%esp), %eax
	movb	%al, 57(%esi)
	movl	12(%esp), %eax
	movl	%eax, 64(%ebx)
	movl	16(%esi), %ebx
	movl	48(%ebx), %edx
	testl	%edx, %edx
	jne	L5236
L5246:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L5247:
	.cfi_restore_state
	movl	$0, 48(%ebx)
	jmp	L5230
	.p2align 4,,10
L5233:
	movl	%edi, %eax
	orl	$4, %eax
	movb	%al, 6(%edx)
	jmp	L5237
	.cfi_endproc
LFE171:
	.section	.text.unlikely,"x"
LCOLDE381:
	.text
LHOTE381:
	.section	.text.unlikely,"x"
LCOLDB382:
	.text
LHOTB382:
	.p2align 4,,15
	.def	_str_rep;	.scl	3;	.type	32;	.endef
_str_rep:
LFB516:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$1, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$636, %esp
	.cfi_def_cfa_offset 656
	movl	656(%esp), %ebx
	leal	60(%esp), %ecx
	movl	%ebx, %eax
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, 36(%esp)
	je	L5329
L5249:
	movl	12(%ebx), %edx
	leal	16(%edx), %eax
	cmpl	8(%ebx), %eax
	jb	L5330
L5289:
	movl	$2, %edx
	movl	%ebx, %eax
	xorl	%esi, %esi
	call	_lua_isnumber
	testl	%eax, %eax
	je	L5331
L5253:
	movl	%esi, 32(%esp)
	movl	32(%esp), %edx
	leal	108(%esp), %eax
	movl	%ebx, 104(%esp)
	movl	$0, 100(%esp)
	movl	%eax, 96(%esp)
	testl	%edx, %edx
	jle	L5332
	.p2align 4,,10
L5281:
	movl	60(%esp), %edx
	testl	%edx, %edx
	je	L5255
	movl	36(%esp), %ebx
	leal	1(%ebx), %edi
	addl	%ebx, %edx
	movl	%edx, 28(%esp)
	movl	%edi, 24(%esp)
	jmp	L5280
	.p2align 4,,10
L5256:
	movl	24(%esp), %esi
	leal	1(%eax), %edx
	cmpl	28(%esp), %esi
	movl	%edx, 96(%esp)
	movzbl	-1(%esi), %edx
	movb	%dl, (%eax)
	movl	96(%esp), %eax
	je	L5255
	addl	$1, %esi
	movl	%esi, 24(%esp)
L5280:
	leal	620(%esp), %edx
	cmpl	%edx, %eax
	jb	L5256
	leal	108(%esp), %ebx
	movl	%eax, %ecx
	subl	%ebx, %ecx
	je	L5256
	movl	104(%esp), %ebx
	movl	16(%ebx), %eax
	movl	64(%eax), %edx
	cmpl	%edx, 68(%eax)
	jb	L5257
	movl	%ebx, %eax
	movl	%ecx, 20(%esp)
	call	_luaC_step
	movl	20(%esp), %ecx
L5257:
	movl	8(%ebx), %esi
	leal	108(%esp), %edx
	movl	%ebx, %eax
	call	_luaS_newlstr
	movl	%eax, (%esi)
	leal	108(%esp), %eax
	movl	$4, 8(%esi)
	addl	$16, 8(%ebx)
	movl	%eax, 96(%esp)
	movl	100(%esp), %eax
	leal	1(%eax), %edx
	leal	108(%esp), %eax
	cmpl	$1, %edx
	movl	%edx, 100(%esp)
	jle	L5256
	movl	104(%esp), %ebp
	movl	$-1, %edx
	movl	$-2, %esi
	movl	%ebp, %eax
	call	_lua_objlen
	movl	%eax, 20(%esp)
	jmp	L5275
	.p2align 4,,10
L5334:
	leal	268435455(%esi), %ebx
	xorl	%eax, %eax
	sall	$4, %ebx
	addl	12(%ebp), %ebx
	cmpl	8(%ebp), %ebx
	jnb	L5259
	movl	8(%ebx), %eax
L5262:
	cmpl	$4, %eax
	je	L5268
L5337:
	jle	L5333
	cmpl	$5, %eax
	je	L5267
	cmpl	$7, %eax
	jne	L5295
	movl	(%ebx), %eax
	movl	16(%eax), %eax
	.p2align 4,,10
L5259:
	movl	100(%esp), %edx
	movl	%edx, %ecx
	subl	%edi, %ecx
	cmpl	$8, %ecx
	jg	L5296
	cmpl	%eax, 20(%esp)
	jbe	L5273
L5296:
	movl	%esi, %edi
	addl	%eax, 20(%esp)
	subl	$1, %esi
	negl	%edi
	cmpl	%edi, %edx
	jle	L5273
L5275:
	movl	%esi, %edi
	testl	%esi, %esi
	notl	%edi
	jg	L5334
	cmpl	$-9999, %esi
	jge	L5335
	cmpl	$-10001, %esi
	je	L5264
	cmpl	$-10000, %esi
	je	L5265
	cmpl	$-10002, %esi
	je	L5336
	movl	20(%ebp), %eax
	movl	$-10002, %edx
	subl	%esi, %edx
	movl	4(%eax), %eax
	movl	(%eax), %ebx
	xorl	%eax, %eax
	movzbl	7(%ebx), %ecx
	cmpl	%edx, %ecx
	jl	L5259
	movl	%edx, %eax
	sall	$4, %eax
	addl	%ebx, %eax
	leal	8(%eax), %ebx
	movl	16(%eax), %eax
	cmpl	$4, %eax
	jne	L5337
	.p2align 4,,10
L5268:
	movl	(%ebx), %eax
	movl	12(%eax), %eax
	jmp	L5259
	.p2align 4,,10
L5264:
	movl	20(%ebp), %eax
	leal	88(%ebp), %ebx
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	$5, 96(%ebp)
	movl	%eax, 88(%ebp)
L5267:
	movl	(%ebx), %eax
	call	_luaH_getn
	jmp	L5259
	.p2align 4,,10
L5335:
	movl	%esi, %ebx
	sall	$4, %ebx
	addl	8(%ebp), %ebx
	movl	8(%ebx), %eax
	jmp	L5262
	.p2align 4,,10
L5273:
	cmpl	$1, %edi
	jle	L5276
	movl	16(%ebp), %eax
	movl	64(%eax), %ebx
	cmpl	%ebx, 68(%eax)
	jb	L5277
	movl	%ebp, %eax
	call	_luaC_step
L5277:
	movl	8(%ebp), %ecx
	subl	12(%ebp), %ecx
	movl	%edi, %edx
	movl	%ebp, %eax
	sarl	$4, %ecx
	subl	$1, %ecx
	call	_luaV_concat
	movl	%edi, %eax
	movl	100(%esp), %edx
	sall	$4, %eax
	negl	%eax
	addl	$16, %eax
	addl	%eax, 8(%ebp)
L5278:
	subl	%edi, %edx
	movl	96(%esp), %eax
	addl	$1, %edx
	movl	%edx, 100(%esp)
	jmp	L5256
	.p2align 4,,10
L5255:
	subl	$1, 32(%esp)
	movl	32(%esp), %edx
	testl	%edx, %edx
	jg	L5281
L5332:
	leal	108(%esp), %edx
	subl	%edx, %eax
	movl	%eax, %ecx
	jne	L5282
	movl	100(%esp), %ebx
	movl	104(%esp), %esi
	cmpl	$1, %ebx
	jle	L5284
L5340:
	movl	16(%esi), %eax
	movl	64(%eax), %edx
	cmpl	%edx, 68(%eax)
	jnb	L5338
L5285:
	movl	8(%esi), %ecx
	subl	12(%esi), %ecx
	movl	%ebx, %edx
	sall	$4, %ebx
	movl	%esi, %eax
	negl	%ebx
	sarl	$4, %ecx
	subl	$1, %ecx
	call	_luaV_concat
	leal	16(%ebx), %eax
	addl	%eax, 8(%esi)
L5323:
	addl	$636, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L5336:
	.cfi_restore_state
	leal	72(%ebp), %ebx
	movl	80(%ebp), %eax
	jmp	L5262
	.p2align 4,,10
L5265:
	movl	16(%ebp), %eax
	leal	96(%eax), %ebx
	movl	104(%eax), %eax
	jmp	L5262
	.p2align 4,,10
L5333:
	cmpl	$3, %eax
	jne	L5295
	fldl	(%ebx)
	leal	64(%esp), %eax
	movl	$LC54, 4(%esp)
	fstpl	8(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	leal	64(%esp), %ecx
L5271:
	movl	(%ecx), %edx
	addl	$4, %ecx
	leal	-16843009(%edx), %eax
	notl	%edx
	andl	%edx, %eax
	andl	$-2139062144, %eax
	je	L5271
	movl	%eax, %edx
	shrl	$16, %edx
	testl	$32896, %eax
	cmove	%edx, %eax
	leal	2(%ecx), %edx
	cmove	%edx, %ecx
	movl	%eax, %edx
	addb	%al, %dl
	leal	64(%esp), %eax
	sbbl	$3, %ecx
	subl	%eax, %ecx
	movl	%eax, %edx
	movl	%ebp, %eax
	call	_luaS_newlstr
	movl	$4, 8(%ebx)
	movl	%eax, (%ebx)
	movl	12(%eax), %eax
	jmp	L5259
	.p2align 4,,10
L5276:
	testl	%edi, %edi
	jne	L5278
	movl	8(%ebp), %ebx
	movl	$LC75, %edx
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	call	_luaS_newlstr
	movl	$4, 8(%ebx)
	movl	%eax, (%ebx)
	addl	$16, 8(%ebp)
	movl	100(%esp), %edx
	jmp	L5278
L5330:
	movl	24(%edx), %edx
	cmpl	$3, %edx
	jne	L5339
L5287:
	fldl	(%eax)
	fnstcw	46(%esp)
	movzwl	46(%esp), %eax
	movb	$12, %ah
	movw	%ax, 44(%esp)
	fldcw	44(%esp)
	fistpl	40(%esp)
	fldcw	46(%esp)
	movl	40(%esp), %esi
	testl	%esi, %esi
	jne	L5253
	jmp	L5289
	.p2align 4,,10
L5338:
	movl	%esi, %eax
	call	_luaC_step
	jmp	L5285
L5282:
	movl	104(%esp), %eax
	leal	108(%esp), %edx
	call	_lua_pushlstring
	leal	108(%esp), %eax
	movl	104(%esp), %esi
	movl	%eax, 96(%esp)
	movl	100(%esp), %eax
	leal	1(%eax), %ebx
	cmpl	$1, %ebx
	movl	%ebx, 100(%esp)
	jg	L5340
L5284:
	testl	%ebx, %ebx
	jne	L5323
	movl	8(%esi), %ebx
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$LC75, %edx
	call	_luaS_newlstr
	movl	$4, 8(%ebx)
	movl	%eax, (%ebx)
	movl	$1, %eax
	addl	$16, 8(%esi)
	addl	$636, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L5331:
	.cfi_restore_state
	movl	$LC226, %ecx
	movl	$2, %edx
	movl	%ebx, %eax
	call	_luaL_typerror
	jmp	L5253
L5329:
	movl	$LC250, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaL_typerror
	jmp	L5249
L5339:
	cmpl	$4, %edx
	jne	L5289
	leal	96(%esp), %edx
	call	_luaV_tonumber.part.47
	testl	%eax, %eax
	jne	L5287
	jmp	L5289
L5295:
	xorl	%eax, %eax
	jmp	L5259
	.cfi_endproc
LFE516:
	.section	.text.unlikely,"x"
LCOLDE382:
	.text
LHOTE382:
	.section	.text.unlikely,"x"
LCOLDB383:
	.text
LHOTB383:
	.p2align 4,,15
	.def	_luaB_ipairs;	.scl	3;	.type	32;	.endef
_luaB_ipairs:
LFB452:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ebx
	movl	12(%ebx), %eax
	cmpl	8(%ebx), %eax
	jnb	L5342
	cmpl	$_luaO_nilobject_, %eax
	je	L5342
	cmpl	$5, 8(%eax)
	je	L5343
L5342:
	movl	$LC241, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaL_typerror
L5343:
	movl	%ebx, %eax
	movl	$-10003, %edx
	call	_lua_pushvalue
	movl	%ebx, %eax
	movl	$1, %edx
	call	_lua_pushvalue
	movl	8(%ebx), %eax
	fldz
	movl	$3, 8(%eax)
	fstpl	(%eax)
	addl	$16, 8(%ebx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	movl	$3, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE452:
	.section	.text.unlikely,"x"
LCOLDE383:
	.text
LHOTE383:
	.section	.text.unlikely,"x"
LCOLDB384:
	.text
LHOTB384:
	.p2align 4,,15
	.def	_jumponcond;	.scl	3;	.type	32;	.endef
_jumponcond:
LFB251:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %edi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	(%edx), %eax
	movl	%ecx, %esi
	cmpl	$11, %eax
	je	L5359
	cmpl	$12, %eax
	jne	L5350
L5351:
	movl	8(%edi), %eax
	testb	$1, %ah
	jne	L5352
	movzbl	50(%ebx), %edx
	cmpl	%edx, %eax
	jl	L5352
	subl	$1, 36(%ebx)
	jmp	L5357
	.p2align 4,,10
L5359:
	movl	(%ebx), %eax
	movl	8(%edx), %edx
	movl	12(%eax), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	andl	$63, %edx
	cmpl	$19, %edx
	je	L5360
L5350:
	movl	$1, %edx
	movl	%ebx, %eax
	call	_luaK_checkstack
	movl	36(%ebx), %ecx
	movl	%edi, %edx
	leal	1(%ecx), %eax
	movl	%eax, 36(%ebx)
	movl	%ebx, %eax
	call	_discharge2reg
	cmpl	$12, (%edi)
	je	L5351
L5357:
	movl	8(%edi), %eax
L5352:
	movl	12(%ebx), %edx
	sall	$14, %esi
	sall	$23, %eax
	movl	8(%edx), %ecx
	movl	%esi, %edx
	orl	$16347, %edx
L5358:
	orl	%eax, %edx
	movl	%ebx, %eax
	call	_luaK_code
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_luaK_jump
	.p2align 4,,10
L5360:
	.cfi_restore_state
	movl	12(%ebx), %edx
	subl	$1, 24(%ebx)
	movl	8(%edx), %ecx
	xorl	%edx, %edx
	testl	%esi, %esi
	sete	%dl
	shrl	$23, %eax
	sall	$14, %edx
	sall	$6, %eax
	orl	$26, %edx
	jmp	L5358
	.cfi_endproc
LFE251:
	.section	.text.unlikely,"x"
LCOLDE384:
	.text
LHOTE384:
	.section	.text.unlikely,"x"
LCOLDB385:
	.text
LHOTB385:
	.p2align 4,,15
	.def	_luaK_goiftrue;	.scl	3;	.type	32;	.endef
_luaK_goiftrue:
LFB252:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %esi
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	call	_luaK_dischargevars
	movl	(%esi), %eax
	cmpl	$5, %eax
	ja	L5363
	cmpl	$4, %eax
	jnb	L5368
	cmpl	$2, %eax
	jne	L5362
L5368:
	movl	$-1, %ecx
L5364:
	leal	20(%esi), %edx
	movl	%ebx, %eax
	call	_luaK_concat
	movl	24(%ebx), %eax
	movl	16(%esi), %ecx
	leal	32(%ebx), %edx
	movl	%eax, 28(%ebx)
	movl	%ebx, %eax
	call	_luaK_concat
	movl	$-1, 16(%esi)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L5363:
	.cfi_restore_state
	cmpl	$10, %eax
	jne	L5362
	movl	(%ebx), %edx
	movl	8(%esi), %eax
	movl	12(%edx), %edx
	testl	%eax, %eax
	leal	(%edx,%eax,4), %edx
	jle	L5366
	movl	-4(%edx), %eax
	leal	-4(%edx), %ecx
	andl	$63, %eax
	cmpb	$0, _luaP_opmodes(%eax)
	cmovs	%ecx, %edx
L5366:
	movl	(%edx), %eax
	movl	%eax, %ecx
	shrl	$6, %eax
	movzbl	%al, %eax
	andl	$-16321, %ecx
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$64, %eax
	orl	%eax, %ecx
	movl	%ecx, (%edx)
	movl	8(%esi), %ecx
	jmp	L5364
	.p2align 4,,10
L5362:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_jumponcond
	movl	%eax, %ecx
	jmp	L5364
	.cfi_endproc
LFE252:
	.section	.text.unlikely,"x"
LCOLDE385:
	.text
LHOTE385:
	.section .rdata,"dr"
	.align 4
LC386:
	.ascii "chunk has too many syntax levels\0"
LC387:
	.ascii "then\0"
LC388:
	.ascii "do\0"
LC389:
	.ascii "<name>\0"
LC390:
	.ascii "(for index)\0"
LC391:
	.ascii "(for limit)\0"
LC392:
	.ascii "(for step)\0"
LC393:
	.ascii "(for generator)\0"
LC394:
	.ascii "(for state)\0"
LC395:
	.ascii "(for control)\0"
LC396:
	.ascii "in\0"
LC397:
	.ascii "'=' or 'in' expected\0"
LC399:
	.ascii "no loop to break\0"
	.section	.text.unlikely,"x"
LCOLDB400:
	.text
LHOTB400:
	.p2align 4,,15
	.def	_chunk;	.scl	3;	.type	32;	.endef
_chunk:
LFB335:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$188, %esp
	.cfi_def_cfa_offset 208
	movl	52(%eax), %edx
	movzwl	52(%edx), %eax
	addl	$1, %eax
	cmpw	$200, %ax
	movw	%ax, 52(%edx)
	ja	L5570
L5537:
	movl	16(%ebp), %eax
	leal	-260(%eax), %ecx
	cmpl	$27, %ecx
	ja	L5472
	movl	$1, %edx
	sall	%cl, %edx
	andl	$134283271, %edx
	jne	L5471
L5472:
	subl	$258, %eax
	movl	4(%ebp), %edi
	cmpl	$19, %eax
	ja	L5468
	jmp	*L5482(,%eax,4)
	.section .rdata,"dr"
	.align 4
L5482:
	.long	L5463
	.long	L5404
	.long	L5468
	.long	L5468
	.long	L5468
	.long	L5468
	.long	L5405
	.long	L5427
	.long	L5378
	.long	L5468
	.long	L5447
	.long	L5468
	.long	L5468
	.long	L5468
	.long	L5417
	.long	L5456
	.long	L5468
	.long	L5468
	.long	L5468
	.long	L5399
	.text
	.p2align 4,,10
L5570:
	movl	64(%ebp), %eax
	leal	96(%esp), %ebx
	movl	$80, %ecx
	leal	16(%eax), %edx
	movl	%ebx, %eax
	call	_luaO_chunkid
	movl	$LC386, 16(%esp)
	movl	4(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	$LC42, 4(%esp)
	movl	%eax, 12(%esp)
	movl	52(%ebp), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	movl	52(%ebp), %eax
	movl	$3, %edx
	call	_luaD_throw
	.p2align 4,,10
L5399:
	movl	48(%ebp), %ebx
	movl	%ebp, %eax
	call	_luaX_next
	leal	96(%esp), %edx
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	movl	24(%ebx), %esi
	movl	%esi, 28(%ebx)
	call	_subexpr
	cmpl	$1, 96(%esp)
	jne	L5400
	movl	$3, 96(%esp)
L5400:
	movl	48(%ebp), %eax
	leal	96(%esp), %edx
	call	_luaK_goiftrue
	movl	116(%esp), %eax
	movb	$1, 106(%esp)
	movl	$-1, 100(%esp)
	cmpl	$259, 16(%ebp)
	movl	%eax, 32(%esp)
	movzbl	50(%ebx), %eax
	movb	$0, 105(%esp)
	movb	%al, 104(%esp)
	movl	20(%ebx), %eax
	movl	%eax, 96(%esp)
	leal	96(%esp), %eax
	movl	%eax, 20(%ebx)
	je	L5401
	movl	$LC388, 8(%esp)
	.p2align 4,,10
L5562:
	movl	$LC186, 4(%esp)
	movl	52(%ebp), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	movl	16(%ebp), %ecx
	movl	%eax, %edx
	movl	%ebp, %eax
	call	_luaX_lexerror
	.p2align 4,,10
L5463:
	movl	%ebp, %eax
	call	_luaX_next
	movl	48(%ebp), %esi
	movl	20(%esi), %ebx
	testl	%ebx, %ebx
	je	L5464
	cmpb	$0, 10(%ebx)
	jne	L5465
	xorl	%eax, %eax
	jmp	L5466
	.p2align 4,,10
L5572:
	cmpb	$0, 10(%ebx)
	jne	L5571
L5466:
	movzbl	9(%ebx), %edx
	movl	(%ebx), %ebx
	orl	%edx, %eax
	testl	%ebx, %ebx
	jne	L5572
L5464:
	movl	16(%ebp), %ecx
	movl	$LC399, %edx
	movl	%ebp, %eax
	call	_luaX_lexerror
	.p2align 4,,10
L5378:
	movl	%ebp, %eax
	movl	48(%ebp), %ebx
	movl	$-1, 72(%esp)
	call	_luaX_next
	leal	96(%esp), %edx
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	call	_subexpr
	cmpl	$1, 96(%esp)
	jne	L5379
	movl	$3, 96(%esp)
L5379:
	movl	48(%ebp), %eax
	leal	96(%esp), %edx
	call	_luaK_goiftrue
	cmpl	$274, 16(%ebp)
	movl	116(%esp), %esi
	je	L5573
L5561:
	movl	$LC387, 8(%esp)
	jmp	L5562
	.p2align 4,,10
L5417:
	movl	48(%ebp), %esi
	movl	$-1, 64(%esp)
	movb	$1, 70(%esp)
	movb	$0, 69(%esp)
	movl	24(%esi), %eax
	movl	20(%esi), %edx
	movl	%eax, 28(%esi)
	movl	%eax, 32(%esp)
	movzbl	50(%esi), %eax
	movl	$-1, 76(%esp)
	movb	$0, 82(%esp)
	movb	$0, 81(%esp)
	movl	%edx, 60(%esp)
	movb	%al, 80(%esp)
	movb	%al, 68(%esp)
	leal	60(%esp), %eax
	movl	%eax, 72(%esp)
	leal	72(%esp), %eax
	movl	%eax, 20(%esi)
	movl	%ebp, %eax
	call	_luaX_next
	movl	%ebp, %eax
	call	_chunk
	movl	$272, %ecx
	movl	$276, %edx
	movl	%ebp, %eax
	movl	%edi, (%esp)
	call	_check_match
	leal	96(%esp), %edx
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	call	_subexpr
	cmpl	$1, 96(%esp)
	jne	L5418
	movl	$3, 96(%esp)
L5418:
	movl	48(%ebp), %eax
	leal	96(%esp), %edx
	call	_luaK_goiftrue
	cmpb	$0, 81(%esp)
	movl	116(%esp), %eax
	movl	%eax, 36(%esp)
	je	L5574
	movl	48(%ebp), %edi
	movl	20(%edi), %ebx
	testl	%ebx, %ebx
	je	L5464
	cmpb	$0, 10(%ebx)
	jne	L5423
	xorl	%eax, %eax
	jmp	L5424
	.p2align 4,,10
L5576:
	cmpb	$0, 10(%ebx)
	jne	L5575
L5424:
	movzbl	9(%ebx), %edx
	movl	(%ebx), %ebx
	orl	%edx, %eax
	testl	%ebx, %ebx
	jne	L5576
	jmp	L5464
	.p2align 4,,10
L5456:
	movl	%ebp, %eax
	movl	48(%ebp), %ebx
	call	_luaX_next
	movl	16(%ebp), %eax
	leal	-260(%eax), %ecx
	cmpl	$27, %ecx
	ja	L5457
	movl	$1, %eax
	movl	$8388638, %edx
	sall	%cl, %eax
	testl	$134283271, %eax
	je	L5480
L5458:
	movl	12(%ebx), %eax
	movl	8(%eax), %ecx
	movl	%ebx, %eax
	call	_luaK_code
L5462:
	cmpl	$59, 16(%ebp)
	jne	L5560
	movl	%ebp, %eax
	call	_luaX_next
L5560:
	movl	48(%ebp), %eax
	movzbl	50(%eax), %edx
	movl	%edx, 36(%eax)
L5471:
	movl	52(%ebp), %eax
	subw	$1, 52(%eax)
	addl	$188, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L5405:
	.cfi_restore_state
	movl	48(%ebp), %ebx
	movb	$1, 82(%esp)
	movl	$-1, 76(%esp)
	movzbl	50(%ebx), %eax
	movb	$0, 81(%esp)
	movb	%al, 80(%esp)
	movl	20(%ebx), %eax
	movl	%eax, 72(%esp)
	leal	72(%esp), %eax
	movl	%eax, 20(%ebx)
	movl	%ebp, %eax
	call	_luaX_next
	cmpl	$285, 16(%ebp)
	je	L5577
L5449:
	movl	$LC389, 8(%esp)
	jmp	L5562
	.p2align 4,,10
L5404:
	movl	%ebp, %eax
	call	_luaX_next
	movl	%ebp, %eax
	call	_block
	movl	%edi, (%esp)
	movl	$259, %ecx
	movl	$262, %edx
	movl	%ebp, %eax
	call	_check_match
L5398:
	cmpl	$59, 16(%ebp)
	je	L5578
L5559:
	movl	48(%ebp), %eax
	movzbl	50(%eax), %edx
	movl	%edx, 36(%eax)
	jmp	L5537
	.p2align 4,,10
L5447:
	movl	%ebp, %eax
	call	_luaX_next
	movl	16(%ebp), %eax
	cmpl	$265, %eax
	je	L5448
	cmpl	$285, %eax
	jne	L5449
	movl	$1, %ebx
L5453:
	movl	24(%ebp), %edi
	leal	-1(%ebx), %esi
	movl	%ebp, %eax
	call	_luaX_next
	movl	%ebp, %eax
	movl	%esi, %ecx
	movl	%edi, %edx
	call	_new_localvar
	movl	16(%ebp), %eax
	cmpl	$44, %eax
	jne	L5452
	movl	%ebp, %eax
	addl	$1, %ebx
	call	_luaX_next
	cmpl	$285, 16(%ebp)
	jne	L5449
	jmp	L5453
	.p2align 4,,10
L5427:
	movl	%ebp, %eax
	call	_luaX_next
	cmpl	$285, 16(%ebp)
	jne	L5449
	movl	%ebp, %eax
	movl	24(%ebp), %esi
	call	_luaX_next
	movl	48(%ebp), %ebx
	leal	72(%esp), %ecx
	movl	$1, (%esp)
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_singlevaraux
	cmpl	$8, %eax
	je	L5579
L5429:
	movl	16(%ebp), %eax
	cmpl	$46, %eax
	jne	L5430
	leal	24(%ebp), %eax
	movl	%eax, 32(%esp)
L5444:
	movl	48(%ebp), %esi
	leal	72(%esp), %edx
	movl	%esi, %eax
	call	_luaK_dischargevars
	cmpl	$12, 72(%esp)
	jne	L5431
	movl	92(%esp), %eax
	cmpl	%eax, 88(%esp)
	je	L5432
	movzbl	50(%esi), %eax
	movl	80(%esp), %ecx
	cmpl	%eax, %ecx
	jge	L5558
L5431:
	leal	72(%esp), %edx
	movl	%esi, %eax
	call	_luaK_dischargevars
	cmpl	$12, 72(%esp)
	je	L5580
L5557:
	movl	36(%esi), %ecx
L5434:
	movl	(%esi), %edx
	leal	1(%ecx), %eax
	movzbl	75(%edx), %ebx
	cmpl	%ebx, %eax
	jle	L5437
	cmpl	$249, %eax
	jg	L5581
	movb	%al, 75(%edx)
	movl	36(%esi), %ecx
	leal	1(%ecx), %eax
L5437:
	movl	%eax, 36(%esi)
L5558:
	leal	72(%esp), %edx
	movl	%esi, %eax
	call	_exp2reg
L5432:
	cmpl	$287, 32(%ebp)
	movl	4(%ebp), %eax
	movl	%eax, 8(%ebp)
	je	L5439
	movl	36(%ebp), %edx
	movl	32(%ebp), %eax
	movl	$287, 32(%ebp)
	movl	%edx, 20(%ebp)
	movl	40(%ebp), %edx
	movl	%eax, 16(%ebp)
	movl	%edx, 24(%ebp)
	movl	44(%ebp), %edx
	movl	%edx, 28(%ebp)
L5440:
	cmpl	$285, %eax
	jne	L5449
	cmpl	$287, 32(%ebp)
	movl	4(%ebp), %eax
	movl	24(%ebp), %ebx
	movl	%eax, 8(%ebp)
	je	L5442
	movl	32(%ebp), %eax
	movl	$287, 32(%ebp)
	movl	%eax, 16(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, 24(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, 28(%ebp)
L5443:
	leal	96(%esp), %ecx
	movl	48(%ebp), %eax
	movl	%ebx, 96(%esp)
	movl	$4, 104(%esp)
	movl	%ecx, %edx
	call	_addk
	leal	96(%esp), %edx
	movl	%eax, 104(%esp)
	movl	%esi, %eax
	movl	$-1, 112(%esp)
	movl	$-1, 116(%esp)
	movl	$4, 96(%esp)
	call	_luaK_exp2RK
	movl	%eax, 84(%esp)
	movl	16(%ebp), %eax
	movl	$9, 72(%esp)
	cmpl	$46, %eax
	je	L5444
L5430:
	xorl	%ecx, %ecx
	cmpl	$58, %eax
	je	L5582
L5445:
	leal	96(%esp), %edx
	movl	%ebp, %eax
	movl	%edi, (%esp)
	call	_body
	movl	48(%ebp), %eax
	leal	96(%esp), %ecx
	leal	72(%esp), %edx
	call	_luaK_storevar
	movl	48(%ebp), %eax
	movl	(%eax), %ecx
	movl	24(%eax), %edx
	movl	20(%ecx), %eax
	movl	%edi, -4(%eax,%edx,4)
	jmp	L5398
	.p2align 4,,10
L5468:
	leal	104(%esp), %edx
	movl	%ebp, %eax
	movl	48(%ebp), %ebx
	call	_primaryexp
	cmpl	$13, 104(%esp)
	je	L5583
	leal	96(%esp), %edx
	movl	$1, %ecx
	movl	%ebp, %eax
	movl	$0, 96(%esp)
	call	_assignment
	jmp	L5398
	.p2align 4,,10
L5457:
	cmpl	$59, %eax
	movl	$8388638, %edx
	je	L5458
L5480:
	leal	96(%esp), %edx
	movl	%ebp, %eax
	call	_explist1
	movl	96(%esp), %edx
	movl	%eax, %esi
	leal	-13(%edx), %eax
	cmpl	$1, %eax
	jbe	L5584
	cmpl	$1, %esi
	leal	96(%esp), %edx
	movl	%ebx, %eax
	je	L5585
	call	_luaK_exp2nextreg
	movzbl	50(%ebx), %edx
	addl	$1, %esi
	sall	$23, %esi
	sall	$6, %edx
	orl	$30, %edx
	orl	%esi, %edx
	jmp	L5458
	.p2align 4,,10
L5571:
	testl	%eax, %eax
	je	L5465
	movl	12(%esi), %eax
	movzbl	8(%ebx), %edx
	movl	8(%eax), %ecx
	movl	%esi, %eax
	sall	$6, %edx
	orl	$35, %edx
	call	_luaK_code
L5465:
	movl	%esi, %eax
	call	_luaK_jump
	leal	4(%ebx), %edx
	movl	%eax, %ecx
	movl	%esi, %eax
	call	_luaK_concat
	jmp	L5462
	.p2align 4,,10
L5575:
	testl	%eax, %eax
	je	L5423
	movl	12(%edi), %eax
	movzbl	8(%ebx), %edx
	movl	8(%eax), %ecx
	movl	%edi, %eax
	sall	$6, %edx
	orl	$35, %edx
	call	_luaK_code
L5423:
	movl	%edi, %eax
	call	_luaK_jump
	leal	4(%ebx), %edx
	movl	%eax, %ecx
	movl	%edi, %eax
	call	_luaK_concat
	movl	48(%ebp), %eax
	movl	36(%esp), %ecx
	movl	24(%eax), %edx
	movl	%edx, 28(%eax)
	leal	32(%eax), %edx
	call	_luaK_concat
	movl	%esi, %eax
	call	_leaveblock
	movl	%esi, %eax
	call	_luaK_jump
	movl	%eax, %edx
	movl	48(%ebp), %eax
	movl	32(%esp), %edi
	cmpl	24(%eax), %edi
	je	L5586
	movl	%edi, 4(%esp)
	movl	$255, (%esp)
	movl	%edi, %ecx
	call	_patchlistaux
L5421:
	movl	%esi, %eax
	call	_leaveblock
	jmp	L5398
	.p2align 4,,10
L5448:
	movl	%ebp, %eax
	call	_luaX_next
	cmpl	$285, 16(%ebp)
	jne	L5449
	movl	24(%ebp), %esi
	movl	48(%ebp), %ebx
	movl	%ebp, %eax
	call	_luaX_next
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	movl	%esi, %edx
	call	_new_localvar
	movl	36(%ebx), %eax
	movl	$1, %edx
	movl	$-1, 88(%esp)
	movl	$-1, 92(%esp)
	movl	$6, 72(%esp)
	movl	%eax, 80(%esp)
	movl	%ebx, %eax
	call	_luaK_checkstack
	movl	48(%ebp), %edx
	addl	$1, 36(%ebx)
	movzbl	50(%edx), %eax
	movl	(%edx), %ecx
	addl	$1, %eax
	movb	%al, 50(%edx)
	movzbl	%al, %eax
	movl	24(%ecx), %esi
	movzwl	170(%edx,%eax,2), %eax
	movl	24(%edx), %edx
	xorl	%ecx, %ecx
	leal	(%eax,%eax,2), %eax
	leal	(%esi,%eax,4), %eax
	movl	%edx, 4(%eax)
	movl	4(%ebp), %eax
	leal	96(%esp), %edx
	movl	%eax, (%esp)
	movl	%ebp, %eax
	call	_body
	leal	72(%esp), %edx
	leal	96(%esp), %ecx
	movl	%ebx, %eax
	call	_luaK_storevar
	movzbl	50(%ebx), %eax
	movl	(%ebx), %edx
	movl	24(%edx), %edi
	movl	24(%ebx), %edx
	movzwl	170(%ebx,%eax,2), %eax
	leal	(%eax,%eax,2), %eax
	leal	(%edi,%eax,4), %eax
	movl	%edx, 4(%eax)
	jmp	L5398
	.p2align 4,,10
L5574:
	movl	%esi, %eax
	call	_leaveblock
	movl	48(%ebp), %eax
	movl	32(%esp), %edi
	cmpl	24(%eax), %edi
	je	L5587
	movl	36(%esp), %edx
	movl	%edi, 4(%esp)
	movl	%edi, %ecx
	movl	$255, (%esp)
	call	_patchlistaux
	jmp	L5421
	.p2align 4,,10
L5583:
	movl	(%ebx), %eax
	movl	112(%esp), %edx
	movl	12(%eax), %eax
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$-8372225, %eax
	orb	$64, %ah
	movl	%eax, (%edx)
	jmp	L5398
	.p2align 4,,10
L5573:
	movl	%ebp, %eax
	call	_luaX_next
	movl	%ebp, %eax
	call	_block
	leal	32(%ebx), %ecx
	movl	16(%ebp), %eax
	movl	%ecx, 32(%esp)
	leal	24(%ebp), %ecx
	cmpl	$261, %eax
	movl	%ecx, 36(%esp)
	jne	L5382
	movl	%edi, 40(%esp)
L5521:
	movl	12(%ebx), %eax
	movl	32(%ebx), %edi
	movl	$2147450902, %edx
	movl	$-1, 32(%ebx)
	movl	8(%eax), %ecx
	movl	%ebx, %eax
	call	_luaK_code
	leal	96(%esp), %edx
	movl	%eax, 96(%esp)
	movl	%edi, %ecx
	movl	%ebx, %eax
	call	_luaK_concat
	movl	96(%esp), %ecx
	leal	72(%esp), %edx
	movl	%ebx, %eax
	call	_luaK_concat
	movl	24(%ebx), %eax
	movl	32(%esp), %edx
	movl	%esi, %ecx
	movl	%eax, 28(%ebx)
	movl	%ebx, %eax
	call	_luaK_concat
	cmpl	$287, 32(%ebp)
	movl	4(%ebp), %eax
	movl	%eax, 8(%ebp)
	je	L5383
	movl	32(%ebp), %eax
	movl	$287, 32(%ebp)
	movl	%eax, 16(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, 24(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, 28(%ebp)
L5384:
	leal	96(%esp), %edx
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	call	_subexpr
	cmpl	$1, 96(%esp)
	jne	L5385
	movl	$3, 96(%esp)
L5385:
	movl	48(%ebp), %esi
	leal	96(%esp), %edx
	movl	%esi, %eax
	call	_luaK_dischargevars
	movl	96(%esp), %eax
	cmpl	$5, %eax
	ja	L5387
	cmpl	$4, %eax
	jnb	L5488
	cmpl	$2, %eax
	jne	L5386
L5488:
	movl	$-1, %ecx
L5388:
	leal	116(%esp), %edx
	movl	%esi, %eax
	call	_luaK_concat
	movl	24(%esi), %eax
	movl	112(%esp), %ecx
	leal	32(%esi), %edx
	movl	%eax, 28(%esi)
	movl	%esi, %eax
	call	_luaK_concat
	cmpl	$274, 16(%ebp)
	movl	116(%esp), %esi
	jne	L5561
	cmpl	$287, 32(%ebp)
	movl	4(%ebp), %eax
	movl	%eax, 8(%ebp)
	je	L5393
	movl	32(%ebp), %eax
	movl	$287, 32(%ebp)
	movl	%eax, 16(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, 24(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, 28(%ebp)
L5394:
	movl	48(%ebp), %edi
	movb	$0, 106(%esp)
	movl	$-1, 100(%esp)
	movzbl	50(%edi), %eax
	movb	$0, 105(%esp)
	movb	%al, 104(%esp)
	movl	20(%edi), %eax
	movl	%eax, 96(%esp)
	leal	96(%esp), %eax
	movl	%eax, 20(%edi)
	movl	%ebp, %eax
	call	_chunk
	movl	%edi, %eax
	call	_leaveblock
	movl	16(%ebp), %eax
	cmpl	$261, %eax
	je	L5521
	movl	40(%esp), %edi
L5382:
	cmpl	$260, %eax
	je	L5588
	leal	72(%esp), %edx
	movl	%esi, %ecx
	movl	%ebx, %eax
	call	_luaK_concat
L5397:
	movl	24(%ebx), %eax
	movl	72(%esp), %ecx
	movl	32(%esp), %edx
	movl	%eax, 28(%ebx)
	movl	%ebx, %eax
	call	_luaK_concat
	movl	%edi, (%esp)
	movl	$266, %ecx
	movl	$262, %edx
	movl	%ebp, %eax
	call	_check_match
	jmp	L5398
	.p2align 4,,10
L5401:
	movl	%ebp, %eax
	call	_luaX_next
	movl	%ebp, %eax
	call	_block
	movl	%ebx, %eax
	call	_luaK_jump
	cmpl	24(%ebx), %esi
	je	L5589
	movl	%esi, 4(%esp)
	movl	%esi, %ecx
	leal	32(%ebx), %esi
	movl	%eax, %edx
	movl	$255, (%esp)
	movl	%ebx, %eax
	call	_patchlistaux
L5403:
	movl	$277, %ecx
	movl	$262, %edx
	movl	%ebp, %eax
	movl	%edi, (%esp)
	call	_check_match
	movl	%ebx, %eax
	call	_leaveblock
	movl	24(%ebx), %eax
	movl	32(%esp), %ecx
	movl	%esi, %edx
	movl	%eax, 28(%ebx)
	movl	%ebx, %eax
	call	_luaK_concat
	jmp	L5398
	.p2align 4,,10
L5577:
	movl	24(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	%ebp, %eax
	call	_luaX_next
	movl	16(%ebp), %ecx
	cmpl	$61, %ecx
	je	L5408
	cmpl	$267, %ecx
	je	L5409
	cmpl	$44, %ecx
	je	L5409
	movl	$LC397, %edx
	movl	%ebp, %eax
	call	_luaX_lexerror
	.p2align 4,,10
L5408:
	movl	48(%ebp), %esi
	movl	52(%ebp), %edx
	movl	$LC390, %ecx
	movl	36(%esi), %eax
	movl	$11, (%esp)
	movl	%eax, 40(%esp)
	leal	48(%ebp), %eax
	movl	%eax, 36(%esp)
	call	_luaX_newstring.isra.73
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%ebp, %eax
	call	_new_localvar
	movl	52(%ebp), %edx
	movl	36(%esp), %eax
	movl	$LC391, %ecx
	movl	$11, (%esp)
	call	_luaX_newstring.isra.73
	movl	$1, %ecx
	movl	%eax, %edx
	movl	%ebp, %eax
	call	_new_localvar
	movl	52(%ebp), %edx
	movl	36(%esp), %eax
	movl	$LC392, %ecx
	movl	$10, (%esp)
	call	_luaX_newstring.isra.73
	movl	$2, %ecx
	movl	%eax, %edx
	movl	%ebp, %eax
	call	_new_localvar
	movl	32(%esp), %edx
	movl	$3, %ecx
	movl	%ebp, %eax
	call	_new_localvar
	movl	$61, %edx
	movl	%ebp, %eax
	call	_checknext
	leal	96(%esp), %edx
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	call	_subexpr
	movl	48(%ebp), %eax
	leal	96(%esp), %edx
	call	_luaK_exp2nextreg
	movl	$44, %edx
	movl	%ebp, %eax
	call	_checknext
	leal	96(%esp), %edx
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	call	_subexpr
	movl	48(%ebp), %eax
	leal	96(%esp), %edx
	call	_luaK_exp2nextreg
	cmpl	$44, 16(%ebp)
	je	L5590
	leal	96(%esp), %ecx
	fld1
	movl	%esi, %eax
	movl	$3, 104(%esp)
	movl	%ecx, %edx
	fstpl	96(%esp)
	call	_addk
	movl	12(%esi), %edx
	sall	$14, %eax
	movl	8(%edx), %ecx
	movl	36(%esi), %edx
	sall	$6, %edx
	orl	$1, %edx
	orl	%eax, %edx
	movl	%esi, %eax
	call	_luaK_code
	movl	$1, %edx
	movl	%esi, %eax
	call	_luaK_checkstack
	addl	$1, 36(%esi)
L5474:
	movl	40(%esp), %edx
	movl	$1, 4(%esp)
	movl	%edi, %ecx
	movl	$1, (%esp)
	movl	%ebp, %eax
	call	_forbody
L5411:
	movl	%ebp, %eax
	movl	%edi, (%esp)
	movl	$264, %ecx
	movl	$262, %edx
	call	_check_match
	movl	%ebx, %eax
	call	_leaveblock
	jmp	L5398
L5587:
	movl	36(%esp), %ecx
	leal	32(%eax), %edx
	movl	%edi, 28(%eax)
	call	_luaK_concat
	jmp	L5421
L5579:
	leal	96(%esp), %ecx
	movl	%ebx, %eax
	movl	%esi, 96(%esp)
	movl	$4, 104(%esp)
	movl	%ecx, %edx
	call	_addk
	movl	%eax, 80(%esp)
	jmp	L5429
L5589:
	movl	%esi, 28(%ebx)
	leal	32(%ebx), %esi
	movl	%eax, %ecx
	movl	%ebx, %eax
	movl	%esi, %edx
	call	_luaK_concat
	jmp	L5403
L5584:
	leal	104(%esp), %ecx
	movl	$-1, (%esp)
	movl	%ebx, %eax
	call	_luaK_setreturns.isra.92
	cmpl	$13, 96(%esp)
	jne	L5460
	cmpl	$1, %esi
	jne	L5460
	movl	(%ebx), %eax
	movl	104(%esp), %edx
	movl	12(%eax), %eax
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$-64, %eax
	orl	$29, %eax
	movl	%eax, (%edx)
L5460:
	movzbl	50(%ebx), %edx
	sall	$6, %edx
	orl	$30, %edx
	jmp	L5458
	.p2align 4,,10
L5387:
	cmpl	$10, %eax
	jne	L5386
	movl	(%esi), %edx
	movl	104(%esp), %eax
	movl	12(%edx), %edx
	testl	%eax, %eax
	leal	(%edx,%eax,4), %ecx
	movl	%ecx, %edx
	jle	L5390
	movl	-4(%ecx), %eax
	leal	-4(%ecx), %ecx
	andl	$63, %eax
	cmpb	$0, _luaP_opmodes(%eax)
	cmovs	%ecx, %edx
L5390:
	movl	(%edx), %eax
	movl	%eax, %ecx
	shrl	$6, %eax
	movzbl	%al, %eax
	andl	$-16321, %ecx
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$64, %eax
	orl	%eax, %ecx
	movl	%ecx, (%edx)
	movl	104(%esp), %ecx
	jmp	L5388
	.p2align 4,,10
L5386:
	leal	96(%esp), %edx
	xorl	%ecx, %ecx
	movl	%esi, %eax
	call	_jumponcond
	movl	%eax, %ecx
	jmp	L5388
	.p2align 4,,10
L5409:
	movl	48(%ebp), %eax
	leal	48(%ebp), %esi
	movl	52(%ebp), %edx
	movl	$LC393, %ecx
	movl	%eax, 36(%esp)
	movl	36(%eax), %eax
	movl	$15, (%esp)
	movl	%eax, 40(%esp)
	movl	%esi, %eax
	call	_luaX_newstring.isra.73
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%ebp, %eax
	call	_new_localvar
	movl	52(%ebp), %edx
	movl	$LC394, %ecx
	movl	%esi, %eax
	movl	$11, (%esp)
	call	_luaX_newstring.isra.73
	movl	$1, %ecx
	movl	%eax, %edx
	movl	%ebp, %eax
	call	_new_localvar
	movl	52(%ebp), %edx
	movl	$LC395, %ecx
	movl	%esi, %eax
	movl	$13, (%esp)
	movl	$4, %esi
	call	_luaX_newstring.isra.73
	movl	$2, %ecx
	movl	%eax, %edx
	movl	%ebp, %eax
	call	_new_localvar
	movl	32(%esp), %edx
	movl	%ebp, %eax
	movl	$3, %ecx
	call	_new_localvar
	movl	16(%ebp), %eax
	cmpl	$44, %eax
	jne	L5591
	movl	%ebp, %eax
	call	_luaX_next
	cmpl	$285, 16(%ebp)
	jne	L5449
L5592:
	movl	24(%ebp), %edx
	leal	1(%esi), %eax
	movl	%eax, 32(%esp)
	movl	%ebp, %eax
	movl	%edx, 44(%esp)
	call	_luaX_next
	movl	44(%esp), %edx
	movl	%ebp, %eax
	movl	%esi, %ecx
	call	_new_localvar
	movl	16(%ebp), %eax
	cmpl	$44, %eax
	jne	L5413
	movl	%ebp, %eax
	movl	32(%esp), %esi
	call	_luaX_next
	cmpl	$285, 16(%ebp)
	jne	L5449
	jmp	L5592
	.p2align 4,,10
L5586:
	leal	32(%eax), %ebx
	movl	%edx, %ecx
	movl	%edi, 28(%eax)
	movl	%ebx, %edx
	call	_luaK_concat
	jmp	L5421
L5383:
	movl	36(%esp), %edx
	movl	%ebp, %eax
	call	_llex
	movl	%eax, 16(%ebp)
	jmp	L5384
L5439:
	movl	32(%esp), %edx
	movl	%ebp, %eax
	call	_llex
	movl	%eax, 16(%ebp)
	jmp	L5440
L5580:
	movl	80(%esp), %eax
	testb	$1, %ah
	jne	L5557
	movzbl	50(%esi), %edx
	cmpl	%edx, %eax
	jl	L5557
	movl	36(%esi), %eax
	leal	-1(%eax), %ecx
	movl	%ecx, 36(%esi)
	jmp	L5434
L5581:
	movl	12(%esi), %eax
	movl	$LC114, %edx
	movl	16(%eax), %ecx
	call	_luaX_lexerror
L5585:
	call	_luaK_exp2anyreg
	sall	$6, %eax
	movl	%eax, %edx
	orl	$16777246, %edx
	jmp	L5458
L5590:
	movl	%ebp, %eax
	call	_luaX_next
	leal	96(%esp), %edx
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	call	_subexpr
	movl	48(%ebp), %eax
	leal	96(%esp), %edx
	call	_luaK_exp2nextreg
	jmp	L5474
L5393:
	movl	36(%esp), %edx
	movl	%ebp, %eax
	call	_llex
	movl	%eax, 16(%ebp)
	jmp	L5394
L5442:
	movl	32(%esp), %edx
	movl	%ebp, %eax
	call	_llex
	movl	%eax, 16(%ebp)
	jmp	L5443
L5452:
	cmpl	$61, %eax
	je	L5478
	movl	$0, 96(%esp)
	xorl	%ecx, %ecx
L5479:
	movl	48(%ebp), %eax
	leal	96(%esp), %edi
	movl	%ebx, %edx
	movl	%edi, (%esp)
	call	_adjust_assign.isra.94
	movl	48(%ebp), %edx
	movl	%ebx, %eax
	addb	50(%edx), %al
	movl	(%edx), %ecx
	movb	%al, 50(%edx)
	movl	24(%ecx), %edi
	movl	24(%edx), %ecx
	jmp	L5455
	.p2align 4,,10
L5593:
	movzbl	50(%edx), %eax
	subl	$1, %esi
L5455:
	movzbl	%al, %eax
	subl	%ebx, %eax
	testl	%esi, %esi
	movl	%esi, %ebx
	movzwl	172(%edx,%eax,2), %eax
	leal	(%eax,%eax,2), %eax
	movl	%ecx, 4(%edi,%eax,4)
	jne	L5593
	jmp	L5398
L5591:
	movl	$4, 32(%esp)
L5413:
	cmpl	$267, %eax
	je	L5594
	movl	$LC396, 8(%esp)
	jmp	L5562
L5588:
	movl	%ebx, %eax
	call	_luaK_jump
	leal	72(%esp), %edx
	movl	%eax, %ecx
	movl	%ebx, %eax
	call	_luaK_concat
	movl	24(%ebx), %eax
	movl	32(%esp), %edx
	movl	%esi, %ecx
	movl	%eax, 28(%ebx)
	movl	%ebx, %eax
	call	_luaK_concat
	movl	%ebp, %eax
	call	_luaX_next
	movl	%ebp, %eax
	call	_block
	jmp	L5397
L5582:
	movl	48(%ebp), %ebx
	leal	72(%esp), %edx
	movl	%ebx, %eax
	call	_luaK_exp2anyreg
	movl	%ebp, %eax
	call	_luaX_next
	cmpl	$285, 16(%ebp)
	jne	L5449
	movl	%ebp, %eax
	movl	24(%ebp), %esi
	call	_luaX_next
	leal	96(%esp), %ecx
	movl	48(%ebp), %eax
	movl	$4, 104(%esp)
	movl	%esi, 96(%esp)
	movl	%ecx, %edx
	call	_addk
	leal	96(%esp), %edx
	movl	%eax, 104(%esp)
	movl	%ebx, %eax
	movl	$-1, 112(%esp)
	movl	$-1, 116(%esp)
	movl	$4, 96(%esp)
	call	_luaK_exp2RK
	movl	$9, 72(%esp)
	movl	%eax, 84(%esp)
	movl	$1, %ecx
	jmp	L5445
L5478:
	movl	%ebp, %eax
	call	_luaX_next
	leal	96(%esp), %edx
	movl	%ebp, %eax
	call	_explist1
	movl	%eax, %ecx
	jmp	L5479
L5594:
	movl	%ebp, %eax
	call	_luaX_next
	leal	96(%esp), %edx
	movl	%ebp, %eax
	movl	4(%ebp), %esi
	call	_explist1
	leal	96(%esp), %ecx
	movl	$3, %edx
	movl	%ecx, (%esp)
	movl	%eax, %ecx
	movl	48(%ebp), %eax
	call	_adjust_assign.isra.94
	movl	36(%esp), %eax
	movl	$3, %edx
	call	_luaK_checkstack
	movl	32(%esp), %eax
	movl	40(%esp), %edx
	movl	%esi, %ecx
	movl	$0, 4(%esp)
	subl	$3, %eax
	movl	%eax, (%esp)
	movl	%ebp, %eax
	call	_forbody
	jmp	L5411
L5578:
	movl	%ebp, %eax
	call	_luaX_next
	jmp	L5559
	.cfi_endproc
LFE335:
	.section	.text.unlikely,"x"
LCOLDE400:
	.text
LHOTE400:
	.section	.text.unlikely,"x"
LCOLDB401:
	.text
LHOTB401:
	.p2align 4,,15
	.def	_luaY_parser;	.scl	3;	.type	32;	.endef
_luaY_parser:
LFB294:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edx, %edi
	subl	$672, %esp
	.cfi_def_cfa_offset 688
	movl	688(%esp), %ebx
	movl	%ecx, 84(%esp)
	movl	%ebx, (%esp)
	call	_strlen
	movl	%ebx, %edx
	movl	%eax, %ecx
	movl	%esi, %eax
	call	_luaS_newlstr
	movl	84(%esp), %ebx
	movb	$46, 92(%esp)
	movl	%eax, 88(%esp)
	movl	%esi, %eax
	movl	%esi, 76(%esp)
	movl	$287, 56(%esp)
	movl	%edi, 80(%esp)
	movl	8(%ebx), %ecx
	movl	$32, (%esp)
	movl	(%ebx), %edx
	movl	$0, 72(%esp)
	movl	$1, 28(%esp)
	movl	$1, 32(%esp)
	call	_luaM_realloc_
	movl	%eax, (%ebx)
	movl	84(%esp), %eax
	movl	$32, 8(%eax)
	movl	80(%esp), %eax
	movl	(%eax), %edx
	leal	-1(%edx), %ecx
	testl	%edx, %edx
	movl	%ecx, (%eax)
	je	L5596
	movl	4(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 4(%eax)
	movzbl	(%edx), %eax
L5597:
	leal	100(%esp), %edx
	movl	%eax, 24(%esp)
	leal	24(%esp), %eax
	call	_open_func
	movl	100(%esp), %eax
	movb	$2, 74(%eax)
	leal	24(%esp), %eax
	call	_luaX_next
	leal	24(%esp), %eax
	call	_chunk
	cmpl	$287, 40(%esp)
	je	L5598
	movl	76(%esp), %eax
	movl	$LC178, 8(%esp)
	movl	$LC186, 4(%esp)
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	movl	40(%esp), %ecx
	movl	%eax, %edx
	leal	24(%esp), %eax
	call	_luaX_lexerror
	.p2align 4,,10
L5596:
	call	_luaZ_fill
	jmp	L5597
	.p2align 4,,10
L5598:
	leal	24(%esp), %eax
	call	_close_func
	movl	100(%esp), %eax
	addl	$672, %esp
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE294:
	.section	.text.unlikely,"x"
LCOLDE401:
	.text
LHOTE401:
	.section	.text.unlikely,"x"
LCOLDB402:
	.text
LHOTB402:
	.p2align 4,,15
	.def	_f_parser;	.scl	3;	.type	32;	.endef
_f_parser:
LFB103:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %ebx
	movl	68(%esp), %esi
	movl	16(%ebx), %eax
	movl	64(%eax), %edi
	cmpl	%edi, 68(%eax)
	jnb	L5620
L5601:
	movl	16(%esi), %eax
	leal	4(%esi), %ecx
	movl	%eax, (%esp)
	movl	(%esi), %edx
	movl	%ebx, %eax
	call	_luaY_parser
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	xorl	%ecx, %ecx
	movzbl	72(%ebp), %edi
	xorl	%edx, %edx
	movl	%eax, 20(%esp)
	leal	-4(,%edi,4), %esi
	movl	%edi, %eax
	movb	%al, 27(%esp)
	leal	24(%esi), %eax
	movl	%esi, 28(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_luaM_realloc_
	movl	%eax, %esi
	movl	16(%ebx), %eax
	movl	20(%esp), %ecx
	movl	28(%eax), %edx
	movl	%edx, (%esi)
	movl	%esi, 28(%eax)
	movzbl	20(%eax), %eax
	movb	$6, 4(%esi)
	movb	$0, 6(%esi)
	movl	%ecx, 12(%esi)
	andl	$3, %eax
	testl	%edi, %edi
	movb	%al, 5(%esi)
	movzbl	27(%esp), %eax
	movb	%al, 7(%esi)
	je	L5608
	movl	28(%esp), %edx
	leal	0(,%edi,4), %eax
	subl	%eax, %edx
	cmpl	$4, %eax
	leal	24(%esi,%edx), %ecx
	jnb	L5605
	testl	%eax, %eax
	je	L5608
	movb	$0, (%ecx)
L5608:
	movl	%ebp, 16(%esi)
	xorl	%edi, %edi
	cmpb	$0, 72(%ebp)
	je	L5604
	.p2align 4,,10
L5614:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$32, (%esp)
	movl	%ebx, %eax
	call	_luaM_realloc_
	movl	16(%ebx), %edx
	movl	28(%edx), %ecx
	movl	%ecx, (%eax)
	movl	%eax, 28(%edx)
	movzbl	20(%edx), %edx
	movb	$10, 4(%eax)
	movl	$0, 24(%eax)
	andl	$3, %edx
	movb	%dl, 5(%eax)
	leal	16(%eax), %edx
	movl	%edx, 8(%eax)
	movl	%eax, 20(%esi,%edi,4)
	addl	$1, %edi
	movzbl	72(%ebp), %eax
	cmpl	%edi, %eax
	jg	L5614
L5604:
	movl	8(%ebx), %eax
	movl	%esi, (%eax)
	movl	$6, 8(%eax)
	movl	28(%ebx), %edx
	movl	8(%ebx), %eax
	subl	%eax, %edx
	cmpl	$16, %edx
	jg	L5610
	movl	%ebx, %eax
	movl	$1, %edx
	call	_luaD_growstack
	movl	8(%ebx), %eax
L5610:
	addl	$16, %eax
	movl	%eax, 8(%ebx)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L5605:
	.cfi_restore_state
	leal	4(%ecx), %edi
	movl	$0, (%ecx)
	movl	$0, -4(%ecx,%eax)
	andl	$-4, %edi
	subl	%edi, %ecx
	addl	%eax, %ecx
	xorl	%eax, %eax
	shrl	$2, %ecx
	rep stosl
	jmp	L5608
	.p2align 4,,10
L5620:
	movl	%ebx, %eax
	call	_luaC_step
	jmp	L5601
	.cfi_endproc
LFE103:
	.section	.text.unlikely,"x"
LCOLDE402:
	.text
LHOTE402:
	.section .rdata,"dr"
LC403:
	.ascii "self\0"
LC404:
	.ascii "<name> or '...' expected\0"
	.section	.text.unlikely,"x"
LCOLDB405:
	.text
LHOTB405:
	.p2align 4,,15
	.def	_body;	.scl	3;	.type	32;	.endef
_body:
LFB303:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	movl	%ecx, %ebx
	subl	$620, %esp
	.cfi_def_cfa_offset 640
	movl	%edx, 24(%esp)
	leal	36(%esp), %edx
	call	_open_func
	movl	36(%esp), %eax
	movl	640(%esp), %edi
	movl	$40, %edx
	movl	%edi, 60(%eax)
	movl	%esi, %eax
	call	_checknext
	testl	%ebx, %ebx
	je	L5622
	movl	52(%esi), %edx
	leal	48(%esi), %eax
	movl	$LC403, %ecx
	movl	$4, (%esp)
	call	_luaX_newstring.isra.73
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%esi, %eax
	call	_new_localvar
	movl	48(%esi), %edx
	movzbl	50(%edx), %eax
	movl	(%edx), %ecx
	addl	$1, %eax
	movb	%al, 50(%edx)
	movzbl	%al, %eax
	movl	24(%ecx), %ebx
	movzwl	170(%edx,%eax,2), %eax
	movl	24(%edx), %edx
	leal	(%eax,%eax,2), %eax
	leal	(%ebx,%eax,4), %eax
	movl	%edx, 4(%eax)
L5622:
	movl	48(%esi), %eax
	movl	(%eax), %edi
	movl	%eax, 20(%esp)
	movb	$0, 74(%edi)
	movl	16(%esi), %ecx
	cmpl	$41, %ecx
	je	L5645
	movl	%ecx, %eax
	xorl	%ebp, %ebp
	cmpl	$279, %eax
	je	L5625
L5661:
	cmpl	$285, %eax
	jne	L5657
	movl	24(%esi), %edx
	movl	%esi, %eax
	leal	1(%ebp), %ebx
	movl	%edx, 28(%esp)
	call	_luaX_next
	movl	28(%esp), %edx
	movl	%ebp, %ecx
	movl	%esi, %eax
	call	_new_localvar
	cmpb	$0, 74(%edi)
	jne	L5660
	cmpl	$44, 16(%esi)
	jne	L5629
	movl	%esi, %eax
	movl	%ebx, %ebp
	call	_luaX_next
	movl	16(%esi), %eax
	cmpl	$279, %eax
	jne	L5661
L5625:
	movl	%esi, %eax
	movl	%ebp, %ebx
	call	_luaX_next
	orb	$2, 74(%edi)
L5629:
	movl	48(%esi), %edx
	movl	%ebx, %eax
	addb	50(%edx), %al
	testl	%ebx, %ebx
	movb	%al, 50(%edx)
	je	L5632
	movl	(%edx), %ecx
	movl	24(%ecx), %ebp
	movl	24(%edx), %ecx
	jmp	L5633
	.p2align 4,,10
L5662:
	movzbl	50(%edx), %eax
L5633:
	movzbl	%al, %eax
	subl	%ebx, %eax
	subl	$1, %ebx
	movzwl	172(%edx,%eax,2), %eax
	leal	(%eax,%eax,2), %eax
	movl	%ecx, 4(%ebp,%eax,4)
	jne	L5662
L5632:
	movzbl	74(%edi), %eax
	andl	$1, %eax
	jmp	L5623
	.p2align 4,,10
L5657:
	movl	%eax, %ecx
	movl	$LC404, %edx
	movl	%esi, %eax
	call	_luaX_lexerror
	.p2align 4,,10
L5645:
	xorl	%eax, %eax
L5623:
	movl	20(%esp), %ecx
	movzbl	50(%ecx), %ebx
	movb	%bl, 20(%esp)
	subl	%eax, %ebx
	movl	%ecx, %eax
	movb	%bl, 73(%edi)
	movzbl	50(%ecx), %ebx
	movl	%ecx, %edi
	movl	%ebx, %edx
	call	_luaK_checkstack
	addl	%ebx, 36(%edi)
	movl	$41, %edx
	movl	%esi, %eax
	call	_checknext
	movl	%esi, %eax
	call	_chunk
	movl	4(%esi), %edx
	movl	36(%esp), %eax
	movl	$265, %ecx
	movl	%edx, 64(%eax)
	movl	640(%esp), %eax
	movl	$262, %edx
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	_check_match
	movl	%esi, %eax
	call	_close_func
	movl	48(%esi), %ebx
	movl	(%ebx), %ebp
	movl	44(%ebx), %edx
	movl	52(%ebp), %edi
	cmpl	%edx, %edi
	jle	L5634
	movl	16(%ebp), %eax
L5635:
	movl	36(%esp), %ecx
	leal	1(%edx), %edi
	movl	%edi, 44(%ebx)
	movl	%ecx, (%eax,%edx,4)
	movl	36(%esp), %edx
	testb	$3, 5(%edx)
	je	L5639
	movzbl	5(%ebp), %ecx
	testb	$4, %cl
	je	L5639
	movl	52(%esi), %eax
	movl	16(%eax), %eax
	cmpb	$1, 21(%eax)
	je	L5663
	movzbl	20(%eax), %eax
	andl	$-8, %ecx
	andl	$3, %eax
	orl	%eax, %ecx
	movb	%cl, 5(%ebp)
	movl	44(%ebx), %edi
L5639:
	movl	12(%ebx), %eax
	leal	-1(%edi), %edx
	sall	$14, %edx
	movl	8(%eax), %ecx
	orl	$36, %edx
	movl	%ebx, %eax
	call	_luaK_code
	movl	24(%esp), %edi
	movl	%eax, 8(%edi)
	movl	36(%esp), %eax
	movl	$-1, 16(%edi)
	movl	$-1, 20(%edi)
	movl	$11, (%edi)
	cmpb	$0, 72(%eax)
	je	L5621
	leal	87(%esp), %esi
	xorl	%edi, %edi
	.p2align 4,,10
L5643:
	movl	12(%ebx), %edx
	xorl	%eax, %eax
	cmpb	$6, (%esi)
	movl	8(%edx), %ecx
	movzbl	1(%esi), %edx
	setne	%al
	addl	$1, %edi
	addl	$2, %esi
	sall	$2, %eax
	sall	$23, %edx
	orl	%eax, %edx
	movl	%ebx, %eax
	call	_luaK_code
	movl	36(%esp), %eax
	movzbl	72(%eax), %eax
	cmpl	%eax, %edi
	jl	L5643
L5621:
	addl	$620, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L5634:
	.cfi_restore_state
	movl	16(%ebp), %edx
	movl	52(%esi), %eax
	leal	52(%ebp), %ecx
	movl	$LC149, 8(%esp)
	movl	$262143, 4(%esp)
	movl	$4, (%esp)
	call	_luaM_growaux_
	movl	52(%ebp), %ecx
	movl	%eax, 16(%ebp)
	cmpl	%ecx, %edi
	jge	L5638
	leal	0(,%edi,4), %edx
	.p2align 4,,10
L5637:
	addl	$1, %edi
	movl	$0, (%eax,%edx)
	addl	$4, %edx
	cmpl	%ecx, %edi
	movl	16(%ebp), %eax
	jne	L5637
L5638:
	movl	44(%ebx), %edx
	jmp	L5635
L5663:
	call	_reallymarkobject
	movl	44(%ebx), %edi
	jmp	L5639
L5660:
	movl	%ebx, %ebp
	movl	%ebp, %ebx
	jmp	L5629
	.cfi_endproc
LFE303:
	.section	.text.unlikely,"x"
LCOLDE405:
	.text
LHOTE405:
	.section .rdata,"dr"
	.align 4
LC406:
	.ascii "cannot use '...' outside a vararg function\0"
	.section	.text.unlikely,"x"
LCOLDB407:
	.text
LHOTB407:
	.p2align 4,,15
	.def	_subexpr;	.scl	3;	.type	32;	.endef
_subexpr:
LFB311:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	subl	$140, %esp
	.cfi_def_cfa_offset 160
	movl	52(%eax), %edx
	movl	%ecx, 36(%esp)
	movzwl	52(%edx), %eax
	addl	$1, %eax
	cmpw	$200, %ax
	movw	%ax, 52(%edx)
	ja	L5813
	movl	16(%esi), %eax
	cmpl	$45, %eax
	je	L5667
	cmpl	$270, %eax
	je	L5668
	cmpl	$35, %eax
	je	L5814
	cmpl	$269, %eax
	je	L5696
	jle	L5815
	cmpl	$279, %eax
	je	L5699
	jle	L5816
	cmpl	$284, %eax
	je	L5693
	cmpl	$286, %eax
	jne	L5703
	movl	24(%esi), %edx
	leal	48(%esp), %ecx
	movl	48(%esi), %eax
	movl	$4, 56(%esp)
	movl	%edx, 48(%esp)
	movl	%ecx, %edx
	call	_addk
	movl	$-1, 16(%ebp)
	movl	$-1, 20(%ebp)
	movl	$4, 0(%ebp)
	movl	%eax, 8(%ebp)
	.p2align 4,,10
L5694:
	movl	%esi, %eax
	call	_luaX_next
	.p2align 4,,10
L5692:
	movl	16(%esi), %eax
	cmpl	$94, %eax
	je	L5707
	jg	L5755
	cmpl	$45, %eax
	je	L5756
	jg	L5757
	cmpl	$42, %eax
	je	L5758
	cmpl	$43, %eax
	je	L5777
	cmpl	$37, %eax
	je	L5817
L5775:
	movl	$15, %ebx
L5706:
	movl	52(%esi), %eax
	subw	$1, 52(%eax)
	addl	$140, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L5813:
	.cfi_restore_state
	movl	64(%esi), %eax
	leal	48(%esp), %ebx
	movl	$80, %ecx
	leal	16(%eax), %edx
	movl	%ebx, %eax
	call	_luaO_chunkid
	movl	$LC386, 16(%esp)
	movl	4(%esi), %eax
	movl	%ebx, 8(%esp)
	movl	$LC42, 4(%esp)
	movl	%eax, 12(%esp)
	movl	52(%esi), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	movl	52(%esi), %eax
	movl	$3, %edx
	call	_luaD_throw
	.p2align 4,,10
L5668:
	movl	%esi, %eax
	call	_luaX_next
	movl	$8, %ecx
	movl	%ebp, %edx
	movl	%esi, %eax
	call	_subexpr
	movl	48(%esi), %eax
	fldz
	movl	%ebp, %edx
	movl	$-1, 68(%esp)
	movl	$-1, 64(%esp)
	movl	$5, 48(%esp)
	fstpl	56(%esp)
	movl	%eax, 40(%esp)
	call	_luaK_dischargevars
	movl	0(%ebp), %eax
	cmpl	$12, %eax
	ja	L5673
	jmp	*L5761(,%eax,4)
	.section .rdata,"dr"
	.align 4
L5761:
	.long	L5673
	.long	L5672
	.long	L5674
	.long	L5672
	.long	L5674
	.long	L5674
	.long	L5673
	.long	L5673
	.long	L5673
	.long	L5673
	.long	L5675
	.long	L5678
	.long	L5678
	.text
L5678:
	jne	L5818
L5679:
	movl	40(%esp), %eax
	leal	8(%ebp), %edx
	call	_freeexp.isra.26.part.27
L5680:
	movl	40(%esp), %edi
	movl	8(%ebp), %edx
	movl	12(%edi), %eax
	sall	$23, %edx
	orl	$19, %edx
	movl	8(%eax), %ecx
	movl	%edi, %eax
	call	_luaK_code
	movl	$11, 0(%ebp)
	movl	%eax, 8(%ebp)
	.p2align 4,,10
L5673:
	movl	16(%ebp), %edi
	movl	20(%ebp), %ebx
	cmpl	$-1, %edi
	movl	%edi, 20(%ebp)
	movl	%ebx, 16(%ebp)
	je	L5681
	movl	40(%esp), %eax
	movl	%esi, 32(%esp)
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, %esi
	.p2align 4,,10
L5685:
	leal	(%esi,%edi,4), %eax
	testl	%edi, %edi
	movl	%eax, %ecx
	jle	L5682
	movl	-4(%eax), %edx
	leal	-4(%eax), %ecx
	andl	$63, %edx
	cmpb	$0, _luaP_opmodes(%edx)
	cmovns	%eax, %ecx
L5682:
	movl	(%ecx), %edx
	movl	%edx, %ebx
	andl	$63, %ebx
	cmpl	$27, %ebx
	jne	L5683
	movl	%edx, %ebx
	andl	$8372224, %edx
	shrl	$23, %ebx
	orl	$26, %edx
	sall	$6, %ebx
	orl	%ebx, %edx
	movl	%edx, (%ecx)
L5683:
	movl	(%eax), %eax
	shrl	$14, %eax
	subl	$131071, %eax
	cmpl	$-1, %eax
	je	L5805
	leal	1(%eax,%edi), %edi
	cmpl	$-1, %edi
	jne	L5685
	.p2align 4,,10
L5805:
	movl	32(%esp), %esi
	movl	16(%ebp), %ebx
L5681:
	cmpl	$-1, %ebx
	je	L5692
	movl	40(%esp), %eax
	movl	%esi, 32(%esp)
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	.p2align 4,,10
L5691:
	leal	(%edi,%ebx,4), %eax
	testl	%ebx, %ebx
	movl	%eax, %ecx
	jle	L5688
	movl	-4(%eax), %edx
	leal	-4(%eax), %ecx
	andl	$63, %edx
	cmpb	$0, _luaP_opmodes(%edx)
	cmovns	%eax, %ecx
L5688:
	movl	(%ecx), %edx
	movl	%edx, %esi
	andl	$63, %esi
	cmpl	$27, %esi
	jne	L5689
	movl	%edx, %esi
	shrl	$23, %edx
	andl	$8372224, %esi
	sall	$6, %edx
	orl	$26, %esi
	orl	%esi, %edx
	movl	%edx, (%ecx)
L5689:
	movl	(%eax), %eax
	shrl	$14, %eax
	subl	$131071, %eax
	cmpl	$-1, %eax
	je	L5801
	leal	1(%ebx,%eax), %ebx
	cmpl	$-1, %ebx
	jne	L5691
	.p2align 4,,10
L5801:
	movl	32(%esp), %esi
	jmp	L5692
	.p2align 4,,10
L5755:
	cmpl	$280, %eax
	je	L5711
	jg	L5760
	cmpl	$271, %eax
	je	L5717
	cmpl	$278, %eax
	je	L5709
	cmpl	$257, %eax
	jne	L5775
	movl	$2, %edx
	movl	$13, %ebx
	.p2align 4,,10
L5704:
	leal	48(%esp), %eax
	cmpl	%edx, 36(%esp)
	movl	%eax, 32(%esp)
	leal	16(%ebp), %eax
	movl	%eax, 44(%esp)
	jnb	L5706
	.p2align 4,,10
L5788:
	movl	%esi, %eax
	call	_luaX_next
	cmpl	$14, %ebx
	movl	48(%esi), %edi
	ja	L5718
	jmp	*L5720(,%ebx,4)
	.section .rdata,"dr"
	.align 4
L5720:
	.long	L5719
	.long	L5719
	.long	L5719
	.long	L5719
	.long	L5719
	.long	L5719
	.long	L5721
	.long	L5718
	.long	L5718
	.long	L5718
	.long	L5718
	.long	L5718
	.long	L5718
	.long	L5722
	.long	L5723
	.text
	.p2align 4,,10
L5814:
	movl	%esi, %eax
	call	_luaX_next
	movl	$8, %ecx
	movl	%ebp, %edx
	movl	%esi, %eax
	call	_subexpr
	movl	48(%esi), %ebx
	fldz
	movl	%ebp, %edx
	movl	$-1, 68(%esp)
	movl	$-1, 64(%esp)
	movl	$5, 48(%esp)
	fstpl	56(%esp)
	movl	%ebx, %eax
	call	_luaK_exp2anyreg
	leal	48(%esp), %eax
	movl	%ebp, %ecx
	movl	$20, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_codearith
	jmp	L5692
	.p2align 4,,10
L5667:
	movl	%esi, %eax
	call	_luaX_next
	movl	$8, %ecx
	movl	%ebp, %edx
	movl	%esi, %eax
	call	_subexpr
	cmpl	$5, 0(%ebp)
	fldz
	movl	48(%esi), %ebx
	movl	$-1, 68(%esp)
	movl	$-1, 64(%esp)
	movl	$5, 48(%esp)
	fstpl	56(%esp)
	je	L5819
L5670:
	movl	%ebp, %edx
	movl	%ebx, %eax
	call	_luaK_exp2anyreg
L5754:
	leal	48(%esp), %eax
	movl	%ebp, %ecx
	movl	$18, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_codearith
	jmp	L5692
	.p2align 4,,10
L5760:
	cmpl	$282, %eax
	movl	$3, %edx
	je	L5713
	jl	L5715
	cmpl	$283, %eax
	movl	$7, %ebx
	je	L5704
	jmp	L5775
	.p2align 4,,10
L5723:
	movl	%edi, %eax
	movl	%ebp, %edx
	call	_luaK_dischargevars
	movl	0(%ebp), %eax
	cmpl	$3, %eax
	je	L5770
	cmpl	$10, %eax
	je	L5727
	cmpl	$1, %eax
	je	L5770
	movl	$1, %ecx
	movl	%ebp, %edx
	movl	%edi, %eax
	call	_jumponcond
	movl	%eax, %ecx
L5726:
	movl	44(%esp), %edx
	movl	%edi, %eax
	call	_luaK_concat
	movl	24(%edi), %eax
	movl	20(%ebp), %ecx
	leal	32(%edi), %edx
	movl	%eax, 28(%edi)
	movl	%edi, %eax
	call	_luaK_concat
	movl	32(%esp), %edx
	movl	$-1, 20(%ebp)
	movl	$1, %ecx
	movl	%esi, %eax
	call	_subexpr
	movl	48(%esi), %edi
	movl	%eax, %ebx
L5728:
	movl	32(%esp), %edx
	movl	%edi, %eax
	call	_luaK_dischargevars
	movl	16(%ebp), %ecx
	leal	64(%esp), %edx
L5806:
	movl	%edi, %eax
	call	_luaK_concat
	movl	48(%esp), %eax
	movl	%eax, 0(%ebp)
	movl	52(%esp), %eax
	movl	%eax, 4(%ebp)
	movl	56(%esp), %eax
	movl	%eax, 8(%ebp)
	movl	60(%esp), %eax
	movl	%eax, 12(%ebp)
	movl	64(%esp), %eax
	movl	%eax, 16(%ebp)
	movl	68(%esp), %eax
	movl	%eax, 20(%ebp)
	.p2align 4,,10
L5732:
	cmpl	$15, %ebx
	je	L5706
	movzbl	_priority(%ebx,%ebx), %eax
	cmpl	36(%esp), %eax
	ja	L5788
	jmp	L5706
	.p2align 4,,10
L5722:
	movl	%edi, %eax
	movl	%ebp, %edx
	call	_luaK_goiftrue
	movl	32(%esp), %edx
	movl	$2, %ecx
	movl	%esi, %eax
	call	_subexpr
	movl	48(%esi), %edi
	movl	%eax, %ebx
L5724:
	movl	32(%esp), %edx
	movl	%edi, %eax
	call	_luaK_dischargevars
	movl	20(%ebp), %ecx
	leal	68(%esp), %edx
	jmp	L5806
	.p2align 4,,10
L5721:
	movl	%edi, %eax
	movl	%ebp, %edx
	call	_luaK_exp2nextreg
	movl	32(%esp), %edx
	movl	$4, %ecx
	movl	%esi, %eax
	call	_subexpr
	movl	48(%esi), %edi
	movl	%eax, %ebx
L5729:
	movl	68(%esp), %eax
	cmpl	%eax, 64(%esp)
	movl	%edi, %eax
	movl	32(%esp), %edx
	je	L5746
	call	_luaK_exp2anyreg
L5747:
	cmpl	$11, 48(%esp)
	jne	L5748
	movl	(%edi), %eax
	movl	56(%esp), %edx
	movl	12(%eax), %eax
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	cmpl	$21, %ecx
	je	L5820
L5748:
	movl	32(%esp), %edx
	movl	%edi, %eax
	call	_luaK_exp2nextreg
	movl	32(%esp), %eax
	movl	%ebp, %ecx
	movl	$21, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_codearith
	jmp	L5732
	.p2align 4,,10
L5719:
	cmpl	$5, 0(%ebp)
	je	L5821
L5718:
	movl	%ebp, %edx
	movl	%edi, %eax
	call	_luaK_exp2RK
L5731:
	movzbl	_priority+1(%ebx,%ebx), %ecx
	movl	32(%esp), %edx
	movl	%esi, %eax
	call	_subexpr
	cmpl	$14, %ebx
	movl	%eax, 40(%esp)
	movl	48(%esi), %edi
	ja	L5771
	jmp	*L5734(,%ebx,4)
	.section .rdata,"dr"
	.align 4
L5734:
	.long	L5733
	.long	L5735
	.long	L5736
	.long	L5737
	.long	L5738
	.long	L5739
	.long	L5772
	.long	L5740
	.long	L5741
	.long	L5742
	.long	L5743
	.long	L5744
	.long	L5745
	.long	L5773
	.long	L5774
	.text
	.p2align 4,,10
L5745:
	movl	32(%esp), %eax
	movl	%ebp, (%esp)
	xorl	%ecx, %ecx
	movl	$25, %edx
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	_codecomp
	movl	40(%esp), %ebx
	jmp	L5732
	.p2align 4,,10
L5744:
	movl	32(%esp), %eax
	movl	%ebp, (%esp)
	xorl	%ecx, %ecx
	movl	$24, %edx
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	_codecomp
	movl	40(%esp), %ebx
	jmp	L5732
	.p2align 4,,10
L5743:
	movl	32(%esp), %eax
	movl	%ebp, (%esp)
	movl	$1, %ecx
	movl	$25, %edx
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	_codecomp
	movl	40(%esp), %ebx
	jmp	L5732
	.p2align 4,,10
L5742:
	movl	32(%esp), %eax
	movl	%ebp, (%esp)
	movl	$1, %ecx
	movl	$24, %edx
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	_codecomp
	movl	40(%esp), %ebx
	jmp	L5732
	.p2align 4,,10
L5741:
	movl	32(%esp), %eax
	movl	%ebp, (%esp)
	movl	$1, %ecx
	movl	$23, %edx
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	_codecomp
	movl	40(%esp), %ebx
	jmp	L5732
	.p2align 4,,10
L5740:
	movl	32(%esp), %eax
	movl	%ebp, (%esp)
	xorl	%ecx, %ecx
	movl	$23, %edx
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	_codecomp
	movl	40(%esp), %ebx
	jmp	L5732
	.p2align 4,,10
L5739:
	movl	32(%esp), %eax
	movl	%ebp, %ecx
	movl	$17, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_codearith
	movl	40(%esp), %ebx
	jmp	L5732
	.p2align 4,,10
L5738:
	movl	32(%esp), %eax
	movl	%ebp, %ecx
	movl	$16, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_codearith
	movl	40(%esp), %ebx
	jmp	L5732
	.p2align 4,,10
L5737:
	movl	32(%esp), %eax
	movl	%ebp, %ecx
	movl	$15, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_codearith
	movl	40(%esp), %ebx
	jmp	L5732
	.p2align 4,,10
L5736:
	movl	32(%esp), %eax
	movl	%ebp, %ecx
	movl	$14, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_codearith
	movl	40(%esp), %ebx
	jmp	L5732
	.p2align 4,,10
L5735:
	movl	32(%esp), %eax
	movl	%ebp, %ecx
	movl	$13, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_codearith
	movl	40(%esp), %ebx
	jmp	L5732
	.p2align 4,,10
L5733:
	movl	32(%esp), %eax
	movl	%ebp, %ecx
	movl	$12, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_codearith
	movl	40(%esp), %ebx
	jmp	L5732
	.p2align 4,,10
L5727:
	movl	8(%ebp), %ecx
	jmp	L5726
	.p2align 4,,10
L5770:
	movl	$-1, %ecx
	jmp	L5726
	.p2align 4,,10
L5821:
	cmpl	$-1, 16(%ebp)
	jne	L5718
	cmpl	$-1, 20(%ebp)
	jne	L5718
	jmp	L5731
	.p2align 4,,10
L5746:
	call	_luaK_dischargevars
	jmp	L5747
	.p2align 4,,10
L5757:
	cmpl	$60, %eax
	je	L5712
	cmpl	$62, %eax
	je	L5714
	cmpl	$47, %eax
	jne	L5775
	movl	$7, %edx
	movl	$3, %ebx
	jmp	L5704
	.p2align 4,,10
L5820:
	cmpl	$12, 0(%ebp)
	je	L5822
L5749:
	movl	8(%ebp), %ecx
	andl	$8388607, %eax
	sall	$23, %ecx
	orl	%ecx, %eax
	movl	%eax, (%edx)
	movl	56(%esp), %eax
	movl	$11, 0(%ebp)
	movl	%eax, 8(%ebp)
	jmp	L5732
	.p2align 4,,10
L5815:
	cmpl	$263, %eax
	je	L5698
	cmpl	$265, %eax
	je	L5702
	cmpl	$123, %eax
	je	L5823
L5703:
	movl	%ebp, %edx
	movl	%esi, %eax
	call	_primaryexp
	jmp	L5692
L5675:
	movl	40(%esp), %ecx
	movl	8(%ebp), %eax
	movl	(%ecx), %edx
	testl	%eax, %eax
	movl	12(%edx), %edx
	leal	(%edx,%eax,4), %edx
	jle	L5676
	movl	-4(%edx), %eax
	leal	-4(%edx), %ecx
	andl	$63, %eax
	cmpb	$0, _luaP_opmodes(%eax)
	cmovs	%ecx, %edx
L5676:
	movl	(%edx), %eax
	movl	%eax, %ecx
	shrl	$6, %eax
	movzbl	%al, %eax
	andl	$-16321, %ecx
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$64, %eax
	orl	%eax, %ecx
	movl	%ecx, (%edx)
	jmp	L5673
L5672:
	movl	$2, 0(%ebp)
	jmp	L5673
L5674:
	movl	$3, 0(%ebp)
	jmp	L5673
L5817:
	movl	$7, %edx
	movl	$4, %ebx
	jmp	L5704
L5702:
	movl	%esi, %eax
	call	_luaX_next
	movl	4(%esi), %eax
	xorl	%ecx, %ecx
	movl	%ebp, %edx
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	_body
	jmp	L5692
L5693:
	movl	$0, 8(%ebp)
	movl	$-1, 16(%ebp)
	movl	$-1, 20(%ebp)
	movl	$5, 0(%ebp)
	fldl	24(%esi)
	fstpl	8(%ebp)
	jmp	L5694
L5696:
	movl	$-1, 16(%ebp)
	movl	$-1, 20(%ebp)
	movl	$1, 0(%ebp)
	movl	$0, 8(%ebp)
	jmp	L5694
L5777:
	movl	$6, %edx
	xorl	%ebx, %ebx
	jmp	L5704
L5707:
	movl	$10, %edx
	movl	$5, %ebx
	jmp	L5704
L5758:
	movl	$7, %edx
	movl	$2, %ebx
	jmp	L5704
L5756:
	movl	$6, %edx
	movl	$1, %ebx
	jmp	L5704
L5715:
	movl	$12, %ebx
	jmp	L5704
L5712:
	movl	$3, %edx
	movl	$9, %ebx
	jmp	L5704
L5711:
	movl	$3, %edx
	movl	$8, %ebx
	jmp	L5704
L5714:
	movl	$3, %edx
	movl	$11, %ebx
	jmp	L5704
L5713:
	movl	$10, %ebx
	jmp	L5704
L5709:
	movl	$5, %edx
	movl	$6, %ebx
	jmp	L5704
L5717:
	movl	$1, %edx
	movl	$14, %ebx
	jmp	L5704
L5819:
	cmpl	$-1, 16(%ebp)
	jne	L5670
	cmpl	$-1, 20(%ebp)
	jne	L5670
	jmp	L5754
L5816:
	cmpl	$275, %eax
	jne	L5703
	movl	$-1, 16(%ebp)
	movl	$-1, 20(%ebp)
	movl	$2, 0(%ebp)
	movl	$0, 8(%ebp)
	jmp	L5694
L5699:
	movl	48(%esi), %eax
	movl	(%eax), %ecx
	movzbl	74(%ecx), %edx
	testb	%dl, %dl
	je	L5824
	andl	$-5, %edx
	movb	%dl, 74(%ecx)
	movl	12(%eax), %edx
	movl	8(%edx), %ecx
	movl	$8388645, %edx
	call	_luaK_code
	movl	$-1, 16(%ebp)
	movl	$-1, 20(%ebp)
	movl	$14, 0(%ebp)
	movl	%eax, 8(%ebp)
	jmp	L5694
L5823:
	movl	%ebp, %edx
	movl	%esi, %eax
	call	_constructor
	jmp	L5692
L5698:
	movl	$-1, 16(%ebp)
	movl	$-1, 20(%ebp)
	movl	$3, 0(%ebp)
	movl	$0, 8(%ebp)
	jmp	L5694
L5822:
	leal	8(%ebp), %edx
	movl	%edi, %eax
	call	_freeexp.isra.26.part.27
	movl	(%edi), %eax
	movl	56(%esp), %edx
	movl	12(%eax), %eax
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	jmp	L5749
L5818:
	movl	40(%esp), %edi
	movl	$1, %edx
	movl	%edi, %eax
	call	_luaK_checkstack
	movl	36(%edi), %ecx
	movl	%ebp, %edx
	leal	1(%ecx), %eax
	movl	%eax, 36(%edi)
	movl	%edi, %eax
	call	_discharge2reg
	cmpl	$12, 0(%ebp)
	jne	L5680
	jmp	L5679
	.p2align 4,,10
L5824:
	movl	$279, %ecx
	movl	$LC406, %edx
	movl	%esi, %eax
	call	_luaX_lexerror
L5771:
	movl	40(%esp), %ebx
	jmp	L5732
L5773:
	movl	40(%esp), %ebx
	jmp	L5724
L5772:
	movl	40(%esp), %ebx
	jmp	L5729
L5774:
	movl	40(%esp), %ebx
	jmp	L5728
	.cfi_endproc
LFE311:
	.section	.text.unlikely,"x"
LCOLDE407:
	.text
LHOTE407:
	.section .rdata,"dr"
LC408:
	.ascii "items in a constructor\0"
	.section	.text.unlikely,"x"
LCOLDB409:
	.text
LHOTB409:
	.p2align 4,,15
	.def	_recfield.isra.101;	.scl	3;	.type	32;	.endef
_recfield.isra.101:
LFB665:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%ecx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	48(%eax), %esi
	cmpl	$285, 16(%ebx)
	movl	%edx, 12(%esp)
	movl	36(%esi), %eax
	movl	%eax, 8(%esp)
	je	L5832
	leal	16(%esp), %ebp
	movl	%ebx, %eax
	call	_luaX_next
	xorl	%ecx, %ecx
	movl	%ebp, %edx
	movl	%ebx, %eax
	movl	%ebp, 4(%esp)
	call	_subexpr
	movl	36(%esp), %ecx
	cmpl	%ecx, 32(%esp)
	movl	48(%ebx), %eax
	je	L5829
	movl	%ebp, %edx
	call	_luaK_exp2anyreg
L5830:
	leal	40(%esp), %ebp
	movl	$93, %edx
	movl	%ebx, %eax
	call	_checknext
L5828:
	addl	$1, (%edi)
	movl	%ebx, %eax
	movl	$61, %edx
	call	_checknext
	movl	4(%esp), %edx
	movl	%esi, %eax
	call	_luaK_exp2RK
	xorl	%ecx, %ecx
	movl	%ebp, %edx
	movl	%eax, %edi
	movl	%ebx, %eax
	sall	$23, %edi
	call	_subexpr
	movl	%ebp, %edx
	movl	%esi, %eax
	call	_luaK_exp2RK
	movl	12(%esi), %edx
	movl	12(%esp), %ebx
	sall	$14, %eax
	movl	8(%edx), %ecx
	movl	(%ebx), %edx
	movl	8(%edx), %edx
	sall	$6, %edx
	orl	$9, %edx
	orl	%edi, %edx
	orl	%eax, %edx
	movl	%esi, %eax
	call	_luaK_code
	movl	8(%esp), %eax
	movl	%eax, 36(%esi)
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L5832:
	.cfi_restore_state
	cmpl	$2147483645, (%ecx)
	jg	L5833
	movl	24(%ebx), %ebp
	movl	%ebx, %eax
	call	_luaX_next
	movl	48(%ebx), %eax
	movl	$4, 48(%esp)
	movl	%ebp, 40(%esp)
	leal	40(%esp), %ebp
	movl	%ebp, %ecx
	movl	%ebp, %edx
	call	_addk
	movl	%eax, 24(%esp)
	leal	16(%esp), %eax
	movl	$-1, 32(%esp)
	movl	$-1, 36(%esp)
	movl	$4, 16(%esp)
	movl	%eax, 4(%esp)
	jmp	L5828
	.p2align 4,,10
L5829:
	movl	4(%esp), %edx
	call	_luaK_dischargevars
	jmp	L5830
	.p2align 4,,10
L5833:
	movl	$LC408, %ecx
	movl	$2147483645, %edx
	movl	%esi, %eax
	call	_errorlimit
	.cfi_endproc
LFE665:
	.section	.text.unlikely,"x"
LCOLDE409:
	.text
LHOTE409:
	.section	.text.unlikely,"x"
LCOLDB410:
	.text
LHOTB410:
	.p2align 4,,15
	.def	_explist1;	.scl	3;	.type	32;	.endef
_explist1:
LFB304:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xorl	%ecx, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%edx, %edi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	call	_subexpr
	cmpl	$44, 16(%ebx)
	leal	24(%ebx), %eax
	movl	$1, 8(%esp)
	movl	%eax, 12(%esp)
	jne	L5836
L5847:
	cmpl	$287, 32(%ebx)
	movl	4(%ebx), %eax
	movl	%eax, 8(%ebx)
	je	L5843
	movl	32(%ebx), %eax
	movl	$287, 32(%ebx)
	movl	%eax, 16(%ebx)
	movl	36(%ebx), %eax
	movl	%eax, 20(%ebx)
	movl	40(%ebx), %eax
	movl	%eax, 24(%ebx)
	movl	44(%ebx), %eax
	movl	%eax, 28(%ebx)
L5844:
	movl	48(%ebx), %esi
	movl	%edi, %edx
	movl	%esi, %eax
	call	_luaK_dischargevars
	cmpl	$12, (%edi)
	je	L5845
L5851:
	movl	36(%esi), %ecx
L5838:
	movl	(%esi), %edx
	leal	1(%ecx), %eax
	movzbl	75(%edx), %ebp
	cmpl	%ebp, %eax
	jle	L5840
	cmpl	$249, %eax
	jg	L5852
	movb	%al, 75(%edx)
	movl	36(%esi), %ecx
	leal	1(%ecx), %eax
L5840:
	movl	%eax, 36(%esi)
	movl	%edi, %edx
	movl	%esi, %eax
	call	_exp2reg
	xorl	%ecx, %ecx
	movl	%edi, %edx
	movl	%ebx, %eax
	call	_subexpr
	addl	$1, 8(%esp)
	cmpl	$44, 16(%ebx)
	je	L5847
L5836:
	movl	8(%esp), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L5845:
	.cfi_restore_state
	movl	8(%edi), %eax
	testb	$1, %ah
	jne	L5851
	movzbl	50(%esi), %edx
	cmpl	%edx, %eax
	jl	L5851
	movl	36(%esi), %eax
	leal	-1(%eax), %ecx
	movl	%ecx, 36(%esi)
	jmp	L5838
	.p2align 4,,10
L5843:
	movl	12(%esp), %edx
	movl	%ebx, %eax
	call	_llex
	movl	%eax, 16(%ebx)
	jmp	L5844
	.p2align 4,,10
L5852:
	movl	12(%esi), %eax
	movl	$LC114, %edx
	movl	16(%eax), %ecx
	call	_luaX_lexerror
	.cfi_endproc
LFE304:
	.section	.text.unlikely,"x"
LCOLDE410:
	.text
LHOTE410:
	.section	.text.unlikely,"x"
LCOLDB411:
	.text
LHOTB411:
	.p2align 4,,15
	.def	_constructor;	.scl	3;	.type	32;	.endef
_constructor:
LFB301:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%edx, %esi
	movl	$10, %edx
	subl	$92, %esp
	.cfi_def_cfa_offset 112
	movl	48(%eax), %edi
	movl	4(%eax), %eax
	movl	%eax, 28(%esp)
	movl	12(%edi), %eax
	movl	8(%eax), %ecx
	movl	%edi, %eax
	call	_luaK_code
	movl	%eax, 8(%esi)
	movl	%eax, %ebp
	movl	48(%ebx), %eax
	movl	%esi, %edx
	movl	$-1, 16(%esi)
	movl	$-1, 20(%esi)
	movl	$11, (%esi)
	movl	$0, 76(%esp)
	movl	$0, 68(%esp)
	movl	$0, 72(%esp)
	movl	%esi, 64(%esp)
	movl	$-1, 56(%esp)
	movl	$-1, 60(%esp)
	movl	$0, 40(%esp)
	movl	$0, 48(%esp)
	call	_luaK_exp2nextreg
	movl	%ebx, %eax
	movl	$123, %edx
	call	_checknext
	movl	16(%ebx), %eax
	cmpl	$125, %eax
	je	L5854
L5865:
	movl	40(%esp), %edx
	testl	%edx, %edx
	jne	L5902
L5855:
	cmpl	$91, %eax
	je	L5858
	cmpl	$285, %eax
	jne	L5893
	leal	40(%ebx), %edx
	movl	%ebx, %eax
	call	_llex
	cmpl	$61, %eax
	movl	%eax, 32(%ebx)
	je	L5858
L5893:
	leal	40(%esp), %edx
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	call	_subexpr
	movl	72(%esp), %eax
	cmpl	$2147483645, %eax
	jg	L5903
	addl	$1, %eax
	addl	$1, 76(%esp)
	movl	%eax, 72(%esp)
	movl	16(%ebx), %eax
	cmpl	$44, %eax
	jne	L5864
L5901:
	movl	%ebx, %eax
	call	_luaX_next
	movl	16(%ebx), %eax
	cmpl	$125, %eax
	jne	L5865
L5854:
	movl	28(%esp), %eax
	movl	$123, %ecx
	movl	$125, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_check_match
	movl	76(%esp), %eax
	testl	%eax, %eax
	je	L5898
	movl	40(%esp), %edx
	leal	-13(%edx), %ecx
	cmpl	$1, %ecx
	jbe	L5904
	testl	%edx, %edx
	jne	L5905
L5870:
	movl	64(%esp), %edx
	movl	72(%esp), %ecx
	movl	8(%edx), %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_luaK_setlist
L5898:
	movl	72(%esp), %ebx
L5868:
	movl	(%edi), %eax
	movl	12(%eax), %eax
	leal	(%eax,%ebp,4), %ecx
	xorl	%eax, %eax
	movl	(%ecx), %edx
	andl	$8388607, %edx
	cmpl	$15, %ebx
	jbe	L5871
	.p2align 4,,10
L5872:
	addl	$1, %ebx
	addl	$1, %eax
	shrl	%ebx
	cmpl	$15, %ebx
	ja	L5872
L5871:
	cmpl	$7, %ebx
	jbe	L5874
	leal	8(,%eax,8), %eax
	subl	$8, %ebx
	orl	%eax, %ebx
L5874:
	sall	$23, %ebx
	orl	%ebx, %edx
	xorl	%ebx, %ebx
	movl	%edx, (%ecx)
	movl	68(%esp), %eax
	andl	$-8372225, %edx
	cmpl	$15, %eax
	jbe	L5875
	.p2align 4,,10
L5876:
	addl	$1, %eax
	addl	$1, %ebx
	shrl	%eax
	cmpl	$15, %eax
	ja	L5876
L5875:
	cmpl	$7, %eax
	jbe	L5878
	leal	8(,%ebx,8), %ebx
	subl	$8, %eax
	orl	%ebx, %eax
L5878:
	sall	$14, %eax
	andl	$8372224, %eax
	orl	%edx, %eax
	movl	%eax, (%ecx)
	addl	$92, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L5858:
	.cfi_restore_state
	leal	68(%esp), %ecx
	leal	64(%esp), %edx
	movl	%ebx, %eax
	call	_recfield.isra.101
	movl	16(%ebx), %eax
	cmpl	$44, %eax
	je	L5901
L5864:
	cmpl	$59, %eax
	je	L5901
	jmp	L5854
	.p2align 4,,10
L5902:
	leal	40(%esp), %edx
	movl	%edi, %eax
	call	_luaK_exp2nextreg
	cmpl	$50, 76(%esp)
	movl	$0, 40(%esp)
	je	L5906
L5896:
	movl	16(%ebx), %eax
	jmp	L5855
	.p2align 4,,10
L5903:
	movl	48(%ebx), %eax
	movl	$LC408, %ecx
	movl	$2147483645, %edx
	call	_errorlimit
	.p2align 4,,10
L5906:
	movl	64(%esp), %eax
	movl	72(%esp), %ecx
	movl	8(%eax), %edx
	movl	$50, (%esp)
	movl	%edi, %eax
	call	_luaK_setlist
	movl	$0, 76(%esp)
	jmp	L5896
L5905:
	leal	40(%esp), %edx
	movl	%edi, %eax
	call	_luaK_exp2nextreg
	movl	76(%esp), %eax
	jmp	L5870
L5904:
	leal	48(%esp), %ecx
	movl	%edi, %eax
	movl	$-1, (%esp)
	call	_luaK_setreturns.isra.92
	movl	64(%esp), %eax
	movl	72(%esp), %ecx
	movl	8(%eax), %edx
	movl	%edi, %eax
	movl	$-1, (%esp)
	call	_luaK_setlist
	movl	72(%esp), %eax
	leal	-1(%eax), %ebx
	movl	%ebx, 72(%esp)
	jmp	L5868
	.cfi_endproc
LFE301:
	.section	.text.unlikely,"x"
LCOLDE411:
	.text
LHOTE411:
	.section .rdata,"dr"
	.align 4
LC412:
	.ascii "ambiguous syntax (function call x new statement)\0"
LC413:
	.ascii "function arguments expected\0"
	.section	.text.unlikely,"x"
LCOLDB414:
	.text
LHOTB414:
	.p2align 4,,15
	.def	_funcargs;	.scl	3;	.type	32;	.endef
_funcargs:
LFB305:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %esi
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	16(%eax), %ecx
	movl	48(%eax), %ebx
	movl	4(%eax), %edi
	cmpl	$123, %ecx
	je	L5909
	cmpl	$286, %ecx
	je	L5910
	cmpl	$40, %ecx
	je	L5924
	movl	$LC413, %edx
	call	_luaX_lexerror
	.p2align 4,,10
L5924:
	cmpl	8(%eax), %edi
	je	L5912
	movl	$LC412, %edx
	call	_luaX_lexerror
	.p2align 4,,10
L5912:
	call	_luaX_next
	cmpl	$41, 16(%ebp)
	je	L5925
	leal	40(%esp), %edx
	movl	%ebp, %eax
	call	_explist1
	movl	40(%esp), %edx
	leal	48(%esp), %ecx
	movl	$-1, (%esp)
	movl	%ebx, %eax
	call	_luaK_setreturns.isra.92
L5914:
	movl	$40, %ecx
	movl	$41, %edx
	movl	%ebp, %eax
	movl	%edi, (%esp)
	call	_check_match
	movl	40(%esp), %eax
	movl	8(%esi), %ecx
	leal	-13(%eax), %edx
	cmpl	$1, %edx
	ja	L5916
L5926:
	leal	1(%ecx), %ebp
	xorl	%eax, %eax
	jmp	L5917
	.p2align 4,,10
L5910:
	movl	24(%eax), %eax
	leal	40(%esp), %ecx
	movl	$4, 48(%esp)
	movl	%ecx, %edx
	movl	%eax, 40(%esp)
	movl	%ebx, %eax
	call	_addk
	movl	%eax, 48(%esp)
	movl	%ebp, %eax
	movl	$-1, 56(%esp)
	movl	$-1, 60(%esp)
	movl	$4, 40(%esp)
	call	_luaX_next
L5915:
	movl	40(%esp), %eax
	movl	8(%esi), %ecx
	leal	-13(%eax), %edx
	cmpl	$1, %edx
	jbe	L5926
L5916:
	testl	%eax, %eax
	jne	L5927
L5918:
	movl	36(%ebx), %eax
	leal	1(%ecx), %ebp
	subl	%ecx, %eax
	sall	$23, %eax
L5917:
	movl	12(%ebx), %edx
	sall	$6, %ecx
	orl	$32796, %ecx
	orl	%ecx, %eax
	movl	8(%edx), %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	%ebx, %eax
	call	_luaK_code
	movl	%eax, 8(%esi)
	movl	(%ebx), %eax
	movl	$-1, 16(%esi)
	movl	$-1, 20(%esi)
	movl	24(%ebx), %edx
	movl	$13, (%esi)
	movl	20(%eax), %eax
	movl	%edi, -4(%eax,%edx,4)
	movl	%ebp, 36(%ebx)
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L5909:
	.cfi_restore_state
	leal	40(%esp), %edx
	call	_constructor
	jmp	L5915
	.p2align 4,,10
L5925:
	movl	$0, 40(%esp)
	jmp	L5914
	.p2align 4,,10
L5927:
	leal	40(%esp), %edx
	movl	%ebx, %eax
	movl	%ecx, 28(%esp)
	call	_luaK_exp2nextreg
	movl	28(%esp), %ecx
	jmp	L5918
	.cfi_endproc
LFE305:
	.section	.text.unlikely,"x"
LCOLDE414:
	.text
LHOTE414:
	.section .rdata,"dr"
LC415:
	.ascii "unexpected symbol\0"
	.section	.text.unlikely,"x"
LCOLDB416:
	.text
LHOTB416:
	.p2align 4,,15
	.def	_primaryexp;	.scl	3;	.type	32;	.endef
_primaryexp:
LFB307:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %esi
	movl	%eax, %ebx
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	16(%eax), %ecx
	movl	48(%eax), %edi
	cmpl	$40, %ecx
	je	L5930
	cmpl	$285, %ecx
	jne	L5960
	movl	24(%eax), %ebp
	call	_luaX_next
	movl	48(%ebx), %eax
	movl	$1, (%esp)
	movl	%esi, %ecx
	movl	%ebp, %edx
	movl	%eax, 28(%esp)
	call	_singlevaraux
	cmpl	$8, %eax
	jne	L5932
	leal	40(%esp), %ecx
	movl	28(%esp), %eax
	movl	%ebp, 40(%esp)
	movl	$4, 48(%esp)
	movl	%ecx, %edx
	call	_addk
	movl	%eax, 8(%esi)
	jmp	L5932
	.p2align 4,,10
L5960:
	movl	$LC415, %edx
	call	_luaX_lexerror
	.p2align 4,,10
L5930:
	movl	4(%eax), %ebp
	call	_luaX_next
	xorl	%ecx, %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_subexpr
	movl	$41, %edx
	movl	%ebx, %eax
	movl	%ebp, (%esp)
	movl	$40, %ecx
	call	_check_match
	movl	48(%ebx), %eax
	movl	%esi, %edx
	call	_luaK_dischargevars
L5932:
	movl	16(%ebx), %eax
	cmpl	$58, %eax
	je	L5935
L5962:
	jle	L5961
	cmpl	$123, %eax
	je	L5937
	cmpl	$286, %eax
	je	L5937
	cmpl	$91, %eax
	jne	L5928
	movl	%esi, %edx
	movl	%edi, %eax
	call	_luaK_exp2anyreg
	movl	%ebx, %eax
	call	_luaX_next
	leal	40(%esp), %edx
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	call	_subexpr
	movl	60(%esp), %ecx
	cmpl	%ecx, 56(%esp)
	leal	40(%esp), %edx
	movl	48(%ebx), %eax
	je	L5942
	call	_luaK_exp2anyreg
L5943:
	movl	$93, %edx
	movl	%ebx, %eax
	call	_checknext
	leal	40(%esp), %edx
	movl	%edi, %eax
	call	_luaK_exp2RK
	movl	%eax, 12(%esi)
	movl	16(%ebx), %eax
	movl	$9, (%esi)
	cmpl	$58, %eax
	jne	L5962
L5935:
	movl	%ebx, %eax
	call	_luaX_next
	cmpl	$285, 16(%ebx)
	je	L5944
L5958:
	movl	52(%ebx), %eax
	movl	$LC389, 8(%esp)
	movl	$LC186, 4(%esp)
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	movl	16(%ebx), %ecx
	movl	%eax, %edx
	movl	%ebx, %eax
	call	_luaX_lexerror
	.p2align 4,,10
L5928:
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L5961:
	.cfi_restore_state
	cmpl	$40, %eax
	je	L5937
	cmpl	$46, %eax
	jne	L5928
	movl	48(%ebx), %ebp
	movl	%esi, %edx
	movl	%ebp, %eax
	call	_luaK_exp2anyreg
	movl	%ebx, %eax
	call	_luaX_next
	cmpl	$285, 16(%ebx)
	jne	L5958
	movl	24(%ebx), %edx
	movl	%ebx, %eax
	movl	%edx, 28(%esp)
	call	_luaX_next
	movl	28(%esp), %edx
	leal	40(%esp), %ecx
	movl	48(%ebx), %eax
	movl	$4, 48(%esp)
	movl	%edx, 40(%esp)
	movl	%ecx, %edx
	call	_addk
	leal	40(%esp), %edx
	movl	%eax, 48(%esp)
	movl	%ebp, %eax
	movl	$-1, 56(%esp)
	movl	$-1, 60(%esp)
	movl	$4, 40(%esp)
	call	_luaK_exp2RK
	movl	$9, (%esi)
	movl	%eax, 12(%esi)
	jmp	L5932
	.p2align 4,,10
L5937:
	movl	%esi, %edx
	movl	%edi, %eax
	call	_luaK_exp2nextreg
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_funcargs
	jmp	L5932
	.p2align 4,,10
L5944:
	movl	%ebx, %eax
	movl	24(%ebx), %ebp
	call	_luaX_next
	leal	40(%esp), %ecx
	movl	48(%ebx), %eax
	movl	$4, 48(%esp)
	movl	%ebp, 40(%esp)
	movl	%ecx, %edx
	call	_addk
	movl	%esi, %edx
	movl	%eax, 48(%esp)
	movl	%edi, %eax
	movl	$-1, 56(%esp)
	movl	$-1, 60(%esp)
	movl	$4, 40(%esp)
	call	_luaK_exp2anyreg
	cmpl	$12, (%esi)
	je	L5963
L5945:
	movl	$2, %edx
	movl	%edi, %eax
	movl	36(%edi), %ebp
	call	_luaK_checkstack
	addl	$2, 36(%edi)
	leal	40(%esp), %edx
	movl	%edi, %eax
	call	_luaK_exp2RK
	movl	12(%edi), %edx
	movl	%eax, 28(%esp)
	movl	%ebp, %eax
	sall	$6, %eax
	movl	8(%edx), %ecx
	movl	8(%esi), %edx
	sall	$23, %edx
	orl	%eax, %edx
	movl	28(%esp), %eax
	orl	$11, %edx
	sall	$14, %eax
	orl	%eax, %edx
	movl	%edi, %eax
	call	_luaK_code
	cmpl	$12, 40(%esp)
	je	L5964
L5946:
	movl	%ebp, 8(%esi)
	movl	$12, (%esi)
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_funcargs
	jmp	L5932
	.p2align 4,,10
L5942:
	call	_luaK_dischargevars
	jmp	L5943
	.p2align 4,,10
L5964:
	leal	48(%esp), %edx
	movl	%edi, %eax
	call	_freeexp.isra.26.part.27
	jmp	L5946
	.p2align 4,,10
L5963:
	leal	8(%esi), %edx
	movl	%edi, %eax
	call	_freeexp.isra.26.part.27
	jmp	L5945
	.cfi_endproc
LFE307:
	.section	.text.unlikely,"x"
LCOLDE416:
	.text
LHOTE416:
	.section .rdata,"dr"
LC417:
	.ascii "syntax error\0"
LC418:
	.ascii "variables in assignment\0"
	.section	.text.unlikely,"x"
LCOLDB419:
	.text
LHOTB419:
	.p2align 4,,15
	.def	_assignment;	.scl	3;	.type	32;	.endef
_assignment:
LFB316:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	8(%edx), %eax
	subl	$6, %eax
	cmpl	$3, %eax
	ja	L5990
	cmpl	$44, 16(%ebx)
	movl	%edx, %esi
	movl	%ecx, %ebp
	je	L5991
	leal	32(%esp), %edi
	movl	$61, %edx
	movl	%ebx, %eax
	call	_checknext
	movl	%edi, %edx
	movl	%ebx, %eax
	call	_explist1
	cmpl	%eax, %ebp
	movl	%eax, 28(%esp)
	je	L5992
	movl	%eax, %ecx
	movl	48(%ebx), %eax
	movl	%edi, (%esp)
	movl	%ebp, %edx
	call	_adjust_assign.isra.94
	movl	28(%esp), %ecx
	movl	48(%ebx), %eax
	cmpl	%ecx, %ebp
	jge	L5976
	movl	36(%eax), %edx
	subl	%ebp, %ecx
	subl	%ecx, %edx
	movl	%edx, 36(%eax)
	jmp	L5975
	.p2align 4,,10
L5991:
	movl	%ebx, %eax
	call	_luaX_next
	leal	40(%esp), %edx
	movl	%ebx, %eax
	movl	%esi, 32(%esp)
	call	_primaryexp
	cmpl	$6, 40(%esp)
	je	L5993
L5969:
	movl	52(%ebx), %eax
	movl	$200, %edx
	movzwl	52(%eax), %eax
	subl	%eax, %edx
	cmpl	%ebp, %edx
	jl	L5994
	leal	32(%esp), %edi
	leal	1(%ebp), %ecx
	movl	%ebx, %eax
	movl	%edi, %edx
	call	_assignment
	movl	48(%ebx), %eax
	movl	36(%eax), %edx
L5975:
	subl	$1, %edx
	movl	$-1, 48(%esp)
	movl	$-1, 52(%esp)
	movl	$12, 32(%esp)
	movl	%edx, 40(%esp)
L5988:
	leal	8(%esi), %edx
	movl	%edi, %ecx
	call	_luaK_storevar
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L5990:
	.cfi_restore_state
	movl	16(%ebx), %ecx
	movl	$LC417, %edx
	movl	%ebx, %eax
	call	_luaX_lexerror
	.p2align 4,,10
L5976:
	movl	36(%eax), %edx
	jmp	L5975
	.p2align 4,,10
L5992:
	movl	32(%esp), %edx
	movl	48(%ebx), %eax
	cmpl	$13, %edx
	je	L5995
	cmpl	$14, %edx
	jne	L5988
	movl	(%eax), %edx
	movl	40(%esp), %ecx
	movl	12(%edx), %edx
	leal	(%edx,%ecx,4), %ecx
	movl	(%ecx), %edx
	andl	$8388607, %edx
	orl	$16777216, %edx
	movl	%edx, (%ecx)
	movl	$11, 32(%esp)
	jmp	L5988
	.p2align 4,,10
L5994:
	movl	48(%ebx), %eax
	movl	$LC418, %ecx
	call	_errorlimit
	.p2align 4,,10
L5993:
	movl	48(%ebx), %edi
	xorl	%ecx, %ecx
	movl	36(%edi), %eax
	movl	%eax, 28(%esp)
	movl	%esi, %eax
	jmp	L5972
	.p2align 4,,10
L5970:
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L5996
L5972:
	cmpl	$9, 8(%eax)
	jne	L5970
	movl	48(%esp), %edx
	cmpl	%edx, 16(%eax)
	je	L5997
L5971:
	cmpl	%edx, 20(%eax)
	jne	L5970
	movl	28(%esp), %ecx
	movl	%ecx, 20(%eax)
	movl	$1, %ecx
	jmp	L5970
	.p2align 4,,10
L5996:
	testl	%ecx, %ecx
	je	L5969
	movl	12(%edi), %eax
	movl	36(%edi), %edx
	movl	8(%eax), %ecx
	movl	48(%esp), %eax
	sall	$6, %edx
	sall	$23, %eax
	orl	%eax, %edx
	movl	%edi, %eax
	call	_luaK_code
	movl	$1, %edx
	movl	%edi, %eax
	call	_luaK_checkstack
	addl	$1, 36(%edi)
	jmp	L5969
	.p2align 4,,10
L5997:
	movl	28(%esp), %ecx
	movl	%ecx, 16(%eax)
	movl	$1, %ecx
	movl	48(%esp), %edx
	jmp	L5971
	.p2align 4,,10
L5995:
	movl	(%eax), %edx
	movl	40(%esp), %ecx
	movl	$12, 32(%esp)
	movl	12(%edx), %edx
	movl	(%edx,%ecx,4), %edx
	shrl	$6, %edx
	andl	$255, %edx
	movl	%edx, 40(%esp)
	jmp	L5988
	.cfi_endproc
LFE316:
	.section	.text.unlikely,"x"
LCOLDE419:
	.text
LHOTE419:
	.section	.text.unlikely,"x"
LCOLDB420:
	.text
LHOTB420:
	.p2align 4,,15
	.def	_block;	.scl	3;	.type	32;	.endef
_block:
LFB314:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	48(%eax), %ebx
	movl	$-1, 8(%esp)
	movb	$0, 14(%esp)
	movb	$0, 13(%esp)
	movzbl	50(%ebx), %edx
	movb	%dl, 12(%esp)
	movl	20(%ebx), %edx
	movl	%edx, 4(%esp)
	leal	4(%esp), %edx
	movl	%edx, 20(%ebx)
	call	_chunk
	movl	%ebx, %eax
	call	_leaveblock
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE314:
	.section	.text.unlikely,"x"
LCOLDE420:
	.text
LHOTE420:
	.section	.text.unlikely,"x"
LCOLDB421:
	.text
LHOTB421:
	.p2align 4,,15
	.def	_forbody;	.scl	3;	.type	32;	.endef
_forbody:
LFB322:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	48(%eax), %ebx
	movl	%ecx, 20(%esp)
	movzbl	50(%ebx), %eax
	movl	(%ebx), %edx
	movl	24(%ebx), %ecx
	addl	$3, %eax
	movb	%al, 50(%ebx)
	movzbl	%al, %eax
	movl	24(%edx), %edx
	movzwl	166(%ebx,%eax,2), %eax
	cmpl	$259, 16(%esi)
	leal	(%eax,%eax,2), %eax
	movl	%ecx, 4(%edx,%eax,4)
	movzbl	50(%ebx), %eax
	movzwl	168(%ebx,%eax,2), %eax
	leal	(%eax,%eax,2), %eax
	movl	%ecx, 4(%edx,%eax,4)
	movzbl	50(%ebx), %eax
	movzwl	170(%ebx,%eax,2), %eax
	leal	(%eax,%eax,2), %eax
	movl	%ecx, 4(%edx,%eax,4)
	je	L6001
	movl	$LC388, 8(%esp)
	movl	$LC186, 4(%esp)
	movl	52(%esi), %eax
	movl	%eax, (%esp)
	call	_luaO_pushfstring
	movl	16(%esi), %ecx
	movl	%eax, %edx
	movl	%esi, %eax
	call	_luaX_lexerror
	.p2align 4,,10
L6001:
	movl	%esi, %eax
	call	_luaX_next
	movl	84(%esp), %ecx
	testl	%ecx, %ecx
	jne	L6019
	movl	%ebx, %eax
	sall	$6, %edi
	call	_luaK_jump
	movl	%edi, 28(%esp)
	movl	%eax, 24(%esp)
L6003:
	movzbl	50(%ebx), %eax
	movl	80(%esp), %edx
	movl	$-1, 40(%esp)
	movb	$0, 46(%esp)
	movb	$0, 45(%esp)
	movb	%al, 44(%esp)
	movl	20(%ebx), %eax
	movl	%eax, 36(%esp)
	leal	36(%esp), %eax
	movl	%eax, 20(%ebx)
	movl	48(%esi), %ecx
	movzbl	50(%ecx), %eax
	addb	80(%esp), %al
	testl	%edx, %edx
	movb	%al, 50(%ecx)
	je	L6007
	movl	(%ecx), %edx
	movl	24(%ecx), %edi
	movl	24(%edx), %ebp
	movl	80(%esp), %edx
	jmp	L6008
	.p2align 4,,10
L6020:
	movzbl	50(%ecx), %eax
L6008:
	movzbl	%al, %eax
	subl	%edx, %eax
	subl	$1, %edx
	movzwl	172(%ecx,%eax,2), %eax
	leal	(%eax,%eax,2), %eax
	movl	%edi, 4(%ebp,%eax,4)
	jne	L6020
L6007:
	movl	80(%esp), %edx
	movl	%ebx, %eax
	call	_luaK_checkstack
	movl	80(%esp), %eax
	addl	%eax, 36(%ebx)
	movl	%esi, %eax
	leal	32(%ebx), %esi
	call	_block
	movl	%ebx, %eax
	call	_leaveblock
	movl	24(%ebx), %eax
	movl	24(%esp), %ecx
	movl	%esi, %edx
	movl	%eax, 28(%ebx)
	movl	%ebx, %eax
	call	_luaK_concat
	movl	84(%esp), %eax
	testl	%eax, %eax
	je	L6021
	movl	12(%ebx), %eax
	movl	28(%esp), %edx
	movl	8(%eax), %ecx
	orl	$2147450911, %edx
	movl	%ebx, %eax
	call	_luaK_code
	movl	(%ebx), %edx
	movl	20(%esp), %edi
	movl	24(%ebx), %ecx
	movl	20(%edx), %edx
	movl	%edi, -4(%edx,%ecx,4)
	movl	24(%esp), %edi
	movl	%eax, %edx
	addl	$1, %edi
L6009:
	cmpl	%edi, 24(%ebx)
	je	L6022
	movl	%edi, 4(%esp)
	movl	$255, (%esp)
	movl	%edi, %ecx
	movl	%ebx, %eax
	call	_patchlistaux
L6000:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L6019:
	.cfi_restore_state
	movl	12(%ebx), %eax
	sall	$6, %edi
	movl	%edi, %edx
	movl	%edi, 28(%esp)
	orl	$2147450912, %edx
	movl	8(%eax), %ecx
	movl	%ebx, %eax
	call	_luaK_code
	movl	%eax, 24(%esp)
	jmp	L6003
	.p2align 4,,10
L6021:
	movl	80(%esp), %edx
	movl	12(%ebx), %eax
	sall	$14, %edx
	movl	8(%eax), %ecx
	movl	%ebx, %eax
	orl	$33, %edx
	orl	28(%esp), %edx
	call	_luaK_code
	movl	(%ebx), %eax
	movl	24(%ebx), %edx
	movl	20(%esp), %edi
	movl	20(%eax), %eax
	movl	%edi, -4(%eax,%edx,4)
	movl	24(%esp), %edi
	movl	%ebx, %eax
	call	_luaK_jump
	movl	%eax, %edx
	addl	$1, %edi
	jmp	L6009
	.p2align 4,,10
L6022:
	movl	%edx, %ecx
	movl	%edi, 28(%ebx)
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_luaK_concat
	jmp	L6000
	.cfi_endproc
LFE322:
	.section	.text.unlikely,"x"
LCOLDE421:
	.text
LHOTE421:
	.section .rdata,"dr"
LC422:
	.ascii "-+ #0\0"
	.align 4
LC423:
	.ascii "invalid format (repeated flags)\0"
	.align 4
LC424:
	.ascii "invalid format (width or precision too long)\0"
	.align 4
LC425:
	.ascii "invalid option '%%%c' to 'format'\0"
	.section	.text.unlikely,"x"
LCOLDB426:
	.text
LHOTB426:
	.p2align 4,,15
	.def	_str_format;	.scl	3;	.type	32;	.endef
_str_format:
LFB546:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$1132, %esp
	.cfi_def_cfa_offset 1152
	movl	1152(%esp), %esi
	movl	1152(%esp), %eax
	leal	56(%esp), %edx
	movl	8(%eax), %eax
	subl	12(%esi), %eax
	sarl	$4, %eax
	movl	%eax, 40(%esp)
	movl	%esi, %eax
	call	_luaL_checklstring.constprop.138
	movl	56(%esp), %esi
	movl	%eax, %ebx
	movl	$0, 600(%esp)
	movl	$1, 20(%esp)
	addl	%eax, %esi
	movl	1152(%esp), %eax
	movl	%eax, 604(%esp)
	leal	608(%esp), %eax
	movl	%eax, 596(%esp)
L6134:
	cmpl	%esi, %ebx
	jnb	L6141
L6113:
	cmpb	$37, (%ebx)
	je	L6026
	movl	596(%esp), %eax
	leal	1120(%esp), %ecx
	cmpl	%ecx, %eax
	jnb	L6142
L6027:
	leal	1(%eax), %edx
	addl	$1, %ebx
	movl	%edx, 596(%esp)
	movzbl	-1(%ebx), %edx
	cmpl	%esi, %ebx
	movb	%dl, (%eax)
	jb	L6113
L6141:
	leal	596(%esp), %eax
	call	_luaL_pushresult
	addl	$1132, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L6026:
	.cfi_restore_state
	movsbl	1(%ebx), %eax
	cmpb	$37, %al
	je	L6143
	addl	$1, 20(%esp)
	movl	20(%esp), %ecx
	cmpl	40(%esp), %ecx
	jg	L6144
L6031:
	addl	$1, %ebx
	testb	%al, %al
	movl	%ebx, %edi
	jne	L6116
	jmp	L6033
	.p2align 4,,10
L6036:
	addl	$1, %edi
	movsbl	(%edi), %eax
	testb	%al, %al
	je	L6135
L6116:
	movl	%eax, 4(%esp)
	movl	$LC422, (%esp)
	call	_strchr
	testl	%eax, %eax
	jne	L6036
L6135:
	movl	%edi, %eax
	subl	%ebx, %eax
	cmpl	$5, %eax
	ja	L6145
L6033:
	movzbl	(%edi), %eax
	movl	%eax, %edx
	subl	$48, %eax
	cmpl	$9, %eax
	ja	L6037
	movzbl	1(%edi), %edx
	movl	%edx, %eax
	subl	$48, %edx
	cmpl	$9, %edx
	ja	L6038
	movzbl	2(%edi), %eax
	leal	2(%edi), %edx
	cmpb	$46, %al
	je	L6100
L6039:
	subl	$48, %eax
	movl	%edx, %edi
	cmpl	$9, %eax
	ja	L6041
	movl	1152(%esp), %eax
	movl	$LC424, 4(%esp)
	movl	%eax, (%esp)
	call	_luaL_error
L6041:
	movl	%edi, %ebp
	movl	%ebx, 4(%esp)
	movb	$37, 66(%esp)
	subl	%ebx, %ebp
	leal	1(%edi), %ebx
	leal	1(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	67(%esp), %eax
	movl	%eax, (%esp)
	call	_strncpy
	movb	$0, 68(%esp,%ebp)
	movsbl	(%edi), %edx
	leal	-69(%edx), %eax
	cmpb	$51, %al
	ja	L6042
	movzbl	%al, %eax
	jmp	*L6044(,%eax,4)
	.section .rdata,"dr"
	.align 4
L6044:
	.long	L6043
	.long	L6042
	.long	L6043
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6045
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6046
	.long	L6047
	.long	L6043
	.long	L6043
	.long	L6043
	.long	L6042
	.long	L6047
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6042
	.long	L6045
	.long	L6042
	.long	L6048
	.long	L6042
	.long	L6049
	.long	L6042
	.long	L6045
	.long	L6042
	.long	L6042
	.long	L6045
	.text
	.p2align 4,,10
L6142:
	leal	596(%esp), %eax
	call	_luaL_prepbuffer
	movl	596(%esp), %eax
	jmp	L6027
	.p2align 4,,10
L6037:
	cmpb	$46, %dl
	jne	L6041
	movl	%edi, %edx
L6100:
	movzbl	1(%edx), %eax
	leal	1(%edx), %edi
	subl	$48, %eax
	cmpl	$9, %eax
	ja	L6041
	movzbl	2(%edx), %eax
	leal	2(%edx), %edi
	subl	$48, %eax
	cmpl	$9, %eax
	ja	L6041
	movzbl	3(%edx), %eax
	addl	$3, %edx
	jmp	L6039
	.p2align 4,,10
L6143:
	movl	596(%esp), %eax
	leal	1120(%esp), %ecx
	cmpl	%ecx, %eax
	jnb	L6146
L6030:
	leal	1(%eax), %edx
	addl	$2, %ebx
	movl	%edx, 596(%esp)
	movzbl	-1(%ebx), %edx
	movb	%dl, (%eax)
	jmp	L6134
	.p2align 4,,10
L6145:
	movl	1152(%esp), %eax
	movl	$LC423, 4(%esp)
	movl	%eax, (%esp)
	call	_luaL_error
	jmp	L6033
	.p2align 4,,10
L6144:
	movl	1152(%esp), %eax
	movl	%ecx, %edx
	movl	$LC222, %ecx
	call	_luaL_argerror
	movsbl	1(%ebx), %eax
	jmp	L6031
	.p2align 4,,10
L6049:
	movl	20(%esp), %edx
	movl	1152(%esp), %eax
	leal	60(%esp), %ecx
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, %ebp
	je	L6147
L6090:
	leal	66(%esp), %edi
	movl	$46, 4(%esp)
	movl	%edi, (%esp)
	call	_strchr
	testl	%eax, %eax
	je	L6148
L6091:
	movl	%ebp, 8(%esp)
	leal	84(%esp), %ebp
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	call	_sprintf
	.p2align 4,,10
L6054:
	movl	%ebp, %edi
L6092:
	movl	(%edi), %edx
	addl	$4, %edi
	leal	-16843009(%edx), %eax
	notl	%edx
	andl	%edx, %eax
	andl	$-2139062144, %eax
	je	L6092
	movl	%eax, %edx
	shrl	$16, %edx
	testl	$32896, %eax
	cmove	%edx, %eax
	leal	2(%edi), %edx
	movl	%eax, %ecx
	cmove	%edx, %edi
	addb	%al, %cl
	sbbl	$3, %edi
	subl	%ebp, %edi
	jne	L6114
	jmp	L6134
	.p2align 4,,10
L6095:
	leal	1(%eax), %edx
	addl	$1, %ebp
	subl	$1, %edi
	movl	%edx, 596(%esp)
	movzbl	-1(%ebp), %edx
	movb	%dl, (%eax)
	je	L6134
L6114:
	movl	596(%esp), %eax
	leal	1120(%esp), %ecx
	cmpl	%ecx, %eax
	jb	L6095
	leal	596(%esp), %eax
	call	_luaL_prepbuffer
	movl	596(%esp), %eax
	jmp	L6095
	.p2align 4,,10
L6048:
	movl	20(%esp), %edx
	movl	1152(%esp), %eax
	leal	84(%esp), %ecx
	call	_lua_tolstring
	testl	%eax, %eax
	movl	%eax, %edi
	je	L6149
L6067:
	movl	596(%esp), %eax
	leal	1120(%esp), %ecx
	cmpl	%ecx, %eax
	jnb	L6150
L6068:
	leal	1(%eax), %edx
	movl	%edx, 596(%esp)
	movb	$34, (%eax)
	jmp	L6137
	.p2align 4,,10
L6157:
	testb	%al, %al
	jne	L6151
	movl	596(%esp), %eax
	leal	1120(%esp), %ecx
	cmpl	%ecx, %eax
	jnb	L6152
L6080:
	leal	1(%eax), %edx
	leal	1120(%esp), %ecx
	movl	%edx, 596(%esp)
	movb	$92, (%eax)
	movl	596(%esp), %eax
	cmpl	%ecx, %eax
	jnb	L6153
L6081:
	leal	1(%eax), %edx
	leal	1120(%esp), %ecx
	movl	%edx, 596(%esp)
	movb	$48, (%eax)
	movl	596(%esp), %eax
	cmpl	%ecx, %eax
	jnb	L6154
L6082:
	leal	1(%eax), %edx
	leal	1120(%esp), %ecx
	movl	%edx, 596(%esp)
	movb	$48, (%eax)
	movl	596(%esp), %eax
	cmpl	%ecx, %eax
	jnb	L6155
L6083:
	leal	1(%eax), %edx
	movl	%edx, 596(%esp)
	movb	$48, (%eax)
L6079:
	addl	$1, %edi
L6137:
	movl	84(%esp), %eax
	leal	-1(%eax), %edx
	testl	%eax, %eax
	movl	%edx, 84(%esp)
	je	L6156
	movzbl	(%edi), %eax
	cmpb	$13, %al
	je	L6073
	jle	L6157
	cmpb	$34, %al
	je	L6076
	cmpb	$92, %al
	je	L6076
L6072:
	movl	596(%esp), %edx
	leal	1120(%esp), %eax
	cmpl	%eax, %edx
	jnb	L6138
L6086:
	leal	1(%edx), %eax
	movl	%eax, 596(%esp)
	movzbl	(%edi), %eax
	movb	%al, (%edx)
	jmp	L6079
	.p2align 4,,10
L6047:
	leal	66(%esp), %edi
	movl	$108, %ebp
	movl	%edi, (%esp)
	call	_strlen
	leal	-1(%edi,%eax), %edx
	movzbl	(%edx), %ecx
	movw	%bp, (%edx)
	movb	$0, 67(%esp,%eax)
	movl	20(%esp), %edx
	movb	%cl, 66(%esp,%eax)
	movl	1152(%esp), %eax
	call	_lua_tonumber
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jp	L6057
	je	L6158
L6057:
	fnstcw	46(%esp)
	movzwl	46(%esp), %eax
	leal	84(%esp), %ebp
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	movb	$12, %ah
	movw	%ax, 44(%esp)
	fldcw	44(%esp)
	fistpl	8(%esp)
	fldcw	46(%esp)
	call	_sprintf
	jmp	L6054
	.p2align 4,,10
L6046:
	movl	20(%esp), %edx
	movl	1152(%esp), %eax
	call	_lua_tonumber
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jp	L6052
	je	L6159
L6052:
	fnstcw	46(%esp)
	movzwl	46(%esp), %eax
	leal	84(%esp), %ebp
	movl	%ebp, (%esp)
	movb	$12, %ah
	movw	%ax, 44(%esp)
	leal	66(%esp), %eax
	fldcw	44(%esp)
	fistpl	8(%esp)
	fldcw	46(%esp)
	movl	%eax, 4(%esp)
	call	_sprintf
	jmp	L6054
	.p2align 4,,10
L6045:
	leal	66(%esp), %edi
	movl	$108, %ebp
	movl	%edi, (%esp)
	call	_strlen
	leal	-1(%edi,%eax), %edx
	movzbl	(%edx), %ecx
	movw	%bp, (%edx)
	movb	$0, 67(%esp,%eax)
	movl	20(%esp), %edx
	movb	%cl, 66(%esp,%eax)
	movl	1152(%esp), %eax
	call	_lua_tonumber
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jp	L6061
	je	L6160
L6061:
	fnstcw	46(%esp)
	movzwl	46(%esp), %eax
	leal	84(%esp), %ebp
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	movb	$12, %ah
	movw	%ax, 44(%esp)
	fldcw	44(%esp)
	fistpq	32(%esp)
	fldcw	46(%esp)
	movl	32(%esp), %eax
	movl	%eax, 8(%esp)
	call	_sprintf
	jmp	L6054
	.p2align 4,,10
L6043:
	movl	20(%esp), %edx
	movl	1152(%esp), %eax
	call	_lua_tonumber
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jp	L6065
	je	L6161
L6065:
	leal	66(%esp), %eax
	leal	84(%esp), %ebp
	fstpl	8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	call	_sprintf
	jmp	L6054
	.p2align 4,,10
L6042:
	movl	1152(%esp), %eax
	movl	%edx, 8(%esp)
	movl	$LC425, 4(%esp)
	movl	%eax, (%esp)
	call	_luaL_error
	addl	$1132, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L6073:
	.cfi_restore_state
	movl	596(%esp), %eax
	leal	1120(%esp), %ecx
	cmpl	%ecx, %eax
	jnb	L6162
L6077:
	leal	1(%eax), %edx
	leal	1120(%esp), %ecx
	movl	%edx, 596(%esp)
	movb	$92, (%eax)
	movl	596(%esp), %eax
	cmpl	%ecx, %eax
	jnb	L6163
L6078:
	leal	1(%eax), %edx
	movl	%edx, 596(%esp)
	movb	$114, (%eax)
	jmp	L6079
	.p2align 4,,10
L6151:
	cmpb	$10, %al
	jne	L6072
L6076:
	movl	596(%esp), %eax
	leal	1120(%esp), %ecx
	cmpl	%ecx, %eax
	jnb	L6164
L6084:
	leal	1(%eax), %edx
	movl	%edx, 596(%esp)
	movb	$92, (%eax)
	leal	1120(%esp), %eax
	movl	596(%esp), %edx
	cmpl	%eax, %edx
	jb	L6086
L6138:
	leal	596(%esp), %eax
	call	_luaL_prepbuffer
	movl	596(%esp), %edx
	jmp	L6086
	.p2align 4,,10
L6156:
	movl	596(%esp), %eax
	leal	1120(%esp), %ecx
	cmpl	%ecx, %eax
	jb	L6070
	leal	596(%esp), %eax
	call	_luaL_prepbuffer
	movl	596(%esp), %eax
L6070:
	leal	1(%eax), %edx
	movl	%edx, 596(%esp)
	movb	$34, (%eax)
	jmp	L6134
	.p2align 4,,10
L6146:
	leal	596(%esp), %eax
	call	_luaL_prepbuffer
	movl	596(%esp), %eax
	jmp	L6030
L6155:
	leal	596(%esp), %eax
	call	_luaL_prepbuffer
	movl	596(%esp), %eax
	jmp	L6083
L6163:
	leal	596(%esp), %eax
	call	_luaL_prepbuffer
	movl	596(%esp), %eax
	jmp	L6078
L6162:
	leal	596(%esp), %eax
	call	_luaL_prepbuffer
	movl	596(%esp), %eax
	jmp	L6077
L6164:
	leal	596(%esp), %eax
	call	_luaL_prepbuffer
	movl	596(%esp), %eax
	jmp	L6084
L6152:
	leal	596(%esp), %eax
	call	_luaL_prepbuffer
	movl	596(%esp), %eax
	jmp	L6080
L6154:
	leal	596(%esp), %eax
	call	_luaL_prepbuffer
	movl	596(%esp), %eax
	jmp	L6082
L6153:
	leal	596(%esp), %eax
	call	_luaL_prepbuffer
	movl	596(%esp), %eax
	jmp	L6081
L6161:
	movl	20(%esp), %edx
	movl	1152(%esp), %eax
	fstpl	24(%esp)
	call	_lua_isnumber
	testl	%eax, %eax
	fldl	24(%esp)
	jne	L6065
	fstp	%st(0)
	movl	20(%esp), %edx
	movl	1152(%esp), %eax
	movl	$LC226, %ecx
	call	_luaL_typerror
	fldl	24(%esp)
	jmp	L6065
L6159:
	movl	20(%esp), %edx
	movl	1152(%esp), %eax
	fstpl	24(%esp)
	call	_lua_isnumber
	testl	%eax, %eax
	fldl	24(%esp)
	jne	L6052
	fstp	%st(0)
	movl	20(%esp), %edx
	movl	1152(%esp), %eax
	movl	$LC226, %ecx
	call	_luaL_typerror
	fldl	24(%esp)
	jmp	L6052
L6158:
	movl	20(%esp), %edx
	movl	1152(%esp), %eax
	fstpl	24(%esp)
	call	_lua_isnumber
	testl	%eax, %eax
	fldl	24(%esp)
	jne	L6057
	fstp	%st(0)
	movl	20(%esp), %edx
	movl	1152(%esp), %eax
	movl	$LC226, %ecx
	call	_luaL_typerror
	fldl	24(%esp)
	jmp	L6057
L6160:
	movl	20(%esp), %edx
	movl	1152(%esp), %eax
	fstpl	24(%esp)
	call	_lua_isnumber
	testl	%eax, %eax
	fldl	24(%esp)
	jne	L6061
	fstp	%st(0)
	movl	20(%esp), %edx
	movl	1152(%esp), %eax
	movl	$LC226, %ecx
	call	_luaL_typerror
	fldl	24(%esp)
	jmp	L6061
L6148:
	cmpl	$99, 60(%esp)
	jbe	L6091
	movl	1152(%esp), %eax
	movl	20(%esp), %edx
	call	_lua_pushvalue
	leal	596(%esp), %eax
	call	_luaL_addvalue
	jmp	L6134
L6150:
	leal	596(%esp), %eax
	call	_luaL_prepbuffer
	movl	596(%esp), %eax
	jmp	L6068
L6147:
	movl	20(%esp), %edx
	movl	1152(%esp), %eax
	movl	$LC250, %ecx
	call	_luaL_typerror
	jmp	L6090
L6149:
	movl	20(%esp), %edx
	movl	1152(%esp), %eax
	movl	$LC250, %ecx
	call	_luaL_typerror
	jmp	L6067
L6038:
	leal	1(%edi), %edx
	cmpb	$46, %al
	movl	%edx, %edi
	jne	L6041
	jmp	L6100
	.cfi_endproc
LFE546:
	.section	.text.unlikely,"x"
LCOLDE426:
	.text
LHOTE426:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC427:
	.ascii "bit\0"
LC428:
	.ascii "arg\0"
LC429:
	.ascii "Error: %s\12\0"
	.section	.text.unlikely,"x"
LCOLDB430:
	.section	.text.startup,"x"
LHOTB430:
	.p2align 4,,15
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB563:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$64, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	___main
	movl	$376, 4(%esp)
	movl	$0, (%esp)
	call	_realloc
	testl	%eax, %eax
	je	L6166
	movl	%eax, %ebx
	movl	$0, (%eax)
	movb	$8, 4(%eax)
	movb	$33, 140(%eax)
	movb	$97, 5(%eax)
	leal	120(%eax), %eax
	xorl	%ecx, %ecx
	leal	276(%ebx), %edi
	xorl	%esi, %esi
	movl	%eax, 16(%ebx)
	movw	%cx, 54(%ebx)
	leal	240(%ebx), %eax
	leal	272(%ebx), %ecx
	andl	$-4, %edi
	movl	$0, 32(%ebx)
	movl	%eax, 256(%ebx)
	movl	%eax, 260(%ebx)
	leal	148(%ebx), %eax
	subl	%edi, %ecx
	movl	$0, 44(%ebx)
	movl	$0, 112(%ebx)
	addl	$36, %ecx
	movl	$0, 68(%ebx)
	movb	$0, 56(%ebx)
	shrl	$2, %ecx
	movl	$0, 60(%ebx)
	movb	$1, 57(%ebx)
	movl	$0, 64(%ebx)
	movl	$0, 104(%ebx)
	movl	$_f_luaopen, %edx
	movl	$0, 48(%ebx)
	movw	%si, 52(%ebx)
	movb	$0, 6(%ebx)
	movl	$0, 20(%ebx)
	movl	$0, 40(%ebx)
	movl	$0, 24(%ebx)
	movl	$0, 116(%ebx)
	movl	$0, 80(%ebx)
	movl	$_l_alloc, 132(%ebx)
	movl	$0, 136(%ebx)
	movl	%ebx, 232(%ebx)
	movl	$0, 184(%ebx)
	movl	$0, 128(%ebx)
	movl	$0, 124(%ebx)
	movl	$0, 120(%ebx)
	movl	$0, 224(%ebx)
	movl	%eax, 152(%ebx)
	xorl	%eax, %eax
	movl	$0, 172(%ebx)
	movl	$0, 180(%ebx)
	movl	$0, 208(%ebx)
	movb	$0, 141(%ebx)
	movl	%ebx, 148(%ebx)
	movl	$0, 144(%ebx)
	movl	$0, 156(%ebx)
	movl	$0, 160(%ebx)
	movl	$0, 164(%ebx)
	movl	$0, 168(%ebx)
	movl	$376, 188(%ebx)
	movl	$200, 200(%ebx)
	movl	$200, 204(%ebx)
	movl	$0, 196(%ebx)
	movl	$0, 272(%ebx)
	movl	$0, 304(%ebx)
	rep stosl
	movl	%ebx, %eax
	call	_luaD_rawrunprotected
	testl	%eax, %eax
	jne	L6205
	movl	16(%ebx), %eax
	movl	$_panic, 88(%eax)
L6185:
	movl	$_lualibs, %edi
	movl	$_luaopen_base, %edx
	jmp	L6170
	.p2align 4,,10
L6168:
	movl	%esi, (%esp)
	call	_strlen
	movl	%esi, %edx
	movl	%eax, %ecx
	movl	%ebx, %eax
	call	_lua_pushlstring
	movl	8(%ebx), %edx
L6169:
	subl	$32, %edx
	xorl	%ecx, %ecx
	addl	$8, %edi
	movl	%ebx, %eax
	call	_luaD_call
	movl	4(%edi), %edx
	testl	%edx, %edx
	je	L6206
L6170:
	movl	%ebx, %eax
	call	_lua_pushcclosure.constprop.136
	movl	(%edi), %esi
	testl	%esi, %esi
	jne	L6168
	movl	8(%ebx), %edx
	movl	$0, 8(%edx)
	addl	$16, %edx
	movl	%edx, 8(%ebx)
	jmp	L6169
	.p2align 4,,10
L6206:
	movl	$_bitlib, %ecx
	movl	$LC427, %edx
	movl	%ebx, %eax
	call	_luaI_openlib.constprop.121
	cmpl	$1, 8(%ebp)
	movl	$4, %edi
	jg	L6207
L6193:
	leal	-12(%ebp), %esp
	movl	%edi, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
L6207:
	.cfi_restore_state
	movl	16(%ebx), %eax
	movl	64(%eax), %ecx
	cmpl	%ecx, 68(%eax)
	jb	L6172
	movl	%ebx, %eax
	call	_luaC_step
L6172:
	movl	8(%ebx), %edi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	%ebx, %eax
	call	_luaH_new
	movl	%eax, (%edi)
	movl	8(%ebx), %eax
	movl	12(%ebp), %ecx
	movl	$5, 8(%edi)
	leal	16(%eax), %edx
	movl	%edx, 8(%ebx)
	movl	4(%ecx), %edx
	testl	%edx, %edx
	je	L6208
	xorl	%eax, %eax
	orl	$-1, %ecx
	movl	%edx, %edi
	repnz scasb
	movl	%ebx, %eax
	notl	%ecx
	subl	$1, %ecx
	call	_lua_pushlstring
L6174:
	xorl	%ecx, %ecx
	movl	$-2, %edx
	movl	%ebx, %eax
	call	_lua_rawseti
	movl	$LC428, %ecx
	movl	$-10002, %edx
	movl	%ebx, %eax
	call	_lua_setfield
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	%ebx, %eax
	call	_luaL_loadfile
	testl	%eax, %eax
	jne	L6175
	cmpl	$2, 8(%ebp)
	movl	$2, %edi
	jne	L6194
	jmp	L6182
	.p2align 4,,10
L6179:
	movl	%esi, (%esp)
	call	_strlen
	movl	%esi, %edx
	movl	%eax, %ecx
	movl	%ebx, %eax
	call	_lua_pushlstring
L6180:
	addl	$1, %edi
	cmpl	%edi, 8(%ebp)
	je	L6182
L6194:
	movl	12(%ebp), %eax
	movl	(%eax,%edi,4), %esi
	testl	%esi, %esi
	jne	L6179
	movl	8(%ebx), %eax
	movl	$0, 8(%eax)
	addl	$16, %eax
	movl	%eax, 8(%ebx)
	jmp	L6180
L6182:
	movl	8(%ebp), %eax
	leal	56(%esp), %edx
	movl	$0, 60(%esp)
	movl	20(%ebx), %edi
	leal	-1(%eax), %ecx
	movl	32(%ebx), %eax
	imull	$-16, %ecx, %ecx
	addl	8(%ebx), %ecx
	movl	%eax, 32(%esp)
	movzwl	52(%ebx), %eax
	movl	%ecx, 56(%esp)
	movl	%ecx, 44(%esp)
	movw	%ax, 38(%esp)
	movl	40(%ebx), %eax
	movl	%eax, 28(%esp)
	movzbl	57(%ebx), %eax
	movb	%al, 37(%esp)
	movl	116(%ebx), %eax
	movl	$0, 116(%ebx)
	movl	%eax, 40(%esp)
	movl	%ebx, %eax
	call	_luaD_rawrunprotected.constprop.146
	testl	%eax, %eax
	movl	%eax, %esi
	movl	44(%esp), %ecx
	jne	L6209
	movl	40(%esp), %eax
	movl	%eax, 116(%ebx)
	movl	16(%ebx), %eax
	movl	112(%eax), %ebx
	movl	32(%ebx), %edx
	movl	%ebx, %eax
	call	_luaF_close
	leal	16(%ebx), %eax
	movl	$1, %edx
	call	_luaC_separateudata.isra.12
	movl	$0, 116(%ebx)
	.p2align 4,,10
L6184:
	movl	40(%ebx), %eax
	xorl	%edx, %edx
	movl	%eax, 20(%ebx)
	movl	(%eax), %eax
	movw	%dx, 52(%ebx)
	movl	%eax, 8(%ebx)
	movl	%eax, 12(%ebx)
	xorl	%eax, %eax
	movw	%ax, 54(%ebx)
	movl	%ebx, %eax
	call	_luaD_rawrunprotected.constprop.147
	testl	%eax, %eax
	jne	L6184
	movl	%eax, %edi
	movl	%ebx, %eax
	call	_close_state
	jmp	L6193
L6209:
	subl	32(%esp), %ecx
	movl	%ebx, %eax
	subl	28(%esp), %edi
	addl	32(%ebx), %ecx
	movl	%ecx, %edx
	movl	%ecx, 44(%esp)
	call	_luaF_close
	movl	44(%esp), %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_luaD_seterrorobj
	movzwl	38(%esp), %eax
	movw	%ax, 52(%ebx)
	movl	40(%ebx), %eax
	addl	%edi, %eax
	cmpl	$20000, 48(%ebx)
	movl	(%eax), %edx
	movl	%eax, 20(%ebx)
	movl	12(%eax), %eax
	movl	%edx, 12(%ebx)
	movl	%eax, 24(%ebx)
	movzbl	37(%esp), %eax
	movb	%al, 57(%ebx)
	jle	L6183
	cmpl	$479975, %edi
	jg	L6183
	movl	$20000, %edx
	movl	%ebx, %eax
	call	_luaD_reallocCI
L6183:
	movl	40(%esp), %eax
	movl	%eax, 116(%ebx)
L6175:
	orl	$-1, %edx
	movl	%ebx, %eax
	movl	$1, %edi
	call	_lua_tolstring.constprop.139
	movl	%eax, 8(%esp)
	movl	__imp___iob, %eax
	movl	$LC429, 4(%esp)
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	jmp	L6193
L6208:
	movl	$0, 24(%eax)
	addl	$32, %eax
	movl	%eax, 8(%ebx)
	jmp	L6174
L6205:
	movl	%ebx, %eax
	call	_close_state
L6166:
	xorl	%ebx, %ebx
	jmp	L6185
	.cfi_endproc
LFE563:
	.section	.text.unlikely,"x"
LCOLDE430:
	.section	.text.startup,"x"
LHOTE430:
	.section .rdata,"dr"
LC431:
	.ascii "__newindex\0"
LC432:
	.ascii "__gc\0"
LC433:
	.ascii "__eq\0"
LC434:
	.ascii "__add\0"
LC435:
	.ascii "__sub\0"
LC436:
	.ascii "__mul\0"
LC437:
	.ascii "__div\0"
LC438:
	.ascii "__mod\0"
LC439:
	.ascii "__pow\0"
LC440:
	.ascii "__unm\0"
LC441:
	.ascii "__len\0"
LC442:
	.ascii "__lt\0"
LC443:
	.ascii "__le\0"
LC444:
	.ascii "__concat\0"
LC445:
	.ascii "__call\0"
	.align 32
_luaT_eventname.6010:
	.long	LC365
	.long	LC431
	.long	LC432
	.long	LC355
	.long	LC433
	.long	LC434
	.long	LC435
	.long	LC436
	.long	LC437
	.long	LC438
	.long	LC439
	.long	LC440
	.long	LC441
	.long	LC442
	.long	LC443
	.long	LC444
	.long	LC445
	.align 32
_log_2.5931:
	.byte	0
	.byte	1
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
LC446:
	.ascii "tobit\0"
LC447:
	.ascii "bnot\0"
LC448:
	.ascii "band\0"
LC449:
	.ascii "bor\0"
LC450:
	.ascii "bxor\0"
LC451:
	.ascii "lshift\0"
LC452:
	.ascii "rshift\0"
LC453:
	.ascii "arshift\0"
LC454:
	.ascii "rol\0"
LC455:
	.ascii "ror\0"
LC456:
	.ascii "bswap\0"
LC457:
	.ascii "tohex\0"
	.align 32
_bitlib:
	.long	LC446
	.long	_tobit
	.long	LC447
	.long	_bnot
	.long	LC448
	.long	_band
	.long	LC449
	.long	_bor
	.long	LC450
	.long	_bxor
	.long	LC451
	.long	_lshift
	.long	LC452
	.long	_rshift
	.long	LC453
	.long	_arshift
	.long	LC454
	.long	_rol
	.long	LC455
	.long	_ror
	.long	LC456
	.long	_bswap
	.long	LC457
	.long	_tohex
	.long	0
	.long	0
	.align 32
_lualibs:
	.long	LC75
	.long	_luaopen_base
	.long	LC241
	.long	_luaopen_table
	.long	LC360
	.long	_luaopen_io
	.long	LC367
	.long	_luaopen_os
	.long	LC250
	.long	_luaopen_string
	.long	0
	.long	0
LC458:
	.ascii "byte\0"
LC459:
	.ascii "char\0"
LC460:
	.ascii "find\0"
LC461:
	.ascii "format\0"
LC462:
	.ascii "gmatch\0"
LC463:
	.ascii "gsub\0"
LC464:
	.ascii "lower\0"
LC465:
	.ascii "match\0"
LC466:
	.ascii "rep\0"
LC467:
	.ascii "sub\0"
LC468:
	.ascii "upper\0"
	.align 32
_strlib:
	.long	LC458
	.long	_str_byte
	.long	LC459
	.long	_str_char
	.long	LC460
	.long	_str_find
	.long	LC461
	.long	_str_format
	.long	LC462
	.long	_gmatch
	.long	LC463
	.long	_str_gsub
	.long	LC464
	.long	_str_lower
	.long	LC465
	.long	_str_match
	.long	LC466
	.long	_str_rep
	.long	LC467
	.long	_str_sub
	.long	LC468
	.long	_str_upper
	.long	0
	.long	0
LC469:
	.ascii "exit\0"
LC470:
	.ascii "remove\0"
	.align 4
_syslib:
	.long	LC469
	.long	_os_exit
	.long	LC470
	.long	_os_remove
	.long	0
	.long	0
LC471:
	.ascii "close\0"
LC472:
	.ascii "flush\0"
LC473:
	.ascii "lines\0"
LC474:
	.ascii "write\0"
	.align 32
_flib:
	.long	LC471
	.long	_io_close
	.long	LC472
	.long	_f_flush
	.long	LC473
	.long	_f_lines
	.long	LC204
	.long	_f_read
	.long	LC474
	.long	_f_write
	.long	LC432
	.long	_io_gc
	.long	0
	.long	0
LC475:
	.ascii "type\0"
	.align 32
_iolib:
	.long	LC471
	.long	_io_close
	.long	LC472
	.long	_io_flush
	.long	LC340
	.long	_io_input
	.long	LC473
	.long	_io_lines
	.long	LC201
	.long	_io_open
	.long	LC305
	.long	_io_output
	.long	LC204
	.long	_io_read
	.long	LC475
	.long	_io_type
	.long	LC474
	.long	_io_write
	.long	0
	.long	0
LC476:
	.ascii "concat\0"
LC477:
	.ascii "insert\0"
LC478:
	.ascii "sort\0"
	.align 32
_tab_funcs:
	.long	LC476
	.long	_tconcat
	.long	LC477
	.long	_tinsert
	.long	LC470
	.long	_tremove
	.long	LC478
	.long	_sort
	.long	0
	.long	0
LC479:
	.ascii "assert\0"
LC480:
	.ascii "error\0"
LC481:
	.ascii "loadfile\0"
LC482:
	.ascii "loadstring\0"
LC483:
	.ascii "next\0"
LC484:
	.ascii "pcall\0"
LC485:
	.ascii "rawget\0"
LC486:
	.ascii "setfenv\0"
LC487:
	.ascii "setmetatable\0"
LC488:
	.ascii "tonumber\0"
LC489:
	.ascii "unpack\0"
	.align 32
_base_funcs:
	.long	LC479
	.long	_luaB_assert
	.long	LC480
	.long	_luaB_error
	.long	LC481
	.long	_luaB_loadfile
	.long	LC482
	.long	_luaB_loadstring
	.long	LC483
	.long	_luaB_next
	.long	LC484
	.long	_luaB_pcall
	.long	LC485
	.long	_luaB_rawget
	.long	LC486
	.long	_luaB_setfenv
	.long	LC487
	.long	_luaB_setmetatable
	.long	LC488
	.long	_luaB_tonumber
	.long	LC475
	.long	_luaB_type
	.long	LC489
	.long	_luaB_unpack
	.long	0
	.long	0
	.align 4
_priority:
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	10
	.byte	9
	.byte	5
	.byte	4
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	1
	.byte	1
LC490:
	.ascii "and\0"
LC491:
	.ascii "break\0"
LC492:
	.ascii "else\0"
LC493:
	.ascii "elseif\0"
LC494:
	.ascii "end\0"
LC495:
	.ascii "false\0"
LC496:
	.ascii "for\0"
LC497:
	.ascii "if\0"
LC498:
	.ascii "local\0"
LC499:
	.ascii "nil\0"
LC500:
	.ascii "not\0"
LC501:
	.ascii "or\0"
LC502:
	.ascii "repeat\0"
LC503:
	.ascii "return\0"
LC504:
	.ascii "true\0"
LC505:
	.ascii "until\0"
LC506:
	.ascii "while\0"
LC507:
	.ascii "..\0"
LC508:
	.ascii "...\0"
LC509:
	.ascii "==\0"
LC510:
	.ascii ">=\0"
LC511:
	.ascii "<=\0"
LC512:
	.ascii "~=\0"
LC513:
	.ascii "<number>\0"
LC514:
	.ascii "<string>\0"
	.align 32
_luaX_tokens:
	.long	LC490
	.long	LC491
	.long	LC388
	.long	LC492
	.long	LC493
	.long	LC494
	.long	LC495
	.long	LC496
	.long	LC379
	.long	LC497
	.long	LC396
	.long	LC498
	.long	LC499
	.long	LC500
	.long	LC501
	.long	LC502
	.long	LC503
	.long	LC387
	.long	LC504
	.long	LC505
	.long	LC506
	.long	LC507
	.long	LC508
	.long	LC509
	.long	LC510
	.long	LC511
	.long	LC512
	.long	LC513
	.long	LC389
	.long	LC514
	.long	LC178
	.long	0
	.align 32
_dummynode_:
	.space 32
	.align 32
_luaP_opmodes:
	.byte	96
	.byte	113
	.byte	84
	.byte	96
	.byte	80
	.byte	113
	.byte	108
	.byte	49
	.byte	16
	.byte	60
	.byte	84
	.byte	108
	.byte	124
	.byte	124
	.byte	124
	.byte	124
	.byte	124
	.byte	124
	.byte	96
	.byte	96
	.byte	96
	.byte	104
	.byte	34
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-28
	.byte	-28
	.byte	84
	.byte	84
	.byte	16
	.byte	98
	.byte	98
	.byte	-124
	.byte	20
	.byte	0
	.byte	81
	.byte	80
LC515:
	.ascii "boolean\0"
LC516:
	.ascii "userdata\0"
LC517:
	.ascii "thread\0"
LC518:
	.ascii "proto\0"
LC519:
	.ascii "upval\0"
	.align 32
_luaT_typenames:
	.long	LC499
	.long	LC515
	.long	LC516
	.long	LC226
	.long	LC250
	.long	LC241
	.long	LC379
	.long	LC516
	.long	LC517
	.long	LC518
	.long	LC519
	.align 8
_luaO_nilobject_:
	.space 16
	.globl	__CRT_glob
	.bss
	.align 4
__CRT_glob:
	.space 4
	.section .rdata,"dr"
	.align 4
LC225:
	.long	1505755136
	.ident	"GCC: (Rev1, Built by MSYS2 project) 5.3.0"
	.def	_strcspn;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_strncat;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_strcat;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	_realloc;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	__setjmp3;	.scl	2;	.type	32;	.endef
	.def	_feof;	.scl	2;	.type	32;	.endef
	.def	_fread;	.scl	2;	.type	32;	.endef
	.def	___strtod;	.scl	2;	.type	32;	.endef
	.def	_strtoul;	.scl	2;	.type	32;	.endef
	.def	_floor;	.scl	2;	.type	32;	.endef
	.def	_strcoll;	.scl	2;	.type	32;	.endef
	.def	_pow;	.scl	2;	.type	32;	.endef
	.def	_longjmp;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_strchr;	.scl	2;	.type	32;	.endef
	.def	_strerror;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_getc;	.scl	2;	.type	32;	.endef
	.def	_freopen;	.scl	2;	.type	32;	.endef
	.def	_ungetc;	.scl	2;	.type	32;	.endef
	.def	_ferror;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_remove;	.scl	2;	.type	32;	.endef
	.def	_fflush;	.scl	2;	.type	32;	.endef
	.def	_strpbrk;	.scl	2;	.type	32;	.endef
	.def	_memchr;	.scl	2;	.type	32;	.endef
	.def	_fgets;	.scl	2;	.type	32;	.endef
	.def	_clearerr;	.scl	2;	.type	32;	.endef
	.def	_fscanf;	.scl	2;	.type	32;	.endef
