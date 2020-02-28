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

ActiveRecord::Schema.define(version: 2020_02_26_055905) do

  create_table "brands", force: :cascade do |t|
    t.string "name", limit: 50
    t.string "website"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "car_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string "name", limit: 50
    t.integer "brand_id", null: false
    t.integer "model_id", null: false
    t.integer "version_id", null: false
    t.integer "car_type_id", null: false
    t.decimal "rto_price"
    t.decimal "on_road_price"
    t.decimal "total_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "active"
    t.index ["brand_id"], name: "index_cars_on_brand_id"
    t.index ["car_type_id"], name: "index_cars_on_car_type_id"
    t.index ["model_id"], name: "index_cars_on_model_id"
    t.index ["version_id"], name: "index_cars_on_version_id"
  end

  create_table "models", force: :cascade do |t|
    t.string "name"
    t.integer "brand_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_models_on_brand_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id", null: false
    t.decimal "on_road_price"
    t.decimal "rto_price"
    t.decimal "total_price"
    t.string "payment_methods"
    t.string "payment_id"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", limit: 50
    t.date "brith_date"
    t.string "email", limit: 50
    t.string "pincode", limit: 6
    t.string "gender", limit: 1
    t.string "phone", limit: 15
    t.string "city", limit: 50
    t.string "state", limit: 50
    t.string "country", limit: 50
    t.string "adress", limit: 50
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "versions", force: :cascade do |t|
    t.string "name"
    t.integer "model_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["model_id"], name: "index_versions_on_model_id"
  end

  add_foreign_key "cars", "brands"
  add_foreign_key "cars", "car_types"
  add_foreign_key "cars", "models"
  add_foreign_key "cars", "versions"
  add_foreign_key "models", "brands"
  add_foreign_key "orders", "users"
  add_foreign_key "versions", "models"
end
