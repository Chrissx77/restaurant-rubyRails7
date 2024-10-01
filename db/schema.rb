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

ActiveRecord::Schema[7.2].define(version: 2024_09_29_150358) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses_orders", force: :cascade do |t|
    t.bigint "orders_id", null: false
    t.bigint "courses_id", null: false
    t.integer "quantita"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["courses_id"], name: "index_courses_orders_on_courses_id"
    t.index ["orders_id"], name: "index_courses_orders_on_orders_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "nome"
    t.string "categoria"
    t.integer "quantità"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods_courses", force: :cascade do |t|
    t.bigint "course_id", null: false
    t.bigint "food_id", null: false
    t.integer "quantita"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_foods_courses_on_course_id"
    t.index ["food_id"], name: "index_foods_courses_on_food_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "stato"
    t.bigint "tables_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tables_id"], name: "index_orders_on_tables_id"
  end

  create_table "tables", force: :cascade do |t|
    t.integer "numero"
    t.integer "posti"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "courses_orders", "courses", column: "courses_id"
  add_foreign_key "courses_orders", "orders", column: "orders_id"
  add_foreign_key "foods_courses", "courses"
  add_foreign_key "foods_courses", "foods"
  add_foreign_key "orders", "tables", column: "tables_id"
end
