Algoritmo "NumerosPrimos"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Edson Shinki Kaneshima
// Descri��o   :
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
         escreval("� Primo")
      fimse
      para f <- (n - 1) ate 2 passo -1 faca
         se((n mod f) = 0) entao
            escreval("N�o � Primo")
            interrompa
          senao
             escreval("� Primo")

         fimse
      fimpara
      escreval("Finalizar?<S/N>")
      leia(finalizar)


   fimenquanto



Fimalgoritmo