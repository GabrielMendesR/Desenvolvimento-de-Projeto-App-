Algoritmo "MediaAritimetica"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Edson Shinki Kaneshima 
// Descri��o   : Media Aritimetica das Provas
// Autor(a)    : Vinicius Donovan, Gabriel Mendes Rodrigues
// Data atual  : 09/05/2022
Var
// Se��o de Declara��es das vari�veis 

   prova1, prova2, somaProvas, mediaA: real


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreva("Nota da primeira prova:")
   leia(prova1)
   escreva("Nota da segunda prova:")
   leia(prova2)
   somaProvas <- prova1 + prova2
   mediaA <- somaProvas / 2
   escreva("A media aritimetica das notas �:", mediaA)

Fimalgoritmo