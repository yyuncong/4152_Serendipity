class PostsController < ApplicationController
  def index
    @posts = Post.all
    puts @posts
  end

  def show
  end

  def new
  end

  def create
    @post = Post.create!(post_params)
    flash[:notice] = "#{@post.user} just posted."
    redirect_to posts_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:user, :content)
  end
end
