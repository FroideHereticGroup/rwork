class TasksController < ApplicationController
  before_filter :retrieve_user

  def find_task
    @task = @user.tasks.find(params[:id])
  end

  def index
    # @name = params[:name]
    # @tasks = Task.like_name(@name).order(params[:priority])
    @tasks = @user.tasks
  end

  # def sort
  #   @task = Task.find(params[:id])
  #   @task.order(params[:priority], ASC)
  # end

  def new
    @task = @user.tasks.build
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    params.permit!
    @task = @user.tasks.build(params[:task])
    if @task.save
      redirect_to user_tasks_url(@user)
    else
      render :action => :new
    end
    # params.permit!
    # @task = Task.new(params[:task])    #最初に入れた入力を元にインスタンスを生成
    # if @task.save   #DBへの保存（自動的にINSERTが発行される）
    #   redirect_to tasks_url
    # else  #保存できなかった時
    #   render :action => :new  #新しい画面に戻っても前に入力した情報を保持している
    # end
  end

  def update
    params.permit!
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task])
      redirect_to user_tasks_url(@user)
    else
      render :action => :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to user_tasks_url(@user)   #これを指定してあげないと画面上でエラーが表示される
  end

  private
  def retrieve_user
    unless @user = User.where(:id => params[:user_id]).first and (@login_user.adm? or @login_user.id == @user.id)
      redirect_to user_path(@login_user)
    end
  end
end
