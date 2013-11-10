Feature:  User Profile Management
  As an authorized user
  I want to create a prfofile
  So that I can manage it

Scenario:  Creating a Profile
  Given I am on the create profile page
  When I fill in "First Name" with "Fred"
  And I fill in "Last Name" with "Jones"
  And I fill in "Likes" with "Dogs"
  And I fill in "About Me" with "Ruby"
  And I press "Create"
  Then the profile form should be created