require 'selenium-webdriver'
require 'simple-spreadsheet'
excel_data = SimpleSpreadsheet::Workbook.read('C:\\Users\\Xiaomi\\RubymineProjects\\RubyProject\\automation\\DDF\\xlsx\\testData.xlsx')

# fill variables from xlsx
user_name = excel_data.cell(2, 1) # row / column, one row = data for one test
password = excel_data.cell(2, 2)

driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize
driver.get 'https://demo.guru99.com/test/newtours/index.php'

driver.find_element(:name, 'userName').send_keys(user_name)
driver.find_element(:name, 'password').send_keys(password)

sleep(5)

driver.quit
