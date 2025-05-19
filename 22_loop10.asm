#Laço de repetição até 10
.data
 espaco: .asciiz " "
.text
li $t0, 0

enquanto:
 beq $t0, 10, saida
 addi $t0, $t0, 1
 
 li $v0, 1
 move $a0, $t0
 syscall
 
 li $v0, 4
 la $a0, espaco
 syscall 
 j enquanto
 
 saida:
 li $v0, 10
 syscall
 