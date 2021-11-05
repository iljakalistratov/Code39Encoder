#Zeichne breite weiße Linie
draw_fat_white_line:

       addi sp, sp, -4
       sw ra, 0(sp)

  
       li a3,white
       jal ra,draw_line
       jal ra,draw_line
       jal ra,draw_line
       
       lw ra, 0(sp)
       addi sp, sp, 4

       jalr zero,0(ra)
