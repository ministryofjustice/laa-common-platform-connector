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

ActiveRecord::Schema.define(version: 2019_02_21_095507) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advocates", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "status"
    t.string "organisation_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "defendant_id"
    t.index ["defendant_id"], name: "index_advocates_on_defendant_id"
  end

  create_table "defendants", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "defendants_hearings", id: false, force: :cascade do |t|
    t.bigint "hearing_id", null: false
    t.bigint "defendant_id", null: false
    t.index ["hearing_id", "defendant_id"], name: "index_defendants_hearings_on_hearing_id_and_defendant_id"
  end

  create_table "hearings", force: :cascade do |t|
    t.string "court_name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offences", force: :cascade do |t|
    t.string "title"
    t.string "legislation"
    t.string "wording"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "defendant_id"
    t.index ["defendant_id"], name: "index_offences_on_defendant_id"
  end

  add_foreign_key "advocates", "defendants"
  add_foreign_key "offences", "defendants"
end
