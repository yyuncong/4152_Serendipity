Feature: I would like to make a new post and review it
 
Scenario: make new post
  Given "test@columbia.edu" is logged in
  
  When I am on the post page
  Then I follow "New Post"
  And I should see "Create a new post"
  And I fill in "Content" with "Test Post"
  And I follow "Post"

  Then I should be on the post page
  And I should see "Test Post"
  
Scenario: Review new post
  Given I created a post with name "Test Post"
  
  When I am on the home page
  And I follow "Go to Posts"
  And I should see "Test Post"
