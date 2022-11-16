Feature: I would like to sign in with Google, setup my profile, and log out
 
Scenario: Login to Serendipity 
  When I am on the home page
  Then I should see "Serendipity"
  And I should see "Log In with Google"  

Scenario: Complete profile, change bio, and log out 
  Given "test@columbia.edu" is logged in
  
  When I am on the new profile page
  And I should see "Complete Your Profile"
  And I fill in "Bio" with "This is my bio"
  Then I press "Continue"

  And I should be on the home page
  And I should see "Log out"
  And I should see "Go to Posts"
  And I should see "My Profile"
  Then I follow "My Profile"
  And I should see "Bio"

  And I fill in "Bio" with "This is my new bio"
  Then I press "Save"

  Then I should be on the home page
  And I follow "Log out"
  And I should see "Serendipity"
  And I should see "Log In with Google"