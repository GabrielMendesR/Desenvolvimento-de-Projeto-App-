algoritmo "Pre�o do Produto"
// Fun��o : Calcular o Valor a ser Pago a Vista e Parcelado em 2x
// Autor : Gabriel Mendes Roddrigues
// Data : 05/05/2022
// Se��o de Declara��es 
var
produto, quantidade, total, parcelado : real

inicio
escreva("Qual o Valor do Produto:")
leia(produto)
escreva("Qual a Quantidade Vendida:")
leia(quantidade)
total <- produto * quantidade
parcelado <- (produto * quantidade) / 2
escreva("O valor a ser pago � de",total,"R$ ou",parcelado, "R$ em 2x")
fimalgoritmo
