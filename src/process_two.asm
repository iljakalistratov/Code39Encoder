process_two:

       addi sp, sp, -4
       sw ra, 0(sp)
       
       jal ra,draw_fat_black_line
       jal ra,draw_white_line
       jal ra,draw_fat_black_line
       jal ra,draw_fat_white_line
       jal ra,draw_black_line
       jal ra,draw_white_line
       jal ra,draw_black_line
       jal ra,draw_white_line
       jal ra,draw_fat_black_line

       lw ra, 0(sp)
       addi sp, sp, 4

       jalr zero,0(ra)
