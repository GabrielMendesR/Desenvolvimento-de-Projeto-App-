algoritmo "Mod_Usando_Se"
// Fun��o : Mostar diferentes mensagens caso todos os n�meros sejam par ou
//          caso pelo menos um seja impar
// Autor : Gabriel Mendes Rodrigues
// Data : 27/05/2022
// Se��o de Declara��es
var
n1, n2, n3 : inteiro
inicio
// Se��o de Comandos
escreva("Informe o Primeiro N�mero: ")
leia(n1)
escreva("Informe o Segundo N�mero: ")
leia(n2)
escreva("Informe o Terceiro N�mero: ")
leia(n3)

se( (n1 mod 2 = 0) e (n2 mod 2 = 0) e (n3 mod 2 = 0)) entao
   escreva("Foi aplicada a regra 10 com os n�meros:", n1,",", n2," e", n3)
senao
   escreva("Foi aplicada a regra 19 com os n�meros:", n1,",", n2," e", n3)
fimse

fimalgoritmo
