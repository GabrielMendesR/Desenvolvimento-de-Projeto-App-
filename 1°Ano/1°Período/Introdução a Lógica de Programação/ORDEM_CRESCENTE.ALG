Algoritmo "Ordem Crescente"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Edson Shinki Kaneshima
// Descrição   : algoritmo que leia três valores inteiros e em seguida,
//               mostre os três valores ordenados de forma crescente
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 30/05/2022
Var
   // Seção de Declarações das variáveis
   n1, n2, n3 : inteiro

Inicio
   // Seção de Comandos,
   escreva("Informe o Primeiro valor Inteiro: ")
   leia(n1)
   escreva("Informe o Segundo valor Inteiro: ")
   leia(n2)
   escreva("Informe o Terceiro valor Inteiro: ")
   leia(n3)
   se((n1 > n2) e (n2 > n3)) entao
      escreva(n3,n2,n1)
   senao
      se(n1 > n3) e (n3 > n2) entao
         escreva(n2,n3,n1)
      senao
         se((n2 > n1) e (n1 > n3)) entao
            escreva(n3,n1,n2)
         senao
            se((n2 > n3) e (n3 > n1)) entao
               escreva(n1,n3,n2)
            senao
               se((n3 > n1) e (n1 > n2)) entao
                  escreva(n2,n1,n3)
               senao
                  se((n3 > n2) e (n2 > n1)) entao
                  escreva(n1,n2,n3)
               fimse
            fimse
         fimse
      fimse
   fimse
fimse
Fimalgoritmo