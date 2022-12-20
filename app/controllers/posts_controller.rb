class PostsController < ApplicationController
  def index
    @posts = Post.all
    puts @posts
  end

  def show
    @post = Post.find(params[:id])
    @comments = Comment.where("post_id = '#{params[:id]}'")
    @user = User.find(session[:uid])
  end

  def new
  end

  def create
    @user = User.find(session[:uid])
    @post = Post.create!(post_params.merge({user_id: session[:uid], user: @user[:name]}))
    flash[:notice] = "#{@post.user} just posted."
    redirect_to posts_path
  end

  def edit
  end

  def update
    @user = User.find(session[:uid])
    @comment = Comment.create!(comment_params.merge({user_id: session[:uid], user: @user[:name], post_id: params[:id]}))
    @post = Post.find(params[:id])
    @comments = Comment.where("post_id = '#{params[:id]}'")
    redirect_to show_post_path(@post)
  end

  def destroy
  end

  def show_tag_posts
    @posts = Post.posts_with_tag(params[:tag])
    @tag = params[:tag]
  end

  private

  def post_params
    params.require(:post).permit(:content, :tags, :image)
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
