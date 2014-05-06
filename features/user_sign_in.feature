Feature: Sign in
  As an unauthorized user
  I want to sign in with my details
  So that I am loged in

Scenario: Successful Sign In
Given I am on the home page
When I click the "Sign in" link
And I am on the user_sign_in page
And I fill in email and password
And I press the "Sign in" button
Then I am signed in

Scenario:  Log out
Given I am on the home page
When I click the "Sign out" link
Then I should be signed out

Scenario: Successful Sign In and create a project
Given I am on the home page
When I click the "Sign in" link
And I am on the user_sign_in page
And I fill in email and password
And I press the "Sign in" button
Then I am signed in
When I click the "new project" link
Then I am on the new project page
When I fill in the project name
And I fill in the project description
When I press the "Create Project" button
Then I should see the project on the home page


