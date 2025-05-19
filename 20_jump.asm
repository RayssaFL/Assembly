.data
message: .asciiz "First time using jump! "

.text
li $v0, 4
la $a0, message
syscall

j end

end:
 li $v0, 10
 syscall