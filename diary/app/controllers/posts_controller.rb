class PostsController < ApplicationController
  http_basic_authenticate_with name: "takumi", password: "3516", except: [:index, :show]
  #詳細と、最初の画面以外はhttp認証が必要になる

  def new
    @post = Post.new
  end

  def index
    @post = Post.all
  end

  def create
    @post = Post.new(post_params)
    #バリテーションがうまくいくかどうかで必要になってくる
    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :text)
  end
end