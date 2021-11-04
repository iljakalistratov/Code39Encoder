
draw_white_line:

        addi sp, sp, -4
        sw ra, 0(sp)
        
        la a0,zeichne_weiﬂe_linie_text
        li a7,4
        ecall
        
	la t1,pixel_count
	lw a1,0(t1)
	li a2, 256
	li a3, 0xffffff
	line_white:
	jal ra, draw_pixel	
	addi a2, a2,-1
	bne zero, a2, line_white
	
	lw ra, 0(sp)
	addi sp, sp, 4
	
jalr zero,0(ra)
