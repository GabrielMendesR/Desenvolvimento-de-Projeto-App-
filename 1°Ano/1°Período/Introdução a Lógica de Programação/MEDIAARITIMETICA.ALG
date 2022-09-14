Algoritmo "MediaAritimetica"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Edson Shinki Kaneshima 
// Descrição   : Media Aritimetica das Provas
// Autor(a)    : Vinicius Donovan, Gabriel Mendes Rodrigues
// Data atual  : 09/05/2022
Var
// Seção de Declarações das variáveis 

   prova1, prova2, somaProvas, mediaA: real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreva("Nota da primeira prova:")
   leia(prova1)
   escreva("Nota da segunda prova:")
   leia(prova2)
   somaProvas <- prova1 + prova2
   mediaA <- somaProvas / 2
   escreva("A media aritimetica das notas é:", mediaA)

Fimalgoritmo