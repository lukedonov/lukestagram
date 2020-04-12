class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def new
    @users = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to posts_url
  end

  def index
  end



  private

  def user_params
    params.require(:user).permit(:name, :username,:email, :password)
  end    
end
