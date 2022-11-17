require 'rails_helper'


describe ProfilesController, :type => :controller do
  render_views

  before :each do
    @user = User.create(:id => 1, :name => 't1', :email => 't1@columbia.edu' )

  end
  

  describe "test update profile" do
    it 'calls the model method that update profile' do
      @tmp_profile = Profile.create(:user_id => @user.id, :bio => 'seas' )
      url = "/profile/#{@tmp_profile.id}"
      put :update, params: { profile: {bio: "ms"}, id: @tmp_profile.id}

      new_profile = Profile.find_by_user_id(@user.id)
      expect(new_profile.bio).to eq 'ms'
      # profile.find_by_user_id
    end
  end

  describe "test show profile" do
    it 'calls the model method that show profile' do
      @tmp_profile = Profile.create(:user_id => @user.id, :bio => 'seas'  )

     # @tmp_profile.school = "art"
      @tmp_profile.save
      get :show
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:show)
      #expect(response.body).to include("art")
    end
  end

  describe "test new profile" do
    it 'calls the model method that direct to new profile' do
      @tmp_profile = Profile.create(:user_id => @user.id, :bio => 'seas'  )
      get :new
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:new)
      #expect(response.body).to include("school")
      #expect(response.body).to_not include("art")
    end
  end


  describe "test create profile" do
    it 'calls the model method that direct to create profile' do
      get :new
      post :create, params: { profile: {:bio => 'seas'  }}
      new_profile = Profile.find_by_user_id(1)
      #expect(new_profile.major).to eq 'photo'
    end
  end
  
  
  
  describe "get my applications" do
    it "find my applications" do
      @tmp_profile = Profile.create(:user_id => @user.id, :bio => 'seas' )
      test_host=User.create(:name => 'test_host', :email => 'th@columbia.edu' )
      test_apply_post = Post.create(:user_id => test_host.id, :content => 'hello')
      #test_apply_group=Group.create(:post_id=>test_apply_post.id)
      #GroupUser.create(:group_id=>test_apply_group.id, :user_id=>@user.id, :status=>"applied") 
      @tmp_profile.save
      get :show
      #expect(response.body).to include("test_post")
    end
  end 
  
  
 

end