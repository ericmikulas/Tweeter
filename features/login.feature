Feature: log in
  In order to post tweets
  Users should be logged in

Scenario: Log in
  Given I am an unauthenticated user
  When trying to create a tweet
  Then I should be redirected to the sign_in page
  #Then I should be on the sign_in page