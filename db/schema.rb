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

ActiveRecord::Schema[7.0].define(version: 2022_04_16_220345) do
  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "foreignname_id", null: false
    t.index ["foreignname_id"], name: "index_countries_on_foreignname_id"
  end

  create_table "foreignnames", force: :cascade do |t|
    t.string "first_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.integer "counter", default: 0
    t.string "nick_name"
    t.string "prefix"
    t.string "full_name"
    t.string "origin"
    t.index ["nick_name"], name: "index_foreignnames_on_nick_name"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "qty"
    t.decimal "price", precision: 5, scale: 2
    t.integer "status"
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  add_foreign_key "countries", "foreignnames"
  add_foreign_key "products", "categories"
end
