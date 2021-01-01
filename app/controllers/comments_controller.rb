class CommentsController < ApplicationController
  def index
    @comments = Comment.order("id DESC")
  end



  def new
  end
end
