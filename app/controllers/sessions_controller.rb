class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/', notice: "Welcome"
    else
      flash[:alert] = "Email or is invalid"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/', notice: "Logged out"
  end

end
