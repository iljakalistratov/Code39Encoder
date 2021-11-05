
draw_line:

        addi sp, sp, -4
        sw ra, 0(sp)
        
        
        
	      la t1,current_x_axis             # Setze aktuelle x-Achse Koordinate
	      lw a1,0(t1)
	      li a2,line_height
	      
for.line.start:
	      jal ra, draw_pixel	
	      addi a2, a2,-1
	      bne zero, a2, for.line.start
	      
	      la t1,current_x_axis             # Erhöhe x-Achse Koordinate
	      lw t2,0(t1)
	      addi t2,t2,1
	      sw t2,0(t1)
	
	      lw ra, 0(sp)
	      addi sp, sp, 4
	
        jalr zero,0(ra)
