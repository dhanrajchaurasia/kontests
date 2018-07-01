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

ActiveRecord::Schema.define(version: 2018_06_30_190744) do

  create_table "at_coder", id: false, force: :cascade do |t|
    t.string "code", null: false
    t.string "name"
    t.string "duration"
    t.string "start_time"
    t.string "participate"
    t.string "rated"
    t.index ["code"], name: "index_at_coder_on_code", unique: true
  end

  create_table "code_chef", id: false, force: :cascade do |t|
    t.string "code", null: false
    t.string "name"
    t.string "start_time"
    t.string "end_time"
    t.index ["code"], name: "index_code_chef_on_code", unique: true
  end

  create_table "codeforces", id: false, force: :cascade do |t|
    t.integer "id", null: false
    t.string "name"
    t.string "duration"
    t.string "start_time"
    t.index ["id"], name: "index_codeforces_on_id", unique: true
  end

  create_table "codeforces_gym", id: false, force: :cascade do |t|
    t.integer "id", null: false
    t.string "name"
    t.string "duration"
    t.string "start_time"
    t.index ["id"], name: "index_codeforces_gym_on_id", unique: true
  end

end
