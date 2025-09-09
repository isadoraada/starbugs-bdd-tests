require 'rspec'

class PopUp
    include Capybara::DSL
    include RSpec::Matchers

    def have_text(text)
        popup = find('.swal2-html-container')
        expect(popup.text).to eq text
    end
end