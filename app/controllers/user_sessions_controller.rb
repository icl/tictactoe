class UserSessionsController < ApplicationController

  def create
    session[:user] = User.login(params[:login])
    redirect_to root_path and return
  end

  def destroy
    session[:user] = nil
  end

end
