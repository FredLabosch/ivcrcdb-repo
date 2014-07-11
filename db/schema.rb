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

ActiveRecord::Schema.define(version: 20140610184826) do

  create_table "allergies", force: true do |t|
    t.string "name"
  end

  create_table "allergies2examinations", force: true do |t|
    t.integer "examination_id"
    t.integer "allergies_id"
  end

  create_table "examinations", force: true do |t|
    t.date     "examination_date"
    t.date     "date"
    t.string   "examiner"
    t.string   "string"
    t.integer  "age_at_examination"
    t.integer  "integer"
    t.string   "profession"
    t.boolean  "external_data"
    t.boolean  "boolean"
    t.boolean  "usable_data"
    t.string   "comment_patient"
    t.string   "comment_examiner"
    t.string   "short_description"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "examinations", ["patient_id"], name: "index_examinations_on_patient_id", using: :btree

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
    t.integer  "examination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "patients", ["examination_id"], name: "index_patients_on_examination_id", using: :btree

end
