Algoritmo "ChuteNumero"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Edson Shinki Kaneshima
// Descri��o   : Algoritimo que escolhe um numero aleatorio e voc� tem que
//               acertar ele de acordo com as tentativas de cada dificuldade
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 21/06/2022
Var
   chute, na, dificuldade, tent : inteiro

Inicio
   escreval("1 - F�cil")
   escreval("2 - M�dio")
   escreval("3 - Dif�cil")
   escreva("Escolha a Dificuldade: ")
   leia(dificuldade)
   escreva("Informe um Numero: ")
   tent <- 1
   escolha dificuldade
   caso 1
      na <- (randi(1000) + 1)
      leia(chute)
      enquanto ((chute <> na) e (tent <= 19)) faca
         escreva("Tente Novamente: ")
         leia(chute)
         tent <- tent + 1
      fimenquanto

   caso 2
      na <- (randi(5000) + 1)
      leia(chute)
      enquanto ((chute <> na) e (tent <= 14))faca
         escreva("Tente Novamente: ")
         leia(chute)
         tent <- tent + 1
      fimenquanto

   caso 3
      na <- (randi(10000) + 1)
      leia(chute)
      enquanto ((chute <> na) e (tent <= 11))faca
         escreva("Tente Novamente: ")
         leia(chute)
         tent <- tent + 1
      fimenquanto

   fimescolha
   se(chute = na) entao
      escreva("Parabens Voc� Acertou em Apenas",tent," Tentativas!")
   senao
      escreva("Infelizmento o N�mero era",na,", Mas N�o Desanime, Tente Novamente")
   fimse
   
Fimalgoritmo