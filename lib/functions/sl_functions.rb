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


  BASE_CAM_URI = 'http://mobile.surfline.com/modules/report/cameras/ios/ioscamera.html?mediaURL=http%3A%2F%2Flivestream.cdn-surfline.com%2Fcdn-live%2F_definst_%2Fsurfline%2Fsecure%2Flive%2Fwc-'
  CAM_URI_CLOSE = '.smil%2Fplaylist.m3u8%3Fe%3D0%26h%3D7f0f3b84ed45398cb300bec7defa41ab%26bgsecuredir'

  #latest fullpic by spot_cam_name
  #http://camstills.cdn-surfline.com/obsfsouthcam/latest_full.jpg

  def self.get_cam_uri(spot_cam)
    BASE_CAM_URI + spot_cam + CAM_URI_CLOSE
  end

end