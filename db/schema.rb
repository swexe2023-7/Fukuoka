# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_01_16_143125) do
  create_table "reservations", force: :cascade do |t|
    t.integer "tourist"
    t.integer "spot_id"
    t.integer "guests"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tour_id"
    t.integer "tourist_id"
  end

  create_table "spots", force: :cascade do |t|
    t.string "name"
    t.binary "picture"
    t.integer "area"
    t.integer "age"
    t.integer "number_of_people"
    t.integer "purpose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.string "address2"
    t.binary "picture2"
    t.string "detail"
    t.integer "pictureinfo"
    t.integer "pictureinfo2"
  end

  create_table "tourists", force: :cascade do |t|
    t.string "uid"
    t.string "pass"
    t.integer "visit_count"
    t.integer "reservation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tours", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "age"
    t.integer "number_of_people"
    t.integer "area"
    t.string "schedule"
  end

  create_table "tourspots", force: :cascade do |t|
    t.integer "tour_id"
    t.integer "spot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "welcomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
