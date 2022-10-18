require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize
driver.manage.timeouts.implicit_wait = 10
driver.get 'https://google.com'

#driver.save_screenshot("googlePage.png")
# or we can specify the path
driver.save_screenshot("C:\\Users\\Xiaomi\\RubymineProjects\\RubyProject\\automation\\findElements\\screenshot\\googleScreenShot.png")