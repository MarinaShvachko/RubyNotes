# https://saucelabs.com/resources/articles/selenium-tips-css-selectors

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize
driver.get 'https://www.booking.com/'



driver.quit
