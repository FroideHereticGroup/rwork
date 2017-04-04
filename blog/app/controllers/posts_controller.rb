class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
	end

	def create
		@post = Post.new(post_params)
		@post.save
		redirect_to @post 	# 自動的にshowアクションが呼ばれる
	end

	def show
		@post = Post.find(params[:id])
	end

	private

	# パラメータのどの値を取得したいかをコントローラーに明示する
	def post_params
		params.require(:post).permit(:title, :text)
	end
end
