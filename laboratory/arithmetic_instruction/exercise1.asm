# Replique as seguintes expressões para assembly MIPS
# 1 - 2 + 10 * 3 / 2
addi $t1, $t1, 1
addi $t2, $t2, 2
addi $t3, $t3, 10
addi $t4, $t4, 3

sub $t5, $t1, $t2 # 1 - 2
mul $t6, $t3, $t4 # 10 * 3
div $t7, $t6, $t2 # 10 * 3 / 2
add $t0, $t5, $t7 # 1 - 2 + 10 * 3 / 2
