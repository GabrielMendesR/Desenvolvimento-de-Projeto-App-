algoritmo "idade"
// Função : Manipular idade dos alunos
// Autor : Edson Shinki Kaneshima
// Data : 27/07/2022
// Seção de Declarações 
var
  idade : vetor[0..5] de inteiro
  opcao, i, maior, novaIdade : inteiro
  
  funcao f_media : real
  var
    media : real //variavel local
    soma : inteiro
  inicio
   para i <- 0 ate 5 passo 1 faca
     soma <- soma + idade[i]
   fimpara
   media <- soma / 6
   retorne media

  fimfuncao
  
  procedimento p_altera(indice, novaIdade : inteiro)
  var
  
  inicio
    idade[indice] <- novaIdade
  fimprocedimento

//crie uma função para retornar a menor idade

//crie um procedimento para mostrar todas as idades

//altere o menu e faça a chamada da função e procedimento

  
inicio
// Seção de Comandos 
  enquanto (opcao <> 9) faca
    escreval("1-Incluir idades")
    escreval("2-Mostrar a maior idade")
    escreval("3-Mostrar a média das idades")
    escreval("4-Alterar idade")
    escreval("9-Fim")
    leia(opcao)
    escolha(opcao)
      caso 1
        escreval("Informe as idades:")
        para i <- 0 ate 5 passo 1 faca
          leia(idade[i])
        fimpara
      caso 2
        para i <- 0 ate 5 passo 1 faca
          se (i = 0) entao
             maior <- idade[0]
          senao
             se (idade[i] > maior) entao
                maior <- idade[i]
             fimse
          fimse
        fimpara
        escreval("A maior idade é:", maior)
      caso 3
        //chamar a função f_media
        escreval("Media:", f_media)
      caso 4
        escreval("Indice:")
        leia(i)
        escreval("Nova idade:")
        leia(novaIdade)
        //chamar procedimento
        p_altera(i,novaIdade)
    fimescolha
  fimenquanto
fimalgoritmo
