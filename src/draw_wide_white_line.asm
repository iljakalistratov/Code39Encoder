draw_wide_white_line:

        addi sp, sp, -4
        sw ra, 0(sp)
        
        li a7,4
        ecall
        
	la t1,pixel_count
	lw a1,0(t1)
	li a2, 256
	li a3, 0xffffff
	wide_line_white:
	jal ra, draw_pixel	
	addi a2, a2,-1
	bne zero, a2, wide_line_white
	
	addi, a1, a1, -1
	
	li a2, 256
	wide_line_white1:
	jal ra, draw_pixel	
	addi a2, a2,-1
	bne zero, a2, wide_line_white1
	
	addi, a1, a1, -1
	
	li a2, 256
	wide_line_white2:
	jal ra, draw_pixel	
	addi a2, a2,-1
	bne zero, a2, wide_line_white2
	
	lw ra, 0(sp)
	addi sp, sp, 4
	
jalr zero,0(ra)
