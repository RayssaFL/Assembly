.data
  solicitaNum: .asciiz "Informe sua idade (número inteiro): "
  imprimeNum: .asciiz "A idade informada foi: "
  
.text
  #imprimir string
  li $v0, 4
  la $a0, solicitaNum
  syscall
  #lê numero inteiro
  li $v0, 5
  syscall
  #copiar/mover valor
  move $t0, $v0 #copia/move o valor de $v0 para $t0
  #imprimir string
  li $v0, 4
  la $a0, imprimeNum
  syscall
  #imprimir valor inteiro
  li $v0, 1
  move $a0, $t0
  syscall
  
  li $v0, 10
  syscall
  
  