#.include "cesplib_rars.asm"

draw_white_line:
	li a1, 63
	li a3, 0xffffff
	line:
	jal draw_pixel	
	addi a1, a1,-1
	bne zero, a1, line
	
#li a7, 10
#ecall
ret

.include "draw_pixel3.asm"		
