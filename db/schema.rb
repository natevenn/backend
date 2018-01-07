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

ActiveRecord::Schema.define(version: 20180106203735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "title"
    t.integer "position"
    t.boolean "is_print"
    t.string "description"
    t.bigint "category_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_pictures_on_category_id"
  end

  create_table "print_sizes", force: :cascade do |t|
    t.bigint "print_id"
    t.bigint "size_id"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["print_id"], name: "index_print_sizes_on_print_id"
    t.index ["size_id"], name: "index_print_sizes_on_size_id"
  end

  create_table "prints", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "picture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["picture_id"], name: "index_prints_on_picture_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.string "dimention"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pictures", "categories"
  add_foreign_key "print_sizes", "prints"
  add_foreign_key "print_sizes", "sizes"
  add_foreign_key "prints", "pictures"
end
