# An inline frame (iframe) is a HTML element that loads another HTML page within the document
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize
driver.get 'https://demoqa.com/frames'

# go into iFrame, now we have access only to elements in that iFrame
driver.switch_to.frame('frame1')
headings = driver.find_elements(:id, 'sampleHeading')
# there are 2 h2 with specified id, but saved only 1, that is inside iFrame
puts headings.length

# go out iFrame, if not all elements outside iFrame won't be found
driver.switch_to.parent_frame

# when we go out of iFrame we can find other element:
driver.find_element(:id, 'frame2Wrapper')

driver.quit




