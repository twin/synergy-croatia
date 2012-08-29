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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120423060706) do

  create_table "testimonials", :force => true do |t|
    t.text     "content_hr"
    t.text     "content_en"
    t.string   "author"
    t.integer  "training_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "trainings", :force => true do |t|
    t.string   "title_hr"
    t.string   "title_en"
    t.text     "description_hr"
    t.text     "description_en"
    t.text     "summary_hr"
    t.text     "summary_en"
    t.date     "begins_on"
    t.date     "ends_on"
    t.string   "participating_countries"
    t.string   "city_hr"
    t.string   "city_en"
    t.string   "country"
    t.integer  "maximum_age"
    t.integer  "minimum_age"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "infoletter_file_name"
    t.string   "infoletter_content_type"
    t.integer  "infoletter_file_size"
    t.datetime "infoletter_updated_at"
    t.string   "application_form_file_name"
    t.string   "application_form_content_type"
    t.integer  "application_form_file_size"
    t.datetime "application_form_updated_at"
  end

end
