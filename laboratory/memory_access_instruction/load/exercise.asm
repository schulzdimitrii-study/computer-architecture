# Transcrever o código em c++ para assembly

.data
    len: .word 6 # Usa world porque é um 'uint32_t'
    data: .half  10, 20, 30, 3, 2, 4 # int16_t
    total: .word 0 #

.text
lw $t0, len
li $t1, 0            # i = 0 ($t1)
li $t2, 0            # total = 0 ($t2)

for:
    bgt $t1, $t0, end_program  # Se i > len, sai do loop

    mul $t3, $t1, 2         # Calcula o deslocamento: i * 2 (tamanho de half é 2 bytes)
    la $t4, data
    add $t4, $t4, $t3       # Endereço do elemento data[i]
    lh $t5, 0($t4)          # Carrega data[i] em $t5

    add $t2, $t2, $t5       # total += data[i]

    add $t1, $t1, 1        # Incrementa i
    j for                   # Repete o loop

end_program:    
    la $a0, ($t2)
    li $v0, 1
    syscall
    
    
    li $v0, 10              # Código para sair do programa
    syscall
