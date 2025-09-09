require 'rspec'

class CheckoutPage
    include Capybara::DSL
    include RSpec::Matchers

    def checkProductDetails(product)
        productTitle = find('.item-details h1')
        expect(productTitle.text).to eq product[:productName]

        subPrice = find('.sub-price')
        expect(subPrice.text).to eq product[:price]

        delivery = find('.delivery-price')
        expect(delivery.text).to eq product[:delivery]
    end

    def assertTotalPrice(totalPrice)
        price = find('.total-price')
        expect(price.text).to eq totalPrice
    end

    def findZipCode(zipcode)
        find('input[name=cep]').set(zipcode)
        click_on 'Buscar CEP'
    end

    def fillAddress(address)
        find('input[name=number]').set(address[:number])
        find('input[name=complement]').set(address[:complement])
    end

    def choicePayment(paymentType)
        find('label div', text: paymentType.upcase).click 
    end

    def confirmOrder
        click_on 'Confirmar pedido'
    end
end