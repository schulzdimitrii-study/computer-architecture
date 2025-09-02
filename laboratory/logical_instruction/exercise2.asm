# Replique as seguintes expressões para assembly MIPS
# (0xFF & 1) - (2 | 4) + (10 * (4 >> 1) / (1 << 1))

addi $t0, $t0, 0xFF
addi $t1, $t1, 1
addi $t2, $t2, 2
addi $t3, $t3, 4
addi $t4, $t4, 10

and $t5, $t0, $t1 # 0xFF & 1
or  $t6, $t2, $t3 # 2 | 4
sub $t7, $t5, $t6 # (0xFF & 1) - (2 | 4)
srl $t8, $t3, 1   # 4 >> 1
sll $s0, $t1, 1   # 1 << 1
mul $s1, $t4, $t8 # 10 * (4 >> 1)
div $s2, $s1, $s0 # 10 * (4 >> 1) / (1 << 1)
add $s3, $t7, $s2 # (0xFF & 1) - (2 | 4) + (10 * (4 >> 1) / (1 << 1))