Algoritmo "Fatorial N!"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Edson Shinki Kaneshima
// Descri��o   : Utilize o comando de repeti��o PARA e fa�a um algoritmo que
//               calcule o fatorial de N (N!)
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 14/06/2022
Var
   contador, n, total : inteiro

Inicio
   // Se��o de Comandos
   escreva("Informe o N�mero: ")
   total <- 1
   leia(n)
   para contador <- n ate 1 passo - 1 faca
      total <- total * contador
   fimpara
   escreva(n,"! =", total)
Fimalgoritmo