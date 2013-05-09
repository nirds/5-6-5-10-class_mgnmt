
Given(/^I am on the home page$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_content arg1
end

When(/^I click "(.*?)"$/) do |arg1|
  click_link_or_button arg1
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

Then(/^I [Ss]hould be on the home page$/) do
  current_path.should eq '/'
end

Given(/^I have an "(.*?)" with the "(.*?)" of "(.*?)"$/) do |arg1, arg2, arg3|
  arg1.constantize.create(arg2.to_sym => arg3)
end

When(/^I check "(.*?)"$/) do |arg1|
  check arg1  
end