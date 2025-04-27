#verifica se o numero é par ou impar
.data
 solicitaNum: .asciiz "Digite um número inteiro: "
 result_par: .asciiz "O número é par. "
 result_impar: .asciiz "O número é ímpar. "

.text
 li $v0, 4
 la $a0, solicitaNum
 syscall
 
 li $v0, 5
 syscall
 
 move $t0, $v0
 
 li $t1, 2
 
 div $t0, $t1
 mfhi $t2
 
 beq $t2, $zero, par

    li $v0, 4
    la $a0, result_impar
    syscall
    
    li $v0, 10
    syscall

  par:
    li $v0, 4
    la $a0, result_par
    syscall
    
    li $v0, 10
    syscall 