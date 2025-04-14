#prova
.data
 num1: .asciiz "Informe o primeiro valor inteiro: "
 num2: .asciiz "Informe o segundo valor inteiro: "
 resultAdd: .asciiz "O valor da operação soma é: "
 resultSub: .asciiz "\nO valor da operação subtração é: "
 resultMul: .asciiz "\nO valor da operação multiplicação é: "
 resultQuociente: .asciiz "\nO valor do quociente da divisão é: "
 resultResto: .asciiz "\nO valor do resto da divisão é: "
 msg_fim: .asciiz "\nFim do programa."
 
.text
 li $v0, 4
 la $a0, num1
 syscall
 
 li $v0, 5
 syscall
 
 move $t0, $v0
 
 li $v0, 4
 la $a0, num2
 syscall
 
 li $v0, 5
 syscall
 
 move $t1, $v0
 #operacoes
 add $t2, $t0, $t1
 
 li $v0, 4
 la $a0, resultAdd
 syscall
 
 li $v0, 1
 move $a0, $t2
 syscall
 
 sub $t2, $t0, $t1
 
 li $v0, 4
 la $a0, resultSub
 syscall
 
 li $v0, 1
 move $a0, $t2
 syscall
 
 mul $t2, $t0, $t1
 
 li $v0, 4
 la $a0, resultMul
 syscall
 
 li $v0, 1
 move $a0, $t2
 syscall
 
 div $t0, $t1
 mflo $t3
 mfhi $t4
 
 li $v0, 4
 la $a0, resultQuociente
 syscall
 
 li $v0, 1
 move $a0, $t3
 syscall
 
 li $v0, 4
 la $a0, resultResto
 syscall
 
 li $v0, 1
 move $a0, $t4
 syscall
 
 li $v0, 4
 la $a0, msg_fim
 syscall
 
 li $v0, 10
 syscall
 
