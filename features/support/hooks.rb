Before do
    Capybara.current_session.driver.browser.manage.delete_all_cookies
    window = Capybara.current_session.current_window
    window.resize_to(1200, 1200)
    window.maximize
end

After do |scn|
    binding.pry if scn.failed? && ENV['debug']
    # Set reset session hook
    page.execute_script('sessionStorage.clear()') 
    Capybara.current_session.driver.quit
    @session.driver.quit unless @session.nil?
end