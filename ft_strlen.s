
section	.text
global	_ft_strlen

; delete RAX

_ft_strlen:
			xor		rax, rax			;
			jmp		compare
increment:
			inc		rax					;
compare:
			cmp		BYTE [rdi + rax], 0	; str[i] == 0
			jne		increment
done:
			ret							;