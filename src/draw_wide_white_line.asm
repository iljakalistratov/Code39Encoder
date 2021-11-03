
draw_wideline:
	li a2, 0
	li t2, 3
	addi t1, a2, 3
	wwline:
	jal draw_white_line
	addi a2, a2, 1
	bne t2, a2, wwline
	
	
li a7, 10
ecall

.include "draw_white_line.asm"
