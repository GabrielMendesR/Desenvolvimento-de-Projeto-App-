Algoritmo "NumerosPrimos"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Edson Shinki Kaneshima
// Descrição   :
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 21/06/2022
Var
   n, f : inteiro
   finalizar : caractere

Inicio
   enquanto ((finalizar <> "s") e (finalizar <> "S")) faca
      escreva("Informe o Numero: ")
      leia(n)
      se(n = 1) entao
         escreval("É Primo")
      fimse
      para f <- (n - 1) ate 2 passo -1 faca
         se((n mod f) = 0) entao
            escreval("Não É Primo")
            interrompa
          senao
             escreval("É Primo")

         fimse
      fimpara
      escreval("Finalizar?<S/N>")
      leia(finalizar)


   fimenquanto



Fimalgoritmo