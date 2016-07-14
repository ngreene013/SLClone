class SurfSpot < ActiveRecord::Base
  has_many :reports
  has_one :region

  def latest_report
    self.reports.last
  end

end
