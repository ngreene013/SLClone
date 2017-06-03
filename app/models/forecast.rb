class Forecast < ActiveRecord::Base

  has_many :region_forecasts
  has_many :surf_spots, through: :region_forecasts
  belongs_to :payload

  def self.refresh(region_id)
    pl = Payload.create_new_payload region_id
    fore_json = StringFunctions::transform_sl_keys! eval(pl.analysis)
    fore_json[:payload_id] = pl.id
    fore_json[:region_id] = pl.place_id
    Forecast.create fore_json
  end



  def self.display_day(surfrange_string)
    regex = /\d{1,2}\/\d{1,2}\/\d{4}/
    date = surfrange_string[regex] #.strftime("%A")
    Date.strptime("{ #{date}}", "{ %m/%d/%Y }").strftime('%A')
  end


  #return an array of data for tiles formatted as html table contents
  def forecast_tiles(days=14)

    #tiles = []
    #(0...days).each do |day|
  #    tiles << self.generalcondition[day] #.gsub(' ', '-'),
      #tiles << "<td><div class='forecast-tile-day #{self.generalcondition[day].gsub(' ', '-')}' title='#{self.generaltext[day]}'>
    #    <div class='forecast-day'>#{Forecast.display_day(self.surfrange[day])}</div>
  #      <p>#{self.generalcondition[day].humanize}</p>
#        #{self.surfrange[day].humanize}
        #<p>#{self.surftext[day].humanize}.<br></p>
        #<p>#{self.generaltext[day]}<td>"
  #  end
    #tiles.join('').html_safe || 'sorry, no forecast here'
    forecast = self
  end



end
