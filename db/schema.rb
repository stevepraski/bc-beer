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

ActiveRecord::Schema.define(version: 20150630225138) do

  create_table "products", force: :cascade do |t|
    t.string   "product_type_name"
    t.string   "product_class_name"
    t.string   "product_sub_class_name"
    t.string   "product_minor_class_name"
    t.string   "product_country_origin_name"
    t.integer  "product_sku_no"
    t.string   "product_long_name"
    t.string   "product_base_upc_no"
    t.integer  "product_litres_per_container"
    t.integer  "prd_container_per_sell_unit"
    t.float    "product_alcohol_percent"
    t.float    "current_display_price"
    t.integer  "sweetness_code"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
