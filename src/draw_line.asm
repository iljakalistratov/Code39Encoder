
draw_line:

        addi sp, sp, -4
        sw ra, 0(sp)
        
        
	      la t1,current_x_axis
	      lw a1,0(t1)
	      li a2,line_height
	      
	for_line_start:
	      jal ra, draw_pixel	
	      addi a2, a2,-1
	      bne zero, a2, for_line_start
	      
	      la t1,current_x_axis
	      lw t2,0(t1)
	      addi t2,t2,1
	      sw t2,0(t1)
	
	      lw ra, 0(sp)
	      addi sp, sp, 4
	
        jalr zero,0(ra)
