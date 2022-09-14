Algoritmo "IMC"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Edson Shinki Kaneshima
// Descrição   : Calcular usando o IMC utilizando "CASO"
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 07/06/2022
Var
   imc, peso, altura: real


Inicio
   // Seção de Comandos
   escreva("Informe o Peso(Kg): ")
   leia(peso)
   escreva("Informe a Altura(m): ")
   leia(altura)
   imc <- (peso/(altura*altura))

   escreval("Peso:", peso, "Kg ; Altura(m):", altura,"m ; IMC:", imc)
   se(imc < 18.5) entao
      escreval("Abaixo do Peso")
   senao
      se((imc >= 18.5) e (imc <= 24.9)) entao
         escreval("Peso Normal")
      senao
         se((imc > 24.9) e (imc <= 29.9)) entao
            escreval("Sobrepeso")
         senao
            escreval("Obeso")
         fimse
      fimse
   fimse

Fimalgoritmo