	.file	"timeout.c"
	.section	.text.unlikely,"x"
LCOLDB5:
	.text
LHOTB5:
	.p2align 4,,15
	.def	_timeout_lua_sleep;	.scl	3;	.type	32;	.endef
_timeout_lua_sleep:
LFB110:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_luaL_checknumber
	fldz
	fld	%st(0)
	fucomip	%st(2), %st
	ja	L6
	fstp	%st(0)
	fldl	LC1
	fucomip	%st(1), %st
	ja	L11
L3:
	fldl	LC3
	fxch	%st(1)
	movl	$2147483647, %eax
	fucomi	%st(1), %st
	fstp	%st(1)
	jbe	L2
	fstp	%st(0)
L5:
	movl	%eax, (%esp)
	call	*__imp__Sleep@4
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L6:
	.cfi_restore_state
	fstp	%st(1)
L2:
	fnstcw	30(%esp)
	movzwl	30(%esp), %eax
	movb	$12, %ah
	movw	%ax, 28(%esp)
	fldcw	28(%esp)
	fistpl	24(%esp)
	fldcw	30(%esp)
	movl	24(%esp), %eax
	jmp	L5
	.p2align 4,,10
L11:
	fmuls	LC2
	jmp	L3
	.cfi_endproc
LFE110:
	.section	.text.unlikely,"x"
LCOLDE5:
	.text
LHOTE5:
	.section	.text.unlikely,"x"
LCOLDB9:
	.text
LHOTB9:
	.p2align 4,,15
	.def	_timeout_lua_gettime;	.scl	3;	.type	32;	.endef
