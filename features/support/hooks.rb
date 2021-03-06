require 'report_builder'

Before do
    @login = Login.new
    @busca = Busca.new
    @carrinho = Carrinho.new
    @pagamento = Pagamento.new
    @pedido = Pedido.new

    Capybara.current_session.driver.browser.manage.delete_all_cookies
    window = Capybara.current_session.current_window
    window.resize_to(1200, 1200)
    window.maximize
end

After do |scn|
    # Setting Screenshot
    temp_shot = page.save_screenshot('data/temp_shot.png')
    screenshot = Base64.encode64(File.open(temp_shot, 'rb').read)
    embed(screenshot, 'image/png', 'Screenshot')

    binding.pry if scn.failed? && ENV['debug']
    
    # Set reset session hook
    page.execute_script('sessionStorage.clear()') 
    Capybara.current_session.driver.quit
    @session.driver.quit unless @session.nil?
end

at_exit do
    ReportBuilder.configure do |config|
      config.input_path = 'data/report.json'
      config.report_path = 'data/report_builder'
      config.report_types = %i[html]
      config.report_title = 'Relatório dos testes'
      config.additional_info = { 'Navegador' => 'Web' }
    end
    ReportBuilder.build_report
end