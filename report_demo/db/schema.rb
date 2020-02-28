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

ActiveRecord::Schema.define(version: 2020_01_30_045456) do

  create_table "contacts", force: :cascade do |t|
    t.string "contact", limit: 100
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contacts_users", force: :cascade do |t|
    t.integer "contact_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contact_id"], name: "index_contacts_users_on_contact_id"
    t.index ["user_id"], name: "index_contacts_users_on_user_id"
  end

  create_table "emails", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "domain"
  end

  create_table "emails_users", force: :cascade do |t|
    t.integer "email_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email_id"], name: "index_emails_users_on_email_id"
    t.index ["user_id"], name: "index_emails_users_on_user_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string "name", limit: 100
    t.integer "user_id"
    t.integer "reportble_id"
    t.string "reportble_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", limit: 100
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "contacts_users", "contacts"
  add_foreign_key "contacts_users", "users"
  add_foreign_key "emails_users", "emails"
  add_foreign_key "emails_users", "users"
end
