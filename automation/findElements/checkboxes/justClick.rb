require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize
driver.get 'https://www.w3.org/WAI/ARIA/apg/example-index/checkbox/checkbox.html'

MUSTARD_CHECKBOX = { xpath: "//div[text()='Mustard' and @role='checkbox']" }.freeze
TOMATO_CHECKBOX = { xpath: "//div[text()='Tomato' and @role='checkbox']" }.freeze

puts "Before clicking attribute \"aria-checked\" of Mustard checkbox = #{driver.find_element(MUSTARD_CHECKBOX).attribute('aria-checked')}"

driver.find_element(MUSTARD_CHECKBOX).click
driver.find_element(TOMATO_CHECKBOX).click

puts "After clicking attribute \"aria-checked\" of Mustard checkbox = #{driver.find_element(MUSTARD_CHECKBOX).attribute('aria-checked')}"

sleep(5)
driver.quit
