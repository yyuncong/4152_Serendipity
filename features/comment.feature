Feature: I would like to make a new post and review it
Background: Test user has created a test post 
  Given "TestUser@columbia.edu" is logged in
  When I am on the new profile page
  And I press "Continue"
  And I follow "Go to Posts"
  Then I follow "New Post"
  And I should see "Create a new post"
  And I fill in "Content" with "Test Post"
  And I press "Post"
  Then I should see "Test Post"

Scenario: Leave a comment on test post
  When I follow "Test Post"
  Then I should see "Test User says"
  And I should see "Test Post" 
  And I should see "Comments"   
  Then I should see "Leave Your Comment"
  And I fill in "Content" with "+1"
  
  And I press "Comment" 
  And I should see "+1"
