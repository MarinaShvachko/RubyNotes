require 'selenium-webdriver'
require 'yaml'

# create an object to read data from yaml file
# all data from config.yaml file
config_data = YAML.load(File.read('C:\\Users\\Xiaomi\\RubymineProjects\\RubyProject\\automation\\DDF\\yaml\\config.yaml'))
# all data from record.yaml file
yaml_data = YAML.load(File.read('C:\\Users\\Xiaomi\\RubymineProjects\\RubyProject\\automation\\DDF\\yaml\\record.yaml'))
# puts yaml_data
# puts '----'
# puts config_data

# declare data object
browser_type = config_data['browser']
record_type = config_data['record']

# puts '------'
# puts browser_type
# puts '----'
# puts record_type

# convert the String data into array
record_arr = record_type.split(',') # now we get array with: record1, record2, record3
record_arr.each(&:strip!)

# HOW MANY RECORDS - SO MANY TIMES TEST WILL BE RUN
record_arr.each { |record|
  # local var
  username_value = yaml_data[record]['username']
  password_value = yaml_data[record]['password']
  trip_type_value = yaml_data[record]['trip_type']
  passenger_value = yaml_data[record]['no_of_passengers']

  driver = Selenium::WebDriver.for :"#{browser_type}"
  driver.manage.timeouts.implicit_wait = 10
  driver.manage.window.maximize
  driver.get 'https://demo.guru99.com/test/newtours/index.php'

  wait = Selenium::WebDriver::Wait.new(timeout: 10)
  wait.until { driver.find_element(name: 'userName') }

  username_txt = driver.find_element(name: 'userName')
  username_txt.send_keys(username_value)

  password_txt = driver.find_element(name: 'password')
  password_txt.send_keys(password_value)

  sign_in_btn = driver.find_element(name: 'submit')
  sign_in_btn.click

  # open flights
  driver.find_element(:xpath, '//a[text()="Flights"]').click

  # select radio button
  trip_type_radiobutton = driver.find_element(xpath: "//input[@name='tripType'][@value='#{trip_type_value}']")
  trip_type_radiobutton.click

  # select number of passengers
  no_of_passengers = driver.find_element(name: 'passCount')
  passenger_options = no_of_passengers.find_elements(tag_name: 'option')

  passenger_options.each { |opt| opt.click if opt.text == passenger_value.to_s }
  sleep(3)

  #
  # if driver.title == 'Welcome Mercury Tours'
  #   puts 'Test passed.'
  # else
  #   raise 'Test failed.'
  # end

  driver.quit

}
