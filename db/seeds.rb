# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
posts = [{:user => 'Robert', :content => 'A post by Robert'},
         {:user => 'Anna', :content => 'A post by Anna'},
         {:user => 'Evelyn', :content => 'A post by Evelyn'},
         {:user => 'Johnson', :content => 'A post by Johnson'},
         {:user => 'Dwight', :content => 'A post by Dwight'}
]

posts.each do |post|
  Post.create!(post)
end