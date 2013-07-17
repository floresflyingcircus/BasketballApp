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

ActiveRecord::Schema.define(:version => 20130717193301) do

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
    t.integer  "fouls"
  end

  add_index "stats", ["player_id"], :name => "index_stats_on_player_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
