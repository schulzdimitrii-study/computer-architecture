# Replique as seguintes expressões para assembly MIPS
# 0xFF & 0xF0 | 1

addi $t1, $t1, 0xFF
addi $t2, $t2, 0xF0

andi $t3, $t1, 0xF0  # 0xFF & 0xF0
ori $t0, $t3, 1      # 0xFF & 0xF0 | 1