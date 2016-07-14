class Forecast < ActiveRecord::Base
  has_one :region
  has_many :surf_spots, through: :region
  belongs_to :payload

  def self.refresh(region_id)
    pl = Payload.create_new_payload region_id
    fore_json = StringFunctions::transform_sl_keys! eval(pl.analysis)
    fore_json[:payload_id] = pl.id
    fore_json[:region_id] = pl.place_id
    Forecast.create fore_json
  end



end
