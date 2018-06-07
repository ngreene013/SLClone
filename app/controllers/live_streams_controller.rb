class LiveStreamsController < ApplicationController

  def show
    puts "in LiveStream show with params[id]: #{params['id']}"
    #@live_stream = LiveStream.find(params['id'])
        #SlFunctions.get_cam_uri self.spot_cam_name

  end


end
