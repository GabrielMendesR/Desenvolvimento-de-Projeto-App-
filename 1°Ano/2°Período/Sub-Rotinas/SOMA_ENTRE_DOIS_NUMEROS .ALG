Algoritmo "Soma Entre Dois Numeros "
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Edson Shinki Kaneshima
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 11/08/2022
Var
   n1,n2 : inteiro

funcao soma(n1,n2 : inteiro) : inteiro
var
   i, c, n, t : inteiro
   v : vetor[0..n] de inteiro

inicio
   se (n1 > n2) entao
      n <- (n1 - n2) - 2
      i <- (n2 + 1)
      para c < n passo 1 faca
         v[c] < i
         i <- i + 1

      fimpara
   senao
      se (n2 > n1) entao
         n <- (n2 - n1) - 2
         i <- (n1 + 1)
         para c < n passo 1 faca
            v[c] <- i
            i <- i + 1

         fimpara
      senao
         n <- 0

      fimse
   fimse

   retorne n

fimfuncao

Inicio
   escreva("Informe o Primeiro N�mero: ")
   leia(n1)
   escreva("Informe o Segundo N�mero: ")
   leia(n2)
   escreva(soma(n1,n2))



Fimalgoritmo