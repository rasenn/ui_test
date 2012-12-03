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

ActiveRecord::Schema.define(:version => 20121201152841) do

  create_table "captions", :force => true do |t|
    t.integer  "caption_id"
    t.integer  "caption_id_num"
    t.string   "caption_type"
    t.text     "caption_context"
    t.integer  "entry_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "case_types", :force => true do |t|
    t.integer  "case_type_id"
    t.string   "case_type_name"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "cases", :force => true do |t|
    t.integer  "page_id"
    t.integer  "form_no"
    t.text     "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "entries", :force => true do |t|
    t.integer  "entry_id"
    t.string   "entry_type"
    t.string   "entry_name"
    t.string   "entry"
    t.text     "entry_text"
    t.integer  "task_id_num"
    t.integer  "task_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "forms", :force => true do |t|
    t.integer  "page_id"
    t.integer  "form_no"
    t.string   "type"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "infos", :force => true do |t|
    t.integer  "page_id"
    t.integer  "form_no"
    t.integer  "info_no"
    t.string   "name"
    t.string   "type"
    t.text     "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "menus", :force => true do |t|
    t.integer  "page_id"
    t.text     "menu"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tasks", :force => true do |t|
    t.integer  "task_id"
    t.string   "task_name"
    t.integer  "case_type_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "ui_models", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
