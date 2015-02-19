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

ActiveRecord::Schema.define(version: 20150219154934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movie_ratings", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "movie_id"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "movie_ratings", ["movie_id"], name: "index_movie_ratings_on_movie_id", using: :btree
  add_index "movie_ratings", ["person_id"], name: "index_movie_ratings_on_person_id", using: :btree

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.text     "plot"
    t.integer  "release_year"
    t.string   "poster_image"
    t.string   "rating"
    t.string   "rotten_tomato_link"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "person_id"
  end

  add_index "movies", ["person_id"], name: "index_movies_on_person_id", using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.date     "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "movie_ratings", "movies"
  add_foreign_key "movie_ratings", "people"
  add_foreign_key "movies", "people"
end
