# i = 100 ($t1)
# k = 200 ($t2)
# for j = 1 to 4:
#    i -= 1
#    x -= 2

.text
li $t1, 100 # i
li $t2, 200 # k
li $t3, 1   # j = 1

try:
ble $t3, 4, loop_for # se j <= 4, vá para loop_for
j fim

loop_for:
    addi $t1, $t1, 1  # i += 1
    addi $t2, $t2, -2  # k -= 2
    addi $t3, $t3, 1   # j += 1
    j try

fim:
