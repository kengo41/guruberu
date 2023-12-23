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

ActiveRecord::Schema[7.0].define(version: 2023_12_14_042408) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmark_lists", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bookmark_lists_on_user_id"
  end

  create_table "bookmarks", force: :cascade do |t|
    t.bigint "bookmark_list_id", null: false
    t.bigint "shop_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bookmark_list_id", "shop_id"], name: "index_bookmarks_on_bookmark_list_id_and_shop_id", unique: true
    t.index ["bookmark_list_id"], name: "index_bookmarks_on_bookmark_list_id"
    t.index ["shop_id"], name: "index_bookmarks_on_shop_id"
  end

  create_table "gourmets", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.string "image"
    t.bigint "prefecture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prefecture_id"], name: "index_gourmets_on_prefecture_id"
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shop_gourmets", force: :cascade do |t|
    t.bigint "shop_id", null: false
    t.bigint "gourmet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gourmet_id"], name: "index_shop_gourmets_on_gourmet_id"
    t.index ["shop_id", "gourmet_id"], name: "index_shop_gourmets_on_shop_id_and_gourmet_id", unique: true
    t.index ["shop_id"], name: "index_shop_gourmets_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name", null: false
    t.string "address"
    t.string "phone_number"
    t.string "opening_hours"
    t.string "image"
    t.string "website"
    t.string "place_id", null: false
    t.decimal "latitude", precision: 10, scale: 7, null: false
    t.decimal "longitude", precision: 10, scale: 7, null: false
    t.float "rating"
    t.integer "total_ratings"
    t.integer "price_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_shops_on_place_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookmark_lists", "users"
  add_foreign_key "bookmarks", "bookmark_lists"
  add_foreign_key "bookmarks", "shops"
  add_foreign_key "gourmets", "prefectures"
  add_foreign_key "shop_gourmets", "gourmets"
  add_foreign_key "shop_gourmets", "shops"
end
