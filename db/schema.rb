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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20190427061156) do
=======
ActiveRecord::Schema.define(version: 20190427091906) do
>>>>>>> af19f64354e0c34d0ecea9e9f3afa085ae05337f

  create_table "courses", force: :cascade do |t|
    t.string "course_name"
    t.string "prerequisite"
    t.string "category"
    t.string "location"
    t.string "coordinator_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
    t.string "category"
    t.integer "like"
    t.integer "dislike"
=======
>>>>>>> af19f64354e0c34d0ecea9e9f3afa085ae05337f
  end

  create_table "courses_locations", id: false, force: :cascade do |t|
    t.integer "course_id"
    t.integer "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_courses_locations_on_course_id"
    t.index ["location_id"], name: "index_courses_locations_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "location_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "rates", force: :cascade do |t|
    t.integer "like"
    t.integer "dislike"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "course_id"
=======
  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
>>>>>>> af19f64354e0c34d0ecea9e9f3afa085ae05337f
  end

end
