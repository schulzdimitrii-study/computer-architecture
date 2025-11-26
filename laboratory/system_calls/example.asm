.data
    hello_world: .asciiz "Hello, World!"

.text
la $a0, hello_world  # Load address of the string
li $v0, 4            # syscall for print_string
syscall
