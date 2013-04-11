class CommentsController < ApplicationController

  def index
    @comments = Comment.all
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @comment = Comment.find(params[:id])
  end

  def edit
    @user = User.find(params[:user_id])
    @comment = @user.comments.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @comment = @user.comments.find(params[:id])
    @comment.update_attributes(params[:comment])
    redirect_to user_comments_path(@user)
  end

  def new
    @user = User.find(params[:user_id])
    redirect_to user_path(@user)
  end

  def create
    @user = User.find(params[:user_id])
    @comment = @user.comments.create(params[:comment])
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to user_comments_path(@user)
  end
end
