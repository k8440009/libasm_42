section .text
global _ft_strcpy

_ft_strcpy:
	xor rcx, rcx
	xor rdx, rdx
	cmp rsi, 0	; dst = rdi src = rsi
	jz done
	jmp copy

copy:
	cmp BYTE[rsi + rcx], 0
	jz done
	mov dl, BYTE [rsi + rcx]
	mov BYTE [rdi + rcx], dl
	inc rcx
	jmp copy

done:
	mov BYTE[rdi + rcx], 0
	mov rax, rdi
	ret