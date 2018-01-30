class UsersController < ApplicationController
  extend UsersHelper
  def index
    @users = User.all
    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end

  def show
    @user = User.find(params[:id])
    @address = Address.find_by(user_id: params[:id])
    @post = Post.find_by(user_id: params[:id])
    #@date = UsersController.readable_date(Date.today)
    respond_to do |format|
      format.html
      format.json { render json: @user }
     end
  end

  def new
    @user = User.new
    @parameters = ['name', 'email', 'password', 'gender', 'dob']
    respond_to do |format|
      #format.html
      format.json { render json: @parameters }
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :gender)
  end
end
