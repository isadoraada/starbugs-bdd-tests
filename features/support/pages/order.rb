require 'rspec'

class OrderPage
    include Capybara::DSL
    include RSpec::Matchers

    def confirmationPage
        expect(find('h1').text).to eq 'Uhull! Pedido confirmado'
        expect(find('p[color=subtitle]').text).to eq 'Agora é só aguardar que logo o café chegará até você'
    end

    def assertDeliveryTime(target)
        deliveryTime = find('p', text: 'Previsão de entrega')
        expect(deliveryTime.find('strong').text).to eq target
    end
end