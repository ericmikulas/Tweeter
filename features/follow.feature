Feature: follow user
  In order to follow a user
  user must be logged in
@selenium
Scenario: Find follow link
  Given I am on the home page
  When I find This is Tweet 1
  And I click This is Tweet 1
  Then I should see a Follow link 
@selenium
Scenario: Follow User
  Given I am an unauthenticated user
  And I am on the home page
  When I click This is Tweet 1
  And I click Follow
  Then I should be redirected to the sign_in page
  And I click Register
  And I create a login with username erock3
  And I should be on the following page

  Scenario: I should only be able to follow a user once
    Given I am an unauthenticated user
    And I am on the home page
    When I click This is Tweet 1
    And I click Follow
    Then I will login as erock3
    And I should be on the following page
    And I should see erock once