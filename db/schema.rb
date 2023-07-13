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

ActiveRecord::Schema[7.0].define(version: 2023_07_12_202052) do
  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dealers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "contact"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales", force: :cascade do |t|
    t.integer "dealer_id", null: false
    t.integer "customer_id", null: false
    t.integer "watch_id", null: false
    t.date "sale_date"
    t.integer "sale_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_sales_on_customer_id"
    t.index ["dealer_id"], name: "index_sales_on_dealer_id"
    t.index ["watch_id"], name: "index_sales_on_watch_id"
  end

  create_table "watches", force: :cascade do |t|
    t.integer "dealer_id", null: false
    t.string "name"
    t.string "brand"
    t.decimal "price"
    t.string "image_url"
    t.string "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dealer_id"], name: "index_watches_on_dealer_id"
  end

  add_foreign_key "sales", "customers"
  add_foreign_key "sales", "dealers"
  add_foreign_key "sales", "watches"
  add_foreign_key "watches", "dealers"
end
