class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
  
  def require_login
    redirect_to root_path if !current_user
  end

  def current_user
    session[:user]
  end

end
