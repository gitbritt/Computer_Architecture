#Step 5 for Lab 3
#Sample Data Memory Init
# Lab 3.3
	#Data memory Section
	.data
value1: .word 5
value2: .word 89
	.align 2
	
	#Program Memory section
	.text
	.globl main
	
main:
	lw $t0, value1
	lw $t1, value2
	sub $s0, $t1, $t0
