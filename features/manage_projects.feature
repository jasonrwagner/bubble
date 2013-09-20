Feature: Manage Project
  In order to see projects
  As a user
  I want to create and manage a project

  Scenario: Projects List
    Given I have projects named Bubble, Stalker
    When I go to the list of projects
    Then I should see "Bubble"
    And I should see "Stalker"