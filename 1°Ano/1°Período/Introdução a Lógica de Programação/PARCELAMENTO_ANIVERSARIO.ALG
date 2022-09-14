   Algoritmo "Parcelamento Aniversario"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Edson Shinki Kaneshima
// Descrição   : Parcelar compras de acordo com o mês de aniversário
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 07/06/2022
Var
   nome: caractere
   mes: inteiro
   valor: real

Inicio
   // Seção de Comandos
   escreva("Informe seu Nome: ")
   leia(nome)
   escreva("Informe o Mês do seu Aniversário(Nº): ")
   leia(mes)
   escreva("Informe o valor da Compra: ")
   leia(valor)

   se(valor <= 699.00) entao
      escreval("Cliente:", nome)
      escreval("R$", valor, " Não há como Parcelar")
   senao
      escolha(mes)
      caso 1,3,5,8,10,12
         escreval("Cliente: ", nome)
         escreval("RS", valor, " ou Parcelado em 3x de R$", (valor/3))
      caso 2,4,6,7,9,11
         escreval("Cliente: ", nome)
         escreval("RS", valor, " ou Parcelado em 2x de R$", (valor/2))
      fimescolha
   fimse

Fimalgoritmo