section		.text
global		_ft_strdup
extern		_malloc

_ft_strdup:
			cmp		rdi, 0
			jz		error
			xor		rcx, rcx
			jmp		len_str

len_inc:
			inc		rcx

len_str:
			cmp		BYTE[rdi + rcx], 0
			jne		len_inc

malloc_start:
			inc		rcx
			push	rdi
			mov		rdi, rcx
			call	_malloc		; rax = _malloc(length)
			pop		rdi
			cmp		rax, 0
			jz		error

copy_start:
			xor		rcx, rcx
			xor		rdx, rdx
			jmp		copy_str

copy_inc:
			inc		rcx

copy_str:	mov		dl, BYTE[rdi + rcx]
			mov		BYTE[rax + rcx], dl
			cmp		dl, 0
			jnz		copy_inc
			jmp		return
		
error:
			xor		rax, rax

return:
			ret