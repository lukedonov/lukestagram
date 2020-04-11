class UsersController < ApplicationController
  def new
    @users = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to posts_url
  end

  def index
  end



  private

  def user_params
    params.require(:user).permit(:name, :username,:email, :password)
  end    
end
