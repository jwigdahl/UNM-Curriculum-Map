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

ActiveRecord::Schema.define(version: 20130518171444) do

  create_table "colleges", force: true do |t|
    t.string   "name"
    t.string   "acronym"
    t.string   "org_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "crn"
    t.integer  "credits"
    t.text     "description"
    t.text     "short_description"
    t.integer  "dept_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses_degree_requirements", id: false, force: true do |t|
    t.integer "course_id",             null: false
    t.integer "degree_requirement_id", null: false
  end

  create_table "degree_plan_notes", force: true do |t|
    t.integer  "degree_plan_id"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "degree_plans", force: true do |t|
    t.integer  "undergrad_program_id"
    t.string   "academic_year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "degree_requirements", force: true do |t|
    t.integer  "degree_plan_id"
    t.string   "name"
    t.string   "category"
    t.string   "min_grade"
    t.boolean  "crucial"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "degree_requirements_term_plans", id: false, force: true do |t|
    t.integer "degree_requirement_id", null: false
    t.integer "term_plan_id",          null: false
  end

  create_table "depts", force: true do |t|
    t.integer  "college_id"
    t.string   "name"
    t.string   "acronym"
    t.string   "org_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prerequisites", force: true do |t|
    t.integer  "course_id"
    t.integer  "prereq_course_id"
    t.boolean  "corequisite"
    t.boolean  "strict_corequisite"
    t.string   "description"
    t.integer  "position"
    t.boolean  "or_connector"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "term_plans", force: true do |t|
    t.integer  "degree_plan_id"
    t.integer  "term_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "undergrad_programs", force: true do |t|
    t.integer  "dept_id"
    t.string   "name"
    t.string   "degree"
    t.string   "org_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
