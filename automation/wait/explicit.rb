require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize
driver.get 'https://demo.guru99.com/test/newtours/'

username = driver.find_element(:name, 'userName')
username.send_keys('selenium')

password = driver.find_element(:name, 'password')
password.send_keys('selenium')

sign_in_btn = driver.find_element(:name, 'submit')
sign_in_btn.click

# explicit wait
wait = Selenium::WebDriver::Wait.new(timeout: 3)
wait.until { driver.find_element(:xpath, '//a[text()="Flights"]') }

driver.quit

