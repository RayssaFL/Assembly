# Verifica se o primeiro número é igual, maior ou menor que o segundo
.data
 solN1: .asciiz "Digite o primeiro número: "
 solN2: .asciiz "Digite o segundo número: "
 igual: .asciiz "Os números são iguais! "
 Menor: .asciiz "O primeiro número é menor que o segundo! "
 Maior: .asciiz "O primeiro número é maior que o segundo! "

.text
 li $v0, 4
 la $a0, solN1
 syscall
 
 li $v0, 6
 syscall
 mov.s $f1, $f0
 
 li $v0, 4
 la $a0, solN1
 syscall
 
 li $v0, 6
 syscall
 mov.s $f2, $f0
 
 c.eq.s $f1, $f2
  bc1t iguais
  c.lt.s $f1, $f2
   bc1t menor
    li $v0, 4          #se nao for igual e nem menor, vai ser maior
    la $a0, Maior
    syscall
     
    li $v0, 10 
    syscall
 
 iguais:
 li $v0, 4
 la $a0, igual
 syscall
 
 li $v0, 10
 syscall
 
 menor:
 li $v0, 4
 la $a0, Menor
 syscall
 
 li $v0, 10
 syscall