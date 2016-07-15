class CreateRegionForecasts < ActiveRecord::Migration
  def change
    create_table :region_forecasts do |t|
      #t.integer :surf_spot_id
      #t.integer :forecast_id
      t.belongs_to :surf_spot, index: true
      t.belongs_to :forecast, index: true

      t.timestamps null: false
    end
  end
end
