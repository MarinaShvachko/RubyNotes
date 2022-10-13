require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize
driver.get 'https://www.virginia.gov/'

LOGO_IMG = {xpath: "(//img[@src='/media/vagov/assets/img/logo.svg'])[1]"}

logo_img = driver.find_element(LOGO_IMG)

driver.quit
