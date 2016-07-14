class CreatePayloads < ActiveRecord::Migration
  #Payload represents the json downloaded
  def up
    create_table :payloads do |t|
      t.string :timezonestring
      t.string :lat
      t.integer :timezone
      t.string :analysis, :data, :json, default: []
      t.string :tide, :data, :json, default: []
      t.string :wind, :data, :json, default: []
      t.string :hourlywind, :data, :json, default: []
      t.string :hireswind, :data, :json, default: []
      t.string :_metadata, :data, :json, default: []
      t.string :surf, :data, :json, default: []
      t.string :thewalue
      t.string :name
      t.string :lon
      t.string :location
      t.integer :location_id
      t.string :new_hd_cam

      t.string :type
      t.integer :report_id
      t.integer :forecast_id
      t.string :place_id #id can be region_id or spot_id

      t.timestamps null: false
    end
  end

  def down
    drop_table :payloads
  end
end
#    "timezonestring",
#    "location",
#    "lat",
#    "new_hd_cam",
#    "timezone",
#    "analysis",
#    "_metadata",
#    "thewalue",
#    "name",
#    "id",
#    "lon"
