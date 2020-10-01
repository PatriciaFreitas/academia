
Dado('que acesso o Luma') do                                        
  visit "/"
  expect(page.title).to eql "Home Page"   
end     
  
Dado('escolho a opção criar conta') do                                     
  click_link 'Create an Account'
  expect(page.title).to eql "Create New Customer Account"   
end                                                                             
                                                                                  
Quando('preencho o formulário corretamente') do                                 
  fill_in 'firstname', with: 'Patricia'
  fill_in 'lastname', with: 'Souza'
  check 'Sign Up for Newsletter'
  fill_in 'email_address', with: "#{Time.now.strftime('%b%d')}.#{Time.now.strftime('%H.%M.s%S')}@mailinator.com"
  fill_in 'password', with: 'teste@1234'
  fill_in 'password_confirmation', with: 'teste@1234'
end                                                                             
                                                                                  
Quando('seleciono Criar conta') do                                        
  click_button 'Create an Account'    
end                                                                             
                                                                                  
Então('minha conta é criada') do                                                
  page.has_content?('Thank you for registering with Main Website Store.')   
end                                                                             
                                                                                  
Então('vejo as suas informações') do                                            
  assert_text('My Account', wait:10)
end                                                                             

