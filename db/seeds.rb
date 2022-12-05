# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
posts = [{:user_id => 30, :user => 'Robert', :content => 'A post by Robert', :tags=> 'tag1 tag2'},
         {:user_id => 40, :user => 'Anna', :content => 'A post by Anna', :tags=> 'tag2 tag3'},
         {:user_id => 50, :user => 'Evelyn', :content => 'A post by Evelyn', :tags=> 'tag3 tag4'},
         {:user_id => 60, :user => 'Johnson', :content => 'A post by Johnson', :tags=> 'tag4 tag5'},
         {:user_id => 70, :user => 'Dwight', :content => 'A post by Dwight', :tags=> 'tag5 tag6'}
]

comments = [{:user_id => 40, :post_id => 1, :user => 'Anna', :content => 'Robert, cannot agree more about that'},
            {:user_id => 50, :post_id => 1, :user => 'Evelyn', :content => '+1'},
            {:user_id => 60, :post_id => 1, :user => 'Johnson', :content => 'LOL'}
]

profiles = [{:user_id => 30, :bio => 'Bio of Robert'},
            {:user_id => 40, :bio => 'Bio of Anna'},
            {:user_id => 50, :bio => 'Bio of Evelyn'},
            {:user_id => 60, :bio => 'Bio of Johnson'},
            {:user_id => 70, :bio => 'Bio of Dwight'}
]

users = [{:id => 30, :name => 'Robert', :email => 'xxx@columbia.edu', :google_token => "", :google_refresh_token => ""},
         {:id => 40, :name => 'Anna', :email => 'xxx@columbia.edu', :google_token => "", :google_refresh_token => ""},
         {:id => 50, :name => 'Evelyn', :email => 'xxx@columbia.edu', :google_token => "", :google_refresh_token => ""},
         {:id => 60, :name => 'Johnson', :email => 'xxx@columbia.edu', :google_token => "", :google_refresh_token => ""},
         {:id => 70, :name => 'Dwight', :email => 'xxx@columbia.edu', :google_token => "", :google_refresh_token => ""},
]
users.each do |user|
  User.create!(user)
end

posts.each do |post|
  Post.create!(post)
end

comments.each do |comment|
  Comment.create!(comment)
end

profiles.each do |profile|
  Profile.create!(profile)
end



