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

ActiveRecord::Schema.define(version: 2020_11_12_055211) do

  create_table "kintaikintais", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.datetime "sdate", null: false
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_kintaikintais_on_user_id"
  end

  create_table "shihutos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "year1", null: false
    t.string "month1", null: false
    t.string "day1", null: false
    t.text "note1", null: false
    t.string "year2", null: false
    t.string "month2", null: false
    t.string "day2", null: false
    t.text "note2", null: false
    t.string "year3", null: false
    t.string "month3", null: false
    t.string "day3", null: false
    t.text "note3", null: false
    t.string "year4", null: false
    t.string "month4", null: false
    t.string "day4", null: false
    t.text "note4", null: false
    t.string "year5", null: false
    t.string "month5", null: false
    t.string "day5", null: false
    t.text "note5", null: false
    t.string "year6", null: false
    t.string "month6", null: false
    t.string "day6", null: false
    t.text "note6", null: false
    t.string "year7", null: false
    t.string "month7", null: false
    t.string "day7", null: false
    t.text "note7", null: false
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_shihutos_on_user_id"
  end

  create_table "tkintais", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.datetime "tdate", null: false
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_tkintais_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "tel", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "kintaikintais", "users"
  add_foreign_key "shihutos", "users"
  add_foreign_key "tkintais", "users"
end
