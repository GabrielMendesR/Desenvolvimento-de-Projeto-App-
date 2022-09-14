Algoritmo "Sorteio 6 Números"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Edson Shinki Kaneshima
// Descrição   : Sortear 6 numeros e realizar quantas vezes quiser
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 13/06/2022
Var
   sorteio, contador, n, par, impar : inteiro
   resposta :caractere

Inicio
   // Seção de Comandos,
   resposta <- "s"
   n <- 0
   enquanto resposta = "s" faca
      contador <- 0
      para contador <- 1 ate 6 passo 1 faca
         sorteio <- randi(60) + 1
         escreva(sorteio)
         se ((sorteio mod 2) = 0) entao
            par <- par + 1
         senao
            impar <- impar + 1
         fimse
      fimpara
      escreval
      escreva("Gerar mais uma Sequência?<s/n>")
      leia(resposta)
      n <- n + 1
   fimenquanto
   escreval("Finalizado com", n, " Sequências geradas")
   escreva( par, " pares e", impar, " ímpares.")


Fimalgoritmo