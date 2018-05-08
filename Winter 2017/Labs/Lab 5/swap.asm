#Dillon Britt
#Swap function
#Lab 5
.data
array: .word 1, 3, 5, 2, 7, 4, 6, 4, 1, 8, 4, 348, 2, 45, 4, 1, 6, 8, 3, 56 ,90, 4, 653, 56, 87, , 34, 67, 453, 432
string1: .asciiz "\nwhat n'th element do you want to switch between 0 and 6 : "
string2: .asciiz "\nswitch it with what other element : "
symbol: .asciiz ", "
.align 2

.text
.globl main

main:
	li $v0, 4 #message 1
	la $a0, string1 #message 1
	syscall
	li $v0, 5 #input number 1
	syscall
	move $s0, $v0 #number1 is an argument
	
	li $v0, 4 #message 2
	la $a0, string2 #message 2
	syscall
	li $v0, 5 #input number 2
	syscall 
	move $a1, $v0 #number 2 is an argument
	move $a0, $s0
	la $a2, array #address for array
	
	jal swap #call function swap
	la $a2, array
	#Debug code
	addi $t4, $zero, 0
	print_array: bgt $t4, 20, exit
		mul $t5, $t4, 4
		add $t5, $a2, $t5
		lw $t6, ($t5)
		addi $t4, $t4, 1

		move $a0, $t6
		li $v0, 1
		syscall
		
		li $v0, 4
		la $a0, symbol
		syscall
		
	j print_array
		
	exit:
	
	li $v0, 10 
	syscall
#End of main
#########################
	

swap:
	#move $s0, $a1 #index1 argument passed in
	#move $s1, $a2 #$index2 argument passed in
	
	#move $s2, $a3 #array
	mul $t0, $a0, 4
	mul $t1, $a1, 4
	add $t0, $a2, $t0 #adds address + (nx4) for index1
	add $t1, $a2, $t1 #adds address + (nx4) for index2
	lw $t2, ($t0) # int t2 = array[index1]
	lw $t3, ($t1) # int t3 = array[index2]
	sw $t2, ($t1) # int t2 = array[index2]
	sw $t3, ($t0) # int t3 = array[index1]
	#lw $t2, ($t0) # int t2 = array[index1]
	#lw $t3, ($t1) # int t3 = array[index2]	
jr $ra
