require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize
driver.get 'https://www.booking.com/'


driver.quit

# NOTES

# ----- to choose first image, if there are 2 the same images on the page
# (//img[@src="/media/vagov/assets/img/logo.svg"])[1]

# ----- find element by two attributes AND
# //img[@src="/media/vagov/assets/img/logo.svg"][@alt="Virginia.gov Logo"] or  //img[@src="/media/vagov/assets/img/logo.svg" and @alt="Virginia.gov Logo"]

