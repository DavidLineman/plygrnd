class LocationsController < ApplicationController

  def index 
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    Location.create(location_params)
    redirect_to root_path
  end

  def location_params
    params.require(:location).permit(:name, :description, :address)
  end

end
