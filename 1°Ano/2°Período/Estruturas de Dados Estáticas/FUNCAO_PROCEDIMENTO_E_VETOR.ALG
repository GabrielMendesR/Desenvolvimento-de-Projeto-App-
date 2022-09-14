Algoritmo "Função, Procedimento e Vetor"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Edson Shinki Kaneshima
// Descrição   :
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 11/08/2022
Var
   n, f: inteiro

funcao fatorial : inteiro
var
   c, total : inteiro

inicio
   total <- 1
   escreva("Informe o Número a ser Fatorado: ")
   leia(n)
   para c <- n ate 1 passo - 1 faca
      total <- total * c
   fimpara

   escreval(n,"! =", total)

fimfuncao

Inicio
   enquanto f <> 9 faca
      escreval("1 - Mostrar o fatorial")
      escreval("2 - Entrada de Dados no vetor NUM")
      escreval("3 - Gerar vetor FAT")
      escreval("4 - Mostrar vetor")
      escreval("9 - Finalizar Programa")
      leia(f)
      se(f = 1) entao
         escreval(fatorial)
      senao
         se(f = 2) entao

         senao
            se(f = 3) entao

            senao
               se(f = 4) entao

               senao
                  se(f = 9) entao
                     escreval("Programa Finalizado!")
                  senao
                     escreval("Valor Inválido, Tente Novamente")
                  fimse
               fimse
            fimse
         fimse
      fimse

   fimenquanto
Fimalgoritmo