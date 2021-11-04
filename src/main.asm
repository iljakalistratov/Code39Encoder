.data
.align 3
string_to_encode: .string "12"
.align 3
string_input_text: .string "Eingabe "
.align 3
string_length_text: .string "  L‰nge der Eingabe "
.align 3
eins: .string "1"
.align 3
verarbeite_eins_text: .string "Verarbeite Eins "
.align 3
zeichne_weiﬂe_linie_text: .string "Zeichne weiﬂe Linie"
.align 3
zeichne_pixel: .string "Zeichen Pixel "
.align 3
string_length: .word
.align 3
pixel_count: .word 

.text

# Bestimme L‰nge des Strings

la a0,string_to_encode
jal ra, strlen

# Speichere L‰nge des Strings in string_length

la t1, string_length
add t2, a0, zero
sw t2, 0(t1) 


# Drucke Eingabe und ermittelte Laenge

la a0,string_input_text
li a7,4
ecall

la a0,string_to_encode
li a7,4
ecall

la a0,string_length_text
li a7,4
ecall

la t1,string_length
lw a0, 0(t1)
li a7,1
ecall

# ‹bersetze jedes Zeichen in der Eingabe

la a0,string_to_encode
jal ra,translate

#Exit

li a7,10
ecall

# Ubersetze jedes Zeichen
translate:
la t1,string_length
lw t1,0(t1)  # t1 enth‰lt Laenge des Strings
add t0, zero, zero # t0 enth‰lt laufende Zahl 
transloop.start:
add t2,t0,a0 # a0 enth‰lt start adresse des eingabe Strings, t2 zeigt auf laufenden Buchstaben
lb t3,0(t2) # t3 enth‰lt laufenden Buchstaben
la t4,eins
lb t4,0(t4)
beq t3,t4, verarbeite_eins

li a7,10
ecall




# Bestimme Laenge des Strings
strlen:
    add t0, zero , zero
for_loop.start:
    add  t1, t0, a0      
    lb   t2, 0(t1)      
    beq  t2, zero, for_loop.end
    addi t0, t0, 1       
    jal  zero, for_loop.start
for_loop.end:
    addi a0, t0, 0   
    jalr zero, 0(ra)

.include "process_One.asm"

.include "draw_white_line.asm"

.include "draw_wide_white_line.asm"

.include "draw_black_line.asm"

.include "draw_pixel.asm"

