algoritmo "AlgoritmoCadastroBuscaEventos"
// Função : Cadastrar novos eventos e permitir ao usuário buscar informações
//          Sobre eventos já registrados.
// Data : 24/06/2022
// Seção de Declarações 
var
evento_dados : vetor [0..15] de caractere
evento_info : vetor [0..4] de caractere
indice, qnt_evento, contador, contador_inf, evento_indice, option : inteiro
option_final : inteiro
inicio
// Seção de Comandos 

qnt_evento <- 0
option <- 0
indice <- 0
evento_indice <- 0
contador <- 0

evento_info[0] <- "Nome: "
evento_info[1] <- "Categoria: "
evento_info[2] <- "Data: "
evento_info[3] <- "Valor: "
evento_info[4] <- "Atrações: "

evento_dados[0] <- "Inexistente"
evento_dados[5] <- "Inexistente"
evento_dados[10] <- "Inexistente"

enquanto option <> 3 faca

         // Solicitando proximo passo ao usuário
         
         escreval(" ")

         escreval("Bem vindo! Qual Ferramenta Deseja Utilizar? ")
         
         escreval(" ")
         
         escreval(" 1 - Registrar Novo Evento.")
         escreval(" 2 - Buscar Evento.")
         escreval(" 3 - Finalizar Execução.")
         
         escreval(" ")
         
         escreva("Insira o número referente a ferramenta desejada: ")
         leia(option)
         escreval(" ")
         
         // Verificando se o usuário deseja interromper a execução

         se (option = 3) entao
            escreval(" ")
            escreval("Execução Interrompida Pelo Usuário!")
            interrompa
         fimse
         
         // Criando novos eventos

         se (option = 1) e (indice < 15) entao

            escreval("Insira a seguir os dados do evento: ")
            escreval(" ")
            
            escreva("Nome do Evento: ")
            leia(evento_dados[indice])
            indice <- indice + 1
   
            escreva("Categoria do Evento: ")
            leia(evento_dados[indice])
            indice <- indice + 1

            escreva("Data do Evento: ")
            leia(evento_dados[indice])
            indice <- indice + 1

            escreva("Valor do Ingresso: ")
            leia(evento_dados[indice])
            indice <- indice + 1

            escreva("Principais Atrações: ")
            leia(evento_dados[indice])
            indice <- indice + 1
            
            //Verificando qual o proximo passo do usuário
            
            escreval(" ")
            escreval("Deseja voltar as ferramentas? ? ")
            escreval("1 = Sim ")
            escreval("2 = Não (Interromper execução) ")
            leia(option_final)

            se option_final = 2 entao
               interrompa
            fimse
   
         fimse
         
         //Verificando se há espaço no vetor para registrar um novo evento
         
         se (option = 1) e (indice = 15) entao
            escreval("Não é possível registrar novos eventos! Limite Excedido!")
         fimse
         
         //Ferramenta de busca por eventos
         
         se option = 2 entao
            escreval(" ")
            
            escreval("Eventos Existentes: ")
            
            escreval("1 - ", evento_dados[0])
            escreval("2 - ", evento_dados[5])
            escreval("3 - ", evento_dados[10])
            
            escreval(" ")
            
            //Resolvendo o problema de não existirem eventos registrados
            
            se (evento_dados[0] = "Inexistente") e (evento_dados[5] = "Inexistente") e (evento_dados[10] = "Inexistente") entao
             escreval("Ainda não existem eventos! ")
             escreval("Digite 3 para finalizar a execução, ou outro valor para prosseguir! ")
             leia(option)
            senao
            escreva("Qual evento deseja acessar? ")
            leia(evento_indice)
            escreval(" ")
            fimse
            
            //Apresentando ao usuário informações acerca do evento solicitado
            
            se evento_indice = 1 entao
               contador <- 0
               contador_inf <- 0
               enquanto contador < 4 faca
               escreval(evento_info[contador_inf], evento_dados[contador])
               contador <- contador + 1
               contador_inf <- contador_inf + 1
               fimenquanto
            fimse
            
            se evento_indice = 2 entao
               contador <- 5
               contador_inf <- 0
               enquanto contador < 10 faca
               escreval(evento_info[contador_inf], evento_dados[contador])
               contador <- contador + 1
               contador_inf <- contador_inf + 1
               fimenquanto
            fimse
            
            se evento_indice = 3 entao
               contador <- 10
               contador_inf <- 0
               enquanto contador < 15 faca
               escreval(evento_info[contador_inf], evento_dados[contador])
               contador <- contador + 1
               contador_inf <- contador_inf + 1
               fimenquanto
            fimse
            
            //Solicitando confimarção de continuação
            
            escreval(" ")
            escreval("Deseja continuar ? ")
            escreval("1 = Sim ")
            escreval("2 = Não ")
            leia(option_final)
            
            se option_final = 2 entao
               interrompa
            fimse
            
         fimse

fimenquanto

fimalgoritmo
