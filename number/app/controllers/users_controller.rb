class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    params.permit!
    @user = User.new(params[:user])
    if @user.save
      redirect_to users_url
    else
      render :action => :new
    end
  end

  def update
    params.permit!
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to users_url
    else
      render :action => :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to user_url
  end
end
