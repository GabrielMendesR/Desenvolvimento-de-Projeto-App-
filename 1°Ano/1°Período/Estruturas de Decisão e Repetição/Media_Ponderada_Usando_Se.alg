algoritmo "M�dia Ponderada Usando Se"
// Fun��o : Calcular a m�dia ponderada entre 3 notas e informar o nome do aluno,
//          disciplina, o total da nota e se o aluno foi aprovado e reprovado
// Autor : Gabriel Mendes Rodrigues
// Data : 27/05/2022
// Se��o de Declara��es
var
nome, disciplina : caracter
nota1, nota2, nota3, peso1, peso2, peso3, total : real
inicio
escreva("Escreva seu Nome: ")
leia(nome)
escreva("Informe a Disciplina: ")
leia(disciplina)
escreva("Informe a nota do primeiro exame: ")
leia(nota1)
escreva("Informe a nota do segundo exame: ")
leia(nota2)
escreva("Informe a nota do terceiro exame: ")
leia(nota3)
peso1 <- nota1 * 1
peso2 <- nota2 * 3
peso3 <- nota3 * 2
total <- (peso1 + peso2 + peso3) / 6

se ( total >= 70) entao
   escreva(nome, " voc� foi aprovado em ", disciplina, " com m�dia ", total)
senao
   escreva(nome, " voc� foi reprovado em ", disciplina, " com m�dia ", total )
fimse
fimalgoritmo
