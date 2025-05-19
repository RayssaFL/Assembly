# Solicita os valores ao usuário
.data
resultado: .word 0 # Espaço reservado para o resultado
msg_entrada1: .asciiz "Digite o primeiro numero: " # Solicita o primeiro número
msg_entrada2: .asciiz "Digite o segundo numero: " # Solicita o segundo número
msg_valor_t2: .asciiz "\nValor em $t2 (soma): " # Mensagem antes do valor em $t2
msg_valor_t3: .asciiz "\nValor em $t3 (de resultado): " # Mensagem antes do valor carregado
msg_endereco: .asciiz "\nEndereco da variavel resultado: "
.text
 li $v0, 4 
 la $a0, msg_entrada1 
 syscall 
 
 li $v0, 5 
 syscall
 move $t0, $v0
 
 li $v0, 4 
 la $a0, msg_entrada2
 syscall 
 
 li $v0, 5 
 syscall
 move $t1, $v0
 
 add $t2, $t0, $t1
 
 li $v0, 4
 la $a0, msg_valor_t2
 syscall
 
 li $v0, 1
 move $a0, $t2
 syscall
 
 sw $t2, resultado
 lw $t3, resultado
 
 li $v0, 4 
 la $a0, msg_valor_t3 
 syscall 
 
 li $v0, 1
 move $a0, $t3
 syscall
 
 li $v0, 4 
 la $a0, msg_endereco 
 syscall
 
 li $v0, 34
 la $a0, resultado
 syscall
 
 li $v0, 10
 syscall
  