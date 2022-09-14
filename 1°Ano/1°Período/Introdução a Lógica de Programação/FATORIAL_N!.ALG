Algoritmo "Fatorial N!"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Edson Shinki Kaneshima
// Descrição   : Utilize o comando de repetição PARA e faça um algoritmo que
//               calcule o fatorial de N (N!)
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 14/06/2022
Var
   contador, n, total : inteiro

Inicio
   // Seção de Comandos
   escreva("Informe o Número: ")
   total <- 1
   leia(n)
   para contador <- n ate 1 passo - 1 faca
      total <- total * contador
   fimpara
   escreva(n,"! =", total)
Fimalgoritmo