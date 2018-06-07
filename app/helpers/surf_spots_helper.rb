module SurfSpotsHelper

  def surf_spots_for_select
    SurfSpot.all.collect { |p| [p.spot_full_name, p.id] }
  end

  def surf_spot_links
    SurfSpot.all.collect {|spot| link_to spot.spot_full_name, surf_spot_path(spot.id)}
  end

end
