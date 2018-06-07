class SurfSpotsController < ApplicationController

  def index
    @surf_spots = SurfSpot.all

  end

  # sets the spot it and gets the list of available spots
  def show
    @surf_spot = SurfSpot.find(params['id'])
    @surf_spots = SurfSpot.all
  end

  def update_forecast
    @surf_spot = SurfSpot.find(params['id'])
    respond_to do |format|
      format.js
    end
  end

  def update_report
    @surf_spot = SurfSpot.find(params['id'])
    respond_to do |format|
      format.js
    end
  end

  private


end
