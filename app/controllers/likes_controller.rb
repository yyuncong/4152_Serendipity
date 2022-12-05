class LikesController < SessionsController
  before_action :find_post
  before_action :find_like, only: [:destroy]
  before_action :check_current_user

  def already_liked?
    Like.where(user_id: @current_user.id, post_id:
    params[:post_id]).exists?
  end

  def create
    if already_liked?
      flash[:notice] = "You can't like more than once"
    else
      @post.likes.create(user_id: @current_user.id)
    end
    redirect_to show_post_path(@post)
  end

  def destroy
    if !(already_liked?)
      flash[:notice] = "Cannot unlike"
    else
      @like.destroy
    end
    redirect_to show_post_path(@post)
  end

  def find_like
    @like = @post.likes.find(params[:id])
  end

  private
  def find_post
    @post = Post.find(params[:post_id])
  end
end
