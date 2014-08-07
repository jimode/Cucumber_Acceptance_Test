Given(/^the following Markdown text$/) do |string|
  @markdown = string
end

When(/^I try to convert it to HTML$/) do
  require "redcarpet"
  Markdown_renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  @result = Markdown_renderer.render @markdown
end

Then(/^I should see the output "(.*?)"$/) do |expected|
  expect(@result).to include expected
end