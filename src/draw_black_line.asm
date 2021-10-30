.include "cesplib_rars.asm"

draw_black_line:
	li a1, 64
	li a2, 0
	li a3, 0x000000
	line:
	jal draw_pixel	
	addi a1, a1,-1
	bne zero, a1, line
	
li a7, 10
ecall

.include "draw_pixel.asm"