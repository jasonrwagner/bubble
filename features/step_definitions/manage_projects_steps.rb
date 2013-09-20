
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
