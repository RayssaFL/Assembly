#Operações com valores carregados de variáveis (float)
.data
 num1: .float 10.5
 num2: .float 2.5
 resultAdd: .asciiz "Resultado da adição dos valores: "
 resultSub: .asciiz "\nResultado da subtração dos valores: "
 resultMul: .asciiz "\nResultado da multiplicação dos valores: "
 resultDiv: .asciiz "\nResultado da divisão dos valores: "
 
.text
 l.s $f1, num1
 l.s $f2, num2
 
 #operacoes
 add.s $f3, $f1, $f2
 sub.s $f4, $f1, $f2
 mul.s $f5, $f1, $f2
 div.s $f6, $f1, $f2
 
 #impressao
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
 
 li $v0, 10
 syscall