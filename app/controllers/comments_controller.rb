class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def show
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment Successfuly Added"
      redirect_to posts_path
    else
      render :new
    end
  end




private
  def comment_params
    params.require(:comment).permit(:comment_text)
  end
end
