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

ActiveRecord::Schema.define(:version => 20120913061257) do

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

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.string   "comment_type"
    t.string   "state"
    t.integer  "movie_id"
    t.integer  "artist_id"
    t.date     "comment_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "comments", ["artist_id"], :name => "index_comments_on_artist_id"
  add_index "comments", ["movie_id"], :name => "index_comments_on_movie_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

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

  create_table "models", :force => true do |t|
    t.string   "attr1"
    t.string   "attr2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

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

  create_table "players", :force => true do |t|
    t.string   "name"
    t.boolean  "injured"
    t.decimal  "salary",        :precision => 10, :scale => 0
    t.date     "date_of_birth"
    t.integer  "team_id"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  add_index "players", ["team_id"], :name => "index_players_on_team_id"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "state"
    t.string   "vericode"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
