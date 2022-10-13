require 'selenium-webdriver'
include Selenium::WebDriver::Support
require 'webdrivers'

driver = Selenium::WebDriver.for :firefox
#driver.manage.window.maximaze
driver.get "https://demo.guru99.com/test/newtours/"

username = driver.find_element(:name, "userName")
username.send_keys("selenium")

password = driver.find_element(:name, "password")
password.send_keys("selenium")

sign_in_btn = driver.find_element(:name , "submit")
sign_in_btn.click
sleep(3)

puts driver.title

if driver.title == "Login: Mercury Tours"
  puts "Test passed"
else
  puts "Test failed"
end

driver.close


