Algoritmo "ChuteNumero"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Edson Shinki Kaneshima
// Descrição   : Algoritimo que escolhe um numero aleatorio e você tem que
//               acertar ele de acordo com as tentativas de cada dificuldade
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 21/06/2022
Var
   chute, na, dificuldade, tent : inteiro

Inicio
   escreval("1 - Fácil")
   escreval("2 - Médio")
   escreval("3 - Difícil")
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
      escreva("Parabens Você Acertou em Apenas",tent," Tentativas!")
   senao
      escreva("Infelizmento o Número era",na,", Mas Não Desanime, Tente Novamente")
   fimse
   
Fimalgoritmo