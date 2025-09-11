class HomePage
    include Capybara::DSL

    def open
        visit 'https://starbugs-qa.vercel.app/'
    end
    
    def all_coffees
       return all('.coffee-item')
    end

    def buy(coffeeName)
        product = find('.coffee-item', text: coffeeName)
        product.find('.buy-coffee').click
    end
end