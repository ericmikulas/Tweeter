Feature: To test creation of logins and tweets
  In order to tweet an account must be made
@selenium
Scenario: Create user account
  Given I am an unauthenticated user
  And I am on the home page
  When I click Register
  Then I should be on the sign_up page
  And I create a login with username erock
@selenium
Scenario: Sign in
  Given I am an unauthenticated user
  And I am on the home page
  When I click Login
  Then I will login as erock
  And I will be logged in

@selenium
Scenario: create a tweet
  Given I am an unauthenticated user
  And I am on the home page
  When I click Login
  Then I will login as erock
  And I am on the home page
  And I will be logged in
  And I click New Tweet
  And I create a new Tweet saying This is Tweet 1

@selenium
Scenario: I should be able to creat multiple accounts with the same email
  Given I am an unauthenticated user
  And I am on the home page
  When I click Register
  And I create a login with username erock2
  Then I will be logged in
  And I am on the home page