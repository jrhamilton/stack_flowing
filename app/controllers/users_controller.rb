class UsersController < ApplicationController

  before_filter :authorize, except: [:index]

  def index
    @users = User.all
    render 'index'
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @user.remove_admin
      show
    else
      flash[:alert] = "User not added."
      redirect_to '/users/new'
    end
  end

  def show
    if !@user
      @user = User.find({:id => params[:id]})
    end
    render 'show'
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
