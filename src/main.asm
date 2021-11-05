.data
.align 2
string_length: .word 0
string_to_encode: .word 0     
current_x_axis: .word 0                             
.align 2
string_input_text: .string "Eingabe "
.align 2
string_length_text: .string "  Länge der Eingabe "
.align 2
string_keine_daten_eingegeben: .string "Keine Daten eingegeben, bitte Daten eingeben "
.align 2
one: .string "1"
.align 2
two: .string "2"
.align 2
three: .string "3"

.eqv white  0xffffff
.eqv black  0x000000
.eqv line_height 256
.eqv line_x_axis_start 10
.eqv cancel_choosen -2
.eqv no_data_entered -3
.eqv OK 0
.eqv NULL 0
.eqv NL 10
.eqv allocated_input_size 200

.text

# Lies input string und beende falls Cancel

      jal ra,read_input     
      li t1,cancel_choosen
      beq t1,a1,exit
      
# Analysiere Eingabe

      la t1,string_to_encode
      lw a0,0(t1)
      jal ra,analyze_input       

# Drucke Eingabe und ermittelte Laenge

#    jal ra,print_input

# Setze Ausgabe Defaults

     la t1,current_x_axis                    
     li t2,line_x_axis_start                 # Setze Default Start Koordinate als Start Koordinate
     sw t2,0(t1)
     

# Übersetze jedes Zeichen in der Eingabe

     la t1,string_to_encode
     lw a0,0(t1)
     la t1,string_length
     lw a1,0(t1)
     jal ra,encode

#Exit

exit:
     li a7,10
     ecall


.include "encode.asm"

.include "draw_white_line.asm"

.include "draw_black_line.asm"

.include "draw_fat_white_line.asm"

.include "draw_fat_black_line.asm"

.include "draw_line.asm"

.include "analyze_input.asm"

.include "create_pattern.asm"

.include "print_input.asm"

.include "draw_pixel.asm"

.include "read_input.asm"

