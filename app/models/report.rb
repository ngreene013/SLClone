class Report < ActiveRecord::Base

  belongs_to :payload
  has_one :surf_spot

  def self.refresh(spot_id)
    pl = Payload.create_new_payload spot_id
    rpt_json = StringFunctions::transform_sl_keys! eval(pl.analysis)
    rpt_json[:payload_id] = pl.id
    rpt_json[:surf_spot_id] = pl.place_id
    Report.create rpt_json
  end




end
