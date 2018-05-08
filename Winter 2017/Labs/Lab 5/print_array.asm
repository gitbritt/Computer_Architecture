#Dillon Britt
#Part 2 Lab 5
#Print an Array in assembly using the print_hex function from the previous example

#Data memory section
.data
symbol: .asciiz ", "
start: .asciiz "0x"
hex_array: .word '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'
myarray: .word -1, 15, 2, 5, 4, 7, 78, 9, 1, 3, 6
length: .word 10


#Program Memory section
.text
.globl main
#Main function
main:
	la $s0, myarray
	la $s1, hex_array
	jal print_array_hex
	li $v0, 10
	syscall
	
#End of main
###################################
print_array_hex:

move $t0, $s0
addi $t1, $zero, 0
	loop_1:
	bgt $t1, 10, exit1
		lw $t2, 0($t0)
		addi $t0, $t0, 4
		addi $t1, $t1, 1
		move $a0, $t2
		addi $sp, $sp, -16
		sw $t0, 16($sp)	
		sw $t1, 12($sp)
		sw $t2, 8($sp)
		sw $ra, 4($sp)
		jal Decimal_to_hex
		lw $t0, 16($sp)	
		lw $t1, 12($sp)
		lw $t2, 8($sp)
		lw $ra, 4($sp)
		addi $sp, $sp, 16
		li $v0, 4
		la $a0, symbol
		syscall

	j loop_1
	exit1:
jr $ra





Decimal_to_hex:
	move $t0, $a0
	#Not Sure if I did the push pop thingy correctly 

	addi $t1, $zero, -1
	addi $t2, $zero, 0xf
	for_loop_1: #Loop finds how many times the 0xf mask needs to be shifted
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

		move $a0, $t4
		li $v0, 4
		syscall
		
	j for_loop_2
	exit_for_loop_2:
jr $ra

