Algoritmo "NumerosPrimos"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Edson Shinki Kaneshima
// Descri��o   : Informar se o n�mero � primo ou n�o
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 21/06/2022
Var
n, f : inteiro
finalizar, primo : caractere

Inicio
enquanto ((finalizar <> "s") e (finalizar <> "S")) faca
   escreva("Informe o Numero: ")
   leia(n)
   primo <- "s"
   para f <- (n - 1) ate 2 passo -1 faca
      se((n mod f) = 0) entao
         escreval("N�o � Primo")
         primo <- "n"
         interrompa
      fimse
   fimpara
   se(primo = "s") entao
      escreval("� Primo")
   fimse
   repita
      escreval("Finalizar?<S/N>")
      leia(finalizar)
      se((finalizar <> "s") e (finalizar <> "S") e (finalizar <> "n") e (finalizar <> "N")) entao
         escreval("Erro! Valor Inv�lido ")
      fimse
   ate((finalizar = "s") ou (finalizar = "S") ou (finalizar = "n") ou (finalizar = "N"))

fimenquanto



Fimalgoritmo
