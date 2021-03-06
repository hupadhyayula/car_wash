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

ActiveRecord::Schema.define(version: 20170325184516) do

  create_table "options", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "washes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "vehicle_type_id"
    t.integer  "amount"
    t.string   "car_number",      limit: 6
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["vehicle_type_id"], name: "index_washes_on_vehicle_type_id", using: :btree
  end

  add_foreign_key "washes", "vehicle_types"
end
