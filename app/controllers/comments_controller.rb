class CommentsController < ApplicationController
  def index
    @comments = Comment.order("id DESC")
  end
  def new
    @comment = Comment.new
  end

  def create
    binding.pry
    Comment.create(comment_params)
  end

  private
  def comment_params
    binding.pry
    params.require(:comment).permit(:name, :email, :title, :content)
  end
end
