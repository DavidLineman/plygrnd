class LocationsController < ApplicationController

  def index 
    @locations = Location.all
  end

  def new
    @location = location.new
  end

end
