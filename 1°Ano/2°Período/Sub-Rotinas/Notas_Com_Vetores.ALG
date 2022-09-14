Algoritmo "Notas com Vetores Atividade 1"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Edson Shinki Kaneshima
// Descrição   :
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 10/08/2022
Var
   n1,n2,n3 : real
   letra : caractere
   i : inteiro

funcao nota : real
var
   f : inteiro
   media : real
inicio
   enquanto f = 0 faca
      escreva("Informe a Primeira Nota: ")
      leia(n1)
      escreva("Informe a Segunda Nota: ")
      leia(n2)
      escreva("Informe a Terceira Nota: ")
      leia(n3)

      se((letra = "A") ou (letra = "a")) entao
         media <- (n1+n2+n3) / 3)
      senao
         se((letra = "P") ou (letra = "p")) entao
            media <- ((n1 + (n2*3) + (n3*6)) / 10)
         fimse
      fimse
      f <- 1
      se ((media > 100) ou (media < 0)) entao
         escreval("Valor das Notas Inválido!")
         f <- 0
      fimse
   fimenquanto
   retorne media
fimfuncao

Inicio
   enquanto i = 0 faca
      escreva("Informe se A Média é Aritimética('A') ou Ponderada('P'): ")
      leia(letra)


      se((letra = "A") ou (letra = "a")) entao
         escreval("Média Aritmética da Nota:", nota)
         i <- 1
      senao
         se((letra = "P") ou (letra = "p")) entao
            escreval("Média Ponderada da Nota:", nota)
            i <- 1
         senao
            escreval("Valor Inválido!")
         fimse
      fimse
   fimenquanto


Fimalgoritmo