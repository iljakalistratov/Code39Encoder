# Ubersetze jedes Zeichen
translate:
la t1,string_length
lw t1,0(t1)  # t1 enthält Laenge des Strings
add t0, zero, zero # t0 enthält laufende Zahl 
transloop.start:
add t2,t0,a0 # a0 enthält start adresse des eingabe Strings, t2 zeigt auf laufenden Buchstaben
lb t3,0(t2) # t3 enthält laufenden Buchstaben
la t4,eins
lb t4,0(t4)
beq t3,t4, verarbeite_eins

