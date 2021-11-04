

draw_black_line:

        addi sp, sp, -4
        sw ra, 0(sp)
        
	la t1, pixel_count
	lw a1,0(t1)
	li a2, 256
	li a3, 0x000000
	line_black:
	jal draw_pixel	
	addi a2, a2,-1
	bne zero, a2, line_black
	
	lw ra,0(sp)
	addi sp, sp, 4
	
	jalr zero, 0(ra)
