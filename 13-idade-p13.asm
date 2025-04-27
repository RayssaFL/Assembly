#programa maior ou menor de idade
.data
 solicitaIdade: .asciiz "Informe sua idade: "
 maiorIdade: .asciiz "Maior"
 menorIdade: .asciiz "Menor"
 
.text

 li $v0, 4
 la $a0, solicitaIdade
 syscall
 
 li $v0, 5
 syscall
 
 move $t0, $v0
 
 li $t1, 18
 
 bge $t0, $t1, maior
 
   li $v0, 4
   la $a0, menorIdade 
   syscall
   
   li $v0, 10
   syscall
   
   maior:
     
   li $v0, 4
   la $a0, maiorIdade
   syscall
   
   li $v0, 10
   syscall
   
 
 