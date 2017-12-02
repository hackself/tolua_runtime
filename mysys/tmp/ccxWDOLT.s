	.file	"except.c"
	.text
	.p2align 4,,15
	.def	_do_nothing;	.scl	3;	.type	32;	.endef
_do_nothing:
	xorl	%eax, %eax
	ret
	.p2align 4,,15
	.def	_global_protect;	.scl	3;	.type	32;	.endef
_global_protect:
	pushl	%ebx
	subl	$24, %esp
	movl	32(%esp), %ebx
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_settop
	movl	%ebx, (%esp)
	movl	$-10003, 4(%esp)
	call	_lua_pushvalue
	movl	%ebx, (%esp)
	movl	$1, 4(%esp)
	call	_lua_insert
	movl	%ebx, (%esp)
	movl	$2, 8(%esp)
	movl	$_protected_, 4(%esp)
	call	_lua_pushcclosure
	addl	$24, %esp
	movl	$1, %eax
	popl	%ebx
	ret
	.p2align 4,,15
	.def	_global_newtry;	.scl	3;	.type	32;	.endef
_global_newtry:
	pushl	%ebx
	subl	$24, %esp
	movl	32(%esp), %ebx
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_settop
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_type
	testl	%eax, %eax
	jne	L6
	movl	$0, 8(%esp)
	movl	$_do_nothing, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushcclosure
L6:
	movl	%ebx, (%esp)
	movl	$-10003, 4(%esp)
	call	_lua_pushvalue
	movl	%ebx, (%esp)
	movl	$-2, 4(%esp)
	call	_lua_insert
	movl	%ebx, (%esp)
	movl	$2, 8(%esp)
	movl	$_finalize, 4(%esp)
	call	_lua_pushcclosure
	addl	$24, %esp
	movl	$1, %eax
	popl	%ebx
	ret
	.p2align 4,,15
	.def	_protected_;	.scl	3;	.type	32;	.endef
_protected_:
	pushl	%esi
	pushl	%ebx
	subl	$20, %esp
	movl	32(%esp), %ebx
	movl	$-10004, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pushvalue
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_insert
	movl	%ebx, (%esp)
	call	_lua_gettop
	subl	$1, %eax
	movl	$0, 12(%esp)
	movl	$-1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_pcall
	cmpl	$1, %eax
	jbe	L9
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_type
	cmpl	$5, %eax
	je	L21
L10:
	movl	%ebx, 32(%esp)
	addl	$20, %esp
	popl	%ebx
	popl	%esi
	jmp	_lua_error
	.p2align 4,,10
L9:
	movl	%ebx, 32(%esp)
	addl	$20, %esp
	popl	%ebx
	popl	%esi
	jmp	_lua_gettop
	.p2align 4,,10
L21:
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_getmetatable
	testl	%eax, %eax
	je	L10
	movl	$-10003, 8(%esp)
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_rawequal
	movl	$-2, 4(%esp)
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_lua_settop
	testl	%esi, %esi
	je	L10
	movl	%ebx, (%esp)
	call	_lua_pushnil
	movl	%ebx, (%esp)
	movl	$1, 8(%esp)
	movl	$-2, 4(%esp)
	call	_lua_rawgeti
	addl	$20, %esp
	movl	$2, %eax
	popl	%ebx
	popl	%esi
	ret
	.p2align 4,,15
	.def	_finalize;	.scl	3;	.type	32;	.endef
_finalize:
	pushl	%ebx
	subl	$24, %esp
	movl	32(%esp), %ebx
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_toboolean
	testl	%eax, %eax
	je	L26
	movl	%ebx, 32(%esp)
	addl	$24, %esp
	popl	%ebx
	jmp	_lua_gettop
	.p2align 4,,10
L26:
	movl	%ebx, (%esp)
	movl	$-10004, 4(%esp)
	call	_lua_pushvalue
	movl	%ebx, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	call	_lua_call
	movl	%ebx, (%esp)
	movl	$2, 4(%esp)
	call	_lua_settop
	movl	%ebx, (%esp)
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	call	_lua_createtable
	movl	%ebx, (%esp)
	movl	$-2, 4(%esp)
	call	_lua_pushvalue
	movl	%ebx, (%esp)
	movl	$1, 8(%esp)
	movl	$-2, 4(%esp)
	call	_lua_rawseti
	movl	%ebx, (%esp)
	movl	$-10003, 4(%esp)
	call	_lua_pushvalue
	movl	%ebx, (%esp)
	movl	$-2, 4(%esp)
	call	_lua_setmetatable
	movl	%ebx, (%esp)
	call	_lua_error
	addl	$24, %esp
	xorl	%eax, %eax
	popl	%ebx
	ret
	.section .rdata,"dr"
LC0:
	.ascii "__metatable\0"
	.text
	.p2align 4,,15
	.globl	_except_open
	.def	_except_open;	.scl	2;	.type	32;	.endef
_except_open:
	pushl	%ebx
	subl	$24, %esp
	movl	32(%esp), %ebx
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	_lua_createtable
	movl	%ebx, (%esp)
	movl	$0, 4(%esp)
	call	_lua_pushboolean
	movl	%ebx, (%esp)
	movl	$LC0, 8(%esp)
	movl	$-2, 4(%esp)
	call	_lua_setfield
	movl	%ebx, (%esp)
	movl	$1, 8(%esp)
	movl	$_func, 4(%esp)
	call	_luaL_setfuncs
	addl	$24, %esp
	xorl	%eax, %eax
	popl	%ebx
	ret
	.section .rdata,"dr"
LC1:
	.ascii "newtry\0"
LC2:
	.ascii "protect\0"
	.data
	.align 4
_func:
	.long	LC1
	.long	_global_newtry
	.long	LC2
	.long	_global_protect
	.long	0
	.long	0
	.ident	"GCC: (Rev1, Built by MSYS2 project) 7.2.0"
	.def	_lua_settop;	.scl	2;	.type	32;	.endef
	.def	_lua_pushvalue;	.scl	2;	.type	32;	.endef
	.def	_lua_insert;	.scl	2;	.type	32;	.endef
	.def	_lua_pushcclosure;	.scl	2;	.type	32;	.endef
	.def	_lua_type;	.scl	2;	.type	32;	.endef
	.def	_lua_gettop;	.scl	2;	.type	32;	.endef
	.def	_lua_pcall;	.scl	2;	.type	32;	.endef
	.def	_lua_error;	.scl	2;	.type	32;	.endef
	.def	_lua_getmetatable;	.scl	2;	.type	32;	.endef
	.def	_lua_rawequal;	.scl	2;	.type	32;	.endef
	.def	_lua_pushnil;	.scl	2;	.type	32;	.endef
	.def	_lua_rawgeti;	.scl	2;	.type	32;	.endef
	.def	_lua_toboolean;	.scl	2;	.type	32;	.endef
	.def	_lua_call;	.scl	2;	.type	32;	.endef
	.def	_lua_createtable;	.scl	2;	.type	32;	.endef
	.def	_lua_rawseti;	.scl	2;	.type	32;	.endef
	.def	_lua_setmetatable;	.scl	2;	.type	32;	.endef
	.def	_lua_pushboolean;	.scl	2;	.type	32;	.endef
	.def	_lua_setfield;	.scl	2;	.type	32;	.endef
	.def	_luaL_setfuncs;	.scl	2;	.type	32;	.endef
