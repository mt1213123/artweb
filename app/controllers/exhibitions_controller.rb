class ExhibitionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, only: [:new, :create, :destroy]

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
  end

  def destroy
    @exhibition = Exhibition.find(params[:id])
      if current_user.id == @exhibition.user_id
        @exhibition.destroy
        redirect_to root_path
      end
  end

  private
  def exhibition_params
    params.require(:exhibition).permit(:title, :description, :date, :place, :district_id, :category_id, :station, :price, :website, :image).merge(user_id: current_user.id)
  end
end
