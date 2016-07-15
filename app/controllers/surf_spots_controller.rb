class SurfSpotsController < ApplicationController

  def index
    @surf_spots = SurfSpot.all
  end

  def show
    @surf_spot = SurfSpot.find(params['id'])
  end

end
