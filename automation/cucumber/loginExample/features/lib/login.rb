require 'selenium-webdriver'

class HomePage
  def initialize(driver)
    @driver=driver
  end

  def login(username, password)
    @driver.find_element(:name, 'userName').send_keys(username)
    @driver.find_element(:name, 'password').send_keys(password)
    @driver.find_element(:name, 'submit').click
  end

  def login_yaml(record)
    data_record = YAML.load(File.read('C:\Users\Xiaomi\RubymineProjects\RubyProject\automation\cucumber\loginExample\features\data\record.yaml'))
    username_value = data_record["#{record}"]['username']
    password_value = data_record["#{record}"]['password']
    @driver.find_element(:name, 'userName').send_keys(username_value)
    @driver.find_element(:name, 'password').send_keys(password_value)
    @driver.find_element(:name, 'submit').click
  end

  def navigate_to
    @driver.get('https://demo.guru99.com/test/newtours/index.php')
    @driver.manage.timeouts.implicit_wait = 10
  end
end
