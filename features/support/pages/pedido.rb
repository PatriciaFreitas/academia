class Pedido
  include RSpec::Matchers
  include Capybara::DSL 

  def initialize 
    @titulo_pagina = "Success Page"  
    @mensagem_sucesso = 'Thank you for your purchase'
  end  
  
  def page_message
    page.has_title? @titulo_pagina
    assert_text(@mensagem_sucesso)
  end
end


