Algoritmo "Renda L�quida e Imposto de Renda"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Edson Shinki Kaneshima
// Descri��o   : Calcular a Renda L�quida e o Imposto de Renda de uma Pessoa
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 07/06/2022
Var
   nome: caractere
   dependentes: inteiro
   rendaB, rendaL: real

Inicio
   // Se��o de Comandos
   escreva("Informe seu Nome: ")
   leia(nome)
   escreva("Informe o N�mero de Dependentes: ")
   leia(dependentes)
   escreva("Informe a Renda Buta Anual: ")
   leia(rendaB)
   rendaL <- rendaB - (600 * dependentes)

   se(rendaL <= 10000) entao
      escreval("NOME: ", nome)
      escreval("Renda L�quida: R$", rendaL, "; Isento de Imposto")
   senao
      se((rendaL > 10000) e (rendaL <= 30000)) entao
         escreval("NOME: ", nome)
         escreval("Renda L�quida: R$", rendaL, "; 5% Imposto: R$", rendaL*0.05)
      senao
         se((rendaL > 30000) e (rendaL <= 60000)) entao
            escreval("NOME: ", nome)
            escreval("Renda L�quida: R$", rendaL, "; 10% Imposto: R$", rendaL*0.10)
         senao (rendaL > 60000)
            escreval("NOME: ", nome)
            escreval("Renda L�quida: R$", rendaL, "; 15% Imposto: R$", rendaL*0.15)
         fimse
      fimse
   fimse

Fimalgoritmo