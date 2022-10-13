require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

# set implicit wait, this time driver will request DOM if there are necessary element
driver.manage.timeouts.implicit_wait = 10

driver.get 'https://demo.guru99.com/test/newtours/'
# provide not existing xpath
driver.find_element(:name, 'userNameHGLYGLHFHFKJH')

# before having an error driver works 10 seconds as we specified
driver.quit

