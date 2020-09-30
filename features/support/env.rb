require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "pry"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "https://magento.nublue.co.uk"
    config.default_max_wait_time = 15
end    