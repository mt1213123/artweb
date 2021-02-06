class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to "/exhibitions/#{@comment.exhibition.id}"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @exhibition = Exhibition.find(params[:exhibition_id])
      if current_user.id == @comment.user_id
        @comment.destroy
        redirect_to "/exhibitions/#{@comment.exhibition.id}"
      end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, exhibition_id: params[:exhibition_id])
  end
end
