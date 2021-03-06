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

ActiveRecord::Schema.define(:version => 20101005065712) do

  create_table "addresses", :force => true do |t|
    t.string   "add1"
    t.string   "add2"
    t.string   "add3"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone1"
    t.string   "phone1type"
    t.string   "phone2"
    t.string   "phone2type"
    t.string   "phone3"
    t.string   "phone3type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.integer  "add_id"
    t.string   "tel"
    t.integer  "ptype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "occupations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "ln"
    t.string   "fn"
    t.string   "mn"
    t.date     "dob"
    t.string   "tel1"
    t.integer  "ptype_id1"
    t.string   "tel2"
    t.integer  "ptype_id2"
    t.integer  "add_id"
    t.boolean  "contact"
    t.boolean  "client"
    t.boolean  "tech"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ptypes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testlocs", :force => true do |t|
    t.string   "name"
    t.integer  "address_id"
    t.string   "contactrole"
    t.integer  "person_id"
    t.string   "localphone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
