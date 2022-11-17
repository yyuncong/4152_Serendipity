require 'rails_helper'

describe PostsController, :type => :controller do
  render_views
  controller do
  end
    
  before :each do
    @user = User.create!(:name => 't1', :email => 't1@columbia.edu' )
    @test_post = Post.create!(:user_id => @user.id, :content => 'hello')
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
  
  describe "find all applied user" do
    it "find things" do
      test_post = Post.create(:user_id => @user.id,  :content => 'hello')
      #test_group=Group.create(:post_id=>test_post.id)
      test_user1=User.create(:name => 'test_user1', :email => 't1@columbia.edu')
      test_user2=User.create(:name => 'test_user2', :email => 't1@columbia.edu')
      test_user3=User.create(:name => 'test_user3', :email => 't1@columbia.edu')
      #test_gu1=GroupUser.create(:group_id=>test_group.id, :user_id=>test_user1.id, :status=>"applied")
      #test_gu2=GroupUser.create(:group_id=>test_group.id, :user_id=>test_user2.id, :status=>"applied")
      #test_gu3=GroupUser.create(:group_id=>test_group.id, :user_id=>test_user3.id, :status=>"approved")
      post :show, params: {id: test_post.id}
      expect (controller.instance_eval{@all_applied_user}.count)==2
       expect (controller.instance_eval{@all_approved_user}.count)==1
      expect (controller.instance_eval{@approved_user_name}.count)==1
    end
 end 

  describe "visit a specific post" do
    it 'shows comments' do
      #@test_group = Group.create!(post_id: @test_post.id)
      @test_comment = Comment.create(post_id: @test_post.id, :content => 'test comment')
      get :show, params: {id: @test_post.id}
      expect(response.body).to include 'test comment'
    end
  end
   
end