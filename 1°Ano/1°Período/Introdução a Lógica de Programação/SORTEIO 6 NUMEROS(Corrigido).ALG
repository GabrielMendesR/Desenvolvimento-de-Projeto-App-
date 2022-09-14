Algoritmo "Sorteio 6 Números"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Edson Shinki Kaneshima
// Descrição   : Sortear 6 numeros e realizar quantas vezes quiser
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 13/06/2022
Var
   n, par, impar, s1, s2, s3, s4, s5, s6 : inteiro
   resposta : caractere

Inicio
   // Seção de Comandos,
   resposta <- "s"
   n <- 0
   enquanto (resposta = "s") ou (resposta = "S") faca
      repita
         s1 <- randi(60) + 1
         s2 <- randi(60) + 1
         s3 <- randi(60) + 1
         s4 <- randi(60) + 1
         s5 <- randi(60) + 1
         s6 <- randi(60) + 1
      ate((s1<>s2) e (s1<>s3) e (s1<>s4) e (s1<>s5) e (s1<>s6) e (s2<>s3) e (s2<>s4) e (s2<>s5) e (s2<>s6) e (s3<>s4) e (s3<>s5) e (s3<>s6) e (s4<>s5) e (s4<>s6) e (s5<>s6))
      escreva(s1,"",s2,"",s3,"",s4,"",s5,"",s6,"")
      se ((s1 mod 2) = 0) entao
         par <- par + 1
      senao
         impar <- impar + 1
      fimse
      se ((s2 mod 2) = 0) entao
         par <- par + 1
      senao
         impar <- impar + 1
      fimse
      se ((s3 mod 2) = 0) entao
         par <- par + 1
      senao
         impar <- impar + 1
      fimse
      se ((s4 mod 2) = 0) entao
         par <- par + 1
      senao
         impar <- impar + 1
      fimse
      se ((s5 mod 2) = 0) entao
         par <- par + 1
      senao
         impar <- impar + 1
      fimse
      se ((s6 mod 2) = 0) entao
         par <- par + 1
      senao
         impar <- impar + 1
      fimse

      escreval
      escreva("Gerar mais uma Sequência?<s/n>")
      leia(resposta)
      n <- n + 1
   fimenquanto
   escreval("Finalizado com", n, " Sequências geradas")
   escreva( par, " pares e", impar, " ímpares.")


Fimalgoritmo