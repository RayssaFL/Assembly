# macros de operacoes aritmeticas do tipo inteiro
.data
 solicitaN1: .asciiz "Digite o primeiro número: "
 solicitaN2: .asciiz "Digite o segundo número: "
 msgAdd: .asciiz "O valor da adição é: "
 msgSub: .asciiz "\nO valor da subtração é: "
 msgMul: .asciiz "\nO valor da multiplicação é: "
 msgQuociente: .asciiz "\nO valor do quociente da divisão é: "
 msgResto: .asciiz "\nO valor da resto da divisão é: "
 msgFim: .asciiz "\nFim do programa."
 
 .macro SolicitaNum #inicio da macro
 #instrucoes
   #solicita primeiro numero
   li $v0, 4
   la $a0, solicitaN1
   syscall
   
   li $v0, 5
   syscall
   move $t0, $v0
   #segundo valor
   li $v0, 4
   la $a0, solicitaN2
   syscall
   
   li $v0, 5
   syscall
   move $t1, $v0
   
 .end_macro #fim da macro
 
 .macro adicao
   add $t2, $t0, $t1
   
   li $v0, 4
   la $a0, msgAdd
   syscall
   
   li $v0, 1
   move $a0, $t2
   syscall
 
 .end_macro
  
 .macro subtracao
   sub $t2, $t0, $t1
   
   li $v0, 4
   la $a0, msgSub
   syscall
   
   li $v0, 1
   move $a0, $t2
   syscall
 .end_macro
 
 .macro multiplicacao
   mul $t2, $t0, $t1
   
   li $v0, 4
   la $a0, msgMul
   syscall
   
   li $v0, 1
   move $a0, $t2
   syscall
 .end_macro
 
 .macro divisao
   div $t0, $t1
   mflo $t3
   mfhi $t4
   
   li $v0, 4
   la $a0, msgQuociente
   syscall
   
   li $v0, 1
   move $a0, $t3
   syscall
   
   li $v0, 4
   la $a0, msgResto
   syscall
   
   li $v0, 1
   move $a0, $t4
   syscall
 .end_macro
 
.text

 SolicitaNum
 adicao
 subtracao
 multiplicacao
 divisao