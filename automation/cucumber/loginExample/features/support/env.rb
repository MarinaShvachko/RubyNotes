require 'selenium-webdriver'
require 'cucumber'

# setting up the browser to run
Before do
  @driver = Selenium::WebDriver.for :chrome
  @driver.manage.window.maximize
end

After do
  @driver.quit
end
