# x = 10 ($t1)
# y = 20 ($t2)
# z = 10 ($t3)
# Se 

.text
li $t1, 10  # x = 10 ($t1)
li $t2, 20  # y = 20 ($t2)
li $t3, 10  # z = 10 ($t3)

beq $t1, $t2, desvia  # se x == y, vá para 'desvia'
    addi $t3, $t3, -1  # z = x - 1
    j fim

desvia:
    addi $t3, $t3, 1  # z = x + 1

fim:
    nop  # instrução nula (sem operação)