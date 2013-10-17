class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def new
    @house = House.new
  end

  def create
    House.create(params[:house])
    redirect_to('/houses')
  end

end
