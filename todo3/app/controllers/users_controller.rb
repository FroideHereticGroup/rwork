class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_filter :admin_required, :only => [:index, :destroy]
  before_filter :retrieve_user, :only => [ :show, :edit, :update]
  skip_before_filter :find_login_user, :only => [:new, :create]
  skip_before_filter :login_required, :only => [:new, :create]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(create_user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if @user.update_attributes(params[:user])
      redirect_to @user, :notice => 'User was successfully updated'
    else
      render 'edit'
    end
    # respond_to do |format|
    #   if @user.update(user_params)
    #     format.html { redirect_to @user, notice: 'User was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @user }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @user.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_user
    #   @user = User.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :birthday)
    end

    def create_user_params
      params.require(:user).permit(:name, :email, :birthday, :password, :password_confirmation)
    end

    def retrieve_user
      @user = User.find(params[:id])
      unless @login_user.adm? or @login_user.id = @user.id
        redirect_to user_path(@login_user)
      end
    end
end