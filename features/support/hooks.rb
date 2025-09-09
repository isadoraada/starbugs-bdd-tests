require_relative '../support/pages/home.rb'
require_relative '../support/pages/checkout.rb'
require_relative '../support/pages/components.rb'

Before do
    @home = HomePage.new
    @checkout = CheckoutPage.new
    @popup = PopUp.new
end