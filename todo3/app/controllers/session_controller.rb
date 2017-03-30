class SessionController < ApplicationController

  skip_before_filter :find_login_user, :only=> [:new, :create]

  def new
  end

  def create
    @email = params[:email]
    @password = params[:password]
    @user = User.authenticate(@email, @password)
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインに成功しました。"
      if @user.adm?
        redirect_to users_path
      else
        redirect_to user_path(@user)
      end
    else
      @error = "ログインに失敗しました。"
      render :action => :new
    end
  end

  def destroy
    reset_session
    redirect_to root_url
  end
end
