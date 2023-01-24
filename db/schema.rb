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

ActiveRecord::Schema[7.0].define(version: 2023_01_24_212029) do
  create_table "admin_experiences", force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.string "url"
    t.string "start_date"
    t.string "end_date"
    t.text "description"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "source_url"
    t.string "description"
    t.string "image_url"
    t.string "working_url"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.string "phone"
    t.text "description"
    t.string "status"
    t.string "meta_description"
    t.string "meta_title"
    t.string "host_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
