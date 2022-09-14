Algoritmo "Média Bimestral"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Edson Shinki Kaneshima
// Descrição   : Algoritmo deve ler a média bimestral de um aluno e
//               mostrar a classificação qualitativa desta média
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 30/05/2022
Var
   // Seção de Declarações das variáveis
   media: real
Inicio
   // Seção de Comandos
   escreva("Informe a média desse Bimestre: ")
   leia(media)
   se(media < 0) entao
      escreva("Inválido")
   senao
      se(media <= 2) entao
         escreva("Péssimo")
      senao
         se(media <= 4) entao
            escreva("Mau")
         senao
            se(media <= 6) entao
               escreva("Insulficiente")
            senao
               se(media <= 7) entao
                  escreva("Sulficiente")
               senao
                  se(media <= 8.5) entao
                     escreva("Bom")
                  senao
                     se(media <= 10) entao
                        escreva("Excelente")
                     senao
                        se(media > 10) entao
                           escreva("Inválido")
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse

Fimalgoritmo