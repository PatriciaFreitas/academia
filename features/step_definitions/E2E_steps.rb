
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
   
    sleep 7
        
    #fill_in 'street[0]', with: 'Rua Irutim'
    #fill_in 'street[1]', with: '31'
    #fill_in 'street[2]', with: 'Apto 256'
    #fill_in 'city', with: 'São Paulo'
    
    #find("WU3U008[value='12']").click
    
    #within '#date' do
    #  find("option[value='12']").click
    #end
    #select 'region_id', from: '12'
    #find('.region_id', :text => 'California')
   
    
    #fill_in 'postcode', with: '12345-6789'
   # fill_in 'telephone', with: '51510102'
    
    choose 'ko_unique_1'
    click_button 'Next'
 end
 
 Quando('finalizo a compra') do
  click_button 'Place Order'
end

Então('meu pedido é gerado') do
  page.has_title? "Success Page"
 #"Thank you for your purchase!"
end

