require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

#Capybara.register_driver :selenium do |app|
 # Capybara::Selenium::Driver.new(app, :browser => :chrome)
#end

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app,
    :browser => :chrome,
    :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => {
        'args' => [ "headless", "window-size=1280x720", "disable-gpu"]
      }
    )
  )
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 30
