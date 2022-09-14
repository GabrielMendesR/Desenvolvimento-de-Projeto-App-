algoritmo "Domingos"
// Função : Domingos no Primeiro dia do Mês
// Autor : Gabriel Mendes Rodrigues
// Data : 21/06/2022
// Seção de Declarações
var
dia, mes, ano, dnm, domingo : inteiro
inicio
ano <- 1900
dia <- 7
mes <- 1

funcao diasNoMes(a, m : inteiro) : inteiro

inicio
se((m = 4) ou (m = 6) ou (m = 9) ou (m = 11)) entao
   dnm <- 30
   se((m = 2) e ((a mod 400 = 0) ou (a mod 100 <> 0)))entao
      dnm <- 29
   fimse
senao
   dnm <- 31
fimse

retorne dnm
fimfuncao

enquanto (ano <= 2000) e (mes <= 12) e (dia <= 31) faca
   dnm <- diasNoMes(ano, mes)
   se((dia = 1) e (ano >= 1901)) entao
      domingo <- domingo + 1
   fimse
   dia <- dia + 7
   se(dia > dnm) entao
      dia <- dia - dnm
      mes <- mes + 1
   fimse
   se(mes = 13) entao
      mes <- 1
      ano <- ano +1
   fimse

fimenquanto
escreva(domingo)

fimalgoritmo
