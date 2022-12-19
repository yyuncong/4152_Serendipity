Feature: I would like to make a post and like it 
 
Background: Test user make a test post
  Given "TestUser@columbia.edu" is logged in
  When I am on the new profile page
  And I press "Continue"
  And I follow "Go to Posts"
  Then I should be on the post page
  Then I follow "New Post"
  And I should see "Create a new post"
  And I fill in "Content" with "Test Post"
  And I press "Post"


Scenario: Test user like a post and unlike it 
  Given I am on the post page
  Then I should see "Test Post"
  And I follow "Test Post"
  Then I should see "Like"

  And I press "Like"
  Then I should see "1 Like"

  Then I press "Unlike"
  Then I should see "0 Likes"
