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

ActiveRecord::Schema.define(version: 20170129065649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forecasts", force: :cascade do |t|
    t.string   "weathertext",            default: [],              array: true
    t.string   "surfmax",                default: [],              array: true
    t.string   "surftext",               default: [],              array: true
    t.string   "is_current"
    t.string   "units"
    t.string   "startdate_pretty_local"
    t.string   "startdate_pretty_gmt"
    t.string   "generaltext",            default: [],              array: true
    t.string   "generalcondition",       default: [],              array: true
    t.string   "surfmin",                default: [],              array: true
    t.string   "surfpeak",               default: [],              array: true
    t.string   "surfrange",              default: [],              array: true
    t.integer  "startdate_gmt"
    t.string   "canexceed",              default: [],              array: true
    t.string   "islola",                 default: [],              array: true
    t.datetime "startdate_local"
    t.integer  "region_id"
    t.integer  "place_id"
    t.integer  "payload_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "live_streams", force: :cascade do |t|
    t.integer  "surf_spot_id"
    t.string   "spot_cam_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "live_streams", ["surf_spot_id"], name: "index_live_streams_on_surf_spot_id", using: :btree

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
    t.string   "type"
    t.integer  "report_id"
    t.integer  "forecast_id"
    t.string   "place_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "surf_spot_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "posts", ["surf_spot_id"], name: "index_posts_on_surf_spot_id", using: :btree
  add_index "posts", ["user_id", "created_at"], name: "index_posts_on_user_id_and_created_at", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "region_forecasts", force: :cascade do |t|
    t.integer  "surf_spot_id"
    t.integer  "region_id"
    t.integer  "forecast_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "region_forecasts", ["forecast_id"], name: "index_region_forecasts_on_forecast_id", using: :btree
  add_index "region_forecasts", ["region_id"], name: "index_region_forecasts_on_region_id", using: :btree
  add_index "region_forecasts", ["surf_spot_id"], name: "index_region_forecasts_on_surf_spot_id", using: :btree

  create_table "reports", force: :cascade do |t|
    t.string   "su_report_unix_time"
    t.integer  "startdate_gmt"
    t.string   "video_url"
    t.string   "image_urls",             default: [],              array: true
    t.string   "surfrange",              default: [],              array: true
    t.string   "surfmin",                default: [],              array: true
    t.string   "is_current"
    t.string   "surftext",               default: [],              array: true
    t.string   "report_time"
    t.string   "startdate_pretty_gmt"
    t.string   "reporter"
    t.string   "occasional"
    t.string   "units"
    t.string   "su_report_time"
    t.string   "surfpeak",               default: [],              array: true
    t.string   "report_day"
    t.string   "reportdate"
    t.string   "report_period"
    t.string   "islola",                 default: [],              array: true
    t.string   "short_term_forecast"
    t.string   "greeting"
    t.string   "weathertext",            default: [],              array: true
    t.string   "is_external"
    t.string   "canexceed",              default: [],              array: true
    t.string   "surfmax",                default: [],              array: true
    t.string   "generalcondition",       default: [],              array: true
    t.string   "regional_summary"
    t.datetime "startdate_local"
    t.string   "startdate_pretty_local"
    t.string   "generaltext",            default: [],              array: true
    t.integer  "surf_spot_id"
    t.integer  "payload_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "forecastertitle"
    t.string   "forecasteremail"
  end

  create_table "surf_spots", force: :cascade do |t|
    t.integer  "region_id"
    t.string   "spot_full_name"
    t.string   "spot_city_name"
    t.string   "spot_cam_name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "live_streams", "surf_spots"
  add_foreign_key "posts", "surf_spots"
  add_foreign_key "posts", "users"
end
