class Pagamento  
  include RSpec::Matchers
  include Capybara::DSL
    
  def initialize
    @txt_place_order = 'Place Order'
    @btn_place_order = 'Place Order' 
  end

  def checkout
    assert_text(@txt_place_order)
    click_button @btn_place_order     
  end  
end   