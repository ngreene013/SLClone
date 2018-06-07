class CreateReports < ActiveRecord::Migration
  def up
    create_table :reports do |t|
      t.string :su_report_unix_time
      t.integer :startdate_gmt
      t.string :video_url
      t.string :image_urls, array: true, default: []
      t.string :surfrange, array: true, default: []
      t.string :surfmin, array: true, default: []
      t.string :is_current
      t.string :surftext, array: true, default: []
      t.string :report_time
      t.string :startdate_pretty_gmt
      t.string :reporter
      t.string :occasional
      t.string :units
      t.string :su_report_time
      t.string :surfpeak, array: true, default: []
      t.string :report_day
      t.string :reportdate
      t.string :report_period
      t.string :islola, array: true, default: []
      t.string :short_term_forecast
      t.string :greeting
      t.string :weathertext, array: true, default: []
      t.string :is_external
      t.string :canexceed, array: true, default: []
      t.string :surfmax, array: true, default: []
      t.string :generalcondition, array: true, default: []
      t.string :regional_summary
      t.datetime :startdate_local
      t.string :startdate_pretty_local
      t.string :generaltext, array: true, default: []

      t.integer :surf_spot_id # has one surf spot
      t.integer :payload_id # belongs to payload

      t.timestamps null: false
    end
  end
end
