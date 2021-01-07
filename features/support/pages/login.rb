class Login
  include RSpec::Matchers
  include Capybara::DSL

  def initialize
    @login_user = 'login[username]'
    @login_pass = 'login[password]'
    @sign = 'Sign In'
    @user = 'roni_cost@example.com'
    @pass = 'roni_cost3@example.com'
    @login_btn = 'send'
    @title_home = "Home Page"
  end

  def acess_login_page
    visit "/"
    expect(page.title).to eql @title_home   
    click_link(@sign)
    filling_login
  end
    
  def filling_login
    fill_in(@login_user, with: @user)
    fill_in(@login_pass, with: @pass)
    click_button(@login_btn)
  end        
end


