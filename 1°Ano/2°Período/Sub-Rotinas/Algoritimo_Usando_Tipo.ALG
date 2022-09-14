Algoritmo "Algoritimo Usando Tipo"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Edson Shinki Kaneshima
// Descrição   : Cadastro de nº de Matricula e nome de Aluno
// Autor(a)    : Gabriel Mendes Rodrigues
// Data atual  : 17/08/2022
tipo
   aluno = registro
      matricula, idade : inteiro
      nome, cursoA : caractere

   fimregistro

   curso = registro
      cursoC : caractere
      cargaHoraria : inteiro

   fimregistro


Var
   vetAluno : vetor[0..9] de aluno
   vetCurso: vetor[0..4] de curso
   existe_curso : logico
   indice, matricula, opcao, idade, limite, cargaHoraria : inteiro
   nome, curso,cursoA, cursoC, pesqCurso : caractere


procedimento p_insCurso(par_cursoC : caractere ; par_cargaHoraria: inteiro)
var
   i, c : inteiro
   x, f : logico
inicio
   i <- 0
   enquanto i <= 4 faca
      c <- 0
      escreva(i+1,"° Curso: ")
      leia(par_cursoC)
      x <- falso

      enquanto c < i faca
         se(vetCurso.cursoC[c] = par_cursoC) entao
            escreval("Curso Cadastrado Repetido!")
            x <- verdadeiro
            interrompa
         fimse
         c <- c + 1
      fimenquanto

      se(x = falso) entao
         vetCurso.cursoC[i] <- par_cursoC
         f <- falso
         enquanto f = falso faca
            escreva("Carga Horária(h): ")
            leia(par_cargaHoraria)
            se(par_cargaHoraria <= 2200) entao
               f <- verdadeiro
               vetCurso.cargaHoraria[i] <- par_cargaHoraria
            senao
               escreval("Carga Horária Inválida!")
            fimse
         fimenquanto
         i <- i + 1
      fimse

   fimenquanto


fimprocedimento


procedimento p_inserir(par_matricula, par_idade : inteiro ;  par_nome, par_curso : caractere)
var
   i, c : inteiro
   x, f : logico
inicio
   vetAluno.matricula[indice] <- par_matricula

   f <- falso

   enquanto c < indice faca
      se(vetAluno.matricula[c] = vetAluno.matricula[indice]) entao
         escreval("Matrícula Cadastrada Repetida, Informe Outro Valor!")
         f <- verdadeiro
         interrompa
      fimse
      c <- c + 1
   fimenquanto

   se(f = falso) entao
      vetAluno.nome[indice] <- par_nome
      vetAluno.idade[indice] <- par_idade
      vetAluno.cursoA[indice] <- par_curso
      para i <- 0 ate 4 faca
         x <- falso
         se(vetAluno.cursoA[indice] = vetCurso.cursoC[i]) entao
            vetAluno.cursoA[indice] <- par_curso
            x <- verdadeiro
            existe_curso <- verdadeiro
            indice <- indice + 1
            limite <- limite + 1
            interrompa
         fimse
      fimpara
      se(x = falso) entao
         escreval("Curso Não Existente!")
         existe_curso <- falso
      fimse
      escreval("")
   fimse

fimprocedimento


procedimento p_mostrarAlunos
var
   i : inteiro

inicio

   para i <- 0 ate 9 faca
      escreval("Nome: ", vetAluno.nome[i])
      escreval("Matricula:", vetAluno.matricula[i])
      escreval("Idade:", vetAluno.idade[i])
      escreval("Curso: ", vetAluno.cursoA[i])
      escreval("")

   fimpara

fimprocedimento


procedimento p_pesquisa_mat(par_busca : inteiro)
var
   i : inteiro
   achou : logico

