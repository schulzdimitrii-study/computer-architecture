

.text

main:
    jal read_int
   	add $t0, $zero, $v0 # n
   	
   	mul $t1, $t0, 4 # Tamanho do array
   	add $a0, $zero, $t1
   	li $v0, 9
   	syscall
   	
   	add $t2, $zero, $v0 # sbrk address
   	add $t4, $zero, $t2 # Var aux
   	
   	li $t3, 0 # Counter
   	
   	loop:
   		bge $t3, $t1, loop_print         # While i < n
   		jal read_int					 # read_int()
   		add $t0, $zero, $v0				 # $t0 = read_int()
   		sw $t0, ($t2)					 # nums[i] = read_int()
   		addi $t2, $t2, 4                  # Incrementa ponteiro do array
   		add $t3, $t3, 4                  # i = i + 4
   		j loop
   	
   	li $t3, 0
   	
   	loop_print:
   		bge $t3, $t1, end_program        # While i < n
        lw $t0, ($t4)                    # Carrega array[i]
   		jal print_int                    # print_int(array[i])
        addi $t4, $t4, 4                 # Incrementa ponteiro do array            
        addi $t3, $t3, 4                 # i+= 4
        j loop_print
    
read_int:
    li $v0, 5
    syscall
    jr $ra
    
print_int:
	li $v0, 1
    add $a0, $zero, $t0
	syscall
	jr $ra

end_program:
	li $v0, 10
	syscall  
