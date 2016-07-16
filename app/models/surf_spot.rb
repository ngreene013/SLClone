class SurfSpot < ActiveRecord::Base
  require 'functions/sl_functions'


  has_many :reports
  has_many :region_forecasts
  has_many :forecasts, through: :region_forecasts, foreign_key: :region_id

  def latest_report
    self.reports.last
  end

  def latest_forecast
    self.forecasts.last

  end

  def update_forecast
    pl = Payload.create_new_payload region_id
    fore_json = StringFunctions::transform_sl_keys! eval(pl.analysis)
    fore_json[:payload_id] = pl.id
    fore_json[:region_id] = pl.place_id
    self.forecasts.create fore_json
  end

  def live_cam
    SlFunctions.get_cam_uri self.spot_cam_name
  end

end
