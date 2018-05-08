#Dillon Britt
#Lab 5
#selection_sort function
.data
hex_array: .word '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'
array: .word 1, 5, 3, -7, 7, 6, 3, 34, 2, 4, 9, 3, 6, -5, 30 , 45, 2, 65, 12, 54, 78
start: .asciiz "0x"
symbol: .asciiz ", "
new_line: .asciiz "\n\n"
.text
main:

	addi $a1, $zero, 20 # int length
	la $a0, array
	jal print_array_hex
	
	addi $a1, $zero, 20 # int length
	la $a0, array
	jal selection_sort
	
	addi $a1, $zero, 20 # int length
	la $a0, array
	jal print_array_hex

	li $v0, 10 #End of the main function
	syscall

#End of main
#---------------------------------

##################################
#Selection Sort function below
##################################
selection_sort:
addi $sp, $sp, -8
sw $s0, 4($sp)
sw $s1, 8($sp)
#remember to back up registers
move $s0, $a0 #argg passed into from main
move $s1, $a0 #address for array being passed into from main
addi $t0, $zero, 0 #int i = 0
loop_1: bgt $t0, 20, exit_loop_1 # for(i; i < 10 ; )
	add $t1, $zero, $t0 # int index_of_min = i
	move $a3, $t0 #maks t0 an argument for a function call
	add $t2, $zero, $t0 # int j = i
	loop_2: bgt $t2, 20, exit_loop_2 #for (j; j < 10; )

		mul $t3, $t1, 4 # times by 4 because an address element in the array is for bits apart
		add $t3, $s1, $t3 # what ever (t1 * 4) is, add the results to the address to get the element
		lw $t4, ($t3) #int t4 = nums[index_of_min]
		mul $t5, $t2, 4 # multiply by for to get an address for the element, for int j
		add $t5, $s1, $t5 # what ever the results of (j*4) is, add that to address to get location of the element
		lw $t6, ($t5)
		blt $t4, $t6, continue_after_if #if(t4 < t6) 
			move $t1, $t2 #index_of_min = j
			move $a2, $t1 #makr t1 an argument for a function call
		continue_after_if:
		addi $t2, $t2, 1 #j++
	j loop_2
	exit_loop_2:
	addi $t0, $t0, 1 #i++
	
	addi $sp, $sp, -52
	sw $t0, 4($sp)
	sw $t1, 8($sp)
	sw $t2, 12($sp)
	sw $t3, 16($sp)
	sw $t4, 20($sp)
	sw $t5, 24($sp)
	sw $t6, 28($sp)
	sw $ra, 32($sp)
	sw $a0, 36($sp)
	sw $a1, 40($sp)
	sw $a2, 44($sp)
	jal swap #calls function swap
	#jal Decimal_to_hex #calls the Deci
	lw $t0, 4($sp)
	lw $t1, 8($sp)
	lw $t2, 12($sp)
	lw $t3, 16($sp)
	lw $t4, 20($sp)
	lw $t5, 24($sp)
	lw $t6, 28($sp)
	lw $ra, 32($sp)
	lw $a0, 36($sp)
	lw $a1, 40($sp)
	lw $a2, 44($sp)
	addi $sp, $sp 52
	
j loop_1
exit_loop_1:
lw $s0, 4($sp)
lw $s1, 8($sp)
addi $sp, $sp, 8
jr $ra

##################################
#Swap function below
##################################

swap:
	move $t7, $a3 #index1 argument passed in, originlly s0
	move $t8, $a2 #$index2 argument passed in, origianlly s1
	move $t9, $a0 #array, s2
	mul $t0, $t7, 4
	mul $t1, $t8, 4
	add $t0, $t9, $t0 #adds address + (nx4) for index1
	add $t1, $t9, $t1 #adds address + (nx4) for index2
	lw $t2, ($t0) # int t2 = array[index1]
	lw $t3, ($t1) # int t3 = array[index2]
	sw $t2, ($t1) # int t2 = array[index2]
	sw $t3, ($t0) # int t3 = array[index1]
	lw $t2, ($t0) # int t2 = array[index1]
	lw $t3, ($t1) # int t3 = array[index2]	
jr $ra
#######################
#Print hex
#######################
print_array_hex:

move $t0, $a0
addi $t1, $zero, 0
	array_loop_1:
	bgt $t1, 20, exit1
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

	j array_loop_1
	exit1:
	li $v0, 4
	la $a0, new_line
	syscall
jr $ra





########################
#Decimal to Hex function
########################
Decimal_to_hex:
	move $t0, $a0
	#Not Sure if I did the push pop thingy correctly 
	
	addi $t1, $zero, -1
	addi $t2, $zero, 0xf
	for_loop_1: #Loop finds how many times the 0xf mask needs to be shifted
		beq $t0, 0, Dec_to_hex_exit_loop_1
		srl $t0, $t0, 4
		addi $t1, $t1, 1
		j for_loop_1
	Dec_to_hex_exit_loop_1:
	
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
		la $t5, hex_array
		add $t5, $t5, $t4
		la $t4, ($t5)

		move $a0, $t4
		li $v0, 4
		syscall
		
	j for_loop_2
	exit_for_loop_2:
jr $ra