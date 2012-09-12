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

ActiveRecord::Schema.define(:version => 20120912060954) do

  create_table "admins", :force => true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password_digest"
    t.string   "state"
    t.string   "email"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "admin_type",      :limit => 20
  end

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.string   "country"
    t.string   "birth"
    t.string   "figure"
    t.string   "region"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.text     "introduction"
    t.string   "tag"
  end

  create_table "fans", :force => true do |t|
    t.integer  "artist_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "fans", ["artist_id"], :name => "index_fans_on_artist_id"
  add_index "fans", ["user_id"], :name => "index_fans_on_user_id"

  create_table "links", :force => true do |t|
    t.integer  "movie_id"
    t.string   "link_type"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "links", ["movie_id"], :name => "index_links_on_movie_id"

  create_table "movies", :force => true do |t|
    t.integer  "artist_id"
    t.string   "title"
    t.date     "publish_date"
    t.string   "company"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.text     "introduction"
    t.string   "tag"
  end

  add_index "movies", ["artist_id"], :name => "index_movies_on_artist_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "state"
    t.string   "vericode"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
