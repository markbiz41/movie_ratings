 class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :current_user

  def authenticate_admin_user!
    redirect_to root_path if !signed_in? || !current_user.admin?
  end

  helper_method :signed_in?, :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    if @current_user
      logger.debug "Currently using #{@current_user.id}"
    else
      logger.debug "No user is signed in"
    end
    return @current_user
  end

  def signed_in?
    return true if current_user
  end
end
