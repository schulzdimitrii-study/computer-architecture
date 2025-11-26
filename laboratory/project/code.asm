.text
main:

    # Definir endereço base em $a0 (exemplo: 0x10010000)
    li   $a0, 0x10010000

    addi $t0, $zero, 10
    sw   $t0, 0($a0)

    addi $t1, $zero, -5
    sw   $t1, 4($a0)

    addi $t2, $zero, 7
    sw   $t2, 8($a0)

    addi $t3, $zero, -3
    sw   $t3, 12($a0)

    addi $t4, $zero, 15
    sw   $t4, 16($a0)

    addi $t5, $zero, 0      # $t5 = soma
    addi $t6, $zero, 0      # índice = 0

loop:
    addi $t7, $t6, -5       # $t7 = índice - 5
    bgez $t7, end           # se índice >= 5, fim

    mul  $t8, $t6, 4        # offset = índice * 4
    add  $t9, $a0, $t8      # endereço = base + offset
    lw   $s0, 0($t9)        # carrega valor

    bgtz $s0, add_positive  # se valor > 0, soma

    addi $t6, $t6, 1        # índice++
    j    loop

add_positive:
    add  $t5, $t5, $s0      # soma += valor
    addi $t6, $t6, 1        # índice++
    j    loop

end:
    li   $v0, 10
    syscall
