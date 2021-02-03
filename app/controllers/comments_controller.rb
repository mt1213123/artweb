class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to "/exhibitions/#{@comment.exhibition.id}"
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, exhibition_id: params[:exhibition_id])
  end
end
