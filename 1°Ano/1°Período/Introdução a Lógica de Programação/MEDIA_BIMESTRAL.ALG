Algoritmo "M�dia Bimestral"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Edson Shinki Kaneshima
// Descri��o   : Algoritmo deve ler a m�dia bimestral de um aluno e
//               mostrar a classifica��o qualitativa desta m�dia
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 30/05/2022
Var
   // Se��o de Declara��es das vari�veis
   media: real
Inicio
   // Se��o de Comandos
   escreva("Informe a m�dia desse Bimestre: ")
   leia(media)
   se(media < 0) entao
      escreva("Inv�lido")
   senao
      se(media <= 2) entao
         escreva("P�ssimo")
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
                           escreva("Inv�lido")
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse

Fimalgoritmo