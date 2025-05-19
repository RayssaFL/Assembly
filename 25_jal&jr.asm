#Primeiro programa usando jal e jr $ra
.data
msg: .asciiz "Primeiro programa usando jal e jr $ra. "

.text
jal imprimirMsg

li $v0, 10
syscall

imprimirMsg:
 li $v0, 4
 la $a0, msg
 syscall
 
 jr $ra