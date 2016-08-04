class SurfSpotsController < ApplicationController

  before_action :authenticate_user!


  def index
    @surf_spots = SurfSpot.all
  end

  def show
    @surf_spots = SurfSpot.all
    @surf_spot = SurfSpot.find(params['id'])
  end

  def update_forecast
    @surf_spot = SurfSpot.find(params['id'])
    @surf_spot.update_forecast
    respond_to do |format|
      format.js
    end
  end

  def update_report
    @surf_spot = SurfSpot.find(params['id'])
    @surf_spot.update_report
#    render :show
    respond_to do |format|
      format.js
    end
  end

end
