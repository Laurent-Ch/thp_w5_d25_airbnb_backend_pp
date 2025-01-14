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

ActiveRecord::Schema.define(version: 2021_10_30_201307) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lodgments", force: :cascade do |t|
    t.integer "beds_nb"
    t.integer "price"
    t.text "description"
    t.boolean "has_wifi"
    t.text "welcome_message"
    t.bigint "city_id"
    t.bigint "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_lodgments_on_city_id"
    t.index ["owner_id"], name: "index_lodgments_on_owner_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "guest_id"
    t.bigint "rented_lodgment_id"
    t.date "start_date"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guest_id"], name: "index_reservations_on_guest_id"
    t.index ["rented_lodgment_id"], name: "index_reservations_on_rented_lodgment_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
