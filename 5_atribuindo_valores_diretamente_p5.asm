#atribuindo valores diretamente aos registradores e em seguida realizar as opera��es aritm�ticas de adi��o, subtra��o, multiplica��o e divis�o
.text
 li $t0, 5
 li $t1, 2
#adicao
 add $t2, $t0, $t1
#subtracao
 sub $t3, $t0, $t1
#multiplicacao
 mul $t4, $t0, $t1
#divisao
 div $t0, $t1
 mflo $t5
 mfhi $t6