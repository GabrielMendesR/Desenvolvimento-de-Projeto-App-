algoritmo "Mod_Usando_Se"
// Função : Mostar diferentes mensagens caso todos os números sejam par ou
//          caso pelo menos um seja impar
// Autor : Gabriel Mendes Rodrigues
// Data : 27/05/2022
// Seção de Declarações 
var
n1, n2, n3 : inteiro
inicio
// Seção de Comandos
escreva("Informe o Primeiro Número: ")
leia(n1)
escreva("Informe o Segundo Número: ")
leia(n2)
escreva("Informe o Terceiro Número: ")
leia(n3)

se( (n1 mod 2 = 0) e (n2 mod 2 = 0) e (n3 mod 2 = 0)) entao
    escreva("Foi aplicada a regra 10 com os números:", n1,",", n2," e", n3)
senao
    escreva("Foi aplicada a regra 19 com os números:", n1,",", n2," e", n3)
fimse
 
fimalgoritmo
