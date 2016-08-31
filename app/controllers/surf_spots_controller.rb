class SurfSpotsController < ApplicationController

  def index
    @surf_spots = SurfSpot.all

  end

  def show
    @surf_spot = SurfSpot.find(params['id'])
    @surf_spots = SurfSpot.all
  end

  def update_forecast
    respond_to do |format|
      format.js
    end
  end

  def update_report
    respond_to do |format|
      format.js
    end
  end

  private


end
