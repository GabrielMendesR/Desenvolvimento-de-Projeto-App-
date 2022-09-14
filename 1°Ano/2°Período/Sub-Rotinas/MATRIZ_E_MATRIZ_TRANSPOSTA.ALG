Algoritmo "Matriz_e_Matriz_Transposta"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Edson Shinki Kaneshima
// Descrição   :
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 02/09/2022
Var
   mat : vetor[1..3,1..2] de inteiro
   transposta : vetor[1..2,1..3] de inteiro
   opcao ,lin, col, total : inteiro

procedimento gerar_matriz_a
var

inicio
   escreval("[Elemento] = [N° INTEIRO]")
   para lin <- 1 ate 3 faca
      para col <- 1 ate 2 faca
         escreval("Informe o elemento da", lin,"° Linha ",col,"° Coluna")
         leia(mat[lin, col])
      fimpara
   fimpara

fimprocedimento

procedimento mostrar_matriz_a
var

inicio
   para lin <- 1 ate 3 faca
      para col <- 1 ate 2 faca
         escreval("|",mat[lin,col], " |", " Linha:", lin, " Coluna:", col)
      fimpara
   fimpara

fimprocedimento

procedimento gerar_transposta_a
var

inicio
   para lin <- 1 ate 3 faca
      para col <- 1 ate 2 faca
         transposta[col,lin] <- mat[lin,col]
      fimpara
   fimpara

fimprocedimento

procedimento mostrar_transposta_a
var

inicio
   para lin <- 1 ate 2 faca
      para col <- 1 ate 3 faca
         escreval("|",transposta[lin,col], " |", " Linha:", lin, " Coluna:", col)
      fimpara
   fimpara

fimprocedimento

procedimento media_a
var

inicio
   para lin <- 1 ate 3 faca
      para col <- 1 ate 2 faca
         total <- total + mat[lin, col]
      fimpara
   fimpara

   escreval("Média da Matriz A:", total)

fimprocedimento



Inicio
   enquanto (opcao <> 9) faca
      escreval("1 - Gerar Matriz A")
      escreval("2 - Exibir Matriz A")
      escreval("3 - Gerar Matriz Transposta de A")
      escreval("4 - Mostrar Transposta de A")
      escreval("5 - Mostrar Média da Matriz A")
      escreval("9 - Finalizar")
      leia(opcao)
      escolha(opcao)

      caso 1
         gerar_matriz_a
      caso 2
         mostrar_matriz_a
      caso 3
         gerar_transposta_a
      caso 4
         mostrar_transposta_a
      caso 5
         media_a
      caso 9
         escreval("Programa Finalizado com Sucesso!")

      fimescolha
   fimenquanto


Fimalgoritmo