#createUser = User.new("Fred", "Jones", "Stuff", "I like food")
createNum = Num.new(9999)
b = browser = Watir::Browser.new
b.goto 'http://localhost:3000/pages'

Given(/^I am on the "(.*?)" page$/) do |page|
  something = { 'home' => pages_path, 'create_new_user' => new_user_registration_path, 'user_sign_in' => new_user_session_path }
  visit something[page]

	#visit new_user_registration_path
	#click_link "Sign up"
end
#Given(/^I am on the home page$/) do
#  path_to(home)
#end

When(/^I click the "(.*?)" link$/) do |link|
  sleep(inspection_time=5)
  #click_link "#{button}"
  browser.link(:text => "#{link}").click
  sleep(inspection_time=5)
end

When(/^I press the "(.*?)" button$/) do |button|
  #click_link "#{button}"
  browser.button(:text => "#{button}").click
  sleep(inspection_time=5)
end

When(/I fill in the sign up form$/) do
  #sign_up_new_account(createUser.first_name, createUser.last_name)
  b.text_field(:id => "user_email").set "fred" + createNum.num + "@hmail.com"
  b.text_field(:id => "user_password").set "flintstone"
  b.text_field(:id => "user_password_confirmation").set "flintstone"
  b.text_field(:id => "user_profile_first_name").set "fred"
  b.execute_script("window.scrollBy(0,200)")
  sleep(inspection_time=5)
  b.text_field(:id => "user_profile_last_name").set "flintstone"
  b.text_field(:id => "user_profile_likes").set "camping and stuff"
  b.text_field(:id => "user_profile_about_me").set "newbie"
  b.execute_script("window.scrollBy(0,200)")
end

#Then (/^I am on the "new user" page$/) do
#	visit new_user_registration_path
#end
# When (/^I fill in "Email" with "manisiva19@gmail.com"$/) do
# end
And(/^I fill in email and password$/) do
  b.text_field(:id => "user_email").set "fred3344@hmail.com"
  b.text_field(:id => "user_password").set "flintstone"
end

And(/^I fill in password_confirmation$/) do
  fill_in("user_password_confirmation", :with => "Secret")
end

# And(/^I fill in "(.*?)" with "(.*?)"$/) do |field, answer|
#    fill_in("user_#{field}", :with => answer)
# end

And(/^I press "(.*?)"$/) do |sign_up|
  click_button "Sign up"
  visit pages_path
end

Then(/^I should be signed in$/) do
  Watir::Wait.until { b.text.include? 'Welcome! You have signed up successfully.' }
  #page.should have_content('Welcome! You have signed up successfully.')
end

Then(/^I am signed in$/) do
  Watir::Wait.until { b.text.include? 'Signed in successfully.' }
end

Then(/^I should be signed out$/) do
  Watir::Wait.until { b.text.include? 'Signed out successfully.' }
end

When(/^I fill in the project name$/) do
  b.text_field(:id => "project_name").set "test project"
end

And(/^I fill in the project description$/) do
  b.text_field(:id => "project_description").set "just another test project"
end

Then(/^I should see the project on the home page$/) do
  Watir::Wait.until { b.text.include? 'test project just another test project' }
end












