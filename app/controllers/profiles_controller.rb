class ProfilesController < SessionsController
  before_action :check_current_user

  def new
  end

  def create
    @profile = Profile.find_by_user_id(@current_user.id)
    if @profile
      @profile.update_attributes(profile_info)
    else
      @profile = @current_user.create_profile(profile_info)
    end
    session[:uid] = @current_user.id
    redirect_to root_path
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update_attributes(profile_info)
    redirect_to root_path
  end

  def show
    @profile = Profile.find_by_user_id(@current_user.id)
  end

  def display
    @profile = Profile.find_by_user_id(params[:id])
    @user = User.find(params[:id])
    @posts = Post.where("user_id = '#{params[:id]}'")
  end

  def profile_info
    params.require(:profile).permit(:bio)
  end

  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  #def profile_params
    #ret[:user_id] = @current_user.id
    #ret
  #end

end