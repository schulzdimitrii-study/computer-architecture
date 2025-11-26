# int x = read_int()
# int c = 30
#   if (x == 0) {
#    c += 12;
#   } else if (x <= 0) {
#    c += 39;
#   } else {
#    c -= 10;
#   }

.text
# syscall for read_int
li $v0, 5
syscall
move $t0, $v0                # x = read_int()

li $t1, 30                 # c = 30 ($t1)
beq $t0, 0, igual_0        # se x == 0
ble $t0, 0, menor_igual_0  # se x <= 0

addi $t1, $t1, -10  # c -= 10
j fim

igual_0:
addi $t1, $t1, 12   # c += 12

menor_igual_0:
addi $t1, $t1, 39   # c += 39

fim:
    la $a0, ($t1) # Load address of the integer
    li $v0, 1 # syscall for print_int
    syscall