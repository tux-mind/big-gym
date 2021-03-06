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

ActiveRecord::Schema.define(version: 20150715091631) do

  create_table "awards", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "instructor_id"
  end

  add_index "awards", ["instructor_id"], name: "index_awards_on_instructor_id"

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
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "category_id"
    t.integer  "room_id"
    t.integer  "level_id"
  end

  add_index "courses", ["category_id"], name: "index_courses_on_category_id"
  add_index "courses", ["level_id"], name: "index_courses_on_level_id"
  add_index "courses", ["room_id"], name: "index_courses_on_room_id"

  create_table "images", force: :cascade do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "category_id"
    t.integer  "course_id"
    t.integer  "room_id"
    t.integer  "instructor_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.boolean  "equipment"
    t.boolean  "space"
  end

  add_index "images", ["category_id"], name: "index_images_on_category_id"
  add_index "images", ["course_id"], name: "index_images_on_course_id"
  add_index "images", ["instructor_id"], name: "index_images_on_instructor_id"
  add_index "images", ["room_id"], name: "index_images_on_room_id"

  create_table "instructor_of_the_months", force: :cascade do |t|
    t.text     "description"
    t.integer  "instructor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "instructor_of_the_months", ["instructor_id"], name: "index_instructor_of_the_months_on_instructor_id"

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
    t.text     "qualification"
    t.string   "fb_id"
  end

  create_table "levels", force: :cascade do |t|
    t.string   "name"
    t.string   "color"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "map_file_name"
    t.string   "map_content_type"
    t.integer  "map_file_size"
    t.datetime "map_updated_at"
  end

  create_table "schedules", force: :cascade do |t|
    t.integer  "dow"
    t.time     "from"
    t.time     "to"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "course_id"
    t.integer  "instructor_id"
  end

  add_index "schedules", ["course_id"], name: "index_schedules_on_course_id"
  add_index "schedules", ["instructor_id"], name: "index_schedules_on_instructor_id"

  create_table "testimonials", force: :cascade do |t|
    t.string   "name"
    t.string   "yid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
