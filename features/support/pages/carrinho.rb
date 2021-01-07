class Carrinho 
  include RSpec::Matchers
  include Capybara::DSL

  def initialize 
    @btn_add_cart = 'Add to Cart'
    @link_carrinho = 'shopping cart'
    @prosseguir_checkout_txt = 'Proceed to Checkout'
    @btn_checkout = 'Proceed to Checkout'
    @input_rua0 = 'street[0]'
    @input_rua1 = 'street[1]'
    @input_rua2 = 'street[2]'
    @rua0 = 'Rua Irutim, 31'
    @rua1 = 'Apto 256'
    @rua2 = 'Guarapiranga'
    @input_cidade = 'city'
    @cidade = 'São Paulo'
    @encontrar_opcao_estado = ".select[name='region_id']"
    @selecionar_estado = 'option'
    @estado = 'California'
    @input_caixa_postal = 'postcode'
    @caixa_postal = '12345-6789'
    @input_telefone = 'telephone'
    @telefone = '51510102'
    @selecionar_frete = 'input[value=flatrate_flatrate]'
    @btn_prosseguir_pagamento = 'Next'
  end  

  def add_to_cart 
   click_button @btn_add_cart 
   click_link(@link_carrinho)
   #sleep 5 
   assert_text(@prosseguir_checkout_txt)
   click_button @btn_checkout
   shipping
  end

  def shipping
   fill_in @input_rua0, with: @rua0
   fill_in @input_rua1, with: @rua1
   fill_in @input_rua2, with: @rua2
   fill_in @input_cidade, with: @cidade
   drop = find(@encontrar_opcao_estado)
   drop.find(@selecionar_estado, text: @estado).select_option
   fill_in @input_caixa_postal, with: @caixa_postal
   fill_in @input_telefone, with: @telefone
   find(@selecionar_frete).click 
   click_button @btn_prosseguir_pagamento
  end  
end  