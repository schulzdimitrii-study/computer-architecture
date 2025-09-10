.data
frase: .asciiz "\nString"

# PRINT INT
.text
li $v0, 1   # Carrega o serviço de print_int
li $a0, 20  # Carrega o valor a ser impresso
syscall

# PRINT STRING
li $v0, 4
la $a0, frase
syscall

# READ INT
li $v0, 5
syscall
add $t6, $0, $v0 # Salvo o valor digitado em $t6