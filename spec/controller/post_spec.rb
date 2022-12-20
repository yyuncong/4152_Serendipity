require 'rails_helper'

describe PostsController, :type => :controller do
  render_views
  controller do
  end
    
  before :each do
    @user = User.create!(:name => 't1', :email => 't1@columbia.edu' )
    @test_post = Post.create!(:user_id => @user.id, :content => 'hello', :user => "test_user", :tags => "tag")
    session[:uid] = @user.id
    #Group.create!(post_id: @test_post.id)
  end
  
  describe "all posts"do 
    it "successeds" do
    get :index
    expect(response).to render_template(:index)
    end
  end 
  
  
  describe "test edit post" do
    it "successeds" do
    #url="/post/#{@test_post.id}"   
    get :edit, params: {id: @test_post.id}
    expect(response). to have_http_status(:success)
    end
  end 
  
  
  describe "test update post" do
    it 'calls the model method that update post by adding a comment' do
      get :index
      
      url = "/post/#{@test_post.id}"
      put :update, params: { id: @test_post.id, comment: {content: "This is a comment"}}
      new_comment = Comment.where("post_id = '#{@test_post.id}'")
      expect(new_comment[0].content).to eq "This is a comment"
    end
  end



  describe "go to new post page" do
     it "succeeds" do
         get :new
         expect(response).to have_http_status(:success)
     end
  end
  
   describe "create new post" do 
      it "successfully create" do              
          post :create, params: {post: {content: "test"},id: 3,user_id:@user.id}
          expect(response).to redirect_to(posts_path)              
      end
   end
  
  
  describe "delete a post" do
    it "deletes a post" do
      delete :destroy, params: {id: @test_post.id}
      expect(response.body).to_not include("test_post")
    end
  end


  describe "visit a specific post" do
    it 'shows comments' do
      @test_comment = Comment.create(post_id: @test_post.id, :content => 'test comment', :user => "test_commenter")
      get :show, params: {id: @test_post.id}
      expect(response.body).to include 'test comment'
    end
  end


  describe " show posts which have tag test_tag" do
    it 'find all posts with tag test_tag' do
      @test_post2 = Post.create!(:user_id => @user.id, :content => 'hello2', :user => "test_user2", :tags => "tag")
      @test_post3 = Post.create!(:user_id => @user.id, :content => 'hello3', :user => "test_user3", :tags => "tag")
      posts_with_tag = Post.posts_with_tag("tag")
      expect(posts_with_tag.length()).to eq(3)
      #get :show_tag_posts, params: {tag: @test_post.tags}
      # expect(response.body).to include 'hello'
    end
  end

end