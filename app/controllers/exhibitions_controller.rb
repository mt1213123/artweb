class ExhibitionsController < ApplicationController
  def index
    @exhibitions = Exhibition.all
  end

  def new
  end
end
