# Ubersetze jedes Zeichen
#
# Looped über alle Zeichen des Input-Strings und verarbeitet jedes Zeichen entsprechend 
#
# Input:
#      a0 Adresse des Input-Strings
#      a1 Länge des Input-Strinsg

encode:

       addi sp, sp, -20
       sw ra, 0(sp)
       
       jal ra,create_star_pattern   # Schreibe * - Zeichen Pattern

       add t1, zero, zero           # t1 enthält index des augenblicklichen eingabezeichens - clear
 
for.encode.start:

       add t2,t1,a0                 # a0 enthält start adresse des Eingabe Strings, t2 zeigt auf laufenden Buchstaben/Ziffer
       lb t3,0(t2)                  # t3 enthält laufenden Buchstaben/Ziffer
       la t4,one
       lb t4,0(t4)                  # Ziffer 0          
       sw t1, 4(sp)
       sw t2, 8 (sp)
       sw t3, 12(sp)
       sw t4, 16(sp)
       bne t3,t4, handle_two
       jal ra,create_one_pattern
       j for.encode.end

# Verarbeite Ziffer 2
        
handle_two:
       la t4,two
       lb t4,0(t4)
       bne t3,t4,handle_three
       jal ra,create_two_pattern
       j for.encode.end
       
handle_three:
       la t4,three
       lb t4,0(t4)
       bne t3,t4,handle_four
       jal ra,create_three_pattern
       j for.encode.end
       
handle_four:

for.encode.end :
       lw t1, 4(sp)
       lw t2, 8(sp)
       lw t3, 12(sp)
       lw t4, 16(sp)
       addi t1,t1,1
       ble t1,a1,for.encode.start
       
       jal ra,create_star_pattern
       
       lw ra,0(sp)
       addi sp,sp, 20
       
       jalr zero,0(ra)






