algoritmo "AlgoritmoCadastrolLogin"
// Fun��o : Registrar cadastro de 3 usu�rios (Sem permitir a inser��o de nomes
//          j� registrados. Ap�s cadastro o algoritmo permite que seja efetuado
//          o login do usu�rio (Nesta etapa o algoritmo deve checar: Exist�ncia
//          do username; Correspond�ncia do username com a senha digitada.).
// Data : 23/06/2022
// Se��o de Declara��es

var
contador, contadorUsername, contadoruser, indicepass : inteiro
nome, senha : caractere
username, password : vetor [0..2] de caractere

inicio

   contador <- 0
   contadorUsername <- 0

   //Efetuando cadastro de 3 usu�rios

   enquanto contador <= 2 faca
      escreval("Efetuar cadastro do Usu�rio ", contador + 1)
      escreva("Nome: ")
      leia(username[contador])

      //Verificando se o nome j� existe (Indices inferiores)

      enquanto contadorUserName < contador faca
         se username[contador] = username[contadorUserName] entao
            escreval(" ")
            escreval("Nome de usu�rio j� registrado!")
            escreval("Efetuar cadastro do Usu�rio ", contador + 1)
            escreva("Insira outro nome: ")
            leia(username[contador])
            contadorUserName <- 0
         senao
            contadorUserName <- contadorUserName + 1
         fimse
      fimenquanto

      contadorUserName <- 0

      //Verificando se o nome j� existe (Indices superiores)

      enquanto (contadorUserName > contador) e (contadorUserName <= 2) faca
         se username[contador] = username[contadorUserName] entao
            escreval(" ")
            escreval("Nome de usu�rio j� registrado!")
            escreval("Efetuar cadastro do usu�rio ", contador + 1)
            escreva("Insira outro nome: ")
            leia(username[contador])
            contadorUserName <- 0
         senao
            contadorUserName <- contadorUserName + 1
         fimse
      fimenquanto

      //Cadastrando senha ap�s verificado o username)

      escreva("Senha: ")
      leia(password[contador])
      escreval(" ")

      contador <- contador + 1
   fimenquanto

   contador <- 0
   contadoruser <- 0
   indicepass <- -1

   //Etapa de Login (Ap�s cadastro)
   
   escreval("Efetuar Login do Usu�rio! ")

   //Solicitando username e verificando sua exist�ncia no vetor

   enquanto indicepass = -1 faca
      escreva("Insira o nome de usu�rio: ")
      leia(nome)

      enquanto contador < 3 faca
         se nome = username[contador] entao
            indicepass <- contador
            interrompa
         senao
            contador <- contador + 1
         fimse
      fimenquanto

      se indicepass <> -1 entao
         interrompa
      fimse

      escreval(" ")
      escreval("Usu�rio n�o encontrado!")

      contador <- 0
   fimenquanto

   //Ap�s encontrnado o usu�rio, solicita-se a senha

   escreva("Insira a senha do usu�rio: ")
   leia(senha)

   //Verificando se a senha corresponde ao username inserido

   se (senha <> password[indicepass]) ou (indicepass = -1) entao
      enquanto senha <> password[indicepass] faca

         escreval(" ")
         escreval("Senha incorreta! ")
         escreval(" ")

         indicepass <- -1
         contador <- 0

         escreval("Efetue o login novamente! ")

         //Iniciando a etapa de login novamente

         enquanto indicepass = -1 faca
            escreva("Insira o nome de usu�rio: ")
            leia(nome)

            //Verificando a exist�ncia do username no vetor

            enquanto contador < 3 faca
               se nome = username[contador] entao
                  indicepass <- contador
                  interrompa
               senao
                  contador <- contador + 1
               fimse
            fimenquanto

            se indicepass <> -1 entao
               interrompa
            fimse

            escreval(" ")
            escreval("Usu�rio n�o encontrado!")

            contador <- 0
         fimenquanto

         //Ap�s encontrado o usu�rio, solicita-se a senha

         escreva("Insira a senha do usu�rio: ")
         leia(senha)

      fimenquanto
fimse

   //Ap�s os dados serem verificados e autenticados em todas as etapas
   //O login � efetuado com sucesso!}

   se senha = password[indicepass] entao
      escreval(" ")
      escreva("Seja Bem-Vindo! Login efetuado com sucesso!")
      escreval(" ")
   fimse

fimalgoritmo
