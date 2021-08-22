# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_22_001904) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "schedules", force: :cascade do |t|
    t.date "schedule_date", null: false
    t.time "start_time", null: false
    t.time "stop_time", null: false
    t.integer "reservation", null: false
    t.integer "participation", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "seminar_id"
    t.bigint "venue_id"
    t.index ["seminar_id"], name: "index_schedules_on_seminar_id"
    t.index ["venue_id"], name: "index_schedules_on_venue_id"
  end

  create_table "seminars", force: :cascade do |t|
    t.string "name", null: false
    t.string "style", null: false
    t.text "description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_seminars_on_name"
  end

  create_table "seminars_venues", force: :cascade do |t|
    t.bigint "seminar_id"
    t.bigint "venue_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["seminar_id"], name: "index_seminars_venues_on_seminar_id"
    t.index ["venue_id"], name: "index_seminars_venues_on_venue_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.string "tel"
    t.text "memo"
    t.text "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "postal_code", null: false
    t.index ["name"], name: "index_venues_on_name"
  end

  add_foreign_key "seminars_venues", "seminars"
  add_foreign_key "seminars_venues", "venues"
end
