# x = 30 ($t1)
# i = 4 ($t2)
# while i>=0:
# i -= 1
# x -= 2

.text
li $t1, 0x30  # x = 30 ($t1)
li $t2, 4  # i = 4 ($t2)

start:
bgez $t2, loop  # se i >= 0, vá para
j fim

loop:
    addi $t2, $t2, -1  # i -= 1
    addi $t1, $t1, -2 # x -= 2
    j start # volte para o início do loop

fim: