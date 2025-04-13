#Operações com entrada do usuário (float)
.data
 solicitaNum1: .asciiz "Informe o primero valor: "
 solicitaNum2: .asciiz "Informe o segundo valor: "
 resultAdd: .asciiz "\nO resultado da adição dos números informados é: "
 resultSub: .asciiz "\nO resultado da subtração dos números informados é: "
 resultMul: .asciiz "\nO resultado da multiplicação dos números informados é: "
 resultDiv: .asciiz "\nO resultado da divisão dos números informados é: "
 
.text
 #solicita
 li $v0, 4
 la $a0, solicitaNum1
 syscall
 
 li $v0, 6
 syscall
 mov.s $f1, $f0
 
 li $v0, 4
 la $a0, solicitaNum2
 syscall
 
 li $v0, 6
 syscall
  mov.s $f2, $f0
 
 #operacoes
 add.s $f3, $f1, $f2
 sub.s $f4, $f1, $f2
 mul.s $f5, $f1, $f2
 div.s $f6, $f1, $f2
 
 li $v0, 4
 la $a0, resultAdd
 syscall
 
 li $v0, 2
 mov.s $f12, $f3
 syscall
 
 li $v0, 4
 la $a0, resultSub
 syscall
 
 li $v0, 2
 mov.s $f12, $f4
 syscall
 
 li $v0, 4
 la $a0, resultMul
 syscall
 
 li $v0, 2
 mov.s $f12, $f5
 syscall
 
 li $v0, 4
 la $a0, resultDiv
 syscall
 
 li $v0, 2
 mov.s $f12, $f6
 syscall