Given /^"([^"]*)" is logged in$/ do |email|
    @current_user = User.create(:name=>"Test User", :email => email)
    puts "user id: #{@current_user.id}"
  end
  

Given /^"([^"]*)" has go to the post page$/ do |name|
@current_user = User.create(:name=>name, :email => "#{name}@columbia.edu")
profile=Profile.create(:major=>"CS")
profile.user=@current_user
end

Given /^Post with name "([^"]*)" is created by "([^"]*)"$/ do |name, host|
this_user=User.create!(:name=>host, :email => "test_email")
this_post=Post.create!(:title=>name,:content=>"#{name} content",:user_id =>this_user.id,start:"01/01/2022",end:"01/02/3022", low_number: 1, high_number:100)
Group.create!(:post_id=>this_post.id)
end

Given /^Post with name "([^"]*)" is created by "([^"]*)" and my application is approved$/ do |name, host|
this_user=User.create!(:name=>host, :email => "test_email")
this_post=Post.create!(:title=>name,:content=>"#{name} content",:user_id =>this_user.id,start:"01/01/2022",end:"01/02/3022", low_number: 1, high_number:100)
this_group=Group.create!(:post_id=>this_post.id)
GroupUser.create!(:group_id=>this_group.id, :user_id=>1, :status=>"approved")
end 

Given /^I created a post with name "([^"]*)", and "([^"]*)" applied for it$/ do |post_name,name1|
this_post=Post.create!(:title=>post_name,:content=>"#{post_name} content",:user_id =>1,start:"01/01/2022",end:"01/02/3022", low_number: 1, high_number:100)
this_group=Group.create!(:post_id=>this_post.id) 
applied_user1=User.create!(:name=>name1, :email => "test_email1")  
GroupUser.create!(:group_id=>this_group.id, :user_id=>applied_user1.id, :status=>"applied")
end

Given /^I joined group for post "([^"]*)"$/ do |title|
post = Post.find_by_title(title)
group = Group.find_by_post_id(post.id)
GroupUser.create(group_id: group.id, user_id: @current_user.id, status: :accepted)
end

Given /^Nicknames contain \[(.*)\]$/ do |nicknames|
nicknames.split(',').each do |name|
    Nickname.create!(name: name)
end
end

Given /^Group for post "([^"]*)" is dismissed/ do |title|
    post = Post.find_by_title(title)
    group = Group.update(dismissed: true)
end

Given /^I applied for post "([^"]*)"$/ do |title|
post = Post.find_by_title(title)
group = Group.find_by_post_id(post.id)
GroupUser.create(group_id: group.id, user_id: @current_user.id, status: :applied)
end

Given /^"([^"]*)" applied for post "([^"]*)" with messsage "([^"]*)"$/ do |name,title, massage|
post = Post.find_by_title(title)
group = Group.find_by_post_id(post.id)
applied_user=User.create!(:name=>name, :email => "test_email1")  
GroupUser.create(group_id: group.id, user_id: applied_user.id, status: :applied, intro: massage)
end

Given /^"([^"]*)" accepted the invitation for "([^"]*)"$/ do |name,title|
post = Post.find_by_title(title)
group = Group.find_by_post_id(post.id)
user=User.find_by_name(name)
GroupUser.create(group_id: group.id, user_id: user.id, status: :accepted)
profile=Profile.create(user_id: user.id,major: "CS")
GroupUser.create(group_id: group.id, user_id: @current_user.id, status: :accepted)
end 
    