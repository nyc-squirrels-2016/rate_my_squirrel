class UsersController < ApplicationController
  skip_before_action :ensure_login, only: :new

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.authenticate(params[:user][:password_confirmation]) && @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :hometown, :bio, :password)
  end
end
