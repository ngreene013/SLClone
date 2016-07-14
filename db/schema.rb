# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160714005058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "payloads", force: :cascade do |t|
    t.string   "timezonestring"
    t.string   "lat"
    t.integer  "timezone"
    t.string   "analysis",       default: "--- []\n"
    t.string   "data",           default: "--- []\n"
    t.string   "json",           default: "--- []\n"
    t.string   "tide",           default: "--- []\n"
    t.string   "wind",           default: "--- []\n"
    t.string   "hourlywind",     default: "--- []\n"
    t.string   "hireswind",      default: "--- []\n"
    t.string   "_metadata",      default: "--- []\n"
    t.string   "surf",           default: "--- []\n"
    t.string   "thewalue"
    t.string   "name"
    t.string   "lon"
    t.string   "location"
    t.integer  "location_id"
    t.string   "new_hd_cam"
    t.integer  "report_id"
    t.integer  "forecast_id"
    t.string   "place_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "regions", force: :cascade do |t|
    t.integer  "surf_spot_id"
    t.integer  "region_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "surf_spots", force: :cascade do |t|
    t.integer  "region_id"
    t.string   "spot_full_name"
    t.string   "spot_city_name"
    t.string   "spot_cam_name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
