class ExhibitionsController < ApplicationController
  def index
    @exhibitions = Exhibition.all
  end

  def new
    @exhibitions = Exhibition.new
  end

  def create
    Exhibition.create(exhibition_params)
  end

  private
  def exhibition_params
    params.require(:exhibition).permit(:title, :description, :date, :place, :district_id, :category_id, :station, :price, :website, :images).merge(user_id: current_user.id)
  end
end
