class SurfSpot < ActiveRecord::Base
  has_many :reports
  has_one :region
  has_many :forecasts, through: :region


  def latest_report
    self.reports.last || 'sorry, no reports'
  end

  def latest_forecast
    self.region.forecasts.last || 'sorry, no forecasts'
  end

end
