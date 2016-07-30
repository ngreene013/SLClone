require 'rails_helper'

RSpec.describe SurfSpotsController, type: :controller do
  before :each do
    entry = ['North Ocean Beach', 'San Francisco', 'oceanbeachncam', 4127, 2957],
        @spot = SurfSpot.create(spot_full_name: 'North Ocean Beach', spot_cam_name: 'San Francisco', id: 4127, region_id: 2957)

  end

  describe 'refresh forecast' do

    it 'refreshes the forecast' do
      get update_forecast_path(id: 4127)

    end

  end

end
