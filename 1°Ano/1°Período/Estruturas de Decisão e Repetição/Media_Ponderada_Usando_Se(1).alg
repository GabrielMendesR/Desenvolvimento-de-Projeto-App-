algoritmo "Média Ponderada Usando Se"
// Função : Calcular a média ponderada entre 3 notas e informar o nome do aluno,
//          disciplina, o total da nota e se o aluno foi aprovado e reprovado
// Autor : Gabriel Mendes Rodrigues
// Data : 27/05/2022
// Seção de Declarações 
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
    escreva(nome, " você foi aprovado em ", disciplina, " com média ", total)
senao
    escreva(nome, " você foi reprovado em ", disciplina, " com média ", total )
fimse
fimalgoritmo
