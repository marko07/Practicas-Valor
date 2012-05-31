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

ActiveRecord::Schema.define(:version => 20120501155932) do

  create_table "internal_benchmarkings", :force => true do |t|
    t.integer "value_practice_id"
    t.string  "name"
    t.string  "reference"
    t.string  "relevant_elements"
    t.string  "description"
    t.string  "domain_level"
  end

  create_table "recognitions", :force => true do |t|
    t.integer "value_practice_id"
    t.string  "problem"
    t.string  "solution"
    t.string  "description"
    t.string  "analysis"
    t.string  "experience"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "job_title"
    t.string   "phone"
    t.integer  "user_role_id"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "value_practices", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "recognition_id"
    t.integer  "internal_benchmarking_id"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
