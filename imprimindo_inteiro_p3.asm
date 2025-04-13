.data
  idade: .word 90 #var idade do tipo word contem o numero inteiro 90
  
.text
  li $v0, 1
  lw $a0, idade #carrega para o $a0 o endereco de 'idade' para impressao
  syscall
  
  li $v0, 10
  syscall