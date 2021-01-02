class CommentsController < ApplicationController
  def index
    @comments = Comment.order("id DESC")
  end
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.valid?
      @comment.save
      redirect_to 'new_comment_path'
    else
      render 'new'
    end
    
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :email, :title, :content)
  end
end
