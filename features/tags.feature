Feature: I would like to make a new post with test tag. I would like to view posts with certain tag.
 
Background: Test user already logged in and went to the post page
  Given "TestUser@columbia.edu" is logged in
  When I am on the new profile page
  And I press "Continue"
  And I follow "Go to Posts"
  Then I should be on the post page

Scenario: Create new post with "TestTag" tag
  Given I am on the post page
  Then I follow "New Post"
  And I should see "Create a new post"
  And I should see "Tags"
  And I fill in "Content" with "Test Content"
  And I fill in "Tags" with "TestTag"
  And I press "Post"

  Then I should be on the post page
  And I should see "TestTag"

  And I follow "TestTag"
  Then I should see "Test User"


