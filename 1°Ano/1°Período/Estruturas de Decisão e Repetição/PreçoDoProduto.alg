algoritmo "Preço do Produto"
// Função : Calcular o Valor a ser Pago a Vista e Parcelado em 2x
// Autor : Gabriel Mendes Roddrigues
// Data : 05/05/2022
// Seção de Declarações 
var
produto, quantidade, total, parcelado : real

inicio
escreva("Qual o Valor do Produto:")
leia(produto)
escreva("Qual a Quantidade Vendida:")
leia(quantidade)
total <- produto * quantidade
parcelado <- (produto * quantidade) / 2
escreva("O valor a ser pago é de", total,"R$ ou", parcelado, "R$ em 2x")
fimalgoritmo
