	.file	"select.c"
	.section .rdata,"dr"
LC0:
	.ascii "getfd\0"
LC2:
	.ascii "too many sockets\0"
	.section	.text.unlikely,"x"
LCOLDB4:
	.text
LHOTB4:
	.p2align 4,,15
	.def	_collect_fd.part.0;	.scl	3;	.type	32;	.endef
_collect_fd.part.0:
LFB128:
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
	xorl	%edi, %edi
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	100(%esp), %eax
	movl	$5, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ebx, (%esp)
	movl	%ecx, 36(%esp)
	movl	96(%esp), %esi
	movl	%eax, 32(%esp)
	call	_luaL_checktype
	movl	$1, 48(%esp)
	jmp	L14
L36:
	fstp	%st(0)
	.p2align 4,,10
L3:
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_settop
L5:
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_settop
	addl	$1, 48(%esp)
L14:
	fildl	48(%esp)
	movl	%ebx, (%esp)
	fstpl	4(%esp)
	call	_lua_pushnumber
	movl	%ebp, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_gettable
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_type
	testl	%eax, %eax
	je	L33
	movl	$LC0, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushstring
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_gettable
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_type
	testl	%eax, %eax
	je	L3
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushvalue
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_call
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_isnumber
	testl	%eax, %eax
	je	L3
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_tonumber
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jb	L36
	fnstcw	54(%esp)
	movzwl	54(%esp), %eax
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	movb	$12, %ah
	movw	%ax, 52(%esp)
	fldcw	52(%esp)
	fistpq	40(%esp)
	fldcw	54(%esp)
	movl	40(%esp), %eax
	movl	%eax, 24(%esp)
	call	_lua_settop
	movl	24(%esp), %edx
	cmpl	$-1, %edx
	je	L5
	cmpl	$63, %edi
	jg	L34
	movl	(%esi), %ecx
	testl	%ecx, %ecx
	je	L15
L35:
	cmpl	4(%esi), %edx
	je	L8
	xorl	%eax, %eax
	jmp	L10
	.p2align 4,,10
L11:
	cmpl	%edx, 4(%esi,%eax,4)
	je	L8
L10:
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	L11
	cmpl	$63, %ecx
	ja	L8
	leal	1(%ecx), %eax
L7:
	movl	%edx, 4(%esi,%ecx,4)
	movl	%eax, (%esi)
L8:
	movl	32(%esp), %eax
	addl	$1, %edi
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	L17
	cmpl	%edx, %eax
	jb	L17
