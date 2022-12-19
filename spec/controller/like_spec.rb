require 'rails_helper'

describe LikesController, :type => :controller do
  render_views
  controller do
  end

  before :each do
    @test_user = User.create!( :name => 't1', :email => 't1@columbia.edu' )
    @test_post1 = Post.create!(:user_id => @test_user.id, :content => 'hello', :user => "test_user", :tags => "test_tag")
    @test_post2 = Post.create!(:user_id => @test_user.id, :content => 'hello 2', :user => "test_user", :tags => "test_tag")
    @test_like1 = Like.create(:post_id => @test_post1.id, :user_id => @test_user.id)
    session[:uid] = @test_user.id
  end

  describe "like a post" do 
    it "fails due to have already_liked" do
      post :create, params: {like: {user_id: @test_user.id}, post_id: @test_post1.id}
      expect(flash[:notice]).to include("You can't like more than once")
    end

    it "successeds" do
      post :create, params: {like: {user_id: @test_user.id}, post_id: @test_post2.id}
    end
  end 

  describe "unlike a post" do 
    it "successeds" do
      delete :destroy, params: {like: {user_id: @test_user.id}, post_id: @test_post1.id, id: @test_like1.id}
    end

    it "fails due to not like yet" do
      begin
        delete :destroy, params: {like: {user_id: @test_user.id}, post_id: @test_post2.id, id: @test_like1.id}
      rescue => e
      end
    end
  end 
end