_timeout_lua_gettime:
LFB109:
	.cfi_startproc
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	*__imp__GetSystemTimeAsFileTime@4
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	xorl	%edx, %edx
	movl	40(%esp), %eax
	movl	%edx, 20(%esp)
	xorl	%edx, %edx
	movl	%eax, 16(%esp)
	movl	44(%esp), %eax
	fildq	16(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	64(%esp), %eax
	fdivs	LC6
	movl	%eax, (%esp)
	fildq	16(%esp)
	fmull	LC7
	faddp	%st, %st(1)
	fsubl	LC8
	fstpl	4(%esp)
	call	_lua_pushnumber
	movl	$1, %eax
	addl	$60, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE109:
	.section	.text.unlikely,"x"
LCOLDE9:
	.text
LHOTE9:
	.section	.text.unlikely,"x"
LCOLDB10:
	.text
LHOTB10:
	.p2align 4,,15
	.globl	_timeout_init
	.def	_timeout_init;	.scl	2;	.type	32;	.endef
_timeout_init:
LFB101:
	.cfi_startproc
	movl	4(%esp), %eax
	fldl	8(%esp)
	fstpl	(%eax)
	fldl	16(%esp)
	fstpl	8(%eax)
	ret
	.cfi_endproc
LFE101:
	.section	.text.unlikely,"x"
LCOLDE10:
	.text
LHOTE10:
	.section	.text.unlikely,"x"
LCOLDB12:
	.text
LHOTB12:
	.p2align 4,,15
	.globl	_timeout_get
	.def	_timeout_get;	.scl	2;	.type	32;	.endef
_timeout_get:
LFB102:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$72, %esp
	.cfi_def_cfa_offset 80
	movl	80(%esp), %ebx
	fldl	(%ebx)
	fldz
	fucomi	%st(1), %st
	fldl	8(%ebx)
	ja	L35
	ja	L37
	fxch	%st(1)
	fucomi	%st(1), %st
	fxch	%st(1)
	fstpl	24(%esp)
	fstpl	16(%esp)
	ja	L18
	fstp	%st(0)
	leal	56(%esp), %eax
	movl	%eax, (%esp)
	call	*__imp__GetSystemTimeAsFileTime@4
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	xorl	%edx, %edx
	movl	56(%esp), %eax
	movl	%edx, 36(%esp)
	xorl	%edx, %edx
	movl	%eax, 32(%esp)
	movl	60(%esp), %eax
	fildq	32(%esp)
	movl	%edx, 36(%esp)
	movl	%eax, 32(%esp)
	fdivs	LC6
	fildq	32(%esp)
	fmull	LC7
	faddp	%st, %st(1)
	fsubl	LC8
	fldl	24(%esp)
	fsubp	%st, %st(1)
	faddl	16(%ebx)
	fldl	(%ebx)
	fldl	16(%esp)
	fxch	%st(2)
	fucomi	%st(2), %st
	fld	%st(2)
	fcmovnbe	%st(1), %st
	fucomip	%st(2), %st
	ja	L38
	fstp	%st(1)
	fld	%st(0)
	fucomip	%st(2), %st
	fstp	%st(1)
	jbe	L39
	jmp	L18
	.p2align 4,,10
L38:
	fstp	%st(0)
	fstp	%st(1)
L18:
	addl	$72, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L35:
	.cfi_restore_state
	fstp	%st(2)
	fucomip	%st(1), %st
	ja	L36
	jmp	L19
L37:
	fstp	%st(1)
	fstp	%st(1)
	.p2align 4,,10
L19:
	leal	56(%esp), %eax
	fstpl	24(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetSystemTimeAsFileTime@4
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	xorl	%edx, %edx
	movl	56(%esp), %eax
	movl	%edx, 20(%esp)
	xorl	%edx, %edx
	movl	%eax, 16(%esp)
	movl	60(%esp), %eax
	fildq	16(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	fdivs	LC6
	fildq	16(%esp)
	fmull	LC7
	faddp	%st, %st(1)
	fsubl	LC8
	fldl	24(%esp)
	fsubp	%st, %st(1)
	faddl	16(%ebx)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	ja	L18
	fstp	%st(0)
	jmp	L23
	.p2align 4,,10
L39:
	fstp	%st(0)
L23:
	fldz
	jmp	L18
	.p2align 4,,10
L36:
	fstp	%st(0)
	fld1
	fchs
	jmp	L18
	.cfi_endproc
LFE102:
	.section	.text.unlikely,"x"
LCOLDE12:
	.text
LHOTE12:
	.section	.text.unlikely,"x"
LCOLDB13:
	.text
LHOTB13:
	.p2align 4,,15
	.globl	_timeout_getstart
	.def	_timeout_getstart;	.scl	2;	.type	32;	.endef
_timeout_getstart:
LFB103:
	.cfi_startproc
	movl	4(%esp), %eax
	fldl	16(%eax)
	ret
	.cfi_endproc
LFE103:
	.section	.text.unlikely,"x"
LCOLDE13:
	.text
LHOTE13:
	.section	.text.unlikely,"x"
LCOLDB14:
	.text
LHOTB14:
	.p2align 4,,15
	.globl	_timeout_getretry
	.def	_timeout_getretry;	.scl	2;	.type	32;	.endef
_timeout_getretry:
LFB104:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$72, %esp
	.cfi_def_cfa_offset 80
	movl	80(%esp), %ebx
	fldl	(%ebx)
	fldz
	fucomi	%st(1), %st
	ja	L67
	ja	L68
	fldl	8(%ebx)
	fxch	%st(1)
	fstl	32(%esp)
	fucomip	%st(1), %st
	ja	L69
	fstp	%st(1)
	leal	56(%esp), %eax
	fstpl	24(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetSystemTimeAsFileTime@4
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	xorl	%edx, %edx
	movl	56(%esp), %eax
	movl	%edx, 20(%esp)
	xorl	%edx, %edx
	movl	%eax, 16(%esp)
	movl	60(%esp), %eax
	fildq	16(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	fdivs	LC6
	fildq	16(%esp)
	fmull	LC7
	faddp	%st, %st(1)
	fsubl	LC8
	fldl	24(%esp)
	fsubp	%st, %st(1)
	faddl	16(%ebx)
	fldl	(%ebx)
	fldl	32(%esp)
	fxch	%st(2)
	fucomi	%st(2), %st
	fld	%st(2)
	fcmovnbe	%st(1), %st
	fucomip	%st(2), %st
	ja	L71
	fstp	%st(1)
	fld	%st(0)
	fucomip	%st(2), %st
	fstp	%st(1)
	jbe	L72
	jmp	L44
	.p2align 4,,10
L71:
	fstp	%st(0)
	fstp	%st(1)
L44:
	addl	$72, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L67:
	.cfi_restore_state
	fstp	%st(1)
	fldl	8(%ebx)
	fxch	%st(1)
	fucomip	%st(1), %st
	ja	L70
L45:
	leal	56(%esp), %eax
	fstpl	24(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetSystemTimeAsFileTime@4
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	xorl	%edx, %edx
	movl	56(%esp), %eax
	movl	%edx, 20(%esp)
	xorl	%edx, %edx
	movl	%eax, 16(%esp)
	movl	60(%esp), %eax
	fildq	16(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	fdivs	LC6
	fildq	16(%esp)
	fmull	LC7
	faddp	%st, %st(1)
	fsubl	LC8
	fldl	24(%esp)
	fsubp	%st, %st(1)
	faddl	16(%ebx)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	ja	L44
	fstp	%st(0)
	jmp	L50
	.p2align 4,,10
L72:
	fstp	%st(0)
	jmp	L50
	.p2align 4,,10
L73:
	fstp	%st(0)
L50:
	addl	$72, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	fldz
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L69:
	.cfi_restore_state
	fstp	%st(0)
	leal	56(%esp), %eax
	fstpl	24(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetSystemTimeAsFileTime@4
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	xorl	%edx, %edx
	movl	56(%esp), %eax
	movl	%edx, 20(%esp)
	xorl	%edx, %edx
	movl	%eax, 16(%esp)
	movl	60(%esp), %eax
	fildq	16(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	fdivs	LC6
	fildq	16(%esp)
	fmull	LC7
	faddp	%st, %st(1)
	fsubl	LC8
	fldl	24(%esp)
	fsubp	%st, %st(1)
	faddl	16(%ebx)
	fldl	32(%esp)
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jbe	L73
	addl	$72, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L70:
	.cfi_restore_state
	fstp	%st(0)
	fld1
	fchs
	jmp	L44
L68:
	fstp	%st(0)
	fstp	%st(0)
	fldl	8(%ebx)
	jmp	L45
	.cfi_endproc
LFE104:
	.section	.text.unlikely,"x"
LCOLDE14:
	.text
LHOTE14:
	.section	.text.unlikely,"x"
LCOLDB15:
	.text
LHOTB15:
	.p2align 4,,15
	.globl	_timeout_markstart
	.def	_timeout_markstart;	.scl	2;	.type	32;	.endef
_timeout_markstart:
LFB105:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$56, %esp
	.cfi_def_cfa_offset 64
	leal	40(%esp), %eax
	movl	64(%esp), %ebx
	movl	%eax, (%esp)
	call	*__imp__GetSystemTimeAsFileTime@4
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	xorl	%edx, %edx
	movl	40(%esp), %eax
	movl	%edx, 20(%esp)
	xorl	%edx, %edx
	movl	%eax, 16(%esp)
	movl	44(%esp), %eax
	fildq	16(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	%ebx, %eax
	fdivs	LC6
	fildq	16(%esp)
	fmull	LC7
	faddp	%st, %st(1)
	fsubl	LC8
	fstpl	16(%ebx)
	addl	$56, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE105:
	.section	.text.unlikely,"x"
LCOLDE15:
	.text
LHOTE15:
	.section	.text.unlikely,"x"
LCOLDB16:
	.text
LHOTB16:
	.p2align 4,,15
	.globl	_timeout_gettime
	.def	_timeout_gettime;	.scl	2;	.type	32;	.endef
_timeout_gettime:
LFB106:
	.cfi_startproc
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	*__imp__GetSystemTimeAsFileTime@4
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	xorl	%edx, %edx
	movl	40(%esp), %eax
	movl	%edx, 20(%esp)
	xorl	%edx, %edx
	movl	%eax, 16(%esp)
	movl	44(%esp), %eax
	fildq	16(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	fdivs	LC6
	fildq	16(%esp)
	fmull	LC7
	faddp	%st, %st(1)
	fsubl	LC8
	addl	$60, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE106:
	.section	.text.unlikely,"x"
LCOLDE16:
	.text
LHOTE16:
	.section	.text.unlikely,"x"
LCOLDB17:
	.text
LHOTB17:
	.p2align 4,,15
	.globl	_timeout_open
	.def	_timeout_open;	.scl	2;	.type	32;	.endef
_timeout_open:
LFB107:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %eax
	movl	$0, 12(%esp)
	movl	$_func, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_luaL_openlib
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE107:
	.section	.text.unlikely,"x"
LCOLDE17:
	.text
LHOTE17:
	.section .rdata,"dr"
LC18:
	.ascii "b\0"
LC19:
	.ascii "invalid timeout mode\0"
	.section	.text.unlikely,"x"
LCOLDB21:
	.text
LHOTB21:
	.p2align 4,,15
	.globl	_timeout_meth_settimeout
	.def	_timeout_meth_settimeout;	.scl	2;	.type	32;	.endef
_timeout_meth_settimeout:
LFB108:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	fld1
	subl	$40, %esp
	.cfi_def_cfa_offset 48
	fchs
	movl	48(%esp), %ebx
	movl	$2, 4(%esp)
	fstpl	8(%esp)
	movl	%ebx, (%esp)
	call	_luaL_optnumber
	movl	$0, 12(%esp)
	movl	$LC18, 8(%esp)
	fstpl	24(%esp)
	movl	$3, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_optlstring
	movzbl	(%eax), %eax
	fldl	24(%esp)
	cmpb	$114, %al
	je	L82
	cmpb	$116, %al
	je	L82
	cmpb	$98, %al
	je	L93
	fstp	%st(0)
	movl	$LC19, 8(%esp)
	movl	$3, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_argerror
L84:
	fld1
	movl	%ebx, (%esp)
	fstpl	4(%esp)
	call	_lua_pushnumber
	addl	$40, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L93:
	.cfi_restore_state
	movl	52(%esp), %eax
	fstpl	(%eax)
	jmp	L84
	.p2align 4,,10
L82:
	movl	52(%esp), %eax
	fstpl	8(%eax)
	jmp	L84
	.cfi_endproc
LFE108:
	.section	.text.unlikely,"x"
LCOLDE21:
	.text
LHOTE21:
	.section .rdata,"dr"
LC22:
	.ascii "gettime\0"
LC23:
	.ascii "sleep\0"
	.data
	.align 4
_func:
	.long	LC22
	.long	_timeout_lua_gettime
	.long	LC23
	.long	_timeout_lua_sleep
	.long	0
	.long	0
	.section .rdata,"dr"
	.align 8
LC1:
	.long	-755914245
	.long	2135974477
	.align 4
LC2:
	.long	1148846080
	.align 8
LC3:
	.long	-4194304
	.long	1105199103
	.align 4
LC6:
	.long	1259902592
	.align 8
LC7:
	.long	-1698910392
	.long	1081792498
	.align 8
LC8:
	.long	-2013265920
	.long	1107669124
	.ident	"GCC: (Rev1, Built by MSYS2 project) 5.3.0"
	.def	_luaL_checknumber;	.scl	2;	.type	32;	.endef
	.def	_lua_pushnumber;	.scl	2;	.type	32;	.endef
	.def	_luaL_openlib;	.scl	2;	.type	32;	.endef
	.def	_luaL_optnumber;	.scl	2;	.type	32;	.endef
	.def	_luaL_optlstring;	.scl	2;	.type	32;	.endef
	.def	_luaL_argerror;	.scl	2;	.type	32;	.endef
