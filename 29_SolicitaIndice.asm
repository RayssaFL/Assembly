# Array - Programa 2 - Solicita o índice do elemento
.data
numeros: .word 10, 15, 20, 25, 30 # Array (de nome "numeros" de 5 elementos
Solicita_Ind: .asciiz "\nDigite o índice do elemento a ser impresso (0-4): "
Elemento: .asciiz "\nO elemento no índice especificado é: "
Indice_Invalido: .asciiz "Índice inválido. Por favor, digite um número entre 0 e 4.\n"
.text
 .globl main
 main:
   li $v0, 4
   la $a0, Solicita_Ind
   syscall
   
   li $v0, 5
   syscall
   move $t0, $v0
   
   li $t1, 4
   blt $t0, 0, indiceInvalido
   bgt $t0, $t1, indiceInvalido
    
    
   la $t2, numeros
   mul $t0, $t0, $t1
   add $t2, $t0, $t2
   
   lw $t3, 0($t2)
   
   li $v0, 4
   la $a0, Elemento
   syscall
   
   li $v0, 1
   move $a0, $t3
   syscall
   
   li $v0, 10
   syscall
   
 indiceInvalido:
   li $v0, 4
   la $a0, Indice_Invalido
   syscall
   
   j main
   
   li $v0, 10
   syscall