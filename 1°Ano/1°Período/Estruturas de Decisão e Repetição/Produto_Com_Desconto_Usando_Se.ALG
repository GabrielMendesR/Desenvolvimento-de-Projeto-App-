Algoritmo "Produto Com Desconto"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Edson Shinki Kaneshima
// Descri��o   : Calcular o total do pre�o da compra de dois produtor e
//               caso haja desconto informa-lo e o pre�o total com desconto
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 24/05/2022
Var
   // Se��o de Declara��es das vari�veis
   produto1, produto2, total, desconto: real
   nome1, nome2: caractere
Inicio

   escreva("Informe o nome do Primeiro Produto: ")
   leia(nome1)
   escreva("Informe o Pre�o do Primeiro Produto: ")
   leia(produto1)

   escreva("Informe o nome do Segundo Produto: ")
   leia(nome2)
   escreva("Informe o Pre�o do Primeiro Produto: ")
   leia(produto2)

   total <- produto1 + produto2
   desconto <- total * 0.2

   se(total >= 759.8) entao
      escreva(nome1, " e ", nome2, " com desconto de R$", desconto, " da um total de:", (total - desconto))
   senao
      escreva(nome1, " e ", nome2, " sem desconto da um total de: R$", total)
   fimse

Fimalgoritmo