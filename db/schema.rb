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

ActiveRecord::Schema.define(version: 20150225152354) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "genreizations", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "genreizations", ["genre_id"], name: "index_genreizations_on_genre_id", using: :btree
  add_index "genreizations", ["movie_id"], name: "index_genreizations_on_movie_id", using: :btree

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_ratings", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "movie_ratings", ["movie_id"], name: "index_movie_ratings_on_movie_id", using: :btree
  add_index "movie_ratings", ["user_id"], name: "index_movie_ratings_on_user_id", using: :btree

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.text     "plot"
    t.integer  "release_year"
    t.string   "poster_image"
    t.string   "rating"
    t.string   "rotten_tomato_link"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "movie_poster"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "genreizations", "genres"
  add_foreign_key "genreizations", "movies"
  add_foreign_key "movie_ratings", "movies"
  add_foreign_key "movie_ratings", "users"
end
