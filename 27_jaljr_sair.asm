# jal, jr $ra e j - Digita 0 para sair
.data
Num: .asciiz "Digite um número: "
fim: .asciiz "Fim do programa. "
.text
jal lerNum

enquanto:
 beq $t0, 0, saida
 jal lerNum
 j enquanto

lerNum:
 li $v0, 4
 la $a0, Num
 syscall
 
 li $v0, 5
 syscall
 move $t0, $v0
 jr $ra
 
 saida:
  li $v0, 4
  la $a0, fim
  syscall
  
  li $v0, 10
  syscall