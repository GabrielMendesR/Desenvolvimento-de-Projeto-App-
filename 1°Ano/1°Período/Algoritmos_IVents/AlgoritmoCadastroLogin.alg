algoritmo "AlgoritmoCadastrolLogin"
// Função : Registrar cadastro de 3 usuários (Sem permitir a inserção de nomes
//          já registrados. Após cadastro o algoritmo permite que seja efetuado
//          o login do usuário (Nesta etapa o algoritmo deve checar: Existência
//          do username; Correspondência do username com a senha digitada.).
// Data : 23/06/2022
// Seção de Declarações

var
contador, contadorUsername, contadoruser, indicepass : inteiro
nome, senha : caractere
username, password : vetor [0..2] de caractere

inicio

   contador <- 0
   contadorUsername <- 0

   //Efetuando cadastro de 3 usuários

   enquanto contador <= 2 faca
      escreval("Efetuar cadastro do Usuário ", contador + 1)
      escreva("Nome: ")
      leia(username[contador])

      //Verificando se o nome já existe (Indices inferiores)

      enquanto contadorUserName < contador faca
         se username[contador] = username[contadorUserName] entao
            escreval(" ")
            escreval("Nome de usuário já registrado!")
            escreval("Efetuar cadastro do Usuário ", contador + 1)
            escreva("Insira outro nome: ")
            leia(username[contador])
            contadorUserName <- 0
         senao
            contadorUserName <- contadorUserName + 1
         fimse
      fimenquanto

      contadorUserName <- 0

      //Verificando se o nome já existe (Indices superiores)

      enquanto (contadorUserName > contador) e (contadorUserName <= 2) faca
         se username[contador] = username[contadorUserName] entao
            escreval(" ")
            escreval("Nome de usuário já registrado!")
            escreval("Efetuar cadastro do usuário ", contador + 1)
            escreva("Insira outro nome: ")
            leia(username[contador])
            contadorUserName <- 0
         senao
            contadorUserName <- contadorUserName + 1
         fimse
      fimenquanto

      //Cadastrando senha após verificado o username)

      escreva("Senha: ")
      leia(password[contador])
      escreval(" ")

      contador <- contador + 1
   fimenquanto

   contador <- 0
   contadoruser <- 0
   indicepass <- -1

   //Etapa de Login (Após cadastro)
   
   escreval("Efetuar Login do Usuário! ")

   //Solicitando username e verificando sua existência no vetor

   enquanto indicepass = -1 faca
      escreva("Insira o nome de usuário: ")
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
      escreval("Usuário não encontrado!")

      contador <- 0
   fimenquanto

   //Após encontrnado o usuário, solicita-se a senha

   escreva("Insira a senha do usuário: ")
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
            escreva("Insira o nome de usuário: ")
            leia(nome)

            //Verificando a existência do username no vetor

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
            escreval("Usuário não encontrado!")

            contador <- 0
         fimenquanto

         //Após encontrado o usuário, solicita-se a senha

         escreva("Insira a senha do usuário: ")
         leia(senha)

      fimenquanto
fimse

   //Após os dados serem verificados e autenticados em todas as etapas
   //O login é efetuado com sucesso!}

   se senha = password[indicepass] entao
      escreval(" ")
      escreva("Seja Bem-Vindo! Login efetuado com sucesso!")
      escreval(" ")
   fimse

fimalgoritmo
