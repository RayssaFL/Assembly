#mu ou muv
.data
espaco: .asciiz "Informe o espaço percorrido em km: "
tempo: .asciiz "Informe o tempo de deslocamento em horas: "
aceleracao: .asciiz "Informe a aceleração em km/h^2 : "
MU: .asciiz "\nMovimento Uniforme. "
MUV: .asciiz "\nMovimento Uniforme Variado. "
velocidade: .asciiz "\nA velocidade em km/h é: "
zero: .float 0.0

 .macro entradas
  li $v0, 4
  la $a0, espaco
  syscall
 
  li $v0, 6 
  syscall
  mov.s $f1, $f0 
 
  li $v0, 4
  la $a0, tempo
  syscall
 
  li $v0, 6
  syscall
  mov.s $f2, $f0 
 
  li $v0, 4
  la $a0, aceleracao
  syscall
 
  li $v0, 6
  syscall
  mov.s $f3, $f0
 .end_macro

.text

 .globl entrada
   entrada:
     entradas
   
 l.s $f4, zero
 
 c.eq.s $f3, $f4
 
 bc1t mu
 bc1f muv
 
 mu:
  div.s $f5, $f1, $f2
 
  li $v0, 4
  la $a0, velocidade
  syscall
 
  li $v0, 2
  mov.s $f12, $f5 #f12 é o meu a0
  syscall
 
  li $v0, 4
  la $a0, MU
  syscall
 
  li $v0, 10
  syscall
 
 muv:
  div.s $f5, $f1, $f2
  mul.s $f6, $f3, $f2
  add.s $f7, $f5, $f6
  
  li $v0, 4
  la $a0, velocidade
  syscall
  
  li $v0, 2
  mov.s $f12, $f7
  syscall
  
  li $v0, 4
  la $a0, MUV
  syscall
   
  li $v0, 10
  syscall 