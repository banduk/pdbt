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

ActiveRecord::Schema.define(:version => 20130330202023) do

  create_table "bill_tracks", :force => true do |t|
    t.integer  "bill_id"
    t.date     "pay_date"
    t.text     "observation"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "bill_tracks", ["bill_id"], :name => "index_bill_tracks_on_bill_id"

  create_table "bills", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "pay_method_id"
    t.date     "expires"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "bills", ["pay_method_id"], :name => "index_bills_on_pay_method_id"

  create_table "event_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "page"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "events", :force => true do |t|
    t.integer  "event_type_id"
    t.text     "description"
    t.text     "testimonial"
    t.text     "report"
    t.date     "date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "events", ["event_type_id"], :name => "index_events_on_event_type_id"

  create_table "parties", :force => true do |t|
    t.integer  "event_id"
    t.string   "flyer"
    t.integer  "paying_audience"
    t.decimal  "gross_profit"
    t.decimal  "net_profit"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "parties", ["event_id"], :name => "index_parties_on_event_id"

  create_table "pay_methods", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pay_sheets", :force => true do |t|
    t.decimal  "amount"
    t.date     "date"
    t.text     "observation"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
