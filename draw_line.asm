.include "cesplib_rars.asm"

drawline:
	li a1, 64
	li a2, 20
	li a3, 0xffffff
	line:
	jal draw_pixel	
	addi a1, a1,-1
	bne zero, a1, line
	
li a7, 10
ecall

.include "draw_pixel.asm"		