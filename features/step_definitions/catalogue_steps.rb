Quando('acesso a página principal da Starbugs') do
  @home.open
end

Então('devo ser uma lista de cafés disponíveis') do
  expect(@home.all_coffees.size).to be > 0
end

Dado('que estou na página principal da Starbugs') do
  @home.open
end

Dado('que desejo comprar o seguinte produto:') do |table|
  @product = table.rows_hash
end

Quando('inicio a compra desse item') do
  @home.buy(@product[:productName])
end

Então('devo ver a página de checkout com os detalhes do produto') do
  @checkout.checkProductDetails(@product)
end

Então('o valor total do pedido deve ser {string}') do |totalPrice|
  @checkout.assertTotalPrice(totalPrice)
end

Então('devo ver uma mensagem informando que o produto está indisponível') do
  @popup.have_text('Produto indisponível')
end