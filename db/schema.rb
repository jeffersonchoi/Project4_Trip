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

ActiveRecord::Schema.define(version: 20150702044045) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attractions", force: :cascade do |t|
    t.string   "attraction_name"
    t.string   "type"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "subtype"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "event_name"
    t.time     "event_start"
    t.time     "event_end"
    t.integer  "itinerary_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "events", ["itinerary_id"], name: "index_events_on_itinerary_id", using: :btree

  create_table "itineraries", force: :cascade do |t|
    t.integer  "attraction_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "itineraries", ["attraction_id"], name: "index_itineraries_on_attraction_id", using: :btree
  add_index "itineraries", ["user_id"], name: "index_itineraries_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "email"
    t.string   "password_digest"
    t.date     "date_of_birth"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "events", "itineraries"
  add_foreign_key "itineraries", "attractions"
  add_foreign_key "itineraries", "users"
end
