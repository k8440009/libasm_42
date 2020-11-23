
section	.text
global	_ft_strlen

_ft_strlen:
			xor		rax, rax
			cmp 	rdi, 0
			jz		.cycle_quit

.cycle : 
			cmp BYTE [rdi + rax], 0
			jz .cycle_quit
			inc rax
			jmp .cycle

.cycle_quit :
			ret