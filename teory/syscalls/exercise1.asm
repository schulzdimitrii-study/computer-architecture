# ESCREVA UM CÓDIGO EM ASSEMBLY MIPS
# QUE LEIA 2 NÚMEROS E DIGA QUAL DELES É O MAIOR. (O 1 OU 2)

.data
read_first_msg: .asciiz "Digite o primeiro número: "
read_second_msg: .asciiz "Digite o segundo número: "
first_is_greater_msg: .asciiz "O primeiro número é maior.\n"
second_is_greater_msg: .asciiz "O segundo número é maior.\n"
equal_msg: .asciiz "Os números são iguais.\n"

.text

# Lê o primeiro número e armazena em $t0
li $v0, 4
la $a0, read_first_msg
syscall

li $v0, 5
syscall
add $t0, $0, $v0

# Lê o segundo número e armazena em $t1
li $v0, 4
la $a0, read_second_msg
syscall

li $v0, 5
syscall
add $t1, $0, $v0

# Compara os dois números
bgt $t0, $t1, first_is_greater
bgt $t1, $t0, second_is_greater
    # Numeros iguais
    li $v0, 4
    la $a0, equal_msg
    syscall
    j end_program

first_is_greater:
    li $v0, 4
    la $a0, first_is_greater_msg
    syscall
    j end_program

second_is_greater_msg:
    li $v0, 4
    la $a0, second_is_greater_msg
    syscall
    j end_program

end_program:
    li $v0, 10
    syscall
    