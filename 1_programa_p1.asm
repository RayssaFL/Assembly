.data #area de declaracao de variaveis
    letra: .byte 'F' #declarando a variavel "letra" como byte pois seu dado é apenas uma LETRA
.text #area para escrever o programa
    li $v0, 4
    la $a0, letra #sempre que for imprimir tem que usar isso
    syscall
    
    li $v0, 10
    syscall
    
