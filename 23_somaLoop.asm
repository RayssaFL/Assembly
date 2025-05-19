# Solicita o primeiro e o último número e incrementa o primeiro em 1 até atingir o valor
.data
n1: .asciiz "Informe o primeiro número: "
n2: .asciiz "Informe o último número: "
espaco: .asciiz " "
fim: .asciiz "\nFim do programa. "
.text

li $v0, 4
la $a0, n1
syscall

li $v0, 5
syscall
move $t0, $v0

li $v0, 4
la $a0, n1
syscall

li $v0, 5
syscall
move $t1, $v0

loop:
li $v0, 1
move $a0, $t0
syscall

li $v0, 4
la $a0, espaco
syscall

addi $t0, $t0, 1

bgt $t0, $t1, fimpg
j loop

fimpg:
li $v0, 4
la $a0, fim
syscall

li $v0, 10
syscall