require 'rails_helper'

describe PostsController do
  render_views
  controller do
  end
    
  before :each do
    @test_post = Post.create!(:user => 'Test_User', :content => 'Test_Content')
  end
  
  describe "go to new post page" do
     it "succeeds" do
         get :new
         expect(response).to have_http_status(:success)
     end
  end
  
   describe "create new post" do 
      it "successfully create" do              
          post :create, params: {post: {user: "Test_User",content: "Test_Content"}
          expect(response).to redirect_to(posts_path)              
      end
   end
   
end