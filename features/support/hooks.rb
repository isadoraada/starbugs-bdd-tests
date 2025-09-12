require_relative '../support/pages/home.rb'
require_relative '../support/pages/checkout.rb'
require_relative '../support/pages/components.rb'

Before do
    @home = HomePage.new
    @checkout = CheckoutPage.new
    @popup = PopUp.new
    @order = OrderPage.new
end

After do |scenario|
    screenshots = page.save_screenshot("docs/screenshots/#{scenario.__id__}.png")
end