# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
posts = [{:user_id => 30, :user => 'Robert', :content => 'A post by Robert'},
         {:user_id => 40, :user => 'Anna', :content => 'A post by Anna'},
         {:user_id => 50, :user => 'Evelyn', :content => 'A post by Evelyn'},
         {:user_id => 60, :user => 'Johnson', :content => 'A post by Johnson'},
         {:user_id => 70, :user => 'Dwight', :content => 'A post by Dwight'}
]

comments = [{:user_id => 40, :post_id => 1, :user => 'Anna', :content => 'Robert, cannot agree more about that'},
            {:user_id => 50, :post_id => 1, :user => 'Evelyn', :content => '+1'},
            {:user_id => 60, :post_id => 1, :user => 'Johnson', :content => 'LOL'}
            ]

posts.each do |post|
  Post.create!(post)
end

comments.each do |comment|
  Comment.create!(comment)
end