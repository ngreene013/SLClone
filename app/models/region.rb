class Region < ActiveRecord::Base
  has_many :forecasts
  has_many :surf_spots



end
