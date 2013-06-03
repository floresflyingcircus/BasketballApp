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

ActiveRecord::Schema.define(:version => 20130529172148) do

  create_table "games", :force => true do |t|
    t.date     "date"
    t.time     "start_time"
    t.string   "opponent"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "players", :force => true do |t|
    t.string   "name"
    t.integer  "number"
    t.boolean  "in_game"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stats", :force => true do |t|
    t.integer  "two_made"
    t.integer  "two_miss"
    t.integer  "three_made"
    t.integer  "three_miss"
    t.integer  "ft_made"
    t.integer  "ft_miss"
    t.integer  "off_reb"
    t.integer  "def_reb"
    t.integer  "block"
    t.integer  "assist"
    t.integer  "steal"
    t.integer  "turnover"
    t.integer  "player_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "stats", ["player_id"], :name => "index_stats_on_player_id"

end
