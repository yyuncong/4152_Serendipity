Feature: I would like to make a new post
 
Scenario: make new post
  Given "test@columbia.edu" is logged in
  
  When I am on the home page
  And I follow "Go to Posts"
  Then I should see "Posts"
  And I should see "New Post"

  Then I follow "New Post"
  And I should see "Create a new post"
  And I fill in "User" with "Test User"
  And I fill in "Content" with "Test Post"
  And I press "Post"

 Then I should be on the post page
 And I should see "Test Post"
  

