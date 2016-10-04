class SessionsController < ApplicationController
  def login
  end

  def destroy
    if user = current_user
      session[:id] = nil
      redirect_to root_path
        flash[:info] = "#{user.username.titleize} has been logged out."
    end
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:id] = user.id
      redirect_to root_path
       flash[:info] = "Welcome back #{user.username.titleize}"
    else
      flash[:danger] = "Invalid email or password"
      render :login
    end
  end
end
