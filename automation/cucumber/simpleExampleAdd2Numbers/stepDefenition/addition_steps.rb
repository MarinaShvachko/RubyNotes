Given(/^I have two numbers (\d+) and (\d+)$/) do |arg1, arg2|
  @num1 = arg1
  @num2 = arg2
end

When(/^I click on Add button$/) do
  calc = Addition.new
  @output = calc.add(@num1, @num2)
end

Then(/^the output should be (\d+)$/) do |arg1|
  puts @output
  if @output.to_i == arg1.to_i
    puts 'Test passed'
  else
    fail 'Test failed'
  end
end
