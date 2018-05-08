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

	jal Decimal_to_hex
	j main
	li $v0, 10 
	syscall

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
