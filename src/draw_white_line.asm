#Zeichne wei�e Linie
draw_white_line:

       addi sp, sp, -4
       sw ra, 0(sp)

  
       li a3,white
       jal ra,draw_line
       
       lw ra, 0(sp)
       addi sp, sp, 4

       jalr zero,0(ra)
