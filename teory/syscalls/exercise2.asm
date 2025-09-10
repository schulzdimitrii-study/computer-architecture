# ESCREVA UM CÓDIGO EM ASSEMBLY MIPS
# QUE LEIA UM NÚMEROS INTEIRO E DIGA SE ELE É PAR OU ÍMPAR.

.data
read_number_msg: .asciiz "Digite um número inteiro: "
even_msg: .asciiz "O número é par.\n"
odd_msg: .asciiz "O número é ímpar.\n"

.text
# Lê o número e armazena em $t0
li $v0, 4
la $a0, read_number_msg
syscall

li $v0, 5
syscall
add $t0, $0, $v0

# Verifica se o número é par
div $t2, $t0, 2
mfhi $t1  # Resto da divisão em $t1
beq $t1, $0, is_even  # Se o resto é 0, é par
    li $v0, 4
    la $a0, odd_msg
    syscall
    j end_program

is_even:
    li $v0, 4
    la $a0, even_msg
    syscall
    j end_program

end_program:
    li $v0, 10
    syscall
