  Scenario: Comment on post
  Given I created a post with name "Test Post"
  
  When I am on the home page
  And I follow "Go to Posts"
  And I should see "Test Post"

  Then I follow "Test Post"
  And I fill in "User" with "Test User"
  And I fill in "Content" with "Test Comment"
  And I press "Comment"

  Then I should be on the post page
  And I should see "Test Comment"

