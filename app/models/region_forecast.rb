class RegionForecast < ActiveRecord::Base

  belongs_to :surf_spot, :foreign_key => :region_id
  belongs_to :forecast, :foreign_key => :region_id


end
