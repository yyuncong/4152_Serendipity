Feature: I would like to make a new post with picture and review it
 
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

Scenario: Create new post
  When I follow "New Post"
  And I should see "Create a new post"
  And I should see "File Upload"
  And I fill in "Content" with "Test Post"
  And I press "Post"

  Then I should be on the post page
  And I should see "Test Post"
  And I should see "Test User"


