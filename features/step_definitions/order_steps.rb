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
  @order.confirmationPage
end

Então('deve ser informado o seguinte prazo de entrega: {string}') do |deliveryTime|
  @order.assertDeliveryTime(deliveryTime)
end