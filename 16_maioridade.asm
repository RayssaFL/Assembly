# Condicionais - Verifica se é maior ou menor de idade
.data
 askNum: .asciiz "Informe sua idade: "
 maiorIdade: .asciiz "É maior de idade. "
 menorIdade: .asciiz "É menor de idade. "
.text
 li $v0, 4
 la $a0, askNum
 syscall
 
 li $v0, 5
 syscall
 
 move $t0, $v0
 
 li $t1, 18
 
 bge $t0, $t1, maiorAge
 blt $t0, $t1, menorAge
 
 maiorAge:
  li $v0, 4
  la $a0, maiorIdade
  syscall
  
  li $v0, 10
  syscall
  
 menorAge: 
  li $v0, 4
  la $a0, menorIdade
  syscall
  
  li $v0, 10
  syscall
