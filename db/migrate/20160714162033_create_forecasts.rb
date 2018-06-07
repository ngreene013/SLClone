class CreateForecasts < ActiveRecord::Migration
  # Forecast is found in Analysis of a region_id
  def up
    create_table :forecasts do |t|

      t.string :weathertext, array: true, default: [] #/
      t.string :surfmax, array: true, default: [] #/
      t.string :surftext, array: true, default: []#/
      t.string :is_current #/
      t.string :units
      t.string :startdate_pretty_local
      t.string :startdate_pretty_gmt
      t.string :generaltext, array: true, default: []
      t.string :generalcondition, array: true, default: []
      t.string :surfmin, array: true, default: []
      t.string :surfpeak, array: true, default: []
      t.string :surfrange, array: true, default: []
      t.integer :startdate_gmt
      t.string :canexceed, array: true, default: []
      t.string :islola, array: true, default: []
      t.datetime :startdate_local

      t.integer :region_id
      t.integer :place_id
      t.integer :payload_id

      t.timestamps null: false
    end
  end

  def down
    drop_table :forecasts
  end
end
