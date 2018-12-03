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

ActiveRecord::Schema.define(version: 2018_12_03_122119) do

  create_table "announcements", force: :cascade do |t|
    t.string "name_program"
    t.string "instructor"
    t.date "start_registration"
    t.date "end_registration"
    t.text "location"
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.text "schedule"
    t.integer "length"
    t.text "cv_resume"
    t.date "start_date"
    t.date "end_date"
    t.string "faculty"
    t.string "department"
    t.string "classroom"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name_program"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups_students", force: :cascade do |t|
    t.integer "student_id"
    t.integer "group_id"
    t.string "status"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
  end

end
