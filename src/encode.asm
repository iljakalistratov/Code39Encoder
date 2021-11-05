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
       
#Verarbeite Ziffer 3       
handle_three:
       la t4,three
       lb t4,0(t4)
       bne t3,t4,handle_four
       jal ra,create_three_pattern
       j for.encode.end
    
#Verarbeite Ziffer 4                 
handle_four:
       la t4,four
       lb t4,0(t4)
       bne t3,t4,handle_five
       jal ra,create_four_pattern
       j for.encode.end
      
#Verarbeite Ziffer 5        
handle_five:
       la t4,five
       lb t4,0(t4)
       bne t3,t4,handle_six
       jal ra,create_five_pattern
       j for.encode.end       
         
#Verarbeite Ziffer 6    
handle_six:
       la t4,six
       lb t4,0(t4)
       bne t3,t4,handle_seven
       jal ra,create_six_pattern
       j for.encode.end       
      
#Verarbeite Ziffer 7
handle_seven:
       la t4,seven
       lb t4,0(t4)
       bne t3,t4,handle_eight
       jal ra,create_seven_pattern
       j for.encode.end       
      
#Verarbeite Ziffer 8
handle_eight:
       la t4,eight
       lb t4,0(t4)
       bne t3,t4,handle_nine
       jal ra,create_eight_pattern
       j for.encode.end       
      
#Verarbeite Ziffer 9
handle_nine:
       la t4,nine
       lb t4,0(t4)
       bne t3,t4,handle_zero
       jal ra,create_nine_pattern
       j for.encode.end      
       
handle_zero:
       la t4,zero_string
       lb t4,0(t4)
       bne t3,t4,handle_a
       jal ra,create_zero_pattern
       j for.encode.end             

handle_a:


#Ende des Encode Loops
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






