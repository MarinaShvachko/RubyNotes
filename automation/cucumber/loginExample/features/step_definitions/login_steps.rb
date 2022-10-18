Given('I open website in a browser') do
  home_page = HomePage.new(@driver)
  home_page.navigate_to
end

When(/^I login with credentials (.*) and (.*)$/) do |username, password|
  home_page = HomePage.new(@driver)
  home_page.login(username, password)
end

When (/^I login with credentials using record (.*)$/) do |record|
  home_page = HomePage.new(@driver)
  home_page.login_yaml(record)
end

Then('Flight page is displayed') do
  pending # Write code here that turns the phrase above into concrete actions
end
