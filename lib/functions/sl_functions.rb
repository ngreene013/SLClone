module SlFunctions


  #get the latest report for given id
  # @param [integer] id - either the region_id for forecast or spot_id for report
  def self.get_json(id)
    response = Net::HTTP.get_response(set_report_uri(id)) #string 
    JSON.parse(response.body, symbolize_names: false)
  end



# resources: surf, analysis, tide, wind
  def self.set_report_uri(spot_or_region_id, days = 14, resources ='wind, surf, analysis, tide')
    URI("http://api.surfline.com/v1/forecasts/#{spot_or_region_id}?resources=#{resources}&days=#{days}&getAllSpots=false&units=e&interpolate=false&showOptimal=false")
  end


end