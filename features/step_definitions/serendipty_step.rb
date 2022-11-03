Given /^"([^"]*)" is logged in$/ do |email|
    @current_user = User.create(:name=>"Test User", :email => email)
    puts "user id: #{@current_user.id}"
  end
  
Given /^I created a post with name "([^"]*)" $/ do |post_name,name1|
this_post=Post.create!(:title=>post_name,:content=>"#{post_name} content",:user_id =>1)
end

