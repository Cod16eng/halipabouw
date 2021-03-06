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

ActiveRecord::Schema.define(version: 20191010091057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labours", force: :cascade do |t|
    t.string "name"
    t.decimal "amount", precision: 12, scale: 2
    t.text "descrp"
    t.integer "project_id"
    t.integer "nr_inv_lab"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "datel"
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.decimal "amount", precision: 12, scale: 2
    t.text "descrp"
    t.integer "nr_inv_mat"
    t.integer "project_id"
    t.string "supplier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "datem"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "desc"
    t.float "budget"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.boolean "admin", default: false
  end

end
