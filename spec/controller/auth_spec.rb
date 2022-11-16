require 'rails_helper'

describe SessionsController, :type => :controller do
  render_views
  
  before :each do
    @user = User.create(:id => 1, :name => 't1', :email => 't1@columbia.edu' )
    @tmp_profile = Profile.create(:user_id => @user.id, :bio => 'seas' )
  end

  it 'visits the home page' do

    get :index

    expect(response).to render_template :index
    #(assigns(:current_user)).to be_present
    #expect(response.body).to include("Log out")
  end
  
  it 'log out' do
    delete :logout

    expect(response).to render_template :index
    expect(response.body).to_not include("Hello, #{@user.name}")
  end

  it 'Get Google account info from Google' do
    info = double("info", name: 'test', email: 'test@columbia.edu')
    cred = double("cred", token: 'TOKEN', refresh_token: '')
    access_token = double("at", info: info, credentials: cred)
    request.env["omniauth.auth"] = access_token

    get :googleAuth, params: {provider: 'google_auth2'}

    users = User.where(name: 'test', email: 'test@columbia.edu')
    expect(users.length).to be > 0
  end

end