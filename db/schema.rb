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

ActiveRecord::Schema.define(version: 2020_12_09_022904) do

  create_table "makeups", force: :cascade do |t|
    t.string "product_name"
    t.string "product_type"
    t.string "skin_type"
    t.string "skin_tone"
    t.string "brand"
    t.string "shade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "stars"
    t.integer "makeup_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["makeup_id"], name: "index_reviews_on_makeup_id"
  end

  add_foreign_key "reviews", "makeups"
end
