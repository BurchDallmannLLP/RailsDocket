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

ActiveRecord::Schema.define(:version => 20120117014427) do

  create_table "billings", :force => true do |t|
    t.integer  "case_id"
    t.datetime "date"
    t.float    "hours"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caseevents", :force => true do |t|
    t.integer  "case_id"
    t.string   "eventtype"
    t.datetime "date"
    t.boolean  "complete"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cases", :force => true do |t|
    t.string   "docketno"
    t.string   "casetype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientcases", :force => true do |t|
    t.integer  "case_id"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "addy1"
    t.string   "addy2"
    t.string   "city"
    t.string   "zip"
    t.string   "state"
    t.string   "country"
    t.string   "phone"
    t.string   "email"
    t.boolean  "engagltr"
    t.datetime "engagdate"
    t.boolean  "probono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firms", :force => true do |t|
    t.string   "metatype"
    t.string   "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patentcases", :force => true do |t|
    t.integer  "case_id"
    t.string   "apptype"
    t.boolean  "appfiled"
    t.datetime "date"
    t.string   "status"
    t.string   "examiner"
    t.string   "appno"
    t.string   "pubappno"
    t.string   "confno"
    t.string   "artunit"
    t.datetime "fileddate"
    t.boolean  "pct"
    t.boolean  "pph"
    t.boolean  "special"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
