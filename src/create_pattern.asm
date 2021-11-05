#Festgelegte Pattern für jedes Zeichen des Alphabets

create_star_pattern:

       addi sp, sp, -4
       sw ra, 0(sp)
       
       jal ra,draw_black_line
       jal ra,draw_fat_white_line
       jal ra,draw_black_line
       jal ra,draw_white_line
       jal ra,draw_fat_black_line
       jal ra,draw_white_line
       jal ra,draw_fat_black_line
       jal ra,draw_white_line
       jal ra,draw_black_line

       lw ra, 0(sp)
       addi sp, sp, 4

       jalr zero,0(ra)




create_one_pattern:

       addi sp, sp, -4
       sw ra, 0(sp)
       
       jal ra,draw_fat_black_line
       jal ra,draw_white_line
       jal ra,draw_black_line
       jal ra,draw_fat_white_line
       jal ra,draw_black_line
       jal ra,draw_white_line
       jal ra,draw_black_line
       jal ra,draw_white_line
       jal ra,draw_fat_black_line

       lw ra, 0(sp)
       addi sp, sp, 4

       jalr zero,0(ra)

create_two_pattern:

       addi sp, sp, -4
       sw ra, 0(sp)
       
       jal ra,draw_black_line
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
       
create_three_pattern:

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
       jal ra,draw_black_line

       lw ra, 0(sp)
       addi sp, sp, 4

       jalr zero,0(ra)

create_four_pattern:

       addi sp, sp, -4
       sw ra, 0(sp)
       
       jal ra,draw_black_line
       jal ra,draw_white_line
       jal ra,draw_black_line
       jal ra,draw_fat_white_line
       jal ra,draw_fat_black_line
       jal ra,draw_white_line
       jal ra,draw_black_line
       jal ra,draw_white_line
       jal ra,draw_fat_black_line

       lw ra, 0(sp)
       addi sp, sp, 4

       jalr zero,0(ra)

create_five_pattern:

       addi sp, sp, -4
       sw ra, 0(sp)
       
       jal ra,draw_fat_black_line
       jal ra,draw_white_line
       jal ra,draw_black_line
       jal ra,draw_fat_white_line
       jal ra,draw_fat_black_line
       jal ra,draw_white_line
       jal ra,draw_black_line
       jal ra,draw_white_line
       jal ra,draw_black_line

       lw ra, 0(sp)
       addi sp, sp, 4

       jalr zero,0(ra)
       
create_six_pattern:

       addi sp, sp, -4
       sw ra, 0(sp)
       
       jal ra,draw_black_line
       jal ra,draw_white_line
       jal ra,draw_fat_black_line
       jal ra,draw_fat_white_line
       jal ra,draw_fat_black_line
       jal ra,draw_white_line
       jal ra,draw_black_line
       jal ra,draw_white_line
       jal ra,draw_black_line

       lw ra, 0(sp)
       addi sp, sp, 4

       jalr zero,0(ra)       
       
create_seven_pattern:

       addi sp, sp, -4
       sw ra, 0(sp)
       
       jal ra,draw_black_line
       jal ra,draw_white_line
       jal ra,draw_black_line
       jal ra,draw_fat_white_line
       jal ra,draw_black_line
       jal ra,draw_white_line
       jal ra,draw_fat_black_line
       jal ra,draw_white_line
       jal ra,draw_fat_black_line

       lw ra, 0(sp)
       addi sp, sp, 4

       jalr zero,0(ra)   
                     
create_eight_pattern:

       addi sp, sp, -4
       sw ra, 0(sp)
       
       jal ra,draw_fat_black_line
       jal ra,draw_white_line
       jal ra,draw_black_line
       jal ra,draw_fat_white_line
       jal ra,draw_black_line
       jal ra,draw_white_line
       jal ra,draw_fat_black_line
       jal ra,draw_white_line
       jal ra,draw_black_line

       lw ra, 0(sp)
       addi sp, sp, 4

       jalr zero,0(ra)         
                     
create_nine_pattern:

       addi sp, sp, -4
       sw ra, 0(sp)
       
       jal ra,draw_black_line
       jal ra,draw_white_line
       jal ra,draw_fat_black_line
       jal ra,draw_fat_white_line
       jal ra,draw_black_line
       jal ra,draw_white_line
       jal ra,draw_fat_black_line
       jal ra,draw_white_line
       jal ra,draw_black_line

       lw ra, 0(sp)
       addi sp, sp, 4

       jalr zero,0(ra)            
       
create_zero_pattern:

       addi sp, sp, -4
       sw ra, 0(sp)
       
       jal ra,draw_black_line
       jal ra,draw_white_line
       jal ra,draw_black_line
       jal ra,draw_fat_white_line
       jal ra,draw_fat_black_line
       jal ra,draw_white_line
       jal ra,draw_fat_black_line
       jal ra,draw_white_line
       jal ra,draw_black_line

       lw ra, 0(sp)
       addi sp, sp, 4

       jalr zero,0(ra)           
