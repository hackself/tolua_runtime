	.file	"wsocket.c"
	.section	.text.unlikely,"x"
LCOLDB3:
	.text
LHOTB3:
	.p2align 4,,15
	.def	_socket_waitfd.constprop.0;	.scl	3;	.type	32;	.endef
_socket_waitfd.constprop.0:
LFB145:
	.cfi_startproc
	subl	$588, %esp
	.cfi_def_cfa_offset 592
	fldl	(%edx)
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L9
	je	L7
L9:
	movl	(%eax), %eax
	movl	%edx, (%esp)
	movl	$1, 56(%esp)
	movl	$1, 316(%esp)
	movl	%eax, 60(%esp)
	movl	%eax, 320(%esp)
	call	_timeout_get
	fldz
	fxch	%st(1)
	xorl	%eax, %eax
	fucomi	%st(1), %st
	fstp	%st(1)
	jb	L16
	fnstcw	46(%esp)
	movzwl	46(%esp), %eax
	movb	$12, %ah
	movw	%ax, 44(%esp)
	fldcw	44(%esp)
	fistl	40(%esp)
	fldcw	46(%esp)
	movl	40(%esp), %eax
	movl	%eax, 36(%esp)
	movl	%eax, 48(%esp)
	leal	48(%esp), %eax
	fildl	36(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC1
	fldcw	44(%esp)
	fistpl	52(%esp)
	fldcw	46(%esp)
	jmp	L4
	.p2align 4,,10
L16:
	fstp	%st(0)
L4:
	movl	%eax, 16(%esp)
	leal	316(%esp), %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	%eax, 12(%esp)
	leal	56(%esp), %eax
	movl	%eax, 8(%esp)
	call	*__imp__select@20
	.cfi_def_cfa_offset 572
	xorl	%edx, %edx
	subl	$20, %esp
	.cfi_def_cfa_offset 592
	testl	%eax, %eax
	sete	%dl
	negl	%edx
	cmpl	$-1, %eax
	je	L15
L12:
	movl	%edx, %eax
	addl	$588, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L15:
	.cfi_restore_state
	call	*__imp__WSAGetLastError@0
	movl	%eax, %edx
	jmp	L12
	.p2align 4,,10
L7:
	movl	$-1, %edx
	jmp	L12
	.cfi_endproc
LFE145:
	.section	.text.unlikely,"x"
LCOLDE3:
	.text
LHOTE3:
	.section	.text.unlikely,"x"
LCOLDB4:
	.text
LHOTB4:
	.p2align 4,,15
	.def	_socket_waitfd.constprop.1;	.scl	3;	.type	32;	.endef
_socket_waitfd.constprop.1:
LFB144:
	.cfi_startproc
	subl	$332, %esp
	.cfi_def_cfa_offset 336
	fldl	(%edx)
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L25
	je	L23
L25:
	movl	(%eax), %eax
	movl	%edx, (%esp)
	movl	$1, 60(%esp)
	movl	%eax, 64(%esp)
	call	_timeout_get
	fldz
	fxch	%st(1)
	xorl	%eax, %eax
	fucomi	%st(1), %st
	fstp	%st(1)
	jb	L31
	fnstcw	46(%esp)
	movzwl	46(%esp), %eax
	movb	$12, %ah
	movw	%ax, 44(%esp)
	fldcw	44(%esp)
	fistl	40(%esp)
	fldcw	46(%esp)
	movl	40(%esp), %eax
	movl	%eax, 36(%esp)
	movl	%eax, 52(%esp)
	leal	52(%esp), %eax
	fildl	36(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC1
	fldcw	44(%esp)
	fistpl	56(%esp)
	fldcw	46(%esp)
	jmp	L20
	.p2align 4,,10
L31:
	fstp	%st(0)
L20:
	movl	%eax, 16(%esp)
	leal	60(%esp), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__select@20
	.cfi_def_cfa_offset 316
	xorl	%edx, %edx
	subl	$20, %esp
	.cfi_def_cfa_offset 336
	testl	%eax, %eax
	sete	%dl
	negl	%edx
	cmpl	$-1, %eax
	je	L30
L28:
	movl	%edx, %eax
	addl	$332, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L30:
	.cfi_restore_state
	call	*__imp__WSAGetLastError@0
	movl	%eax, %edx
	jmp	L28
	.p2align 4,,10
L23:
	movl	$-1, %edx
	jmp	L28
	.cfi_endproc
LFE144:
	.section	.text.unlikely,"x"
LCOLDE4:
	.text
LHOTE4:
	.section	.text.unlikely,"x"
LCOLDB5:
	.text
LHOTB5:
	.p2align 4,,15
	.globl	_socket_open
	.def	_socket_open;	.scl	2;	.type	32;	.endef
_socket_open:
LFB120:
	.cfi_startproc
	subl	$428, %esp
	.cfi_def_cfa_offset 432
	leal	16(%esp), %eax
	movl	$2, (%esp)
	movl	%eax, 4(%esp)
	call	*__imp__WSAStartup@8
	.cfi_def_cfa_offset 424
	xorl	%edx, %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 432
	testl	%eax, %eax
	jne	L33
	movzwl	16(%esp), %eax
	cmpb	$2, %al
	je	L39
	cmpb	$1, %al
	jne	L35
	shrw	$8, %ax
	cmpw	$1, %ax
	je	L37
L35:
	call	*__imp__WSACleanup@0
	xorl	%edx, %edx
L33:
	movl	%edx, %eax
	addl	$428, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L39:
	.cfi_restore_state
	shrw	$8, %ax
	testw	%ax, %ax
	jne	L35
L37:
	movl	$1, %edx
	addl	$428, %esp
	.cfi_def_cfa_offset 4
	movl	%edx, %eax
	ret
	.cfi_endproc
LFE120:
	.section	.text.unlikely,"x"
LCOLDE5:
	.text
LHOTE5:
	.section	.text.unlikely,"x"
LCOLDB6:
	.text
LHOTB6:
	.p2align 4,,15
	.globl	_socket_close
	.def	_socket_close;	.scl	2;	.type	32;	.endef
_socket_close:
LFB121:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	call	*__imp__WSACleanup@0
	movl	$1, %eax
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE121:
	.section	.text.unlikely,"x"
LCOLDE6:
	.text
LHOTE6:
	.section	.text.unlikely,"x"
LCOLDB7:
	.text
LHOTB7:
	.p2align 4,,15
	.globl	_socket_waitfd
	.def	_socket_waitfd;	.scl	2;	.type	32;	.endef
_socket_waitfd:
LFB122:
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
	subl	$860, %esp
	.cfi_def_cfa_offset 880
	movl	888(%esp), %eax
	movl	880(%esp), %esi
	fldl	(%eax)
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L43
	je	L52
L43:
	xorl	%edi, %edi
	testb	$1, 884(%esp)
	je	L46
	movl	(%esi), %edx
	leal	68(%esp), %edi
	movl	$1, 68(%esp)
	movl	%edx, 72(%esp)
L46:
	xorl	%ebp, %ebp
	testb	$2, 884(%esp)
	je	L47
	movl	(%esi), %edx
	leal	328(%esp), %ebp
	movl	$1, 328(%esp)
	movl	%edx, 332(%esp)
L47:
	xorl	%ebx, %ebx
	testb	$6, 884(%esp)
	jne	L69
L48:
	movl	%eax, (%esp)
	call	_timeout_get
	fldz
	fxch	%st(1)
	xorl	%eax, %eax
	fucomi	%st(1), %st
	fstp	%st(1)
	jb	L72
	fnstcw	46(%esp)
	movzwl	46(%esp), %eax
	movb	$12, %ah
	movw	%ax, 44(%esp)
	fldcw	44(%esp)
	fistl	40(%esp)
	fldcw	46(%esp)
	movl	40(%esp), %eax
	movl	%eax, 36(%esp)
	movl	%eax, 60(%esp)
	leal	60(%esp), %eax
	fildl	36(%esp)
	fsubrp	%st, %st(1)
	fmuls	LC1
	fldcw	44(%esp)
	fistpl	64(%esp)
	fldcw	46(%esp)
	jmp	L49
	.p2align 4,,10
L72:
	fstp	%st(0)
L49:
	movl	%eax, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	%edi, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__select@20
	.cfi_def_cfa_offset 860
	subl	$20, %esp
	.cfi_def_cfa_offset 880
	cmpl	$-1, %eax
	je	L70
	testl	%eax, %eax
	je	L52
	cmpl	$6, 884(%esp)
	je	L71
L53:
	xorl	%eax, %eax
L67:
	addl	$860, %esp
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
L69:
	.cfi_restore_state
	movl	(%esi), %edx
	movl	$1, 588(%esp)
	leal	588(%esp), %ebx
	movl	%edx, 592(%esp)
	jmp	L48
	.p2align 4,,10
L71:
	leal	588(%esp), %eax
	movl	%eax, 4(%esp)
	movl	(%esi), %eax
	movl	%eax, (%esp)
	call	___WSAFDIsSet@8
	.cfi_def_cfa_offset 872
	subl	$8, %esp
	.cfi_def_cfa_offset 880
	testl	%eax, %eax
	je	L53
	movl	$-2, %eax
	jmp	L67
	.p2align 4,,10
L70:
	call	*__imp__WSAGetLastError@0
	jmp	L67
	.p2align 4,,10
L52:
	movl	$-1, %eax
	jmp	L67
	.cfi_endproc
LFE122:
	.section	.text.unlikely,"x"
LCOLDE7:
	.text
LHOTE7:
	.section	.text.unlikely,"x"
LCOLDB9:
	.text
LHOTB9:
	.p2align 4,,15
	.globl	_socket_select
	.def	_socket_select;	.scl	2;	.type	32;	.endef
_socket_select:
LFB123:
	.cfi_startproc
	subl	$92, %esp
	.cfi_def_cfa_offset 96
	movl	112(%esp), %eax
	movl	%eax, (%esp)
	call	_timeout_get
	fnstcw	62(%esp)
	movzwl	62(%esp), %eax
	movb	$12, %ah
	movw	%ax, 60(%esp)
	fldcw	60(%esp)
	fistl	56(%esp)
	fldcw	62(%esp)
	movl	56(%esp), %eax
	movl	%eax, 44(%esp)
	movl	%eax, 72(%esp)
	fildl	44(%esp)
	movl	96(%esp), %eax
	fsubr	%st(1), %st
	testl	%eax, %eax
	fmuls	LC1
	fldcw	60(%esp)
	fistpl	76(%esp)
	fldcw	62(%esp)
	je	L80
	fldz
	fxch	%st(1)
	leal	72(%esp), %eax
	movl	$0, %edx
	movl	$0, (%esp)
	fucomip	%st(1), %st
	fstp	%st(0)
	cmovb	%edx, %eax
	movl	%eax, 16(%esp)
	movl	108(%esp), %eax
	movl	%eax, 12(%esp)
	movl	104(%esp), %eax
	movl	%eax, 8(%esp)
	movl	100(%esp), %eax
	movl	%eax, 4(%esp)
	call	*__imp__select@20
	.cfi_def_cfa_offset 76
	subl	$20, %esp
	.cfi_def_cfa_offset 96
	addl	$92, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L80:
	.cfi_restore_state
	fmuls	LC8
	fldcw	60(%esp)
	fistpq	48(%esp)
	fldcw	62(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	*__imp__Sleep@4
	.cfi_def_cfa_offset 92
	subl	$4, %esp
	.cfi_def_cfa_offset 96
	xorl	%eax, %eax
	addl	$92, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE123:
	.section	.text.unlikely,"x"
LCOLDE9:
	.text
LHOTE9:
	.section	.text.unlikely,"x"
LCOLDB10:
	.text
LHOTB10:
	.p2align 4,,15
	.globl	_socket_destroy
	.def	_socket_destroy;	.scl	2;	.type	32;	.endef
_socket_destroy:
LFB124:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$40, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	(%ebx), %eax
	cmpl	$-1, %eax
	je	L81
	leal	28(%esp), %edx
	movl	$0, 28(%esp)
	movl	$-2147195266, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	call	*__imp__ioctlsocket@12
	.cfi_def_cfa_offset 36
	movl	(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, (%esp)
	call	*__imp__closesocket@4
	.cfi_def_cfa_offset 44
	movl	$-1, (%ebx)
	subl	$4, %esp
	.cfi_def_cfa_offset 48
L81:
	addl	$40, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE124:
	.section	.text.unlikely,"x"
LCOLDE10:
	.text
LHOTE10:
	.section	.text.unlikely,"x"
LCOLDB11:
	.text
LHOTB11:
	.p2align 4,,15
	.globl	_socket_shutdown
	.def	_socket_shutdown;	.scl	2;	.type	32;	.endef
_socket_shutdown:
LFB125:
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
	subl	$32, %esp
	.cfi_def_cfa_offset 48
	movl	__imp__ioctlsocket@12, %esi
	movl	48(%esp), %ebx
	leal	28(%esp), %edi
	movl	$-2147195266, 4(%esp)
	movl	$0, 28(%esp)
	movl	%edi, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	*%esi
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %eax
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	*__imp__shutdown@8
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	%edi, 8(%esp)
	movl	$-2147195266, 4(%esp)
	movl	(%ebx), %eax
	movl	$1, 28(%esp)
	movl	%eax, (%esp)
	call	*%esi
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
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
LFE125:
	.section	.text.unlikely,"x"
LCOLDE11:
	.text
LHOTE11:
	.section	.text.unlikely,"x"
LCOLDB12:
	.text
LHOTB12:
	.p2align 4,,15
	.globl	_socket_create
	.def	_socket_create;	.scl	2;	.type	32;	.endef
_socket_create:
LFB126:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	44(%esp), %eax
	movl	32(%esp), %ebx
	movl	%eax, 8(%esp)
	movl	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	*__imp__socket@12
	.cfi_def_cfa_offset 20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	cmpl	$-1, %eax
	movl	%eax, (%ebx)
	je	L92
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L92:
	.cfi_restore_state
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	*__imp__WSAGetLastError@0
	.cfi_endproc
LFE126:
	.section	.text.unlikely,"x"
LCOLDE12:
	.text
LHOTE12:
	.section	.text.unlikely,"x"
LCOLDB13:
	.text
LHOTB13:
	.p2align 4,,15
	.globl	_socket_connect
	.def	_socket_connect;	.scl	2;	.type	32;	.endef
_socket_connect:
LFB127:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$56, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %ebx
	movl	(%ebx), %eax
	cmpl	$-1, %eax
	je	L97
	movl	72(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	68(%esp), %edx
	movl	%edx, 4(%esp)
	call	*__imp__connect@12
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	L105
L94:
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L105:
	.cfi_restore_state
	call	*__imp__WSAGetLastError@0
	leal	-10035(%eax), %edx
	movl	%eax, 40(%esp)
	cmpl	$1, %edx
	ja	L94
	movl	76(%esp), %eax
	fldl	(%eax)
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L100
	je	L98
L100:
	movl	%eax, 8(%esp)
	movl	$6, 4(%esp)
	movl	%ebx, (%esp)
	call	_socket_waitfd
	cmpl	$-2, %eax
	movl	%eax, 40(%esp)
	jne	L94
	movl	$4, 44(%esp)
	movl	$10, (%esp)
	call	*__imp__Sleep@4
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	leal	44(%esp), %eax
	movl	$4103, 8(%esp)
	movl	$65535, 4(%esp)
	movl	%eax, 16(%esp)
	leal	40(%esp), %eax
	movl	%eax, 12(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	*__imp__getsockopt@20
	.cfi_def_cfa_offset 44
	subl	$20, %esp
	.cfi_def_cfa_offset 64
	movl	$-3, %edx
	movl	40(%esp), %eax
	testl	%eax, %eax
	cmovle	%edx, %eax
	jmp	L94
	.p2align 4,,10
L97:
	movl	$-2, %eax
	jmp	L94
	.p2align 4,,10
L98:
	movl	$-1, %eax
	jmp	L94
	.cfi_endproc
LFE127:
	.section	.text.unlikely,"x"
LCOLDE13:
	.text
LHOTE13:
	.section	.text.unlikely,"x"
LCOLDB14:
	.text
LHOTB14:
	.p2align 4,,15
	.globl	_socket_bind
	.def	_socket_bind;	.scl	2;	.type	32;	.endef
_socket_bind:
LFB128:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xorl	%ebp, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	__imp__ioctlsocket@12, %esi
	movl	64(%esp), %ebx
	leal	28(%esp), %edi
	movl	$-2147195266, 4(%esp)
	movl	$0, 28(%esp)
	movl	%edi, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	*%esi
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	movl	72(%esp), %eax
	movl	%eax, 8(%esp)
	movl	68(%esp), %eax
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	*__imp__bind@12
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	js	L111
L107:
	movl	%edi, 8(%esp)
	movl	$-2147195266, 4(%esp)
	movl	(%ebx), %eax
	movl	$1, 28(%esp)
	movl	%eax, (%esp)
	call	*%esi
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	movl	%ebp, %eax
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
L111:
	.cfi_restore_state
	call	*__imp__WSAGetLastError@0
	movl	%eax, %ebp
	jmp	L107
	.cfi_endproc
LFE128:
	.section	.text.unlikely,"x"
LCOLDE14:
	.text
LHOTE14:
	.section	.text.unlikely,"x"
LCOLDB15:
	.text
LHOTB15:
	.p2align 4,,15
	.globl	_socket_listen
	.def	_socket_listen;	.scl	2;	.type	32;	.endef
_socket_listen:
LFB129:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xorl	%ebp, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	__imp__ioctlsocket@12, %esi
	movl	64(%esp), %ebx
	leal	28(%esp), %edi
	movl	$-2147195266, 4(%esp)
	movl	$0, 28(%esp)
	movl	%edi, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	*%esi
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	movl	68(%esp), %eax
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	*__imp__listen@8
	.cfi_def_cfa_offset 56
	subl	$8, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	js	L117
L113:
	movl	%edi, 8(%esp)
	movl	$-2147195266, 4(%esp)
	movl	(%ebx), %eax
	movl	$1, 28(%esp)
	movl	%eax, (%esp)
	call	*%esi
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	movl	%ebp, %eax
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
L117:
	.cfi_restore_state
	call	*__imp__WSAGetLastError@0
	movl	%eax, %ebp
	jmp	L113
	.cfi_endproc
LFE129:
	.section	.text.unlikely,"x"
LCOLDE15:
	.text
LHOTE15:
	.section	.text.unlikely,"x"
LCOLDB16:
	.text
LHOTB16:
	.p2align 4,,15
	.globl	_socket_accept
	.def	_socket_accept;	.scl	2;	.type	32;	.endef
_socket_accept:
LFB130:
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
	movl	48(%esp), %ebx
	movl	52(%esp), %esi
	movl	56(%esp), %edi
	movl	60(%esp), %ebp
	movl	(%ebx), %eax
	cmpl	$-1, %eax
	jne	L121
	jmp	L122
	.p2align 4,,10
L131:
	call	*__imp__WSAGetLastError@0
	cmpl	$10035, %eax
	je	L126
	cmpl	$10053, %eax
	jne	L119
L126:
	movl	64(%esp), %edx
	movl	%ebx, %eax
	call	_socket_waitfd.constprop.1
	testl	%eax, %eax
	jne	L119
	movl	(%ebx), %eax
L121:
	movl	%ebp, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__accept@12
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	cmpl	$-1, %eax
	movl	%eax, (%esi)
	je	L131
	xorl	%eax, %eax
L119:
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
L122:
	.cfi_restore_state
	movl	$-2, %eax
	jmp	L119
	.cfi_endproc
LFE130:
	.section	.text.unlikely,"x"
LCOLDE16:
	.text
LHOTE16:
	.section	.text.unlikely,"x"
LCOLDB17:
	.text
LHOTB17:
	.p2align 4,,15
	.globl	_socket_send
	.def	_socket_send;	.scl	2;	.type	32;	.endef
_socket_send:
LFB131:
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
	movl	60(%esp), %eax
	movl	48(%esp), %ebx
	movl	52(%esp), %esi
	movl	56(%esp), %edi
	movl	$0, (%eax)
	movl	(%ebx), %eax
	cmpl	$-1, %eax
	je	L136
	movl	__imp__WSAGetLastError@0, %ebp
	jmp	L135
	.p2align 4,,10
L134:
	call	*%ebp
	cmpl	$10035, %eax
	jne	L133
	movl	64(%esp), %edx
	movl	%ebx, %eax
	call	_socket_waitfd.constprop.0
	testl	%eax, %eax
	jne	L133
	movl	(%ebx), %eax
L135:
	movl	$0, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__send@16
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jle	L134
	movl	60(%esp), %ecx
	movl	%eax, (%ecx)
	xorl	%eax, %eax
L133:
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
L136:
	.cfi_restore_state
	movl	$-2, %eax
	jmp	L133
	.cfi_endproc
LFE131:
	.section	.text.unlikely,"x"
LCOLDE17:
	.text
LHOTE17:
	.section	.text.unlikely,"x"
LCOLDB18:
	.text
LHOTB18:
	.p2align 4,,15
	.globl	_socket_sendto
	.def	_socket_sendto;	.scl	2;	.type	32;	.endef
_socket_sendto:
LFB132:
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
	movl	76(%esp), %eax
	movl	64(%esp), %ebx
	movl	68(%esp), %ebp
	movl	80(%esp), %esi
	movl	84(%esp), %edi
	movl	$0, (%eax)
	movl	(%ebx), %eax
	cmpl	$-1, %eax
	jne	L143
	jmp	L144
	.p2align 4,,10
L142:
	call	*__imp__WSAGetLastError@0
	cmpl	$10035, %eax
	jne	L141
	movl	88(%esp), %edx
	movl	%ebx, %eax
	call	_socket_waitfd.constprop.0
	testl	%eax, %eax
	jne	L141
	movl	(%ebx), %eax
L143:
	movl	72(%esp), %ecx
	movl	%edi, 20(%esp)
	movl	%esi, 16(%esp)
	movl	$0, 12(%esp)
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	*__imp__sendto@24
	.cfi_def_cfa_offset 40
	subl	$24, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jle	L142
	movl	76(%esp), %edx
	movl	%eax, (%edx)
	xorl	%eax, %eax
L141:
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
L144:
	.cfi_restore_state
	movl	$-2, %eax
	jmp	L141
	.cfi_endproc
LFE132:
	.section	.text.unlikely,"x"
LCOLDE18:
	.text
LHOTE18:
	.section	.text.unlikely,"x"
LCOLDB19:
	.text
LHOTB19:
	.p2align 4,,15
	.globl	_socket_recv
	.def	_socket_recv;	.scl	2;	.type	32;	.endef
_socket_recv:
LFB133:
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
	movl	60(%esp), %eax
	movl	48(%esp), %ebx
	movl	52(%esp), %edi
	movl	56(%esp), %ebp
	movl	$0, (%eax)
	movl	(%ebx), %eax
	cmpl	$-1, %eax
	je	L152
	xorl	%esi, %esi
	jmp	L154
	.p2align 4,,10
L151:
	je	L152
	call	*__imp__WSAGetLastError@0
	cmpl	$10035, %eax
	je	L153
	cmpl	$10054, %eax
	jne	L150
	cmpl	$10054, %esi
	je	L150
	movl	$10054, %esi
L153:
	movl	64(%esp), %edx
	movl	%ebx, %eax
	call	_socket_waitfd.constprop.1
	testl	%eax, %eax
	jne	L150
	movl	(%ebx), %eax
L154:
	movl	$0, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__recv@16
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	$0, %eax
	jle	L151
	movl	60(%esp), %ecx
	movl	%eax, (%ecx)
	xorl	%eax, %eax
L150:
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
L152:
	.cfi_restore_state
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	movl	$-2, %eax
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
LFE133:
	.section	.text.unlikely,"x"
LCOLDE19:
	.text
LHOTE19:
	.section	.text.unlikely,"x"
LCOLDB20:
	.text
LHOTB20:
	.p2align 4,,15
	.globl	_socket_recvfrom
	.def	_socket_recvfrom;	.scl	2;	.type	32;	.endef
_socket_recvfrom:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	76(%esp), %eax
	movl	64(%esp), %ebx
	movl	68(%esp), %ebp
	movl	84(%esp), %edi
	movl	$0, (%eax)
	movl	(%ebx), %eax
	cmpl	$-1, %eax
	je	L168
	xorl	%esi, %esi
	jmp	L170
	.p2align 4,,10
L167:
	je	L168
	call	*__imp__WSAGetLastError@0
	cmpl	$10035, %eax
	je	L169
	cmpl	$10054, %eax
	jne	L166
	cmpl	$10054, %esi
	je	L166
	movl	$10054, %esi
L169:
	movl	88(%esp), %edx
	movl	%ebx, %eax
	call	_socket_waitfd.constprop.1
	testl	%eax, %eax
	jne	L166
	movl	(%ebx), %eax
L170:
	movl	80(%esp), %ecx
	movl	72(%esp), %edx
	movl	%edi, 20(%esp)
	movl	$0, 12(%esp)
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 8(%esp)
	call	*__imp__recvfrom@24
	.cfi_def_cfa_offset 40
	subl	$24, %esp
	.cfi_def_cfa_offset 64
	cmpl	$0, %eax
	jle	L167
	movl	76(%esp), %edi
	movl	%eax, (%edi)
	xorl	%eax, %eax
L166:
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
L168:
	.cfi_restore_state
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	movl	$-2, %eax
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
LFE134:
	.section	.text.unlikely,"x"
LCOLDE20:
	.text
LHOTE20:
	.section	.text.unlikely,"x"
LCOLDB21:
	.text
LHOTB21:
	.p2align 4,,15
	.globl	_socket_setblocking
	.def	_socket_setblocking;	.scl	2;	.type	32;	.endef
_socket_setblocking:
LFB135:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	leal	28(%esp), %eax
	movl	$-2147195266, 4(%esp)
	movl	$0, 28(%esp)
	movl	%eax, 8(%esp)
	movl	48(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*__imp__ioctlsocket@12
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE135:
	.section	.text.unlikely,"x"
LCOLDE21:
	.text
LHOTE21:
	.section	.text.unlikely,"x"
LCOLDB22:
	.text
LHOTB22:
	.p2align 4,,15
	.globl	_socket_setnonblocking
	.def	_socket_setnonblocking;	.scl	2;	.type	32;	.endef
_socket_setnonblocking:
LFB136:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	leal	28(%esp), %eax
	movl	$-2147195266, 4(%esp)
	movl	$1, 28(%esp)
	movl	%eax, 8(%esp)
	movl	48(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*__imp__ioctlsocket@12
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE136:
	.section	.text.unlikely,"x"
LCOLDE22:
	.text
LHOTE22:
	.section	.text.unlikely,"x"
LCOLDB23:
	.text
LHOTB23:
	.p2align 4,,15
	.globl	_socket_gethostbyaddr
	.def	_socket_gethostbyaddr;	.scl	2;	.type	32;	.endef
_socket_gethostbyaddr:
LFB137:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	36(%esp), %eax
	movl	40(%esp), %ebx
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	*__imp__gethostbyaddr@12
	.cfi_def_cfa_offset 20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	movl	%eax, (%ebx)
	je	L187
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L187:
	.cfi_restore_state
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	*__imp__WSAGetLastError@0
	.cfi_endproc
LFE137:
	.section	.text.unlikely,"x"
LCOLDE23:
	.text
LHOTE23:
	.section	.text.unlikely,"x"
LCOLDB24:
	.text
LHOTB24:
	.p2align 4,,15
	.globl	_socket_gethostbyname
	.def	_socket_gethostbyname;	.scl	2;	.type	32;	.endef
_socket_gethostbyname:
LFB138:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %eax
	movl	36(%esp), %ebx
	movl	%eax, (%esp)
	call	*__imp__gethostbyname@4
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	movl	%eax, (%ebx)
	je	L191
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L191:
	.cfi_restore_state
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	*__imp__WSAGetLastError@0
	.cfi_endproc
LFE138:
	.section	.text.unlikely,"x"
LCOLDE24:
	.text
LHOTE24:
	.section .rdata,"dr"
LC25:
	.ascii "host not found\0"
LC26:
	.ascii "permission denied\0"
LC27:
	.ascii "Interrupted function call\0"
LC28:
	.ascii "Unknown error\0"
	.align 4
LC29:
	.ascii "Valid name, no data record of requested type\0"
	.align 4
LC30:
	.ascii "non-recoverable failure in name resolution\0"
	.align 4
LC31:
	.ascii "Nonauthoritative host not found\0"
LC32:
	.ascii "Graceful shutdown in progress\0"
	.align 4
LC33:
	.ascii "Successful WSAStartup not yet performed\0"
	.align 4
LC34:
	.ascii "Winsock.dll version out of range\0"
	.align 4
LC35:
	.ascii "Network subsystem is unavailable\0"
LC36:
	.ascii "Too many processes\0"
LC37:
	.ascii "No route to host\0"
LC38:
	.ascii "Host is down\0"
LC39:
	.ascii "connection refused\0"
LC40:
	.ascii "timeout\0"
	.align 4
LC41:
	.ascii "Cannot send after socket shutdown\0"
LC42:
	.ascii "Socket is not connected\0"
LC43:
	.ascii "already connected\0"
LC44:
	.ascii "No buffer space available\0"
LC45:
	.ascii "closed\0"
	.align 4
LC46:
	.ascii "Software caused connection abort\0"
	.align 4
LC47:
	.ascii "Network dropped connection on reset\0"
LC48:
	.ascii "Network is unreachable\0"
LC49:
	.ascii "Network is down\0"
	.align 4
LC50:
	.ascii "Cannot assign requested address\0"
LC51:
	.ascii "address already in use\0"
LC52:
	.ascii "ai_family not supported\0"
LC53:
	.ascii "Protocol family not supported\0"
LC54:
	.ascii "Operation not supported\0"
LC55:
	.ascii "ai_socktype not supported\0"
LC56:
	.ascii "Protocol not supported\0"
LC57:
	.ascii "Bad protocol option\0"
	.align 4
LC58:
	.ascii "Protocol wrong type for socket\0"
LC59:
	.ascii "Message too long\0"
LC60:
	.ascii "Destination address required\0"
LC61:
	.ascii "Socket operation on nonsocket\0"
LC62:
	.ascii "Operation already in progress\0"
LC63:
	.ascii "Operation now in progress\0"
	.align 4
LC64:
	.ascii "Resource temporarily unavailable\0"
LC65:
	.ascii "Too many open files\0"
LC66:
	.ascii "Invalid argument\0"
LC67:
	.ascii "Bad address\0"
	.section	.text.unlikely,"x"
LCOLDB68:
	.text
LHOTB68:
	.p2align 4,,15
	.globl	_socket_hoststrerror
	.def	_socket_hoststrerror;	.scl	2;	.type	32;	.endef
_socket_hoststrerror:
LFB139:
	.cfi_startproc
	movl	4(%esp), %edx
	testl	%edx, %edx
	jle	L296
	cmpl	$11001, %edx
	movl	$LC25, %eax
	je	L195
	cmpl	$10050, %edx
	je	L197
	jle	L297
	cmpl	$10064, %edx
	je	L224
	jle	L298
	cmpl	$10093, %edx
	je	L238
	jle	L299
	cmpl	$11002, %edx
	je	L245
	jg	L246
	cmpl	$10101, %edx
	movl	$LC32, %eax
	je	L195
	cmpl	$11001, %edx
	movl	$LC25, %eax
	jne	L196
L195:
	rep ret
	.p2align 4,,10
L297:
	cmpl	$10039, %edx
	je	L199
	jle	L300
	cmpl	$10044, %edx
	je	L212
	jle	L301
	cmpl	$10047, %edx
	je	L218
	jg	L219
	cmpl	$10045, %edx
	movl	$LC54, %eax
	je	L195
	cmpl	$10046, %edx
	movl	$LC53, %eax
	jne	L196
	rep ret
	.p2align 4,,10
L298:
	cmpl	$10055, %edx
	je	L226
	jle	L302
	cmpl	$10058, %edx
	je	L232
	jg	L233
	cmpl	$10056, %edx
	movl	$LC43, %eax
	je	L195
	cmpl	$10057, %edx
	movl	$LC42, %eax
	jne	L196
	rep ret
	.p2align 4,,10
L300:
	cmpl	$10024, %edx
	je	L201
	jg	L202
	cmpl	$10013, %edx
	movl	$LC26, %eax
	je	L195
	jle	L303
	cmpl	$10014, %edx
	movl	$LC67, %eax
	je	L195
	cmpl	$10022, %edx
	movl	$LC66, %eax
	jne	L196
	rep ret
	.p2align 4,,10
L296:
	jmp	_io_strerror
	.p2align 4,,10
L301:
	cmpl	$10041, %edx
	movl	$LC58, %eax
	je	L195
	movl	$LC59, %eax
	jl	L195
	cmpl	$10042, %edx
	movl	$LC57, %eax
	je	L195
	cmpl	$10043, %edx
	movl	$LC56, %eax
	jne	L196
	rep ret
	.p2align 4,,10
L302:
	cmpl	$10052, %edx
	movl	$LC47, %eax
	je	L195
	movl	$LC48, %eax
	jl	L195
	cmpl	$10053, %edx
	movl	$LC46, %eax
	je	L195
	cmpl	$10054, %edx
	movl	$LC45, %eax
	jne	L196
	rep ret
	.p2align 4,,10
L299:
	cmpl	$10067, %edx
	movl	$LC36, %eax
	je	L195
	jle	L304
	cmpl	$10091, %edx
	movl	$LC35, %eax
	je	L195
	cmpl	$10092, %edx
	movl	$LC34, %eax
	jne	L196
	rep ret
	.p2align 4,,10
L202:
	cmpl	$10036, %edx
	movl	$LC63, %eax
	je	L195
	jle	L305
	cmpl	$10037, %edx
	movl	$LC62, %eax
	je	L195
	cmpl	$10038, %edx
	movl	$LC61, %eax
	je	L195
L196:
	movl	$LC28, %eax
	ret
	.p2align 4,,10
L219:
	cmpl	$10048, %edx
	movl	$LC51, %eax
	je	L195
	cmpl	$10049, %edx
	movl	$LC50, %eax
	jne	L196
	rep ret
	.p2align 4,,10
L233:
	cmpl	$10060, %edx
	movl	$LC40, %eax
	je	L195
	cmpl	$10061, %edx
	movl	$LC39, %eax
	jne	L196
	rep ret
	.p2align 4,,10
L246:
	cmpl	$11003, %edx
	movl	$LC30, %eax
	je	L195
	cmpl	$11004, %edx
	movl	$LC29, %eax
	jne	L196
	rep ret
	.p2align 4,,10
L303:
	cmpl	$10004, %edx
	movl	$LC27, %eax
	jne	L196
	rep ret
	.p2align 4,,10
L305:
	cmpl	$10035, %edx
	movl	$LC64, %eax
	jne	L196
	rep ret
	.p2align 4,,10
L304:
	cmpl	$10065, %edx
	movl	$LC37, %eax
	jne	L196
	rep ret
	.p2align 4,,10
L226:
	movl	$LC44, %eax
	ret
	.p2align 4,,10
L218:
	movl	$LC52, %eax
	ret
	.p2align 4,,10
L245:
	movl	$LC31, %eax
	ret
	.p2align 4,,10
L201:
	movl	$LC65, %eax
	ret
	.p2align 4,,10
L238:
	movl	$LC33, %eax
	ret
	.p2align 4,,10
L232:
	movl	$LC41, %eax
	ret
	.p2align 4,,10
L212:
	movl	$LC55, %eax
	ret
	.p2align 4,,10
L197:
	movl	$LC49, %eax
	ret
	.p2align 4,,10
L224:
	movl	$LC38, %eax
	ret
	.p2align 4,,10
L199:
	movl	$LC60, %eax
	ret
	.cfi_endproc
LFE139:
	.section	.text.unlikely,"x"
LCOLDE68:
	.text
LHOTE68:
	.section	.text.unlikely,"x"
LCOLDB69:
	.text
LHOTB69:
	.p2align 4,,15
	.globl	_socket_strerror
	.def	_socket_strerror;	.scl	2;	.type	32;	.endef
_socket_strerror:
LFB140:
	.cfi_startproc
	movl	4(%esp), %edx
	testl	%edx, %edx
	jle	L417
	leal	-10013(%edx), %eax
	cmpl	$48, %eax
	ja	L308
	jmp	*L310(,%eax,4)
	.section .rdata,"dr"
	.align 4
L310:
	.long	L309
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L372
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L313
	.long	L313
	.long	L308
	.long	L314
	.long	L308
	.long	L308
	.long	L308
	.long	L315
	.long	L316
	.text
	.p2align 4,,10
L313:
	movl	$LC45, %eax
	ret
	.p2align 4,,10
L372:
	movl	$LC51, %eax
L311:
	rep ret
	.p2align 4,,10
L314:
	movl	$LC43, %eax
	ret
	.p2align 4,,10
L315:
	movl	$LC40, %eax
	ret
	.p2align 4,,10
L309:
	movl	$LC26, %eax
	ret
	.p2align 4,,10
L316:
	movl	$LC39, %eax
	ret
	.p2align 4,,10
L308:
	cmpl	$10050, %edx
	je	L318
	jg	L319
	cmpl	$10039, %edx
	je	L320
	jle	L418
	cmpl	$10044, %edx
	je	L333
	jle	L419
	cmpl	$10047, %edx
	je	L339
	jg	L340
	cmpl	$10045, %edx
	movl	$LC54, %eax
	je	L311
	cmpl	$10046, %edx
	movl	$LC53, %eax
	jne	L317
	rep ret
	.p2align 4,,10
L417:
	jmp	_io_strerror
	.p2align 4,,10
L319:
	cmpl	$10064, %edx
	je	L345
	jg	L346
	cmpl	$10055, %edx
	je	L347
	jle	L420
	cmpl	$10058, %edx
	je	L353
	jg	L354
	cmpl	$10056, %edx
	movl	$LC43, %eax
	je	L311
	cmpl	$10057, %edx
	movl	$LC42, %eax
	je	L311
L317:
	movl	$LC28, %eax
	ret
	.p2align 4,,10
L346:
	cmpl	$10093, %edx
	je	L359
	jle	L421
	cmpl	$11002, %edx
	je	L366
	jg	L367
	cmpl	$10101, %edx
	movl	$LC32, %eax
	je	L311
	cmpl	$11001, %edx
	movl	$LC25, %eax
	jne	L317
	rep ret
	.p2align 4,,10
L418:
	cmpl	$10024, %edx
	je	L322
	jg	L323
	cmpl	$10013, %edx
	movl	$LC26, %eax
	je	L311
	jle	L422
	cmpl	$10014, %edx
	movl	$LC67, %eax
	je	L311
	cmpl	$10022, %edx
	movl	$LC66, %eax
	jne	L317
	rep ret
	.p2align 4,,10
L323:
	cmpl	$10036, %edx
	movl	$LC63, %eax
	je	L311
	jle	L423
	cmpl	$10037, %edx
	movl	$LC62, %eax
	je	L311
	cmpl	$10038, %edx
	movl	$LC61, %eax
	jne	L317
	rep ret
	.p2align 4,,10
L420:
	cmpl	$10052, %edx
	movl	$LC47, %eax
	je	L311
	movl	$LC48, %eax
	jl	L311
	cmpl	$10053, %edx
	movl	$LC46, %eax
	je	L311
	cmpl	$10054, %edx
	movl	$LC45, %eax
	jne	L317
	rep ret
	.p2align 4,,10
L419:
	cmpl	$10041, %edx
	movl	$LC58, %eax
	je	L311
	movl	$LC59, %eax
	jl	L311
	cmpl	$10042, %edx
	movl	$LC57, %eax
	je	L311
	cmpl	$10043, %edx
	movl	$LC56, %eax
	jne	L317
	rep ret
	.p2align 4,,10
L421:
	cmpl	$10067, %edx
	movl	$LC36, %eax
	je	L311
	jle	L424
	cmpl	$10091, %edx
	movl	$LC35, %eax
	je	L311
	cmpl	$10092, %edx
	movl	$LC34, %eax
	jne	L317
	rep ret
L367:
	cmpl	$11003, %edx
	movl	$LC30, %eax
	je	L311
	cmpl	$11004, %edx
	movl	$LC29, %eax
	jne	L317
	rep ret
L354:
	cmpl	$10060, %edx
	movl	$LC40, %eax
	je	L311
	cmpl	$10061, %edx
	movl	$LC39, %eax
	jne	L317
	rep ret
L340:
	cmpl	$10048, %edx
	movl	$LC51, %eax
	je	L311
	cmpl	$10049, %edx
	movl	$LC50, %eax
	jne	L317
	rep ret
L423:
	cmpl	$10035, %edx
	movl	$LC64, %eax
	jne	L317
	rep ret
L424:
	cmpl	$10065, %edx
	movl	$LC37, %eax
	jne	L317
	rep ret
L422:
	cmpl	$10004, %edx
	movl	$LC27, %eax
	jne	L317
	rep ret
L322:
	movl	$LC65, %eax
	ret
L333:
	movl	$LC55, %eax
	ret
L366:
	movl	$LC31, %eax
	ret
L345:
	movl	$LC38, %eax
	ret
L320:
	movl	$LC60, %eax
	ret
L318:
	movl	$LC49, %eax
	ret
L339:
	movl	$LC52, %eax
	ret
L347:
	movl	$LC44, %eax
	ret
L359:
	movl	$LC33, %eax
	ret
L353:
	movl	$LC41, %eax
	ret
	.cfi_endproc
LFE140:
	.section	.text.unlikely,"x"
LCOLDE69:
	.text
LHOTE69:
	.section	.text.unlikely,"x"
LCOLDB70:
	.text
LHOTB70:
	.p2align 4,,15
	.globl	_socket_ioerror
	.def	_socket_ioerror;	.scl	2;	.type	32;	.endef
_socket_ioerror:
LFB141:
	.cfi_startproc
	movl	8(%esp), %edx
	testl	%edx, %edx
	jle	L536
	leal	-10013(%edx), %eax
	cmpl	$48, %eax
	ja	L427
	jmp	*L429(,%eax,4)
	.section .rdata,"dr"
	.align 4
L429:
	.long	L428
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L491
	.long	L427
	.long	L427
	.long	L427
	.long	L427
	.long	L432
	.long	L432
	.long	L427
	.long	L433
	.long	L427
	.long	L427
	.long	L427
	.long	L434
	.long	L435
	.text
	.p2align 4,,10
L432:
	movl	$LC45, %eax
	ret
	.p2align 4,,10
L491:
	movl	$LC51, %eax
L430:
	rep ret
	.p2align 4,,10
L433:
	movl	$LC43, %eax
	ret
	.p2align 4,,10
L434:
	movl	$LC40, %eax
	ret
	.p2align 4,,10
L428:
	movl	$LC26, %eax
	ret
	.p2align 4,,10
L435:
	movl	$LC39, %eax
	ret
	.p2align 4,,10
L427:
	cmpl	$10050, %edx
	je	L437
	jg	L438
	cmpl	$10039, %edx
	je	L439
	jle	L537
	cmpl	$10044, %edx
	je	L452
	jle	L538
	cmpl	$10047, %edx
	je	L458
	jg	L459
	cmpl	$10045, %edx
	movl	$LC54, %eax
	je	L430
	cmpl	$10046, %edx
	movl	$LC53, %eax
	jne	L436
	rep ret
	.p2align 4,,10
L536:
	movl	%edx, 4(%esp)
	jmp	_io_strerror
	.p2align 4,,10
L438:
	cmpl	$10064, %edx
	je	L464
	jg	L465
	cmpl	$10055, %edx
	je	L466
	jle	L539
	cmpl	$10058, %edx
	je	L472
	jg	L473
	cmpl	$10056, %edx
	movl	$LC43, %eax
	je	L430
	cmpl	$10057, %edx
	movl	$LC42, %eax
	je	L430
L436:
	movl	$LC28, %eax
	ret
	.p2align 4,,10
L465:
	cmpl	$10093, %edx
	je	L478
	jle	L540
	cmpl	$11002, %edx
	je	L485
	jg	L486
	cmpl	$10101, %edx
	movl	$LC32, %eax
	je	L430
	cmpl	$11001, %edx
	movl	$LC25, %eax
	jne	L436
	rep ret
	.p2align 4,,10
L537:
	cmpl	$10024, %edx
	je	L441
	jg	L442
	cmpl	$10013, %edx
	movl	$LC26, %eax
	je	L430
	jle	L541
	cmpl	$10014, %edx
	movl	$LC67, %eax
	je	L430
	cmpl	$10022, %edx
	movl	$LC66, %eax
	jne	L436
	rep ret
	.p2align 4,,10
L442:
	cmpl	$10036, %edx
	movl	$LC63, %eax
	je	L430
	jle	L542
	cmpl	$10037, %edx
	movl	$LC62, %eax
	je	L430
	cmpl	$10038, %edx
	movl	$LC61, %eax
	jne	L436
	rep ret
	.p2align 4,,10
L539:
	cmpl	$10052, %edx
	movl	$LC47, %eax
	je	L430
	movl	$LC48, %eax
	jl	L430
	cmpl	$10053, %edx
	movl	$LC46, %eax
	je	L430
	cmpl	$10054, %edx
	movl	$LC45, %eax
	jne	L436
	rep ret
	.p2align 4,,10
L538:
	cmpl	$10041, %edx
	movl	$LC58, %eax
	je	L430
	movl	$LC59, %eax
	jl	L430
	cmpl	$10042, %edx
	movl	$LC57, %eax
	je	L430
	cmpl	$10043, %edx
	movl	$LC56, %eax
	jne	L436
	rep ret
	.p2align 4,,10
L540:
	cmpl	$10067, %edx
	movl	$LC36, %eax
	je	L430
	jle	L543
	cmpl	$10091, %edx
	movl	$LC35, %eax
	je	L430
	cmpl	$10092, %edx
	movl	$LC34, %eax
	jne	L436
	rep ret
L486:
	cmpl	$11003, %edx
	movl	$LC30, %eax
	je	L430
	cmpl	$11004, %edx
	movl	$LC29, %eax
	jne	L436
	rep ret
L473:
	cmpl	$10060, %edx
	movl	$LC40, %eax
	je	L430
	cmpl	$10061, %edx
	movl	$LC39, %eax
	jne	L436
	rep ret
L459:
	cmpl	$10048, %edx
	movl	$LC51, %eax
	je	L430
	cmpl	$10049, %edx
	movl	$LC50, %eax
	jne	L436
	rep ret
L542:
	cmpl	$10035, %edx
	movl	$LC64, %eax
	jne	L436
	rep ret
L543:
	cmpl	$10065, %edx
	movl	$LC37, %eax
	jne	L436
	rep ret
L541:
	cmpl	$10004, %edx
	movl	$LC27, %eax
	jne	L436
	rep ret
L441:
	movl	$LC65, %eax
	ret
L452:
	movl	$LC55, %eax
	ret
L485:
	movl	$LC31, %eax
	ret
L464:
	movl	$LC38, %eax
	ret
L439:
	movl	$LC60, %eax
	ret
L437:
	movl	$LC49, %eax
	ret
L458:
	movl	$LC52, %eax
	ret
L466:
	movl	$LC44, %eax
	ret
L478:
	movl	$LC33, %eax
	ret
L472:
	movl	$LC41, %eax
	ret
	.cfi_endproc
LFE141:
	.section	.text.unlikely,"x"
LCOLDE70:
	.text
LHOTE70:
	.section .rdata,"dr"
	.align 4
LC71:
	.ascii "temporary failure in name resolution\0"
LC72:
	.ascii "invalid value for ai_flags\0"
LC73:
	.ascii "memory allocation failure\0"
	.align 4
LC74:
	.ascii "host or service not provided, or not known\0"
	.align 4
LC75:
	.ascii "service not supported for socket type\0"
	.section	.text.unlikely,"x"
LCOLDB76:
	.text
LHOTB76:
	.p2align 4,,15
	.globl	_socket_gaistrerror
	.def	_socket_gaistrerror;	.scl	2;	.type	32;	.endef
_socket_gaistrerror:
LFB143:
	.cfi_startproc
	movl	4(%esp), %edx
	testl	%edx, %edx
	je	L556
	cmpl	$10047, %edx
	je	L547
	jle	L562
	cmpl	$11001, %edx
	je	L552
	jle	L563
	cmpl	$11002, %edx
	je	L557
	cmpl	$11003, %edx
	movl	$LC30, %eax
	jne	L546
	rep ret
	.p2align 4,,10
L562:
	cmpl	$10022, %edx
	je	L549
	cmpl	$10044, %edx
	je	L550
	cmpl	$8, %edx
	je	L564
L546:
	movl	%edx, 4(%esp)
	jmp	_gai_strerrorA
	.p2align 4,,10
L550:
	movl	$LC55, %eax
	ret
	.p2align 4,,10
L557:
	movl	$LC71, %eax
	ret
	.p2align 4,,10
L563:
	cmpl	$10109, %edx
	movl	$LC75, %eax
	jne	L546
	rep ret
	.p2align 4,,10
L552:
	movl	$LC74, %eax
	ret
	.p2align 4,,10
L549:
	movl	$LC72, %eax
	ret
	.p2align 4,,10
L564:
	movl	$LC73, %eax
	ret
	.p2align 4,,10
L556:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
L547:
	movl	$LC52, %eax
	ret
	.cfi_endproc
LFE143:
	.section	.text.unlikely,"x"
LCOLDE76:
	.text
LHOTE76:
	.section .rdata,"dr"
	.align 4
LC1:
	.long	1232348160
	.align 4
LC8:
	.long	1148846080
	.ident	"GCC: (Rev1, Built by MSYS2 project) 5.3.0"
	.def	_timeout_get;	.scl	2;	.type	32;	.endef
	.def	___WSAFDIsSet@8;	.scl	2;	.type	32;	.endef
	.def	_io_strerror;	.scl	2;	.type	32;	.endef
	.def	_gai_strerrorA;	.scl	2;	.type	32;	.endef
