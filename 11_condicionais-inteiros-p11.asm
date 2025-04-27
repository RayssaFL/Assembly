#condicionais de inteiros
.data
 askNum: .asciiz "Informe um número: "
 ans_Positive: .asciiz "O número é positivo. "
 ans_Negative: .asciiz "O número é negativo. "
 ans_Zero: .asciiz "O número é igual a zero. "
 
.text

 li $v0, 4
 la $a0, askNum
 syscall
 
 li $v0, 5
 syscall
 move $t0, $v0 
 
 #condicoes
  bgt $t0,$zero, positivo #se $t0 > 0, executa label "positivo"
  blt $t0,$zero, negativo #se $t0 < 0, executa label "negativo"
  beq $t0,$zero, zero #se $t0 = 0, executa label zero
  
  #criando as labels
     positivo: 
        li $v0, 4
 	la $a0, ans_Positive
	syscall 
	
	li $v0, 10
	syscall
    
     negativo: 
        li $v0, 4
 	la $a0, ans_Negative
	syscall 
	
	li $v0, 10
	syscall
	
     zero:
     	li $v0, 4
 	la $a0, ans_Zero
	syscall 
	
	li $v0, 10
	syscall