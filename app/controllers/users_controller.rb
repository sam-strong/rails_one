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
    redirect_to @users
  end
end
