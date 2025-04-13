# programa que solicite, leia, realize as operações aritméticas e imprima os resultados
.data
 solicitaNumUm: .asciiz "Informe o primeiro valor: "
 solicitaNumDois: .asciiz "Informe o segundo valor: "
 resultAdd: .asciiz "\nO resultado da soma dos valores é: "
 resultSub: .asciiz "\nO resultado da subtração dos valores é: "
 resultMul: .asciiz "\nO resultado da multiplicação dos valores é: "
 resultQuociente: .asciiz "\nO resultado do quociente da divisão dos valores é: "
 resultResto: .asciiz "\nO resultado do resto da divisão dos valores é: "
 
.text
 #solicitacao de numeros
 li $v0, 4
 la $a0, solicitaNumUm
 syscall
 
 li $v0, 5
 syscall
 
 move $t0, $v0
 
 li $v0, 4
 la $a0, solicitaNumDois
 syscall
 
 li $v0, 5
 syscall
 
 move $t1, $v0
 #adicao
 add $t2, $t0, $t1
 
 li $v0, 4
 la $a0, resultAdd
 syscall
 
 li $v0, 1
 move $a0, $t2
 syscall
 #subtracao
 sub $t2, $t0, $t1
 
 li $v0, 4
 la $a0, resultSub
 syscall
 
 li $v0, 1
 move $a0, $t2
 syscall
 #multiplicacao
 mul $t2, $t0, $t1
 
 li $v0, 4
 la $a0, resultMul
 syscall
 
 li $v0, 1
 move $a0, $t2
 syscall
 #divisao
 div $t0, $t1
 mflo $t3
 mfhi $t4
    ####quociente
 li $v0, 4
 la $a0 resultQuociente
 syscall
 
 li $v0, 1
 move $a0, $t3
 syscall
    ####resto
 li $v0, 4
 la $a0, resultResto
 syscall
 
 li $v0, 1
 move $a0, $t4
 syscall
 
 li $v0, 10
 syscall
 
 
 