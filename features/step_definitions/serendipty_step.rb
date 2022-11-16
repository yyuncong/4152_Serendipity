Given /^"([^"]*)" is logged in$/ do |email|
    @current_user = User.create(:name=>"Test User", :email => email)
    puts "test user created, id: #{@current_user.id}"
  end
  
Given /^I created a post with name "([^"]*)"$/ do |post_name|
  this_post=Post.create!(:user=>"Test User",:content=>post_name)
end

Given /^Post with name "([^"]*)" is created by "([^"]*)"$/ do |post_name, user_name|
  this_user=User.create!(:name=>user_name, :email => "test_email")
  this_post=Post.create!(:user=>user_name,:content=>post_name)
end