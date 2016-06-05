# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160605211032) do

  create_table "clinical_organizations", force: :cascade do |t|
    t.string   "name"
    t.integer  "size"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clinical_users", force: :cascade do |t|
    t.string   "name"
    t.integer  "ein"
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.string   "role"
    t.string   "telephone"
    t.integer  "organizationID"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_index "clinical_users", ["email"], name: "index_clinical_users_on_email", unique: true

  create_table "favorites", force: :cascade do |t|
    t.integer  "productID"
    t.integer  "userID"
    t.string   "userEmail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "vendorID"
    t.string   "name"
    t.string   "type"
    t.float    "price"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "SKU"
    t.string   "manufacturer"
    t.string   "features"
    t.string   "research"
    t.integer  "depth"
    t.integer  "width"
    t.integer  "height"
    t.integer  "warranty"
    t.integer  "vendor_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "clinicalID"
    t.integer  "rating"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["product_id"], name: "index_reviews_on_product_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "vendor_organizations", force: :cascade do |t|
    t.string   "name"
    t.integer  "organizationID"
    t.string   "address"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "vendor_users", force: :cascade do |t|
    t.string   "name"
    t.integer  "ein"
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.string   "role"
    t.string   "telephone"
    t.integer  "organizationID"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_index "vendor_users", ["email"], name: "index_vendor_users_on_email", unique: true

end
