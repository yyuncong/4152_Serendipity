
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

### How to Run the Project and Test

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
#### 4. Run cucumber and RSpec tests 
Cucumber coverage for iteration 2 is 78.22%. More than 10% of the missing lines is caused by unable to proceeed with google authenticator, which requires typing in valid lionmail address and password. 
<img width="1892" alt="coverage" src="https://user-images.githubusercontent.com/49266951/202354332-9388c963-a17c-43e8-8cff-2fe43c9ab9f4.png">
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
