
Dado('que faço login no Luma') do
   visit "/"
   expect(page.title).to eql "Home Page"   
   click_link 'Sign In'
   fill_in 'login[username]', with: 'roni_cost@example.com'
   fill_in 'login[password]', with: 'roni_cost3@example.com'
   click_button 'send'
end     
  sleep 3 

Dado('busco por um produto') do
    fill_in 'search', with: 'Zing Jump Rope'
    click_on 'Search'
    #expect(page).to have_content('Zing Jump Rope')
end  
  
Quando('adiciono ao carrinho') do
    within(".products.list.items.product-items") do
    find(".item.product.product-item").click
end
    
    click_button 'Add to Cart' 
    
    within(".action.showcart") do
    find(".counter.qty").click
  end

    click_button 'Proceed to Checkout'
   
    sleep 5
        
    fill_in 'street[0]', with: 'Rua Irutim'
    fill_in 'street[1]', with: '31'
    fill_in 'street[2]', with: 'Apto 256'
    fill_in 'city', with: 'São Paulo'
    
    drop = find(".select[name='region_id']")
    drop.find('option', text: 'California').select_option
        
    fill_in 'postcode', with: '12345-6789'
    fill_in 'telephone', with: '51510102'
    
    find('input[value=flatrate_flatrate]').click 
    click_button 'Next'
 end
 
 Quando('finalizo a compra') do
  sleep 3
  click_button 'Place Order'
  end

Então('meu pedido é gerado') do
  page.has_title? "Success Page"
  
end

