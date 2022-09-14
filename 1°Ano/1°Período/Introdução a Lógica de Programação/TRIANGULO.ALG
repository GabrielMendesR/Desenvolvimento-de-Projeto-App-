Algoritmo "Triangulo"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Edson Shinki Kaneshima
// Descrição   : Algoritmo que mostre o tipo do triângulo (equilátero,
//               isósceles ou escaleno)ou caso nao forme um triangulo,
//               escreva uma mensagem informando que os 3 valores
//               não formam um triângulo.

// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 30/05/2022
Var
   // Seção de Declarações das variáveis
   l1, l2, l3 : real


Inicio
   // Seção de Comandos
   escreva("Informe o Lado 1: ")
   leia(l1)
   escreva("Informe o Lado 2: ")
   leia(l2)
   escreva("Informe o Lado 3: ")
   leia(l3)
   se((l1 + l2 <= l3) ou (l1 + l3 <=l2) ou (l2 + l3 <= l1)) entao
      escreva("Esses Valores Não Formam um Triângulo")
   senao
      se((l1 <> l2) e (l1 <> l3) e (l2 <> l3)) entao
         escreva("Triângulo Escaleno")
      senao
         se((l1 = l2) e (l1 = l3)) entao
            escreva("Triângulo Equilátero")
         senao
            se ((l1 = l2) ou (l1 = l3) ou (l2 = l3)) entao
               escreva("Triângulo Isósceles")
            fimse
         fimse
      fimse
   fimse

Fimalgoritmo