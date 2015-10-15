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

ActiveRecord::Schema.define(:version => 20151013124219) do

  create_table "dailytransactions", :force => true do |t|
    t.string   "Type"
    t.string   "subtype"
    t.string   "size"
    t.string   "image_name"
    t.integer  "price"
    t.integer  "sold_price"
    t.date     "transact_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "materials", :force => true do |t|
    t.string   "Type"
    t.string   "subtype"
    t.string   "size"
    t.integer  "price"
    t.datetime "created_at",              :default => '2015-10-10 00:00:00'
    t.datetime "updated_at",              :default => '2015-10-10 00:00:00'
    t.string   "image_name_file_name"
    t.string   "image_name_content_type"
    t.integer  "image_name_file_size"
    t.datetime "image_name_updated_at"
    t.string   "avatar"
  end

  create_table "sizes", :force => true do |t|
    t.string "size"
  end

  create_table "subtypes", :force => true do |t|
    t.string  "subtype"
    t.integer "type_id"
  end

  create_table "types", :force => true do |t|
    t.string "Type"
  end

end
