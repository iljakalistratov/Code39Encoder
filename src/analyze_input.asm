# Analyse Eingabe

analyze_input:
    addi sp, sp, -4
    sw ra,0(sp)
    
    add t0, zero , zero
for_loop.start:
    add  t1, t0, a0      
    lb   t2, 0(t1)      
    beq  t2, zero, for_loop.end
    addi t0, t0, 1       
    jal  zero, for_loop.start
for_loop.end:
    addi t0,t0,-1
    la t1,string_length
    sw t0,0(t1)
    
    lw ra,0(sp)
    addi sp,sp,4     
    jalr zero, 0(ra)
