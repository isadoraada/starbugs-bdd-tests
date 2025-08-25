Quando('acesso a página principal da Starbugs') do
  visit 'https://starbugs.vercel.app/'
end

Então('devo ser uma lista de cafés disponíveis') do
  products = all('.coffee-item')
  expect(products.size).to be > 0
end

Dado('que estou na página principal da Starbugs') do
  visit 'https://starbugs.vercel.app/'
end

Dado('que desejo comprar o café {string}') do |productName|
  @productName = productName
end

Dado('que esse produto custa {string}') do |productPrice|
  @productPrice = productPrice
end

Dado('que o custo de entrega desse item é de {string}') do |deliveryPrice|
  @deliveryPrice = deliveryPrice
end

Quando('inicio a compra desse item') do
  product = find('.coffee-item', text: @productName)
  product.find('.buy-coffee').click
end

Então('devo ver a página de checkout com os detalhes do produto') do
  productTitle = find('.item-details h1')
  expect(productTitle.text).to eq @productName

  subPrice = find('.subtotal .subprice')
  expect(subPrice.text).to eq @productPrice

  delivery = find('.delivery-price')
  expect(delivery.text).to eq @deliveryPrice
end

Então('o valor total do pedido deve ser {string}') do |totalPrice|
  price = find('.total-price')
  expect(price.text).to eq totalPrice
end

Dado('que esse produto não está disponível') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('tento iniciar a compra desse item') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('devo ver uma mensagem informando que o produto está indisponível') do
  pending # Write code here that turns the phrase above into concrete actions
end