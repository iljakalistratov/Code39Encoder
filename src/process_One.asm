verarbeite_eins:

addi sp, sp, -24
sw ra, 0(sp)
sw t1, 4(sp)
sw t2, 8(sp)
sw t3, 12 (sp)
sw t4, 16(sp)

la a0,verarbeite_eins_text
li a7,4
ecall

li t2,10
add a0,t2,zero
li a7,1
ecall

jal ra,draw_white_line


addi t2, t1, 1
jal ra,draw_black_line


addi t2, t1, 5
jal ra, draw_white_line

lw ra,0(sp)
lw t1, 4(sp)
lw t2, 8(sp)
lw t3, 12 (sp)
lw t4, 16(sp)
addi sp, sp, 20

jalr zero,0(ra)