inicio
   achou <- falso
   para i <- 0 ate 9 passo 1 faca
      se(par_busca = vetAluno.matricula[i]) entao
         escreval("Matricula:", vetAluno.matricula[i])
         escreval("Nome: ", vetAluno.nome[i])
         escreval("Idade:", vetAluno.idade[i])
         escreval("Curso: ", vetAluno.cursoA[i])
         achou <- verdadeiro
         interrompa
      fimse
   fimpara
   se(achou = falso) entao
      escreval("Matricula Não Existente!")
   fimse
   escreval("")

fimprocedimento


procedimento p_pesquisa_nome(par_busca : caractere)
var
   i : inteiro
   achou : logico

inicio
   achou <- falso
   para i <- 0 ate 9 passo 1 faca
      se(par_busca = vetAluno.nome[i]) entao
         escreval("Matricula:", vetAluno.matricula[i])
         escreval("Nome: ", vetAluno.nome[i])
         escreval("Idade:", vetAluno.idade[i])
         escreval("Curso: ", vetAluno.cursoA[i])
         escreval("")
         achou <- verdadeiro
      fimse
   fimpara
   se(achou = falso) entao
      escreval("Nome Não Existente!")
   fimse
   escreval("")

fimprocedimento

procedimento p_pesquisa_curso(par_busca : caractere)

var
   i : inteiro
   achou : logico
inicio
   achou <- falso
   para i <- 0 ate 9 passo 1 faca
      se(par_busca = vetAluno.cursoA[i]) entao
         escreval("Matricula:", vetAluno.matricula[i])
         escreval("Nome: ", vetAluno.nome[i])
         escreval("Idade:", vetAluno.idade[i])
         escreval("Curso: ", vetAluno.cursoA[i])
         escreval("")
         achou <- verdadeiro
      fimse
   fimpara
   se(achou = falso) entao
      escreval("Curso Não Existente ou Não há Alunos Cadastrados Nele!")
   fimse
   escreval("")

fimprocedimento


funcao ex_curso : logico
var
   i : inteiro
   pesq_curso : caractere
   x : logico
inicio
   x <- falso
   escreva("Pesquisar Curso: ")
   leia(pesq_curso)
   para i <- 0 ate 4 faca
      se(pesq_curso = vetCurso.cursoC[i]) entao
         x <- verdadeiro
         interrompa
      fimse
   fimpara

   escreva("Encontra-se Curso:")

   retorne x
fimfuncao


Inicio
   indice <- 0
   enquanto (opcao <> 9) faca

      escreval("1 - Cadastrar Cursos")
      escreval("2 - Cadastrar Aluno")
      escreval("3 - Mostrar Alunos")
      escreval("4 - Pesquisar Aluno por Matricula")
      escreval("5 - Pesquisar Aluno por Nome")
      escreval("6 - Pesquisar Aluno por Curso")
      escreval("7 - Pesquisar Curso")
      escreval("9 - Finalizar Programa")
      leia(Opcao)
      escolha(opcao)

      caso 1
         escreval("Informe os Cursos a Serem Cadastrados")
         p_insCurso(cursoC, cargaHoraria)

      caso 2
         existe_curso <- verdadeiro
         se(limite <= 9) entao
            escreva("Matricula: ")
            leia(matricula)
            escreva("Nome: ")
            leia(nome)
            escreva("Idade: ")
            leia(idade)
            repita
               escreva("Curso: ")
               leia(cursoA)
               p_inserir(matricula, idade, nome, cursoA)
            ate(existe_curso = verdadeiro)
         senao
            escreval("Limite de Alunos Cadastrados Alcançado!")
         fimse

      caso 3
         p_mostrarAlunos

      caso 4
         escreva("Matrícula de Pesquisa: ")
         leia(matricula)
         p_pesquisa_mat(matricula)

      caso 5
         escreva("Nome de Pesquisa: ")
         leia(nome)
         p_pesquisa_nome(nome)

      caso 6
         escreva("Curso de Pesquisa: ")
         leia(curso)
         p_pesquisa_curso(curso)

      caso 7
         escreval(ex_curso)
         escreval("")

      caso 9
         escreval("Programa Finalizado!")
      fimescolha
   fimenquanto


Fimalgoritmo