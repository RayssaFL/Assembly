# Soma dois n�meros e pergunta se quer continuar
.data
n1: .asciiz "Informe o primeiro n�mero: "
n2: .asciiz "Informe o segundo n�mero: "
soma: .asciiz "A soma dos valores �: "
continuar: .asciiz "\nDeseja continuar?(1-sim, outro-n�o) "
fim: .asciiz "\nFim do programa. "

.text
enquanto:
 li $v0, 4
 la $a0, n1
 syscall
 
 li $v0, 5
 syscall
 move $t0, $v0
 
 li $v0, 4
 la $a0, n2
 syscall
 
 li $v0, 5
 syscall
 move $t1, $v0
 
 add $t2, $t0, $t1
 
 li $v0, 4
 la $a0, soma
 syscall
 
 li $v0, 1
 move $a0, $t2
 syscall
 
 li $v0, 4
 la $a0, continuar
 syscall
 
 li $v0, 5
 syscall
 move $t3, $v0
 
 bne $t3, 1, fimpg
 j enquanto
 
 fimpg:
 li $v0, 4
 la $a0, fim
 syscall
 
 li $v0, 10
 syscall
 