L12:
	movl	%edx, 24(%esp)
	movl	$0, 28(%esp)
	fildq	24(%esp)
	movl	%ebx, (%esp)
	fstpl	4(%esp)
	call	_lua_pushnumber
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushvalue
	movl	36(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_lua_settable
	jmp	L5
	.p2align 4,,10
L33:
	movl	%ebx, 96(%esp)
	movl	$-2, 100(%esp)
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
	jmp	_lua_settop
	.p2align 4,,10
L17:
	.cfi_restore_state
	movl	32(%esp), %eax
	movl	%edx, (%eax)
	jmp	L12
	.p2align 4,,10
L34:
	movl	$LC2, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_argerror
	movl	(%esi), %ecx
	movl	24(%esp), %edx
	testl	%ecx, %ecx
	jne	L35
L15:
	movl	$1, %eax
	jmp	L7
	.cfi_endproc
LFE128:
	.section	.text.unlikely,"x"
LCOLDE4:
	.text
LHOTE4:
	.section .rdata,"dr"
LC6:
	.ascii "dirty\0"
LC7:
	.ascii "timeout\0"
LC8:
	.ascii "select failed\0"
	.section	.text.unlikely,"x"
LCOLDB9:
	.text
LHOTB9:
	.p2align 4,,15
	.def	_global_select;	.scl	3;	.type	32;	.endef
_global_select:
LFB121:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	fld1
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	fchs
	subl	$668, %esp
	.cfi_def_cfa_offset 688
	movl	688(%esp), %ebx
	fstpl	8(%esp)
	movl	$3, 4(%esp)
	movl	$-1, 108(%esp)
	leal	136(%esp), %edi
	movl	%ebx, (%esp)
	call	_luaL_optnumber
	movl	$3, 4(%esp)
	movl	%ebx, (%esp)
	fstpl	64(%esp)
	movl	$0, 136(%esp)
	movl	$0, 396(%esp)
	call	_lua_settop
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_createtable
	movl	%ebx, (%esp)
	call	_lua_gettop
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 56(%esp)
	call	_lua_createtable
	movl	%ebx, (%esp)
	call	_lua_gettop
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 60(%esp)
	call	_lua_createtable
	movl	%ebx, (%esp)
	call	_lua_gettop
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 80(%esp)
	call	_lua_type
	testl	%eax, %eax
	je	L38
	leal	108(%esp), %eax
	movl	56(%esp), %ecx
	movl	%edi, (%esp)
	movl	$1, %edx
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	call	_collect_fd.part.0
L38:
	movl	$2, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_type
	testl	%eax, %eax
	je	L39
	leal	108(%esp), %eax
	movl	56(%esp), %ecx
	movl	$2, %edx
	movl	%eax, 4(%esp)
	leal	396(%esp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_collect_fd.part.0
L39:
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_type
	testl	%eax, %eax
	je	L40
	movl	$1, %esi
	movl	$0, 52(%esp)
	jmp	L53
L124:
	fstp	%st(0)
	.p2align 4,,10
L43:
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_settop
L45:
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	addl	$1, %esi
	call	_lua_settop
L53:
	movl	%esi, 40(%esp)
	movl	%ebx, (%esp)
	fildl	40(%esp)
	fstpl	4(%esp)
	call	_lua_pushnumber
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_gettable
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_type
	testl	%eax, %eax
	je	L116
	movl	$LC0, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushstring
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_gettable
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_type
	testl	%eax, %eax
	je	L43
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushvalue
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_call
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_isnumber
	testl	%eax, %eax
	je	L43
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_tonumber
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jb	L124
	fnstcw	86(%esp)
	movzwl	86(%esp), %eax
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	movb	$12, %ah
	movw	%ax, 84(%esp)
	fldcw	84(%esp)
	fistpq	72(%esp)
	fldcw	86(%esp)
	movl	72(%esp), %eax
	movl	%eax, %ebp
	call	_lua_settop
	cmpl	$-1, %ebp
	je	L45
	movl	$LC6, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushstring
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_gettable
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_type
	testl	%eax, %eax
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	jne	L117
	call	_lua_settop
	jmp	L45
	.p2align 4,,10
L116:
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_settop
	movl	52(%esp), %eax
	testl	%eax, %eax
	je	L40
	fld1
	leal	112(%esp), %esi
	fchs
	movl	%esi, (%esp)
	fstpl	12(%esp)
	fldz
	fstpl	4(%esp)
	call	_timeout_init
	movl	%esi, (%esp)
	call	_timeout_markstart
	leal	396(%esp), %eax
	movl	%esi, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	108(%esp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	_socket_select
L54:
	movl	108(%esp), %esi
	xorl	%ebp, %ebp
	addl	$1, %esi
	jne	L94
	.p2align 4,,10
L59:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$1, %esi
	movl	%ebx, (%esp)
	call	_lua_createtable
	movl	%ebx, (%esp)
	call	_lua_gettop
	movl	60(%esp), %ebp
	movl	%eax, %edi
	jmp	L57
	.p2align 4,,10
L118:
	fldl	40(%esp)
	movl	%ebx, (%esp)
	addl	$1, %esi
	fstpl	4(%esp)
	call	_lua_pushnumber
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushvalue
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_settable
	fldl	40(%esp)
	movl	%ebx, (%esp)
	fstpl	4(%esp)
	call	_lua_pushnumber
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_settable
L57:
	movl	%esi, 40(%esp)
	movl	%ebx, (%esp)
	fildl	40(%esp)
	fstl	4(%esp)
	fstpl	40(%esp)
	call	_lua_pushnumber
	movl	%ebp, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_gettable
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_type
	testl	%eax, %eax
	jne	L118
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	movl	$1, %esi
	call	_lua_settop
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_createtable
	movl	%ebx, (%esp)
	call	_lua_gettop
	movl	80(%esp), %ebp
	movl	%eax, %edi
	jmp	L64
	.p2align 4,,10
L119:
	fldl	40(%esp)
	movl	%ebx, (%esp)
	addl	$1, %esi
	fstpl	4(%esp)
	call	_lua_pushnumber
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushvalue
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_settable
	fldl	40(%esp)
	movl	%ebx, (%esp)
	fstpl	4(%esp)
	call	_lua_pushnumber
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_settable
L64:
	movl	%esi, 40(%esp)
	movl	%ebx, (%esp)
	fildl	40(%esp)
	fstl	4(%esp)
	fstpl	40(%esp)
	call	_lua_pushnumber
	movl	%ebp, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_gettable
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_type
	testl	%eax, %eax
	jne	L119
	movl	%ebx, (%esp)
	movl	$-2, 4(%esp)
	call	_lua_settop
	addl	$668, %esp
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
L121:
	.cfi_restore_state
	addl	$1, 52(%esp)
	movl	%ebx, (%esp)
	fildl	52(%esp)
	fstpl	4(%esp)
	call	_lua_pushnumber
	movl	%ebp, 40(%esp)
	movl	$0, 44(%esp)
	addl	$1, %ebp
	fildq	40(%esp)
	movl	%ebx, (%esp)
	fstpl	4(%esp)
	call	_lua_pushnumber
	movl	56(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_lua_gettable
	movl	60(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_lua_settable
	cmpl	%ebp, %esi
	je	L120
L94:
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	call	___WSAFDIsSet@8
	.cfi_def_cfa_offset 680
	subl	$8, %esp
	.cfi_def_cfa_offset 688
	testl	%eax, %eax
	jne	L121
	addl	$1, %ebp
	cmpl	%ebp, %esi
	jne	L94
L120:
	movl	108(%esp), %esi
	addl	$1, %esi
	je	L59
	xorl	%edi, %edi
	xorl	%ebp, %ebp
	jmp	L61
	.p2align 4,,10
L60:
	addl	$1, %ebp
	cmpl	%ebp, %esi
	je	L59
L61:
	leal	396(%esp), %eax
	movl	%ebp, (%esp)
	movl	%eax, 4(%esp)
	call	___WSAFDIsSet@8
	.cfi_def_cfa_offset 680
	subl	$8, %esp
	.cfi_def_cfa_offset 688
	testl	%eax, %eax
	je	L60
	addl	$1, %edi
	movl	%ebx, (%esp)
	movl	%edi, 40(%esp)
	fildl	40(%esp)
	fstpl	4(%esp)
	call	_lua_pushnumber
	movl	%ebp, 40(%esp)
	movl	$0, 44(%esp)
	fildq	40(%esp)
	movl	%ebx, (%esp)
	fstpl	4(%esp)
	call	_lua_pushnumber
	movl	56(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_lua_gettable
	movl	80(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_lua_settable
	jmp	L60
	.p2align 4,,10
L40:
	fld1
	leal	112(%esp), %esi
	fchs
	movl	%esi, (%esp)
	fstpl	12(%esp)
	fldl	64(%esp)
	fstpl	4(%esp)
	call	_timeout_init
	movl	%esi, (%esp)
	call	_timeout_markstart
	leal	396(%esp), %eax
	movl	%esi, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	108(%esp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	_socket_select
	cmpl	$0, %eax
	jg	L122
	je	L123
	movl	%ebx, (%esp)
	movl	$LC8, 4(%esp)
	call	_luaL_error
	addl	$668, %esp
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
L123:
	.cfi_restore_state
	movl	%ebx, (%esp)
	movl	$LC7, 4(%esp)
	call	_lua_pushstring
	addl	$668, %esp
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
L117:
	.cfi_restore_state
	call	_lua_pushvalue
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_call
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_toboolean
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 40(%esp)
	call	_lua_settop
	movl	40(%esp), %eax
	testl	%eax, %eax
	je	L45
	addl	$1, 52(%esp)
	movl	%ebx, (%esp)
	fildl	52(%esp)
	fstpl	4(%esp)
	call	_lua_pushnumber
	movl	$-2, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushvalue
	movl	60(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_lua_settable
	movl	136(%esp), %edx
	testl	%edx, %edx
	je	L45
	xorl	%eax, %eax
	cmpl	140(%esp), %ebp
	je	L47
	.p2align 4,,10
L49:
	addl	$1, %eax
	cmpl	%eax, %edx
	je	L45
	cmpl	%ebp, 4(%edi,%eax,4)
	jne	L49
L47:
	leal	-1(%edx), %ebp
	cmpl	%eax, %ebp
	jbe	L51
	subl	%eax, %edx
	leal	0(,%eax,4), %ecx
	leal	-4(,%edx,4), %eax
	movl	%eax, 8(%esp)
	leal	8(%edi,%ecx), %eax
	movl	%eax, 4(%esp)
	leal	4(%edi,%ecx), %eax
	movl	%eax, (%esp)
	call	_memmove
L51:
	movl	%ebp, 136(%esp)
	jmp	L45
L122:
	movl	$0, 52(%esp)
	jmp	L54
	.cfi_endproc
LFE121:
	.section	.text.unlikely,"x"
LCOLDE9:
	.text
LHOTE9:
	.section .rdata,"dr"
LC10:
	.ascii "_SETSIZE\0"
	.section	.text.unlikely,"x"
LCOLDB12:
	.text
LHOTB12:
	.p2align 4,,15
	.globl	_select_open
	.def	_select_open;	.scl	2;	.type	32;	.endef
_select_open:
LFB120:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	$LC10, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushstring
	flds	LC11
	movl	%ebx, (%esp)
	fstpl	4(%esp)
	call	_lua_pushnumber
	movl	%ebx, (%esp)
	movl	$-3, 4(%esp)
	call	_lua_rawset
	movl	%ebx, (%esp)
	movl	$0, 12(%esp)
	movl	$_func, 8(%esp)
	movl	$0, 4(%esp)
	call	_luaL_openlib
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE120:
	.section	.text.unlikely,"x"
LCOLDE12:
	.text
LHOTE12:
	.section .rdata,"dr"
LC13:
	.ascii "select\0"
	.data
	.align 4
_func:
	.long	LC13
	.long	_global_select
	.long	0
	.long	0
	.section .rdata,"dr"
	.align 4
LC11:
	.long	1115684864
	.ident	"GCC: (Rev1, Built by MSYS2 project) 5.3.0"
	.def	_luaL_checktype;	.scl	2;	.type	32;	.endef
	.def	_lua_settop;	.scl	2;	.type	32;	.endef
	.def	_lua_pushnumber;	.scl	2;	.type	32;	.endef
	.def	_lua_gettable;	.scl	2;	.type	32;	.endef
	.def	_lua_type;	.scl	2;	.type	32;	.endef
	.def	_lua_pushstring;	.scl	2;	.type	32;	.endef
	.def	_lua_pushvalue;	.scl	2;	.type	32;	.endef
	.def	_lua_call;	.scl	2;	.type	32;	.endef
	.def	_lua_isnumber;	.scl	2;	.type	32;	.endef
	.def	_lua_tonumber;	.scl	2;	.type	32;	.endef
	.def	_lua_settable;	.scl	2;	.type	32;	.endef
	.def	_luaL_argerror;	.scl	2;	.type	32;	.endef
	.def	_luaL_optnumber;	.scl	2;	.type	32;	.endef
	.def	_lua_createtable;	.scl	2;	.type	32;	.endef
	.def	_lua_gettop;	.scl	2;	.type	32;	.endef
	.def	_timeout_init;	.scl	2;	.type	32;	.endef
	.def	_timeout_markstart;	.scl	2;	.type	32;	.endef
	.def	_socket_select;	.scl	2;	.type	32;	.endef
	.def	___WSAFDIsSet@8;	.scl	2;	.type	32;	.endef
	.def	_luaL_error;	.scl	2;	.type	32;	.endef
	.def	_lua_toboolean;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	_lua_rawset;	.scl	2;	.type	32;	.endef
	.def	_luaL_openlib;	.scl	2;	.type	32;	.endef
