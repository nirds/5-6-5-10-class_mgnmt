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

ActiveRecord::Schema.define(:version => 20130510141110) do

  create_table "assignments", :force => true do |t|
    t.string   "title"
    t.text     "details"
    t.datetime "due_date"
    t.boolean  "done"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "student_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "student_courses", :force => true do |t|
    t.integer "student_id"
    t.integer "course_id"
  end

  create_table "students", :force => true do |t|
    t.string   "full_name"
    t.string   "title"
    t.integer  "age"
    t.text     "bio"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email"
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "students", ["confirmation_token"], :name => "index_students_on_confirmation_token", :unique => true
  add_index "students", ["email"], :name => "index_students_on_email"
  add_index "students", ["reset_password_token"], :name => "index_students_on_reset_password_token", :unique => true

end
