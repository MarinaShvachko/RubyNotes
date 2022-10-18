require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize
driver.manage.timeouts.implicit_wait = 10
driver.get 'https://the-internet.herokuapp.com/windows'

puts "Title of the base page = #{driver.title}"
# open second page
driver.find_element(:link_text, 'Click Here').click

# switch to the last window (second)
driver.switch_to.window(driver.window_handles.last)
puts "Title of the new page = #{driver.title}"

# switch to first page back
driver.switch_to.window(driver.window_handles.first)
puts "Title of the new page = #{driver.title}"














driver.quit
