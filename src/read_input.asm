# Frage Benutzer nach Daten

read_input:

       addi sp, sp, -4
       sw ra,0(sp)
      
# Hole Speicher für Eingabe

       li a0,allocated_input_size
       li a7,9
       ecall
       la t1, string_to_encode
       sw a0,0(t1) 
       la a0,string_input_text   
      
# Starte Eingabe-Dialog 
          
display_dialog:   
       la a1,string_to_encode
       lw a1,0(a1)
       li a2,allocated_input_size
       li a7,54
       ecall
       
       li t1,cancel_choosen
       beq t1,a1,leave_read_input
       
       li t1,OK
       beq t1,a1,leave_read_input
       
       
       la a0, string_keine_daten_eingegeben     # Keine Daten eingegeben -> erneute Anforderung
       j  display_dialog
       


leave_read_input:       
       lw ra,0(sp)
       addi sp, sp, 4
       
       jalr zero,0(ra)
