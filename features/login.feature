Feature: I would like to sign in with Google and log out
 
Scenario: Login to Serendipity home page 
  When I am on the home page
  Then I should see "Serendipity"
  And I should see "Log in with Google"  

Scenario: Logout
  Given "test@columbia.edu" is logged in
  
  When I am on the home page
  And I should see "Log out"
  Then I follow "Log out"
  And I should see "Serendipity"
  And I should see "Log in with Google"   