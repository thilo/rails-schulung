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

ActiveRecord::Schema.define(:version => 20120607144339) do

  create_table "beam_targets", :force => true do |t|
    t.integer  "density"
    t.integer  "volume"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reservations", :force => true do |t|
    t.integer  "beam_target_id", :null => false
    t.integer  "user_id",        :null => false
    t.date     "date",           :null => false
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "reservations", ["date", "beam_target_id"], :name => "index_reservations_on_date_and_beam_target_id", :unique => true

  create_table "users", :force => true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "encrypted_password", :default => "", :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
