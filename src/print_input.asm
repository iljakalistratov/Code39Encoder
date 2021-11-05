
# Drucke Eingabe und ermittelte Laenge (Trace only)

print_input:

       addi sp, sp, -4
       sw ra,0(sp)

       la a0,string_input_text
       li a7,4
       ecall

       la a0,string_to_encode
       lw a0,0(a0)
       li a7,4
       ecall

       la a0,string_length_text
       li a7,4
       ecall

       la t1,string_length
       lw a0, 0(t1)
       li a7,1
       ecall
       
       lw ra,0(sp)
       addi sp, sp, 4
       
       jalr zero,0(ra)