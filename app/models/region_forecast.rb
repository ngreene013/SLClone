class RegionForecast < ActiveRecord::Base

  belongs_to :surf_spot, :foreign_key => :region_idra
  belongs_to :forecast


end
