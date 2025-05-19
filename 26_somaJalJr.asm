#soma
.data
 msg_n1: .asciiz "Digite o primeiro número: "
 msg_n2: .asciiz "Digite o segundo número: "
 msg_soma: .asciiz "A soma dos números é: "
.text
 li $v0, 4
 la $a0, msg_n1
 syscall
 
 li $v0, 5
 syscall
 move $t0, $v0
 
 li $v0, 4
 la $a0, msg_n2
 syscall
 
 li $v0, 5
 syscall
 move $t1, $v0
 
 jal soma
 
 li $v0, 4
 la $a0, msg_soma
 syscall
 
 li $v0, 1
 move $a0, $t2
 syscall

 li $v0, 10
 syscall
 
 soma:
 add $t2, $t0, $t1
 jr $ra