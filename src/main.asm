.data
.align 2
string_length: .word 0
.align 2
string_to_encode: .string "                                      "
.align 2
string_input_text: .string "Eingabe "
.align 2
string_length_text: .string "  Länge der Eingabe "
.align 2
string_keine_daten_eingegeben: .string "Keine Daten eingegeben, bitte Daten eingeben "
.align 3
one: .string "1"
.align 2
two: .string "2"
.align 3
current_x_axis: .word 0
.eqv white  0xffffff
.eqv black  0x000000
.eqv line_height 256
.eqv line_x_axis_start 10
.eqv cancel_choosen -2
.eqv no_data_entered -3
.eqv OK 0

.text

# Lies input string

      jal ra,read_input     
      li t1,cancel_choosen
      beq t1,a1, exit

# Bestimme Länge des Strings

      la a0,string_to_encode
      jal ra, analyze_input

# Drucke Eingabe und ermittelte Laenge

#     jal ra,print_input

# Setze Ausgabe Defaults

     la t1,current_x_axis
     li t2,line_x_axis_start
     sw t2,0(t1)
     

# Übersetze jedes Zeichen in der Eingabe

     la a0,string_to_encode
     jal ra,encode

#Exit

exit:
     li a7,10
     ecall


.include "encode.asm"

.include "process_star.asm"

.include "draw_white_line.asm"

.include "draw_black_line.asm"

.include "draw_fat_white_line.asm"

.include "draw_fat_black_line.asm"

.include "draw_line.asm"

.include "analyze_input.asm"

.include "process_one.asm"

.include "process_two.asm"

.include "print_input.asm"

.include "draw_pixel.asm"

.include "read_input.asm"

