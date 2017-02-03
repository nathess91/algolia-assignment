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

ActiveRecord::Schema.define(version: 20170131025811) do

  create_table "restaurants", force: :cascade do |t|
    t.integer  "objectID"
    t.string   "food_type"
    t.decimal  "stars_count"
    t.integer  "reviews_count"
    t.string   "neighborhood"
    t.string   "phone_number"
    t.string   "price_range"
    t.string   "dining_style"
    t.string   "name"
    t.string   "address"
    t.string   "area"
    t.string   "city"
    t.string   "country"
    t.string   "image_url"
    t.string   "mobile_reserve_url"
    t.string   "phone"
    t.string   "postal_code"
    t.integer  "price"
    t.string   "reserve_url"
    t.string   "state"
    t.string   "_geoloc"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "payment_options"
  end

end
