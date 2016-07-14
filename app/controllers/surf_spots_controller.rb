class SurfSpotsController < ApplicationController

  def index
    @surf_spots = SurfSpot.all
  end


end
