#   ___ ___ ___ ___   _    ___ ___ _____ _   _ ___ ___ 
#  / __| __/ __| _ \ | |  | __/ __|_   _| | | | _ \ __|
# | (__| _|\__ \  _/ | |__| _| (__  | | | |_| |   / _| 
#  \___|___|___/_|   |____|___\___| |_|  \___/|_|_\___|
#
# Copyright 2021 Michael J. Klaiber

.include "cesplib_rars.asm"
draw_pixel:
# Creates colored pixel at position (x,y)	

# Inputs
#----------------------
#    a1: x
#    a2: y
#    a3: color
# Outputs: None

        
	#STEP 3a: Save the callee save registers on the stack
	# ADD YOUR STEP 3a CODE HERE
	addi sp, sp, -4
	sw ra, 0(sp)

	#STEP 1: Use the constants DISPLAY_ADDRESS and DISPLAY_WIDTH defined in cesplib_rars.asm (use the symbolic name NOT the address) and the arguments passed via registers a1 and a2 to calculate the memory address that you need.
	# ADD YOUR STEP 1 CODE HERE
	li t1, DISPLAY_WIDTH
	mul t1, a2, t1
	add t1, a1, t1
	slli t1, t1, 2
	
	li t0, DISPLAY_ADDRESS
	add t1, t1, t0
	
	#STEP 2: Store the value of a3 in the memory at the address you have calculated before.
	# ADD YOUR STEP 2 CODE HERE
	sw a3, 0(t1)

	#STEP 3b: Don't forget to restore the callee save values
	# ADD YOUR STEP 3b CODE HERE
	lw ra, 0(sp)
	addi sp, sp, 4
	
	ret
