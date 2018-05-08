.data
num1: .asciiz "\nNumber 1 = "
num2: .asciiz "\nNumber 2 = "
total: .asciiz "\nTotal = "
.text
main:
#7 - 10 shows the text for "Number 1"
li $v0, 4
la $a0, num1
syscall
#Input number 1
li $v0, 5
syscall
#Stores the user input number to a temp value
move $t0, $v0
# 19 - 22 Shows the text for the second number
li $v0, 4
la $a0, num2
syscall
#Input for number 2
li $v0, 5
syscall
move $t1, $v0
#Display total text
li $v0, 4
la $a0, total
syscall
#Display number total
add $t2, $t0, $t1
li $v0, 1
move $a0, $t2
syscall
j main
