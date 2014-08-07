Given(/^I have a calculator$/) do
  @calculator = Calculator.new
end

When(/^I add (\d+) and (\d+)$/) do |arg1, arg2|
  @result = @calculator.add arg1.to_i, arg2.to_i
end

Then(/^the result should be (\d+)$/) do |expected|
  expect(@result).to eq(expected)
end

Transform /^(\d+)$/ do |number|
	number.to_i
end

When(/^I multiply (\d+) and (\d+)$/) do |arg1, arg2|
  @result = @calculator.multiply arg1, arg2
end

Given(/^I can add numbers$/) do
	expect(@calculator).to respond_to :add
end

Given(/^I can multiply numbers$/) do
	expect(@calculator).to respond_to :multiply
end

Given(/^I can add and multiply$/) do
  step "I can add numbers"
  step "I can multiply numbers"
end

When(/^I subtract (\d+) and (\d+)$/) do |arg1, arg2|
  @result = @calculator.subtract arg1, arg2
end

When(/^I divide (\d+) by (\d+)$/) do |arg1, arg2|
  @result = @calculator.divide arg1, arg2
end








