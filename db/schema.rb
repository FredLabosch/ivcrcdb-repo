# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140519195254) do

  create_table "examinations", force: true do |t|
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "general_infos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "examination_id"
    t.date     "examination_date"
    t.string   "profession"
    t.integer  "age_at_examination"
    t.string   "examiner"
    t.boolean  "external_data"
    t.boolean  "usable_data"
    t.string   "comments_patient"
    t.string   "comments_examiner"
  end

  create_table "patients", force: true do |t|
    t.string   "name"
    t.string   "first_name"
    t.string   "gender"
    t.string   "birthday"
    t.integer  "age"
    t.string   "profession"
    t.string   "street"
    t.string   "zip_code"
    t.string   "city"
    t.string   "phone"
    t.string   "cell_phone"
    t.string   "naa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
