# Desvio (Branch) Condicional 
.data

.text
li $t1, 0x10
li $t2, 0x20304050
li $t3, 0x10010000
sw $t2, 0($t3)

beq $t1, $t2, igual
# Continua se $t1 != $t2

igual:
# Continua se $t1 == $t2