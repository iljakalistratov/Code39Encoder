.include "cesplib_rars.asm"

draw_wideline:
	li a1, 64
	li a2, 0
	li a3, 0xffffff
	line:
	jal draw_pixel	
	addi a1, a1,-1
	bne zero, a1, line
	
	addi a2, a2, 1
	jal draw_pixel	
	addi a1, a1,-1
	bne zero, a1, line
	
	addi a2, a2, 1
	jal draw_pixel	
	addi a1, a1,-1
	bne zero, a1, line
	
li a7, 10
ecall

.include "draw_pixel.asm"