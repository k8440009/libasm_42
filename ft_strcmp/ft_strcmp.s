section .text
global _ft_strcmp

_ft_strcmp:
			cmp rdi, 0
			jz done
			cmp rsi, 0
			jz done

compare:	cmp BYTE[rdi], 0
			jz done
			

done: