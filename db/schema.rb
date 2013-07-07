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

ActiveRecord::Schema.define(:version => 20130707042240) do

  create_table "authentications", :force => true do |t|
    t.string   "empid"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "authentications", ["empid"], :name => "index_authentications_on_empid", :unique => true

  create_table "users", :force => true do |t|
    t.string   "empid"
    t.string   "name"
    t.integer  "age"
    t.text     "address"
    t.string   "phone_no"
    t.string   "email_id"
    t.string   "qualification"
    t.string   "location"
    t.string   "experience"
    t.string   "department"
    t.string   "role"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "users", ["empid"], :name => "index_users_on_empid", :unique => true

end
