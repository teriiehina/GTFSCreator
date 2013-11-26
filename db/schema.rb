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

ActiveRecord::Schema.define(version: 20131126134750) do

  create_table "agencies", force: true do |t|
    t.string   "agency_id",       null: false
    t.string   "agency_name",     null: false
    t.string   "agency_url",      null: false
    t.string   "agency_timezone", null: false
    t.string   "agency_lang",     null: false
    t.string   "agency_phone",    null: false
    t.string   "agency_fare_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "calendars", force: true do |t|
    t.string   "service_id"
    t.string   "monday"
    t.string   "tuesday"
    t.string   "wednesday"
    t.string   "thursday"
    t.string   "friday"
    t.string   "saturday"
    t.string   "sunday"
    t.string   "start_date"
    t.string   "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", force: true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories"

  create_table "routes", force: true do |t|
    t.string   "route_id"
    t.string   "agency_id"
    t.string   "route_short_name"
    t.string   "route_long_name"
    t.string   "route_desc"
    t.string   "route_type"
    t.string   "route_url"
    t.string   "route_color"
    t.string   "route_text_color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stop_times", force: true do |t|
    t.string   "trip_id"
    t.string   "arrival_time"
    t.string   "departure_time"
    t.string   "stop_id"
    t.string   "stop_sequence"
    t.string   "stop_headsign"
    t.string   "pickup_type"
    t.string   "drop_off_type"
    t.string   "shape_dist_traveled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stops", force: true do |t|
    t.string   "stop_id",             null: false
    t.string   "stop_code"
    t.string   "stop_name",           null: false
    t.string   "stop_desc"
    t.string   "stop_lat",            null: false
    t.string   "stop_lon",            null: false
    t.string   "stop_url"
    t.string   "stop_timezone"
    t.string   "zone_id"
    t.string   "location_type"
    t.string   "parent_station"
    t.string   "wheelchair_boarding"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips", force: true do |t|
    t.string   "route_id"
    t.string   "service_id"
    t.string   "trip_id"
    t.string   "trip_headsign"
    t.string   "trip_short_name"
    t.string   "direction_id"
    t.string   "block_id"
    t.string   "shape_id"
    t.string   "wheelchair_accessible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
