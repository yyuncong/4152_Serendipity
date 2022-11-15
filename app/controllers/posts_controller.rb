class PostsController < ApplicationController
  def index
    @posts = Post.all
    puts @posts
  end

  def show
    @post = Post.find(params[:id])
    @comments = Comment.where("post_id = '#{params[:id]}'")
    puts @post
    puts @comments.length
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
    @comment = Comment.create!(comment_params.merge({post_id: params[:id]}))
    @post = Post.find(params[:id])
    @comments = Comment.where("post_id = '#{params[:id]}'")

    redirect_to show_post_path(@post)
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:user, :content)
  end

  def comment_params
    params.require(:comment).permit(:user, :content)
  end
end
