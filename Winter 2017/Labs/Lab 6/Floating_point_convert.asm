.data
message: .asciiz "\nEnter Number to be converted to Hex : "
start: .asciiz "0x"
hex_array: .word '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'

.text
main:
	#Displayes message
	li $v0, 4
	la $a0, message
	syscall
	la $s1, hex_array	
	#User input number
	li $v0, 5
	syscall
	move $a0, $v0
	
	bne $a0, 0, not_zero#Detects if the input is zero or not
		j to_hex
	not_zero:
	
	jal Floating_Point
	addi $sp, $sp, -4
	sw $a0, 4($sp)
	to_hex: jal Decimal_to_hex
	lw $a0, 4($sp)
	addi $sp, $sp, 4
	j main	
	li $v0, 10 
	syscall
	
Floating_Point:
	
	move $t0, $a0
	abs $t1, $t0


	#If determins the sign
	bgt $t0, 0, else_1
		addi $t2, $zero, 0x80000000
		j continue1
	else_1:
	addi $t2, $zero, 0x00000000
	j continue1
	
	continue1:	
	#Find the Exponent
	shift_bit: beq  $t1, 1, continue2
		srl $t1, $t1,  1
		addi $t3, $t3, 1
		j shift_bit
	continue2:
	#Finding the 3rd part of the table thingy
	abs $t4, $t0
	ror $t4, $t4, $t3
	andi $t4, $t4, 0xFFFFFFFE
	srl $t4, $t4, 9
	#Concat binary into one big binary number
	addi $t5, $t3, 127
	sll $t5, $t5, 23
	add $t5, $t5, $t4
	add $t2, $t2, $t5
	
	move $v0, $t2
	return:jr $ra



Decimal_to_hex:
	move $t0, $a0
	addi $t1, $zero, -1
	addi $t2, $zero, 0xf
	for_loop_1: #Loop finds how many times the 0xf mask needs to be shifted to the left
		beq $t0, 0, exit_loop_1
		srl $t0, $t0, 4
		addi $t1, $t1, 1
		j for_loop_1
	exit_loop_1:
	
	move $t0, $a0
	mul $t1, $t1, 4
	sllv $t3, $t2, $t1
	
	li $v0, 4 #Print out a messge
	la $a0, start #print out 0x 
	syscall
	
	for_loop_2: #Shift the 0xf
		beq $t3, 0, exit_for_loop_2 #If t3 == 0, then exit loop 2
		and $t2, $t0, $t3 #masks the user input number with 0xf
		srlv $t2, $t2, $t1 #$t1 Shift the results of AND to the right to get rid of zeros
		srl $t3, $t3, 4 #Shift the 0xf to the right so it can mask the next set of numbers
		addi $t1, $t1, -4 #adds 
		mul $t4, $t2, 4
		add $t5, $s1, $t4
		la $t4, ($t5)
		move $a0, $t5
		li $v0, 4
		syscall
		
	j for_loop_2
	exit_for_loop_2:
	jr $ra
