# Array – Programa 1 - Criação e acesso a um elemento (números inteiros)
.data
array: .word 5, 10, 12, 3, 6
msg: .asciiz "O elemento é: "
.text
 .globl main
   main:
   li $v0, 4
   la $a0, msg
   syscall
   
   la $t0, array
   lw $t1, 4($t0)
   
   li $v0, 1
   move $a0, $t1
   syscall 
   
   li $v0, 10
   syscall
