	.file	"udp.c"
	.section .rdata,"dr"
LC0:
	.ascii "udp{any}\0"
	.section	.text.unlikely,"x"
LCOLDB1:
	.text
LHOTB1:
	.p2align 4,,15
	.def	_meth_gettimeout;	.scl	3;	.type	32;	.endef
_meth_gettimeout:
LFB135:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	$1, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_checkgroup
	addl	$8, %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_timeout_meth_gettimeout
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE135:
	.section	.text.unlikely,"x"
LCOLDE1:
	.text
LHOTE1:
	.section	.text.unlikely,"x"
LCOLDB2:
	.text
LHOTB2:
	.p2align 4,,15
	.def	_meth_settimeout;	.scl	3;	.type	32;	.endef
_meth_settimeout:
LFB134:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	$1, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_checkgroup
	addl	$8, %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_timeout_meth_settimeout
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE134:
	.section	.text.unlikely,"x"
LCOLDE2:
	.text
LHOTE2:
	.section .rdata,"dr"
LC3:
	.ascii "udp{unconnected}\0"
	.section	.text.unlikely,"x"
LCOLDB6:
	.text
LHOTB6:
	.p2align 4,,15
	.def	_meth_setsockname;	.scl	3;	.type	32;	.endef
_meth_setsockname:
LFB138:
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
	subl	$64, %esp
	.cfi_def_cfa_offset 80
	movl	80(%esp), %ebx
	movl	$1, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_checkclass
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_luaL_checklstring
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	%eax, %edi
	movl	%ebx, (%esp)
	call	_luaL_checklstring
	xorl	%edx, %edx
