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

ActiveRecord::Schema.define(version: 20190425072107) do

  create_table "courses", force: :cascade do |t|
    t.string "course_name"
    t.string "prerequisite"
    t.string "coordinator_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
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

end

Course.new(id: 1, course_name: "Rapid Application Development", prerequisite: "Web Programming", coordinator_name: "Andy Song", category: "Web Development").save
Course.new(id: 2, course_name: "Capstone Project", prerequisite: "Advanced Programming", coordinator_name: "Ali Yavari", category: "Full Stack Dev").save
Course.new(id: 3, course_name: "Advanced iOS/OSX Programming", prerequisite: "3 years iOS or relevant experience", coordinator_name: "Alex Jiang", category: "iOS Engineering").save
Course.new(id: 4, course_name: "Java for Programmers", prerequisite: "Software Engineering Fundmentals", coordinator_name: "Andy Song", category: "Java").save
Course.new(id: 5, course_name: "Advanced Programming", prerequisite: "Basic Programming", coordinator_name: "Andy Song", category: "Java").save

Location.new(location_name:"14.10.30").save
Location.new(location_name:"14.10.31").save
Location.new(location_name:"14.08.26").save

CourseLocation.new(course_id: 1, location_id: 3).save
CourseLocation.new(course_id: 1, location_id: 2).save
CourseLocation.new(course_id: 2, location_id: 2).save
CourseLocation.new(course_id: 3, location_id: 1).save
CourseLocation.new(course_id: 4, location_id: 1).save
CourseLocation.new(course_id: 4, location_id: 2).save
CourseLocation.new(course_id: 5, location_id: 1).save
CourseLocation.new(course_id: 5, location_id: 3).save

