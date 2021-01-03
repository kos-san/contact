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
      @this_comment = comment_params
    else
      render 'new'
    end
    
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :email, :title, :content)
  end
end
