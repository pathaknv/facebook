class PostsController < ApplicationController

  def index
    @posts = Post.all
    respond_to do |format|
      format.html
      format.json { render json: @post }
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to user_posts_path
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @posts = Post.where(user_id: params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @post }
    end
  end

  def post_params
    post_data = {}
    post_data[:title] = params[:user][:title]
    post_data[:content] = params[:user][:content]
    post_data[:user_id] = params[:user_id]
    post_data
  end
end
