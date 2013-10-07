
Given (/^I have projects named (.+)$/) do |names|
  names.split(', ').each do |name|
    Project.create!(:name => name)
  end
end

When(/^I go to the list of projects$/) do
  visit projects_path
end

Then (/^(?:|I )should see "([^"]*)"$/) do |names|
  page.should have_content(names)
end

Given(/^I am logged in as "(.*?)"$/) do |user|
  @user = user.last
end

When(/^I create a new project$/) do
  visit new_project_path
end

Then(/^I should get the new page$/) do
  page.current_path.should == new_project_path
end

Given(/^I am on the show page$/) do
  @project = Project.first 
  visit project_path(@project)
end

When(/^I click "(.*?)"$/) do |edit|
  click_link edit
end

Then(/^I should get the edit page$/) do
  page.current_path.should == edit_project_path(@project)
end





