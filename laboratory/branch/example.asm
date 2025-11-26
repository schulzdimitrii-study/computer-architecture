# int x = -1
# int c = 30
#   if (x == 0) {
#    c += 12;
#   } else if (x <= 0) {
#    c += 39;
#   } else {
#    c -= 10;
#   }

.text
li $t0, -1      # x = -1 ($t0)
li $t1, 30     # c = 30 ($t1)
beq $t0, 0, igual_0  # se x == 0
ble $t0, 0, menor_igual_0  # se x <= 0

addi $t1, $t1, -10  # c -= 10
j fim

igual_0:
addi $t1, $t1, 12   # c += 12

menor_igual_0:
addi $t1, $t1, 39   # c += 39

fim:
