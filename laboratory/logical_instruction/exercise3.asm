# Replique as seguintes expressões para assembly MIPS
# 12 + 44 - 33

addi $t0, $t0, 12
addi $t1, $t1, 44
addi $t2, $t2, 33

sub $t3, $t1, $t2 # 44 - 33
add $t4, $t0, $t3 # 12 + (44 - 33)