# Replique as seguintes expressões para assembly MIPS
# 470 / 2 + 4
addi $t1, $t1, 470
addi $t2, $t2, 2
addi $t3, $t3, 4

div $t4, $t1, $t2 # 470 / 2
add $t0, $t4, $t3 # 470 / 2 + 4