#Encerra o programa se digitado 0
.data
 askNum: .asciiz "Informe um número: "
 messageEnd: .asciiz "\nFim do programa. "

.text
loop:
 li $v0, 4
 la $a0, askNum
 syscall
 
 li $v0, 5
 syscall
 move $t0, $v0
 
 beq $t0, $zero, fim
 
 j loop
 
 fim:
 li $v0, 4
 la $a0, messageEnd
 syscall
 
 li $v0, 10
 syscall