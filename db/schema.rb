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

ActiveRecord::Schema.define(:version => 0) do

  create_table "codes", :force => true do |t|
    t.string "code",        :limit => 20, :null => false
    t.string "owner",       :limit => 150, :null => false
    t.text   "description",               :null => false
  end

  create_table "participants", :force => true do |t|
    t.string   "name",            :limit => 200, :null => false
    t.boolean  "buying_shirt",                   :null => false
    t.string  "shirt_size",       :limit => 10,   :null => ""
    t.string   "code_id",         :limit => 20,  :null => false
    t.datetime "date_registered",                :null => false
  end

  create_table "school_contacts", :force => true do |t|
    t.string "code_id", :limit => 20,  :null => false
    t.string "email",   :limit => 100, :null => false
  end

  create_table "workshops", :force => true do |t|
    t.string  "title",        :limit => 250, :null => false
    t.text    "description",                 :null => false
    t.text    "facilatators",                :null => false
    t.integer "year",                        :null => false
  end

end
