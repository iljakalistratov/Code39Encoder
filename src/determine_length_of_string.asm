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
