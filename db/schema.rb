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

ActiveRecord::Schema.define(version: 20171126180505) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "catalog_bras", force: :cascade do |t|
    t.integer "product_id"
    t.integer "producer_code_standard"
    t.integer "code_on_card"
    t.string "producer_name"
    t.string "category_name"
    t.string "series_name"
    t.string "description_name_eng"
    t.string "description_version_eng"
    t.string "description_long_eng"
    t.string "desc_short_eng"
    t.integer "price_gross"
    t.integer "price_net"
    t.string "product_size"
    t.integer "code_producer"
    t.string "product_code"
    t.integer "stock"
    t.string "images_large_image_1"
    t.string "images_large_image_2"
    t.string "images_large_image_3"
    t.string "images_large_image_4"
    t.string "images_large_image_5"
    t.string "images_icons_icon"
    t.string "colour"
    t.string "product_buy_url"
    t.integer "min_band_size"
    t.integer "max_band_size"
    t.integer "min_cup_size"
    t.integer "max_cup_size"
    t.integer "full_on_bottom"
    t.integer "full_on_top"
    t.integer "even"
    t.integer "center_full"
    t.integer "outer_full"
    t.integer "average"
    t.integer "shallow"
    t.integer "projected"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "measurements", force: :cascade do |t|
    t.integer "rib_cage_parameter"
    t.integer "breast_cage_rest_perimeter"
    t.integer "breast_cage_bend_perimeter"
    t.integer "breast_upper_shape"
    t.integer "breast_bottom_shape"
    t.integer "breast_center_disposition"
    t.integer "breast_separation"
    t.integer "breast_roots"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_bras_id"
    t.index ["user_bras_id"], name: "index_measurements_on_user_bras_id"
  end

  create_table "user_bras", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "measurements_id"
    t.bigint "catalog_bras_id"
    t.index ["catalog_bras_id"], name: "index_user_bras_on_catalog_bras_id"
    t.index ["measurements_id"], name: "index_user_bras_on_measurements_id"
  end

  add_foreign_key "measurements", "user_bras", column: "user_bras_id"
  add_foreign_key "user_bras", "catalog_bras", column: "catalog_bras_id"
  add_foreign_key "user_bras", "measurements", column: "measurements_id"
end
