class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?
  before_filter :ensure_login, only: [:new, :edit, :destroy]
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  private
  def ensure_login
    logged_in?
  end
end
