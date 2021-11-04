# Ubersetze jedes Zeichen

encode:

       addi sp, sp, -24
       sw ra, 0(sp)
       
       jal ra,process_star

       la t0,string_length
       lw t0,0(t0)  # t0 enthält Laenge des Strings
       add t1, zero, zero # t1 enthält index des augenblicklichen eingabezeichens - clear
 
for.encode.start:

       add t2,t1,a0 # a0 enthält start adresse des eingabe Strings, X20 zeigt auf laufenden Buchstaben
       lb t3,0(t2) # X21 enthält laufenden Buchstaben
       la t4,one
       lb t4,0(t4)
       sw t0, 4(sp)
       sw t1, 8(sp)
       sw t2, 12 (sp)
       sw t3, 16(sp)
       sw t4, 20(sp)
       bne t3,t4, handle_two
       jal ra,process_one
       j for.encode.end
       
handle_two:
       jal ra,process_two
       j for.encode.end

for.encode.end :
       lw t0, 4 (sp)
       lw t1, 8(sp)
       lw t2, 12(sp)
       lw t3, 16(sp)
       lw t4, 20(sp)
       addi t1,t1,1
       ble t1,t0,for.encode.start
       
       jal ra,process_star
       
       lw ra,0(sp)
       addi sp,sp, 24
       
       jalr zero,0(ra)






