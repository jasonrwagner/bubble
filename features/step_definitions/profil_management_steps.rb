Given (/^I am on the profile page$/) do 
	visit profile_path
end 

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, answer|
  fill_in(field, :with => answer)
end

Then(/^I should have a proile saved$/) do
end