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

ActiveRecord::Schema.define(version: 20150521225536) do

  create_table "awards", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "Instructor_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "awards", ["Instructor_id"], name: "index_awards_on_Instructor_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "Category_id"
    t.integer  "Room_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "courses", ["Category_id"], name: "index_courses_on_Category_id"
  add_index "courses", ["Room_id"], name: "index_courses_on_Room_id"

  create_table "instructors", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "tw_username"
    t.text     "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "room_images", force: :cascade do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "Room_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "room_images", ["Room_id"], name: "index_room_images_on_Room_id"

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer  "dow"
    t.time     "from"
    t.time     "to"
    t.integer  "Course_id"
    t.integer  "Instructor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "schedules", ["Course_id"], name: "index_schedules_on_Course_id"
  add_index "schedules", ["Instructor_id"], name: "index_schedules_on_Instructor_id"

  create_table "testimonials", force: :cascade do |t|
    t.string   "name"
    t.string   "video_file_name"
    t.string   "video_content_type"
    t.integer  "video_file_size"
    t.datetime "video_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
