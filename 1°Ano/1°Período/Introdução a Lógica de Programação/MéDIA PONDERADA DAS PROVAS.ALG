Algoritmo "M�dia Ponderada das Provas"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Edson Shinki Kaneshima 
// Descri��o   : M�dia Ponderada das PRovas
// Autor(a)    : Gabriel Mendes Rodrigues, Vinicius Donovan
// Data atual  : 09/05/2022
Var
prova1, prova2, peso1, peso2, nota : Real

Inicio
Escreva("A Nota da primeira prova:")
leia(prova1)
Escreva("A Nota da segunda Prova:")
leia(prova2)
peso1 <- 0.7 * prova1
peso2 <- 0.3 * prova2
nota <- peso1 + peso2
Escreva("A nota Final �: ", nota)

Fimalgoritmo