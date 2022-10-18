require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize
driver.manage.timeouts.implicit_wait = 10
driver.get 'https://demo.guru99.com/test/newtours/'

#log in to get dropdown element
username = driver.find_element(:name, 'userName')
username.send_keys('selenium')
password = driver.find_element(:name, 'password')
password.send_keys('selenium')
sign_in_btn = driver.find_element(:name, 'submit')
sign_in_btn.click

driver.find_element(:xpath, '//a[text()="Flights"]').click

# find dropdown and choose 3-d element
passenger_dropdown = driver.find_element(:xpath, "//select[@name='passCount']")
passenger_dropdown_options = passenger_dropdown.find_elements(:tag_name, 'option')

passenger_dropdown_options.each { |option| option.click if option.text == '3' }


driver.quit
