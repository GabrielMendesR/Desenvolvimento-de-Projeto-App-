Algoritmo "Triangulo"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Edson Shinki Kaneshima
// Descri��o   : Algoritmo que mostre o tipo do tri�ngulo (equil�tero,
//               is�sceles ou escaleno)ou caso nao forme um triangulo,
//               escreva uma mensagem informando que os 3 valores
//               n�o formam um tri�ngulo.

// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 30/05/2022
Var
   // Se��o de Declara��es das vari�veis
   l1, l2, l3 : real


Inicio
   // Se��o de Comandos
   escreva("Informe o Lado 1: ")
   leia(l1)
   escreva("Informe o Lado 2: ")
   leia(l2)
   escreva("Informe o Lado 3: ")
   leia(l3)
   se((l1 + l2 <= l3) ou (l1 + l3 <=l2) ou (l2 + l3 <= l1)) entao
      escreva("Esses Valores N�o Formam um Tri�ngulo")
   senao
      se((l1 <> l2) e (l1 <> l3) e (l2 <> l3)) entao
         escreva("Tri�ngulo Escaleno")
      senao
         se((l1 = l2) e (l1 = l3)) entao
            escreva("Tri�ngulo Equil�tero")
         senao
            se ((l1 = l2) ou (l1 = l3) ou (l2 = l3)) entao
               escreva("Tri�ngulo Is�sceles")
            fimse
         fimse
      fimse
   fimse

Fimalgoritmo