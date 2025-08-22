Quando('acesso a página principal da Starbugs') do
  visit 'https://starbugs.vercel.app/'
end

Então('devo ser uma lista de cafés disponíveis') do
  products = all('.coffee-item')
  expect(products.size).to be > 0
end