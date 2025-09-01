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

Dado('que desejo comprar o seguinte produto:') do |table|
  @product = table.rows_hash
end

Quando('inicio a compra desse item') do
  product = find('.coffee-item', text: @product[:productName])
  product.find('.buy-coffee').click
end

Então('devo ver a página de checkout com os detalhes do produto') do
  productTitle = find('.item-details h1')
  expect(productTitle.text).to eq @product[:productName]

  subPrice = find('.subtotal .sub-price')
  expect(subPrice.text).to eq @product[:price]

  delivery = find('.delivery-price')
  expect(delivery.text).to eq @product[:delivery]
end

Então('o valor total do pedido deve ser {string}') do |totalPrice|
  price = find('.total-price')
  expect(price.text).to eq totalPrice
end

Então('devo ver uma mensagem informando que o produto está indisponível') do
  popup = find('.swal2-html-container')
  expect(popup.text).to eq 'Produto indisponível'
end