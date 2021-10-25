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

ActiveRecord::Schema.define(version: 2021_10_19_212257) do

  create_table "apartments", charset: "utf8", collation: "utf8_bin", force: :cascade do |t|
    t.integer "numero_depto"
    t.bigint "building_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["building_id"], name: "index_apartments_on_building_id"
  end

  create_table "buildings", charset: "utf8", collation: "utf8_bin", force: :cascade do |t|
    t.string "nombre_edificio"
    t.string "direccion"
    t.string "ciudad"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "apartments", "buildings"
end
