
Dado('que faço login no Luma') do
  @login.acess_login_page
end     
  
Dado('busco por um produto') do
  @busca.search_product
end  
  
Quando('adiciono ao carrinho') do
  @carrinho.add_to_cart
end
 
Quando('finalizo a compra') do
  @pagamento.checkout
end

Então('meu pedido é gerado') do
  @pedido.page_message
end



