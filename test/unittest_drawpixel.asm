
.include "../src/cesplib_rars.asm"


utest_draw_pixel:
	li a1, 45
	li a2, 40
	li a3, 0x00ff00
	jal draw_pixel

	li a1, 47
	li a2, 40
	li a3, 0xff0000
	jal draw_pixel	
	

	li a1, 250
	li a2, 250
	li a3, 0xffffff
	line:
	jal draw_pixel	
	addi a1, a1,-1
	bne zero, a1, line
	
	

li a7, 10
ecall

.include "../src/draw_pixel.asm"
