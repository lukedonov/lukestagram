class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
  end

  def create
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id 
      redirect_to '/posts'
    else
      redirect_to '/posts'
    end
  end

  def login
  end

  def welcome
  end

  def page_requires_login
  end

  def destroy
    reset_session
    redirect_to posts_url
  end
end
