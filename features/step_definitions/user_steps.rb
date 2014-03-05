#createUser = User.new("Fred", "Jones", "Stuff", "I like food")





Given(/^I am on the "(.*?)" page$/) do |page|
  something = { 'home' => pages_path, 'create_new_user' => new_user_registration_path }
	visit something[page]

	#visit new_user_registration_path
	#click_link "Sign up"
end


When(/^I press the "(.*?)" button$/) do |button|
  click_link "#{button}"
end

When(/I fill in the sign up form$/) do
  sign_up_new_account(createUser.first_name, createUser.last_name)
end

Then (/^I am on the "new user" page$/) do
	visit new_user_registration_path
end
# When (/^I fill in "Email" with "manisiva19@gmail.com"$/) do
# end
And(/^I fill in email$/) do
  fill_in("user_email", :with => "manisiva19@gmail.com")
end

And(/^I fill in password$/) do
  fill_in("user_password", :with => "Secret")
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
  page.should have_content('Welcome! You have signed up successfully.')
end







