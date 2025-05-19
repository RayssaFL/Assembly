#aprovado ou reprovado
.data
 solicitan1: .asciiz "Informe a primeira nota: "
 solicitan2: .asciiz "Informe a segunda nota: "
 solicitan3: .asciiz "Informe a terceira nota: "
 msg_aprovado: .asciiz "O aluno está aprovado! "
 msg_reprovado: .asciiz "O aluno está reprovado! "
 qtd_provas: .float 3 #variavel do tipo float e valor 3
 media: .float 5
 
 .macro solicitaN
 li $v0, 4
 la $a0, solicitan1
 syscall
 
 li $v0, 6 #le um float e armazena em $f0
 syscall
 mov.s $f1, $f0 #f0 é o nosso $v0
 
 li $v0, 4
 la $a0, solicitan2
 syscall
 
 li $v0, 6
 syscall
 mov.s $f2, $f0 #f0 é o nosso $v0
 
 li $v0, 4
 la $a0, solicitan3
 syscall
 
 li $v0, 6
 syscall
 mov.s $f3, $f0 #f0 é o nosso $v0
 .end_macro
.text

 .globl numeros
  numeros:
    solicitaN
  
 add.s $f4, $f1, $f2
 add.s $f5, $f3, $f4
 l.s $f6, qtd_provas
 l.s $f7, media
 div.s $f8, $f5, $f6
 
 c.lt.s $f8, $f7
 
 bc1t reprovado
 bc1f aprovado
 
 reprovado:
 li $v0, 4
 la, $a0, msg_reprovado
 syscall
 
 li $v0, 10
 syscall
 
 aprovado:
 li $v0, 4
 la, $a0, msg_aprovado
 syscall
 
 li $v0, 10
 syscall
 