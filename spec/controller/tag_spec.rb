require 'rails_helper'

describe PostsController,  :type => :controller do
  render_views

  before :each do
    @user = User.create!(:id => 1, :name => 't1', :email => 't1@columbia.edu' )
   
    @tag1 = "tag_a"
    @tag2 = "tag_b" 
    session[:uid] = 1
    
    @test_post_tags_a = Post.create(:user_id => @user.id, :content => 'hello a' ,:tags=> "tag_a")
    @test_post_tags_b = Post.create(:user_id => @user.id, :content => 'hello b' ,:tags=> "tag_b")
    #@test_post_tags_2 = Post.create(:post_id => @test_post.id, :tag=> "tag_b")
    #@test_post_tags_3 = Post.create(:post_id => @test_post.id, :tag=> "tag_c")

  end
 
  
  describe "test new posts with tags" do
    it 'calls the model method that direct to new profile' do
      get :index
      expect(response).to have_http_status(:ok)
      expect(response).to render_template :index
      expect(response.body).to include("tag_a")
      expect(response.body).to include("tag_b")
    end
  end


  describe "select tags" do
    it 'hide tags' do
      # post :approve, params: {id: test_approve_group2.id, user_id: test_applican1.id}
      tmp_hash = { @tag1=> 1, @tag2 => 1}
      get :index, params: {tagnames: tmp_hash}
      expect(response.body).to include 'tag_a'
      expect(response.body).to include 'tag_b'
    end
  end
   





end