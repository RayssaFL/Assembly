.data
  msg: .asciiz "Hello, world!" ##o z informa onde a string terminou

.text
  li $v0, 4
  la $a0, msg
  syscall
  
  li $v0, 10
  syscall