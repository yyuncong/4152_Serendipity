require 'rails_helper'

describe LikesController, :type => :controller do
  render_views
  controller do
  end

  before :each do
    @test_user = User.create!( :name => 't1', :email => 't1@columbia.edu' )
    @test_post1 = Post.create!( :user_id => @test_user.id, :content => 'hello', :user => "test_user", :tags => "test_tag")
    @test_post2 = Post.create!( :user_id => @test_user.id, :content => 'hello 2', :user => "test_user", :tags => "test_tag")
    @test_like1 = Like.create(:post_id => @test_post1.id, :user_id => @test_user.id)
    session[:uid] = 1
  end

  describe "like a post who already like" do 
    it "successeds" do
        post :create, params: {like: {user_id: @test_user.id, post_id: @test_post2.id}}
    end
  end 
end