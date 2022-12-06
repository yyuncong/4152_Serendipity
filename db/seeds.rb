# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
posts = [{:user_id => 30, :user => 'Robert', :content => 'Try the softest chair on campus! Go to first floor of Uris Hall. Turn left after passing by the water fountainFind the chair with label 11. Leave your comment after try it!', :tags=> 'Relaxing'},
         {:user_id => 40, :user => 'Anna', :content => 'Breathtaking sunset photograph! Do you wanna take it by yourself? Just go to the top floor of Muud building before 5pm.', :tags=> 'Sunset Photograph'},
         {:user_id => 50, :user => 'Evelyn', :content => 'They sell taro ball bowls at Lerner Hall. Go grabbing one when you want some sweets during the final weeks!', :tags=> 'Final week, Sweets, Delicious'},
         {:user_id => 60, :user => 'Johnson', :content => 'Someone wants to go skiing after finals? Plan to go to Killington in Vermont. Please leave a comment if interested.', :tags=> 'Holidays, Ski, Outdoors'},
         {:user_id => 70, :user => 'Dwight', :content => 'We hide a box containing $50 somewhere in the Butler library. Here is the hints for finding it: Floor number: on the backdoor of one washroom Room number: on the back of one public laptop Color of the box: same as the color of the special fruit today', :tags=> 'Gaming, Gifts'},
         {:user_id => 30, :user => 'Robert', :content => 'Come and try boat racing on the fountains! There are fountains near the alma mater and we put our toy boats in one of them and raced by blowing on them. That was super fun!', :tags=> 'Gaming'},
         {:user_id => 60, :user => 'Johnson', :content => 'You all know there is a guy throwing bottles into trash cans with his feet. I actually joined him today. He is a nice dude and gave me a lot of advice on it. It was way harder than I thought, but I had a great time!', :tags=> 'Gaming, Soccer, World Cup'}
]

comments = [{:user_id => 40, :post_id => 1, :user => 'Anna', :content => 'Went there after I saw the post. Softest chair in my life'},
            {:user_id => 50, :post_id => 1, :user => 'Evelyn', :content => 'I LOVE IT. Any other soft chair recommendation?'},
            {:user_id => 60, :post_id => 1, :user => 'Johnson', :content => 'Tried it this afternoon. I like Mudd’s chair better.'},
            {:user_id => 30, :post_id => 2, :user => 'Robert', :content => 'Magic!!!'},
            {:user_id => 50, :post_id => 2, :user => 'Evelyn', :content => 'Fantastic sky'},
            {:user_id => 60, :post_id => 2, :user => 'Johnson', :content => 'It was a spectacular sunset tonight.'},
            {:user_id => 70, :post_id => 2, :user => 'Dwight', :content => ' Looks absolutely beautiful. On my way to Mudd building'},
            {:user_id => 30, :post_id => 3, :user => 'Robert', :content => 'Went there this afternoon and did not get it. Apparently, they sold out quickly.'},
            {:user_id => 40, :post_id => 3, :user => 'Anna', :content => 'So delicious, thank you for sharing!'},
            {:user_id => 60, :post_id => 3, :user => 'Johnson', :content => 'OMG, definitely gonna try it tomorrow.'},
            {:user_id => 30, :post_id => 4, :user => 'Robert', :content => 'which day do you plan to go?'},
            {:user_id => 40, :post_id => 4, :user => 'Anna', :content => 'Interested! Sent u an email'},
            {:user_id => 50, :post_id => 4, :user => 'Evelyn', :content => 'How many days do u plan to stay there?'},
            {:user_id => 30, :post_id => 5, :user => 'Robert', :content => 'Can someone give me any hint on what’s the floor number of the washroom?'},
            {:user_id => 40, :post_id => 5, :user => 'Anna', :content => 'So today’s special good is pineapple right?'},
            {:user_id => 50, :post_id => 5, :user => 'Evelyn', :content => 'I find it!!!!! It’s in the room 613, and a yellow box under the main table. Thanks for people who provide this interesting design game.'},
            {:user_id => 40, :post_id => 6, :user => 'Anna', :content => 'Thank you for telling us! We had a great time!'},
            {:user_id => 50, :post_id => 6, :user => 'Evelyn', :content => 'You know, we really should organize an official competition for this.'},
            {:user_id => 60, :post_id => 6, :user => 'Johnson', :content => 'Will try!'},
            {:user_id => 30, :post_id => 7, :user => 'Robert', :content => 'That dude literally practices on it every single day.'},
            {:user_id => 40, :post_id => 7, :user => 'Anna', :content => 'I am too shy to join. I prefer watching him doing that :) '},
            {:user_id => 50, :post_id => 7, :user => 'Evelyn', :content => 'Does anyone know how many years he has been doing it?'},
            {:user_id => 70, :post_id => 7, :user => 'Dwight', :content => 'LOLLLLLL'}
]

profiles = [{:user_id => 30, :bio => 'Bio of Robert'},
            {:user_id => 40, :bio => 'Bio of Anna'},
            {:user_id => 50, :bio => 'Bio of Evelyn'},
            {:user_id => 60, :bio => 'Bio of Johnson'},
            {:user_id => 70, :bio => 'Bio of Dwight'}
]

users = [{:id => 30, :name => 'Robert', :email => 'robert@columbia.edu', :google_token => "", :google_refresh_token => ""},
         {:id => 40, :name => 'Anna', :email => 'anna@columbia.edu', :google_token => "", :google_refresh_token => ""},
         {:id => 50, :name => 'Evelyn', :email => 'evelyn@columbia.edu', :google_token => "", :google_refresh_token => ""},
         {:id => 60, :name => 'Johnson', :email => 'johnson@columbia.edu', :google_token => "", :google_refresh_token => ""},
         {:id => 70, :name => 'Dwight', :email => 'dwight@columbia.edu', :google_token => "", :google_refresh_token => ""},
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



