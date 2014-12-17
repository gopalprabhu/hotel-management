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

ActiveRecord::Schema.define(version: 20141217141713) do

  create_table "levels", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.integer  "type_id"
    t.integer  "level_id"
    t.integer  "places"
    t.float    "price"
    t.float    "fee"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["level_id"], name: "index_locations_on_level_id"
  add_index "locations", ["type_id"], name: "index_locations_on_type_id"

  create_table "reservations", force: true do |t|
    t.integer  "location_id"
    t.date     "startDate"
    t.date     "endDate"
    t.integer  "reservationNumber"
    t.boolean  "deposit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservations", ["location_id"], name: "index_reservations_on_location_id"

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
