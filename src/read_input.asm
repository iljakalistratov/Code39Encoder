
# Frage Benutzer nach Daten

read_input:

       addi sp, sp, -4
       sw ra,0(sp)

       la a0,string_input_text
       
display_dialog:   
       la a1,string_to_encode
       li a2,20
       li a7,54
       ecall
       
       li t1,cancel_choosen
       beq t1,a1,leave_read_input
       li t1,OK
       beq t1,a1,leave_read_input
       la a0, string_keine_daten_eingegeben
       j  display_dialog

leave_read_input:       
       lw ra,0(sp)
       addi sp, sp, 4
       
       jalr zero,0(ra)