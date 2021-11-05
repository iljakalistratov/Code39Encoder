# Analyse Eingabe

analyze_input:
    addi sp, sp, -4
    sw ra,0(sp)
    
    add t0, zero , zero
for.input.start:
    add  t1, t0, a0      
    lb   t2, 0(t1)      
    li t3, NULL                           # Null-terminated string
    beq  t2, t3, for.input.end
    li t3, NL                             # Input Dialog Syscall -> Einagbe endet mit NL
    beq  t2, t3, for.input.end
    addi t0, t0, 1       
    jal  zero, for.input.start
for.input.end:
    la t1,string_length
    sw t0,0(t1)
    
    lw ra,0(sp)
    addi sp,sp,4     
    jalr zero, 0(ra)
