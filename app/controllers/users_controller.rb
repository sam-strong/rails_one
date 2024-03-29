class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to @user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url
  end

  def comments
    @users = User.all
  end

end
