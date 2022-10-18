require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize
driver.manage.timeouts.implicit_wait = 10
driver.get 'https://demoqa.com/alerts'

driver.find_element(:id, 'timerAlertButton').click


# добавить код
#
my_alert = driver.switch_to.alert
puts my_alert.text

driver.quit
