Feature: I would like to make a new post and review it
 
Background: Test user already logged in and went to the post page
  Given "TestUser@columbia.edu" is logged in
  When I am on the new profile page
  And I press "Continue"
  And I follow "Go to Posts"
  Then I should be on the post page
  And I should see "Posts"
  And I should see "Go Back"
  And I should see "Create A New Post"
  And I should see "New Post"

Scenario: Create new post, and review the post in my profile
  When I follow "New Post"
  And I should see "Create a new post"
  And I fill in "Content" with "Test Post"
  And I press "Post"

  Then I should be on the post page
  And I should see "Test Post"
  And I should see "Test User"

  And I follow "Test User"
  Then I should see "Test User's profile page"
  And I should see "Test User's email"
  And I should see "TestUser@columbia.edu"
  And I should see "Test User's bio"
  And I should see "Posts"
  And I should see "Content"
  And I should see "Last Updated Time"
  And I should see "Test Post"

