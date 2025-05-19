# Condicionais - Verifica se é par ou ímpar
.data
 askNum: .asciiz "Informe um valor: "
 ansPar: .asciiz "O valor é par. "
 ansImp: .asciiz "O valor é impar. "
 
 .macro ask
   li $v0, 4
   la $a0, askNum
   syscall
   
   li $v0, 5
   syscall
   move $t0, $v0
 .end_macro

.text

 .globl ASK
 ASK: 
  ask
  
  li $t1, 2
  
  div $t0, $t1
  mflo $t2
  mfhi $t3
  
  bne $t3, $zero, impar
  
   li $v0, 4
   la $a0, ansPar
   syscall
   
   li $v0, 10
   syscall
   
   impar:
    li $v0, 4
    la $a0, ansImp
    syscall
    
    li $v0, 10
    syscall
   
   
  
 