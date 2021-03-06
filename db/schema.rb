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

ActiveRecord::Schema.define(version: 20170704154353) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "last_name"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "appraisals", force: :cascade do |t|
    t.string   "neighborhood"
    t.integer  "min_price"
    t.integer  "max_price"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "features", force: :cascade do |t|
    t.string   "feature"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "property_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "body"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "slug"
    t.boolean  "shown"
  end

  add_index "posts", ["slug"], name: "index_posts_on_slug", using: :btree

  create_table "properties", force: :cascade do |t|
    t.string   "title"
    t.string   "address"
    t.integer  "bedrooms"
    t.integer  "bathrooms"
    t.integer  "size"
    t.text     "description"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "highlight"
    t.string   "pic_1_file_name"
    t.string   "pic_1_content_type"
    t.integer  "pic_1_file_size"
    t.datetime "pic_1_updated_at"
    t.string   "pic_2_file_name"
    t.string   "pic_2_content_type"
    t.integer  "pic_2_file_size"
    t.datetime "pic_2_updated_at"
    t.string   "pic_3_file_name"
    t.string   "pic_3_content_type"
    t.integer  "pic_3_file_size"
    t.datetime "pic_3_updated_at"
    t.string   "pic_4_file_name"
    t.string   "pic_4_content_type"
    t.integer  "pic_4_file_size"
    t.datetime "pic_4_updated_at"
    t.string   "pic_5_file_name"
    t.string   "pic_5_content_type"
    t.integer  "pic_5_file_size"
    t.datetime "pic_5_updated_at"
    t.string   "pic_6_file_name"
    t.string   "pic_6_content_type"
    t.integer  "pic_6_file_size"
    t.datetime "pic_6_updated_at"
    t.string   "pic_7_file_name"
    t.string   "pic_7_content_type"
    t.integer  "pic_7_file_size"
    t.datetime "pic_7_updated_at"
    t.string   "pic_8_file_name"
    t.string   "pic_8_content_type"
    t.integer  "pic_8_file_size"
    t.datetime "pic_8_updated_at"
    t.string   "flat_file_name"
    t.string   "flat_content_type"
    t.integer  "flat_file_size"
    t.datetime "flat_updated_at"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "slug"
    t.string   "operation"
    t.string   "video"
    t.string   "pic_9_file_name"
    t.string   "pic_9_content_type"
    t.integer  "pic_9_file_size"
    t.datetime "pic_9_updated_at"
    t.string   "pic_10_file_name"
    t.string   "pic_10_content_type"
    t.integer  "pic_10_file_size"
    t.datetime "pic_10_updated_at"
    t.string   "pic_11_file_name"
    t.string   "pic_11_content_type"
    t.integer  "pic_11_file_size"
    t.datetime "pic_11_updated_at"
    t.string   "pic_12_file_name"
    t.string   "pic_12_content_type"
    t.integer  "pic_12_file_size"
    t.datetime "pic_12_updated_at"
    t.string   "pic_13_file_name"
    t.string   "pic_13_content_type"
    t.integer  "pic_13_file_size"
    t.datetime "pic_13_updated_at"
    t.string   "pic_14_file_name"
    t.string   "pic_14_content_type"
    t.integer  "pic_14_file_size"
    t.datetime "pic_14_updated_at"
    t.string   "pic_15_file_name"
    t.string   "pic_15_content_type"
    t.integer  "pic_15_file_size"
    t.datetime "pic_15_updated_at"
    t.string   "pic_16_file_name"
    t.string   "pic_16_content_type"
    t.integer  "pic_16_file_size"
    t.datetime "pic_16_updated_at"
    t.string   "pic_17_file_name"
    t.string   "pic_17_content_type"
    t.integer  "pic_17_file_size"
    t.datetime "pic_17_updated_at"
    t.string   "pic_18_file_name"
    t.string   "pic_18_content_type"
    t.integer  "pic_18_file_size"
    t.datetime "pic_18_updated_at"
    t.string   "pic_19_file_name"
    t.string   "pic_19_content_type"
    t.integer  "pic_19_file_size"
    t.datetime "pic_19_updated_at"
    t.string   "pic_20_file_name"
    t.string   "pic_20_content_type"
    t.integer  "pic_20_file_size"
    t.datetime "pic_20_updated_at"
    t.string   "state"
    t.integer  "price"
    t.integer  "price_ars"
    t.boolean  "approved"
    t.text     "comment"
    t.integer  "priority",            default: 0
    t.string   "location"
  end

  add_index "properties", ["slug"], name: "index_properties_on_slug", using: :btree

  create_table "properties_tags", id: false, force: :cascade do |t|
    t.integer "property_id"
    t.integer "tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string   "url"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
