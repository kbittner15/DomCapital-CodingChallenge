class CommentsController < ApplicationController
  http_basic_authenticate_with name: "name", password: "password", only: :destroy



  def create
    @post = Post.find(params[:post_id])
    def comment_params
      params.require(:comment).permit(:commenter, :content)
    end
    @comment = @post.comments.create(params[:comment].permit(:commenter, :content))
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
end
