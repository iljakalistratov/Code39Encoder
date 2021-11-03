main:
	lui a0, %hi(.L.str)
	addi a0, a0, %lo(.L.str)
	sw a0, -16(s0)
	
	lw a0, -16(s0)
        lb a0, 0(a0)
        sb a0, -17(s0)
        
        #abfrage1
        lbu a0, -17(s0)
        addi a1, zero, 1
        bne a0, a1, .abfrage2
        j .draw_one
        
        lw a0, -16(s0)
        lb a0, 1(a0)
        sb a0, -17(s0)
        
        #abfrage1
        lbu a0, -17(s0)
        addi a1, zero, 1
        bne a0, a1, .abfrage2
        j .draw_one
        
.abfrage2:
	lbu a0, -17(s0)
        addi a1, zero, 2
        bne a0, a1, .end
        j .draw_two
        
.L.str:
	.string "12"

.include "draw_one.asm"
.include "draw_two.asm"