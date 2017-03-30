class CommentsController < ApplicationController
  http_basic_authenticate_with name: "takumi", password: "3516", only: :destroy
  #削除の時だけhttp認証を必要とするようにした

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)

    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy

    redirect_to post_path(@post)
  end


  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
