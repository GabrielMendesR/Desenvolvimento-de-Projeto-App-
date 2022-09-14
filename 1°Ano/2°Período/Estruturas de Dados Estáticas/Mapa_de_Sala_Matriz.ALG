Algoritmo "Mapa_de_Sala_Matriz"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Edson Shinki Kaneshima
// Descrição   :
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 31/08/2022
Var
   sala : vetor[1..4,1..4] de caractere
   opcao, lin, col, fila, carteira : inteiro
   //_________________________________________________________________________


procedimento p_inserir
var

inicio
   para lin <- 1 ate 4 passo 1 faca
      para col <- 1 ate 4 passo 1 faca
         escreva(lin, "° Fila |", col, "° Carteira: ")
         leia(sala[lin,col])
      fimpara
   fimpara

fimprocedimento
//_________________________________________________________________________


procedimento p_mostrar_todos
var

inicio
   para lin <- 1 ate 4 passo 1 faca
      para col <- 1 ate 4 passo 1 faca
         escreval("|", sala[lin,col],"| Está na Fila :",lin," | Carteira :", col)
      fimpara
   fimpara

fimprocedimento
//_________________________________________________________________________


procedimento p_mostrar_fila(param_fila : inteiro)
var

inicio
   para col <- 1 ate 4 passo 1 faca
      escreval(sala[param_fila, col])
   fimpara

fimprocedimento
//_________________________________________________________________________


procedimento p_mostrar_carteira(param_carteira : inteiro)
var

inicio
   para lin <- 1 ate 4 passo 1 faca
      escreval(sala[lin, param_carteira])
   fimpara

fimprocedimento
//_________________________________________________________________________


procedimento p_mostrar_diagonal_p
var
   coluna: inteiro
inicio
   coluna <- 1
   para lin <- 1 ate 4 passo 1 faca
      escreval(sala[lin, coluna])
      coluna <- coluna  + 1

   fimpara



fimprocedimento
//_________________________________________________________________________

procedimento p_mostrar_diagonal_s
var
   coluna : inteiro
inicio
   coluna <- 4
   para lin <- 1 ate 4 passo 1 faca
      escreval(sala[lin, coluna])
      coluna <- coluna - 1

   fimpara

fimprocedimento
//_________________________________________________________________________

procedimento p_pesquisar_aluno(par_fila, par_cart : inteiro)
var

inicio
   escreval("Aluno: ",sala[par_fila, par_cart])


fimprocedimento
//_________________________________________________________________________

procedimento p_trocar_aluno
var

inicio




fimprocedimento
//_________________________________________________________________________

Inicio
   enquanto (opcao <> 9) faca
      escreval("1 - Inserir Alunos")
      escreval("2 - Mostrar Alunos")
      escreval("3 - Mostrar Fila")
      escreval("4 - Mostrar Carteira")
      escreval("5 - Mostrar Diagonal Principal")
      escreval("6 - Mostrar Diagonal Secundária")
      escreval("7 - Pesquisar Aluno") //mostrar carteira
      escreval("8 - Trocar Aluno de Carteira e Fila")
      escreval("9 - FIM")
      leia(opcao)
      escolha(opcao)
      caso 1
         p_inserir

      caso 2
         p_mostrar_todos

      caso 3
         escreva("Fila de 1 a 4: ")
         leia(fila)
         p_mostrar_fila(fila)

      caso 4
         escreva("Carteira de 1 a 4: ")
         leia(carteira)
         p_mostrar_carteira(carteira)

      caso 5
         p_mostrar_diagonal_p

      caso 6
         p_mostrar_diagonal_s

      caso 7
         escreval("Informe a Fila do Aluno: ")
         leia(fila)
         escreval("Informe a Carteira do Aluno: ")
         leia(carteira)
         p_pesquisar_aluno((fila), (carteira))


      caso 8
         p_trocar_aluno()


      fimescolha
   fimenquanto


Fimalgoritmo