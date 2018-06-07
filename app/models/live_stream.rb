class LiveStream < ActiveRecord::Base
  belongs_to :surf_spot
  BASE_CAM_URI = 'http://mobile.surfline.com/modules/report/cameras/ios/ioscamera.html?mediaURL=http%3A%2F%2Flivestream.cdn-surfline.com%2Fcdn-live%2F_definst_%2Fsurfline%2Fsecure%2Flive%2Fwc-'
  CAM_URI_CLOSE = '.smil%2Fplaylist.m3u8%3Fe%3D0%26h%3D7f0f3b84ed45398cb300bec7defa41ab%26bgsecuredir'


  def live_stream_url
    latest_pic = "%3D1&startImage=http%3A%2F%2Fcamstills.cdn-surfline.com%2F#{spot_cam_name}%2Flatest_full.jpg"
    BASE_CAM_URI + spot_cam_name + CAM_URI_CLOSE + latest_pic
  end



end
