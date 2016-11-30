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

ActiveRecord::Schema.define(version: 20161130014828) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "permalink"
    t.index ["permalink"], name: "index_categories_on_permalink"
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "category_id"
    t.integer  "region_id"
    t.integer  "topic_id"
    t.datetime "start"
    t.datetime "end"
    t.string   "organizer"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.string   "website"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.text     "location_details"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "permalink"
    t.float    "latitude"
    t.float    "longitude"
    t.index ["category_id"], name: "index_events_on_category_id"
    t.index ["permalink"], name: "index_events_on_permalink"
    t.index ["region_id"], name: "index_events_on_region_id"
    t.index ["topic_id"], name: "index_events_on_topic_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "permalink"
    t.index ["permalink"], name: "index_regions_on_permalink"
  end

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "permalink"
    t.index ["permalink"], name: "index_topics_on_permalink"
  end

end
