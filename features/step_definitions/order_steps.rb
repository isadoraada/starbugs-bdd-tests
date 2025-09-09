Dado('que iniciei a compra do item {string}') do |productName|
  @home.buy(productName)
end

Quando('faço a busca do seguinte CEP: {string}') do |zipcode|
    @checkout.findZipCode(zipcode)
end

Quando('informo os demais dados do endereço:') do |table|
    @checkout.fillAddress(table.rows_hash)
end

Quando('escolho a forma de pagamento {string}') do |paymentType|
    @checkout.choicePayment(paymentType)
end

Quando('por fim finalizo a compra deste pedido') do
   @checkout.confirmOrder
end

Então('sou redirecionado para a página de confirmação do pedido') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('deve ser informado um prazo de entrega entre {int} e {int} minutos') do |int, int2|
# Então('deve ser informado um prazo de entrega entre {int} e {float} minutos') do |int, float|
# Então('deve ser informado um prazo de entrega entre {float} e {int} minutos') do |float, int|
# Então('deve ser informado um prazo de entrega entre {float} e {float} minutos') do |float, float2|
  pending # Write code here that turns the phrase above into concrete actions
end