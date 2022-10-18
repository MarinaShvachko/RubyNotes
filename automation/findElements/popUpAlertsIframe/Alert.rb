require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize
driver.manage.timeouts.implicit_wait = 10
driver.get 'https://demoqa.com/alerts'

driver.find_element(:xpath, "//span[text()= 'Alerts']").click
driver.find_element(:css, "#alertButton").click

# switch-to alert
my_alert = driver.switch_to.alert
# get text
puts my_alert.text

my_alert.accept
# my_alert.dismiss

driver.quit
