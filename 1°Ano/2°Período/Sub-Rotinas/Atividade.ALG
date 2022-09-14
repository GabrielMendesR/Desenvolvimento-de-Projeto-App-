Algoritmo "Atividade"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 11/08/2022
Var
   // Seção de Declarações das variáveis
   paramVet : caractere
   opcao : inteiro
   A : vetor[1..6] de inteiro
   B : vetor[1..8] de inteiro
   C : vetor[1..8] de inteiro

procedimento p_inserir(paramVet : caractere)
var
   f : inteiro
inicio

   leia(paramVet)
   se((paramVet = "A") ou (paramVet = "a")) entao
      para f <- 1 ate 6 faca
         escreval("informe Um Valor")
         leia(A[f])
      fimpara
   senao
      se((paramVet = "B") ou (paramVet = "b")) entao
         para f <- 1 ate 8 faca
            escreval("informe Um Valor")
            leia(B[f])
         fimpara
      senao
         escreval("Parametro Inválido")
      fimse
   fimse

fimprocedimento

procedimento p_gerar_C
var
   i, c, d, g, z, f : inteiro
inicio
   d <- 1
   para c <- 1 ate 8 passo 1 faca
      i <- 1
      enquanto ((i <= 6) e (i >= 1)) faca
         se(A[i] = B[c]) entao
            C[d] <- A[i]
            d <- d + 1
            i <- 6
         fimse
         i <- i + 1
      fimenquanto
   fimpara
   g <- 1
   enquanto g <= 8 faca
      z <- (g+1)
      enquanto z <= 8 faca
         se(C[g] = C[z]) entao
            C[g] <- 0
            z <- 8
         fimse
         z <- z + 1
      fimenquanto
      g <- g + 1
   fimenquanto



fimprocedimento

Inicio

   enquanto opcao <> 9 faca
      escreval("1 - Leia O Vetor(A/B)")
      escreval("2 - Gere O Vetor C")
      escreval("9 - Finalizar Programa")
      leia(opcao)

      se(opcao = 1) entao
         p_inserir(paramVet)
      senao
         se(opcao = 2) entao
            p_gerar_C
         senao
            se(opcao = 9) entao
               escreval("Programa Finalizado!")
            senao
               escreval("Valor Invalido")
            fimse
         fimse
      fimse
   fimenquanto


Fimalgoritmo