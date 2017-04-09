class PostsController < ApplicationController
	http_basic_authenticate_with name:"takumi", password: "3516", except: [:index, :show]
	before_action :set_posts, only: [:show, :update, :edit, :destroy]

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)

		if @post.save
			redirect_to @post 	# 自動的にshowアクションが呼ばれる
		else
			render :new, status: :unprocessable_entity
		end
	end

	def show
	end

	def edit
	end

	def update
		if @post.update(post_params)
			redirect_to @post
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		@post.destroy

		redirect_to posts_path
	end

	private

	def set_posts
		@post = Post.find(params[:id])
	end

	# パラメータのどの値を取得したいかをコントローラーに明示する
	def post_params
		params.require(:post).permit(:title, :text)
	end
end
