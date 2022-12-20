
# Serendipity

### Team Members
Xiyuan Zhao (xz2994)
 
Yuncong Yang (yy3035)

Yiyang Hu (yh3575)

Zhonglin Yang (zy2496)

### Iteration 1
 In the first iteration of our project, we implemented the authentication method of our project using Google's API. In the home page of our
web, there is a link the user can click, and it will redirect the user to login using their Google account. While the user successfully logins,
the page will redirect to a page with two links. The first is Logout and the second is Go to Posts. When the Logout link is clicked, the user will logout 
 and the session will be over. When the Go to Post link is clicked, the page will be redirected to posts index where all current posts will be showed. 
 In the posts index page, there is a button New Post. When the button is clicked, the page will be redirected to posts new page where the user can
create a new post. After a new post is created, the page will be redirected back to the posts index page.

### Iteration 2
 In the second iteration of our project, we implemented the profile page for users. Now, when a user login in, he or she will be asked to complete the profile page. The profile page will show the name and the email of the user. The user can choose to add a biography to the profile page. Also, while we have profiles in our app, we also connect Google login account with our users. Now a Google account will be binded to one specific user in our app. When the user creates a new post, his actual name which is collected from the Google account will be used. The user cannot type whatever name he or she wants to use when creating a new post. Moreover, we added comments in our app. With comments, users can respond to others' posts. We now have a show page for each post, whenever we click a post link in the posts index page, the post's show page will show and all the comments of the post will be shown in the show page. The user can also leave his or her comment in the show page of a post. Lastly, we added some Go Back buttons in our app, it helps new users to learn how to use our app.

### Demo
 In the current iteration, we implemented likes and tags features. Users can include tag in their posts and they can check posts under certain tags. Users can also like posts. All the tags and likes information are stored in our database. We also implemented prototype of audio and picture uploading. 
### How to Run the Project and Test

### Proj Launch
 In the last iteration of our project, we implemented the picture feature. Now when a user creates a new post, he can choose to attach a picture to the post. When the post with a picture attched is showed, other users can see the attched picture. The picture feature makes our app more interesting and convinient for users to use. 

#### 1. Bundle install required packages
```sh
bundle install --without production
```
#### 2. Migrate and seed DB
```sh
bundle exec rake db:migrate
```
```sh
bundle exec rake db:seed
```
#### 3. Start the server
```sh
rails server -b 0.0.0.0
```
And then the project can be accessed through http://localhost:3000/

#### 4. Run cucumber 
Cucumber coverage for launch is 77.54%. More than 10% of the missing lines is caused by unable to proceeed with google authenticator, which requires typing in valid lionmail address and password. 
```sh
bundle exec cucumber features/
```
```sh
bundle exec rspec
```
### Heroku Link
#### https://secret-taiga-59469.herokuapp.com/

### GitHub Repo Link
#### https://github.com/yyuncong/4152_Serendipity

### Presentation Slides
#### https://docs.google.com/presentation/d/1pHG_epc21LbYxjBKbvG2G1rwuPMUcBcIwPWQILxyK4Y/edit#slide=id.p1

### Youtube Link
#### https://youtu.be/yg_SSmcmoJI


