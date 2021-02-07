class ExhibitionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, only: [:new, :create, :destroy, :edit, :update]

  def index
    @exhibition = Exhibition.all
  end

  def new
    @exhibition = Exhibition.new
  end

  def create
    @exhibition = Exhibition.new(exhibition_params)
    if @exhibition.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @exhibition = Exhibition.find(params[:id])
    @comment = Comment.new
    @comments = @exhibition.comments.includes(:user)
  end

  def edit
    @exhibition = Exhibition.find(params[:id])
    redirect_to root_path unless current_user.id == @exhibition.user_id
  end

  def update
    @exhibition = Exhibition.find(params[:id])
    if current_user.id == @exhibition.user_id
      @exhibition.update(exhibition_params)
      redirect_to exhibition_path
    else
      render :edit
    end
  end


  def destroy
    @exhibition = Exhibition.find(params[:id])
      if current_user.id == @exhibition.user_id
        @exhibition.destroy
        redirect_to root_path
      end
  end

  def search
    @exhibitions = Exhibition.search(params[:keyword])
  end

  private
  def exhibition_params
    params.require(:exhibition).permit(:title, :description, :date, :place, :district_id, :category_id, :station, :price, :website, :image).merge(user_id: current_user.id)
  end
end
