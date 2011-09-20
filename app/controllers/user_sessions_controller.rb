class UserSessionsController < ApplicationController

  def create
    session[:user] = User.login(params[:login])
  end

  def destroy
    session[:user] = nil
  end

end
