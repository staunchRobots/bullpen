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

ActiveRecord::Schema.define(version: 20140728154807) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cvs", force: true do |t|
    t.string   "name"
    t.text     "profile"
    t.string   "title"
    t.integer  "stackoverflow_reputation"
    t.string   "blog"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", force: true do |t|
    t.string   "title"
    t.string   "institution"
    t.integer  "cv_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "educations", ["cv_id"], name: "index_educations_on_cv_id", using: :btree

  create_table "experiences", force: true do |t|
    t.string   "name"
    t.integer  "years"
    t.integer  "cv_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experiences", ["cv_id"], name: "index_experiences_on_cv_id", using: :btree

  create_table "languages", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "open_source_projects", force: true do |t|
    t.string   "url"
    t.integer  "open_source_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "open_source_projects", ["open_source_id"], name: "index_open_source_projects_on_open_source_id", using: :btree

  create_table "open_sources", force: true do |t|
    t.integer  "cv_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "open_sources", ["cv_id"], name: "index_open_sources_on_cv_id", using: :btree

  create_table "practices", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "cv_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "practices", ["cv_id"], name: "index_practices_on_cv_id", using: :btree

  create_table "project_interest_points", force: true do |t|
    t.string   "content"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "project_interest_points", ["project_id"], name: "index_project_interest_points_on_project_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "description"
    t.integer  "cv_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["cv_id"], name: "index_projects_on_cv_id", using: :btree

  create_table "skills", force: true do |t|
    t.string   "name"
    t.integer  "percentage"
    t.integer  "cv_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skills", ["cv_id"], name: "index_skills_on_cv_id", using: :btree

end
