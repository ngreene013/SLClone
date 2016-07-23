class SurfSpotsController < ApplicationController

  before_action :authenticate_user!


  def index
    @surf_spots = SurfSpot.all
  end

  def show
    @surf_spot = SurfSpot.find(params['id'])
  end

  def update_forecast
    @surf_spot = SurfSpot.find(params['id'])
    @surf_spot.update_forecast
    render 'show'
  end

end