L6:
	movl	$0, 32(%esp,%edx)
	addl	$4, %edx
	cmpl	$32, %edx
	jb	L6
	movl	32(%esi), %edx
	leal	32(%esp), %ecx
	movl	%eax, 12(%esp)
	leal	32(%esi), %eax
	movl	%esi, (%esp)
	movl	%edi, 8(%esp)
	movl	%ecx, 16(%esp)
	movl	$2, 40(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 36(%esp)
	movl	$1, 32(%esp)
	call	_inet_trybind
	testl	%eax, %eax
	movl	%eax, %esi
	je	L8
	movl	%ebx, (%esp)
	call	_lua_pushnil
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushstring
	movl	$2, %eax
L9:
	addl	$64, %esp
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
L8:
	.cfi_restore_state
	fld1
	movl	%ebx, (%esp)
	fstpl	4(%esp)
	call	_lua_pushnumber
	movl	$1, %eax
	jmp	L9
	.cfi_endproc
LFE138:
	.section	.text.unlikely,"x"
LCOLDE6:
	.text
LHOTE6:
	.section	.text.unlikely,"x"
LCOLDB7:
	.text
LHOTB7:
	.p2align 4,,15
	.def	_meth_getfd;	.scl	3;	.type	32;	.endef
_meth_getfd:
LFB127:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	$1, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_checkgroup
	fildl	(%eax)
	movl	%ebx, (%esp)
	fstpl	4(%esp)
	call	_lua_pushnumber
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE127:
	.section	.text.unlikely,"x"
LCOLDE7:
	.text
LHOTE7:
	.section .rdata,"dr"
LC8:
	.ascii "*\0"
LC9:
	.ascii "udp{connected}\0"
	.section	.text.unlikely,"x"
LCOLDB10:
	.text
LHOTB10:
	.p2align 4,,15
	.def	_meth_setpeername;	.scl	3;	.type	32;	.endef
_meth_setpeername:
LFB136:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$LC8, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$92, %esp
	.cfi_def_cfa_offset 112
	movl	112(%esp), %ebx
	movl	$1, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_checkgroup
	movl	$0, 8(%esp)
	movl	%eax, %ebp
	movl	$2, 4(%esp)
	addl	$8, %eax
	movl	%ebx, (%esp)
	movl	%eax, 40(%esp)
	call	_luaL_checklstring
	movl	$2, %ecx
	movl	%eax, %esi
	movl	%eax, 44(%esp)
	repz cmpsb
	leal	48(%esp), %esi
	seta	%dl
	setb	%cl
	xorl	%eax, %eax
	cmpb	%cl, %dl
	jne	L32
L24:
	movl	$0, (%esi,%eax)
	addl	$4, %eax
	cmpl	$32, %eax
	jb	L24
	movl	32(%ebp), %eax
	movl	40(%esp), %edx
	movl	%ebp, (%esp)
	movl	$2, 56(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%eax, 52(%esp)
	call	_inet_trydisconnect
	movl	$1, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_setclass
L23:
	fld1
	movl	%ebx, (%esp)
	fstpl	4(%esp)
	call	_lua_pushnumber
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
L32:
	.cfi_restore_state
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	%ebx, (%esp)
	call	_luaL_checklstring
	xorl	%ecx, %ecx
L17:
	movl	$0, (%esi,%ecx)
	addl	$4, %ecx
	cmpl	$32, %ecx
	jb	L17
	movl	32(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	movl	40(%esp), %edi
	movl	%esi, 20(%esp)
	movl	%ebp, (%esp)
	movl	$2, 56(%esp)
	movl	%ecx, 52(%esp)
	movl	%eax, 8(%esp)
	leal	32(%ebp), %eax
	movl	%edi, 16(%esp)
	movl	%eax, 4(%esp)
	call	_inet_tryconnect
	testl	%eax, %eax
	movl	%eax, %esi
	je	L19
	movl	%ebx, (%esp)
	call	_lua_pushnil
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushstring
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
L19:
	.cfi_restore_state
	movl	$1, 8(%esp)
	movl	$LC9, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_setclass
	jmp	L23
	.cfi_endproc
LFE136:
	.section	.text.unlikely,"x"
LCOLDE10:
	.text
LHOTE10:
	.section	.text.unlikely,"x"
LCOLDB11:
	.text
LHOTB11:
	.p2align 4,,15
	.def	_meth_getoption;	.scl	3;	.type	32;	.endef
_meth_getoption:
LFB133:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	$1, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_checkgroup
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	movl	$_optget, 4(%esp)
	call	_opt_meth_getoption
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE133:
	.section	.text.unlikely,"x"
LCOLDE11:
	.text
LHOTE11:
	.section	.text.unlikely,"x"
LCOLDB12:
	.text
LHOTB12:
	.p2align 4,,15
	.def	_meth_setoption;	.scl	3;	.type	32;	.endef
_meth_setoption:
LFB132:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	$1, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_checkgroup
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	movl	$_optset, 4(%esp)
	call	_opt_meth_setoption
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE132:
	.section	.text.unlikely,"x"
LCOLDE12:
	.text
LHOTE12:
	.section	.text.unlikely,"x"
LCOLDB13:
	.text
LHOTB13:
	.p2align 4,,15
	.def	_meth_setfd;	.scl	3;	.type	32;	.endef
_meth_setfd:
LFB128:
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
	movl	$1, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_checkgroup
	movl	%ebx, (%esp)
	movl	$2, 4(%esp)
	movl	%eax, %esi
	call	_luaL_checknumber
	fnstcw	30(%esp)
	movzwl	30(%esp), %edx
	xorl	%eax, %eax
	movb	$12, %dh
	movw	%dx, 28(%esp)
	fldcw	28(%esp)
	fistpq	16(%esp)
	fldcw	30(%esp)
	movl	16(%esp), %ecx
	movl	%ecx, (%esi)
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
LFE128:
	.section	.text.unlikely,"x"
LCOLDE13:
	.text
LHOTE13:
	.section .rdata,"dr"
LC14:
	.ascii "refused\0"
	.section	.text.unlikely,"x"
LCOLDB15:
	.text
LHOTB15:
	.p2align 4,,15
	.def	_meth_sendto;	.scl	3;	.type	32;	.endef
_meth_sendto:
LFB123:
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
	movl	$1, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_checkclass
	movl	%eax, %esi
	leal	52(%esp), %eax
	movl	$2, 4(%esp)
	movl	%ebx, (%esp)
	movl	$0, 56(%esp)
	movl	%eax, 8(%esp)
	call	_luaL_checklstring
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	%eax, %edi
	movl	%ebx, (%esp)
	call	_luaL_checklstring
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	%eax, %ebp
	movl	%ebx, (%esp)
	call	_luaL_checklstring
	xorl	%edx, %edx
L40:
	movl	$0, 64(%esp,%edx)
	addl	$4, %edx
	cmpl	$32, %edx
	jb	L40
	movl	32(%esi), %edx
	leal	64(%esp), %ecx
	movl	%ebp, (%esp)
	movl	$2, 72(%esp)
	movl	$4, 64(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 68(%esp)
	leal	60(%esp), %edx
	movl	%edx, 12(%esp)
	call	*__imp__getaddrinfo@16
	.cfi_def_cfa_offset 112
	subl	$16, %esp
	.cfi_def_cfa_offset 128
	testl	%eax, %eax
	movl	%eax, %ebp
	je	L42
	movl	%ebx, (%esp)
	call	_lua_pushnil
	movl	%ebp, (%esp)
	call	_gai_strerrorA
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_lua_pushstring
	addl	$108, %esp
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
L42:
	.cfi_restore_state
	leal	8(%esi), %ebp
	movl	%ebp, (%esp)
	call	_timeout_markstart
	movl	60(%esp), %eax
	movl	%ebp, 24(%esp)
	movl	16(%eax), %edx
	movl	%edx, 20(%esp)
	movl	24(%eax), %eax
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	%eax, 16(%esp)
	leal	56(%esp), %eax
	movl	%eax, 12(%esp)
	movl	52(%esp), %eax
	movl	%eax, 8(%esp)
	call	_socket_sendto
	movl	%eax, %esi
	movl	60(%esp), %eax
	movl	%eax, (%esp)
	call	*__imp__freeaddrinfo@4
	.cfi_def_cfa_offset 124
	subl	$4, %esp
	.cfi_def_cfa_offset 128
	testl	%esi, %esi
	je	L44
	movl	%ebx, (%esp)
	call	_lua_pushnil
	cmpl	$-2, %esi
	movl	$LC14, %eax
	je	L45
	movl	%esi, (%esp)
	call	_socket_strerror
L45:
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushstring
	addl	$108, %esp
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
L44:
	.cfi_restore_state
	movl	56(%esp), %eax
	xorl	%edx, %edx
	movl	%ebx, (%esp)
	movl	%edx, 36(%esp)
	movl	%eax, 32(%esp)
	fildq	32(%esp)
	fstpl	4(%esp)
	call	_lua_pushnumber
	addl	$108, %esp
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
	.cfi_endproc
LFE123:
	.section	.text.unlikely,"x"
LCOLDE15:
	.text
LHOTE15:
	.section	.text.unlikely,"x"
LCOLDB16:
	.text
LHOTB16:
	.p2align 4,,15
	.def	_meth_send;	.scl	3;	.type	32;	.endef
_meth_send:
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
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	96(%esp), %ebx
	movl	$1, 8(%esp)
	movl	$LC9, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_checkclass
	leal	8(%eax), %edi
	movl	%eax, %esi
	leal	56(%esp), %eax
	movl	$2, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	movl	$0, 60(%esp)
	call	_luaL_checklstring
	movl	%edi, (%esp)
	movl	%eax, %ebp
	call	_timeout_markstart
	leal	60(%esp), %eax
	movl	%edi, 16(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 12(%esp)
	movl	56(%esp), %eax
	movl	%eax, 8(%esp)
	call	_socket_send
	testl	%eax, %eax
	je	L51
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_lua_pushnil
	cmpl	$-2, %esi
	movl	$LC14, %eax
	je	L52
	movl	%esi, (%esp)
	call	_socket_strerror
L52:
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushstring
	addl	$76, %esp
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
L51:
	.cfi_restore_state
	movl	60(%esp), %eax
	xorl	%edx, %edx
	movl	%ebx, (%esp)
	movl	%edx, 36(%esp)
	movl	%eax, 32(%esp)
	fildq	32(%esp)
	fstpl	4(%esp)
	call	_lua_pushnumber
	addl	$76, %esp
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
	.cfi_endproc
LFE122:
	.section	.text.unlikely,"x"
LCOLDE16:
	.text
LHOTE16:
	.section .rdata,"dr"
LC18:
	.ascii "out of memory\0"
	.section	.text.unlikely,"x"
LCOLDB19:
	.text
LHOTB19:
	.p2align 4,,15
	.def	_meth_receivefrom;	.scl	3;	.type	32;	.endef
_meth_receivefrom:
LFB125:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$8476, %eax
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	___chkstk_ms
	subl	%eax, %esp
	.cfi_def_cfa_offset 8496
	movl	8496(%esp), %ebx
	movl	$1, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_checkclass
	flds	LC17
	movl	$2, 4(%esp)
	movl	%eax, %ebp
	movl	%ebx, (%esp)
	fstpl	8(%esp)
	call	_luaL_optnumber
	fnstcw	62(%esp)
	movzwl	62(%esp), %eax
	movb	$12, %ah
	movw	%ax, 60(%esp)
	fldcw	60(%esp)
	fistpq	48(%esp)
	fldcw	62(%esp)
	movl	48(%esp), %esi
	cmpl	$8192, %esi
	ja	L78
	leal	8(%ebp), %edi
	movl	$128, 68(%esp)
	movl	%edi, (%esp)
	call	_timeout_markstart
	leal	68(%esp), %eax
	leal	144(%esp), %edx
	movl	%esi, 8(%esp)
	leal	272(%esp), %esi
	movl	%edi, 24(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 20(%esp)
	leal	64(%esp), %eax
	movl	%edx, 16(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, 44(%esp)
	movl	%eax, 12(%esp)
	call	_socket_recvfrom
	movl	%eax, %edi
	leal	2(%eax), %eax
	movl	44(%esp), %edx
	andl	$-3, %eax
	jne	L79
	movl	68(%esp), %eax
	leal	73(%esp), %edi
	leal	79(%esp), %ebp
	movl	$10, 24(%esp)
	movl	$6, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$65, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*__imp__getnameinfo@28
	.cfi_def_cfa_offset 8468
	subl	$28, %esp
	.cfi_def_cfa_offset 8496
	testl	%eax, %eax
	jne	L67
	movl	64(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	call	_lua_pushlstring
	movl	%ebp, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushstring
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	_strtol
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_lua_pushinteger
	movl	$3, %eax
L72:
	addl	$8476, %esp
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
L79:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	_lua_pushnil
	movl	%edi, (%esp)
	call	_socket_strerror
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_lua_pushstring
	addl	$8476, %esp
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
L78:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	_malloc
	leal	8(%ebp), %edx
	movl	%eax, 44(%esp)
	movl	$128, 68(%esp)
	movl	%edx, (%esp)
	movl	%edx, 56(%esp)
	call	_timeout_markstart
	movl	44(%esp), %eax
	movl	56(%esp), %edx
	testl	%eax, %eax
	je	L80
	leal	68(%esp), %eax
	movl	%edx, 24(%esp)
	leal	144(%esp), %edx
	movl	%esi, 8(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 20(%esp)
	leal	64(%esp), %eax
	movl	%edx, 16(%esp)
	movl	%edx, 56(%esp)
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	movl	%eax, 4(%esp)
	call	_socket_recvfrom
	movl	%eax, %esi
	leal	2(%eax), %eax
	movl	56(%esp), %edx
	andl	$-3, %eax
	je	L81
	movl	%ebx, (%esp)
	call	_lua_pushnil
	movl	%esi, (%esp)
	call	_socket_strerror
L74:
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushstring
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	addl	$8476, %esp
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
L80:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	_lua_pushnil
	movl	%ebx, (%esp)
	movl	$13, 8(%esp)
	movl	$LC18, 4(%esp)
	call	_lua_pushlstring
	addl	$8476, %esp
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
L67:
	.cfi_restore_state
	movl	%ebx, (%esp)
	movl	%eax, 44(%esp)
	call	_lua_pushnil
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	_gai_strerrorA
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_lua_pushstring
	addl	$8476, %esp
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
L81:
	.cfi_restore_state
	movl	68(%esp), %eax
	leal	73(%esp), %esi
	leal	79(%esp), %edi
	movl	$10, 24(%esp)
	movl	$6, 20(%esp)
	movl	%esi, 16(%esp)
	movl	$65, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*__imp__getnameinfo@28
	.cfi_def_cfa_offset 8468
	subl	$28, %esp
	.cfi_def_cfa_offset 8496
	testl	%eax, %eax
	movl	%eax, %ebp
	je	L82
	movl	%ebx, (%esp)
	call	_lua_pushnil
	movl	%ebp, (%esp)
	call	_gai_strerrorA
	jmp	L74
L82:
	movl	64(%esp), %eax
	movl	44(%esp), %ebp
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	movl	%ebp, 4(%esp)
	call	_lua_pushlstring
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushstring
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	_strtol
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_lua_pushinteger
	movl	%ebp, (%esp)
	call	_free
	movl	$3, %eax
	jmp	L72
	.cfi_endproc
LFE125:
	.section	.text.unlikely,"x"
LCOLDE19:
	.text
LHOTE19:
	.section	.text.unlikely,"x"
LCOLDB20:
	.text
LHOTB20:
	.p2align 4,,15
	.def	_meth_receive;	.scl	3;	.type	32;	.endef
_meth_receive:
LFB124:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$8284, %eax
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	___chkstk_ms
	subl	%eax, %esp
	.cfi_def_cfa_offset 8304
	movl	8304(%esp), %ebx
	movl	$1, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_checkgroup
	flds	LC17
	movl	$2, 4(%esp)
	movl	%eax, %ebp
	movl	%ebx, (%esp)
	fstpl	8(%esp)
	call	_luaL_optnumber
	fnstcw	62(%esp)
	movzwl	62(%esp), %eax
	movb	$12, %ah
	movw	%ax, 60(%esp)
	fldcw	60(%esp)
	fistpq	48(%esp)
	fldcw	62(%esp)
	movl	48(%esp), %esi
	cmpl	$8192, %esi
	ja	L98
	leal	8(%ebp), %edi
	movl	%edi, (%esp)
	call	_timeout_markstart
	leal	76(%esp), %eax
	movl	%esi, 8(%esp)
	leal	80(%esp), %esi
	movl	%edi, 16(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 12(%esp)
	movl	%esi, 4(%esp)
	call	_socket_recv
	leal	2(%eax), %edx
	andl	$-3, %edx
	jne	L99
	movl	76(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	call	_lua_pushlstring
	addl	$8284, %esp
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
L99:
	.cfi_restore_state
	movl	%ebx, (%esp)
	movl	%eax, 44(%esp)
	call	_lua_pushnil
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	_socket_strerror
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_lua_pushstring
	addl	$8284, %esp
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
L98:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	_malloc
	leal	8(%ebp), %edx
	movl	%eax, 44(%esp)
	movl	%edx, (%esp)
	movl	%edx, 56(%esp)
	call	_timeout_markstart
	movl	44(%esp), %eax
	movl	56(%esp), %edx
	testl	%eax, %eax
	jne	L85
	movl	%ebx, (%esp)
	call	_lua_pushnil
	movl	%ebx, (%esp)
	movl	$13, 8(%esp)
	movl	$LC18, 4(%esp)
	call	_lua_pushlstring
	addl	$8284, %esp
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
L85:
	.cfi_restore_state
	leal	76(%esp), %eax
	movl	%esi, 8(%esp)
	movl	%edx, 16(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	movl	%eax, 4(%esp)
	call	_socket_recv
	movl	%eax, %esi
	leal	2(%eax), %eax
	andl	$-3, %eax
	je	L100
	movl	%ebx, (%esp)
	call	_lua_pushnil
	movl	%esi, (%esp)
	call	_socket_strerror
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_lua_pushstring
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	addl	$8284, %esp
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
L100:
	.cfi_restore_state
	movl	76(%esp), %eax
	movl	44(%esp), %edi
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	call	_lua_pushlstring
	movl	%edi, (%esp)
	call	_free
	addl	$8284, %esp
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
	.cfi_endproc
LFE124:
	.section	.text.unlikely,"x"
LCOLDE20:
	.text
LHOTE20:
	.section	.text.unlikely,"x"
LCOLDB21:
	.text
LHOTB21:
	.p2align 4,,15
	.def	_meth_getsockname;	.scl	3;	.type	32;	.endef
_meth_getsockname:
LFB131:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	$1, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_checkgroup
	movl	32(%eax), %edx
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	call	_inet_meth_getsockname
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE131:
	.section	.text.unlikely,"x"
LCOLDE21:
	.text
LHOTE21:
	.section	.text.unlikely,"x"
LCOLDB22:
	.text
LHOTB22:
	.p2align 4,,15
	.def	_meth_getpeername;	.scl	3;	.type	32;	.endef
_meth_getpeername:
LFB130:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	$1, 8(%esp)
	movl	$LC9, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_checkclass
	movl	32(%eax), %edx
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	call	_inet_meth_getpeername
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE130:
	.section	.text.unlikely,"x"
LCOLDE22:
	.text
LHOTE22:
	.section	.text.unlikely,"x"
LCOLDB23:
	.text
LHOTB23:
	.p2align 4,,15
	.def	_meth_dirty;	.scl	3;	.type	32;	.endef
_meth_dirty:
LFB129:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	$1, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_checkgroup
	movl	%ebx, (%esp)
	movl	$0, 4(%esp)
	call	_lua_pushboolean
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE129:
	.section	.text.unlikely,"x"
LCOLDE23:
	.text
LHOTE23:
	.section	.text.unlikely,"x"
LCOLDB24:
	.text
LHOTB24:
	.p2align 4,,15
	.def	_meth_close;	.scl	3;	.type	32;	.endef
_meth_close:
LFB137:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	$1, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_checkgroup
	movl	%eax, (%esp)
	call	_socket_destroy
	fld1
	movl	%ebx, (%esp)
	fstpl	4(%esp)
	call	_lua_pushnumber
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE137:
	.section	.text.unlikely,"x"
LCOLDE24:
	.text
LHOTE24:
	.section .rdata,"dr"
LC25:
	.ascii "inet6\0"
LC26:
	.ascii "inet4\0"
	.section	.text.unlikely,"x"
LCOLDB27:
	.text
LHOTB27:
	.p2align 4,,15
	.def	_meth_getfamily;	.scl	3;	.type	32;	.endef
_meth_getfamily:
LFB126:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	$1, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_checkgroup
	cmpl	$23, 32(%eax)
	movl	$5, 8(%esp)
	je	L113
	movl	%ebx, (%esp)
	movl	$LC26, 4(%esp)
	call	_lua_pushlstring
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L113:
	.cfi_restore_state
	movl	%ebx, (%esp)
	movl	$LC25, 4(%esp)
	call	_lua_pushlstring
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE126:
	.section	.text.unlikely,"x"
LCOLDE27:
	.text
LHOTE27:
	.section	.text.unlikely,"x"
LCOLDB29:
	.text
LHOTB29:
	.p2align 4,,15
	.def	_global_create;	.scl	3;	.type	32;	.endef
_global_create:
LFB140:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %esi
	movl	$40, 4(%esp)
	movl	%esi, (%esp)
	call	_lua_newuserdata
	movl	%esi, (%esp)
	movl	$-1, 8(%esp)
	movl	%eax, %ebx
	movl	$LC3, 4(%esp)
	call	_auxiliar_setclass
	fld1
	movl	$-1, (%ebx)
	leal	8(%ebx), %eax
	fchs
	movl	%eax, (%esp)
	fstl	12(%esp)
	fstpl	4(%esp)
	call	_timeout_init
	movl	$0, 32(%ebx)
	addl	$36, %esp
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
LFE140:
	.section	.text.unlikely,"x"
LCOLDE29:
	.text
LHOTE29:
	.section	.text.unlikely,"x"
LCOLDB30:
	.text
LHOTB30:
	.p2align 4,,15
	.def	_global_create4;	.scl	3;	.type	32;	.endef
_global_create4:
LFB141:
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
	movl	48(%esp), %esi
	movl	$40, 4(%esp)
	movl	%esi, (%esp)
	call	_lua_newuserdata
	movl	$-1, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	%eax, %ebx
	movl	%esi, (%esp)
	call	_auxiliar_setclass
	fld1
	movl	$-1, (%ebx)
	leal	8(%ebx), %eax
	fchs
	movl	%eax, (%esp)
	fstl	12(%esp)
	fstpl	4(%esp)
	call	_timeout_init
	movl	$2, 32(%ebx)
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	$2, 4(%esp)
	movl	%ebx, (%esp)
	call	_inet_trycreate
	testl	%eax, %eax
	je	L117
	movl	%eax, %edi
	movl	%esi, (%esp)
	call	_lua_pushnil
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	_lua_pushstring
	movl	$2, %eax
L118:
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
L117:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	_socket_setnonblocking
	movl	$1, %eax
	jmp	L118
	.cfi_endproc
LFE141:
	.section	.text.unlikely,"x"
LCOLDE30:
	.text
LHOTE30:
	.section	.text.unlikely,"x"
LCOLDB31:
	.text
LHOTB31:
	.p2align 4,,15
	.def	_global_create6;	.scl	3;	.type	32;	.endef
_global_create6:
LFB142:
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
	movl	48(%esp), %esi
	movl	$40, 4(%esp)
	movl	%esi, (%esp)
	call	_lua_newuserdata
	movl	$-1, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	%eax, %ebx
	movl	%esi, (%esp)
	call	_auxiliar_setclass
	fld1
	movl	$-1, (%ebx)
	leal	8(%ebx), %eax
	fchs
	movl	%eax, (%esp)
	fstl	12(%esp)
	fstpl	4(%esp)
	call	_timeout_init
	movl	$23, 32(%ebx)
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	$23, 4(%esp)
	movl	%ebx, (%esp)
	call	_inet_trycreate
	testl	%eax, %eax
	je	L121
	movl	%eax, %edi
	movl	%esi, (%esp)
	call	_lua_pushnil
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	_lua_pushstring
	movl	$2, %eax
L122:
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
L121:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	_socket_setnonblocking
	movl	$1, %eax
	jmp	L122
	.cfi_endproc
LFE142:
	.section	.text.unlikely,"x"
LCOLDE31:
	.text
LHOTE31:
	.section .rdata,"dr"
LC32:
	.ascii "select{able}\0"
LC33:
	.ascii "_DATAGRAMSIZE\0"
	.section	.text.unlikely,"x"
LCOLDB34:
	.text
LHOTB34:
	.p2align 4,,15
	.globl	_udp_open
	.def	_udp_open;	.scl	2;	.type	32;	.endef
_udp_open:
LFB120:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	$_udp_methods, 8(%esp)
	movl	$LC9, 4(%esp)
	movl	%ebx, (%esp)
	call	_auxiliar_newclass
	movl	%ebx, (%esp)
	movl	$_udp_methods, 8(%esp)
	movl	$LC3, 4(%esp)
	call	_auxiliar_newclass
	movl	%ebx, (%esp)
	movl	$LC0, 8(%esp)
	movl	$LC9, 4(%esp)
	call	_auxiliar_add2group
	movl	%ebx, (%esp)
	movl	$LC0, 8(%esp)
	movl	$LC3, 4(%esp)
	call	_auxiliar_add2group
	movl	%ebx, (%esp)
	movl	$LC32, 8(%esp)
	movl	$LC9, 4(%esp)
	call	_auxiliar_add2group
	movl	%ebx, (%esp)
	movl	$LC32, 8(%esp)
	movl	$LC3, 4(%esp)
	call	_auxiliar_add2group
	movl	%ebx, (%esp)
	movl	$0, 8(%esp)
	movl	$_func, 4(%esp)
	call	_luaL_setfuncs
	movl	%ebx, (%esp)
	movl	$13, 8(%esp)
	movl	$LC33, 4(%esp)
	call	_lua_pushlstring
	movl	%ebx, (%esp)
	movl	$8192, 4(%esp)
	call	_lua_pushinteger
	movl	%ebx, (%esp)
	movl	$-3, 4(%esp)
	call	_lua_rawset
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
LCOLDE34:
	.text
LHOTE34:
	.section .rdata,"dr"
LC35:
	.ascii "udp\0"
LC36:
	.ascii "udp4\0"
LC37:
	.ascii "udp6\0"
	.data
	.align 32
_func:
	.long	LC35
	.long	_global_create
	.long	LC36
	.long	_global_create4
	.long	LC37
	.long	_global_create6
	.long	0
	.long	0
	.section .rdata,"dr"
LC38:
	.ascii "dontroute\0"
LC39:
	.ascii "broadcast\0"
LC40:
	.ascii "reuseaddr\0"
LC41:
	.ascii "reuseport\0"
LC42:
	.ascii "ip-multicast-if\0"
LC43:
	.ascii "ip-multicast-loop\0"
LC44:
	.ascii "error\0"
LC45:
	.ascii "ipv6-unicast-hops\0"
LC46:
	.ascii "ipv6-multicast-hops\0"
LC47:
	.ascii "ipv6-multicast-loop\0"
LC48:
	.ascii "ipv6-v6only\0"
	.data
	.align 32
_optget:
	.long	LC38
	.long	_opt_get_dontroute
	.long	LC39
	.long	_opt_get_broadcast
	.long	LC40
	.long	_opt_get_reuseaddr
	.long	LC41
	.long	_opt_get_reuseport
	.long	LC42
	.long	_opt_get_ip_multicast_if
	.long	LC43
	.long	_opt_get_ip_multicast_loop
	.long	LC44
	.long	_opt_get_error
	.long	LC45
	.long	_opt_get_ip6_unicast_hops
	.long	LC46
	.long	_opt_get_ip6_unicast_hops
	.long	LC47
	.long	_opt_get_ip6_multicast_loop
	.long	LC48
	.long	_opt_get_ip6_v6only
	.long	0
	.long	0
	.section .rdata,"dr"
LC49:
	.ascii "ip-multicast-ttl\0"
LC50:
	.ascii "ip-add-membership\0"
LC51:
	.ascii "ip-drop-membership\0"
LC52:
	.ascii "ipv6-add-membership\0"
LC53:
	.ascii "ipv6-drop-membership\0"
	.data
	.align 32
_optset:
	.long	LC38
	.long	_opt_set_dontroute
	.long	LC39
	.long	_opt_set_broadcast
	.long	LC40
	.long	_opt_set_reuseaddr
	.long	LC41
	.long	_opt_set_reuseport
	.long	LC42
	.long	_opt_set_ip_multicast_if
	.long	LC49
	.long	_opt_set_ip_multicast_ttl
	.long	LC43
	.long	_opt_set_ip_multicast_loop
	.long	LC50
	.long	_opt_set_ip_add_membership
	.long	LC51
	.long	_opt_set_ip_drop_membersip
	.long	LC45
	.long	_opt_set_ip6_unicast_hops
	.long	LC46
	.long	_opt_set_ip6_unicast_hops
	.long	LC47
	.long	_opt_set_ip6_multicast_loop
	.long	LC52
	.long	_opt_set_ip6_add_membership
	.long	LC53
	.long	_opt_set_ip6_drop_membersip
	.long	LC48
	.long	_opt_set_ip6_v6only
	.long	0
	.long	0
	.section .rdata,"dr"
LC54:
	.ascii "__gc\0"
LC55:
	.ascii "__tostring\0"
LC56:
	.ascii "close\0"
LC57:
	.ascii "dirty\0"
LC58:
	.ascii "getfamily\0"
LC59:
	.ascii "getfd\0"
LC60:
	.ascii "getpeername\0"
LC61:
	.ascii "getsockname\0"
LC62:
	.ascii "receive\0"
LC63:
	.ascii "receivefrom\0"
LC64:
	.ascii "send\0"
LC65:
	.ascii "sendto\0"
LC66:
	.ascii "setfd\0"
LC67:
	.ascii "setoption\0"
LC68:
	.ascii "getoption\0"
LC69:
	.ascii "setpeername\0"
LC70:
	.ascii "setsockname\0"
LC71:
	.ascii "settimeout\0"
LC72:
	.ascii "gettimeout\0"
	.data
	.align 32
_udp_methods:
	.long	LC54
	.long	_meth_close
	.long	LC55
	.long	_auxiliar_tostring
	.long	LC56
	.long	_meth_close
	.long	LC57
	.long	_meth_dirty
	.long	LC58
	.long	_meth_getfamily
	.long	LC59
	.long	_meth_getfd
	.long	LC60
	.long	_meth_getpeername
	.long	LC61
	.long	_meth_getsockname
	.long	LC62
	.long	_meth_receive
	.long	LC63
	.long	_meth_receivefrom
	.long	LC64
	.long	_meth_send
	.long	LC65
	.long	_meth_sendto
	.long	LC66
	.long	_meth_setfd
	.long	LC67
	.long	_meth_setoption
	.long	LC68
	.long	_meth_getoption
	.long	LC69
	.long	_meth_setpeername
	.long	LC70
	.long	_meth_setsockname
	.long	LC71
	.long	_meth_settimeout
	.long	LC72
	.long	_meth_gettimeout
	.long	0
	.long	0
	.section .rdata,"dr"
	.align 4
LC17:
	.long	1174405120
	.ident	"GCC: (Rev1, Built by MSYS2 project) 5.3.0"
	.def	_auxiliar_checkgroup;	.scl	2;	.type	32;	.endef
	.def	_timeout_meth_gettimeout;	.scl	2;	.type	32;	.endef
	.def	_timeout_meth_settimeout;	.scl	2;	.type	32;	.endef
	.def	_auxiliar_checkclass;	.scl	2;	.type	32;	.endef
	.def	_luaL_checklstring;	.scl	2;	.type	32;	.endef
	.def	_inet_trybind;	.scl	2;	.type	32;	.endef
	.def	_lua_pushnil;	.scl	2;	.type	32;	.endef
	.def	_lua_pushstring;	.scl	2;	.type	32;	.endef
	.def	_lua_pushnumber;	.scl	2;	.type	32;	.endef
	.def	_inet_trydisconnect;	.scl	2;	.type	32;	.endef
	.def	_auxiliar_setclass;	.scl	2;	.type	32;	.endef
	.def	_inet_tryconnect;	.scl	2;	.type	32;	.endef
	.def	_opt_meth_getoption;	.scl	2;	.type	32;	.endef
	.def	_opt_meth_setoption;	.scl	2;	.type	32;	.endef
	.def	_luaL_checknumber;	.scl	2;	.type	32;	.endef
	.def	_gai_strerrorA;	.scl	2;	.type	32;	.endef
	.def	_timeout_markstart;	.scl	2;	.type	32;	.endef
	.def	_socket_sendto;	.scl	2;	.type	32;	.endef
	.def	_socket_strerror;	.scl	2;	.type	32;	.endef
	.def	_socket_send;	.scl	2;	.type	32;	.endef
	.def	_luaL_optnumber;	.scl	2;	.type	32;	.endef
	.def	_socket_recvfrom;	.scl	2;	.type	32;	.endef
	.def	_lua_pushlstring;	.scl	2;	.type	32;	.endef
	.def	_strtol;	.scl	2;	.type	32;	.endef
	.def	_lua_pushinteger;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_socket_recv;	.scl	2;	.type	32;	.endef
	.def	_inet_meth_getsockname;	.scl	2;	.type	32;	.endef
	.def	_inet_meth_getpeername;	.scl	2;	.type	32;	.endef
	.def	_lua_pushboolean;	.scl	2;	.type	32;	.endef
	.def	_socket_destroy;	.scl	2;	.type	32;	.endef
	.def	_lua_newuserdata;	.scl	2;	.type	32;	.endef
	.def	_timeout_init;	.scl	2;	.type	32;	.endef
	.def	_inet_trycreate;	.scl	2;	.type	32;	.endef
	.def	_socket_setnonblocking;	.scl	2;	.type	32;	.endef
	.def	_auxiliar_newclass;	.scl	2;	.type	32;	.endef
	.def	_auxiliar_add2group;	.scl	2;	.type	32;	.endef
	.def	_luaL_setfuncs;	.scl	2;	.type	32;	.endef
	.def	_lua_rawset;	.scl	2;	.type	32;	.endef
	.def	_opt_get_dontroute;	.scl	2;	.type	32;	.endef
	.def	_opt_get_broadcast;	.scl	2;	.type	32;	.endef
	.def	_opt_get_reuseaddr;	.scl	2;	.type	32;	.endef
	.def	_opt_get_reuseport;	.scl	2;	.type	32;	.endef
	.def	_opt_get_ip_multicast_if;	.scl	2;	.type	32;	.endef
	.def	_opt_get_ip_multicast_loop;	.scl	2;	.type	32;	.endef
	.def	_opt_get_error;	.scl	2;	.type	32;	.endef
	.def	_opt_get_ip6_unicast_hops;	.scl	2;	.type	32;	.endef
	.def	_opt_get_ip6_multicast_loop;	.scl	2;	.type	32;	.endef
	.def	_opt_get_ip6_v6only;	.scl	2;	.type	32;	.endef
	.def	_opt_set_dontroute;	.scl	2;	.type	32;	.endef
	.def	_opt_set_broadcast;	.scl	2;	.type	32;	.endef
	.def	_opt_set_reuseaddr;	.scl	2;	.type	32;	.endef
	.def	_opt_set_reuseport;	.scl	2;	.type	32;	.endef
	.def	_opt_set_ip_multicast_if;	.scl	2;	.type	32;	.endef
	.def	_opt_set_ip_multicast_ttl;	.scl	2;	.type	32;	.endef
	.def	_opt_set_ip_multicast_loop;	.scl	2;	.type	32;	.endef
	.def	_opt_set_ip_add_membership;	.scl	2;	.type	32;	.endef
	.def	_opt_set_ip_drop_membersip;	.scl	2;	.type	32;	.endef
	.def	_opt_set_ip6_unicast_hops;	.scl	2;	.type	32;	.endef
	.def	_opt_set_ip6_multicast_loop;	.scl	2;	.type	32;	.endef
	.def	_opt_set_ip6_add_membership;	.scl	2;	.type	32;	.endef
	.def	_opt_set_ip6_drop_membersip;	.scl	2;	.type	32;	.endef
	.def	_opt_set_ip6_v6only;	.scl	2;	.type	32;	.endef
	.def	_auxiliar_tostring;	.scl	2;	.type	32;	.endef
