section .text
global	_ft_strcmp

_ft_strcmp:
			xor		rcx, rcx
			xor		rdx, rdx
			xor		rax, rax
			cmp		rdi, 0
			jz		check_null
			cmp		rsi, 0
			jz		check_null
			jmp		end_str

end_str:
			cmp		BYTE[rdi + rcx], 0
			jz		check_right
			cmp		BYTE[rsi + rcx], 0
			jz		check_left
			jmp		compare

compare:
			mov		dl, BYTE[rdi + rcx]
			cmp		dl, BYTE[rsi + rcx]
			jg		left
			jl		right
			inc		rcx
			jmp		end_str

check_left:
			cmp		BYTE[rdi + rcx], 0
			jz		equal
			jmp		left

check_right:
			cmp		BYTE[rsi + rcx], 0
			jz		equal
			jmp		right

check_null:
			cmp		rdi, rsi
			jz		equal
			jg		left
			jmp		right

equal:
			mov		rax, 0
			ret

left:
			mov		rax, -1
			ret

right:
			mov		rax, 1
			ret