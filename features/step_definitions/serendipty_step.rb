Given /^"([^"]*)" is logged in$/ do |email|
    @current_user = User.create(:name=>"Test User", :email => email)
    puts "user id: #{@current_user.id}"
  end
  

Given /^"([^"]*)" has go to the post page$/ do |name|
@current_user = User.create(:name=>name, :email => "#{name}@columbia.edu")
profile=Profile.create(:major=>"CS")
profile.user=@current_user
end

Given /^I created a post with name "([^"]*)", and "([^"]*)" applied for it$/ do |post_name,name1|
this_post=Post.create!(:title=>post_name,:content=>"#{post_name} content",:user_id =>1,start:"01/01/2022",end:"01/02/3022", low_number: 1, high_number:100)
this_group=Group.create!(:post_id=>this_post.id) 
applied_user1=User.create!(:name=>name1, :email => "test_email1")  
GroupUser.create!(:group_id=>this_group.id, :user_id=>applied_user1.id, :status=>"applied")
end
