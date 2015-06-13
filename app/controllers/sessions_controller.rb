class SessionsController < ApplicationController
  
  def new
  end

  def create
    @user = User.where(username: params[:username]).first
    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
      flash[:notice] = "Welcome, #{@user.username}."
    else
      flash[:alert] = "Please re-login."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You logged out."
    redirect_to root_path
  end

end