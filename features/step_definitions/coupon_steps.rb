Dado('que inicio a compra do item:') do |table|
    @product = table.rows_hash

    @home.open
    @home.buy(@product[:productName])
end

Quando('aplico o seguinte cupom de desconto: {string}') do |couponCode|
    @checkout.setCoupon(couponCode)
end

Então('o valor total do pedido deve ser atualizado para {string}') do |finalPrice|
    @checkout.assertTotalPrice(finalPrice)
end

Então('deve ser exibida uma notificação {string}') do |message|
    @checkout.assertNotification(message)
end

Então('o valor total da compra permanece o mesmo') do 
    @checkout.assertTotalPrice(@product[:total])
end